onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Mux
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/clk
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/reset_n
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Mux_1/UART_TXD
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Mux_1/Busy
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Mux_1/Get_Sample
add wave -noupdate -divider Handler
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/data_read
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/initialation_Status
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Enable
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Slave_Address_Out
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Slave_read_nWrite
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Slave_Data_Out
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Get_Sample
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Seconds_out
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Minutes_out
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Hours_out
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Day_out
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Date_out
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Month_Century_out
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Year_out
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Seconds_in
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Minutes_in
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Hours_in
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Day_in
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Date_in
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Month_Century_in
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Year_in
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Ready
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/i2c_Controller_State
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/i2c_Intialization_State
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/i2c_ReadData_State
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/i2c_WriteData_State
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/I2C_Control/Write_Count
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/I2C_Control/Read_Count
add wave -noupdate -divider Driver
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/ena
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/addr
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/rw
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/data_wr
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/busy
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/data_rd
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/ack_error
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/sda
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_I2C_Driver_1/scl
add wave -noupdate -divider {Slave Emulator}
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Seconds_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Minutes_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Hours_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Days_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Dates_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Years_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Months_Century_TestData_i
add wave -noupdate /real_time_clock_handler_test_bench/I2C_Test_State
add wave -noupdate /real_time_clock_handler_test_bench/Test_I2C_Read_State
add wave -noupdate /real_time_clock_handler_test_bench/Test_I2C_Write_State
add wave -noupdate /real_time_clock_handler_test_bench/i2c_data_test/Assert_Data_Count
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Test_Byte_i
add wave -noupdate /real_time_clock_handler_test_bench/Byte_Count
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Counters_State
add wave -noupdate /real_time_clock_handler_test_bench/OnemS_sStrobe
add wave -noupdate -divider Demux
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Handler_1/Write_RTC
add wave -noupdate -radix hexadecimal /real_time_clock_handler_test_bench/Real_Time_Clock_Demux_1/byte_received
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Demux_1/got_byte
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Demux_1/cmd_state
add wave -noupdate /real_time_clock_handler_test_bench/Real_Time_Clock_Demux_1/decode_cmd/got_byte_cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3905925810 ps} 0} {{Cursor 2} {98982339352 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 160
configure wave -valuecolwidth 124
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {32989725550 ps} {103526856550 ps}
