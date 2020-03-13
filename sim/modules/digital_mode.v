`timescale 1ns / 1ps
`default_nettype none

module digital_mode(
    input wire rst_n,
    input wire _51KPHI,
    input wire FAZ2HI,
    input wire FAZ2HI_n,
    input wire FAZ3HI,
    input wire FAZ4HI,
    input wire UREF1H,
    input wire ISSIHI,

    output wire _51KPHI_n,
    output wire FAZ1HI,
    output wire FAZ2DR,
    output wire FAZ2DR_n,
    output wire FAZ3DR,
    output wire FAZ4DR,
    output wire PS25KH,
    output wire ISSI2H,
    output wire ISSI3H,
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

    input wire BCDUZ,
    output wire BCA,
    output wire BEEC,

    input wire CCDUZ,
    output wire CCA,
    output wire CEEC
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
wire n66847;
wire n66851;
wire n66872;
wire n66873;
wire n66874;
wire n66875;
wire n66876;
wire n66877;
wire n66878;
wire n66879;
wire n66880;

wire n66914;
wire n66922;

/*-----------------------------------------------------------------------------.
| Gates                                                                        |
'-----------------------------------------------------------------------------*/
nor1      g66700(rst_n, _51KPHI, n66700);
nor3      g66701(rst_n, n66706, n66710, n66700, n66701);
nor3 #(1) g66702(rst_n, n66700, n66709, n66705, n66702);
nor2 #(1) g66703(rst_n, n66701, n66704, n66703);
nor2      g66704(rst_n, n66703, n66702, n66704);
nor3      g66705(rst_n, n66701, n66703, n66707, n66705);
nor3 #(1) g66706(rst_n, n66707, n66704, n66702, n66706);
nor1 #(1) g66707(rst_n, n66700, n66707);
//nor2    g66708(rst_n, n66705, n66710, n66709);
nor2 #(1) g66709(rst_n, n66705, n66710, n66709);
nor2      g66710(rst_n, n66709, n66706, n66710);
//nor2    g66711(rst_n, n66709, n66706, n66710);
nor3      g66712(rst_n, n66720, n66709, n66718, n66712);
nor3      g66713(rst_n, n66709, n66719, n66717, n66713);
nor1      g66714(rst_n, n66707, n66714);
nor2 #(1) g66715(rst_n, n66712, n66716, n66715);
nor2      g66716(rst_n, n66715, n66713, n66716);
nor3      g66717(rst_n, n66712, n66715, n66710, n66717);
nor3      g66718(rst_n, n66710, n66716, n66713, n66718);
nor2      g66719(rst_n, n66717, n66720, n66719);
nor2      g66720(rst_n, n66719, n66718, n66720);
nor3      g66721(rst_n, n66720, n66710, n66714, n66721);
nor3      g66722(rst_n, n66709, n66714, n66720, n66722);
nor3      g66723(rst_n, n66719, n66714, n66710, n66723);
nor3      g66724(rst_n, n66714, n66709, n66719, FAZ4DR);
nor1      g66725(rst_n, n66721, n66725);
nor2      g66726(rst_n, n66722, n66722, FAZ2DR_n);
nor1      g66727(rst_n, n66723, n66727);
nor2      g66728(rst_n, n66727, n66727, FAZ3DR);
nor1      g66729(rst_n, n66721, FAZ1HI);
//nor1    g66730(rst_n, n66721, FAZ1HI);
nor1 #(1) g66731(rst_n, n66725, n66731);
//nor1    g66732(rst_n, n66721, FAZ1HI);
//nor1    g66733(rst_n, n66721, FAZ1HI);
nor1      g66734(rst_n, n66736, PS25KH);
nor1      g66735(rst_n, FAZ4HI, n66735);
nor2      g66736(rst_n, FAZ2HI_n, n66735, n66736);
nor2      g66737(rst_n, FAZ2HI, n66743, n66737);
nor2      g66738(rst_n, n66737, n66739, n66738);
nor2 #(1) g66739(rst_n, n66738, n66731, n66739);
nor2      g66740(rst_n, n66738, FAZ4HI, n66740);
nor2      g66741(rst_n, n66739, FAZ4HI, n66741);
nor2 #(1) g66742(rst_n, n66740, n66743, n66742);
nor2      g66743(rst_n, n66742, n66741, n66743);
nor1      g66744(rst_n, n66740, n66744);
nor2      g66745(rst_n, FAZ2HI, n66751, n66745);
nor2      g66746(rst_n, n66745, n66747, n66746);
nor2 #(1) g66747(rst_n, n66746, n66731, n66747);
nor2      g66748(rst_n, n66744, n66746, n66748);
nor2      g66749(rst_n, n66744, n66747, n66749);
nor2      g66750(rst_n, n66748, n66751, n66750);
nor2 #(1) g66751(rst_n, n66750, n66749, n66751);
nor1      g66752(rst_n, n66748, n66752);
nor2      g66753(rst_n, FAZ2HI, n66759, n66753);
nor2 #(1) g66754(rst_n, n66753, n66755, n66754);
nor2      g66755(rst_n, n66754, n66731, n66755);
nor2      g66756(rst_n, n66752, n66754, n66756);
nor2      g66757(rst_n, n66752, n66755, n66757);
nor2 #(1) g66758(rst_n, n66756, n66759, n66758);
nor2      g66759(rst_n, n66758, n66757, n66759);
nor1      g66760(rst_n, n66756, n66760);
nor2      g66761(rst_n, FAZ2HI, n66767, n66761);
nor2      g66762(rst_n, n66761, n66763, n66762);
nor2 #(1) g66763(rst_n, n66762, n66731, n66763);
nor2      g66764(rst_n, n66760, n66762, n66764);
nor2      g66765(rst_n, n66760, n66763, n66765);
nor2      g66766(rst_n, n66764, n66767, n66766);
nor2 #(1) g66767(rst_n, n66766, n66765, n66767);
nor1      g66768(rst_n, n66764, _800LHI);
nor1      g66769(rst_n, ISSCA, n66769);
nor2      g66770(rst_n, FAZ2HI, n66769, n66770);
nor2 #(1) g66771(rst_n, FAZ2HI, ISSCA, n66771);
nor2      g66772(rst_n, n66770, n66773, n66772);
nor2 #(1) g66773(rst_n, n66772, n66771, n66773);
nor1      g66774(rst_n, n66773, ACA);
nor1      g66775(rst_n, n66773, BCA);
nor1      g66776(rst_n, n66773, CCA);
nor2      g66777(rst_n, FAZ2HI, ISSZ, n66777);
nor2      g66778(rst_n, n66777, n66779, n66778);
nor2 #(1) g66779(rst_n, n66778, ISSZ, n66779);
nor1      g66780(rst_n, ISSEEC, n66780);
nor2      g66781(rst_n, FAZ2HI, n66780, n66781);
nor2      g66782(rst_n, n66781, n66783, n66782);
nor2 #(1) g66783(rst_n, n66782, n66780, n66783);

nor1      g66800(rst_n, n66773, DMMCA);
nor2      g66801(rst_n, DMMCA, n66783, n66801);
nor2      g66802(rst_n, n66778, n66801, n66802);
nor1      g66803(rst_n, n66802, UINHRC);
nor1      g66804(rst_n, n66782, n66804);
//nor1    g66805(rst_n, n66782, n66804);
nor1      g66806(rst_n, n66804, CEEC);
nor1      g66807(rst_n, n66804, BEEC);
nor1      g66808(rst_n, n66804, AEEC);
//nor1    g66809(rst_n, n66804, CEEC);
//nor1    g66810(rst_n, n66804, BEEC);
//nor1    g66811(rst_n, n66804, AEEC);
//nor1    g66812(rst_n, n66804, CEEC);
//nor1    g66813(rst_n, n66804, BEEC);
//nor1    g66814(rst_n, n66804, AEEC);
nor1      g66815(rst_n, ISSIHI, n66815);
nor2 #(1) g66816(rst_n, ISSIHI, n66817, n66816);
nor2      g66817(rst_n, n66816, n66821, n66817);
nor2      g66818(rst_n, FAZ1HI, n66816, n66818);
nor2 #(1) g66819(rst_n, n66818, n66820, n66819);
nor2      g66820(rst_n, n66819, n66735, n66820);
nor2      g66821(rst_n, n66819, FAZ2HI, n66821);
nor2      g66822(rst_n, n66819, FAZ3HI, n66822);
nor1      g66823(rst_n, n66821, ISSI2H);
nor1      g66824(rst_n, n66822, ISSI3H);
//nor1    g66825(rst_n, n66821, ISSI2H);
//nor1    g66826(rst_n, n66822, ISSI3H);
//nor1    g66827(rst_n, n66821, ISSI2H);
//nor1    g66828(rst_n, n66822, ISSI3H);
nor1 #(1) g66847(rst_n, UREF1H, n66847);
nor1      g66851(rst_n, BCDUZ, n66851);
nor1      g66872(rst_n, AADHI, n66872);
nor3      g66873(rst_n, n66847, n66815, n66872, n66873);
nor2      g66874(rst_n, UREF1H, ISSI3H, n66874);
nor2 #(1) g66875(rst_n, n66873, n66876, n66875);
nor2      g66876(rst_n, n66875, n66874, n66876);
nor3      g66877(rst_n, ISSI2H, n66875, n66851, n66877);
nor3      g66878(rst_n, ISSI2H, n66876, n66851, n66878);
nor2 #(1) g66879(rst_n, n66877, n66880, n66879);
nor3      g66880(rst_n, n66879, n66878, ARSETB, n66880);
nor2      g66881(rst_n, BCDUZ, n66879, AAO);
nor3      g66882(rst_n, DMMCA, n66879, n66851, AQ);

nor2      g66913(rst_n, n66700, n66922, _51KPHI_n);
nor1      g66914(rst_n, n66722, n66914);
nor1      g66915(rst_n, n66914, FAZ2DR);
nor1      g66916(rst_n, n66778, ISSZDR);
nor1      g66922(rst_n, CCDUZ, n66922);

endmodule
`default_nettype wire
