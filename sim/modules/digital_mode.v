`timescale 1ns / 1ps
`default_nettype none

module digital_mode(
    input wire rst_n,
    input wire _51KPHI,
    input wire FAZ2HI,
    input wire FAZ2HI_n,
    input wire FAZ3HI,
    input wire FAZ4HI,
    input wire ISSIHI,
    input wire CCDUZ,

    output wire _51KPHI_n,
    output wire FAZ1HI,
    output wire FAZ2DR,
    output wire FAZ2DR_n,
    output wire FAZ3DR,
    output wire FAZ4DR,
    output wire PS25KH,
    output wire ISSI2H,
    output wire ISSI3H
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

wire n66816;
wire n66817;
wire n66818;
wire n66819;
wire n66820;
wire n66821;
wire n66822;

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


nor2      g66913(rst_n, n66700, n66922, _51KPHI_n);
nor1      g66914(rst_n, n66722, n66914);
nor1      g66915(rst_n, n66914, FAZ2DR);
nor1      g66922(rst_n, CCDUZ, n66922);

endmodule
`default_nettype wire
