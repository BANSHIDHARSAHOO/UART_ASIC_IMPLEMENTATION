// This is the unpowered netlist.
module UART (clk,
    framingError,
    parityEnable,
    parityError,
    parityErrorValid,
    parityType,
    rst,
    rx,
    rx_busy,
    rx_done,
    tx,
    tx_busy,
    tx_data_valid,
    tx_done,
    div,
    rx_out,
    tx_in);
 input clk;
 output framingError;
 input parityEnable;
 output parityError;
 output parityErrorValid;
 input parityType;
 input rst;
 input rx;
 output rx_busy;
 output rx_done;
 output tx;
 output tx_busy;
 input tx_data_valid;
 output tx_done;
 input [11:0] div;
 output [7:0] rx_out;
 input [7:0] tx_in;

 wire \BRG.counter[0] ;
 wire \BRG.counter[10] ;
 wire \BRG.counter[11] ;
 wire \BRG.counter[1] ;
 wire \BRG.counter[2] ;
 wire \BRG.counter[3] ;
 wire \BRG.counter[4] ;
 wire \BRG.counter[5] ;
 wire \BRG.counter[6] ;
 wire \BRG.counter[7] ;
 wire \BRG.counter[8] ;
 wire \BRG.counter[9] ;
 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire _265_;
 wire _266_;
 wire clknet_0_clk;
 wire clknet_3_0__leaf_clk;
 wire clknet_3_1__leaf_clk;
 wire clknet_3_2__leaf_clk;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_4__leaf_clk;
 wire clknet_3_5__leaf_clk;
 wire clknet_3_6__leaf_clk;
 wire clknet_3_7__leaf_clk;
 wire net1;
 wire net10;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net11;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net12;
 wire net120;
 wire net121;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net5;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net6;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net7;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net8;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net9;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire \rx_synchronizer.rx_out ;
 wire \rx_synchronizer.sync_stage1 ;
 wire \rxtop.deserializer.ptr[0] ;
 wire \rxtop.deserializer.ptr[1] ;
 wire \rxtop.deserializer.ptr[2] ;
 wire \rxtop.deserializer.ptr[3] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER[0] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER[1] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER[2] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER[3] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER[4] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER_Next[0] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER_Next[1] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER_Next[2] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER_Next[3] ;
 wire \rxtop.fsm_rx.BAUD_COUNTER_Next[4] ;
 wire \rxtop.fsm_rx.Current[0] ;
 wire \rxtop.fsm_rx.Current[1] ;
 wire \rxtop.fsm_rx.Current[2] ;
 wire \rxtop.pCheck.memory[0] ;
 wire \rxtop.pCheck.memory[1] ;
 wire \rxtop.pCheck.memory[2] ;
 wire \rxtop.pCheck.memory[3] ;
 wire \rxtop.pCheck.memory[4] ;
 wire \rxtop.pCheck.memory[5] ;
 wire \rxtop.pCheck.memory[6] ;
 wire \rxtop.pCheck.memory[7] ;
 wire \txtop.data_mux_wire ;
 wire \txtop.fsm_tx.BAUD_COUNTER[0] ;
 wire \txtop.fsm_tx.BAUD_COUNTER[1] ;
 wire \txtop.fsm_tx.BAUD_COUNTER[2] ;
 wire \txtop.fsm_tx.BAUD_COUNTER[3] ;
 wire \txtop.fsm_tx.BAUD_COUNTER[4] ;
 wire \txtop.fsm_tx.BAUD_COUNTER_Next[0] ;
 wire \txtop.fsm_tx.BAUD_COUNTER_Next[1] ;
 wire \txtop.fsm_tx.BAUD_COUNTER_Next[2] ;
 wire \txtop.fsm_tx.BAUD_COUNTER_Next[3] ;
 wire \txtop.fsm_tx.BAUD_COUNTER_Next[4] ;
 wire \txtop.fsm_tx.Current[0] ;
 wire \txtop.fsm_tx.Current[1] ;
 wire \txtop.fsm_tx.Current[2] ;
 wire \txtop.pCalc.memory[0] ;
 wire \txtop.pCalc.memory[1] ;
 wire \txtop.pCalc.memory[2] ;
 wire \txtop.pCalc.memory[3] ;
 wire \txtop.pCalc.memory[4] ;
 wire \txtop.pCalc.memory[5] ;
 wire \txtop.pCalc.memory[6] ;
 wire \txtop.pCalc.memory[7] ;
 wire \txtop.serializer.memory[0] ;
 wire \txtop.serializer.memory[1] ;
 wire \txtop.serializer.memory[2] ;
 wire \txtop.serializer.memory[3] ;
 wire \txtop.serializer.memory[4] ;
 wire \txtop.serializer.memory[5] ;
 wire \txtop.serializer.memory[6] ;
 wire \txtop.serializer.memory[7] ;
 wire \txtop.serializer.ptr[0] ;
 wire \txtop.serializer.ptr[1] ;
 wire \txtop.serializer.ptr[2] ;
 wire \txtop.serializer.ptr[3] ;

 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_0_clk_A (.DIODE(clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_0__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_1__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_2__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_3__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_4__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_5__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_6__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_3_7__f_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_input10_A (.DIODE(div[7]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input11_A (.DIODE(div[8]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input12_A (.DIODE(div[9]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input13_A (.DIODE(parityEnable));
 sky130_fd_sc_hd__diode_2 ANTENNA_input14_A (.DIODE(parityType));
 sky130_fd_sc_hd__diode_2 ANTENNA_input15_A (.DIODE(rst));
 sky130_fd_sc_hd__diode_2 ANTENNA_input16_A (.DIODE(rx));
 sky130_fd_sc_hd__diode_2 ANTENNA_input17_A (.DIODE(tx_data_valid));
 sky130_fd_sc_hd__diode_2 ANTENNA_input18_A (.DIODE(tx_in[0]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input19_A (.DIODE(tx_in[1]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input1_A (.DIODE(div[0]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input20_A (.DIODE(tx_in[2]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input21_A (.DIODE(tx_in[3]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input22_A (.DIODE(tx_in[4]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input23_A (.DIODE(tx_in[5]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input24_A (.DIODE(tx_in[6]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input25_A (.DIODE(tx_in[7]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input2_A (.DIODE(div[10]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input3_A (.DIODE(div[11]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input4_A (.DIODE(div[1]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input5_A (.DIODE(div[2]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input6_A (.DIODE(div[3]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input7_A (.DIODE(div[4]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input8_A (.DIODE(div[5]));
 sky130_fd_sc_hd__diode_2 ANTENNA_input9_A (.DIODE(div[6]));
 sky130_fd_sc_hd__decap_8 FILLER_0_0_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_109 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_118 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_132 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_154 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_166 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_193 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_48 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_52 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_134 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_178 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_24 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_58 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_81 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_140 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_174 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_178 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_35 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_147 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_159 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_194 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_200 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_33 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_64 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_12_89 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_173 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_185 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_193 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_116 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_160 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_195 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_67 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_14_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_136 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_165 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_169 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_120 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_153 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_157 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_179 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_190 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_201 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_25 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_63 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_89 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_95 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_145 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_162 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_173 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_182 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_200 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_17_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_89 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_106 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_118 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18_93 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_10 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_64 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_72 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_78 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_110 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_167 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_77 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_130 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_138 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_20_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_20_192 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_58 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_93 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_110 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_124 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_136 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_166 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_34 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_44 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_50 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_114 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_67 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_22_92 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_153 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_23_17 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_186 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_196 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_23_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_118 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_24_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_69 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_78 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_117 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_120 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_131 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_140 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_158 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_167 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_81 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_93 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_101 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_149 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_16 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26_167 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_49 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_26_70 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_89 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_167 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_27_191 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_27_28 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_27_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_101 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_117 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_125 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_28_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_149 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_28_193 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_28_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_60 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_89 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_100 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_137 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_145 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_177 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_200 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_35 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_64 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_76 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29_88 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_2_185 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_124 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_132 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_153 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_193 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_35 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_7 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_123 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_31_148 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_156 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_31_198 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_31_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_31_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_31_6 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_115 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_153 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_157 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_165 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_32_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_32_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_32_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_32_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_33_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_118 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_125 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_132 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_145 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_33_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_33_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_33_193 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_33_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_201 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_33_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_34 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_33_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_33_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_33_90 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_33_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_109 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_119 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_148 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_153 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_201 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_107 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_122 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_134 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_159 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_171 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_195 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_200 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_53 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_98 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_134 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_146 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_5_165 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_187 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_7 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_109 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_132 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_175 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_200 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_117 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_140 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_160 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_169 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_175 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_192 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_25 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_7 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_145 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_164 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_178 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_82 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_92 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_96 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_10 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_142 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_165 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_174 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_50 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_9_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_94 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_105 ();
 sky130_fd_sc_hd__inv_2 _267_ (.A(net114),
    .Y(_061_));
 sky130_fd_sc_hd__or3_1 _268_ (.A(\rxtop.fsm_rx.BAUD_COUNTER[1] ),
    .B(\rxtop.fsm_rx.BAUD_COUNTER[0] ),
    .C(\rxtop.fsm_rx.BAUD_COUNTER[2] ),
    .X(_062_));
 sky130_fd_sc_hd__nor3_1 _269_ (.A(_061_),
    .B(\rxtop.fsm_rx.BAUD_COUNTER[3] ),
    .C(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__nor3b_2 _270_ (.A(\rxtop.fsm_rx.Current[1] ),
    .B(\rxtop.fsm_rx.Current[0] ),
    .C_N(\rxtop.fsm_rx.Current[2] ),
    .Y(_064_));
 sky130_fd_sc_hd__nand2_1 _271_ (.A(net43),
    .B(_064_),
    .Y(_065_));
 sky130_fd_sc_hd__inv_2 _272_ (.A(_065_),
    .Y(net30));
 sky130_fd_sc_hd__clkbuf_2 _273_ (.A(\rxtop.fsm_rx.Current[2] ),
    .X(_066_));
 sky130_fd_sc_hd__inv_2 _274_ (.A(_066_),
    .Y(_067_));
 sky130_fd_sc_hd__clkbuf_2 _275_ (.A(\rxtop.fsm_rx.Current[0] ),
    .X(_068_));
 sky130_fd_sc_hd__nor3b_1 _276_ (.A(_066_),
    .B(_068_),
    .C_N(\rxtop.fsm_rx.Current[1] ),
    .Y(_069_));
 sky130_fd_sc_hd__a211o_1 _277_ (.A1(_067_),
    .A2(_068_),
    .B1(_064_),
    .C1(net42),
    .X(net29));
 sky130_fd_sc_hd__nor2_1 _278_ (.A(\txtop.fsm_tx.Current[1] ),
    .B(\txtop.fsm_tx.Current[0] ),
    .Y(_070_));
 sky130_fd_sc_hd__xnor2_1 _279_ (.A(\txtop.fsm_tx.Current[2] ),
    .B(_070_),
    .Y(net40));
 sky130_fd_sc_hd__or4_1 _280_ (.A(\BRG.counter[9] ),
    .B(\BRG.counter[8] ),
    .C(\BRG.counter[11] ),
    .D(\BRG.counter[10] ),
    .X(_071_));
 sky130_fd_sc_hd__or4_1 _281_ (.A(\BRG.counter[5] ),
    .B(\BRG.counter[4] ),
    .C(\BRG.counter[7] ),
    .D(\BRG.counter[6] ),
    .X(_072_));
 sky130_fd_sc_hd__and2b_1 _282_ (.A_N(\BRG.counter[2] ),
    .B(\BRG.counter[0] ),
    .X(_073_));
 sky130_fd_sc_hd__nor2_1 _283_ (.A(\BRG.counter[1] ),
    .B(\BRG.counter[3] ),
    .Y(_074_));
 sky130_fd_sc_hd__and4bb_2 _284_ (.A_N(_071_),
    .B_N(_072_),
    .C(_073_),
    .D(_074_),
    .X(_075_));
 sky130_fd_sc_hd__inv_2 _285_ (.A(\txtop.fsm_tx.Current[2] ),
    .Y(_076_));
 sky130_fd_sc_hd__or3_1 _286_ (.A(\txtop.fsm_tx.BAUD_COUNTER[1] ),
    .B(\txtop.fsm_tx.BAUD_COUNTER[0] ),
    .C(\txtop.fsm_tx.BAUD_COUNTER[3] ),
    .X(_077_));
 sky130_fd_sc_hd__or3b_1 _287_ (.A(_077_),
    .B(\txtop.fsm_tx.BAUD_COUNTER[2] ),
    .C_N(\txtop.fsm_tx.BAUD_COUNTER[4] ),
    .X(_078_));
 sky130_fd_sc_hd__nand2_1 _288_ (.A(net40),
    .B(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__o21ai_1 _289_ (.A1(_076_),
    .A2(_070_),
    .B1(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__o21ai_1 _290_ (.A1(net108),
    .A2(_075_),
    .B1(_080_),
    .Y(_081_));
 sky130_fd_sc_hd__and2_1 _291_ (.A(\txtop.fsm_tx.BAUD_COUNTER[0] ),
    .B(_075_),
    .X(_082_));
 sky130_fd_sc_hd__nor2_1 _292_ (.A(_081_),
    .B(_082_),
    .Y(\txtop.fsm_tx.BAUD_COUNTER_Next[0] ));
 sky130_fd_sc_hd__and3_1 _293_ (.A(\txtop.fsm_tx.BAUD_COUNTER[1] ),
    .B(\txtop.fsm_tx.BAUD_COUNTER[0] ),
    .C(_075_),
    .X(_083_));
 sky130_fd_sc_hd__nand2_1 _294_ (.A(_076_),
    .B(_070_),
    .Y(_084_));
 sky130_fd_sc_hd__o21ai_1 _295_ (.A1(net90),
    .A2(_082_),
    .B1(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__nor2_1 _296_ (.A(_083_),
    .B(_085_),
    .Y(\txtop.fsm_tx.BAUD_COUNTER_Next[1] ));
 sky130_fd_sc_hd__nor2_1 _297_ (.A(\txtop.fsm_tx.BAUD_COUNTER[2] ),
    .B(_083_),
    .Y(_086_));
 sky130_fd_sc_hd__and2_1 _298_ (.A(\txtop.fsm_tx.BAUD_COUNTER[2] ),
    .B(_083_),
    .X(_087_));
 sky130_fd_sc_hd__a211oi_1 _299_ (.A1(_076_),
    .A2(_070_),
    .B1(_086_),
    .C1(_087_),
    .Y(\txtop.fsm_tx.BAUD_COUNTER_Next[2] ));
 sky130_fd_sc_hd__o21ai_1 _300_ (.A1(net68),
    .A2(_087_),
    .B1(_084_),
    .Y(_088_));
 sky130_fd_sc_hd__a21oi_1 _301_ (.A1(net68),
    .A2(_087_),
    .B1(_088_),
    .Y(\txtop.fsm_tx.BAUD_COUNTER_Next[3] ));
 sky130_fd_sc_hd__a31o_1 _302_ (.A1(\txtop.fsm_tx.BAUD_COUNTER[3] ),
    .A2(\txtop.fsm_tx.BAUD_COUNTER[2] ),
    .A3(_083_),
    .B1(\txtop.fsm_tx.BAUD_COUNTER[4] ),
    .X(_089_));
 sky130_fd_sc_hd__nand3_1 _303_ (.A(\txtop.fsm_tx.BAUD_COUNTER[3] ),
    .B(\txtop.fsm_tx.BAUD_COUNTER[4] ),
    .C(_087_),
    .Y(_090_));
 sky130_fd_sc_hd__and3_1 _304_ (.A(_080_),
    .B(_089_),
    .C(_090_),
    .X(_091_));
 sky130_fd_sc_hd__clkbuf_1 _305_ (.A(_091_),
    .X(\txtop.fsm_tx.BAUD_COUNTER_Next[4] ));
 sky130_fd_sc_hd__or4b_2 _306_ (.A(\rxtop.deserializer.ptr[1] ),
    .B(\rxtop.deserializer.ptr[0] ),
    .C(\rxtop.deserializer.ptr[2] ),
    .D_N(\rxtop.deserializer.ptr[3] ),
    .X(_092_));
 sky130_fd_sc_hd__and2_1 _307_ (.A(net42),
    .B(_092_),
    .X(_093_));
 sky130_fd_sc_hd__and2b_1 _308_ (.A_N(_066_),
    .B(\rxtop.fsm_rx.Current[1] ),
    .X(_094_));
 sky130_fd_sc_hd__a21o_1 _309_ (.A1(\rxtop.fsm_rx.Current[0] ),
    .A2(_094_),
    .B1(_064_),
    .X(_095_));
 sky130_fd_sc_hd__o21ba_1 _310_ (.A1(_093_),
    .A2(_095_),
    .B1_N(_063_),
    .X(_096_));
 sky130_fd_sc_hd__inv_2 _311_ (.A(\rxtop.fsm_rx.BAUD_COUNTER[3] ),
    .Y(_097_));
 sky130_fd_sc_hd__or3_1 _312_ (.A(\rxtop.fsm_rx.BAUD_COUNTER[4] ),
    .B(_097_),
    .C(_062_),
    .X(_098_));
 sky130_fd_sc_hd__o21ba_1 _313_ (.A1(\rxtop.fsm_rx.Current[1] ),
    .A2(_068_),
    .B1_N(_094_),
    .X(_099_));
 sky130_fd_sc_hd__o21a_1 _314_ (.A1(_066_),
    .A2(_098_),
    .B1(_099_),
    .X(_100_));
 sky130_fd_sc_hd__o2bb2a_1 _315_ (.A1_N(\rxtop.fsm_rx.BAUD_COUNTER[0] ),
    .A2_N(_075_),
    .B1(_096_),
    .B2(_100_),
    .X(_101_));
 sky130_fd_sc_hd__o21a_1 _316_ (.A1(net101),
    .A2(_075_),
    .B1(_101_),
    .X(\rxtop.fsm_rx.BAUD_COUNTER_Next[0] ));
 sky130_fd_sc_hd__or3_1 _317_ (.A(_066_),
    .B(_068_),
    .C(_093_),
    .X(_102_));
 sky130_fd_sc_hd__a21o_1 _318_ (.A1(\rxtop.fsm_rx.BAUD_COUNTER[0] ),
    .A2(_075_),
    .B1(\rxtop.fsm_rx.BAUD_COUNTER[1] ),
    .X(_103_));
 sky130_fd_sc_hd__and3_1 _319_ (.A(\rxtop.fsm_rx.BAUD_COUNTER[1] ),
    .B(\rxtop.fsm_rx.BAUD_COUNTER[0] ),
    .C(_075_),
    .X(_104_));
 sky130_fd_sc_hd__inv_2 _320_ (.A(_104_),
    .Y(_105_));
 sky130_fd_sc_hd__and3_1 _321_ (.A(_102_),
    .B(_103_),
    .C(_105_),
    .X(_106_));
 sky130_fd_sc_hd__clkbuf_1 _322_ (.A(_106_),
    .X(\rxtop.fsm_rx.BAUD_COUNTER_Next[1] ));
 sky130_fd_sc_hd__or2_1 _323_ (.A(\rxtop.fsm_rx.BAUD_COUNTER[2] ),
    .B(_104_),
    .X(_107_));
 sky130_fd_sc_hd__nand2_1 _324_ (.A(\rxtop.fsm_rx.BAUD_COUNTER[2] ),
    .B(_104_),
    .Y(_108_));
 sky130_fd_sc_hd__and3_1 _325_ (.A(_102_),
    .B(_107_),
    .C(_108_),
    .X(_109_));
 sky130_fd_sc_hd__clkbuf_1 _326_ (.A(_109_),
    .X(\rxtop.fsm_rx.BAUD_COUNTER_Next[2] ));
 sky130_fd_sc_hd__nand2_1 _327_ (.A(_097_),
    .B(_108_),
    .Y(_110_));
 sky130_fd_sc_hd__nand3_1 _328_ (.A(\rxtop.fsm_rx.BAUD_COUNTER[2] ),
    .B(\rxtop.fsm_rx.BAUD_COUNTER[3] ),
    .C(_104_),
    .Y(_111_));
 sky130_fd_sc_hd__o311a_1 _329_ (.A1(_093_),
    .A2(_095_),
    .A3(_100_),
    .B1(_110_),
    .C1(_111_),
    .X(\rxtop.fsm_rx.BAUD_COUNTER_Next[3] ));
 sky130_fd_sc_hd__nand2_1 _330_ (.A(_061_),
    .B(_111_),
    .Y(_112_));
 sky130_fd_sc_hd__or2_1 _331_ (.A(_061_),
    .B(_111_),
    .X(_113_));
 sky130_fd_sc_hd__o211a_1 _332_ (.A1(_096_),
    .A2(_099_),
    .B1(_112_),
    .C1(_113_),
    .X(\rxtop.fsm_rx.BAUD_COUNTER_Next[4] ));
 sky130_fd_sc_hd__inv_2 _333_ (.A(\txtop.fsm_tx.Current[0] ),
    .Y(_114_));
 sky130_fd_sc_hd__xnor2_1 _334_ (.A(\txtop.pCalc.memory[1] ),
    .B(\txtop.pCalc.memory[0] ),
    .Y(_115_));
 sky130_fd_sc_hd__xnor2_1 _335_ (.A(net14),
    .B(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__xnor2_1 _336_ (.A(\txtop.pCalc.memory[7] ),
    .B(\txtop.pCalc.memory[6] ),
    .Y(_117_));
 sky130_fd_sc_hd__xor2_1 _337_ (.A(\txtop.pCalc.memory[5] ),
    .B(\txtop.pCalc.memory[4] ),
    .X(_118_));
 sky130_fd_sc_hd__xnor2_1 _338_ (.A(_117_),
    .B(_118_),
    .Y(_119_));
 sky130_fd_sc_hd__xnor2_1 _339_ (.A(\txtop.pCalc.memory[3] ),
    .B(\txtop.pCalc.memory[2] ),
    .Y(_120_));
 sky130_fd_sc_hd__xnor2_1 _340_ (.A(_119_),
    .B(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__o21ai_1 _341_ (.A1(_116_),
    .A2(_121_),
    .B1(\txtop.fsm_tx.Current[1] ),
    .Y(_122_));
 sky130_fd_sc_hd__a21oi_1 _342_ (.A1(_116_),
    .A2(_121_),
    .B1(_122_),
    .Y(_123_));
 sky130_fd_sc_hd__or3b_1 _343_ (.A(\txtop.fsm_tx.Current[2] ),
    .B(\txtop.fsm_tx.Current[0] ),
    .C_N(\txtop.fsm_tx.Current[1] ),
    .X(_124_));
 sky130_fd_sc_hd__o32a_1 _344_ (.A1(\txtop.fsm_tx.Current[2] ),
    .A2(_114_),
    .A3(_123_),
    .B1(_124_),
    .B2(\txtop.data_mux_wire ),
    .X(net39));
 sky130_fd_sc_hd__or4_2 _345_ (.A(net1),
    .B(net4),
    .C(net5),
    .D(net6),
    .X(_125_));
 sky130_fd_sc_hd__or4_1 _346_ (.A(net7),
    .B(net8),
    .C(net9),
    .D(net10),
    .X(_126_));
 sky130_fd_sc_hd__or3_1 _347_ (.A(net11),
    .B(_125_),
    .C(_126_),
    .X(_127_));
 sky130_fd_sc_hd__o21ai_1 _348_ (.A1(_125_),
    .A2(_126_),
    .B1(net11),
    .Y(_128_));
 sky130_fd_sc_hd__and2_1 _349_ (.A(_127_),
    .B(_128_),
    .X(_129_));
 sky130_fd_sc_hd__xnor2_1 _350_ (.A(\BRG.counter[5] ),
    .B(net8),
    .Y(_130_));
 sky130_fd_sc_hd__or2b_1 _351_ (.A(\BRG.counter[4] ),
    .B_N(net7),
    .X(_131_));
 sky130_fd_sc_hd__nand2_1 _352_ (.A(_130_),
    .B(_131_),
    .Y(_132_));
 sky130_fd_sc_hd__a21o_1 _353_ (.A1(_130_),
    .A2(_131_),
    .B1(_125_),
    .X(_133_));
 sky130_fd_sc_hd__inv_2 _354_ (.A(net7),
    .Y(_134_));
 sky130_fd_sc_hd__nor4_1 _355_ (.A(net1),
    .B(net4),
    .C(net5),
    .D(net6),
    .Y(_135_));
 sky130_fd_sc_hd__a22o_1 _356_ (.A1(\BRG.counter[4] ),
    .A2(_134_),
    .B1(net44),
    .B2(_130_),
    .X(_136_));
 sky130_fd_sc_hd__mux2_1 _357_ (.A0(_132_),
    .A1(_133_),
    .S(_136_),
    .X(_137_));
 sky130_fd_sc_hd__or3_1 _358_ (.A(net1),
    .B(net4),
    .C(net5),
    .X(_138_));
 sky130_fd_sc_hd__xor2_1 _359_ (.A(net6),
    .B(_138_),
    .X(_139_));
 sky130_fd_sc_hd__xnor2_1 _360_ (.A(\BRG.counter[3] ),
    .B(_139_),
    .Y(_140_));
 sky130_fd_sc_hd__o21ai_1 _361_ (.A1(net1),
    .A2(net4),
    .B1(net5),
    .Y(_141_));
 sky130_fd_sc_hd__a21oi_1 _362_ (.A1(_138_),
    .A2(_141_),
    .B1(\BRG.counter[2] ),
    .Y(_142_));
 sky130_fd_sc_hd__or2b_1 _363_ (.A(\BRG.counter[0] ),
    .B_N(net1),
    .X(_143_));
 sky130_fd_sc_hd__or2b_1 _364_ (.A(net1),
    .B_N(\BRG.counter[0] ),
    .X(_144_));
 sky130_fd_sc_hd__xor2_1 _365_ (.A(\BRG.counter[1] ),
    .B(net4),
    .X(_145_));
 sky130_fd_sc_hd__mux2_1 _366_ (.A0(_143_),
    .A1(_144_),
    .S(_145_),
    .X(_146_));
 sky130_fd_sc_hd__a311o_1 _367_ (.A1(\BRG.counter[2] ),
    .A2(_138_),
    .A3(_141_),
    .B1(_142_),
    .C1(_146_),
    .X(_147_));
 sky130_fd_sc_hd__a2111o_1 _368_ (.A1(\BRG.counter[8] ),
    .A2(_129_),
    .B1(_137_),
    .C1(_140_),
    .D1(_147_),
    .X(_148_));
 sky130_fd_sc_hd__xor2_1 _369_ (.A(\BRG.counter[11] ),
    .B(net3),
    .X(_149_));
 sky130_fd_sc_hd__or4_1 _370_ (.A(net11),
    .B(net12),
    .C(_125_),
    .D(_126_),
    .X(_150_));
 sky130_fd_sc_hd__or2_1 _371_ (.A(net2),
    .B(_150_),
    .X(_151_));
 sky130_fd_sc_hd__xnor2_1 _372_ (.A(\BRG.counter[7] ),
    .B(net10),
    .Y(_152_));
 sky130_fd_sc_hd__or2b_1 _373_ (.A(\BRG.counter[6] ),
    .B_N(net9),
    .X(_153_));
 sky130_fd_sc_hd__and2_1 _374_ (.A(_152_),
    .B(_153_),
    .X(_154_));
 sky130_fd_sc_hd__a2111oi_1 _375_ (.A1(_152_),
    .A2(_153_),
    .B1(net7),
    .C1(net8),
    .D1(_125_),
    .Y(_155_));
 sky130_fd_sc_hd__nor2_1 _376_ (.A(net7),
    .B(net8),
    .Y(_156_));
 sky130_fd_sc_hd__inv_2 _377_ (.A(net9),
    .Y(_157_));
 sky130_fd_sc_hd__a32o_1 _378_ (.A1(net44),
    .A2(_156_),
    .A3(_152_),
    .B1(_157_),
    .B2(\BRG.counter[6] ),
    .X(_158_));
 sky130_fd_sc_hd__mux2_1 _379_ (.A0(_154_),
    .A1(_155_),
    .S(_158_),
    .X(_159_));
 sky130_fd_sc_hd__o221a_1 _380_ (.A1(\BRG.counter[8] ),
    .A2(_129_),
    .B1(_149_),
    .B2(_151_),
    .C1(_159_),
    .X(_160_));
 sky130_fd_sc_hd__xor2_1 _381_ (.A(\BRG.counter[9] ),
    .B(net12),
    .X(_161_));
 sky130_fd_sc_hd__xnor2_1 _382_ (.A(_127_),
    .B(_161_),
    .Y(_162_));
 sky130_fd_sc_hd__a21oi_1 _383_ (.A1(_151_),
    .A2(_149_),
    .B1(_162_),
    .Y(_163_));
 sky130_fd_sc_hd__xnor2_1 _384_ (.A(net2),
    .B(_150_),
    .Y(_164_));
 sky130_fd_sc_hd__xnor2_1 _385_ (.A(\BRG.counter[10] ),
    .B(_164_),
    .Y(_165_));
 sky130_fd_sc_hd__and4b_1 _386_ (.A_N(_148_),
    .B(_160_),
    .C(_163_),
    .D(_165_),
    .X(_166_));
 sky130_fd_sc_hd__buf_1 _387_ (.A(_166_),
    .X(_167_));
 sky130_fd_sc_hd__buf_2 _388_ (.A(_167_),
    .X(_168_));
 sky130_fd_sc_hd__nor2_1 _389_ (.A(net83),
    .B(_168_),
    .Y(_000_));
 sky130_fd_sc_hd__xnor2_1 _390_ (.A(\BRG.counter[1] ),
    .B(net83),
    .Y(_169_));
 sky130_fd_sc_hd__nor2_1 _391_ (.A(_168_),
    .B(_169_),
    .Y(_003_));
 sky130_fd_sc_hd__and3_1 _392_ (.A(\BRG.counter[1] ),
    .B(\BRG.counter[0] ),
    .C(\BRG.counter[2] ),
    .X(_170_));
 sky130_fd_sc_hd__a21oi_1 _393_ (.A1(\BRG.counter[1] ),
    .A2(\BRG.counter[0] ),
    .B1(\BRG.counter[2] ),
    .Y(_171_));
 sky130_fd_sc_hd__nor3_1 _394_ (.A(_168_),
    .B(_170_),
    .C(_171_),
    .Y(_004_));
 sky130_fd_sc_hd__and4_1 _395_ (.A(\BRG.counter[1] ),
    .B(\BRG.counter[0] ),
    .C(\BRG.counter[3] ),
    .D(\BRG.counter[2] ),
    .X(_172_));
 sky130_fd_sc_hd__dlymetal6s2s_1 _396_ (.A(_172_),
    .X(_173_));
 sky130_fd_sc_hd__nor2_1 _397_ (.A(\BRG.counter[3] ),
    .B(_170_),
    .Y(_174_));
 sky130_fd_sc_hd__nor3_1 _398_ (.A(_168_),
    .B(_173_),
    .C(_174_),
    .Y(_005_));
 sky130_fd_sc_hd__xnor2_1 _399_ (.A(\BRG.counter[4] ),
    .B(_173_),
    .Y(_175_));
 sky130_fd_sc_hd__nor2_1 _400_ (.A(_168_),
    .B(_175_),
    .Y(_006_));
 sky130_fd_sc_hd__and3_1 _401_ (.A(\BRG.counter[5] ),
    .B(\BRG.counter[4] ),
    .C(_173_),
    .X(_176_));
 sky130_fd_sc_hd__a21oi_1 _402_ (.A1(\BRG.counter[4] ),
    .A2(_173_),
    .B1(\BRG.counter[5] ),
    .Y(_177_));
 sky130_fd_sc_hd__nor3_1 _403_ (.A(_168_),
    .B(_176_),
    .C(_177_),
    .Y(_007_));
 sky130_fd_sc_hd__and4_1 _404_ (.A(\BRG.counter[5] ),
    .B(\BRG.counter[4] ),
    .C(\BRG.counter[6] ),
    .D(_173_),
    .X(_178_));
 sky130_fd_sc_hd__nor2_1 _405_ (.A(\BRG.counter[6] ),
    .B(_176_),
    .Y(_179_));
 sky130_fd_sc_hd__nor3_1 _406_ (.A(_167_),
    .B(_178_),
    .C(_179_),
    .Y(_008_));
 sky130_fd_sc_hd__xnor2_1 _407_ (.A(net115),
    .B(_178_),
    .Y(_180_));
 sky130_fd_sc_hd__nor2_1 _408_ (.A(_168_),
    .B(_180_),
    .Y(_009_));
 sky130_fd_sc_hd__and3_1 _409_ (.A(\BRG.counter[7] ),
    .B(\BRG.counter[8] ),
    .C(_178_),
    .X(_181_));
 sky130_fd_sc_hd__a21oi_1 _410_ (.A1(\BRG.counter[7] ),
    .A2(_178_),
    .B1(\BRG.counter[8] ),
    .Y(_182_));
 sky130_fd_sc_hd__nor3_1 _411_ (.A(_167_),
    .B(_181_),
    .C(_182_),
    .Y(_010_));
 sky130_fd_sc_hd__and2_1 _412_ (.A(\BRG.counter[9] ),
    .B(_181_),
    .X(_183_));
 sky130_fd_sc_hd__nor2_1 _413_ (.A(\BRG.counter[9] ),
    .B(_181_),
    .Y(_184_));
 sky130_fd_sc_hd__nor3_1 _414_ (.A(_167_),
    .B(_183_),
    .C(_184_),
    .Y(_011_));
 sky130_fd_sc_hd__xnor2_1 _415_ (.A(\BRG.counter[10] ),
    .B(_183_),
    .Y(_185_));
 sky130_fd_sc_hd__nor2_1 _416_ (.A(_168_),
    .B(_185_),
    .Y(_001_));
 sky130_fd_sc_hd__and3_1 _417_ (.A(\BRG.counter[11] ),
    .B(\BRG.counter[10] ),
    .C(_183_),
    .X(_186_));
 sky130_fd_sc_hd__a21oi_1 _418_ (.A1(\BRG.counter[10] ),
    .A2(_183_),
    .B1(net119),
    .Y(_187_));
 sky130_fd_sc_hd__nor3_1 _419_ (.A(_167_),
    .B(_186_),
    .C(_187_),
    .Y(_002_));
 sky130_fd_sc_hd__nor2_1 _420_ (.A(\rx_synchronizer.rx_out ),
    .B(_065_),
    .Y(net26));
 sky130_fd_sc_hd__or4_1 _421_ (.A(_076_),
    .B(\txtop.fsm_tx.Current[1] ),
    .C(\txtop.fsm_tx.Current[0] ),
    .D(_078_),
    .X(_188_));
 sky130_fd_sc_hd__inv_2 _422_ (.A(_188_),
    .Y(net41));
 sky130_fd_sc_hd__inv_2 _423_ (.A(_092_),
    .Y(_189_));
 sky130_fd_sc_hd__nor3_1 _424_ (.A(_066_),
    .B(\rxtop.fsm_rx.Current[1] ),
    .C(_068_),
    .Y(_190_));
 sky130_fd_sc_hd__a31o_1 _425_ (.A1(net13),
    .A2(net42),
    .A3(_189_),
    .B1(_190_),
    .X(_191_));
 sky130_fd_sc_hd__or3b_1 _426_ (.A(_066_),
    .B(\rxtop.fsm_rx.Current[1] ),
    .C_N(\rxtop.fsm_rx.Current[0] ),
    .X(_192_));
 sky130_fd_sc_hd__inv_2 _427_ (.A(_192_),
    .Y(_193_));
 sky130_fd_sc_hd__inv_2 _428_ (.A(_095_),
    .Y(_194_));
 sky130_fd_sc_hd__o2bb2a_1 _429_ (.A1_N(_098_),
    .A2_N(_193_),
    .B1(net43),
    .B2(_194_),
    .X(_195_));
 sky130_fd_sc_hd__a21bo_1 _430_ (.A1(\rx_synchronizer.rx_out ),
    .A2(_190_),
    .B1_N(_195_),
    .X(_196_));
 sky130_fd_sc_hd__mux2_1 _431_ (.A0(_191_),
    .A1(_068_),
    .S(_196_),
    .X(_197_));
 sky130_fd_sc_hd__clkbuf_1 _432_ (.A(_197_),
    .X(_012_));
 sky130_fd_sc_hd__a211o_1 _433_ (.A1(net13),
    .A2(_069_),
    .B1(_093_),
    .C1(_193_),
    .X(_198_));
 sky130_fd_sc_hd__mux2_1 _434_ (.A0(_198_),
    .A1(\rxtop.fsm_rx.Current[1] ),
    .S(_196_),
    .X(_199_));
 sky130_fd_sc_hd__clkbuf_1 _435_ (.A(_199_),
    .X(_013_));
 sky130_fd_sc_hd__nor2_1 _436_ (.A(net13),
    .B(_092_),
    .Y(_200_));
 sky130_fd_sc_hd__o21ai_1 _437_ (.A1(_068_),
    .A2(_200_),
    .B1(_094_),
    .Y(_201_));
 sky130_fd_sc_hd__o22ai_1 _438_ (.A1(_067_),
    .A2(_195_),
    .B1(_196_),
    .B2(_201_),
    .Y(_014_));
 sky130_fd_sc_hd__xor2_1 _439_ (.A(\rxtop.pCheck.memory[3] ),
    .B(\rxtop.pCheck.memory[2] ),
    .X(_202_));
 sky130_fd_sc_hd__xor2_1 _440_ (.A(\rxtop.pCheck.memory[1] ),
    .B(\rxtop.pCheck.memory[0] ),
    .X(_203_));
 sky130_fd_sc_hd__xnor2_1 _441_ (.A(_202_),
    .B(_203_),
    .Y(_204_));
 sky130_fd_sc_hd__xnor2_1 _442_ (.A(\rx_synchronizer.rx_out ),
    .B(net14),
    .Y(_205_));
 sky130_fd_sc_hd__xnor2_1 _443_ (.A(_204_),
    .B(_205_),
    .Y(_206_));
 sky130_fd_sc_hd__xnor2_1 _444_ (.A(\rxtop.pCheck.memory[7] ),
    .B(\rxtop.pCheck.memory[6] ),
    .Y(_207_));
 sky130_fd_sc_hd__xor2_1 _445_ (.A(\rxtop.pCheck.memory[5] ),
    .B(\rxtop.pCheck.memory[4] ),
    .X(_208_));
 sky130_fd_sc_hd__xnor2_1 _446_ (.A(_207_),
    .B(_208_),
    .Y(_209_));
 sky130_fd_sc_hd__nand2_1 _447_ (.A(_206_),
    .B(_209_),
    .Y(_210_));
 sky130_fd_sc_hd__and3_1 _448_ (.A(_068_),
    .B(net43),
    .C(_094_),
    .X(_211_));
 sky130_fd_sc_hd__o21a_1 _449_ (.A1(_206_),
    .A2(_209_),
    .B1(_211_),
    .X(_212_));
 sky130_fd_sc_hd__o2bb2a_1 _450_ (.A1_N(_210_),
    .A2_N(_212_),
    .B1(net65),
    .B2(_211_),
    .X(_015_));
 sky130_fd_sc_hd__o21a_1 _451_ (.A1(net60),
    .A2(_211_),
    .B1(_065_),
    .X(_016_));
 sky130_fd_sc_hd__and2_1 _452_ (.A(net43),
    .B(_093_),
    .X(_213_));
 sky130_fd_sc_hd__clkbuf_2 _453_ (.A(_213_),
    .X(_214_));
 sky130_fd_sc_hd__nor2_1 _454_ (.A(net30),
    .B(_213_),
    .Y(_215_));
 sky130_fd_sc_hd__clkbuf_2 _455_ (.A(_215_),
    .X(_216_));
 sky130_fd_sc_hd__a22o_1 _456_ (.A1(net32),
    .A2(_214_),
    .B1(_216_),
    .B2(net81),
    .X(_017_));
 sky130_fd_sc_hd__a22o_1 _457_ (.A1(net33),
    .A2(_214_),
    .B1(_216_),
    .B2(net99),
    .X(_018_));
 sky130_fd_sc_hd__a22o_1 _458_ (.A1(net88),
    .A2(_214_),
    .B1(_216_),
    .B2(net33),
    .X(_019_));
 sky130_fd_sc_hd__a22o_1 _459_ (.A1(net97),
    .A2(_214_),
    .B1(_216_),
    .B2(net88),
    .X(_020_));
 sky130_fd_sc_hd__a22o_1 _460_ (.A1(net98),
    .A2(_214_),
    .B1(_216_),
    .B2(net97),
    .X(_021_));
 sky130_fd_sc_hd__a22o_1 _461_ (.A1(net94),
    .A2(_214_),
    .B1(_216_),
    .B2(net36),
    .X(_022_));
 sky130_fd_sc_hd__a22o_1 _462_ (.A1(net96),
    .A2(_214_),
    .B1(_216_),
    .B2(net94),
    .X(_023_));
 sky130_fd_sc_hd__a22o_1 _463_ (.A1(\rx_synchronizer.rx_out ),
    .A2(_214_),
    .B1(_216_),
    .B2(net96),
    .X(_024_));
 sky130_fd_sc_hd__nor2_1 _464_ (.A(_066_),
    .B(\rxtop.deserializer.ptr[0] ),
    .Y(_217_));
 sky130_fd_sc_hd__mux2_1 _465_ (.A0(_217_),
    .A1(\rxtop.deserializer.ptr[0] ),
    .S(_215_),
    .X(_218_));
 sky130_fd_sc_hd__clkbuf_1 _466_ (.A(_218_),
    .X(_025_));
 sky130_fd_sc_hd__or2_1 _467_ (.A(\rxtop.deserializer.ptr[1] ),
    .B(\rxtop.deserializer.ptr[0] ),
    .X(_219_));
 sky130_fd_sc_hd__nand2_1 _468_ (.A(\rxtop.deserializer.ptr[1] ),
    .B(\rxtop.deserializer.ptr[0] ),
    .Y(_220_));
 sky130_fd_sc_hd__a32o_1 _469_ (.A1(_219_),
    .A2(_213_),
    .A3(_220_),
    .B1(_215_),
    .B2(net102),
    .X(_026_));
 sky130_fd_sc_hd__nor2_1 _470_ (.A(_215_),
    .B(_220_),
    .Y(_221_));
 sky130_fd_sc_hd__a31o_1 _471_ (.A1(\rxtop.deserializer.ptr[1] ),
    .A2(\rxtop.deserializer.ptr[0] ),
    .A3(\rxtop.deserializer.ptr[2] ),
    .B1(_064_),
    .X(_222_));
 sky130_fd_sc_hd__o21ai_1 _472_ (.A1(net30),
    .A2(_213_),
    .B1(_222_),
    .Y(_223_));
 sky130_fd_sc_hd__o21a_1 _473_ (.A1(net91),
    .A2(_221_),
    .B1(_223_),
    .X(_027_));
 sky130_fd_sc_hd__and4_1 _474_ (.A(\rxtop.deserializer.ptr[1] ),
    .B(\rxtop.deserializer.ptr[0] ),
    .C(\rxtop.deserializer.ptr[2] ),
    .D(_213_),
    .X(_224_));
 sky130_fd_sc_hd__mux2_1 _475_ (.A0(_224_),
    .A1(_223_),
    .S(net116),
    .X(_225_));
 sky130_fd_sc_hd__clkbuf_1 _476_ (.A(_225_),
    .X(_028_));
 sky130_fd_sc_hd__inv_2 _477_ (.A(net13),
    .Y(_226_));
 sky130_fd_sc_hd__or4b_1 _478_ (.A(\txtop.serializer.ptr[1] ),
    .B(\txtop.serializer.ptr[0] ),
    .C(\txtop.serializer.ptr[2] ),
    .D_N(\txtop.serializer.ptr[3] ),
    .X(_227_));
 sky130_fd_sc_hd__or2b_1 _479_ (.A(_124_),
    .B_N(_227_),
    .X(_228_));
 sky130_fd_sc_hd__o211a_1 _480_ (.A1(net17),
    .A2(_084_),
    .B1(_228_),
    .C1(_079_),
    .X(_229_));
 sky130_fd_sc_hd__o21a_1 _481_ (.A1(_226_),
    .A2(_124_),
    .B1(_229_),
    .X(_230_));
 sky130_fd_sc_hd__o2bb2a_1 _482_ (.A1_N(_084_),
    .A2_N(_230_),
    .B1(_229_),
    .B2(net110),
    .X(_029_));
 sky130_fd_sc_hd__or3_1 _483_ (.A(\txtop.fsm_tx.Current[2] ),
    .B(\txtop.fsm_tx.Current[1] ),
    .C(_114_),
    .X(_231_));
 sky130_fd_sc_hd__o2bb2a_1 _484_ (.A1_N(_230_),
    .A2_N(_231_),
    .B1(net112),
    .B2(_229_),
    .X(_030_));
 sky130_fd_sc_hd__o211a_1 _485_ (.A1(\txtop.fsm_tx.Current[0] ),
    .A2(_226_),
    .B1(_076_),
    .C1(\txtop.fsm_tx.Current[1] ),
    .X(_232_));
 sky130_fd_sc_hd__mux2_1 _486_ (.A0(\txtop.fsm_tx.Current[2] ),
    .A1(_232_),
    .S(_229_),
    .X(_233_));
 sky130_fd_sc_hd__clkbuf_1 _487_ (.A(_233_),
    .X(_031_));
 sky130_fd_sc_hd__a21oi_1 _488_ (.A1(_228_),
    .A2(_231_),
    .B1(_078_),
    .Y(_234_));
 sky130_fd_sc_hd__nor2_1 _489_ (.A(net17),
    .B(_234_),
    .Y(_235_));
 sky130_fd_sc_hd__buf_2 _490_ (.A(_235_),
    .X(_236_));
 sky130_fd_sc_hd__nor2b_2 _491_ (.A(net17),
    .B_N(_234_),
    .Y(_237_));
 sky130_fd_sc_hd__clkbuf_2 _492_ (.A(net17),
    .X(_238_));
 sky130_fd_sc_hd__and2_1 _493_ (.A(_238_),
    .B(net18),
    .X(_239_));
 sky130_fd_sc_hd__a221o_1 _494_ (.A1(net63),
    .A2(_236_),
    .B1(_237_),
    .B2(\txtop.serializer.memory[1] ),
    .C1(_239_),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _495_ (.A0(\txtop.serializer.memory[2] ),
    .A1(net19),
    .S(net17),
    .X(_240_));
 sky130_fd_sc_hd__mux2_1 _496_ (.A0(_240_),
    .A1(net111),
    .S(_236_),
    .X(_241_));
 sky130_fd_sc_hd__clkbuf_1 _497_ (.A(_241_),
    .X(_033_));
 sky130_fd_sc_hd__mux2_1 _498_ (.A0(\txtop.serializer.memory[3] ),
    .A1(net20),
    .S(net17),
    .X(_242_));
 sky130_fd_sc_hd__mux2_1 _499_ (.A0(_242_),
    .A1(net106),
    .S(_236_),
    .X(_243_));
 sky130_fd_sc_hd__clkbuf_1 _500_ (.A(_243_),
    .X(_034_));
 sky130_fd_sc_hd__mux2_1 _501_ (.A0(\txtop.serializer.memory[4] ),
    .A1(net21),
    .S(net17),
    .X(_244_));
 sky130_fd_sc_hd__mux2_1 _502_ (.A0(_244_),
    .A1(net107),
    .S(_235_),
    .X(_245_));
 sky130_fd_sc_hd__clkbuf_1 _503_ (.A(_245_),
    .X(_035_));
 sky130_fd_sc_hd__and2_1 _504_ (.A(_238_),
    .B(net22),
    .X(_246_));
 sky130_fd_sc_hd__a221o_1 _505_ (.A1(\txtop.serializer.memory[4] ),
    .A2(_236_),
    .B1(_237_),
    .B2(net66),
    .C1(_246_),
    .X(_036_));
 sky130_fd_sc_hd__and2_1 _506_ (.A(_238_),
    .B(net23),
    .X(_247_));
 sky130_fd_sc_hd__a221o_1 _507_ (.A1(\txtop.serializer.memory[5] ),
    .A2(_236_),
    .B1(_237_),
    .B2(net61),
    .C1(_247_),
    .X(_037_));
 sky130_fd_sc_hd__and2_1 _508_ (.A(_238_),
    .B(net24),
    .X(_248_));
 sky130_fd_sc_hd__a221o_1 _509_ (.A1(\txtop.serializer.memory[6] ),
    .A2(_236_),
    .B1(_237_),
    .B2(net58),
    .C1(_248_),
    .X(_038_));
 sky130_fd_sc_hd__buf_2 _510_ (.A(net17),
    .X(_249_));
 sky130_fd_sc_hd__a22o_1 _511_ (.A1(_249_),
    .A2(net25),
    .B1(_236_),
    .B2(net58),
    .X(_039_));
 sky130_fd_sc_hd__mux2_1 _512_ (.A0(\txtop.pCalc.memory[0] ),
    .A1(net18),
    .S(_249_),
    .X(_250_));
 sky130_fd_sc_hd__clkbuf_1 _513_ (.A(_250_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_1 _514_ (.A0(\txtop.pCalc.memory[1] ),
    .A1(net19),
    .S(_249_),
    .X(_251_));
 sky130_fd_sc_hd__clkbuf_1 _515_ (.A(_251_),
    .X(_041_));
 sky130_fd_sc_hd__mux2_1 _516_ (.A0(\txtop.pCalc.memory[2] ),
    .A1(net20),
    .S(_249_),
    .X(_252_));
 sky130_fd_sc_hd__clkbuf_1 _517_ (.A(_252_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_1 _518_ (.A0(net117),
    .A1(net21),
    .S(_249_),
    .X(_253_));
 sky130_fd_sc_hd__clkbuf_1 _519_ (.A(_253_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _520_ (.A0(net113),
    .A1(net22),
    .S(_238_),
    .X(_254_));
 sky130_fd_sc_hd__clkbuf_1 _521_ (.A(_254_),
    .X(_044_));
 sky130_fd_sc_hd__mux2_1 _522_ (.A0(net118),
    .A1(net23),
    .S(_238_),
    .X(_255_));
 sky130_fd_sc_hd__clkbuf_1 _523_ (.A(_255_),
    .X(_045_));
 sky130_fd_sc_hd__mux2_1 _524_ (.A0(\txtop.pCalc.memory[6] ),
    .A1(net24),
    .S(_238_),
    .X(_256_));
 sky130_fd_sc_hd__clkbuf_1 _525_ (.A(_256_),
    .X(_046_));
 sky130_fd_sc_hd__mux2_1 _526_ (.A0(\txtop.pCalc.memory[7] ),
    .A1(net25),
    .S(_238_),
    .X(_257_));
 sky130_fd_sc_hd__clkbuf_1 _527_ (.A(_257_),
    .X(_047_));
 sky130_fd_sc_hd__mux2_1 _528_ (.A0(net103),
    .A1(net63),
    .S(_237_),
    .X(_258_));
 sky130_fd_sc_hd__clkbuf_1 _529_ (.A(_258_),
    .X(_048_));
 sky130_fd_sc_hd__nor2_2 _530_ (.A(net30),
    .B(_189_),
    .Y(_259_));
 sky130_fd_sc_hd__nor2_2 _531_ (.A(net30),
    .B(_092_),
    .Y(_260_));
 sky130_fd_sc_hd__a22o_1 _532_ (.A1(net69),
    .A2(_259_),
    .B1(_260_),
    .B2(net31),
    .X(_049_));
 sky130_fd_sc_hd__a22o_1 _533_ (.A1(net79),
    .A2(_259_),
    .B1(_260_),
    .B2(net32),
    .X(_050_));
 sky130_fd_sc_hd__a22o_1 _534_ (.A1(net71),
    .A2(_259_),
    .B1(_260_),
    .B2(net33),
    .X(_051_));
 sky130_fd_sc_hd__a22o_1 _535_ (.A1(net86),
    .A2(_259_),
    .B1(_260_),
    .B2(net34),
    .X(_052_));
 sky130_fd_sc_hd__a22o_1 _536_ (.A1(net75),
    .A2(_259_),
    .B1(_260_),
    .B2(net35),
    .X(_053_));
 sky130_fd_sc_hd__a22o_1 _537_ (.A1(net73),
    .A2(_259_),
    .B1(_260_),
    .B2(net36),
    .X(_054_));
 sky130_fd_sc_hd__a22o_1 _538_ (.A1(net77),
    .A2(_259_),
    .B1(_260_),
    .B2(net37),
    .X(_055_));
 sky130_fd_sc_hd__a22o_1 _539_ (.A1(net84),
    .A2(_259_),
    .B1(_260_),
    .B2(net38),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _540_ (.A0(_237_),
    .A1(_236_),
    .S(\txtop.serializer.ptr[0] ),
    .X(_261_));
 sky130_fd_sc_hd__clkbuf_1 _541_ (.A(_261_),
    .X(_057_));
 sky130_fd_sc_hd__a21oi_1 _542_ (.A1(\txtop.serializer.ptr[0] ),
    .A2(_234_),
    .B1(net105),
    .Y(_262_));
 sky130_fd_sc_hd__and3_1 _543_ (.A(\txtop.serializer.ptr[1] ),
    .B(\txtop.serializer.ptr[0] ),
    .C(_234_),
    .X(_263_));
 sky130_fd_sc_hd__nor3_1 _544_ (.A(_249_),
    .B(_262_),
    .C(_263_),
    .Y(_058_));
 sky130_fd_sc_hd__a21oi_1 _545_ (.A1(net121),
    .A2(_263_),
    .B1(_249_),
    .Y(_264_));
 sky130_fd_sc_hd__o21a_1 _546_ (.A1(net104),
    .A2(_263_),
    .B1(_264_),
    .X(_059_));
 sky130_fd_sc_hd__a21oi_1 _547_ (.A1(\txtop.serializer.ptr[2] ),
    .A2(_263_),
    .B1(net92),
    .Y(_265_));
 sky130_fd_sc_hd__a31o_1 _548_ (.A1(net120),
    .A2(net92),
    .A3(_263_),
    .B1(_249_),
    .X(_266_));
 sky130_fd_sc_hd__nor2_1 _549_ (.A(net93),
    .B(_266_),
    .Y(_060_));
 sky130_fd_sc_hd__dfrtp_1 _550_ (.CLK(clknet_3_4__leaf_clk),
    .D(_012_),
    .RESET_B(net50),
    .Q(\rxtop.fsm_rx.Current[0] ));
 sky130_fd_sc_hd__dfrtp_2 _551_ (.CLK(clknet_3_4__leaf_clk),
    .D(_013_),
    .RESET_B(net50),
    .Q(\rxtop.fsm_rx.Current[1] ));
 sky130_fd_sc_hd__dfrtp_1 _552_ (.CLK(clknet_3_5__leaf_clk),
    .D(_014_),
    .RESET_B(net50),
    .Q(\rxtop.fsm_rx.Current[2] ));
 sky130_fd_sc_hd__dfrtp_1 _553_ (.CLK(clknet_3_5__leaf_clk),
    .D(_015_),
    .RESET_B(net51),
    .Q(net27));
 sky130_fd_sc_hd__dfrtp_1 _554_ (.CLK(clknet_3_5__leaf_clk),
    .D(_016_),
    .RESET_B(net51),
    .Q(net28));
 sky130_fd_sc_hd__dfrtp_1 _555_ (.CLK(clknet_3_7__leaf_clk),
    .D(net82),
    .RESET_B(net53),
    .Q(net31));
 sky130_fd_sc_hd__dfrtp_1 _556_ (.CLK(clknet_3_7__leaf_clk),
    .D(net100),
    .RESET_B(net53),
    .Q(net32));
 sky130_fd_sc_hd__dfrtp_1 _557_ (.CLK(clknet_3_7__leaf_clk),
    .D(net89),
    .RESET_B(net54),
    .Q(net33));
 sky130_fd_sc_hd__dfrtp_1 _558_ (.CLK(clknet_3_6__leaf_clk),
    .D(_020_),
    .RESET_B(net54),
    .Q(net34));
 sky130_fd_sc_hd__dfrtp_1 _559_ (.CLK(clknet_3_6__leaf_clk),
    .D(_021_),
    .RESET_B(net53),
    .Q(net35));
 sky130_fd_sc_hd__dfrtp_1 _560_ (.CLK(clknet_3_6__leaf_clk),
    .D(net95),
    .RESET_B(net53),
    .Q(net36));
 sky130_fd_sc_hd__dfrtp_1 _561_ (.CLK(clknet_3_7__leaf_clk),
    .D(_023_),
    .RESET_B(net53),
    .Q(net37));
 sky130_fd_sc_hd__dfrtp_1 _562_ (.CLK(clknet_3_5__leaf_clk),
    .D(_024_),
    .RESET_B(net51),
    .Q(net38));
 sky130_fd_sc_hd__dfrtp_1 _563_ (.CLK(clknet_3_5__leaf_clk),
    .D(_025_),
    .RESET_B(net51),
    .Q(\rxtop.deserializer.ptr[0] ));
 sky130_fd_sc_hd__dfrtp_1 _564_ (.CLK(clknet_3_5__leaf_clk),
    .D(_026_),
    .RESET_B(net51),
    .Q(\rxtop.deserializer.ptr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _565_ (.CLK(clknet_3_5__leaf_clk),
    .D(_027_),
    .RESET_B(net51),
    .Q(\rxtop.deserializer.ptr[2] ));
 sky130_fd_sc_hd__dfrtp_1 _566_ (.CLK(clknet_3_5__leaf_clk),
    .D(_028_),
    .RESET_B(net51),
    .Q(\rxtop.deserializer.ptr[3] ));
 sky130_fd_sc_hd__dfrtp_1 _567_ (.CLK(clknet_3_6__leaf_clk),
    .D(\rxtop.fsm_rx.BAUD_COUNTER_Next[0] ),
    .RESET_B(net55),
    .Q(\rxtop.fsm_rx.BAUD_COUNTER[0] ));
 sky130_fd_sc_hd__dfrtp_1 _568_ (.CLK(clknet_3_6__leaf_clk),
    .D(\rxtop.fsm_rx.BAUD_COUNTER_Next[1] ),
    .RESET_B(net55),
    .Q(\rxtop.fsm_rx.BAUD_COUNTER[1] ));
 sky130_fd_sc_hd__dfrtp_1 _569_ (.CLK(clknet_3_7__leaf_clk),
    .D(\rxtop.fsm_rx.BAUD_COUNTER_Next[2] ),
    .RESET_B(net55),
    .Q(\rxtop.fsm_rx.BAUD_COUNTER[2] ));
 sky130_fd_sc_hd__dfrtp_1 _570_ (.CLK(clknet_3_4__leaf_clk),
    .D(\rxtop.fsm_rx.BAUD_COUNTER_Next[3] ),
    .RESET_B(net50),
    .Q(\rxtop.fsm_rx.BAUD_COUNTER[3] ));
 sky130_fd_sc_hd__dfrtp_1 _571_ (.CLK(clknet_3_5__leaf_clk),
    .D(\rxtop.fsm_rx.BAUD_COUNTER_Next[4] ),
    .RESET_B(net51),
    .Q(\rxtop.fsm_rx.BAUD_COUNTER[4] ));
 sky130_fd_sc_hd__dfrtp_2 _572_ (.CLK(clknet_3_6__leaf_clk),
    .D(_000_),
    .RESET_B(net55),
    .Q(\BRG.counter[0] ));
 sky130_fd_sc_hd__dfrtp_2 _573_ (.CLK(clknet_3_7__leaf_clk),
    .D(_003_),
    .RESET_B(net55),
    .Q(\BRG.counter[1] ));
 sky130_fd_sc_hd__dfrtp_1 _574_ (.CLK(clknet_3_6__leaf_clk),
    .D(_004_),
    .RESET_B(net55),
    .Q(\BRG.counter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _575_ (.CLK(clknet_3_6__leaf_clk),
    .D(_005_),
    .RESET_B(net55),
    .Q(\BRG.counter[3] ));
 sky130_fd_sc_hd__dfrtp_2 _576_ (.CLK(clknet_3_3__leaf_clk),
    .D(_006_),
    .RESET_B(net48),
    .Q(\BRG.counter[4] ));
 sky130_fd_sc_hd__dfrtp_1 _577_ (.CLK(clknet_3_6__leaf_clk),
    .D(_007_),
    .RESET_B(net48),
    .Q(\BRG.counter[5] ));
 sky130_fd_sc_hd__dfrtp_1 _578_ (.CLK(clknet_3_2__leaf_clk),
    .D(_008_),
    .RESET_B(net48),
    .Q(\BRG.counter[6] ));
 sky130_fd_sc_hd__dfrtp_2 _579_ (.CLK(clknet_3_3__leaf_clk),
    .D(_009_),
    .RESET_B(net48),
    .Q(\BRG.counter[7] ));
 sky130_fd_sc_hd__dfrtp_1 _580_ (.CLK(clknet_3_3__leaf_clk),
    .D(_010_),
    .RESET_B(net47),
    .Q(\BRG.counter[8] ));
 sky130_fd_sc_hd__dfrtp_1 _581_ (.CLK(clknet_3_2__leaf_clk),
    .D(_011_),
    .RESET_B(net47),
    .Q(\BRG.counter[9] ));
 sky130_fd_sc_hd__dfrtp_2 _582_ (.CLK(clknet_3_2__leaf_clk),
    .D(_001_),
    .RESET_B(net47),
    .Q(\BRG.counter[10] ));
 sky130_fd_sc_hd__dfrtp_1 _583_ (.CLK(clknet_3_2__leaf_clk),
    .D(_002_),
    .RESET_B(net47),
    .Q(\BRG.counter[11] ));
 sky130_fd_sc_hd__dfstp_1 _584_ (.CLK(clknet_3_4__leaf_clk),
    .D(net57),
    .SET_B(net50),
    .Q(\rx_synchronizer.rx_out ));
 sky130_fd_sc_hd__dfstp_1 _585_ (.CLK(clknet_3_4__leaf_clk),
    .D(net16),
    .SET_B(net50),
    .Q(\rx_synchronizer.sync_stage1 ));
 sky130_fd_sc_hd__dfrtp_2 _586_ (.CLK(clknet_3_4__leaf_clk),
    .D(_029_),
    .RESET_B(net52),
    .Q(\txtop.fsm_tx.Current[0] ));
 sky130_fd_sc_hd__dfrtp_2 _587_ (.CLK(clknet_3_1__leaf_clk),
    .D(_030_),
    .RESET_B(net46),
    .Q(\txtop.fsm_tx.Current[1] ));
 sky130_fd_sc_hd__dfrtp_2 _588_ (.CLK(clknet_3_4__leaf_clk),
    .D(_031_),
    .RESET_B(net50),
    .Q(\txtop.fsm_tx.Current[2] ));
 sky130_fd_sc_hd__dfrtp_1 _589_ (.CLK(clknet_3_0__leaf_clk),
    .D(net64),
    .RESET_B(net45),
    .Q(\txtop.serializer.memory[0] ));
 sky130_fd_sc_hd__dfrtp_1 _590_ (.CLK(clknet_3_0__leaf_clk),
    .D(_033_),
    .RESET_B(net45),
    .Q(\txtop.serializer.memory[1] ));
 sky130_fd_sc_hd__dfrtp_1 _591_ (.CLK(clknet_3_0__leaf_clk),
    .D(_034_),
    .RESET_B(net45),
    .Q(\txtop.serializer.memory[2] ));
 sky130_fd_sc_hd__dfrtp_1 _592_ (.CLK(clknet_3_0__leaf_clk),
    .D(_035_),
    .RESET_B(net45),
    .Q(\txtop.serializer.memory[3] ));
 sky130_fd_sc_hd__dfrtp_1 _593_ (.CLK(clknet_3_0__leaf_clk),
    .D(net67),
    .RESET_B(net45),
    .Q(\txtop.serializer.memory[4] ));
 sky130_fd_sc_hd__dfrtp_1 _594_ (.CLK(clknet_3_0__leaf_clk),
    .D(net62),
    .RESET_B(net45),
    .Q(\txtop.serializer.memory[5] ));
 sky130_fd_sc_hd__dfrtp_1 _595_ (.CLK(clknet_3_1__leaf_clk),
    .D(net59),
    .RESET_B(net46),
    .Q(\txtop.serializer.memory[6] ));
 sky130_fd_sc_hd__dfrtp_1 _596_ (.CLK(clknet_3_3__leaf_clk),
    .D(_039_),
    .RESET_B(net46),
    .Q(\txtop.serializer.memory[7] ));
 sky130_fd_sc_hd__dfrtp_1 _597_ (.CLK(clknet_3_0__leaf_clk),
    .D(_040_),
    .RESET_B(net46),
    .Q(\txtop.pCalc.memory[0] ));
 sky130_fd_sc_hd__dfrtp_1 _598_ (.CLK(clknet_3_0__leaf_clk),
    .D(_041_),
    .RESET_B(net46),
    .Q(\txtop.pCalc.memory[1] ));
 sky130_fd_sc_hd__dfrtp_1 _599_ (.CLK(clknet_3_0__leaf_clk),
    .D(_042_),
    .RESET_B(net45),
    .Q(\txtop.pCalc.memory[2] ));
 sky130_fd_sc_hd__dfrtp_1 _600_ (.CLK(clknet_3_0__leaf_clk),
    .D(_043_),
    .RESET_B(net45),
    .Q(\txtop.pCalc.memory[3] ));
 sky130_fd_sc_hd__dfrtp_1 _601_ (.CLK(clknet_3_2__leaf_clk),
    .D(_044_),
    .RESET_B(net47),
    .Q(\txtop.pCalc.memory[4] ));
 sky130_fd_sc_hd__dfrtp_1 _602_ (.CLK(clknet_3_2__leaf_clk),
    .D(_045_),
    .RESET_B(net47),
    .Q(\txtop.pCalc.memory[5] ));
 sky130_fd_sc_hd__dfrtp_1 _603_ (.CLK(clknet_3_2__leaf_clk),
    .D(_046_),
    .RESET_B(net47),
    .Q(\txtop.pCalc.memory[6] ));
 sky130_fd_sc_hd__dfrtp_1 _604_ (.CLK(clknet_3_2__leaf_clk),
    .D(_047_),
    .RESET_B(net47),
    .Q(\txtop.pCalc.memory[7] ));
 sky130_fd_sc_hd__dfrtp_1 _605_ (.CLK(clknet_3_1__leaf_clk),
    .D(_048_),
    .RESET_B(net46),
    .Q(\txtop.data_mux_wire ));
 sky130_fd_sc_hd__dfrtp_1 _606_ (.CLK(clknet_3_7__leaf_clk),
    .D(net70),
    .RESET_B(net54),
    .Q(\rxtop.pCheck.memory[0] ));
 sky130_fd_sc_hd__dfrtp_1 _607_ (.CLK(clknet_3_7__leaf_clk),
    .D(net80),
    .RESET_B(net54),
    .Q(\rxtop.pCheck.memory[1] ));
 sky130_fd_sc_hd__dfrtp_1 _608_ (.CLK(clknet_3_7__leaf_clk),
    .D(net72),
    .RESET_B(net54),
    .Q(\rxtop.pCheck.memory[2] ));
 sky130_fd_sc_hd__dfrtp_1 _609_ (.CLK(clknet_3_7__leaf_clk),
    .D(net87),
    .RESET_B(net54),
    .Q(\rxtop.pCheck.memory[3] ));
 sky130_fd_sc_hd__dfrtp_1 _610_ (.CLK(clknet_3_7__leaf_clk),
    .D(net76),
    .RESET_B(net53),
    .Q(\rxtop.pCheck.memory[4] ));
 sky130_fd_sc_hd__dfrtp_1 _611_ (.CLK(clknet_3_7__leaf_clk),
    .D(net74),
    .RESET_B(net53),
    .Q(\rxtop.pCheck.memory[5] ));
 sky130_fd_sc_hd__dfrtp_1 _612_ (.CLK(clknet_3_7__leaf_clk),
    .D(net78),
    .RESET_B(net53),
    .Q(\rxtop.pCheck.memory[6] ));
 sky130_fd_sc_hd__dfrtp_1 _613_ (.CLK(clknet_3_5__leaf_clk),
    .D(net85),
    .RESET_B(net52),
    .Q(\rxtop.pCheck.memory[7] ));
 sky130_fd_sc_hd__dfrtp_1 _614_ (.CLK(clknet_3_3__leaf_clk),
    .D(net109),
    .RESET_B(net48),
    .Q(\txtop.fsm_tx.BAUD_COUNTER[0] ));
 sky130_fd_sc_hd__dfrtp_1 _615_ (.CLK(clknet_3_6__leaf_clk),
    .D(\txtop.fsm_tx.BAUD_COUNTER_Next[1] ),
    .RESET_B(net55),
    .Q(\txtop.fsm_tx.BAUD_COUNTER[1] ));
 sky130_fd_sc_hd__dfrtp_1 _616_ (.CLK(clknet_3_1__leaf_clk),
    .D(\txtop.fsm_tx.BAUD_COUNTER_Next[2] ),
    .RESET_B(net52),
    .Q(\txtop.fsm_tx.BAUD_COUNTER[2] ));
 sky130_fd_sc_hd__dfrtp_1 _617_ (.CLK(clknet_3_3__leaf_clk),
    .D(\txtop.fsm_tx.BAUD_COUNTER_Next[3] ),
    .RESET_B(net48),
    .Q(\txtop.fsm_tx.BAUD_COUNTER[3] ));
 sky130_fd_sc_hd__dfrtp_1 _618_ (.CLK(clknet_3_3__leaf_clk),
    .D(\txtop.fsm_tx.BAUD_COUNTER_Next[4] ),
    .RESET_B(net46),
    .Q(\txtop.fsm_tx.BAUD_COUNTER[4] ));
 sky130_fd_sc_hd__dfrtp_1 _619_ (.CLK(clknet_3_1__leaf_clk),
    .D(_057_),
    .RESET_B(net49),
    .Q(\txtop.serializer.ptr[0] ));
 sky130_fd_sc_hd__dfrtp_1 _620_ (.CLK(clknet_3_1__leaf_clk),
    .D(_058_),
    .RESET_B(net49),
    .Q(\txtop.serializer.ptr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _621_ (.CLK(clknet_3_1__leaf_clk),
    .D(_059_),
    .RESET_B(net49),
    .Q(\txtop.serializer.ptr[2] ));
 sky130_fd_sc_hd__dfrtp_1 _622_ (.CLK(clknet_3_4__leaf_clk),
    .D(_060_),
    .RESET_B(net50),
    .Q(\txtop.serializer.ptr[3] ));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_clk (.A(clknet_0_clk),
    .X(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_clk (.A(clknet_0_clk),
    .X(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_clk (.A(clknet_0_clk),
    .X(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_clk (.A(clknet_0_clk),
    .X(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_clk (.A(clknet_0_clk),
    .X(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_clk (.A(clknet_0_clk),
    .X(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_clk (.A(clknet_0_clk),
    .X(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_clk (.A(clknet_0_clk),
    .X(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload0 (.A(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkinv_4 clkload1 (.A(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload2 (.A(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkinv_4 clkload3 (.A(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload4 (.A(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload5 (.A(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload6 (.A(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__buf_2 fanout45 (.A(net46),
    .X(net45));
 sky130_fd_sc_hd__buf_2 fanout46 (.A(net49),
    .X(net46));
 sky130_fd_sc_hd__buf_2 fanout47 (.A(net49),
    .X(net47));
 sky130_fd_sc_hd__clkbuf_2 fanout48 (.A(net49),
    .X(net48));
 sky130_fd_sc_hd__clkbuf_2 fanout49 (.A(net15),
    .X(net49));
 sky130_fd_sc_hd__buf_2 fanout50 (.A(net52),
    .X(net50));
 sky130_fd_sc_hd__buf_2 fanout51 (.A(net52),
    .X(net51));
 sky130_fd_sc_hd__clkbuf_2 fanout52 (.A(net56),
    .X(net52));
 sky130_fd_sc_hd__buf_2 fanout53 (.A(net56),
    .X(net53));
 sky130_fd_sc_hd__clkbuf_2 fanout54 (.A(net56),
    .X(net54));
 sky130_fd_sc_hd__buf_2 fanout55 (.A(net56),
    .X(net55));
 sky130_fd_sc_hd__buf_1 fanout56 (.A(net15),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\rx_synchronizer.sync_stage1 ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\txtop.serializer.memory[5] ),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(_036_),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\txtop.fsm_tx.BAUD_COUNTER[3] ),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\rxtop.pCheck.memory[0] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(_049_),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\rxtop.pCheck.memory[2] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(_051_),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(\rxtop.pCheck.memory[5] ),
    .X(net73));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(_054_),
    .X(net74));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\rxtop.pCheck.memory[4] ),
    .X(net75));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\txtop.serializer.memory[7] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(_053_),
    .X(net76));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\rxtop.pCheck.memory[6] ),
    .X(net77));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(_055_),
    .X(net78));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\rxtop.pCheck.memory[1] ),
    .X(net79));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(_050_),
    .X(net80));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(net31),
    .X(net81));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(_017_),
    .X(net82));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\BRG.counter[0] ),
    .X(net83));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\rxtop.pCheck.memory[7] ),
    .X(net84));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(_056_),
    .X(net85));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(_038_),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\rxtop.pCheck.memory[3] ),
    .X(net86));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(_052_),
    .X(net87));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(net34),
    .X(net88));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(_019_),
    .X(net89));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\txtop.fsm_tx.BAUD_COUNTER[1] ),
    .X(net90));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(\rxtop.deserializer.ptr[2] ),
    .X(net91));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\txtop.serializer.ptr[3] ),
    .X(net92));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(_265_),
    .X(net93));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(net37),
    .X(net94));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(_022_),
    .X(net95));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(net28),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold40 (.A(net38),
    .X(net96));
 sky130_fd_sc_hd__dlygate4sd3_1 hold41 (.A(net35),
    .X(net97));
 sky130_fd_sc_hd__dlygate4sd3_1 hold42 (.A(net36),
    .X(net98));
 sky130_fd_sc_hd__dlygate4sd3_1 hold43 (.A(net32),
    .X(net99));
 sky130_fd_sc_hd__dlygate4sd3_1 hold44 (.A(_018_),
    .X(net100));
 sky130_fd_sc_hd__dlygate4sd3_1 hold45 (.A(\rxtop.fsm_rx.BAUD_COUNTER[0] ),
    .X(net101));
 sky130_fd_sc_hd__dlygate4sd3_1 hold46 (.A(\rxtop.deserializer.ptr[1] ),
    .X(net102));
 sky130_fd_sc_hd__dlygate4sd3_1 hold47 (.A(\txtop.data_mux_wire ),
    .X(net103));
 sky130_fd_sc_hd__dlygate4sd3_1 hold48 (.A(\txtop.serializer.ptr[2] ),
    .X(net104));
 sky130_fd_sc_hd__dlygate4sd3_1 hold49 (.A(\txtop.serializer.ptr[1] ),
    .X(net105));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\txtop.serializer.memory[6] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold50 (.A(\txtop.serializer.memory[2] ),
    .X(net106));
 sky130_fd_sc_hd__dlygate4sd3_1 hold51 (.A(\txtop.serializer.memory[3] ),
    .X(net107));
 sky130_fd_sc_hd__dlygate4sd3_1 hold52 (.A(\txtop.fsm_tx.BAUD_COUNTER[0] ),
    .X(net108));
 sky130_fd_sc_hd__dlygate4sd3_1 hold53 (.A(\txtop.fsm_tx.BAUD_COUNTER_Next[0] ),
    .X(net109));
 sky130_fd_sc_hd__dlygate4sd3_1 hold54 (.A(\txtop.fsm_tx.Current[0] ),
    .X(net110));
 sky130_fd_sc_hd__dlygate4sd3_1 hold55 (.A(\txtop.serializer.memory[1] ),
    .X(net111));
 sky130_fd_sc_hd__dlygate4sd3_1 hold56 (.A(\txtop.fsm_tx.Current[1] ),
    .X(net112));
 sky130_fd_sc_hd__dlygate4sd3_1 hold57 (.A(\txtop.pCalc.memory[4] ),
    .X(net113));
 sky130_fd_sc_hd__dlygate4sd3_1 hold58 (.A(\rxtop.fsm_rx.BAUD_COUNTER[4] ),
    .X(net114));
 sky130_fd_sc_hd__dlygate4sd3_1 hold59 (.A(\BRG.counter[7] ),
    .X(net115));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(_037_),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold60 (.A(\rxtop.deserializer.ptr[3] ),
    .X(net116));
 sky130_fd_sc_hd__dlygate4sd3_1 hold61 (.A(\txtop.pCalc.memory[3] ),
    .X(net117));
 sky130_fd_sc_hd__dlygate4sd3_1 hold62 (.A(\txtop.pCalc.memory[5] ),
    .X(net118));
 sky130_fd_sc_hd__dlygate4sd3_1 hold63 (.A(\BRG.counter[11] ),
    .X(net119));
 sky130_fd_sc_hd__dlygate4sd3_1 hold64 (.A(\txtop.serializer.ptr[2] ),
    .X(net120));
 sky130_fd_sc_hd__dlygate4sd3_1 hold65 (.A(\txtop.serializer.ptr[2] ),
    .X(net121));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\txtop.serializer.memory[0] ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(_032_),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(net27),
    .X(net65));
 sky130_fd_sc_hd__buf_1 input1 (.A(div[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input10 (.A(div[7]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(div[8]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(div[9]),
    .X(net12));
 sky130_fd_sc_hd__dlymetal6s2s_1 input13 (.A(parityEnable),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(parityType),
    .X(net14));
 sky130_fd_sc_hd__buf_1 input15 (.A(rst),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(rx),
    .X(net16));
 sky130_fd_sc_hd__buf_2 input17 (.A(tx_data_valid),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(tx_in[0]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input19 (.A(tx_in[1]),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(div[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input20 (.A(tx_in[2]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 input21 (.A(tx_in[3]),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_1 input22 (.A(tx_in[4]),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_1 input23 (.A(tx_in[5]),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_1 input24 (.A(tx_in[6]),
    .X(net24));
 sky130_fd_sc_hd__buf_1 input25 (.A(tx_in[7]),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(div[11]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(div[1]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(div[2]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(div[3]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(div[4]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(div[5]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(div[6]),
    .X(net9));
 sky130_fd_sc_hd__buf_1 max_cap42 (.A(_069_),
    .X(net42));
 sky130_fd_sc_hd__buf_1 max_cap43 (.A(_063_),
    .X(net43));
 sky130_fd_sc_hd__buf_2 output26 (.A(net26),
    .X(framingError));
 sky130_fd_sc_hd__buf_2 output27 (.A(net27),
    .X(parityError));
 sky130_fd_sc_hd__buf_2 output28 (.A(net28),
    .X(parityErrorValid));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(rx_busy));
 sky130_fd_sc_hd__buf_2 output30 (.A(net30),
    .X(rx_done));
 sky130_fd_sc_hd__clkbuf_4 output31 (.A(net31),
    .X(rx_out[0]));
 sky130_fd_sc_hd__clkbuf_4 output32 (.A(net32),
    .X(rx_out[1]));
 sky130_fd_sc_hd__clkbuf_4 output33 (.A(net33),
    .X(rx_out[2]));
 sky130_fd_sc_hd__buf_2 output34 (.A(net34),
    .X(rx_out[3]));
 sky130_fd_sc_hd__buf_2 output35 (.A(net35),
    .X(rx_out[4]));
 sky130_fd_sc_hd__buf_2 output36 (.A(net36),
    .X(rx_out[5]));
 sky130_fd_sc_hd__buf_2 output37 (.A(net37),
    .X(rx_out[6]));
 sky130_fd_sc_hd__buf_2 output38 (.A(net38),
    .X(rx_out[7]));
 sky130_fd_sc_hd__buf_2 output39 (.A(net39),
    .X(tx));
 sky130_fd_sc_hd__buf_2 output40 (.A(net40),
    .X(tx_busy));
 sky130_fd_sc_hd__buf_2 output41 (.A(net41),
    .X(tx_done));
 sky130_fd_sc_hd__clkbuf_1 wire44 (.A(_135_),
    .X(net44));
endmodule

