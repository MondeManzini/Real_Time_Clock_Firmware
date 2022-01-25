--
-- Test Bench
--
type   i2c_Controller_States is (???);
signal i2c_Controller_State : i2c_Controller_States;


Case TestI2cState is
     when StartEdge =>
          if SCL = '1'and SDA = '0' then  
             StartDetected <= '1';
             Count         <= 0;
             ByteAddress   <= '1';
             TestI2cState  <= WaitStartFalleingEdge;
          else
             TestI2cState <= StartFalleingEdge;
          end if;
          
      when WaitStartFalleingEdge =>
           if SCL = '0' then  
              if StartDetected = '1' then
                 Count         <= 0;
                 DelayCount    <= 0;
                 TestI2cState <= WaitWriteData;
              else
                 Count        <= Count + 1;
                 TestI2cState <= WaitWriteData;
              end if;
          else
             TestI2cState <= WaitStartFalleingEdge;
          end if;
          
       when WaitWriteData =>
           if DelayCount = 62 then  
              if ByteAddress = '1' then                
                 TestI2cState  <= WaitRisingEdge;                
              else
                 -- WriteData
                 TestI2cState  <= WaitRisingEdge;
              end if;
          else
             DelayCount   <= DelayCount + 1;
             TestI2cState <= WaitWriteData;
          end if; 

       when WaitRisingEdge =>
            if SCL = '1' then
               DelayCount    <= 0;
               TestI2cState  <= WaitReadData;       
            else
               TestI2cState <= WaitRisingEdge;
            end if;

       when WaitReadData =>
            if DelayCount = 62 then  
              if StartDetected = '1' then
                 -- ReadData Address
                 Count        <= Count + 1;
                 TestI2cState <= WaitFalleingEdge;
              else
                 -- ReadData
                 Count        <= Count + 1;
                 TestI2cState <= WaitFalleingEdge;
              end if;
          else
             DelayCount   <= DelayCount + 1;
             TestI2cState <= WaitReadData;
          end if;

       when WaitFalleingEdge =>
            if Count = 8 then
               DelayCount    <= 0;
               TestI2cState <= WaitWriteData;
            else
               DelayCount    <= 0;
               TestI2cState <= WaitWriteAck;
            end if;
            
       when WaitWriteAck =>
            if DelayCount = 62 then
               -- Write Ack
               TestI2cState <= WaitRisingEdgeAck;
            else              
               TestI2cState <= WaitWriteAck;
            end if;            
            
       when WaitRisingEdgeAck => 
            if SCL = '1' then
               DelayCount    <= 0;
               TestI2cState  <= WaitReadAck;       
            else
               TestI2cState <= WaitRisingEdgeAck;
            end if;

       when WaitReadAck =>
            if DelayCount = 62 then  
              if StartDetected = '1' then
                 -- ReadAck Address
                 Count        <= Count + 1;
                 TestI2cState <= WaitFalleingEdgeAck;
              else
                 -- ReadAck
                 Count        <= Count + 1;
                 TestI2cState <= WaitFalleingEdgeAck;
              end if;
          else
             DelayCount   <= DelayCount + 1;
             TestI2cState <= WaitReadAck;
          end if;
          
       when WaitFalleingEdgeAck =>       
            if ByteCount = 3 then
               DelayCount    <= 0;
               TestI2cState  <= StartEdge;
            else
               DelayCount    <= 0;
               TestI2cState  <= WaitWriteData;
            end if;        
          