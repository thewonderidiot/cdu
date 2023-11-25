`timescale 1ns / 1ps
`default_nettype none

module error_angle(
    input wire clk,
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
nor3 #(1) g6_001(n6_001, _REF1H, 1'b0, 1'b0, clk, rst_n);
nor3      g6_002(n6_002, n6_001, 1'b0, 1'b0, clk, rst_n);
nor3      g6_003(n6_003, n6_001, n6_035, 1'b0, clk, rst_n);
nor3      g6_004(n6_004, n6_035, n6_002, 1'b0, clk, rst_n);
nor3 #(1) g6_005(n6_005, n6_003, n6_006, 1'b0, clk, rst_n);
nor3      g6_006(n6_006, n6_005, n6_004, 1'b0, clk, rst_n);
nor3      g6_007(n6_007, n6_005, FAZ2HI, 1'b0, clk, rst_n);
nor3      g6_008(n6_008, FAZ2HI, n6_006, 1'b0, clk, rst_n);
nor3 #(1) g6_009(n6_009, n6_007, n6_010, 1'b0, clk, rst_n);
nor3      g6_010(n6_010, n6_009, n6_008, _AO, clk, rst_n);
nor3 #(1) g6_011(_UPLVL, n6_010, 1'b0, 1'b0, clk, rst_n);
nor3      g6_012(_DNLVL, n6_009, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_013(_UPLVL, n6_010, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_014(_DNLVL, n6_009, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_015(_UPLVL, n6_010, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_016(_DNLVL, n6_009, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_017(_UPLVL, n6_010, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_018(_DNLVL, n6_009, 1'b0, 1'b0, clk, rst_n);
nor3      g6_019(_mPGH, _DNLVL, _DEL0H, 1'b0, clk, rst_n);
nor3      g6_020(_pPGH, _UPLVL, _DEL0H, 1'b0, clk, rst_n);
nor3 #(1) g6_021(_TPUG, _DNLVL, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_022(n6_022, _TLF1H, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_023(n6_023, _TLC1H, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_024(_TPF2, _TLF2H, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_025(_TPF1, _TLF1H, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_026(_TPC1, _TLC1H, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_027(n6_027, ___IHI, 1'b0, 1'b0, clk, rst_n);
nor3      g6_028(n6_028, n6_023, 1'b0, 1'b0, clk, rst_n);
nor3      g6_029(n6_029, n6_028, n6_070, n6_027, clk, rst_n);
nor3      g6_030(n6_030, n6_027, n6_070, n6_023, clk, rst_n);
nor3 #(1) g6_031(n6_031, n6_029, n6_032, 1'b0, clk, rst_n);
nor3      g6_032(n6_032, n6_031, n6_030, 1'b0, clk, rst_n);
nor3      g6_033(n6_033, n6_022, n6_031, n6_027, clk, rst_n);
nor3      g6_034(n6_034, n6_027, n6_032, n6_023, clk, rst_n);
nor3 #(1) g6_035(n6_035, n6_033, n6_034, 1'b0, clk, rst_n);
nor3      g6_036(_TPS, n6_035, 1'b0, 1'b0, clk, rst_n);
nor3      g6_037(n6_037, n6_047, n6_038, 1'b0, clk, rst_n);
nor3 #(1) g6_038(n6_038, n6_037, FAZ2HI_n, 1'b0, clk, rst_n);
nor3      g6_039(n6_039, n6_035, 1'b0, 1'b0, clk, rst_n);
nor3      g6_040(n6_040, _TLF2H, n6_031, 1'b0, clk, rst_n);
nor3      g6_041(n6_041, FAZ1HI, n6_037, 1'b0, clk, rst_n);
nor3 #(1) g6_042(n6_042, n6_039, n6_043, 1'b0, clk, rst_n);
nor3      g6_043(n6_043, n6_042, n6_067, 1'b0, clk, rst_n);
nor3      g6_044(n6_044, n6_040, n6_035, 1'b0, clk, rst_n);
nor3      g6_045(n6_045, n6_041, n6_046, 1'b0, clk, rst_n);
nor3 #(1) g6_046(n6_046, n6_045, n6_048, 1'b0, clk, rst_n);
nor3      g6_047(n6_047, _800LHI, n6_046, 1'b0, clk, rst_n);
nor3      g6_048(n6_048, n6_042, ___I2H, 1'b0, clk, rst_n);
nor3 #(1) g6_049(n6_049, n6_047, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_050(n6_050, n6_048, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_051(n6_051, n6_044, n6_052, 1'b0, clk, rst_n);
nor3      g6_052(n6_052, n6_051, n6_067, 1'b0, clk, rst_n);
nor3      g6_053(n6_053, n6_050, n6_051, _AO, clk, rst_n);
nor3      g6_054(n6_054, _AO, n6_052, n6_050, clk, rst_n);

nor3 #(1) g6_056(n6_056, _AO, n6_053, n6_057, clk, rst_n);
nor3      g6_057(n6_057, n6_056, n6_054, 1'b0, clk, rst_n);
nor3      g6_058(n6_058, FAZ4CA, n6_056, 1'b0, clk, rst_n);
nor3      g6_059(n6_059, n6_057, n6_049, 1'b0, clk, rst_n);
nor3 #(1) g6_060(n6_060, n6_058, n6_059, 1'b0, clk, rst_n);
nor3      g6_061(n6_061, _INHRC, n6_060, n6_221, clk, rst_n);
nor3 #(1) g6_062(_PIHI, n6_061, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_063(_TPPI, n6_061, 1'b0, 1'b0, clk, rst_n);
nor3      g6_064(n6_064, ___I2H, n6_071, 1'b0, clk, rst_n);
nor3      g6_065(n6_065, n6_064, n6_066, 1'b0, clk, rst_n);
nor3 #(1) g6_066(n6_066, n6_065, n6_030, 1'b0, clk, rst_n);
nor3      g6_067(n6_067, ___I3H, 1'b0, 1'b0, clk, rst_n);
nor3      g6_068(n6_068, n6_065, ___I3H, 1'b0, clk, rst_n);
nor3      g6_069(n6_069, ___I3H, n6_066, 1'b0, clk, rst_n);
nor3      g6_070(n6_070, n6_068, n6_071, 1'b0, clk, rst_n);
nor3 #(1) g6_071(n6_071, n6_070, n6_069, 1'b0, clk, rst_n);

// Bit 0
nor3      g6_080(n6_080, n6_087, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_081(n6_081, FAZ2HI_n, n6_082, 1'b0, clk, rst_n);
nor3      g6_082(n6_082, n6_081, n6_080, 1'b0, clk, rst_n);
nor3      g6_083(n6_083, _JMPDN, n6_081, _JMPPE, clk, rst_n);
nor3      g6_084(n6_084, _JMPPE, n6_081, 1'b0, clk, rst_n);
nor3      g6_085(n6_085, _JMPPE, n6_082, 1'b0, clk, rst_n);
nor3      g6_086(n6_086, _JMPPE, n6_082, _JMPUP, clk, rst_n);
nor3 #(1) g6_087(n6_087, n6_084, n6_088, 1'b0, clk, rst_n);
nor3      g6_088(n6_088, n6_087, n6_085, _EEC, clk, rst_n);
nor3 #(1) g6_089(n6_089, n6_083, n6_086, 1'b0, clk, rst_n);

// Bit 1
nor3      g6_090(n6_090, n6_097, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_091(n6_091, FAZ2HI_n, n6_092, 1'b0, clk, rst_n);
nor3      g6_092(n6_092, n6_091, n6_090, 1'b0, clk, rst_n);
nor3      g6_093(n6_093, _JMPDN, n6_091, n6_089, clk, rst_n);
nor3      g6_094(n6_094, n6_089, n6_091, 1'b0, clk, rst_n);
nor3      g6_095(n6_095, n6_089, n6_092, 1'b0, clk, rst_n);
nor3      g6_096(n6_096, n6_089, n6_092, _JMPUP, clk, rst_n);
nor3 #(1) g6_097(n6_097, n6_094, n6_098, 1'b0, clk, rst_n);
nor3      g6_098(n6_098, n6_097, n6_095, _EEC, clk, rst_n);
nor3 #(1) g6_099(n6_099, n6_093, n6_096, 1'b0, clk, rst_n);

// Bit 2
nor3      g6_100(n6_100, n6_107, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_101(n6_101, FAZ2HI_n, n6_102, 1'b0, clk, rst_n);
nor3      g6_102(n6_102, n6_101, n6_100, 1'b0, clk, rst_n);
nor3      g6_103(n6_103, _JMPDN, n6_101, n6_099, clk, rst_n);
nor3      g6_104(n6_104, n6_099, n6_101, 1'b0, clk, rst_n);
nor3      g6_105(n6_105, n6_099, n6_102, 1'b0, clk, rst_n);
nor3      g6_106(n6_106, n6_099, n6_102, _JMPUP, clk, rst_n);
nor3 #(1) g6_107(n6_107, n6_104, n6_108, 1'b0, clk, rst_n);
nor3      g6_108(n6_108, n6_107, n6_105, _EEC, clk, rst_n);
nor3 #(1) g6_109(n6_109, n6_103, n6_106, 1'b0, clk, rst_n);

// Bit 3
nor3      g6_110(n6_110, n6_117, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_111(n6_111, FAZ2HI_n, n6_112, 1'b0, clk, rst_n);
nor3      g6_112(n6_112, n6_111, n6_110, 1'b0, clk, rst_n);
nor3      g6_113(n6_113, _JMPDN, n6_111, n6_109, clk, rst_n);
nor3      g6_114(n6_114, n6_109, n6_111, 1'b0, clk, rst_n);
nor3      g6_115(n6_115, n6_109, n6_112, 1'b0, clk, rst_n);
nor3      g6_116(n6_116, n6_109, n6_112, _JMPUP, clk, rst_n);
nor3 #(1) g6_117(n6_117, n6_114, n6_118, 1'b0, clk, rst_n);
nor3      g6_118(n6_118, n6_117, n6_115, _EEC, clk, rst_n);
nor3 #(1) g6_119(n6_119, n6_113, n6_116, 1'b0, clk, rst_n);

// Bit 4
nor3      g6_120(n6_120, n6_127, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_121(n6_121, FAZ2HI_n, n6_122, 1'b0, clk, rst_n);
nor3      g6_122(n6_122, n6_121, n6_120, 1'b0, clk, rst_n);
nor3      g6_123(n6_123, _JMPDN, n6_121, n6_119, clk, rst_n);
nor3      g6_124(n6_124, n6_119, n6_121, 1'b0, clk, rst_n);
nor3      g6_125(n6_125, n6_119, n6_122, 1'b0, clk, rst_n);
nor3      g6_126(n6_126, n6_119, n6_122, _JMPUP, clk, rst_n);
nor3 #(1) g6_127(n6_127, n6_124, n6_128, 1'b0, clk, rst_n);
nor3      g6_128(n6_128, n6_127, n6_125, _EEC, clk, rst_n);
nor3 #(1) g6_129(n6_129, n6_123, n6_126, 1'b0, clk, rst_n);

// Bit 5
nor3      g6_130(n6_130, n6_137, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_131(n6_131, FAZ2HI_n, n6_132, 1'b0, clk, rst_n);
nor3      g6_132(n6_132, n6_131, n6_130, 1'b0, clk, rst_n);
nor3      g6_133(n6_133, _JMPDN, n6_131, n6_129, clk, rst_n);
nor3      g6_134(n6_134, n6_129, n6_131, 1'b0, clk, rst_n);
nor3      g6_135(n6_135, n6_129, n6_132, 1'b0, clk, rst_n);
nor3      g6_136(n6_136, n6_129, n6_132, _JMPUP, clk, rst_n);
nor3 #(1) g6_137(n6_137, n6_134, n6_138, 1'b0, clk, rst_n);
nor3      g6_138(n6_138, n6_137, n6_135, _EEC, clk, rst_n);
nor3 #(1) g6_139(n6_139, n6_133, n6_136, 1'b0, clk, rst_n);

// Bit 6
nor3      g6_140(n6_140, n6_147, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_141(n6_141, FAZ2HI_n, n6_142, 1'b0, clk, rst_n);
nor3      g6_142(n6_142, n6_141, n6_140, 1'b0, clk, rst_n);
nor3      g6_143(n6_143, _JMPDN, n6_141, n6_139, clk, rst_n);
nor3      g6_144(n6_144, n6_139, n6_141, 1'b0, clk, rst_n);
nor3      g6_145(n6_145, n6_139, n6_142, 1'b0, clk, rst_n);
nor3      g6_146(n6_146, n6_139, n6_142, _JMPUP, clk, rst_n);
nor3 #(1) g6_147(n6_147, n6_144, n6_148, 1'b0, clk, rst_n);
nor3      g6_148(n6_148, n6_147, n6_145, _EEC, clk, rst_n);
nor3 #(1) g6_149(n6_149, n6_143, n6_146, 1'b0, clk, rst_n);

// Bit 7
nor3      g6_150(n6_150, n6_157, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_151(n6_151, FAZ2HI_n, n6_152, 1'b0, clk, rst_n);
nor3      g6_152(n6_152, n6_151, n6_150, 1'b0, clk, rst_n);
nor3      g6_153(n6_153, _JMPDN, n6_151, n6_149, clk, rst_n);
nor3      g6_154(n6_154, n6_149, n6_151, 1'b0, clk, rst_n);
nor3      g6_155(n6_155, n6_149, n6_152, 1'b0, clk, rst_n);
nor3      g6_156(n6_156, n6_149, n6_152, _JMPUP, clk, rst_n);
nor3 #(1) g6_157(n6_157, n6_154, n6_158, 1'b0, clk, rst_n);
nor3      g6_158(n6_158, n6_157, n6_155, _EEC, clk, rst_n);
nor3 #(1) g6_159(n6_159, n6_153, n6_156, 1'b0, clk, rst_n);

// Bit 8
nor3      g6_160(n6_160, n6_165, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g6_161(n6_161, FAZ2HI_n, n6_162, 1'b0, clk, rst_n);
nor3      g6_162(n6_162, n6_161, n6_160, 1'b0, clk, rst_n);
nor3      g6_163(n6_163, n6_161, n6_159, 1'b0, clk, rst_n);
nor3      g6_164(n6_164, n6_162, n6_159, 1'b0, clk, rst_n);
nor3 #(1) g6_165(n6_165, n6_163, n6_166, 1'b0, clk, rst_n);
nor3      g6_166(n6_166, n6_165, n6_164, _EEC, clk, rst_n);

nor3 #(1) g6_167(_DD8, n6_166, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_168(_DD0, n6_088, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_169(_DD1, n6_098, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_170(_DD2, n6_108, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_171(_DD3, n6_118, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_172(_DD4, n6_128, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_173(_DD5, n6_138, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_174(_DD6, n6_148, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_175(_DD7, n6_158, 1'b0, 1'b0, clk, rst_n);

nor3 #(1) g6_176(n6_176, n6_088, n6_098, n6_108, clk, rst_n);
nor3 #(1) g6_177(n6_177, n6_118, n6_128, n6_138, clk, rst_n);
nor3 #(1) g6_178(n6_178, n6_148, n6_158, n6_166, clk, rst_n);
assign _JMPZD = n6_176 & n6_177 & n6_178;
nor3      g6_179(_JMPSD, n6_157, n6_165, _JMPUP, clk, rst_n);

nor3      g6_180(n6_180, FAZ1HI, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_181(n6_181, _pPCH, _mPCH, n6_182, clk, rst_n);
nor3      g6_182(n6_182, n6_181, n6_187, 1'b0, clk, rst_n);
nor3      g6_183(n6_183, FAZ3HI, 1'b0, 1'b0, clk, rst_n);
nor3      g6_184(n6_184, n6_181, FAZ1HI, 1'b0, clk, rst_n);
nor3      g6_185(n6_185, n6_183, n6_186, 1'b0, clk, rst_n);
nor3 #(1) g6_186(n6_186, n6_185, n6_184, 1'b0, clk, rst_n);
nor3      g6_187(n6_187, n6_186, FAZ2HI, 1'b0, clk, rst_n);
nor3 #(1) g6_188(n6_188, n6_187, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_189(n6_189, _pPCH, n6_190, 1'b0, clk, rst_n);
nor3      g6_190(n6_190, n6_189, _mPCH, 1'b0, clk, rst_n);
nor3      g6_191(n6_191, n6_189, n6_188, 1'b0, clk, rst_n);
nor3      g6_192(n6_192, n6_188, n6_190, 1'b0, clk, rst_n);
nor3 #(1) g6_193(n6_193, n6_008, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_194(n6_194, n6_007, 1'b0, 1'b0, clk, rst_n);
nor3      g6_195(n6_195, n6_185, n6_193, _CA, clk, rst_n);
nor3      g6_196(n6_196, n6_185, n6_194, _CA, clk, rst_n);
nor3 #(1) g6_197(n6_197, n6_191, n6_195, 1'b0, clk, rst_n);
nor3 #(1) g6_198(n6_198, n6_192, n6_196, 1'b0, clk, rst_n);
nor3      g6_199(n6_199, n6_197, n6_201, 1'b0, clk, rst_n);
nor3      g6_200(n6_200, n6_201, n6_198, 1'b0, clk, rst_n);
nor3      g6_201(n6_201, _JMPZD, 1'b0, 1'b0, clk, rst_n);
nor3      g6_202(_mDAPL, n6_204, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_203(_pDAPL, n6_205, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_204(n6_204, n6_199, n6_205, 1'b0, clk, rst_n);
nor3      g6_205(n6_205, n6_204, n6_200, 1'b0, clk, rst_n);
nor3      g6_206(n6_206, n6_197, n6_204, 1'b0, clk, rst_n);
nor3      g6_207(n6_207, n6_205, n6_198, 1'b0, clk, rst_n);
nor3      g6_208(n6_208, n6_204, n6_198, _JMPZD, clk, rst_n);
nor3      g6_209(n6_209, _JMPZD, n6_205, n6_197, clk, rst_n);
nor3      g6_210(n6_210, n6_206, n6_207, n6_211, clk, rst_n);
nor3 #(1) g6_211(n6_211, n6_210, n6_208, n6_209, clk, rst_n);
nor3 #(1) g6_212(_JMPDN, _JMPUP, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_213(_JMPDN, _JMPUP, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_214(_JMPDN, _JMPUP, 1'b0, 1'b0, clk, rst_n);
nor3      g6_215(_JMPUP, n6_211, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_216(_JMPUP, n6_211, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_217(_JMPUP, n6_211, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_218(n6_218, n6_187, n6_219, 1'b0, clk, rst_n);
nor3      g6_219(n6_219, n6_218, n6_180, _JMPSD, clk, rst_n);
nor3 #(1) g6_220(n6_220, n6_185, n6_219, 1'b0, clk, rst_n);
nor3      g6_221(n6_221, _CA, _JMPSD, n6_220, clk, rst_n);
nor3      g6_222(n6_222, FAZ4CA, n6_218, _EEC, clk, rst_n);
nor3      g6_223(n6_223, _EEC, 1'b0, 1'b0, clk, rst_n);
nor3      g6_224(n6_224, _DEL2H, _CA, _JMPSD, clk, rst_n);
assign n6_2234 = n6_223 & n6_224;
nor3 #(1) g6_225(_JMPPE, n6_222, n6_2234, 1'b0, clk, rst_n);
nor3 #(1) g6_226(_TPAD, _ADHI, 1'b0, 1'b0, clk, rst_n);

endmodule
`default_nettype wire

