`timescale 1ns / 1ps
`default_nettype none

module read_counter(
    input wire rst_n,

    input wire FAZ2HI_n,
    input wire FAZ3HI,
    input wire _CDUZ,
    input wire _Q,
    input wire _UPLVL,
    input wire _DNLVL,
    input wire _PIHI,

    output wire _RSETB,
    output wire _DEL0H,
    output wire _DC1,
    output wire _DC2,
    output wire _DC3,
    output wire _DC4,
    output wire _DC5,
    output wire _DC6,
    output wire _DC7,
    output wire _DC8,
    output wire _DC9,
    output wire _DC10,
    output wire _DC11,
    output wire _DC12
);

/*-----------------------------------------------------------------------------.
| Internal wires                                                               |
'-----------------------------------------------------------------------------*/
wire n6_400;
wire n6_401;
wire n6_402;
wire n6_403;
wire n6_404;
wire n6_405;
wire n6_406;
wire n6_407;
wire n6_408;
wire n6_409;

wire n6_410;
wire n6_411;
wire n6_412;
wire n6_413;
wire n6_414;
wire n6_415;
wire n6_416;
wire n6_417;
wire n6_418;
wire n6_419;

wire n6_420;
wire n6_421;
wire n6_422;
wire n6_423;
wire n6_424;
wire n6_425;
wire n6_426;
wire n6_427;
wire n6_428;
wire n6_429;

wire n6_430;
wire n6_431;
wire n6_432;
wire n6_433;
wire n6_434;
wire n6_435;
wire n6_436;
wire n6_437;
wire n6_438;
wire n6_439;

wire n6_440;
wire n6_441;
wire n6_442;
wire n6_443;
wire n6_444;
wire n6_445;
wire n6_446;
wire n6_447;
wire n6_448;
wire n6_449;

wire n6_450;
wire n6_451;
wire n6_452;
wire n6_453;
wire n6_454;
wire n6_455;
wire n6_456;
wire n6_457;
wire n6_458;
wire n6_459;

wire n6_460;
wire n6_461;
wire n6_462;
wire n6_463;
wire n6_464;
wire n6_465;
wire n6_466;
wire n6_467;
wire n6_468;
wire n6_469;

wire n6_470;
wire n6_471;
wire n6_472;
wire n6_473;
wire n6_474;
wire n6_475;
wire n6_476;
wire n6_477;
wire n6_478;
wire n6_479;

wire n6_480;
wire n6_481;
wire n6_482;
wire n6_483;
wire n6_484;
wire n6_485;
wire n6_486;
wire n6_487;
wire n6_488;
wire n6_489;

wire n6_490;
wire n6_491;
wire n6_492;
wire n6_493;
wire n6_494;
wire n6_495;
wire n6_496;
wire n6_497;
wire n6_498;
wire n6_499;

wire n6_500;
wire n6_501;
wire n6_502;
wire n6_503;
wire n6_504;
wire n6_505;
wire n6_506;
wire n6_507;
wire n6_508;
wire n6_509;

wire n6_510;
wire n6_511;
wire n6_512;
wire n6_513;
wire n6_514;
wire n6_515;
wire n6_516;
wire n6_517;
wire n6_518;
wire n6_519;

wire n6_520;
wire n6_521;
wire n6_522;
wire n6_523;
wire n6_524;
wire n6_525;
wire n6_526;
wire n6_527;
wire n6_528;
wire n6_529;

wire n6_530;
wire n6_531;
wire n6_532;
wire n6_533;
wire n6_534;
wire n6_535;
wire n6_536;
wire n6_537;
wire n6_538;
wire n6_539;

wire n6_540;
wire n6_541;
wire n6_542;
wire n6_543;
wire n6_544;
wire n6_545;
wire n6_546;
wire n6_547;
wire n6_548;
wire n6_549;

wire n6_550;
wire n6_551;
wire n6_552;
wire n6_553;
wire n6_554;
wire n6_555;
wire n6_556;

wire n6_612;
wire n6_615;
wire n6_617;
wire n6_619;
wire n6_621;
wire n6_623;
wire n6_626;

wire _XP13;
wire _XP13_n;
wire _XP14;
wire _XP14_n;
wire _XP15;
wire _XP15_n;

/*-----------------------------------------------------------------------------.
| Gates                                                                        |
'-----------------------------------------------------------------------------*/
// Bit 0
nor2      g6_400(rst_n, n6_407, FAZ3HI, n6_400);
nor2      g6_401(rst_n, FAZ2HI_n, n6_402, n6_401);
nor2 #(1) g6_402(rst_n, n6_401, n6_400, n6_402);
nor3      g6_403(rst_n, _DNLVL, n6_401, _PIHI, n6_403);
nor2      g6_404(rst_n, n6_401, _PIHI, n6_404);
nor2      g6_405(rst_n, _PIHI, n6_402, n6_405);
nor3      g6_406(rst_n, _PIHI, n6_402, _UPLVL, n6_406);
nor2 #(1) g6_407(rst_n, n6_404, n6_408, n6_407);
nor3      g6_408(rst_n, n6_407, n6_405, _CDUZ, n6_408);
nor2      g6_409(rst_n, n6_403, n6_406, n6_409);

// Bit 1
nor2      g6_410(rst_n, n6_417, FAZ3HI, n6_410);
nor2      g6_411(rst_n, FAZ2HI_n, n6_412, n6_411);
nor2 #(1) g6_412(rst_n, n6_411, n6_410, n6_412);
nor3      g6_413(rst_n, _DNLVL, n6_411, n6_409, n6_413);
nor2      g6_414(rst_n, n6_411, n6_409, n6_414);
nor2      g6_415(rst_n, n6_409, n6_412, n6_415);
nor3      g6_416(rst_n, n6_409, n6_412, _UPLVL, n6_416);
nor2 #(1) g6_417(rst_n, n6_414, n6_418, n6_417);
nor3      g6_418(rst_n, n6_417, n6_415, _CDUZ, n6_418);
nor2      g6_419(rst_n, n6_413, n6_416, n6_419);

// Bit 2
nor2      g6_420(rst_n, n6_427, FAZ3HI, n6_420);
nor2      g6_421(rst_n, FAZ2HI_n, n6_422, n6_421);
nor2 #(1) g6_422(rst_n, n6_421, n6_420, n6_422);
nor3      g6_423(rst_n, _DNLVL, n6_421, n6_419, n6_423);
nor2      g6_424(rst_n, n6_421, n6_419, n6_424);
nor2      g6_425(rst_n, n6_419, n6_422, n6_425);
nor3      g6_426(rst_n, n6_419, n6_422, _UPLVL, n6_426);
nor2 #(1) g6_427(rst_n, n6_424, n6_428, n6_427);
nor3      g6_428(rst_n, n6_427, n6_425, _CDUZ, n6_428);
nor2      g6_429(rst_n, n6_423, n6_426, n6_429);

// Bit 3
nor2      g6_430(rst_n, n6_437, FAZ3HI, n6_430);
nor2      g6_431(rst_n, FAZ2HI_n, n6_432, n6_431);
nor2 #(1) g6_432(rst_n, n6_431, n6_430, n6_432);
nor3      g6_433(rst_n, _DNLVL, n6_431, n6_429, n6_433);
nor2      g6_434(rst_n, n6_431, n6_429, n6_434);
nor2      g6_435(rst_n, n6_429, n6_432, n6_435);
nor3      g6_436(rst_n, n6_429, n6_432, _UPLVL, n6_436);
nor2 #(1) g6_437(rst_n, n6_434, n6_438, n6_437);
nor3      g6_438(rst_n, n6_437, n6_435, _CDUZ, n6_438);
nor2      g6_439(rst_n, n6_433, n6_436, n6_439);

// Bit 4
nor2      g6_440(rst_n, n6_447, FAZ3HI, n6_440);
nor2      g6_441(rst_n, FAZ2HI_n, n6_442, n6_441);
nor2 #(1) g6_442(rst_n, n6_441, n6_440, n6_442);
nor3      g6_443(rst_n, _DNLVL, n6_441, n6_439, n6_443);
nor2      g6_444(rst_n, n6_441, n6_439, n6_444);
nor2      g6_445(rst_n, n6_439, n6_442, n6_445);
nor3      g6_446(rst_n, n6_439, n6_442, _UPLVL, n6_446);
nor2 #(1) g6_447(rst_n, n6_444, n6_448, n6_447);
nor3      g6_448(rst_n, n6_447, n6_445, _CDUZ, n6_448);
nor2      g6_449(rst_n, n6_443, n6_446, n6_449);

// Bit 5
nor2      g6_450(rst_n, n6_457, FAZ3HI, n6_450);
nor2      g6_451(rst_n, FAZ2HI_n, n6_452, n6_451);
nor2 #(1) g6_452(rst_n, n6_451, n6_450, n6_452);
nor3      g6_453(rst_n, _DNLVL, n6_451, n6_449, n6_453);
nor2      g6_454(rst_n, n6_451, n6_449, n6_454);
nor2      g6_455(rst_n, n6_449, n6_452, n6_455);
nor3      g6_456(rst_n, n6_449, n6_452, _UPLVL, n6_456);
nor2 #(1) g6_457(rst_n, n6_454, n6_458, n6_457);
nor3      g6_458(rst_n, n6_457, n6_455, _CDUZ, n6_458);
nor2      g6_459(rst_n, n6_453, n6_456, n6_459);

// Bit 6
nor2      g6_460(rst_n, n6_467, FAZ3HI, n6_460);
nor2      g6_461(rst_n, FAZ2HI_n, n6_462, n6_461);
nor2 #(1) g6_462(rst_n, n6_461, n6_460, n6_462);
nor3      g6_463(rst_n, _DNLVL, n6_461, n6_459, n6_463);
nor2      g6_464(rst_n, n6_461, n6_459, n6_464);
nor2      g6_465(rst_n, n6_459, n6_462, n6_465);
nor3      g6_466(rst_n, n6_459, n6_462, _UPLVL, n6_466);
nor2 #(1) g6_467(rst_n, n6_464, n6_468, n6_467);
nor3      g6_468(rst_n, n6_467, n6_465, _CDUZ, n6_468);
nor2      g6_469(rst_n, n6_463, n6_466, n6_469);

// Bit 7
nor2      g6_470(rst_n, n6_477, FAZ3HI, n6_470);
nor2      g6_471(rst_n, FAZ2HI_n, n6_472, n6_471);
nor2 #(1) g6_472(rst_n, n6_471, n6_470, n6_472);
nor3      g6_473(rst_n, _DNLVL, n6_471, n6_469, n6_473);
nor2      g6_474(rst_n, n6_471, n6_469, n6_474);
nor2      g6_475(rst_n, n6_469, n6_472, n6_475);
nor3      g6_476(rst_n, n6_469, n6_472, _UPLVL, n6_476);
nor2 #(1) g6_477(rst_n, n6_474, n6_478, n6_477);
nor3      g6_478(rst_n, n6_477, n6_475, _CDUZ, n6_478);
nor2      g6_479(rst_n, n6_473, n6_476, n6_479);

// Bit 8
nor2      g6_480(rst_n, n6_487, FAZ3HI, n6_480);
nor2      g6_481(rst_n, FAZ2HI_n, n6_482, n6_481);
nor2 #(1) g6_482(rst_n, n6_481, n6_480, n6_482);
nor3      g6_483(rst_n, _DNLVL, n6_481, n6_479, n6_483);
nor2      g6_484(rst_n, n6_481, n6_479, n6_484);
nor2      g6_485(rst_n, n6_479, n6_482, n6_485);
nor3      g6_486(rst_n, n6_479, n6_482, _UPLVL, n6_486);
nor2 #(1) g6_487(rst_n, n6_484, n6_488, n6_487);
nor3      g6_488(rst_n, n6_487, n6_485, _CDUZ, n6_488);
nor2      g6_489(rst_n, n6_483, n6_486, n6_489);

// Bit 9
nor2      g6_490(rst_n, n6_497, FAZ3HI, n6_490);
nor2      g6_491(rst_n, FAZ2HI_n, n6_492, n6_491);
nor2 #(1) g6_492(rst_n, n6_491, n6_490, n6_492);
nor3      g6_493(rst_n, _DNLVL, n6_491, n6_489, n6_493);
nor2      g6_494(rst_n, n6_491, n6_489, n6_494);
nor2      g6_495(rst_n, n6_489, n6_492, n6_495);
nor3      g6_496(rst_n, n6_489, n6_492, _UPLVL, n6_496);
nor2 #(1) g6_497(rst_n, n6_494, n6_498, n6_497);
nor3      g6_498(rst_n, n6_497, n6_495, _CDUZ, n6_498);
nor2      g6_499(rst_n, n6_493, n6_496, n6_499);

// Bit 10
nor2      g6_500(rst_n, n6_507, FAZ3HI, n6_500);
nor2      g6_501(rst_n, FAZ2HI_n, n6_502, n6_501);
nor2 #(1) g6_502(rst_n, n6_501, n6_500, n6_502);
nor3      g6_503(rst_n, _DNLVL, n6_501, n6_499, n6_503);
nor2      g6_504(rst_n, n6_501, n6_499, n6_504);
nor2      g6_505(rst_n, n6_499, n6_502, n6_505);
nor3      g6_506(rst_n, n6_499, n6_502, _UPLVL, n6_506);
nor2 #(1) g6_507(rst_n, n6_504, n6_508, n6_507);
nor3      g6_508(rst_n, n6_507, n6_505, _CDUZ, n6_508);
nor2      g6_509(rst_n, n6_503, n6_506, n6_509);

// Bit 11
nor2      g6_510(rst_n, n6_517, FAZ3HI, n6_510);
nor2      g6_511(rst_n, FAZ2HI_n, n6_512, n6_511);
nor2 #(1) g6_512(rst_n, n6_511, n6_510, n6_512);
nor3      g6_513(rst_n, _DNLVL, n6_511, n6_509, n6_513);
nor2      g6_514(rst_n, n6_511, n6_509, n6_514);
nor2      g6_515(rst_n, n6_509, n6_512, n6_515);
nor3      g6_516(rst_n, n6_509, n6_512, _UPLVL, n6_516);
nor2 #(1) g6_517(rst_n, n6_514, n6_518, n6_517);
nor3      g6_518(rst_n, n6_517, n6_515, _CDUZ, n6_518);
nor2      g6_519(rst_n, n6_513, n6_516, n6_519);

// Bit 12
nor2      g6_520(rst_n, n6_527, FAZ3HI, n6_520);
nor2      g6_521(rst_n, FAZ2HI_n, n6_522, n6_521);
nor2 #(1) g6_522(rst_n, n6_521, n6_520, n6_522);
nor3      g6_523(rst_n, _DNLVL, n6_521, n6_519, n6_523);
nor2      g6_524(rst_n, n6_521, n6_519, n6_524);
nor2      g6_525(rst_n, n6_519, n6_522, n6_525);
nor3      g6_526(rst_n, n6_519, n6_522, _UPLVL, n6_526);
nor2 #(1) g6_527(rst_n, n6_524, n6_528, n6_527);
nor3      g6_528(rst_n, n6_527, n6_525, _CDUZ, n6_528);
nor2      g6_529(rst_n, n6_523, n6_526, n6_529);

// Bit 13
nor2      g6_530(rst_n, n6_537, FAZ3HI, n6_530);
nor2      g6_531(rst_n, FAZ2HI_n, n6_532, n6_531);
nor2 #(1) g6_532(rst_n, n6_531, n6_530, n6_532);
nor3      g6_533(rst_n, _DNLVL, n6_531, n6_529, n6_533);
nor2      g6_534(rst_n, n6_531, n6_529, n6_534);
nor2      g6_535(rst_n, n6_529, n6_532, n6_535);
nor3      g6_536(rst_n, n6_529, n6_532, _UPLVL, n6_536);
nor2 #(1) g6_537(rst_n, n6_534, n6_538, n6_537);
nor3      g6_538(rst_n, n6_537, n6_535, _CDUZ, n6_538);
nor2      g6_539(rst_n, n6_533, n6_536, n6_539);

// Bit 14
nor2      g6_540(rst_n, n6_547, FAZ3HI, n6_540);
nor2      g6_541(rst_n, FAZ2HI_n, n6_542, n6_541);
nor2 #(1) g6_542(rst_n, n6_541, n6_540, n6_542);
nor3      g6_543(rst_n, _DNLVL, n6_541, n6_539, n6_543);
nor2      g6_544(rst_n, n6_541, n6_539, n6_544);
nor2      g6_545(rst_n, n6_539, n6_542, n6_545);
nor3      g6_546(rst_n, n6_539, n6_542, _UPLVL, n6_546);
nor3 #(1) g6_547(rst_n, _Q, n6_544, n6_548, n6_547);
nor3      g6_548(rst_n, n6_547, n6_545, _CDUZ, n6_548);
nor2      g6_549(rst_n, n6_543, n6_546, n6_549);

// Bit 15
nor2      g6_550(rst_n, n6_555, FAZ3HI, n6_550);
nor2      g6_551(rst_n, FAZ2HI_n, n6_552, n6_551);
nor2 #(1) g6_552(rst_n, n6_551, n6_550, n6_552);
nor2      g6_553(rst_n, n6_551, n6_549, n6_553);
nor2      g6_554(rst_n, n6_549, n6_552, n6_554);
nor2 #(1) g6_555(rst_n, n6_553, n6_556, n6_555);
nor3      g6_556(rst_n, n6_555, n6_554, _CDUZ, n6_556);
nor1      g6_557(rst_n, n6_555, _XP15_n); // FIXME: wired differently for trunnion
nor1      g6_558(rst_n, n6_556, _XP15); // FIXME: wired differently for trunnion

nor2      g6_559(rst_n, n6_403, n6_406, _DEL0H);

nor1      g6_571(rst_n, n6_498, _DC12); // FIXME: wired differently for trunnion
nor1      g6_574(rst_n, n6_508, _DC11); // FIXME: wired differently for trunnion
nor1      g6_576(rst_n, n6_518, _DC10); // FIXME: wired differently for trunnion
nor1      g6_577(rst_n, n6_527, _DC9); // FIXME: wired differently for trunnion
nor1      g6_578(rst_n, n6_537, _XP13_n); // FIXME: wired differently for trunnion
nor1      g6_579(rst_n, n6_538, _XP13); // FIXME: wired differently for trunnion
nor1      g6_580(rst_n, n6_547, _XP14_n); // FIXME: wired differently for trunnion
nor2      g6_581(rst_n, _Q, n6_548, _XP14); // FIXME: wired differently for trunnion

// Coarse logic
nor3      g6_612(rst_n, _XP15, _XP14, _XP13_n, n6_612);
nor2      g6_613(rst_n, n6_612, n6_621, _DC8);
nor2      g6_614(rst_n, n6_612, n6_615, _DC4);
nor3      g6_615(rst_n, _XP15_n, _XP14_n, _XP13, n6_615);
nor2      g6_616(rst_n, n6_615, n6_623, _DC6);
nor3      g6_617(rst_n, _XP15, _XP14, _XP13, n6_617);
nor2      g6_618(rst_n, n6_617, n6_619, _DC3);
nor3      g6_619(rst_n, _XP15_n, _XP14_n, _XP13_n, n6_619);
nor2      g6_620(rst_n, n6_617, _RSETB, _DC7);
nor3      g6_621(rst_n, _XP15, _XP14_n, _XP13, n6_621);
nor2      g6_622(rst_n, n6_621, n6_623, _DC2);
nor3      g6_623(rst_n, _XP15_n, _XP14, _XP13_n, n6_623);
nor3      g6_624(rst_n, _XP15, _XP14_n, _XP13_n, _RSETB);
nor2      g6_625(rst_n, _RSETB, n6_626, _DC1);
nor3      g6_626(rst_n, _XP15_n, _XP14, _XP13, n6_626);
nor2      g6_627(rst_n, n6_619, n6_626, _DC5);

endmodule
`default_nettype wire
