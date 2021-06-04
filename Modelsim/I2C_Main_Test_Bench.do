onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Clock and Reset}
add wave -noupdate /i2c_main_test_bench/CLK_I_i
add wave -noupdate /i2c_main_test_bench/RST_I_i
add wave -noupdate -divider -height 30 {I2C Controller}
add wave -noupdate -divider Inputs
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/Gen_Sample_Rate_i
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/Get_Sample
add wave -noupdate /i2c_main_test_bench/Maser_i2c_Controller_1/Start
add wave -noupdate /i2c_main_test_bench/Maser_i2c_Controller_1/Busy
add wave -noupdate /i2c_main_test_bench/Maser_i2c_Controller_1/ack_error
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/data_read
add wave -noupdate -divider Outputs
add wave -noupdate /i2c_main_test_bench/Maser_i2c_Controller_1/Enable
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/Slave_Address_Out
add wave -noupdate /i2c_main_test_bench/Maser_i2c_Controller_1/Slave_read_nWrite
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/Slave_Data_Out
add wave -noupdate /i2c_main_test_bench/Maser_i2c_Controller_1/initialation_Status
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/FIFO_CTL
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/FIFO_Status
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/ADXL345_X
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/ADXL345_Y
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_i2c_Controller_1/ADXL345_Z
add wave -noupdate /i2c_main_test_bench/Maser_i2c_Controller_1/Ready
add wave -noupdate -divider -height 30 {I2C Master}
add wave -noupdate /i2c_main_test_bench/i2c_master_1/ack_error
add wave -noupdate /i2c_main_test_bench/i2c_master_1/sda
add wave -noupdate /i2c_main_test_bench/i2c_master_1/scl
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/i2c_master_1/addr
add wave -noupdate /i2c_main_test_bench/i2c_master_1/busy
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/i2c_master_1/data_rd
add wave -noupdate -divider {Test Bench}
add wave -noupdate /i2c_main_test_bench/Int_SCL_i
add wave -noupdate /i2c_main_test_bench/Int_SDA_i
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Test_Byte_i
add wave -noupdate /i2c_main_test_bench/Delay_Count
add wave -noupdate /i2c_main_test_bench/data_test/Cycle_Count
add wave -noupdate -divider Mux
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/Ready_1
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_Mux_ADXL345_1/Fifo_CTL_1
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_Mux_ADXL345_1/Fifo_Status_1
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_Mux_ADXL345_1/ADXL345_X_1
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_Mux_ADXL345_1/ADXL345_Y_1
add wave -noupdate -radix hexadecimal /i2c_main_test_bench/Maser_Mux_ADXL345_1/ADXL345_Z_1
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/UART_TXD
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/Initialization_lockout
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/Initialation_Status
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/tx_state
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/done
add wave -noupdate /i2c_main_test_bench/Busy_Mux_i
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/no_of_chars
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/no_of_chars2send
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/Gen_Sample_Rate_i
add wave -noupdate /i2c_main_test_bench/Maser_Mux_ADXL345_1/Get_Sample
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {4757435694 ps} 0} {{Cursor 4} {15786542923 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 142
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
WaveRestoreZoom {0 ps} {105 ms}
