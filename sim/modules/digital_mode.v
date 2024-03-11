`timescale 1ns / 1ps
`default_nettype none

module digital_mode(
    input wire clk,
    input wire rst_n,

    input wire _51KPHI,
    input wire FAZ2HI,
    input wire FAZ2HI_n,
    input wire FAZ3HI,
    input wire FAZ4HI,
    input wire UREF1H,
    input wire ISSIHI,
    input wire SREF1H,
    input wire SHIHI,

    output wire _51KPHI_n,
    output wire FAZ1HI,
    output wire FAZ2DR,
    output wire FAZ2DR_n,
    output wire FAZ3DR,
    output wire FAZ4DR,
    output wire FAZ4CA,
    output wire PS25KH,
    output wire ISSI2H,
    output wire ISSI3H,
    output wire SHI2H,
    output wire SHI3H,
    output wire TRNI2H,
    output wire TRNI3H,
    output wire _800LHI,

    input wire ISSCA,
    input wire ISSZ,
    input wire ISSEEC,

    output wire ISSZDR,
    output wire DMMCA,
    output wire UINHRC,

    input wire AADHI,
    input wire ARSETB,
    output wire AAO,
    output wire AQ,
    output wire ACA,
    output wire AEEC,

    input wire BADHI,
    input wire BRSETB,
    input wire BCDUZ,
    output wire BAO,
    output wire BQ,
    output wire BCA,
    output wire BEEC,

    input wire CADHI,
    input wire CRSETB,
    input wire CCDUZ,
    output wire CAO,
    output wire CQ,
    output wire CCA,
    output wire CEEC,

    input wire RRDAE,
    input wire RRZ,
    input wire TVCDCA,

    output wire RRZDR,
    output wire OINHRC,

    input wire DADHI,
    input wire DRSETB,
    input wire DCDUZ,
    output wire DAO,
    output wire DCA,
    output wire DEEC,

    input wire EADHI,
    input wire ERSETB,
    output wire EAO,
    output wire ECA,
    output wire EEEC
);

/*-----------------------------------------------------------------------------.
| Internal wires                                                               |
'-----------------------------------------------------------------------------*/
wire n66700;
wire n66701;
wire n66702;
wire n66703;
wire n66704;
wire n66705;
wire n66706;
wire n66707;
wire n66709;
wire n66710;
wire n66712;
wire n66713;
wire n66714;
wire n66715;
wire n66716;
wire n66717;
wire n66718;
wire n66719;
wire n66720;
wire n66721;
wire n66722;
wire n66723;
wire n66725;
wire n66727;
wire n66731;
wire n66735;
wire n66736;
wire n66737;
wire n66738;
wire n66739;
wire n66740;
wire n66741;
wire n66742;
wire n66743;
wire n66744;
wire n66745;
wire n66746;
wire n66747;
wire n66748;
wire n66749;
wire n66750;
wire n66751;
wire n66752;
wire n66753;
wire n66754;
wire n66755;
wire n66756;
wire n66757;
wire n66758;
wire n66759;
wire n66760;
wire n66761;
wire n66762;
wire n66763;
wire n66764;
wire n66765;
wire n66766;
wire n66767;
wire n66769;
wire n66770;
wire n66771;
wire n66772;
wire n66773;
wire n66777;
wire n66778;
wire n66779;
wire n66780;
wire n66781;
wire n66782;
wire n66783;
wire n66784;
wire n66785;
wire n66786;
wire n66787;
wire n66788;
wire n66789;
wire n66790;
wire n66791;
wire n66793;

wire n66801;
wire n66802;
wire n66804;
wire n66815;
wire n66816;
wire n66817;
wire n66818;
wire n66819;
wire n66820;
wire n66821;
wire n66822;
wire n66829;
wire n66830;
wire n66831;
wire n66832;
wire n66833;
wire n66834;
wire n66835;
wire n66838;
wire n66839;
wire n66840;
wire n66841;
wire n66842;
wire n66843;
wire n66844;
wire n66847;
wire n66848;
wire n66849;
wire n66850;
wire n66851;
wire n66852;
wire n66853;
wire n66854;
wire n66855;
wire n66856;
wire n66857;
wire n66858;
wire n66861;
wire n66862;
wire n66863;
wire n66864;
wire n66865;
wire n66866;
wire n66867;
wire n66868;
wire n66869;
wire n66872;
wire n66873;
wire n66874;
wire n66875;
wire n66876;
wire n66877;
wire n66878;
wire n66879;
wire n66880;
wire n66884;
wire n66885;
wire n66886;
wire n66887;
wire n66888;
wire n66889;
wire n66890;
wire n66891;
wire n66892;
wire n66893;
wire n66896;
wire n66897;
wire n66898;
wire n66899;
wire n66900;
wire n66901;
wire n66902;
wire n66903;
wire n66904;
wire n66905;
wire n66906;

wire n66911;
wire n66914;
wire n66917;
wire n66918;
wire n66919;
wire n66920;
wire n66922;

wire JMPA;

/*-----------------------------------------------------------------------------.
| Gates                                                                        |
'-----------------------------------------------------------------------------*/
nor3 #(1) g66700(n66700, _51KPHI, 1'b0, 1'b0, clk, rst_n);
nor3      g66701(n66701, n66706, n66710, n66700, clk, rst_n);
nor3      g66702(n66702, n66700, n66709, n66705, clk, rst_n);
nor3 #(1) g66703(n66703, n66701, n66704, 1'b0, clk, rst_n);
nor3      g66704(n66704, n66703, n66702, 1'b0, clk, rst_n);
nor3      g66705(n66705, n66701, n66703, n66707, clk, rst_n);
nor3 #(1) g66706(n66706, n66707, n66704, n66702, clk, rst_n);
nor3      g66707(n66707, n66700, 1'b0, 1'b0, clk, rst_n);
//nor3    g66708(n66709, n66705, n66710, 1'b0, clk, rst_n);
nor3 #(1) g66709(n66709, n66705, n66710, 1'b0, clk, rst_n);
nor3      g66710(n66710, n66709, n66706, 1'b0, clk, rst_n);
//nor3    g66711(n66710, n66709, n66706, 1'b0, clk, rst_n);
nor3      g66712(n66712, n66720, n66709, n66718, clk, rst_n);
nor3      g66713(n66713, n66709, n66719, n66717, clk, rst_n);
nor3 #(1) g66714(n66714, n66707, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66715(n66715, n66712, n66716, 1'b0, clk, rst_n);
nor3      g66716(n66716, n66715, n66713, 1'b0, clk, rst_n);
nor3      g66717(n66717, n66712, n66715, n66710, clk, rst_n);
nor3 #(1) g66718(n66718, n66710, n66716, n66713, clk, rst_n);
nor3 #(1) g66719(n66719, n66717, n66720, 1'b0, clk, rst_n);
nor3      g66720(n66720, n66719, n66718, 1'b0, clk, rst_n);
nor3      g66721(n66721, n66720, n66710, n66714, clk, rst_n);
nor3      g66722(n66722, n66709, n66714, n66720, clk, rst_n);
nor3      g66723(n66723, n66719, n66714, n66710, clk, rst_n);
nor3      g66724(FAZ4DR, n66714, n66709, n66719, clk, rst_n);
nor3 #(1) g66725(n66725, n66721, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66726(FAZ2DR_n, n66722, n66722, 1'b0, clk, rst_n);
nor3 #(1) g66727(n66727, n66723, 1'b0, 1'b0, clk, rst_n);
nor3      g66728(FAZ3DR, n66727, n66727, 1'b0, clk, rst_n);
nor3 #(1) g66729(FAZ1HI, n66721, 1'b0, 1'b0, clk, rst_n);
//nor3    g66730(FAZ1HI, n66721, 1'b0, 1'b0, clk, rst_n);
nor3      g66731(n66731, n66725, 1'b0, 1'b0, clk, rst_n);
//nor3    g66732(FAZ1HI, n66721, 1'b0, 1'b0, clk, rst_n);
//nor3    g66733(FAZ1HI, n66721, 1'b0, 1'b0, clk, rst_n);
nor3      g66734(PS25KH, n66736, 1'b0, 1'b0, clk, rst_n);
nor3      g66735(n66735, FAZ4HI, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66736(n66736, FAZ2HI_n, n66735, 1'b0, clk, rst_n);
nor3      g66737(n66737, FAZ2HI, n66743, 1'b0, clk, rst_n);
nor3      g66738(n66738, n66737, n66739, 1'b0, clk, rst_n);
nor3 #(1) g66739(n66739, n66738, n66731, 1'b0, clk, rst_n);
nor3      g66740(n66740, n66738, FAZ4HI, 1'b0, clk, rst_n);
nor3      g66741(n66741, n66739, FAZ4HI, 1'b0, clk, rst_n);
nor3 #(1) g66742(n66742, n66740, n66743, 1'b0, clk, rst_n);
nor3      g66743(n66743, n66742, n66741, 1'b0, clk, rst_n);
nor3 #(1) g66744(n66744, n66740, 1'b0, 1'b0, clk, rst_n);
nor3      g66745(n66745, FAZ2HI, n66751, 1'b0, clk, rst_n);
nor3      g66746(n66746, n66745, n66747, 1'b0, clk, rst_n);
nor3 #(1) g66747(n66747, n66746, n66731, 1'b0, clk, rst_n);
nor3      g66748(n66748, n66744, n66746, 1'b0, clk, rst_n);
nor3      g66749(n66749, n66744, n66747, 1'b0, clk, rst_n);
nor3      g66750(n66750, n66748, n66751, 1'b0, clk, rst_n);
nor3 #(1) g66751(n66751, n66750, n66749, 1'b0, clk, rst_n);
nor3 #(1) g66752(n66752, n66748, 1'b0, 1'b0, clk, rst_n);
nor3      g66753(n66753, FAZ2HI, n66759, 1'b0, clk, rst_n);
nor3 #(1) g66754(n66754, n66753, n66755, 1'b0, clk, rst_n);
nor3      g66755(n66755, n66754, n66731, 1'b0, clk, rst_n);
nor3      g66756(n66756, n66752, n66754, 1'b0, clk, rst_n);
nor3      g66757(n66757, n66752, n66755, 1'b0, clk, rst_n);
nor3 #(1) g66758(n66758, n66756, n66759, 1'b0, clk, rst_n);
nor3      g66759(n66759, n66758, n66757, 1'b0, clk, rst_n);
nor3 #(1) g66760(n66760, n66756, 1'b0, 1'b0, clk, rst_n);
nor3      g66761(n66761, FAZ2HI, n66767, 1'b0, clk, rst_n);
nor3      g66762(n66762, n66761, n66763, 1'b0, clk, rst_n);
nor3 #(1) g66763(n66763, n66762, n66731, 1'b0, clk, rst_n);
nor3      g66764(n66764, n66760, n66762, 1'b0, clk, rst_n);
nor3      g66765(n66765, n66760, n66763, 1'b0, clk, rst_n);
nor3      g66766(n66766, n66764, n66767, 1'b0, clk, rst_n);
nor3 #(1) g66767(n66767, n66766, n66765, 1'b0, clk, rst_n);
nor3 #(1) g66768(_800LHI, n66764, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66769(n66769, ISSCA, 1'b0, 1'b0, clk, rst_n);
nor3      g66770(n66770, FAZ2HI, n66769, 1'b0, clk, rst_n);
nor3      g66771(n66771, FAZ2HI, ISSCA, 1'b0, clk, rst_n);
nor3 #(1) g66772(n66772, n66770, n66773, 1'b0, clk, rst_n);
nor3      g66773(n66773, n66772, n66771, 1'b0, clk, rst_n);
nor3 #(1) g66774(ACA, n66773, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66775(BCA, n66773, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66776(CCA, n66773, 1'b0, 1'b0, clk, rst_n);
nor3      g66777(n66777, FAZ2HI, ISSZ, 1'b0, clk, rst_n);
nor3      g66778(n66778, n66777, n66779, 1'b0, clk, rst_n);
nor3 #(1) g66779(n66779, n66778, ISSZ, 1'b0, clk, rst_n);
nor3 #(1) g66780(n66780, ISSEEC, 1'b0, 1'b0, clk, rst_n);
nor3      g66781(n66781, FAZ2HI, n66780, 1'b0, clk, rst_n);
nor3 #(1) g66782(n66782, n66781, n66783, 1'b0, clk, rst_n);
nor3      g66783(n66783, n66782, n66780, 1'b0, clk, rst_n);
nor3      g66784(n66784, FAZ2HI, RRZ, 1'b0, clk, rst_n);
nor3      g66785(n66785, n66784, n66786, 1'b0, clk, rst_n);
nor3 #(1) g66786(n66786, n66785, RRZ, 1'b0, clk, rst_n);
nor3      g66787(n66787, FAZ2HI, RRDAE, 1'b0, clk, rst_n);
nor3 #(1) g66788(n66788, RRDAE, 1'b0, 1'b0, clk, rst_n);
nor3      g66789(n66789, FAZ2HI, n66788, 1'b0, clk, rst_n);
nor3      g66790(n66790, n66787, n66791, 1'b0, clk, rst_n);
nor3 #(1) g66791(n66791, n66790, n66789, 1'b0, clk, rst_n);
nor3 #(1) g66792(DCA, JMPA, 1'b0, 1'b0, clk, rst_n);
assign ECA = DCA;
nor3      g66793(n66793, n66791, 1'b0, 1'b0, clk, rst_n);
//nor3    g66794(DCA, JMPA, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66795(DEEC, n66793, 1'b0, 1'b0, clk, rst_n);
assign EEEC = DEEC;
//nor3    g66796(DEEC, n66793, 1'b0, 1'b0, clk, rst_n);
//nor3    g66797(DEEC, n66793, 1'b0, 1'b0, clk, rst_n);
//nor3    g66798(DEEC, n66793, 1'b0, 1'b0, clk, rst_n);
//nor3    g66799(DEEC, n66793, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66800(DMMCA, n66773, 1'b0, 1'b0, clk, rst_n);
nor3      g66801(n66801, DMMCA, n66783, 1'b0, clk, rst_n);
nor3 #(1) g66802(n66802, n66778, n66801, 1'b0, clk, rst_n);
nor3      g66803(UINHRC, n66802, 1'b0, 1'b0, clk, rst_n);
nor3      g66804(n66804, n66782, 1'b0, 1'b0, clk, rst_n);
//nor3    g66805(n66804, n66782, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66806(CEEC, n66804, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66807(BEEC, n66804, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66808(AEEC, n66804, 1'b0, 1'b0, clk, rst_n);
//nor3    g66809(CEEC, n66804, 1'b0, 1'b0, clk, rst_n);
//nor3    g66810(BEEC, n66804, 1'b0, 1'b0, clk, rst_n);
//nor3    g66811(AEEC, n66804, 1'b0, 1'b0, clk, rst_n);
//nor3    g66812(CEEC, n66804, 1'b0, 1'b0, clk, rst_n);
//nor3    g66813(BEEC, n66804, 1'b0, 1'b0, clk, rst_n);
//nor3    g66814(AEEC, n66804, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66815(n66815, ISSIHI, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66816(n66816, ISSIHI, n66817, 1'b0, clk, rst_n);
nor3      g66817(n66817, n66816, n66821, 1'b0, clk, rst_n);
nor3      g66818(n66818, FAZ1HI, n66816, 1'b0, clk, rst_n);
nor3 #(1) g66819(n66819, n66818, n66820, 1'b0, clk, rst_n);
nor3      g66820(n66820, n66819, n66735, 1'b0, clk, rst_n);
nor3      g66821(n66821, n66819, FAZ2HI, 1'b0, clk, rst_n);
nor3      g66822(n66822, n66819, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g66823(ISSI2H, n66821, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66824(ISSI3H, n66822, 1'b0, 1'b0, clk, rst_n);
//nor3    g66825(ISSI2H, n66821, 1'b0, 1'b0, clk, rst_n);
//nor3    g66826(ISSI3H, n66822, 1'b0, 1'b0, clk, rst_n);
//nor3    g66827(ISSI2H, n66821, 1'b0, 1'b0, clk, rst_n);
//nor3    g66828(ISSI3H, n66822, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66829(n66829, SHIHI, n66830, 1'b0, clk, rst_n);
nor3      g66830(n66830, n66829, n66834, 1'b0, clk, rst_n);
nor3      g66831(n66831, FAZ1HI, n66829, 1'b0, clk, rst_n);
nor3 #(1) g66832(n66832, n66831, n66833, 1'b0, clk, rst_n);
nor3      g66833(n66833, n66832, n66735, 1'b0, clk, rst_n);
nor3      g66834(n66834, n66832, FAZ2HI, 1'b0, clk, rst_n);
nor3      g66835(n66835, n66832, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g66836(SHI2H, n66834, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66837(SHI3H, n66835, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66838(n66838, SHIHI, n66839, 1'b0, clk, rst_n); // TRNIHI in CSM
nor3      g66839(n66839, n66838, n66843, 1'b0, clk, rst_n);
nor3      g66840(n66840, FAZ1HI, n66838, 1'b0, clk, rst_n);
nor3 #(1) g66841(n66841, n66840, n66842, 1'b0, clk, rst_n);
nor3      g66842(n66842, n66841, n66735, 1'b0, clk, rst_n);
nor3      g66843(n66843, n66841, FAZ2HI, 1'b0, clk, rst_n);
nor3      g66844(n66844, n66841, FAZ3HI, 1'b0, clk, rst_n);
nor3 #(1) g66845(TRNI2H, n66843, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66846(TRNI3H, n66844, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66847(n66847, UREF1H, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66848(n66848, CADHI, 1'b0, 1'b0, clk, rst_n);
nor3      g66849(n66849, n66847, n66815, n66848, clk, rst_n);
nor3      g66850(n66850, UREF1H, ISSI3H, 1'b0, clk, rst_n);
nor3 #(1) g66851(n66851, BCDUZ, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66852(n66852, n66849, n66853, 1'b0, clk, rst_n);
nor3      g66853(n66853, n66852, n66850, 1'b0, clk, rst_n);
nor3 #(1) g66854(n66854, BCDUZ, 1'b0, 1'b0, clk, rst_n);
nor3      g66855(n66855, ISSI2H, n66852, n66854, clk, rst_n);
nor3      g66856(n66856, ISSI2H, n66853, n66854, clk, rst_n);
nor3 #(1) g66857(n66857, n66855, n66858, 1'b0, clk, rst_n);
nor3      g66858(n66858, n66857, n66856, CRSETB, clk, rst_n);
nor3      g66859(CAO, BCDUZ, n66857, 1'b0, clk, rst_n);
nor3      g66860(CQ, DMMCA, n66857, n66854, clk, rst_n);
nor3 #(1) g66861(n66861, BADHI, 1'b0, 1'b0, clk, rst_n);
nor3      g66862(n66862, n66847, n66815, n66861, clk, rst_n);
nor3      g66863(n66863, UREF1H, ISSI3H, 1'b0, clk, rst_n);
nor3 #(1) g66864(n66864, n66862, n66865, 1'b0, clk, rst_n);
nor3      g66865(n66865, n66864, n66863, 1'b0, clk, rst_n);
nor3      g66866(n66866, ISSI2H, n66864, n66851, clk, rst_n);
nor3      g66867(n66867, ISSI2H, n66865, n66851, clk, rst_n);
nor3 #(1) g66868(n66868, n66866, n66869, 1'b0, clk, rst_n);
nor3      g66869(n66869, n66868, n66867, BRSETB, clk, rst_n);
nor3      g66870(BAO, BCDUZ, n66868, 1'b0, clk, rst_n);
nor3      g66871(BQ, DMMCA, n66868, n66854, clk, rst_n);
nor3 #(1) g66872(n66872, AADHI, 1'b0, 1'b0, clk, rst_n);
nor3      g66873(n66873, n66847, n66815, n66872, clk, rst_n);
nor3      g66874(n66874, UREF1H, ISSI3H, 1'b0, clk, rst_n);
nor3 #(1) g66875(n66875, n66873, n66876, 1'b0, clk, rst_n);
nor3      g66876(n66876, n66875, n66874, 1'b0, clk, rst_n);
nor3      g66877(n66877, ISSI2H, n66875, n66851, clk, rst_n);
nor3      g66878(n66878, ISSI2H, n66876, n66851, clk, rst_n);
nor3 #(1) g66879(n66879, n66877, n66880, 1'b0, clk, rst_n);
nor3      g66880(n66880, n66879, n66878, ARSETB, clk, rst_n);
nor3      g66881(AAO, BCDUZ, n66879, 1'b0, clk, rst_n);
nor3      g66882(AQ, DMMCA, n66879, n66851, clk, rst_n);

nor3      g66884(n66884, SREF1H, 1'b0, 1'b0, clk, rst_n);
nor3      g66885(n66885, n66884, n66896, n66917, clk, rst_n);
nor3      g66886(n66886, SREF1H, TRNI3H, 1'b0, clk, rst_n);
nor3 #(1) g66887(n66887, DCDUZ, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66888(n66888, n66885, n66889, 1'b0, clk, rst_n);
nor3      g66889(n66889, n66888, n66886, 1'b0, clk, rst_n);
nor3      g66890(n66890, TRNI2H, n66888, n66887, clk, rst_n);
nor3      g66891(n66891, TRNI2H, n66889, n66887, clk, rst_n);
nor3 #(1) g66892(n66892, n66890, n66893, 1'b0, clk, rst_n);
nor3      g66893(n66893, n66892, n66891, ERSETB, clk, rst_n);
nor3      g66894(EAO, DCDUZ, n66892, 1'b0, clk, rst_n);

nor3 #(1) g66896(n66896, SHIHI, 1'b0, 1'b0, clk, rst_n);
nor3      g66897(n66897, SREF1H, 1'b0, 1'b0, clk, rst_n);
nor3      g66898(n66898, n66897, n66896, n66918, clk, rst_n);
nor3      g66899(n66899, SREF1H, SHI3H, 1'b0, clk, rst_n);
nor3 #(1) g66900(n66900, n66898, n66901, 1'b0, clk, rst_n);
nor3      g66901(n66901, n66900, n66899, 1'b0, clk, rst_n);
nor3 #(1) g66902(n66902, DCDUZ, 1'b0, 1'b0, clk, rst_n);
nor3      g66903(n66903, SHI2H, n66900, n66902, clk, rst_n);
nor3      g66904(n66904, SHI2H, n66901, n66902, clk, rst_n);
nor3 #(1) g66905(n66905, n66903, n66906, 1'b0, clk, rst_n);
nor3      g66906(n66906, n66905, n66904, DRSETB, clk, rst_n);
nor3      g66907(DAO, DCDUZ, n66905, 1'b0, clk, rst_n);

nor3      g66909(JMPA, n66791, TVCDCA, 1'b0, clk, rst_n);
nor3      g66910(OINHRC, n66786, 1'b0, 1'b0, clk, rst_n);
nor3      g66911(n66911, n66786, TVCDCA, 1'b0, clk, rst_n);
nor3 #(1) g66912(RRZDR, n66911, 1'b0, 1'b0, clk, rst_n);
nor3      g66913(_51KPHI_n, n66922, n66700, 1'b0, clk, rst_n);
nor3 #(1) g66914(n66914, n66722, 1'b0, 1'b0, clk, rst_n);
nor3      g66915(FAZ2DR, n66914, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66916(ISSZDR, n66778, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66917(n66917, EADHI, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g66918(n66918, DADHI, 1'b0, 1'b0, clk, rst_n);
nor3      g66919(n66919, DMMCA, 1'b0, 1'b0, clk, rst_n);
nor3      g66920(n66920, n66919, FAZ4HI, 1'b0, clk, rst_n);
nor3 #(1) g66921(FAZ4CA, n66920, n66740, 1'b0, clk, rst_n);
nor3 #(1) g66922(n66922, CCDUZ, 1'b0, 1'b0, clk, rst_n);

// Spare gates
//nor3    g66923(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g66924(SPO, SPI, SPI, SPI, clk, rst_n);
//nor3    g66925(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g66926(SPO, SPI, SPI, SPI, clk, rst_n);
//nor3    g66927(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g66928(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g66929(SPO, SPI, SPI, 1'b0, clk, rst_n);

endmodule
`default_nettype wire

