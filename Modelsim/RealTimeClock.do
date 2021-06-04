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
add wave -noupdate -divider Driver
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/sda
add wave -noupdate /real_time_clock_firmware_test_bench/Real_Time_Clock_I2C_Driver_1/scl
add wave -noupdate -divider Mux
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/UART_TXD
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Seconds
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Minutes
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Hours
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Day
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Date
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Month_Century
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/Year
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/data2send
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/no_of_chars
add wave -noupdate /real_time_clock_firmware_test_bench/RTC_Mux_1/no_of_chars2send
add wave -noupdate -divider {Slave Emulator}
add wave -noupdate /real_time_clock_firmware_test_bench/TestData
add wave -noupdate /real_time_clock_firmware_test_bench/I2C_Test_State
add wave -noupdate /real_time_clock_firmware_test_bench/Test_I2C_Config_State
add wave -noupdate /real_time_clock_firmware_test_bench/Test_I2C_Read_State
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {79715757 ps} 0}
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
WaveRestoreZoom {0 ps} {10500 us}
