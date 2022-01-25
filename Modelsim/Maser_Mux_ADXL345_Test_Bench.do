onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /maser_mux_adxl345_test_bench/CLK_I_i
add wave -noupdate /maser_mux_adxl345_test_bench/RST_I_i
add wave -noupdate /maser_mux_adxl345_test_bench/Run_i
add wave -noupdate /maser_mux_adxl345_test_bench/Stop_i
add wave -noupdate /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/UART_TXD
add wave -noupdate -radix hexadecimal /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/ADXL345_X_1
add wave -noupdate -radix hexadecimal /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/ADXL345_Y_1
add wave -noupdate -radix hexadecimal /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/ADXL345_Z_1
add wave -noupdate -radix hexadecimal /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/data2send
add wave -noupdate /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/Baud_Rate_Enable
add wave -noupdate /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/no_of_chars2send
add wave -noupdate /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/Ready_1
add wave -noupdate /maser_mux_adxl345_test_bench/Maser_Mux_ADXL345_1/busy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2339578466 ps} 0} {{Cursor 2} {370 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 143
configure wave -valuecolwidth 40
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
WaveRestoreZoom {2737543233 ps} {5207497340 ps}
