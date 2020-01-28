set_property PACKAGE_PIN E31 [get_ports {B_P[0]}]
set_property PACKAGE_PIN F28 [get_ports {B_P[1]}]
set_property PACKAGE_PIN B32 [get_ports {B_P[2]}]
set_property PACKAGE_PIN F32 [get_ports {B_P[3]}]
set_property PACKAGE_PIN H32 [get_ports {B_P[4]}]
set_property PACKAGE_PIN N27 [get_ports {B_P[5]}]
set_property PACKAGE_PIN L28 [get_ports {B_P[6]}]
set_property PACKAGE_PIN G29 [get_ports {B_P[7]}]
set_property PACKAGE_PIN N29 [get_ports {B_P[8]}]
set_property PACKAGE_PIN J28 [get_ports {B_P[9]}]
set_property PACKAGE_PIN H33 [get_ports {C_P[9]}]
set_property PACKAGE_PIN J33 [get_ports {C_P[8]}]
set_property PACKAGE_PIN J39 [get_ports {C_P[7]}]
set_property PACKAGE_PIN K38 [get_ports {C_P[6]}]
set_property PACKAGE_PIN L38 [get_ports {C_P[5]}]
set_property PACKAGE_PIN H37 [get_ports {C_P[4]}]
set_property PACKAGE_PIN F34 [get_ports {C_P[3]}]
set_property PACKAGE_PIN F38 [get_ports {C_P[2]}]
set_property PACKAGE_PIN J35 [get_ports {C_P[1]}]
set_property PACKAGE_PIN H38 [get_ports {C_P[0]}]
set_property PACKAGE_PIN N37 [get_ports {D_P[9]}]
set_property PACKAGE_PIN R33 [get_ports {D_P[8]}]
set_property PACKAGE_PIN L32 [get_ports {D_P[7]}]
set_property PACKAGE_PIN M35 [get_ports {D_P[6]}]
set_property PACKAGE_PIN T33 [get_ports {D_P[5]}]
set_property PACKAGE_PIN U29 [get_ports {D_P[4]}]
set_property PACKAGE_PIN W33 [get_ports {D_P[3]}]
set_property PACKAGE_PIN N33 [get_ports {D_P[2]}]
set_property PACKAGE_PIN U35 [get_ports {D_P[1]}]
set_property PACKAGE_PIN U30 [get_ports {D_P[0]}]
set_property PACKAGE_PIN N23 [get_ports adc_miso]
set_property PACKAGE_PIN M34 [get_ports adc_mosi]
set_property PACKAGE_PIN M24 [get_ports adc_rst]
set_property PACKAGE_PIN Y35 [get_ports adc_sclk]
set_property PACKAGE_PIN L34 [get_ports adc_sen]
set_property PACKAGE_PIN R30 [get_ports adc_sync]
set_property PACKAGE_PIN P30 [get_ports adc_sync_dir]
set_property PACKAGE_PIN E36 [get_ports ADR_P]
set_property PACKAGE_PIN B34 [get_ports AOR_P]
set_property PACKAGE_PIN K31 [get_ports BOR_P]
set_property PACKAGE_PIN K36 [get_ports COR_P]
set_property PACKAGE_PIN U31 [get_ports DOR_P]
set_property PACKAGE_PIN AR25 [get_ports LED0]
set_property PACKAGE_PIN BA24 [get_ports LED1]
set_property PACKAGE_PIN BC26 [get_ports LED2]
set_property PACKAGE_PIN BC27 [get_ports LED3]
set_property PACKAGE_PIN AR22 [get_ports sys_clk]
set_property PACKAGE_PIN G17 [get_ports sys_rst_n]
set_property PACKAGE_PIN D33 [get_ports {A_P[9]}]
set_property PACKAGE_PIN A33 [get_ports {A_P[8]}]
set_property PACKAGE_PIN F37 [get_ports {A_P[7]}]
set_property PACKAGE_PIN B35 [get_ports {A_P[6]}]
set_property PACKAGE_PIN D36 [get_ports {A_P[5]}]
set_property PACKAGE_PIN D34 [get_ports {A_P[4]}]
set_property PACKAGE_PIN B37 [get_ports {A_P[3]}]
set_property PACKAGE_PIN E35 [get_ports {A_P[2]}]
set_property PACKAGE_PIN D38 [get_ports {A_P[1]}]
set_property PACKAGE_PIN D39 [get_ports {A_P[0]}]

create_clock -period 1.600 -name ADR_P -waveform {0.000 0.800} [get_ports ADR_P]
create_clock -period 20.000 -name sys_clk -waveform {0.000 10.000} [get_ports sys_clk]

set_property IOSTANDARD LVDS [get_ports {A_P[9]}]
set_property IOSTANDARD LVDS [get_ports {A_P[8]}]
set_property IOSTANDARD LVDS [get_ports {A_P[7]}]
set_property IOSTANDARD LVDS [get_ports {A_P[6]}]
set_property IOSTANDARD LVDS [get_ports {A_P[5]}]
set_property IOSTANDARD LVDS [get_ports {A_P[4]}]
set_property IOSTANDARD LVDS [get_ports {A_P[3]}]
set_property IOSTANDARD LVDS [get_ports {A_P[2]}]
set_property IOSTANDARD LVDS [get_ports {A_P[1]}]
set_property IOSTANDARD LVDS [get_ports {A_P[0]}]
set_property IOSTANDARD LVDS [get_ports {B_P[9]}]
set_property IOSTANDARD LVDS [get_ports {B_P[8]}]
set_property IOSTANDARD LVDS [get_ports {B_P[7]}]
set_property IOSTANDARD LVDS [get_ports {B_P[6]}]
set_property IOSTANDARD LVDS [get_ports {B_P[5]}]
set_property IOSTANDARD LVDS [get_ports {B_P[4]}]
set_property IOSTANDARD LVDS [get_ports {B_P[3]}]
set_property IOSTANDARD LVDS [get_ports {B_P[2]}]
set_property IOSTANDARD LVDS [get_ports {B_P[1]}]
set_property IOSTANDARD LVDS [get_ports {B_P[0]}]
set_property IOSTANDARD LVDS [get_ports {C_P[9]}]
set_property IOSTANDARD LVDS [get_ports {C_P[8]}]
set_property IOSTANDARD LVDS [get_ports {C_P[7]}]
set_property IOSTANDARD LVDS [get_ports {C_P[6]}]
set_property IOSTANDARD LVDS [get_ports {C_P[5]}]
set_property IOSTANDARD LVDS [get_ports {C_P[4]}]
set_property IOSTANDARD LVDS [get_ports {C_P[3]}]
set_property IOSTANDARD LVDS [get_ports {C_P[2]}]
set_property IOSTANDARD LVDS [get_ports {C_P[1]}]
set_property IOSTANDARD LVDS [get_ports {C_P[0]}]
set_property IOSTANDARD LVDS [get_ports {D_P[9]}]
set_property IOSTANDARD LVDS [get_ports {D_P[8]}]
set_property IOSTANDARD LVDS [get_ports {D_P[7]}]
set_property IOSTANDARD LVDS [get_ports {D_P[6]}]
set_property IOSTANDARD LVDS [get_ports {D_P[5]}]
set_property IOSTANDARD LVDS [get_ports {D_P[4]}]
set_property IOSTANDARD LVDS [get_ports {D_P[3]}]
set_property IOSTANDARD LVDS [get_ports {D_P[2]}]
set_property IOSTANDARD LVDS [get_ports {D_P[1]}]
set_property IOSTANDARD LVDS [get_ports {D_P[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports adc_miso]
set_property IOSTANDARD LVCMOS18 [get_ports adc_mosi]
set_property IOSTANDARD LVCMOS18 [get_ports adc_rst]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sclk]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sen]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sync]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sync_dir]
set_property IOSTANDARD LVDS [get_ports AOR_P]
set_property IOSTANDARD LVDS [get_ports BOR_P]
set_property IOSTANDARD LVDS [get_ports COR_P]
set_property IOSTANDARD LVDS [get_ports DOR_P]
set_property IOSTANDARD LVCMOS18 [get_ports LED0]
set_property IOSTANDARD LVCMOS18 [get_ports LED1]
set_property IOSTANDARD LVCMOS18 [get_ports LED2]
set_property IOSTANDARD LVCMOS18 [get_ports LED3]
set_property IOSTANDARD LVCMOS18 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS18 [get_ports sys_rst_n]

set_property IOSTANDARD LVDS [get_ports ADR_P]
set_property IOSTANDARD LVDS [get_ports ADR_N]

set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]

set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports ADR_P]
set_property DIFF_TERM_ADV TERM_100 [get_ports AOR_P]
set_property DIFF_TERM_ADV TERM_100 [get_ports BOR_P]
set_property DIFF_TERM_ADV TERM_100 [get_ports COR_P]
set_property DIFF_TERM_ADV TERM_100 [get_ports DOR_P]

set_property PACKAGE_PIN BD35 [get_ports {A_P1[0]}]
set_property PACKAGE_PIN BA34 [get_ports {A_P1[1]}]
set_property PACKAGE_PIN BC34 [get_ports {A_P1[2]}]
set_property PACKAGE_PIN BC38 [get_ports {A_P1[3]}]
set_property PACKAGE_PIN BC33 [get_ports {A_P1[4]}]
set_property PACKAGE_PIN BC39 [get_ports {A_P1[5]}]
set_property PACKAGE_PIN BB36 [get_ports {A_P1[6]}]
set_property PACKAGE_PIN AY37 [get_ports {A_P1[7]}]
set_property PACKAGE_PIN BA33 [get_ports {A_P1[8]}]
set_property PACKAGE_PIN BA38 [get_ports {A_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[9]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[8]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[8]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[7]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[7]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[6]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[6]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[5]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[5]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[4]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[4]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[3]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[3]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[2]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[2]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[1]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[1]}]
set_property IOSTANDARD LVDS [get_ports {A_P1[0]}]
set_property IOSTANDARD LVDS [get_ports {A_N1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_P1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {A_N1[0]}]
set_property PACKAGE_PIN AJ34 [get_ports {B_P1[0]}]
set_property PACKAGE_PIN AF32 [get_ports {B_P1[1]}]
set_property PACKAGE_PIN AK35 [get_ports {B_P1[2]}]
set_property PACKAGE_PIN AH33 [get_ports {B_P1[3]}]
set_property PACKAGE_PIN AF34 [get_ports {B_P1[4]}]
set_property PACKAGE_PIN AE35 [get_ports {B_P1[5]}]
set_property PACKAGE_PIN AJ29 [get_ports {B_P1[6]}]
set_property PACKAGE_PIN AH31 [get_ports {B_P1[7]}]
set_property PACKAGE_PIN AE33 [get_ports {B_P1[8]}]
set_property PACKAGE_PIN AJ28 [get_ports {B_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[9]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[8]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[8]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[7]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[7]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[6]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[6]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[5]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[5]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[4]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[4]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[3]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[3]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[2]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[2]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[1]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[1]}]
set_property IOSTANDARD LVDS [get_ports {B_P1[0]}]
set_property IOSTANDARD LVDS [get_ports {B_N1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_P1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {B_N1[0]}]
set_property PACKAGE_PIN AV37 [get_ports {C_P1[0]}]
set_property PACKAGE_PIN AR37 [get_ports {C_P1[1]}]
set_property PACKAGE_PIN AT37 [get_ports {C_P1[2]}]
set_property PACKAGE_PIN AY35 [get_ports {C_P1[3]}]
set_property PACKAGE_PIN AW34 [get_ports {C_P1[4]}]
set_property PACKAGE_PIN AW38 [get_ports {C_P1[5]}]
set_property PACKAGE_PIN AU34 [get_ports {C_P1[6]}]
set_property PACKAGE_PIN AR39 [get_ports {C_P1[7]}]
set_property PACKAGE_PIN AU36 [get_ports {C_P1[8]}]
set_property PACKAGE_PIN AU39 [get_ports {C_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[9]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[8]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[8]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[7]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[7]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[6]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[6]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[5]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[5]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[4]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[4]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[3]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[3]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[2]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[2]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[1]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[1]}]
set_property IOSTANDARD LVDS [get_ports {C_P1[0]}]
set_property IOSTANDARD LVDS [get_ports {C_N1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_P1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {C_N1[0]}]
set_property PACKAGE_PIN AN31 [get_ports {D_P1[0]}]
set_property PACKAGE_PIN AR28 [get_ports {D_P1[1]}]
set_property PACKAGE_PIN AW29 [get_ports {D_P1[2]}]
set_property PACKAGE_PIN AL29 [get_ports {D_P1[3]}]
set_property PACKAGE_PIN AV33 [get_ports {D_P1[4]}]
set_property PACKAGE_PIN AM29 [get_ports {D_P1[5]}]
set_property PACKAGE_PIN AR30 [get_ports {D_P1[6]}]
set_property PACKAGE_PIN AY30 [get_ports {D_P1[7]}]
set_property PACKAGE_PIN AT29 [get_ports {D_P1[8]}]
set_property PACKAGE_PIN AP28 [get_ports {D_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[9]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[9]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[8]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[8]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[7]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[7]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[6]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[6]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[5]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[5]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[4]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[4]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[3]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[3]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[2]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[2]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[1]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[1]}]
set_property IOSTANDARD LVDS [get_ports {D_P1[0]}]
set_property IOSTANDARD LVDS [get_ports {D_N1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[9]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[8]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[7]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[6]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[5]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[4]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[3]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[2]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[1]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_P1[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {D_N1[0]}]
set_property PACKAGE_PIN BB17 [get_ports adc_miso1]
set_property IOSTANDARD LVCMOS18 [get_ports adc_miso1]
set_property PACKAGE_PIN BC31 [get_ports adc_mosi1]
set_property PACKAGE_PIN BC17 [get_ports adc_rst1]
set_property PACKAGE_PIN BA32 [get_ports adc_sclk1]
set_property PACKAGE_PIN BD31 [get_ports adc_sen1]
set_property PACKAGE_PIN AR32 [get_ports adc_sync1]
set_property PACKAGE_PIN AR33 [get_ports adc_sync_dir1]
set_property IOSTANDARD LVCMOS18 [get_ports adc_mosi1]
set_property IOSTANDARD LVCMOS18 [get_ports adc_rst1]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sclk1]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sen1]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sync1]
set_property IOSTANDARD LVCMOS18 [get_ports adc_sync_dir1]
set_property PACKAGE_PIN BA37 [get_ports ADR_P1]
set_property PACKAGE_PIN BB35 [get_ports AOR_P1]
set_property PACKAGE_PIN AG29 [get_ports BOR_P1]
set_property PACKAGE_PIN AT34 [get_ports COR_P1]
set_property PACKAGE_PIN AM30 [get_ports DOR_P1]
set_property IOSTANDARD LVDS [get_ports ADR_P1]
set_property DIFF_TERM_ADV TERM_100 [get_ports ADR_P1]
set_property IOSTANDARD LVDS [get_ports AOR_P1]
set_property DIFF_TERM_ADV TERM_100 [get_ports AOR_P1]
set_property IOSTANDARD LVDS [get_ports BOR_P1]
set_property DIFF_TERM_ADV TERM_100 [get_ports BOR_P1]
set_property IOSTANDARD LVDS [get_ports COR_P1]
set_property DIFF_TERM_ADV TERM_100 [get_ports COR_P1]
set_property IOSTANDARD LVDS [get_ports DOR_P1]
set_property DIFF_TERM_ADV TERM_100 [get_ports DOR_P1]

set_false_path -from [get_clocks -of_objects [get_pins inst_clk/inst_10m_200m_5m/inst/mmcme3_adv_inst/CLKOUT1]] -to [get_clocks -of_objects [get_pins inst_AD_u72/u_clk_rst/a_BUFGCE_DIVIDE/O]]
set_false_path -from [get_clocks -of_objects [get_pins inst_AD_u72/u_clk_rst/a_BUFGCE_DIVIDE/O]] -to [get_clocks -of_objects [get_pins inst_clk/inst_10m_200m_5m/inst/mmcme3_adv_inst/CLKOUT1]]

set_false_path -from [get_clocks -of_objects [get_pins inst_clk/inst_10m_200m_5m/inst/mmcme3_adv_inst/CLKOUT2]] -to [get_clocks -of_objects [get_pins inst_AD_u72/u_clk_rst/a_BUFGCE_DIVIDE/O]]
set_false_path -from [get_clocks -of_objects [get_pins inst_AD_u72/u_clk_rst/a_BUFGCE_DIVIDE/O]] -to [get_clocks -of_objects [get_pins inst_clk/inst_10m_200m_5m/inst/mmcme3_adv_inst/CLKOUT2]]


set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk10m]