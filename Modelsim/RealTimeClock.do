onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/RST_I
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/CLK_I
add wave -noupdate -divider {Start Controller}
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Get_Sample
add wave -noupdate -divider Handler
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/i2c_Controller_State
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/i2c_Intialization_State
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/i2c_ReadData_State
add wave -noupdate /real_time_clock_firmware_test_bench/PushButton_Controller_1/Start
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/initialation_Status
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Maser_i2c_Control/Config_Count
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Slave_Address_Out
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Slave_read_nWrite
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Slave_Data_Out
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/data_read
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Seconds_out
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Minutes_out
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Hours_out
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Day_out
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Date_out
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Month_Century_out
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Year_out
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Maser_i2c_Control/Read_Count
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Handler_1/Ready
add wave -noupdate -divider Driver
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/divider
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/input_clk
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/bus_clk
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/sda
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/scl
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/busy
add wave -noupdate -divider Mux
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/UART_TXD
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/Seconds
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/Minutes
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/Hours
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/Day
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/Date
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/Month_Century
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/Year
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/RTC_Mux_1/data2send
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/no_of_chars
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/no_of_chars2send
add wave -noupdate -divider {Slave Emulator}
add wave -noupdate /real_time_clock_firmware_test_bench/I2C_Test_State
add wave -noupdate /real_time_clock_firmware_test_bench/Test_I2C_Config_State
add wave -noupdate /real_time_clock_firmware_test_bench/Test_I2C_Read_State
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/busy
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/ena
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Seconds_TestData_i
add wave -noupdate /real_time_clock_firmware_test_bench/Seconds_TestData_int
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Minutes_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Hours_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Days_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Dates_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Months_Century_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Years_TestData_i
add wave -noupdate -radix hexadecimal /real_time_clock_firmware_test_bench/Test_Byte_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7148936170 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 158
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
WaveRestoreZoom {0 ps} {1050 ms}
