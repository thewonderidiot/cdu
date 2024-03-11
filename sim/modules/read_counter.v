`timescale 1ns / 1ps
`default_nettype none

module read_counter(
    input wire clk,
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
    output wire _DEL2H,

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
    output wire _DC12,

    output wire _D1,
    output wire _D2,
    output wire _D3,
    output wire _D4,
    output wire _D5,
    output wire _D6,
    output wire _D7,
    output wire _D8,
    output wire _D9,
    output wire _D10,
    output wire _D11,
    output wire _D12,
    output wire _D13,
    output wire _D14,
    output wire _D15,
    output wire _D16,
    output wire _D17,
    output wire _D18,
    output wire _D19,
    output wire _D20,
    output wire _D21,
    output wire _D22
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

wire n6_582;
wire n6_583;
wire n6_584;
wire n6_587;
wire n6_588;
wire n6_590;
wire n6_592;
wire n6_594;
wire n6_596;
wire n6_598;
wire n6_600;
wire n6_602;
wire n6_603;
wire n6_605;
wire n6_606;
wire n6_608;
wire n6_609;
wire n6_611;

wire n6_612;
wire n6_615;
wire n6_617;
wire n6_619;
wire n6_621;
wire n6_623;
wire n6_626;

wire _DEL9;

wire _XP13;
wire _XP13_n;
wire _XP14;
wire _XP14_n;
wire _XP15;
wire _XP15_n;

wire _FLA;
wire _FLB;
wire _FLC;
wire _FLD;
wire _FLE;
wire _FLF;
wire _FLG;

/*-----------------------------------------------------------------------------.
| Gates                                                                        |
'-----------------------------------------------------------------------------*/
// Bit 0
nor3      g6_400(n6_400, n6_407, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_401(n6_401, FAZ2HI_n, n6_402, 1'b0, clk, rst_n);
nor3 #(1) g6_402(n6_402, n6_401, n6_400, 1'b0, clk, rst_n);
nor3      g6_403(n6_403, _DNLVL, n6_401, _PIHI, clk, rst_n);
nor3      g6_404(n6_404, n6_401, _PIHI, 1'b0, clk, rst_n);
nor3      g6_405(n6_405, _PIHI, n6_402, 1'b0, clk, rst_n);
nor3      g6_406(n6_406, _PIHI, n6_402, _UPLVL, clk, rst_n);
nor3 #(1) g6_407(n6_407, n6_404, n6_408, 1'b0, clk, rst_n);
nor3      g6_408(n6_408, n6_407, n6_405, _CDUZ, clk, rst_n);
nor3 #(1) g6_409(n6_409, n6_403, n6_406, 1'b0, clk, rst_n);

// Bit 1
nor3      g6_410(n6_410, n6_417, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_411(n6_411, FAZ2HI_n, n6_412, 1'b0, clk, rst_n);
nor3 #(1) g6_412(n6_412, n6_411, n6_410, 1'b0, clk, rst_n);
nor3      g6_413(n6_413, _DNLVL, n6_411, n6_409, clk, rst_n);
nor3      g6_414(n6_414, n6_411, n6_409, 1'b0, clk, rst_n);
nor3      g6_415(n6_415, n6_409, n6_412, 1'b0, clk, rst_n);
nor3      g6_416(n6_416, n6_409, n6_412, _UPLVL, clk, rst_n);
nor3 #(1) g6_417(n6_417, n6_414, n6_418, 1'b0, clk, rst_n);
nor3      g6_418(n6_418, n6_417, n6_415, _CDUZ, clk, rst_n);
nor3 #(1) g6_419(n6_419, n6_413, n6_416, 1'b0, clk, rst_n);

// Bit 2
nor3      g6_420(n6_420, n6_427, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_421(n6_421, FAZ2HI_n, n6_422, 1'b0, clk, rst_n);
nor3 #(1) g6_422(n6_422, n6_421, n6_420, 1'b0, clk, rst_n);
nor3      g6_423(n6_423, _DNLVL, n6_421, n6_419, clk, rst_n);
nor3      g6_424(n6_424, n6_421, n6_419, 1'b0, clk, rst_n);
nor3      g6_425(n6_425, n6_419, n6_422, 1'b0, clk, rst_n);
nor3      g6_426(n6_426, n6_419, n6_422, _UPLVL, clk, rst_n);
nor3 #(1) g6_427(n6_427, n6_424, n6_428, 1'b0, clk, rst_n);
nor3      g6_428(n6_428, n6_427, n6_425, _CDUZ, clk, rst_n);
nor3 #(1) g6_429(n6_429, n6_423, n6_426, 1'b0, clk, rst_n);

// Bit 3
nor3      g6_430(n6_430, n6_437, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_431(n6_431, FAZ2HI_n, n6_432, 1'b0, clk, rst_n);
nor3 #(1) g6_432(n6_432, n6_431, n6_430, 1'b0, clk, rst_n);
nor3      g6_433(n6_433, _DNLVL, n6_431, n6_429, clk, rst_n);
nor3      g6_434(n6_434, n6_431, n6_429, 1'b0, clk, rst_n);
nor3      g6_435(n6_435, n6_429, n6_432, 1'b0, clk, rst_n);
nor3      g6_436(n6_436, n6_429, n6_432, _UPLVL, clk, rst_n);
nor3 #(1) g6_437(n6_437, n6_434, n6_438, 1'b0, clk, rst_n);
nor3      g6_438(n6_438, n6_437, n6_435, _CDUZ, clk, rst_n);
nor3 #(1) g6_439(n6_439, n6_433, n6_436, 1'b0, clk, rst_n);

// Bit 4
nor3      g6_440(n6_440, n6_447, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_441(n6_441, FAZ2HI_n, n6_442, 1'b0, clk, rst_n);
nor3 #(1) g6_442(n6_442, n6_441, n6_440, 1'b0, clk, rst_n);
nor3      g6_443(n6_443, _DNLVL, n6_441, n6_439, clk, rst_n);
nor3      g6_444(n6_444, n6_441, n6_439, 1'b0, clk, rst_n);
nor3      g6_445(n6_445, n6_439, n6_442, 1'b0, clk, rst_n);
nor3      g6_446(n6_446, n6_439, n6_442, _UPLVL, clk, rst_n);
nor3 #(1) g6_447(n6_447, n6_444, n6_448, 1'b0, clk, rst_n);
nor3      g6_448(n6_448, n6_447, n6_445, _CDUZ, clk, rst_n);
nor3 #(1) g6_449(n6_449, n6_443, n6_446, 1'b0, clk, rst_n);

// Bit 5
nor3      g6_450(n6_450, n6_457, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_451(n6_451, FAZ2HI_n, n6_452, 1'b0, clk, rst_n);
nor3 #(1) g6_452(n6_452, n6_451, n6_450, 1'b0, clk, rst_n);
nor3      g6_453(n6_453, _DNLVL, n6_451, n6_449, clk, rst_n);
nor3      g6_454(n6_454, n6_451, n6_449, 1'b0, clk, rst_n);
nor3      g6_455(n6_455, n6_449, n6_452, 1'b0, clk, rst_n);
nor3      g6_456(n6_456, n6_449, n6_452, _UPLVL, clk, rst_n);
nor3 #(1) g6_457(n6_457, n6_454, n6_458, 1'b0, clk, rst_n);
nor3      g6_458(n6_458, n6_457, n6_455, _CDUZ, clk, rst_n);
nor3 #(1) g6_459(n6_459, n6_453, n6_456, 1'b0, clk, rst_n);

// Bit 6
nor3      g6_460(n6_460, n6_467, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_461(n6_461, FAZ2HI_n, n6_462, 1'b0, clk, rst_n);
nor3 #(1) g6_462(n6_462, n6_461, n6_460, 1'b0, clk, rst_n);
nor3      g6_463(n6_463, _DNLVL, n6_461, n6_459, clk, rst_n);
nor3      g6_464(n6_464, n6_461, n6_459, 1'b0, clk, rst_n);
nor3      g6_465(n6_465, n6_459, n6_462, 1'b0, clk, rst_n);
nor3      g6_466(n6_466, n6_459, n6_462, _UPLVL, clk, rst_n);
nor3 #(1) g6_467(n6_467, n6_464, n6_468, 1'b0, clk, rst_n);
nor3      g6_468(n6_468, n6_467, n6_465, _CDUZ, clk, rst_n);
nor3 #(1) g6_469(n6_469, n6_463, n6_466, 1'b0, clk, rst_n);

// Bit 7
nor3      g6_470(n6_470, n6_477, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_471(n6_471, FAZ2HI_n, n6_472, 1'b0, clk, rst_n);
nor3 #(1) g6_472(n6_472, n6_471, n6_470, 1'b0, clk, rst_n);
nor3      g6_473(n6_473, _DNLVL, n6_471, n6_469, clk, rst_n);
nor3      g6_474(n6_474, n6_471, n6_469, 1'b0, clk, rst_n);
nor3      g6_475(n6_475, n6_469, n6_472, 1'b0, clk, rst_n);
nor3      g6_476(n6_476, n6_469, n6_472, _UPLVL, clk, rst_n);
nor3 #(1) g6_477(n6_477, n6_474, _FLA, 1'b0, clk, rst_n);
nor3      g6_478(_FLA, n6_477, n6_475, _CDUZ, clk, rst_n);
nor3 #(1) g6_479(n6_479, n6_473, n6_476, 1'b0, clk, rst_n);

// Bit 8
nor3      g6_480(n6_480, n6_487, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_481(n6_481, FAZ2HI_n, n6_482, 1'b0, clk, rst_n);
nor3 #(1) g6_482(n6_482, n6_481, n6_480, 1'b0, clk, rst_n);
nor3      g6_483(n6_483, _DNLVL, n6_481, n6_479, clk, rst_n);
nor3      g6_484(n6_484, n6_481, n6_479, 1'b0, clk, rst_n);
nor3      g6_485(n6_485, n6_479, n6_482, 1'b0, clk, rst_n);
nor3      g6_486(n6_486, n6_479, n6_482, _UPLVL, clk, rst_n);
nor3 #(1) g6_487(n6_487, n6_484, n6_488, 1'b0, clk, rst_n);
nor3      g6_488(n6_488, n6_487, n6_485, _CDUZ, clk, rst_n);
nor3 #(1) g6_489(n6_489, n6_483, n6_486, 1'b0, clk, rst_n);

// Bit 9
nor3      g6_490(n6_490, n6_497, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_491(n6_491, FAZ2HI_n, n6_492, 1'b0, clk, rst_n);
nor3 #(1) g6_492(n6_492, n6_491, n6_490, 1'b0, clk, rst_n);
nor3      g6_493(n6_493, _DNLVL, n6_491, n6_489, clk, rst_n);
nor3      g6_494(n6_494, n6_491, n6_489, 1'b0, clk, rst_n);
nor3      g6_495(n6_495, n6_489, n6_492, 1'b0, clk, rst_n);
nor3      g6_496(n6_496, n6_489, n6_492, _UPLVL, clk, rst_n);
nor3 #(1) g6_497(n6_497, n6_494, n6_498, 1'b0, clk, rst_n);
nor3      g6_498(n6_498, n6_497, n6_495, _CDUZ, clk, rst_n);
nor3 #(1) g6_499(_DEL9, n6_493, n6_496, 1'b0, clk, rst_n);

// Bit 10
nor3      g6_500(n6_500, n6_507, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_501(n6_501, FAZ2HI_n, n6_502, 1'b0, clk, rst_n);
nor3 #(1) g6_502(n6_502, n6_501, n6_500, 1'b0, clk, rst_n);
nor3      g6_503(n6_503, _DNLVL, n6_501, _DEL9, clk, rst_n);
nor3      g6_504(n6_504, n6_501, _DEL9, 1'b0, clk, rst_n);
nor3      g6_505(n6_505, _DEL9, n6_502, 1'b0, clk, rst_n);
nor3      g6_506(n6_506, _DEL9, n6_502, _UPLVL, clk, rst_n);
nor3 #(1) g6_507(n6_507, n6_504, n6_508, 1'b0, clk, rst_n);
nor3      g6_508(n6_508, n6_507, n6_505, _CDUZ, clk, rst_n);
nor3 #(1) g6_509(n6_509, n6_503, n6_506, 1'b0, clk, rst_n);

// Bit 11
nor3      g6_510(n6_510, n6_517, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_511(n6_511, FAZ2HI_n, n6_512, 1'b0, clk, rst_n);
nor3 #(1) g6_512(n6_512, n6_511, n6_510, 1'b0, clk, rst_n);
nor3      g6_513(n6_513, _DNLVL, n6_511, n6_509, clk, rst_n);
nor3      g6_514(n6_514, n6_511, n6_509, 1'b0, clk, rst_n);
nor3      g6_515(n6_515, n6_509, n6_512, 1'b0, clk, rst_n);
nor3      g6_516(n6_516, n6_509, n6_512, _UPLVL, clk, rst_n);
nor3 #(1) g6_517(n6_517, n6_514, _FLB, 1'b0, clk, rst_n);
nor3      g6_518(_FLB, n6_517, n6_515, _CDUZ, clk, rst_n);
nor3 #(1) g6_519(n6_519, n6_513, n6_516, 1'b0, clk, rst_n);

// Bit 12
nor3      g6_520(n6_520, n6_527, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_521(n6_521, FAZ2HI_n, n6_522, 1'b0, clk, rst_n);
nor3 #(1) g6_522(n6_522, n6_521, n6_520, 1'b0, clk, rst_n);
nor3      g6_523(n6_523, _DNLVL, n6_521, n6_519, clk, rst_n);
nor3      g6_524(n6_524, n6_521, n6_519, 1'b0, clk, rst_n);
nor3      g6_525(n6_525, n6_519, n6_522, 1'b0, clk, rst_n);
nor3      g6_526(n6_526, n6_519, n6_522, _UPLVL, clk, rst_n);
nor3 #(1) g6_527(n6_527, n6_524, n6_528, 1'b0, clk, rst_n);
nor3      g6_528(n6_528, n6_527, n6_525, _CDUZ, clk, rst_n);
nor3 #(1) g6_529(n6_529, n6_523, n6_526, 1'b0, clk, rst_n);

// Bit 13
nor3      g6_530(n6_530, n6_537, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_531(n6_531, FAZ2HI_n, n6_532, 1'b0, clk, rst_n);
nor3 #(1) g6_532(n6_532, n6_531, n6_530, 1'b0, clk, rst_n);
nor3      g6_533(n6_533, _DNLVL, n6_531, n6_529, clk, rst_n);
nor3      g6_534(n6_534, n6_531, n6_529, 1'b0, clk, rst_n);
nor3      g6_535(n6_535, n6_529, n6_532, 1'b0, clk, rst_n);
nor3      g6_536(n6_536, n6_529, n6_532, _UPLVL, clk, rst_n);
nor3 #(1) g6_537(n6_537, n6_534, n6_538, 1'b0, clk, rst_n);
nor3      g6_538(n6_538, n6_537, n6_535, _CDUZ, clk, rst_n);
nor3 #(1) g6_539(n6_539, n6_533, n6_536, 1'b0, clk, rst_n);

// Bit 14
nor3      g6_540(n6_540, n6_547, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_541(n6_541, FAZ2HI_n, n6_542, 1'b0, clk, rst_n);
nor3 #(1) g6_542(n6_542, n6_541, n6_540, 1'b0, clk, rst_n);
nor3      g6_543(n6_543, _DNLVL, n6_541, n6_539, clk, rst_n);
nor3      g6_544(n6_544, n6_541, n6_539, 1'b0, clk, rst_n);
nor3      g6_545(n6_545, n6_539, n6_542, 1'b0, clk, rst_n);
nor3      g6_546(n6_546, n6_539, n6_542, _UPLVL, clk, rst_n);
nor3 #(1) g6_547(n6_547, _Q, n6_544, n6_548, clk, rst_n);
nor3      g6_548(n6_548, n6_547, n6_545, _CDUZ, clk, rst_n);
nor3 #(1) g6_549(n6_549, n6_543, n6_546, 1'b0, clk, rst_n);

// Bit 15
nor3      g6_550(n6_550, n6_555, FAZ3HI, 1'b0, clk, rst_n);
nor3      g6_551(n6_551, FAZ2HI_n, n6_552, 1'b0, clk, rst_n);
nor3 #(1) g6_552(n6_552, n6_551, n6_550, 1'b0, clk, rst_n);
nor3      g6_553(n6_553, n6_551, n6_549, 1'b0, clk, rst_n);
nor3      g6_554(n6_554, n6_549, n6_552, 1'b0, clk, rst_n);
nor3 #(1) g6_555(n6_555, n6_553, n6_556, 1'b0, clk, rst_n);
nor3      g6_556(n6_556, n6_555, n6_554, _CDUZ, clk, rst_n);
nor3      g6_557(_XP15_n, n6_555, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_558(_XP15, n6_556, 1'b0, 1'b0, clk, rst_n);

// Pulse out
nor3 #(1) g6_559(_DEL0H, n6_403, n6_406, 1'b0, clk, rst_n);

// Switch gates
nor3 #(1) g6_560(_D21, n6_408, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_561(_D20, n6_418, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_562(_D19, n6_428, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_563(_D18, n6_438, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_564(_D17, n6_448, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_565(_D16, n6_458, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_566(_D15, n6_468, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_567(_FLG, _FLA, 1'b0, 1'b0, clk, rst_n);
nor3      g6_568(_FLE, n6_487, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_569(_FLF, n6_488, 1'b0, 1'b0, clk, rst_n);
nor3      g6_570(_FLD, n6_497, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_571(_DC12, n6_498, 1'b0, 1'b0, clk, rst_n);
nor3      g6_572(_D11, n6_507, 1'b0, 1'b0, clk, rst_n);
nor3      g6_573(_FLC, n6_507, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_574(_DC11, n6_508, 1'b0, 1'b0, clk, rst_n);
assign _D14 = _DC11; // FIXME: wired differently for trunnion
nor3      g6_575(_D8, n6_517, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_576(_DC10, _FLB, 1'b0, 1'b0, clk, rst_n);
assign _D7 = _DC10; // FIXME: wired differently for trunnion
nor3      g6_577(_DC9, n6_527, 1'b0, 1'b0, clk, rst_n);
nor3      g6_578(_XP13_n, n6_537, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_579(_XP13, n6_538, 1'b0, 1'b0, clk, rst_n);
nor3      g6_580(_XP14_n, n6_547, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_581(_XP14, _Q, n6_548, 1'b0, clk, rst_n);

// Fine logic
nor3 #(1) g6_582(n6_582, _FLB, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_583(n6_583, _FLC, 1'b0, 1'b0, clk, rst_n);
nor3      g6_584(n6_584, n6_583, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_585(n6_584, n6_583, 1'b0, 1'b0, clk, rst_n);
//nor3    g6_586(n6_583, _FLC, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_587(n6_587, _FLD, 1'b0, 1'b0, clk, rst_n);
nor3      g6_588(n6_588, n6_583, _FLG, 1'b0, clk, rst_n);
nor3 #(1) g6_589(_D10, n6_588, 1'b0, 1'b0, clk, rst_n);
nor3      g6_590(n6_590, n6_583, _FLA, 1'b0, clk, rst_n);
nor3 #(1) g6_591(_D9, n6_590, 1'b0, 1'b0, clk, rst_n);
nor3      g6_592(n6_592, n6_584, _FLG, 1'b0, clk, rst_n);
nor3 #(1) g6_593(_D13, n6_592, 1'b0, 1'b0, clk, rst_n);
nor3 #(1) g6_594(n6_594, n6_584, _FLA, 1'b0, clk, rst_n);
nor3      g6_595(_D12, n6_594, 1'b0, 1'b0, clk, rst_n);
nor3      g6_596(n6_596, n6_582, n6_584, 1'b0, clk, rst_n);
nor3 #(1) g6_597(_D6, n6_596, n6_598, 1'b0, clk, rst_n);
nor3      g6_598(n6_598, _FLB, n6_583, 1'b0, clk, rst_n);
nor3      g6_599(_D5, _D6, 1'b0, 1'b0, clk, rst_n);
nor3      g6_600(n6_600, n6_584, n6_587, _FLF, clk, rst_n);
nor3 #(1) g6_601(_D4, n6_600, n6_602, 1'b0, clk, rst_n);
nor3      g6_602(n6_602, n6_583, _FLD, _FLE, clk, rst_n);
nor3      g6_603(n6_603, n6_583, _FLD, _FLF, clk, rst_n);
nor3 #(1) g6_604(_D3, n6_603, n6_605, 1'b0, clk, rst_n);
nor3      g6_605(n6_605, n6_584, n6_587, _FLE, clk, rst_n);
nor3      g6_606(n6_606, n6_584, _FLD, _FLF, clk, rst_n);
nor3 #(1) g6_607(_D2, n6_606, n6_608, 1'b0, clk, rst_n);
nor3      g6_608(n6_608, n6_583, n6_587, _FLE, clk, rst_n);
nor3 #(1) g6_609(n6_609, n6_584, _FLD, _FLE, clk, rst_n);
nor3      g6_610(_D1, n6_609, n6_611, 1'b0, clk, rst_n);
nor3      g6_611(n6_611, n6_583, n6_587, _FLF, clk, rst_n);

// Coarse logic
nor3      g6_612(n6_612, _XP15, _XP14, _XP13_n, clk, rst_n);
nor3 #(1) g6_613(_DC8, n6_612, n6_621, 1'b0, clk, rst_n);
nor3 #(1) g6_614(_DC4, n6_612, n6_615, 1'b0, clk, rst_n);
nor3      g6_615(n6_615, _XP15_n, _XP14_n, _XP13, clk, rst_n);
nor3 #(1) g6_616(_DC6, n6_615, n6_623, 1'b0, clk, rst_n);
nor3      g6_617(n6_617, _XP15, _XP14, _XP13, clk, rst_n);
nor3      g6_618(_DC3, n6_617, n6_619, 1'b0, clk, rst_n);
nor3 #(1) g6_619(n6_619, _XP15_n, _XP14_n, _XP13_n, clk, rst_n);
nor3 #(1) g6_620(_DC7, n6_617, _RSETB, 1'b0, clk, rst_n);
nor3      g6_621(n6_621, _XP15, _XP14_n, _XP13, clk, rst_n);
nor3 #(1) g6_622(_DC2, n6_621, n6_623, 1'b0, clk, rst_n);
nor3      g6_623(n6_623, _XP15_n, _XP14, _XP13_n, clk, rst_n);
nor3      g6_624(_RSETB, _XP15, _XP14_n, _XP13_n, clk, rst_n);
nor3 #(1) g6_625(_DC1, _RSETB, n6_626, 1'b0, clk, rst_n);
nor3      g6_626(n6_626, _XP15_n, _XP14, _XP13, clk, rst_n);
nor3      g6_627(_DC5, n6_619, n6_626, 1'b0, clk, rst_n);

// Least switch disable
nor3 #(1) g6_628(_D22, 1'b0, 1'b0, 1'b0, clk, rst_n);

// Pulse out
nor3 #(1) g6_629(_DEL2H, n6_423, n6_426, 1'b0, clk, rst_n);

// Optics trunnion only
//nor3    g6_630(_D7, n6_528, 1'b0, 1'b0, clk, rst_n);

// Spare gates
//nor3    g6_631(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g6_632(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g6_633(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g6_634(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g6_635(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g6_636(SPO, SPI, SPI, 1'b0, clk, rst_n);
//nor3    g6_637(SPO, SPI, SPI, 1'b0, clk, rst_n);

endmodule
`default_nettype wire

