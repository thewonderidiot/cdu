`timescale 1ns / 1ps
`default_nettype none

module error_angle(
    input wire rst_n,
    input wire FAZ1HI,
    input wire FAZ2HI,
    input wire FAZ2HI_n,
    input wire FAZ4CA,
    input wire _REF1H,
    input wire ___IHI,
    input wire ___I2H,
    input wire ___I3H,
    input wire _800LHI,
    input wire _INHRC,
    input wire _AO,
    input wire _TLC1H,
    input wire _TLF1H,
    input wire _TLF2H,
    input wire _ADHI,

    input wire _DEL0H,

    output wire _UPLVL,
    output wire _DNLVL,
    output wire _mPGH,
    output wire _pPGH,
    output wire _PIHI,

    output wire _TPF1,
    output wire _TPF2,
    output wire _TPC1,
    output wire _TPS,
    output wire _TPAD,
    output wire _TPUG,
    output wire _TPPI
);

/*-----------------------------------------------------------------------------.
| Internal wires                                                               |
'-----------------------------------------------------------------------------*/
wire n6_001;
wire n6_002;
wire n6_003;
wire n6_004;
wire n6_005;
wire n6_006;
wire n6_007;
wire n6_008;
wire n6_009;
wire n6_010;
wire n6_022;
wire n6_023;
wire n6_027;
wire n6_028;
wire n6_029;
wire n6_030;
wire n6_031;
wire n6_032;
wire n6_033;
wire n6_034;
wire n6_035;
wire n6_037;
wire n6_038;
wire n6_039;
wire n6_040;
wire n6_041;
wire n6_042;
wire n6_043;
wire n6_044;
wire n6_045;
wire n6_046;
wire n6_047;
wire n6_048;
wire n6_049;
wire n6_050;
wire n6_051;
wire n6_052;
wire n6_053;
wire n6_054;
wire n6_056;
wire n6_057;
wire n6_058;
wire n6_059;
wire n6_060;
wire n6_061;

wire n6_064;
wire n6_065;
wire n6_066;
wire n6_067;
wire n6_068;
wire n6_069;
wire n6_070;
wire n6_071;

reg n6_221 = 0; // FIXME: Requires full error counter

/*-----------------------------------------------------------------------------.
| Gates                                                                        |
'-----------------------------------------------------------------------------*/
nor1      g6_001(rst_n, _REF1H, n6_001);
nor1 #(1) g6_002(rst_n, n6_001, n6_002);
nor2      g6_003(rst_n, n6_001, n6_035, n6_003);
nor2 #(1) g6_004(rst_n, n6_035, n6_002, n6_004);
nor2 #(1) g6_005(rst_n, n6_003, n6_006, n6_005);
nor2      g6_006(rst_n, n6_005, n6_004, n6_006);
nor2 #(1) g6_007(rst_n, n6_005, FAZ2HI, n6_007);
nor2      g6_008(rst_n, FAZ2HI, n6_006, n6_008);
nor2 #(1) g6_009(rst_n, n6_007, n6_010, n6_009);
nor3      g6_010(rst_n, n6_009, n6_008, _AO, n6_010);
nor1      g6_011(rst_n, n6_010, _UPLVL);
nor1      g6_012(rst_n, n6_009, _DNLVL);
//nor1    g6_013(rst_n, n6_010, _UPLVL);
//nor1    g6_014(rst_n, n6_009, _DNLVL);
//nor1    g6_015(rst_n, n6_010, _UPLVL);
//nor1    g6_016(rst_n, n6_009, _DNLVL);
//nor1    g6_017(rst_n, n6_010, _UPLVL);
//nor1    g6_018(rst_n, n6_009, _DNLVL);
nor2      g6_019(rst_n, _DNLVL, _DEL0H, _mPGH);
nor2      g6_020(rst_n, _UPLVL, _DEL0H, _pPGH);
nor1      g6_021(rst_n, _DNLVL, _TPUG);
nor1      g6_022(rst_n, _TLF1H, n6_022);
nor1      g6_023(rst_n, _TLC1H, n6_023);
nor1      g6_024(rst_n, _TLF2H, _TPF2);
nor1      g6_025(rst_n, _TLF1H, _TPF1);
nor1      g6_026(rst_n, _TLC1H, _TPC1);
nor1 #(1) g6_027(rst_n, ___IHI, n6_027);
nor1      g6_028(rst_n, n6_023, n6_028);
nor3      g6_029(rst_n, n6_028, n6_070, n6_027, n6_029);
nor3      g6_030(rst_n, n6_027, n6_070, n6_023, n6_030);
nor2 #(1) g6_031(rst_n, n6_029, n6_032, n6_031);
nor2      g6_032(rst_n, n6_031, n6_030, n6_032);
nor3      g6_033(rst_n, n6_022, n6_031, n6_027, n6_033);
nor3      g6_034(rst_n, n6_027, n6_032, n6_023, n6_034);
nor2 #(1) g6_035(rst_n, n6_033, n6_034, n6_035);
nor1      g6_036(rst_n, n6_035, _TPS);
nor2      g6_037(rst_n, n6_047, n6_038, n6_037);
nor2 #(1) g6_038(rst_n, n6_037, FAZ2HI_n, n6_038);
nor1      g6_039(rst_n, n6_035, n6_039);
nor2      g6_040(rst_n, _TLF2H, n6_031, n6_040);
nor2      g6_041(rst_n, FAZ1HI, n6_037, n6_041);
nor2 #(1) g6_042(rst_n, n6_039, n6_043, n6_042);
nor2      g6_043(rst_n, n6_042, n6_067, n6_043);
nor2      g6_044(rst_n, n6_040, n6_035, n6_044);
nor2      g6_045(rst_n, n6_041, n6_046, n6_045);
nor2 #(1) g6_046(rst_n, n6_045, n6_048, n6_046);
nor2      g6_047(rst_n, _800LHI, n6_046, n6_047);
nor2      g6_048(rst_n, n6_042, ___I2H, n6_048);
nor1      g6_049(rst_n, n6_047, n6_049);
nor1      g6_050(rst_n, n6_048, n6_050);
nor2 #(1) g6_051(rst_n, n6_044, n6_052, n6_051);
nor2      g6_052(rst_n, n6_051, n6_067, n6_052);
nor3      g6_053(rst_n, n6_050, n6_051, _AO, n6_053);
nor3      g6_054(rst_n, _AO, n6_052, n6_050, n6_054);

nor3 #(1) g6_056(rst_n, _AO, n6_053, n6_057, n6_056);
nor2      g6_057(rst_n, n6_056, n6_054, n6_057);
nor2      g6_058(rst_n, FAZ4CA, n6_056, n6_058);
nor2      g6_059(rst_n, n6_057, n6_049, n6_059);
nor2      g6_060(rst_n, n6_058, n6_059, n6_060);
nor3      g6_061(rst_n, _INHRC, n6_060, n6_221, n6_061);
nor1      g6_062(rst_n, n6_061, _PIHI);
nor1      g6_063(rst_n, n6_061, _TPPI);
nor2      g6_064(rst_n, ___I2H, n6_071, n6_064);
nor2      g6_065(rst_n, n6_064, n6_066, n6_065);
nor2 #(1) g6_066(rst_n, n6_065, n6_030, n6_066);
nor1      g6_067(rst_n, ___I3H, n6_067);
nor2      g6_068(rst_n, n6_065, ___I3H, n6_068);
nor2      g6_069(rst_n, ___I3H, n6_066, n6_069);
nor2      g6_070(rst_n, n6_068, n6_071, n6_070);
nor2 #(1) g6_071(rst_n, n6_070, n6_069, n6_071);

nor1      g6_226(rst_n, _ADHI, _TPAD);

endmodule
`default_nettype wire
