`timescale 1ns / 1ps
`default_nettype none

module error_angle(
    input wire rst_n,
    input wire FAZ1HI,
    input wire FAZ2HI,
    input wire FAZ2HI_n,
    input wire FAZ3HI,
    input wire FAZ4CA,
    input wire _REF1H,
    input wire ___IHI,
    input wire ___I2H,
    input wire ___I3H,
    input wire _800LHI,
    input wire _INHRC,
    input wire _CA,
    input wire _EEC,
    input wire _mPCH,
    input wire _pPCH,
    input wire _AO,
    input wire _TLC1H,
    input wire _TLF1H,
    input wire _TLF2H,
    input wire _ADHI,

    input wire _DEL0H,
    input wire _DEL2H,

    output wire _UPLVL,
    output wire _DNLVL,
    output wire _mPGH,
    output wire _pPGH,
    output wire _PIHI,
    output wire _mDAPL,
    output wire _pDAPL,

    output wire _DD0,
    output wire _DD1,
    output wire _DD2,
    output wire _DD3,
    output wire _DD4,
    output wire _DD5,
    output wire _DD6,
    output wire _DD7,
    output wire _DD8,

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

wire n6_080;
wire n6_081;
wire n6_082;
wire n6_083;
wire n6_084;
wire n6_085;
wire n6_086;
wire n6_087;
wire n6_088;
wire n6_089;

wire n6_090;
wire n6_091;
wire n6_092;
wire n6_093;
wire n6_094;
wire n6_095;
wire n6_096;
wire n6_097;
wire n6_098;
wire n6_099;

wire n6_100;
wire n6_101;
wire n6_102;
wire n6_103;
wire n6_104;
wire n6_105;
wire n6_106;
wire n6_107;
wire n6_108;
wire n6_109;

wire n6_110;
wire n6_111;
wire n6_112;
wire n6_113;
wire n6_114;
wire n6_115;
wire n6_116;
wire n6_117;
wire n6_118;
wire n6_119;

wire n6_120;
wire n6_121;
wire n6_122;
wire n6_123;
wire n6_124;
wire n6_125;
wire n6_126;
wire n6_127;
wire n6_128;
wire n6_129;

wire n6_130;
wire n6_131;
wire n6_132;
wire n6_133;
wire n6_134;
wire n6_135;
wire n6_136;
wire n6_137;
wire n6_138;
wire n6_139;

wire n6_140;
wire n6_141;
wire n6_142;
wire n6_143;
wire n6_144;
wire n6_145;
wire n6_146;
wire n6_147;
wire n6_148;
wire n6_149;

wire n6_150;
wire n6_151;
wire n6_152;
wire n6_153;
wire n6_154;
wire n6_155;
wire n6_156;
wire n6_157;
wire n6_158;
wire n6_159;

wire n6_160;
wire n6_161;
wire n6_162;
wire n6_163;
wire n6_164;
wire n6_165;
wire n6_166;

wire n6_176;
wire n6_177;
wire n6_178;

wire n6_180;
wire n6_181;
wire n6_182;
wire n6_183;
wire n6_184;
wire n6_185;
wire n6_186;
wire n6_187;
wire n6_188;
wire n6_189;
wire n6_190;
wire n6_191;
wire n6_192;
wire n6_193;
wire n6_194;
wire n6_195;
wire n6_196;
wire n6_197;
wire n6_198;
wire n6_199;
wire n6_200;
wire n6_201;
wire n6_204;
wire n6_205;
wire n6_206;
wire n6_207;
wire n6_208;
wire n6_209;
wire n6_210;
wire n6_211;
wire n6_218;
wire n6_219;
wire n6_220;
wire n6_221;
wire n6_222;
wire n6_223;
wire n6_224;
wire n6_2234;

wire _JMPZD;
wire _JMPSD;
wire _JMPPE;
wire _JMPUP;
wire _JMPDN;

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

// Bit 0
nor2      g6_080(rst_n, n6_087, FAZ3HI, n6_080);
nor2 #(1) g6_081(rst_n, FAZ2HI_n, n6_082, n6_081);
nor2      g6_082(rst_n, n6_081, n6_080, n6_082);
nor3      g6_083(rst_n, _JMPDN, n6_081, _JMPPE, n6_083);
nor2      g6_084(rst_n, _JMPPE, n6_081, n6_084);
nor2      g6_085(rst_n, _JMPPE, n6_082, n6_085);
nor3      g6_086(rst_n, _JMPPE, n6_082, _JMPUP, n6_086);
nor2 #(1) g6_087(rst_n, n6_084, n6_088, n6_087);
nor3      g6_088(rst_n, n6_087, n6_085, _EEC, n6_088);
nor2      g6_089(rst_n, n6_083, n6_086, n6_089);

// Bit 1
nor2      g6_090(rst_n, n6_097, FAZ3HI, n6_090);
nor2 #(1) g6_091(rst_n, FAZ2HI_n, n6_092, n6_091);
nor2      g6_092(rst_n, n6_091, n6_090, n6_092);
nor3      g6_093(rst_n, _JMPDN, n6_091, n6_089, n6_093);
nor2      g6_094(rst_n, n6_089, n6_091, n6_094);
nor2      g6_095(rst_n, n6_089, n6_092, n6_095);
nor3      g6_096(rst_n, n6_089, n6_092, _JMPUP, n6_096);
nor2 #(1) g6_097(rst_n, n6_094, n6_098, n6_097);
nor3      g6_098(rst_n, n6_097, n6_095, _EEC, n6_098);
nor2      g6_099(rst_n, n6_093, n6_096, n6_099);

// Bit 2
nor2      g6_100(rst_n, n6_107, FAZ3HI, n6_100);
nor2 #(1) g6_101(rst_n, FAZ2HI_n, n6_102, n6_101);
nor2      g6_102(rst_n, n6_101, n6_100, n6_102);
nor3      g6_103(rst_n, _JMPDN, n6_101, n6_099, n6_103);
nor2      g6_104(rst_n, n6_099, n6_101, n6_104);
nor2      g6_105(rst_n, n6_099, n6_102, n6_105);
nor3      g6_106(rst_n, n6_099, n6_102, _JMPUP, n6_106);
nor2 #(1) g6_107(rst_n, n6_104, n6_108, n6_107);
nor3      g6_108(rst_n, n6_107, n6_105, _EEC, n6_108);
nor2      g6_109(rst_n, n6_103, n6_106, n6_109);

// Bit 3
nor2      g6_110(rst_n, n6_117, FAZ3HI, n6_110);
nor2 #(1) g6_111(rst_n, FAZ2HI_n, n6_112, n6_111);
nor2      g6_112(rst_n, n6_111, n6_110, n6_112);
nor3      g6_113(rst_n, _JMPDN, n6_111, n6_109, n6_113);
nor2      g6_114(rst_n, n6_109, n6_111, n6_114);
nor2      g6_115(rst_n, n6_109, n6_112, n6_115);
nor3      g6_116(rst_n, n6_109, n6_112, _JMPUP, n6_116);
nor2 #(1) g6_117(rst_n, n6_114, n6_118, n6_117);
nor3      g6_118(rst_n, n6_117, n6_115, _EEC, n6_118);
nor2      g6_119(rst_n, n6_113, n6_116, n6_119);

// Bit 4
nor2      g6_120(rst_n, n6_127, FAZ3HI, n6_120);
nor2 #(1) g6_121(rst_n, FAZ2HI_n, n6_122, n6_121);
nor2      g6_122(rst_n, n6_121, n6_120, n6_122);
nor3      g6_123(rst_n, _JMPDN, n6_121, n6_119, n6_123);
nor2      g6_124(rst_n, n6_119, n6_121, n6_124);
nor2      g6_125(rst_n, n6_119, n6_122, n6_125);
nor3      g6_126(rst_n, n6_119, n6_122, _JMPUP, n6_126);
nor2 #(1) g6_127(rst_n, n6_124, n6_128, n6_127);
nor3      g6_128(rst_n, n6_127, n6_125, _EEC, n6_128);
nor2      g6_129(rst_n, n6_123, n6_126, n6_129);

// Bit 5
nor2      g6_130(rst_n, n6_137, FAZ3HI, n6_130);
nor2 #(1) g6_131(rst_n, FAZ2HI_n, n6_132, n6_131);
nor2      g6_132(rst_n, n6_131, n6_130, n6_132);
nor3      g6_133(rst_n, _JMPDN, n6_131, n6_129, n6_133);
nor2      g6_134(rst_n, n6_129, n6_131, n6_134);
nor2      g6_135(rst_n, n6_129, n6_132, n6_135);
nor3      g6_136(rst_n, n6_129, n6_132, _JMPUP, n6_136);
nor2 #(1) g6_137(rst_n, n6_134, n6_138, n6_137);
nor3      g6_138(rst_n, n6_137, n6_135, _EEC, n6_138);
nor2      g6_139(rst_n, n6_133, n6_136, n6_139);

// Bit 6
nor2      g6_140(rst_n, n6_147, FAZ3HI, n6_140);
nor2 #(1) g6_141(rst_n, FAZ2HI_n, n6_142, n6_141);
nor2      g6_142(rst_n, n6_141, n6_140, n6_142);
nor3      g6_143(rst_n, _JMPDN, n6_141, n6_139, n6_143);
nor2      g6_144(rst_n, n6_139, n6_141, n6_144);
nor2      g6_145(rst_n, n6_139, n6_142, n6_145);
nor3      g6_146(rst_n, n6_139, n6_142, _JMPUP, n6_146);
nor2 #(1) g6_147(rst_n, n6_144, n6_148, n6_147);
nor3      g6_148(rst_n, n6_147, n6_145, _EEC, n6_148);
nor2      g6_149(rst_n, n6_143, n6_146, n6_149);

// Bit 7
nor2      g6_150(rst_n, n6_157, FAZ3HI, n6_150);
nor2 #(1) g6_151(rst_n, FAZ2HI_n, n6_152, n6_151);
nor2      g6_152(rst_n, n6_151, n6_150, n6_152);
nor3      g6_153(rst_n, _JMPDN, n6_151, n6_149, n6_153);
nor2      g6_154(rst_n, n6_149, n6_151, n6_154);
nor2      g6_155(rst_n, n6_149, n6_152, n6_155);
nor3      g6_156(rst_n, n6_149, n6_152, _JMPUP, n6_156);
nor2 #(1) g6_157(rst_n, n6_154, n6_158, n6_157);
nor3      g6_158(rst_n, n6_157, n6_155, _EEC, n6_158);
nor2      g6_159(rst_n, n6_153, n6_156, n6_159);

// Bit 8
nor2      g6_160(rst_n, n6_165, FAZ3HI, n6_160);
nor2 #(1) g6_161(rst_n, FAZ2HI_n, n6_162, n6_161);
nor2      g6_162(rst_n, n6_161, n6_160, n6_162);
nor2      g6_163(rst_n, n6_161, n6_159, n6_163);
nor2      g6_164(rst_n, n6_162, n6_159, n6_164);
nor2 #(1) g6_165(rst_n, n6_163, n6_166, n6_165);
nor3      g6_166(rst_n, n6_165, n6_164, _EEC, n6_166);

nor1      g6_167(rst_n, n6_166, _DD8);
nor1      g6_168(rst_n, n6_088, _DD0);
nor1      g6_169(rst_n, n6_098, _DD1);
nor1      g6_170(rst_n, n6_108, _DD2);
nor1      g6_171(rst_n, n6_118, _DD3);
nor1      g6_172(rst_n, n6_128, _DD4);
nor1      g6_173(rst_n, n6_138, _DD5);
nor1      g6_174(rst_n, n6_148, _DD6);
nor1      g6_175(rst_n, n6_158, _DD7);

nor3 #(1) g6_176(rst_n, n6_088, n6_098, n6_108, n6_176);
nor3 #(1) g6_177(rst_n, n6_118, n6_128, n6_138, n6_177);
nor3 #(1) g6_178(rst_n, n6_148, n6_158, n6_166, n6_178);
assign _JMPZD = n6_176 & n6_177 & n6_178;
nor3      g6_179(rst_n, n6_157, n6_165, _JMPUP, _JMPSD);

nor1      g6_180(rst_n, FAZ1HI, n6_180);
nor3 #(1) g6_181(rst_n, _pPCH, _mPCH, n6_182, n6_181);
nor2      g6_182(rst_n, n6_181, n6_187, n6_182);
nor1      g6_183(rst_n, FAZ3HI, n6_183);
nor2      g6_184(rst_n, n6_181, FAZ1HI, n6_184);
nor2      g6_185(rst_n, n6_183, n6_186, n6_185);
nor2 #(1) g6_186(rst_n, n6_185, n6_184, n6_186);
nor2      g6_187(rst_n, n6_186, FAZ2HI, n6_187);
nor1      g6_188(rst_n, n6_187, n6_188);
nor2 #(1) g6_189(rst_n, _pPCH, n6_190, n6_189);
nor2      g6_190(rst_n, n6_189, _mPCH, n6_190);
nor2      g6_191(rst_n, n6_189, n6_188, n6_191);
nor2      g6_192(rst_n, n6_188, n6_190, n6_192);
nor1      g6_193(rst_n, n6_008, n6_193);
nor1      g6_194(rst_n, n6_007, n6_194);
nor3      g6_195(rst_n, n6_185, n6_193, _CA, n6_195);
nor3      g6_196(rst_n, n6_185, n6_194, _CA, n6_196);
nor2      g6_197(rst_n, n6_191, n6_195, n6_197);
nor2      g6_198(rst_n, n6_192, n6_196, n6_198);
nor2      g6_199(rst_n, n6_197, n6_201, n6_199);
nor2      g6_200(rst_n, n6_201, n6_198, n6_200);
nor1      g6_201(rst_n, _JMPZD, n6_201);
nor1      g6_202(rst_n, n6_204, _mDAPL);
nor1      g6_203(rst_n, n6_205, _pDAPL);
nor2 #(1) g6_204(rst_n, n6_199, n6_205, n6_204);
nor2      g6_205(rst_n, n6_204, n6_200, n6_205);
nor2      g6_206(rst_n, n6_197, n6_204, n6_206);
nor2      g6_207(rst_n, n6_205, n6_198, n6_207);
nor3      g6_208(rst_n, n6_204, n6_198, _JMPZD, n6_208);
nor3      g6_209(rst_n, _JMPZD, n6_205, n6_197, n6_209);
nor3      g6_210(rst_n, n6_206, n6_207, n6_211, n6_210);
nor3 #(1) g6_211(rst_n, n6_210, n6_208, n6_209, n6_211);
nor1      g6_212(rst_n, _JMPUP, _JMPDN);
//nor1    g6_213(rst_n, _JMPUP, _JMPDN);
//nor1    g6_214(rst_n, _JMPUP, _JMPDN);
nor1      g6_215(rst_n, n6_211, _JMPUP);
//nor1    g6_216(rst_n, n6_211, _JMPUP);
//nor1    g6_217(rst_n, n6_211, _JMPUP);
nor2 #(1) g6_218(rst_n, n6_187, n6_219, n6_218);
nor3      g6_219(rst_n, n6_218, n6_180, _JMPSD, n6_219);
nor2      g6_220(rst_n, n6_185, n6_219, n6_220);
nor3      g6_221(rst_n, _CA, _JMPSD, n6_220, n6_221);
nor3      g6_222(rst_n, FAZ4CA, n6_218, _EEC, n6_222);
nor1      g6_223(rst_n, _EEC, n6_223);
nor3      g6_224(rst_n, _DEL2H, _CA, _JMPSD, n6_224);
assign n6_2234 = n6_223 & n6_224;
nor2      g6_225(rst_n, n6_222, n6_2234, _JMPPE);
nor1      g6_226(rst_n, _ADHI, _TPAD);

endmodule
`default_nettype wire
