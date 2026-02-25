PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R1 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["setNumberRange"]
        9 GETIMPORT                        R1 K5 [NumberRange.new]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K6 ["round"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K7 ["numberRange"]
       17 GETTABLEKS                       R3 R4 K8 ["Max"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 -1
       21 CALL                             R0 -1 0
       22 JUMP                             ; [+23]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R0 R1 K2 ["setNumberRange"]
       26 GETIMPORT                        R1 K5 [NumberRange.new]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K6 ["round"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K9 ["min"]
       34 CALL                             R2 1 1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K6 ["round"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K7 ["numberRange"]
       41 GETTABLEKS                       R4 R5 K8 ["Max"]
       43 CALL                             R3 1 -1
       44 CALL                             R1 -1 -1
       45 CALL                             R0 -1 0
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R1 R2 K0 ["toggleRangeProps"]
       49 GETTABLEKS                       R0 R1 K10 ["setToggleValue"]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K0 ["toggleRangeProps"]
       54 GETTABLEKS                       R2 R3 K1 ["toggleValue"]
       56 NOT                              R1 R2
       57 CALL                             R0 1 0
       58 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["toggleRangeProps"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        4 LOADK                            R3 K1 ["toggleRangeProps cannot be nil for minMaxToggleCheckbox"]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 NEWTABLE                         R3 8 0
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K4 ["Tag"]
       15 LOADK                            R5 K5 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
       16 SETTABLE                         R5 R3 R4
       17 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       19 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       21 GETTABLEKS                       R5 R0 K0 ["toggleRangeProps"]
       23 GETTABLEKS                       R4 R5 K7 ["toggleValue"]
       25 SETTABLEKS                       R4 R3 K8 ["Checked"]
       27 GETTABLEKS                       R5 R0 K0 ["toggleRangeProps"]
       29 GETTABLEKS                       R4 R5 K9 ["toggleText"]
       31 SETTABLEKS                       R4 R3 K10 ["Text"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R3 K11 ["OnClick"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["roundToTenths"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 MULK                             R3 R0 K1 [10]
        5 FASTCALL1                        MATH_ROUND R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.round]
        8 CALL                             R2 1 1
        9 DIVK                             R1 R2 K1 [10]
       10 RETURN                           R1 1
       11 FASTCALL1                        MATH_ROUND R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K4 [math.round]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["numberRange"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K0 ["numberRange"]
       11 GETTABLEKS                       R0 R1 K1 ["Min"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K0 ["numberRange"]
       16 GETTABLEKS                       R1 R2 K2 ["Max"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+49]
       20 GETUPVAL                         R0 1
       21 GETIMPORT                        R1 K5 [NumberRange.new]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K6 ["min"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K7 ["roundToTenths"]
       29 JUMPIFNOT                        R4 ; [+7]
       30 MULK                             R5 R3 K8 [10]
       31 FASTCALL1                        MATH_ROUND R5 ; [+2]
       32 GETIMPORT                        R4 K11 [math.round]
       34 CALL                             R4 1 1
       35 DIVK                             R2 R4 K8 [10]
       36 JUMP                             ; [+6]
       37 FASTCALL1                        MATH_ROUND R3 ; [+3]
       38 MOVE                             R5 R3
       39 GETIMPORT                        R4 K11 [math.round]
       41 CALL                             R4 1 1
       42 MOVE                             R2 R4
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K0 ["numberRange"]
       46 GETTABLEKS                       R4 R5 K2 ["Max"]
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R5 R6 K7 ["roundToTenths"]
       51 JUMPIFNOT                        R5 ; [+7]
       52 MULK                             R6 R4 K8 [10]
       53 FASTCALL1                        MATH_ROUND R6 ; [+2]
       54 GETIMPORT                        R5 K11 [math.round]
       56 CALL                             R5 1 1
       57 DIVK                             R3 R5 K8 [10]
       58 JUMP                             ; [+6]
       59 FASTCALL1                        MATH_ROUND R4 ; [+3]
       60 MOVE                             R6 R4
       61 GETIMPORT                        R5 K11 [math.round]
       63 CALL                             R5 1 1
       64 MOVE                             R3 R5
       65 CALL                             R1 2 -1
       66 CALL                             R0 -1 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R2 2
       69 GETTABLEKS                       R1 R2 K12 ["toggleRangeProps"]
       71 FASTCALL2K                       ASSERT R1 K13 ; [+4]
       73 LOADK                            R2 K13 ["toggleRangeProps cannot be nil if hideLowerRange is true"]
       74 GETIMPORT                        R0 K15 [assert]
       76 CALL                             R0 2 0
       77 GETUPVAL                         R2 2
       78 GETTABLEKS                       R1 R2 K12 ["toggleRangeProps"]
       80 GETTABLEKS                       R0 R1 K16 ["setToggleValue"]
       82 LOADB                            R1 1
       83 CALL                             R0 1 0
       84 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R1 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["numberRange"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETIMPORT                        R1 K5 [NumberRange.new]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K6 ["min"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K7 ["roundToTenths"]
       21 JUMPIFNOT                        R4 ; [+7]
       22 MULK                             R5 R3 K8 [10]
       23 FASTCALL1                        MATH_ROUND R5 ; [+2]
       24 GETIMPORT                        R4 K11 [math.round]
       26 CALL                             R4 1 1
       27 DIVK                             R2 R4 K8 [10]
       28 JUMP                             ; [+6]
       29 FASTCALL1                        MATH_ROUND R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K11 [math.round]
       33 CALL                             R4 1 1
       34 MOVE                             R2 R4
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K2 ["numberRange"]
       38 GETTABLEKS                       R4 R5 K12 ["Max"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K7 ["roundToTenths"]
       43 JUMPIFNOT                        R5 ; [+7]
       44 MULK                             R6 R4 K8 [10]
       45 FASTCALL1                        MATH_ROUND R6 ; [+2]
       46 GETIMPORT                        R5 K11 [math.round]
       48 CALL                             R5 1 1
       49 DIVK                             R3 R5 K8 [10]
       50 JUMP                             ; [+6]
       51 FASTCALL1                        MATH_ROUND R4 ; [+3]
       52 MOVE                             R6 R4
       53 GETIMPORT                        R5 K11 [math.round]
       55 CALL                             R5 1 1
       56 MOVE                             R3 R5
       57 CALL                             R1 2 -1
       58 CALL                             R0 -1 0
       59 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOT                        R1 ; [+4]
        4 JUMPIFNOT                        R2 ; [+3]
        5 LOADB                            R3 1
        6 MOVE                             R4 R2
        7 RETURN                           R3 2
        8 LOADB                            R3 0
        9 LOADN                            R4 0
       10 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 JUMPIFNOT                        R4 ; [+3]
        5 LOADB                            R1 1
        6 MOVE                             R2 R4
        7 JUMP                             ; [+2]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K0 ["numberRange"]
       15 GETTABLEKS                       R3 R4 K1 ["Max"]
       17 JUMPIFNOTLT                      R3 R2 ; [+25]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K2 ["setNumberRange"]
       22 GETIMPORT                        R4 K5 [NumberRange.new]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K6 ["roundToTenths"]
       27 JUMPIFNOT                        R6 ; [+7]
       28 MULK                             R7 R2 K7 [10]
       29 FASTCALL1                        MATH_ROUND R7 ; [+2]
       30 GETIMPORT                        R6 K10 [math.round]
       32 CALL                             R6 1 1
       33 DIVK                             R5 R6 K7 [10]
       34 JUMP                             ; [+5]
       35 FASTCALL1                        MATH_ROUND R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K10 [math.round]
       39 CALL                             R5 1 1
       40 CALL                             R4 1 -1
       41 CALL                             R3 -1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R3 R4 K2 ["setNumberRange"]
       46 GETIMPORT                        R4 K5 [NumberRange.new]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R6 R7 K6 ["roundToTenths"]
       51 JUMPIFNOT                        R6 ; [+7]
       52 MULK                             R7 R2 K7 [10]
       53 FASTCALL1                        MATH_ROUND R7 ; [+2]
       54 GETIMPORT                        R6 K10 [math.round]
       56 CALL                             R6 1 1
       57 DIVK                             R5 R6 K7 [10]
       58 JUMP                             ; [+5]
       59 FASTCALL1                        MATH_ROUND R2 ; [+3]
       60 MOVE                             R6 R2
       61 GETIMPORT                        R5 K10 [math.round]
       63 CALL                             R5 1 1
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R8 R9 K0 ["numberRange"]
       67 GETTABLEKS                       R7 R8 K1 ["Max"]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R8 R9 K6 ["roundToTenths"]
       72 JUMPIFNOT                        R8 ; [+7]
       73 MULK                             R9 R7 K7 [10]
       74 FASTCALL1                        MATH_ROUND R9 ; [+2]
       75 GETIMPORT                        R8 K10 [math.round]
       77 CALL                             R8 1 1
       78 DIVK                             R6 R8 K7 [10]
       79 JUMP                             ; [+6]
       80 FASTCALL1                        MATH_ROUND R7 ; [+3]
       81 MOVE                             R9 R7
       82 GETIMPORT                        R8 K10 [math.round]
       84 CALL                             R8 1 1
       85 MOVE                             R6 R8
       86 CALL                             R4 2 -1
       87 CALL                             R3 -1 0
       88 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 JUMPIFNOT                        R4 ; [+3]
        5 LOADB                            R1 1
        6 MOVE                             R2 R4
        7 JUMP                             ; [+2]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 JUMPIF                           R3 ; [+5]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K0 ["Min"]
       17 JUMPIFNOTLT                      R2 R3 ; [+25]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K1 ["setNumberRange"]
       22 GETIMPORT                        R4 K4 [NumberRange.new]
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K5 ["roundToTenths"]
       27 JUMPIFNOT                        R6 ; [+7]
       28 MULK                             R7 R2 K6 [10]
       29 FASTCALL1                        MATH_ROUND R7 ; [+2]
       30 GETIMPORT                        R6 K9 [math.round]
       32 CALL                             R6 1 1
       33 DIVK                             R5 R6 K6 [10]
       34 JUMP                             ; [+5]
       35 FASTCALL1                        MATH_ROUND R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K9 [math.round]
       39 CALL                             R5 1 1
       40 CALL                             R4 1 -1
       41 CALL                             R3 -1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R3 R4 K1 ["setNumberRange"]
       46 GETIMPORT                        R4 K4 [NumberRange.new]
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R6 R7 K0 ["Min"]
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R7 R8 K5 ["roundToTenths"]
       54 JUMPIFNOT                        R7 ; [+7]
       55 MULK                             R8 R6 K6 [10]
       56 FASTCALL1                        MATH_ROUND R8 ; [+2]
       57 GETIMPORT                        R7 K9 [math.round]
       59 CALL                             R7 1 1
       60 DIVK                             R5 R7 K6 [10]
       61 JUMP                             ; [+6]
       62 FASTCALL1                        MATH_ROUND R6 ; [+3]
       63 MOVE                             R8 R6
       64 GETIMPORT                        R7 K9 [math.round]
       66 CALL                             R7 1 1
       67 MOVE                             R5 R7
       68 GETUPVAL                         R8 3
       69 GETTABLEKS                       R7 R8 K5 ["roundToTenths"]
       71 JUMPIFNOT                        R7 ; [+7]
       72 MULK                             R8 R2 K6 [10]
       73 FASTCALL1                        MATH_ROUND R8 ; [+2]
       74 GETIMPORT                        R7 K9 [math.round]
       76 CALL                             R7 1 1
       77 DIVK                             R6 R7 K6 [10]
       78 JUMP                             ; [+5]
       79 FASTCALL1                        MATH_ROUND R2 ; [+3]
       80 MOVE                             R7 R2
       81 GETIMPORT                        R6 K9 [math.round]
       83 CALL                             R6 1 1
       84 CALL                             R4 2 -1
       85 CALL                             R3 -1 0
       86 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [NumberRange.new]
        3 GETUPVAL                         R6 1
        4 JUMPIFNOT                        R6 ; [+2]
        5 LOADN                            R5 0
        6 JUMP                             ; [+1]
        7 MOVE                             R5 R0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R6 R7 K3 ["roundToTenths"]
       11 JUMPIFNOT                        R6 ; [+7]
       12 MULK                             R7 R5 K4 [10]
       13 FASTCALL1                        MATH_ROUND R7 ; [+2]
       14 GETIMPORT                        R6 K7 [math.round]
       16 CALL                             R6 1 1
       17 DIVK                             R4 R6 K4 [10]
       18 JUMP                             ; [+6]
       19 FASTCALL1                        MATH_ROUND R5 ; [+3]
       20 MOVE                             R7 R5
       21 GETIMPORT                        R6 K7 [math.round]
       23 CALL                             R6 1 1
       24 MOVE                             R4 R6
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K3 ["roundToTenths"]
       28 JUMPIFNOT                        R6 ; [+7]
       29 MULK                             R7 R1 K4 [10]
       30 FASTCALL1                        MATH_ROUND R7 ; [+2]
       31 GETIMPORT                        R6 K7 [math.round]
       33 CALL                             R6 1 1
       34 DIVK                             R5 R6 K4 [10]
       35 JUMP                             ; [+5]
       36 FASTCALL1                        MATH_ROUND R1 ; [+3]
       37 MOVE                             R6 R1
       38 GETIMPORT                        R5 K7 [math.round]
       40 CALL                             R5 1 1
       41 CALL                             R3 2 -1
       42 CALL                             R2 -1 0
       43 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["setNumberRange"]
        5 GETIMPORT                        R1 K3 [NumberRange.new]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K4 ["Max"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K5 ["roundToTenths"]
       13 JUMPIFNOT                        R4 ; [+7]
       14 MULK                             R5 R3 K6 [10]
       15 FASTCALL1                        MATH_ROUND R5 ; [+2]
       16 GETIMPORT                        R4 K9 [math.round]
       18 CALL                             R4 1 1
       19 DIVK                             R2 R4 K6 [10]
       20 JUMP                             ; [+6]
       21 FASTCALL1                        MATH_ROUND R3 ; [+3]
       22 MOVE                             R5 R3
       23 GETIMPORT                        R4 K9 [math.round]
       25 CALL                             R4 1 1
       26 MOVE                             R2 R4
       27 CALL                             R1 1 -1
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R0 R1 K0 ["setNumberRange"]
       33 GETIMPORT                        R1 K3 [NumberRange.new]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R3 R4 K10 ["Min"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K5 ["roundToTenths"]
       41 JUMPIFNOT                        R4 ; [+7]
       42 MULK                             R5 R3 K6 [10]
       43 FASTCALL1                        MATH_ROUND R5 ; [+2]
       44 GETIMPORT                        R4 K9 [math.round]
       46 CALL                             R4 1 1
       47 DIVK                             R2 R4 K6 [10]
       48 JUMP                             ; [+6]
       49 FASTCALL1                        MATH_ROUND R3 ; [+3]
       50 MOVE                             R5 R3
       51 GETIMPORT                        R4 K9 [math.round]
       53 CALL                             R4 1 1
       54 MOVE                             R2 R4
       55 GETUPVAL                         R5 2
       56 GETTABLEKS                       R4 R5 K4 ["Max"]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R5 R6 K5 ["roundToTenths"]
       61 JUMPIFNOT                        R5 ; [+7]
       62 MULK                             R6 R4 K6 [10]
       63 FASTCALL1                        MATH_ROUND R6 ; [+2]
       64 GETIMPORT                        R5 K9 [math.round]
       66 CALL                             R5 1 1
       67 DIVK                             R3 R5 K6 [10]
       68 JUMP                             ; [+6]
       69 FASTCALL1                        MATH_ROUND R4 ; [+3]
       70 MOVE                             R6 R4
       71 GETIMPORT                        R5 K9 [math.round]
       73 CALL                             R5 1 1
       74 MOVE                             R3 R5
       75 CALL                             R1 2 -1
       76 CALL                             R0 -1 0
       77 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R1 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+30]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["setNumberRange"]
        9 GETIMPORT                        R1 K5 [NumberRange.new]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K6 ["numberRange"]
       14 GETTABLEKS                       R3 R4 K7 ["Max"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K8 ["roundToTenths"]
       19 JUMPIFNOT                        R4 ; [+7]
       20 MULK                             R5 R3 K9 [10]
       21 FASTCALL1                        MATH_ROUND R5 ; [+2]
       22 GETIMPORT                        R4 K12 [math.round]
       24 CALL                             R4 1 1
       25 DIVK                             R2 R4 K9 [10]
       26 JUMP                             ; [+6]
       27 FASTCALL1                        MATH_ROUND R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K12 [math.round]
       31 CALL                             R4 1 1
       32 MOVE                             R2 R4
       33 CALL                             R1 1 -1
       34 CALL                             R0 -1 0
       35 JUMP                             ; [+49]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R0 R1 K2 ["setNumberRange"]
       39 GETIMPORT                        R1 K5 [NumberRange.new]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K13 ["min"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K8 ["roundToTenths"]
       47 JUMPIFNOT                        R4 ; [+7]
       48 MULK                             R5 R3 K9 [10]
       49 FASTCALL1                        MATH_ROUND R5 ; [+2]
       50 GETIMPORT                        R4 K12 [math.round]
       52 CALL                             R4 1 1
       53 DIVK                             R2 R4 K9 [10]
       54 JUMP                             ; [+6]
       55 FASTCALL1                        MATH_ROUND R3 ; [+3]
       56 MOVE                             R5 R3
       57 GETIMPORT                        R4 K12 [math.round]
       59 CALL                             R4 1 1
       60 MOVE                             R2 R4
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K6 ["numberRange"]
       64 GETTABLEKS                       R4 R5 K7 ["Max"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R5 R6 K8 ["roundToTenths"]
       69 JUMPIFNOT                        R5 ; [+7]
       70 MULK                             R6 R4 K9 [10]
       71 FASTCALL1                        MATH_ROUND R6 ; [+2]
       72 GETIMPORT                        R5 K12 [math.round]
       74 CALL                             R5 1 1
       75 DIVK                             R3 R5 K9 [10]
       76 JUMP                             ; [+6]
       77 FASTCALL1                        MATH_ROUND R4 ; [+3]
       78 MOVE                             R6 R4
       79 GETIMPORT                        R5 K12 [math.round]
       81 CALL                             R5 1 1
       82 MOVE                             R3 R5
       83 CALL                             R1 2 -1
       84 CALL                             R0 -1 0
       85 GETUPVAL                         R2 0
       86 GETTABLEKS                       R1 R2 K0 ["toggleRangeProps"]
       88 GETTABLEKS                       R0 R1 K14 ["setToggleValue"]
       90 GETUPVAL                         R4 0
       91 GETTABLEKS                       R3 R4 K0 ["toggleRangeProps"]
       93 GETTABLEKS                       R2 R3 K1 ["toggleValue"]
       95 NOT                              R1 R2
       96 CALL                             R0 1 0
       97 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R0 K1 ["toggleRangeProps"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R4 R0 K1 ["toggleRangeProps"]
       11 GETTABLEKS                       R3 R4 K2 ["toggleValue"]
       13 JUMP                             ; [+1]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R0 K1 ["toggleRangeProps"]
       17 JUMPIFNOT                        R4 ; [+5]
       18 GETTABLEKS                       R6 R0 K1 ["toggleRangeProps"]
       20 GETTABLEKS                       R5 R6 K2 ["toggleValue"]
       22 NOT                              R4 R5
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R6 R7 K3 ["useState"]
       28 GETTABLEKS                       R7 R0 K4 ["numberRange"]
       30 CALL                             R6 1 2
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R10 0 1
       40 GETTABLEKS                       R11 R0 K4 ["numberRange"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 0
       45 GETTABLEKS                       R8 R0 K1 ["toggleRangeProps"]
       47 JUMPIFNOT                        R8 ; [+15]
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R8 R9 K5 ["useEffect"]
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R10 0 1
       56 GETTABLEKS                       R12 R0 K1 ["toggleRangeProps"]
       58 GETTABLEKS                       R11 R12 K2 ["toggleValue"]
       60 SETLIST                          R10 R11 1 [1]
       62 CALL                             R8 2 0
       63 DUPCLOSURE                       R8 K6 [PROTO_5]
       64 CAPTURE                          UPVAL U3
       65 NEWCLOSURE                       R9 P4
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R0
       68 NEWCLOSURE                       R10 P5
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R0
       73 GETUPVAL                         R11 4
       74 GETUPVAL                         R12 5
       75 NEWTABLE                         R13 4 0
       77 GETUPVAL                         R15 2
       78 GETTABLEKS                       R14 R15 K7 ["Tag"]
       80 GETUPVAL                         R15 6
       81 LOADK                            R16 K8 ["X-Column"]
       82 LOADK                            R17 K9 ["X-Left"]
       83 GETUPVAL                         R19 7
       84 CALL                             R19 0 1
       85 JUMPIFNOT                        R19 ; [+2]
       86 LOADK                            R18 K10 ["X-DefaultSize"]
       87 JUMP                             ; [+1]
       88 LOADNIL                          R18
       89 CALL                             R15 3 1
       90 SETTABLE                         R15 R13 R14
       91 GETIMPORT                        R14 K13 [UDim2.new]
       93 CALL                             R14 0 1
       94 SETTABLEKS                       R14 R13 K14 ["Size"]
       96 GETIMPORT                        R14 K18 [Enum.AutomaticSize.XY]
       98 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
      100 DUPTABLE                         R14 K21 [{"SliderAndInput", "SetMinMaxToggle"}]
      101 GETUPVAL                         R15 4
      102 GETUPVAL                         R16 5
      103 NEWTABLE                         R17 4 0
      105 GETUPVAL                         R19 2
      106 GETTABLEKS                       R18 R19 K7 ["Tag"]
      108 GETUPVAL                         R19 6
      109 JUMPIFNOT                        R3 ; [+2]
      110 LOADK                            R20 K8 ["X-Column"]
      111 JUMP                             ; [+1]
      112 LOADK                            R20 K22 ["X-Row"]
      113 GETUPVAL                         R22 7
      114 CALL                             R22 0 1
      115 JUMPIFNOT                        R22 ; [+2]
      116 LOADK                            R21 K10 ["X-DefaultSize"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R21
      119 CALL                             R19 2 1
      120 SETTABLE                         R19 R17 R18
      121 GETIMPORT                        R18 K13 [UDim2.new]
      123 CALL                             R18 0 1
      124 SETTABLEKS                       R18 R17 K14 ["Size"]
      126 GETIMPORT                        R18 K18 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R18 R17 K16 ["AutomaticSize"]
      130 MOVE                             R18 R2
      131 CALL                             R18 0 1
      132 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      134 DUPTABLE                         R18 K27 [{"UIListLayout", "Slider", "SetMinMaxToggle", "Input"}]
      135 GETUPVAL                         R20 8
      136 CALL                             R20 0 1
      137 JUMPIFNOT                        R20 ; [+13]
      138 JUMPIFNOT                        R3 ; [+12]
      139 GETUPVAL                         R19 4
      140 LOADK                            R20 K24 ["UIListLayout"]
      141 DUPTABLE                         R21 K29 [{"Padding"}]
      142 GETIMPORT                        R22 K31 [UDim.new]
      144 LOADN                            R23 0
      145 LOADN                            R24 0
      146 CALL                             R22 2 1
      147 SETTABLEKS                       R22 R21 K28 ["Padding"]
      149 CALL                             R19 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R19
      152 SETTABLEKS                       R19 R18 K24 ["UIListLayout"]
      154 GETUPVAL                         R19 4
      155 GETUPVAL                         R20 9
      156 DUPTABLE                         R21 K40 [{"LayoutOrder", "VerticalDragTolerance", "Size", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "OnInputEnded", "HideLowerKnob"}]
      157 MOVE                             R22 R2
      158 CALL                             R22 0 1
      159 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      161 LOADN                            R22 14
      162 SETTABLEKS                       R22 R21 K32 ["VerticalDragTolerance"]
      164 GETIMPORT                        R22 K42 [UDim2.fromOffset]
      166 LOADN                            R23 230
      167 GETUPVAL                         R25 10
      168 GETTABLEKS                       R24 R25 K43 ["STANDARD_HEIGHT"]
      170 CALL                             R22 2 1
      171 SETTABLEKS                       R22 R21 K14 ["Size"]
      173 GETTABLEKS                       R22 R6 K35 ["Min"]
      175 SETTABLEKS                       R22 R21 K33 ["LowerRangeValue"]
      177 GETTABLEKS                       R22 R6 K36 ["Max"]
      179 SETTABLEKS                       R22 R21 K34 ["UpperRangeValue"]
      181 GETTABLEKS                       R22 R0 K44 ["min"]
      183 SETTABLEKS                       R22 R21 K35 ["Min"]
      185 GETTABLEKS                       R22 R0 K45 ["max"]
      187 SETTABLEKS                       R22 R21 K36 ["Max"]
      189 NEWCLOSURE                       R22 P6
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R0
      193 SETTABLEKS                       R22 R21 K37 ["OnValuesChanged"]
      195 NEWCLOSURE                       R22 P7
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R6
      199 SETTABLEKS                       R22 R21 K38 ["OnInputEnded"]
      201 SETTABLEKS                       R4 R21 K39 ["HideLowerKnob"]
      203 CALL                             R19 2 1
      204 SETTABLEKS                       R19 R18 K25 ["Slider"]
      206 GETUPVAL                         R20 8
      207 CALL                             R20 0 1
      208 JUMPIFNOT                        R20 ; [+41]
      209 GETTABLEKS                       R20 R0 K1 ["toggleRangeProps"]
      211 JUMPIFNOT                        R20 ; [+5]
      212 GETTABLEKS                       R21 R0 K1 ["toggleRangeProps"]
      214 GETTABLEKS                       R20 R21 K2 ["toggleValue"]
      216 JUMPIF                           R20 ; [+2]
      217 LOADNIL                          R19
      218 JUMP                             ; [+32]
      219 GETUPVAL                         R19 4
      220 GETUPVAL                         R20 11
      221 DUPTABLE                         R21 K49 [{"LayoutOrder", "min", "numberRange", "setNumberRange", "toggleRangeProps", "round", "roundToTenths"}]
      222 MOVE                             R22 R2
      223 CALL                             R22 0 1
      224 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      226 GETTABLEKS                       R22 R0 K44 ["min"]
      228 SETTABLEKS                       R22 R21 K44 ["min"]
      230 GETTABLEKS                       R22 R0 K4 ["numberRange"]
      232 SETTABLEKS                       R22 R21 K4 ["numberRange"]
      234 GETTABLEKS                       R22 R0 K46 ["setNumberRange"]
      236 SETTABLEKS                       R22 R21 K46 ["setNumberRange"]
      238 GETTABLEKS                       R22 R0 K1 ["toggleRangeProps"]
      240 SETTABLEKS                       R22 R21 K1 ["toggleRangeProps"]
      242 SETTABLEKS                       R5 R21 K47 ["round"]
      244 GETTABLEKS                       R22 R0 K48 ["roundToTenths"]
      246 SETTABLEKS                       R22 R21 K48 ["roundToTenths"]
      248 CALL                             R19 2 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R19
      251 SETTABLEKS                       R19 R18 K20 ["SetMinMaxToggle"]
      253 GETUPVAL                         R19 4
      254 GETUPVAL                         R20 5
      255 NEWTABLE                         R21 4 0
      257 GETUPVAL                         R23 2
      258 GETTABLEKS                       R22 R23 K7 ["Tag"]
      260 GETUPVAL                         R23 6
      261 LOADK                            R24 K50 ["X-RowS"]
      262 LOADK                            R25 K51 ["X-Middle"]
      263 GETUPVAL                         R27 7
      264 CALL                             R27 0 1
      265 JUMPIFNOT                        R27 ; [+2]
      266 LOADK                            R26 K10 ["X-DefaultSize"]
      267 JUMP                             ; [+1]
      268 LOADNIL                          R26
      269 CALL                             R23 3 1
      270 SETTABLE                         R23 R21 R22
      271 GETIMPORT                        R22 K13 [UDim2.new]
      273 CALL                             R22 0 1
      274 SETTABLEKS                       R22 R21 K14 ["Size"]
      276 GETIMPORT                        R22 K18 [Enum.AutomaticSize.XY]
      278 SETTABLEKS                       R22 R21 K16 ["AutomaticSize"]
      280 MOVE                             R22 R2
      281 CALL                             R22 0 1
      282 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      284 DUPTABLE                         R22 K57 [{"UIPadding", "LowerRangeInput", "Hyphen", "UpperRangeInput", "Text"}]
      285 JUMPIFNOT                        R3 ; [+2]
      286 LOADNIL                          R23
      287 JUMP                             ; [+11]
      288 GETUPVAL                         R23 4
      289 LOADK                            R24 K52 ["UIPadding"]
      290 DUPTABLE                         R25 K59 [{"PaddingLeft"}]
      291 GETIMPORT                        R26 K31 [UDim.new]
      293 LOADN                            R27 0
      294 LOADN                            R28 12
      295 CALL                             R26 2 1
      296 SETTABLEKS                       R26 R25 K58 ["PaddingLeft"]
      298 CALL                             R23 2 1
      299 SETTABLEKS                       R23 R22 K52 ["UIPadding"]
      301 NOT                              R23 R4
      302 JUMPIFNOT                        R23 ; [+50]
      303 GETUPVAL                         R23 4
      304 GETUPVAL                         R24 12
      305 DUPTABLE                         R25 K63 [{"LayoutOrder", "Size", "Text", "OnFocusLost", "OnEnter", "OnValidateText"}]
      306 MOVE                             R26 R2
      307 CALL                             R26 0 1
      308 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      310 GETIMPORT                        R26 K42 [UDim2.fromOffset]
      312 LOADN                            R27 44
      313 GETUPVAL                         R29 10
      314 GETTABLEKS                       R28 R29 K43 ["STANDARD_HEIGHT"]
      316 CALL                             R26 2 1
      317 SETTABLEKS                       R26 R25 K14 ["Size"]
      319 GETTABLEKS                       R28 R6 K35 ["Min"]
      321 GETTABLEKS                       R29 R0 K48 ["roundToTenths"]
      323 JUMPIFNOT                        R29 ; [+7]
      324 MULK                             R30 R28 K64 [10]
      325 FASTCALL1                        MATH_ROUND R30 ; [+2]
      326 GETIMPORT                        R29 K66 [math.round]
      328 CALL                             R29 1 1
      329 DIVK                             R27 R29 K64 [10]
      330 JUMP                             ; [+6]
      331 FASTCALL1                        MATH_ROUND R28 ; [+3]
      332 MOVE                             R30 R28
      333 GETIMPORT                        R29 K66 [math.round]
      335 CALL                             R29 1 1
      336 MOVE                             R27 R29
      337 FASTCALL1                        TOSTRING R27 ; [+2]
      338 GETIMPORT                        R26 K68 [tostring]
      340 CALL                             R26 1 1
      341 SETTABLEKS                       R26 R25 K56 ["Text"]
      343 SETTABLEKS                       R9 R25 K60 ["OnFocusLost"]
      345 SETTABLEKS                       R9 R25 K61 ["OnEnter"]
      347 NEWCLOSURE                       R26 P8
      348 CAPTURE                          UPVAL U3
      349 CAPTURE                          VAL R1
      350 SETTABLEKS                       R26 R25 K62 ["OnValidateText"]
      352 CALL                             R23 2 1
      353 SETTABLEKS                       R23 R22 K53 ["LowerRangeInput"]
      355 JUMPIFNOT                        R4 ; [+2]
      356 LOADNIL                          R23
      357 JUMP                             ; [+30]
      358 GETUPVAL                         R23 4
      359 LOADK                            R24 K69 ["TextLabel"]
      360 NEWTABLE                         R25 8 0
      362 GETUPVAL                         R27 2
      363 GETTABLEKS                       R26 R27 K7 ["Tag"]
      365 LOADK                            R27 K70 ["Component-TextLabel"]
      366 SETTABLE                         R27 R25 R26
      367 GETIMPORT                        R26 K42 [UDim2.fromOffset]
      369 LOADN                            R27 7
      370 GETUPVAL                         R29 10
      371 GETTABLEKS                       R28 R29 K43 ["STANDARD_HEIGHT"]
      373 CALL                             R26 2 1
      374 SETTABLEKS                       R26 R25 K14 ["Size"]
      376 LOADK                            R26 K71 ["-"]
      377 SETTABLEKS                       R26 R25 K56 ["Text"]
      379 MOVE                             R26 R2
      380 CALL                             R26 0 1
      381 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      383 GETIMPORT                        R26 K73 [Enum.AutomaticSize.X]
      385 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      387 CALL                             R23 2 1
      388 SETTABLEKS                       R23 R22 K54 ["Hyphen"]
      390 GETUPVAL                         R23 4
      391 GETUPVAL                         R24 12
      392 DUPTABLE                         R25 K63 [{"LayoutOrder", "Size", "Text", "OnFocusLost", "OnEnter", "OnValidateText"}]
      393 MOVE                             R26 R2
      394 CALL                             R26 0 1
      395 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      397 GETIMPORT                        R26 K42 [UDim2.fromOffset]
      399 LOADN                            R27 44
      400 GETUPVAL                         R29 10
      401 GETTABLEKS                       R28 R29 K43 ["STANDARD_HEIGHT"]
      403 CALL                             R26 2 1
      404 SETTABLEKS                       R26 R25 K14 ["Size"]
      406 GETTABLEKS                       R28 R6 K36 ["Max"]
      408 GETTABLEKS                       R29 R0 K48 ["roundToTenths"]
      410 JUMPIFNOT                        R29 ; [+7]
      411 MULK                             R30 R28 K64 [10]
      412 FASTCALL1                        MATH_ROUND R30 ; [+2]
      413 GETIMPORT                        R29 K66 [math.round]
      415 CALL                             R29 1 1
      416 DIVK                             R27 R29 K64 [10]
      417 JUMP                             ; [+6]
      418 FASTCALL1                        MATH_ROUND R28 ; [+3]
      419 MOVE                             R30 R28
      420 GETIMPORT                        R29 K66 [math.round]
      422 CALL                             R29 1 1
      423 MOVE                             R27 R29
      424 FASTCALL1                        TOSTRING R27 ; [+2]
      425 GETIMPORT                        R26 K68 [tostring]
      427 CALL                             R26 1 1
      428 SETTABLEKS                       R26 R25 K56 ["Text"]
      430 SETTABLEKS                       R10 R25 K60 ["OnFocusLost"]
      432 SETTABLEKS                       R10 R25 K61 ["OnEnter"]
      434 NEWCLOSURE                       R26 P9
      435 CAPTURE                          UPVAL U3
      436 CAPTURE                          VAL R1
      437 SETTABLEKS                       R26 R25 K62 ["OnValidateText"]
      439 CALL                             R23 2 1
      440 SETTABLEKS                       R23 R22 K55 ["UpperRangeInput"]
      442 GETUPVAL                         R23 4
      443 LOADK                            R24 K69 ["TextLabel"]
      444 NEWTABLE                         R25 8 0
      446 GETUPVAL                         R27 2
      447 GETTABLEKS                       R26 R27 K7 ["Tag"]
      449 LOADK                            R27 K70 ["Component-TextLabel"]
      450 SETTABLE                         R27 R25 R26
      451 GETIMPORT                        R26 K42 [UDim2.fromOffset]
      453 LOADN                            R27 0
      454 LOADN                            R28 28
      455 CALL                             R26 2 1
      456 SETTABLEKS                       R26 R25 K14 ["Size"]
      458 GETTABLEKS                       R26 R0 K74 ["inputFieldText"]
      460 SETTABLEKS                       R26 R25 K56 ["Text"]
      462 MOVE                             R26 R2
      463 CALL                             R26 0 1
      464 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      466 GETIMPORT                        R26 K73 [Enum.AutomaticSize.X]
      468 SETTABLEKS                       R26 R25 K16 ["AutomaticSize"]
      470 CALL                             R23 2 1
      471 SETTABLEKS                       R23 R22 K56 ["Text"]
      473 CALL                             R19 3 1
      474 SETTABLEKS                       R19 R18 K26 ["Input"]
      476 DUPTABLE                         R19 K75 [{"UIPadding"}]
      477 GETUPVAL                         R21 8
      478 CALL                             R21 0 1
      479 JUMPIF                           R21 ; [+12]
      480 GETUPVAL                         R20 4
      481 LOADK                            R21 K52 ["UIPadding"]
      482 DUPTABLE                         R22 K59 [{"PaddingLeft"}]
      483 GETIMPORT                        R23 K31 [UDim.new]
      485 LOADN                            R24 0
      486 LOADN                            R25 5
      487 CALL                             R23 2 1
      488 SETTABLEKS                       R23 R22 K58 ["PaddingLeft"]
      490 CALL                             R20 2 1
      491 JUMP                             ; [+1]
      492 LOADNIL                          R20
      493 SETTABLEKS                       R20 R19 K52 ["UIPadding"]
      495 CALL                             R15 4 1
      496 SETTABLEKS                       R15 R14 K19 ["SliderAndInput"]
      498 GETUPVAL                         R16 8
      499 CALL                             R16 0 1
      500 JUMPIFNOT                        R16 ; [+41]
      501 GETTABLEKS                       R16 R0 K1 ["toggleRangeProps"]
      503 JUMPIFNOT                        R16 ; [+5]
      504 GETTABLEKS                       R17 R0 K1 ["toggleRangeProps"]
      506 GETTABLEKS                       R16 R17 K2 ["toggleValue"]
      508 JUMPIFNOT                        R16 ; [+2]
      509 LOADNIL                          R15
      510 JUMP                             ; [+66]
      511 GETUPVAL                         R15 4
      512 GETUPVAL                         R16 11
      513 DUPTABLE                         R17 K49 [{"LayoutOrder", "min", "numberRange", "setNumberRange", "toggleRangeProps", "round", "roundToTenths"}]
      514 MOVE                             R18 R2
      515 CALL                             R18 0 1
      516 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      518 GETTABLEKS                       R18 R0 K44 ["min"]
      520 SETTABLEKS                       R18 R17 K44 ["min"]
      522 GETTABLEKS                       R18 R0 K4 ["numberRange"]
      524 SETTABLEKS                       R18 R17 K4 ["numberRange"]
      526 GETTABLEKS                       R18 R0 K46 ["setNumberRange"]
      528 SETTABLEKS                       R18 R17 K46 ["setNumberRange"]
      530 GETTABLEKS                       R18 R0 K1 ["toggleRangeProps"]
      532 SETTABLEKS                       R18 R17 K1 ["toggleRangeProps"]
      534 SETTABLEKS                       R5 R17 K47 ["round"]
      536 GETTABLEKS                       R18 R0 K48 ["roundToTenths"]
      538 SETTABLEKS                       R18 R17 K48 ["roundToTenths"]
      540 CALL                             R15 2 1
      541 JUMP                             ; [+35]
      542 GETTABLEKS                       R16 R0 K1 ["toggleRangeProps"]
      544 JUMPIF                           R16 ; [+2]
      545 LOADNIL                          R15
      546 JUMP                             ; [+30]
      547 GETUPVAL                         R15 4
      548 GETUPVAL                         R16 13
      549 NEWTABLE                         R17 8 0
      551 GETUPVAL                         R19 2
      552 GETTABLEKS                       R18 R19 K7 ["Tag"]
      554 LOADK                            R19 K76 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
      555 SETTABLE                         R19 R17 R18
      556 MOVE                             R18 R2
      557 CALL                             R18 0 1
      558 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      560 GETTABLEKS                       R19 R0 K1 ["toggleRangeProps"]
      562 GETTABLEKS                       R18 R19 K2 ["toggleValue"]
      564 SETTABLEKS                       R18 R17 K77 ["Checked"]
      566 GETTABLEKS                       R19 R0 K1 ["toggleRangeProps"]
      568 GETTABLEKS                       R18 R19 K78 ["toggleText"]
      570 SETTABLEKS                       R18 R17 K56 ["Text"]
      572 NEWCLOSURE                       R18 P10
      573 CAPTURE                          VAL R0
      574 SETTABLEKS                       R18 R17 K79 ["OnClick"]
      576 CALL                             R15 2 1
      577 SETTABLEKS                       R15 R14 K20 ["SetMinMaxToggle"]
      579 CALL                             R11 3 -1
      580 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Flags"]
       43 GETTABLEKS                       R6 R7 K14 ["getFFlagFeatureMigrateStylingV2"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R8 R9 K7 ["Util"]
       52 GETTABLEKS                       R7 R8 K15 ["isValidNumberInput"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Src"]
       59 GETTABLEKS                       R9 R10 K13 ["Flags"]
       61 GETTABLEKS                       R8 R9 K16 ["getFFlagAvatarSettingsReorderCustomScaleComponents"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R2 K17 ["ContextServices"]
       66 GETTABLEKS                       R9 R8 K18 ["Localization"]
       68 GETTABLEKS                       R10 R2 K19 ["UI"]
       70 GETTABLEKS                       R11 R10 K20 ["Pane"]
       72 GETTABLEKS                       R12 R10 K21 ["RangeSlider"]
       74 GETTABLEKS                       R13 R10 K22 ["Checkbox"]
       76 GETTABLEKS                       R14 R10 K23 ["TextInput"]
       78 GETTABLEKS                       R15 R4 K24 ["createNextOrder"]
       80 GETTABLEKS                       R16 R3 K25 ["createElement"]
       82 GETTABLEKS                       R18 R2 K26 ["Styling"]
       84 GETTABLEKS                       R17 R18 K27 ["joinTags"]
       86 DUPCLOSURE                       R18 K28 [PROTO_1]
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R3
       90 DUPCLOSURE                       R19 K29 [PROTO_13]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R13
      105 RETURN                           R19 1
