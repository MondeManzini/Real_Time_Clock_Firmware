onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {I2C Driver}
add wave -noupdate /i2c_driver_test_bench/I2C_Driver_1/clk
add wave -noupdate /i2c_driver_test_bench/I2C_Driver_1/reset_n
add wave -noupdate /i2c_driver_test_bench/Enable_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Address_i
add wave -noupdate /i2c_driver_test_bench/RnW_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Data_WR_i
add wave -noupdate /i2c_driver_test_bench/Busy_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Data_RD_i
add wave -noupdate /i2c_driver_test_bench/Ack_Error_i
add wave -noupdate /i2c_driver_test_bench/SDA_i
add wave -noupdate /i2c_driver_test_bench/SCL_i
add wave -noupdate -divider {I2C Driver Test Bench}
add wave -noupdate /i2c_driver_test_bench/data_test/Cycle_Count
add wave -noupdate /i2c_driver_test_bench/I2C_Test_State
add wave -noupdate /i2c_driver_test_bench/Test_I2C_Config_State
add wave -noupdate /i2c_driver_test_bench/Test_I2C_Read_State
add wave -noupdate /i2c_driver_test_bench/Test_I2C_Write_State
add wave -noupdate /i2c_driver_test_bench/Real_Time_Counters_State
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Test_Data_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Test_Byte_i
add wave -noupdate /i2c_driver_test_bench/Byte_Count
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Seconds_TestData_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Minutes_TestData_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Hours_TestData_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Days_TestData_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Dates_TestData_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Months_Century_TestData_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Years_TestData_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Seconds_Register_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Minutes_Register_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Hours_Register_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Day_Register_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Date_Register_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Mon_Cent_Register_i
add wave -noupdate -radix hexadecimal /i2c_driver_test_bench/Year_Register_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {999842866 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 181
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {525 us}
