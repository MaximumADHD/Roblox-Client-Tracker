PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R0 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
        9 GETIMPORT                        R1 K5 [NumberRange.new]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["round"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K7 ["numberRange"]
       17 GETTABLEKS                       R3 R3 K8 ["Max"]
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 -1
       21 CALL                             R0 -1 0
       22 JUMP                             ; [+23]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
       26 GETIMPORT                        R1 K5 [NumberRange.new]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K6 ["round"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K9 ["min"]
       34 CALL                             R2 1 1
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K6 ["round"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["numberRange"]
       41 GETTABLEKS                       R4 R4 K8 ["Max"]
       43 CALL                             R3 1 -1
       44 CALL                             R1 -1 -1
       45 CALL                             R0 -1 0
       46 GETUPVAL                         R0 0
       47 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
       49 GETTABLEKS                       R0 R0 K10 ["setToggleValue"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K0 ["toggleRangeProps"]
       54 GETTABLEKS                       R2 R2 K1 ["toggleValue"]
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
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["Tag"]
       15 LOADK                            R5 K5 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
       16 SETTABLE                         R5 R3 R4
       17 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       19 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       21 GETTABLEKS                       R4 R0 K0 ["toggleRangeProps"]
       23 GETTABLEKS                       R4 R4 K7 ["toggleValue"]
       25 SETTABLEKS                       R4 R3 K8 ["Checked"]
       27 GETTABLEKS                       R4 R0 K0 ["toggleRangeProps"]
       29 GETTABLEKS                       R4 R4 K9 ["toggleText"]
       31 SETTABLEKS                       R4 R3 K10 ["Text"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R4 R3 K11 ["OnClick"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["roundToTenths"]
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
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["numberRange"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["numberRange"]
       11 GETTABLEKS                       R0 R0 K1 ["Min"]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["numberRange"]
       16 GETTABLEKS                       R1 R1 K2 ["Max"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+49]
       20 GETUPVAL                         R0 1
       21 GETIMPORT                        R1 K5 [NumberRange.new]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["min"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K7 ["roundToTenths"]
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
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K0 ["numberRange"]
       46 GETTABLEKS                       R4 R4 K2 ["Max"]
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K7 ["roundToTenths"]
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
       68 GETUPVAL                         R1 2
       69 GETTABLEKS                       R1 R1 K12 ["toggleRangeProps"]
       71 FASTCALL2K                       ASSERT R1 K13 ; [+4]
       73 LOADK                            R2 K13 ["toggleRangeProps cannot be nil if hideLowerRange is true"]
       74 GETIMPORT                        R0 K15 [assert]
       76 CALL                             R0 2 0
       77 GETUPVAL                         R0 2
       78 GETTABLEKS                       R0 R0 K12 ["toggleRangeProps"]
       80 GETTABLEKS                       R0 R0 K16 ["setToggleValue"]
       82 LOADB                            R1 1
       83 CALL                             R0 1 0
       84 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R0 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["numberRange"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETIMPORT                        R1 K5 [NumberRange.new]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["min"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K7 ["roundToTenths"]
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
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K2 ["numberRange"]
       38 GETTABLEKS                       R4 R4 K12 ["Max"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K7 ["roundToTenths"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["roundToTenths"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 MULK                             R3 R0 K1 [10]
        5 FASTCALL1                        MATH_ROUND R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.round]
        8 CALL                             R2 1 1
        9 DIVK                             R1 R2 K1 [10]
       10 JUMP                             ; [+5]
       11 FASTCALL1                        MATH_ROUND R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K4 [math.round]
       15 CALL                             R1 1 1
       16 LOADB                            R2 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["min"]
       20 JUMPIFNOTLE                      R3 R1 ; [+8]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K6 ["max"]
       25 JUMPIFLE                         R1 R3 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+30]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["roundToTenths"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 MULK                             R4 R0 K1 [10]
        7 FASTCALL1                        MATH_ROUND R4 ; [+2]
        8 GETIMPORT                        R3 K4 [math.round]
       10 CALL                             R3 1 1
       11 DIVK                             R2 R3 K1 [10]
       12 JUMP                             ; [+5]
       13 FASTCALL1                        MATH_ROUND R0 ; [+3]
       14 MOVE                             R3 R0
       15 GETIMPORT                        R2 K4 [math.round]
       17 CALL                             R2 1 1
       18 LOADB                            R1 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["min"]
       22 JUMPIFNOTLE                      R3 R2 ; [+8]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K6 ["max"]
       27 JUMPIFLE                         R2 R3 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 JUMPIFNOT                        R1 ; [+2]
       32 LOADNIL                          R1
       33 RETURN                           R1 1
       34 GETUPVAL                         R1 2
       35 LOADK                            R3 K7 ["General"]
       36 LOADK                            R4 K8 ["InputOutOfRange"]
       37 DUPTABLE                         R5 K9 [{"min", "max"}]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K5 ["min"]
       41 FASTCALL1                        TOSTRING R7 ; [+2]
       42 GETIMPORT                        R6 K11 [tostring]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R6 R5 K5 ["min"]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K6 ["max"]
       50 FASTCALL1                        TOSTRING R7 ; [+2]
       51 GETIMPORT                        R6 K11 [tostring]
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K6 ["max"]
       56 NAMECALL                         R1 R1 K12 ["getText"]
       58 CALL                             R1 4 -1
       59 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+8]
        4 LOADB                            R3 0
        5 GETUPVAL                         R4 1
        6 LOADK                            R6 K0 ["General"]
        7 LOADK                            R7 K1 ["InvalidInput"]
        8 NAMECALL                         R4 R4 K2 ["getText"]
       10 CALL                             R4 3 -1
       11 RETURN                           R3 -1
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 JUMPIFNOT                        R3 ; [+3]
       19 LOADB                            R4 0
       20 MOVE                             R5 R3
       21 RETURN                           R4 2
       22 LOADB                            R4 1
       23 RETURN                           R4 1

PROTO_8:
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

PROTO_9:
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
       13 JUMPIFNOT                        R3 ; [+31]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K0 ["roundToTenths"]
       17 JUMPIFNOT                        R5 ; [+7]
       18 MULK                             R6 R2 K1 [10]
       19 FASTCALL1                        MATH_ROUND R6 ; [+2]
       20 GETIMPORT                        R5 K4 [math.round]
       22 CALL                             R5 1 1
       23 DIVK                             R4 R5 K1 [10]
       24 JUMP                             ; [+5]
       25 FASTCALL1                        MATH_ROUND R2 ; [+3]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R4 K4 [math.round]
       29 CALL                             R4 1 1
       30 LOADB                            R3 0
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K5 ["min"]
       34 JUMPIFNOTLE                      R5 R4 ; [+8]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["max"]
       39 JUMPIFLE                         R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 JUMPIF                           R3 ; [+1]
       44 RETURN                           R0 0
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K7 ["numberRange"]
       48 GETTABLEKS                       R3 R3 K8 ["Max"]
       50 JUMPIFNOTLT                      R3 R2 ; [+25]
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K9 ["setNumberRange"]
       55 GETIMPORT                        R4 K12 [NumberRange.new]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R6 R6 K0 ["roundToTenths"]
       60 JUMPIFNOT                        R6 ; [+7]
       61 MULK                             R7 R2 K1 [10]
       62 FASTCALL1                        MATH_ROUND R7 ; [+2]
       63 GETIMPORT                        R6 K4 [math.round]
       65 CALL                             R6 1 1
       66 DIVK                             R5 R6 K1 [10]
       67 JUMP                             ; [+5]
       68 FASTCALL1                        MATH_ROUND R2 ; [+3]
       69 MOVE                             R6 R2
       70 GETIMPORT                        R5 K4 [math.round]
       72 CALL                             R5 1 1
       73 CALL                             R4 1 -1
       74 CALL                             R3 -1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R3 2
       77 GETTABLEKS                       R3 R3 K9 ["setNumberRange"]
       79 GETIMPORT                        R4 K12 [NumberRange.new]
       81 GETUPVAL                         R6 2
       82 GETTABLEKS                       R6 R6 K0 ["roundToTenths"]
       84 JUMPIFNOT                        R6 ; [+7]
       85 MULK                             R7 R2 K1 [10]
       86 FASTCALL1                        MATH_ROUND R7 ; [+2]
       87 GETIMPORT                        R6 K4 [math.round]
       89 CALL                             R6 1 1
       90 DIVK                             R5 R6 K1 [10]
       91 JUMP                             ; [+5]
       92 FASTCALL1                        MATH_ROUND R2 ; [+3]
       93 MOVE                             R6 R2
       94 GETIMPORT                        R5 K4 [math.round]
       96 CALL                             R5 1 1
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K7 ["numberRange"]
      100 GETTABLEKS                       R7 R7 K8 ["Max"]
      102 GETUPVAL                         R8 2
      103 GETTABLEKS                       R8 R8 K0 ["roundToTenths"]
      105 JUMPIFNOT                        R8 ; [+7]
      106 MULK                             R9 R7 K1 [10]
      107 FASTCALL1                        MATH_ROUND R9 ; [+2]
      108 GETIMPORT                        R8 K4 [math.round]
      110 CALL                             R8 1 1
      111 DIVK                             R6 R8 K1 [10]
      112 JUMP                             ; [+6]
      113 FASTCALL1                        MATH_ROUND R7 ; [+3]
      114 MOVE                             R9 R7
      115 GETIMPORT                        R8 K4 [math.round]
      117 CALL                             R8 1 1
      118 MOVE                             R6 R8
      119 CALL                             R4 2 -1
      120 CALL                             R3 -1 0
      121 RETURN                           R0 0

PROTO_10:
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
       13 JUMPIFNOT                        R3 ; [+31]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K0 ["roundToTenths"]
       17 JUMPIFNOT                        R5 ; [+7]
       18 MULK                             R6 R2 K1 [10]
       19 FASTCALL1                        MATH_ROUND R6 ; [+2]
       20 GETIMPORT                        R5 K4 [math.round]
       22 CALL                             R5 1 1
       23 DIVK                             R4 R5 K1 [10]
       24 JUMP                             ; [+5]
       25 FASTCALL1                        MATH_ROUND R2 ; [+3]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R4 K4 [math.round]
       29 CALL                             R4 1 1
       30 LOADB                            R3 0
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K5 ["min"]
       34 JUMPIFNOTLE                      R5 R4 ; [+8]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["max"]
       39 JUMPIFLE                         R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 JUMPIF                           R3 ; [+1]
       44 RETURN                           R0 0
       45 GETUPVAL                         R3 3
       46 JUMPIF                           R3 ; [+5]
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R3 R3 K7 ["Min"]
       50 JUMPIFNOTLT                      R2 R3 ; [+25]
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K8 ["setNumberRange"]
       55 GETIMPORT                        R4 K11 [NumberRange.new]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R6 R6 K0 ["roundToTenths"]
       60 JUMPIFNOT                        R6 ; [+7]
       61 MULK                             R7 R2 K1 [10]
       62 FASTCALL1                        MATH_ROUND R7 ; [+2]
       63 GETIMPORT                        R6 K4 [math.round]
       65 CALL                             R6 1 1
       66 DIVK                             R5 R6 K1 [10]
       67 JUMP                             ; [+5]
       68 FASTCALL1                        MATH_ROUND R2 ; [+3]
       69 MOVE                             R6 R2
       70 GETIMPORT                        R5 K4 [math.round]
       72 CALL                             R5 1 1
       73 CALL                             R4 1 -1
       74 CALL                             R3 -1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R3 2
       77 GETTABLEKS                       R3 R3 K8 ["setNumberRange"]
       79 GETIMPORT                        R4 K11 [NumberRange.new]
       81 GETUPVAL                         R6 4
       82 GETTABLEKS                       R6 R6 K7 ["Min"]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K0 ["roundToTenths"]
       87 JUMPIFNOT                        R7 ; [+7]
       88 MULK                             R8 R6 K1 [10]
       89 FASTCALL1                        MATH_ROUND R8 ; [+2]
       90 GETIMPORT                        R7 K4 [math.round]
       92 CALL                             R7 1 1
       93 DIVK                             R5 R7 K1 [10]
       94 JUMP                             ; [+6]
       95 FASTCALL1                        MATH_ROUND R6 ; [+3]
       96 MOVE                             R8 R6
       97 GETIMPORT                        R7 K4 [math.round]
       99 CALL                             R7 1 1
      100 MOVE                             R5 R7
      101 GETUPVAL                         R7 2
      102 GETTABLEKS                       R7 R7 K0 ["roundToTenths"]
      104 JUMPIFNOT                        R7 ; [+7]
      105 MULK                             R8 R2 K1 [10]
      106 FASTCALL1                        MATH_ROUND R8 ; [+2]
      107 GETIMPORT                        R7 K4 [math.round]
      109 CALL                             R7 1 1
      110 DIVK                             R6 R7 K1 [10]
      111 JUMP                             ; [+5]
      112 FASTCALL1                        MATH_ROUND R2 ; [+3]
      113 MOVE                             R7 R2
      114 GETIMPORT                        R6 K4 [math.round]
      116 CALL                             R6 1 1
      117 CALL                             R4 2 -1
      118 CALL                             R3 -1 0
      119 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [NumberRange.new]
        3 GETUPVAL                         R6 1
        4 JUMPIFNOT                        R6 ; [+2]
        5 LOADN                            R5 0
        6 JUMP                             ; [+1]
        7 MOVE                             R5 R0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K3 ["roundToTenths"]
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
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["roundToTenths"]
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+28]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setNumberRange"]
        5 GETIMPORT                        R1 K3 [NumberRange.new]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K4 ["Max"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K5 ["roundToTenths"]
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
       30 GETUPVAL                         R0 1
       31 GETTABLEKS                       R0 R0 K0 ["setNumberRange"]
       33 GETIMPORT                        R1 K3 [NumberRange.new]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K10 ["Min"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K5 ["roundToTenths"]
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
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R4 R4 K4 ["Max"]
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K5 ["roundToTenths"]
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
        3 GETTABLEKS                       R0 R0 K1 ["toggleValue"]
        5 JUMPIFNOT                        R0 ; [+30]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
        9 GETIMPORT                        R1 K5 [NumberRange.new]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K6 ["numberRange"]
       14 GETTABLEKS                       R3 R3 K7 ["Max"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K8 ["roundToTenths"]
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
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K2 ["setNumberRange"]
       39 GETIMPORT                        R1 K5 [NumberRange.new]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K13 ["min"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K8 ["roundToTenths"]
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
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K6 ["numberRange"]
       64 GETTABLEKS                       R4 R4 K7 ["Max"]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K8 ["roundToTenths"]
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
       85 GETUPVAL                         R0 0
       86 GETTABLEKS                       R0 R0 K0 ["toggleRangeProps"]
       88 GETTABLEKS                       R0 R0 K14 ["setToggleValue"]
       90 GETUPVAL                         R2 0
       91 GETTABLEKS                       R2 R2 K0 ["toggleRangeProps"]
       93 GETTABLEKS                       R2 R2 K1 ["toggleValue"]
       95 NOT                              R1 R2
       96 CALL                             R0 1 0
       97 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R0 K1 ["toggleRangeProps"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R3 R0 K1 ["toggleRangeProps"]
       11 GETTABLEKS                       R3 R3 K2 ["toggleValue"]
       13 JUMP                             ; [+1]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R0 K1 ["toggleRangeProps"]
       17 JUMPIFNOT                        R4 ; [+5]
       18 GETTABLEKS                       R5 R0 K1 ["toggleRangeProps"]
       20 GETTABLEKS                       R5 R5 K2 ["toggleValue"]
       22 NOT                              R4 R5
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R0
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["useState"]
       28 GETTABLEKS                       R7 R0 K4 ["numberRange"]
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K5 ["useEffect"]
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
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R10 0 1
       56 GETTABLEKS                       R11 R0 K1 ["toggleRangeProps"]
       58 GETTABLEKS                       R11 R11 K2 ["toggleValue"]
       60 SETLIST                          R10 R11 1 [1]
       62 CALL                             R8 2 0
       63 GETTABLEKS                       R8 R0 K6 ["enforceInputBounds"]
       65 JUMPIFNOT                        R8 ; [+2]
       66 GETUPVAL                         R8 3
       67 CALL                             R8 0 1
       68 NEWCLOSURE                       R9 P3
       69 CAPTURE                          VAL R0
       70 NEWCLOSURE                       R10 P4
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R1
       74 NEWCLOSURE                       R11 P5
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R10
       78 DUPCLOSURE                       R12 K7 [PROTO_8]
       79 CAPTURE                          UPVAL U4
       80 NEWCLOSURE                       R13 P7
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R0
       84 NEWCLOSURE                       R14 P8
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 GETUPVAL                         R15 5
       91 GETUPVAL                         R16 6
       92 NEWTABLE                         R17 4 0
       94 GETUPVAL                         R18 2
       95 GETTABLEKS                       R18 R18 K8 ["Tag"]
       97 GETUPVAL                         R19 7
       98 LOADK                            R20 K9 ["X-Column"]
       99 LOADK                            R21 K10 ["X-Left"]
      100 GETUPVAL                         R23 8
      101 CALL                             R23 0 1
      102 JUMPIFNOT                        R23 ; [+2]
      103 LOADK                            R22 K11 ["X-DefaultSize"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R22
      106 CALL                             R19 3 1
      107 SETTABLE                         R19 R17 R18
      108 GETIMPORT                        R18 K14 [UDim2.new]
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K15 ["Size"]
      113 GETIMPORT                        R18 K19 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R18 R17 K17 ["AutomaticSize"]
      117 DUPTABLE                         R18 K22 [{"SliderAndInput", "SetMinMaxToggle"}]
      118 GETUPVAL                         R19 5
      119 GETUPVAL                         R20 6
      120 NEWTABLE                         R21 4 0
      122 GETUPVAL                         R22 2
      123 GETTABLEKS                       R22 R22 K8 ["Tag"]
      125 GETUPVAL                         R23 7
      126 JUMPIFNOT                        R3 ; [+2]
      127 LOADK                            R24 K9 ["X-Column"]
      128 JUMP                             ; [+1]
      129 LOADK                            R24 K23 ["X-Row"]
      130 GETUPVAL                         R26 8
      131 CALL                             R26 0 1
      132 JUMPIFNOT                        R26 ; [+2]
      133 LOADK                            R25 K11 ["X-DefaultSize"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R25
      136 CALL                             R23 2 1
      137 SETTABLE                         R23 R21 R22
      138 GETIMPORT                        R22 K14 [UDim2.new]
      140 CALL                             R22 0 1
      141 SETTABLEKS                       R22 R21 K15 ["Size"]
      143 GETIMPORT                        R22 K19 [Enum.AutomaticSize.XY]
      145 SETTABLEKS                       R22 R21 K17 ["AutomaticSize"]
      147 MOVE                             R22 R2
      148 CALL                             R22 0 1
      149 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      151 DUPTABLE                         R22 K28 [{"UIListLayout", "Slider", "SetMinMaxToggle", "Input"}]
      152 GETUPVAL                         R24 9
      153 CALL                             R24 0 1
      154 JUMPIFNOT                        R24 ; [+13]
      155 JUMPIFNOT                        R3 ; [+12]
      156 GETUPVAL                         R23 5
      157 LOADK                            R24 K25 ["UIListLayout"]
      158 DUPTABLE                         R25 K30 [{"Padding"}]
      159 GETIMPORT                        R26 K32 [UDim.new]
      161 LOADN                            R27 0
      162 LOADN                            R28 0
      163 CALL                             R26 2 1
      164 SETTABLEKS                       R26 R25 K29 ["Padding"]
      166 CALL                             R23 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R23
      169 SETTABLEKS                       R23 R22 K25 ["UIListLayout"]
      171 GETUPVAL                         R23 5
      172 GETUPVAL                         R24 10
      173 DUPTABLE                         R25 K42 [{["LayoutOrder"], ["VerticalDragTolerance"] = 14, ["Size"], ["LowerRangeValue"], ["UpperRangeValue"], ["Min"], ["Max"], ["OnValuesChanged"], ["OnInputEnded"], ["HideLowerKnob"]}]
      174 MOVE                             R26 R2
      175 CALL                             R26 0 1
      176 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      178 GETIMPORT                        R26 K44 [UDim2.fromOffset]
      180 LOADN                            R27 230
      181 GETUPVAL                         R28 11
      182 GETTABLEKS                       R28 R28 K45 ["STANDARD_HEIGHT"]
      184 CALL                             R26 2 1
      185 SETTABLEKS                       R26 R25 K15 ["Size"]
      187 GETTABLEKS                       R26 R6 K37 ["Min"]
      189 SETTABLEKS                       R26 R25 K35 ["LowerRangeValue"]
      191 GETTABLEKS                       R26 R6 K38 ["Max"]
      193 SETTABLEKS                       R26 R25 K36 ["UpperRangeValue"]
      195 GETTABLEKS                       R26 R0 K46 ["min"]
      197 SETTABLEKS                       R26 R25 K37 ["Min"]
      199 GETTABLEKS                       R26 R0 K47 ["max"]
      201 SETTABLEKS                       R26 R25 K38 ["Max"]
      203 NEWCLOSURE                       R26 P9
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R0
      207 SETTABLEKS                       R26 R25 K39 ["OnValuesChanged"]
      209 NEWCLOSURE                       R26 P10
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R6
      213 SETTABLEKS                       R26 R25 K40 ["OnInputEnded"]
      215 SETTABLEKS                       R4 R25 K41 ["HideLowerKnob"]
      217 CALL                             R23 2 1
      218 SETTABLEKS                       R23 R22 K26 ["Slider"]
      220 GETUPVAL                         R24 9
      221 CALL                             R24 0 1
      222 JUMPIFNOT                        R24 ; [+41]
      223 GETTABLEKS                       R24 R0 K1 ["toggleRangeProps"]
      225 JUMPIFNOT                        R24 ; [+5]
      226 GETTABLEKS                       R24 R0 K1 ["toggleRangeProps"]
      228 GETTABLEKS                       R24 R24 K2 ["toggleValue"]
      230 JUMPIF                           R24 ; [+2]
      231 LOADNIL                          R23
      232 JUMP                             ; [+32]
      233 GETUPVAL                         R23 5
      234 GETUPVAL                         R24 12
      235 DUPTABLE                         R25 K51 [{"LayoutOrder", "min", "numberRange", "setNumberRange", "toggleRangeProps", "round", "roundToTenths"}]
      236 MOVE                             R26 R2
      237 CALL                             R26 0 1
      238 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      240 GETTABLEKS                       R26 R0 K46 ["min"]
      242 SETTABLEKS                       R26 R25 K46 ["min"]
      244 GETTABLEKS                       R26 R0 K4 ["numberRange"]
      246 SETTABLEKS                       R26 R25 K4 ["numberRange"]
      248 GETTABLEKS                       R26 R0 K48 ["setNumberRange"]
      250 SETTABLEKS                       R26 R25 K48 ["setNumberRange"]
      252 GETTABLEKS                       R26 R0 K1 ["toggleRangeProps"]
      254 SETTABLEKS                       R26 R25 K1 ["toggleRangeProps"]
      256 SETTABLEKS                       R5 R25 K49 ["round"]
      258 GETTABLEKS                       R26 R0 K50 ["roundToTenths"]
      260 SETTABLEKS                       R26 R25 K50 ["roundToTenths"]
      262 CALL                             R23 2 1
      263 JUMP                             ; [+1]
      264 LOADNIL                          R23
      265 SETTABLEKS                       R23 R22 K21 ["SetMinMaxToggle"]
      267 GETUPVAL                         R23 5
      268 GETUPVAL                         R24 6
      269 NEWTABLE                         R25 4 0
      271 GETUPVAL                         R26 2
      272 GETTABLEKS                       R26 R26 K8 ["Tag"]
      274 GETUPVAL                         R27 7
      275 LOADK                            R28 K52 ["X-RowS"]
      276 GETUPVAL                         R30 13
      277 CALL                             R30 0 1
      278 JUMPIF                           R30 ; [+3]
      279 GETUPVAL                         R30 14
      280 CALL                             R30 0 1
      281 JUMPIFNOT                        R30 ; [+2]
      282 LOADK                            R29 K53 ["X-Top"]
      283 JUMP                             ; [+1]
      284 LOADK                            R29 K54 ["X-Middle"]
      285 GETUPVAL                         R31 8
      286 CALL                             R31 0 1
      287 JUMPIFNOT                        R31 ; [+2]
      288 LOADK                            R30 K11 ["X-DefaultSize"]
      289 JUMP                             ; [+1]
      290 LOADNIL                          R30
      291 CALL                             R27 3 1
      292 SETTABLE                         R27 R25 R26
      293 GETIMPORT                        R26 K14 [UDim2.new]
      295 CALL                             R26 0 1
      296 SETTABLEKS                       R26 R25 K15 ["Size"]
      298 GETIMPORT                        R26 K19 [Enum.AutomaticSize.XY]
      300 SETTABLEKS                       R26 R25 K17 ["AutomaticSize"]
      302 MOVE                             R26 R2
      303 CALL                             R26 0 1
      304 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      306 DUPTABLE                         R26 K60 [{"UIPadding", "LowerRangeInput", "Hyphen", "UpperRangeInput", "Text"}]
      307 JUMPIFNOT                        R3 ; [+2]
      308 LOADNIL                          R27
      309 JUMP                             ; [+11]
      310 GETUPVAL                         R27 5
      311 LOADK                            R28 K55 ["UIPadding"]
      312 DUPTABLE                         R29 K62 [{"PaddingLeft"}]
      313 GETIMPORT                        R30 K32 [UDim.new]
      315 LOADN                            R31 0
      316 LOADN                            R32 12
      317 CALL                             R30 2 1
      318 SETTABLEKS                       R30 R29 K61 ["PaddingLeft"]
      320 CALL                             R27 2 1
      321 SETTABLEKS                       R27 R26 K55 ["UIPadding"]
      323 NOT                              R27 R4
      324 JUMPIFNOT                        R27 ; [+62]
      325 GETUPVAL                         R27 5
      326 GETUPVAL                         R28 15
      327 DUPTABLE                         R29 K67 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "OnFocusLost", "OnEnter", "OnValidateText", "ErrorText"}]
      328 MOVE                             R30 R2
      329 CALL                             R30 0 1
      330 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      332 GETIMPORT                        R30 K44 [UDim2.fromOffset]
      334 LOADN                            R31 44
      335 GETUPVAL                         R32 11
      336 GETTABLEKS                       R32 R32 K45 ["STANDARD_HEIGHT"]
      338 CALL                             R30 2 1
      339 SETTABLEKS                       R30 R29 K15 ["Size"]
      341 GETUPVAL                         R31 13
      342 CALL                             R31 0 1
      343 JUMPIFNOT                        R31 ; [+3]
      344 GETIMPORT                        R30 K69 [Enum.AutomaticSize.Y]
      346 JUMP                             ; [+1]
      347 LOADNIL                          R30
      348 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      350 GETTABLEKS                       R32 R6 K37 ["Min"]
      352 GETTABLEKS                       R33 R0 K50 ["roundToTenths"]
      354 JUMPIFNOT                        R33 ; [+7]
      355 MULK                             R34 R32 K70 [10]
      356 FASTCALL1                        MATH_ROUND R34 ; [+2]
      357 GETIMPORT                        R33 K72 [math.round]
      359 CALL                             R33 1 1
      360 DIVK                             R31 R33 K70 [10]
      361 JUMP                             ; [+6]
      362 FASTCALL1                        MATH_ROUND R32 ; [+3]
      363 MOVE                             R34 R32
      364 GETIMPORT                        R33 K72 [math.round]
      366 CALL                             R33 1 1
      367 MOVE                             R31 R33
      368 FASTCALL1                        TOSTRING R31 ; [+2]
      369 GETIMPORT                        R30 K74 [tostring]
      371 CALL                             R30 1 1
      372 SETTABLEKS                       R30 R29 K59 ["Text"]
      374 SETTABLEKS                       R13 R29 K63 ["OnFocusLost"]
      376 SETTABLEKS                       R13 R29 K64 ["OnEnter"]
      378 SETTABLEKS                       R11 R29 K65 ["OnValidateText"]
      380 MOVE                             R30 R10
      381 GETTABLEKS                       R31 R6 K37 ["Min"]
      383 CALL                             R30 1 1
      384 SETTABLEKS                       R30 R29 K66 ["ErrorText"]
      386 CALL                             R27 2 1
      387 SETTABLEKS                       R27 R26 K56 ["LowerRangeInput"]
      389 JUMPIFNOT                        R4 ; [+2]
      390 LOADNIL                          R27
      391 JUMP                             ; [+30]
      392 GETUPVAL                         R27 5
      393 LOADK                            R28 K75 ["TextLabel"]
      394 NEWTABLE                         R29 8 0
      396 GETUPVAL                         R30 2
      397 GETTABLEKS                       R30 R30 K8 ["Tag"]
      399 LOADK                            R31 K76 ["Component-TextLabel"]
      400 SETTABLE                         R31 R29 R30
      401 GETIMPORT                        R30 K44 [UDim2.fromOffset]
      403 LOADN                            R31 7
      404 GETUPVAL                         R32 11
      405 GETTABLEKS                       R32 R32 K45 ["STANDARD_HEIGHT"]
      407 CALL                             R30 2 1
      408 SETTABLEKS                       R30 R29 K15 ["Size"]
      410 LOADK                            R30 K77 ["-"]
      411 SETTABLEKS                       R30 R29 K59 ["Text"]
      413 MOVE                             R30 R2
      414 CALL                             R30 0 1
      415 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      417 GETIMPORT                        R30 K79 [Enum.AutomaticSize.X]
      419 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      421 CALL                             R27 2 1
      422 SETTABLEKS                       R27 R26 K57 ["Hyphen"]
      424 GETUPVAL                         R27 5
      425 GETUPVAL                         R28 15
      426 DUPTABLE                         R29 K67 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "OnFocusLost", "OnEnter", "OnValidateText", "ErrorText"}]
      427 MOVE                             R30 R2
      428 CALL                             R30 0 1
      429 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      431 GETIMPORT                        R30 K44 [UDim2.fromOffset]
      433 LOADN                            R31 44
      434 GETUPVAL                         R32 11
      435 GETTABLEKS                       R32 R32 K45 ["STANDARD_HEIGHT"]
      437 CALL                             R30 2 1
      438 SETTABLEKS                       R30 R29 K15 ["Size"]
      440 GETUPVAL                         R31 13
      441 CALL                             R31 0 1
      442 JUMPIFNOT                        R31 ; [+3]
      443 GETIMPORT                        R30 K69 [Enum.AutomaticSize.Y]
      445 JUMP                             ; [+1]
      446 LOADNIL                          R30
      447 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      449 GETTABLEKS                       R32 R6 K38 ["Max"]
      451 GETTABLEKS                       R33 R0 K50 ["roundToTenths"]
      453 JUMPIFNOT                        R33 ; [+7]
      454 MULK                             R34 R32 K70 [10]
      455 FASTCALL1                        MATH_ROUND R34 ; [+2]
      456 GETIMPORT                        R33 K72 [math.round]
      458 CALL                             R33 1 1
      459 DIVK                             R31 R33 K70 [10]
      460 JUMP                             ; [+6]
      461 FASTCALL1                        MATH_ROUND R32 ; [+3]
      462 MOVE                             R34 R32
      463 GETIMPORT                        R33 K72 [math.round]
      465 CALL                             R33 1 1
      466 MOVE                             R31 R33
      467 FASTCALL1                        TOSTRING R31 ; [+2]
      468 GETIMPORT                        R30 K74 [tostring]
      470 CALL                             R30 1 1
      471 SETTABLEKS                       R30 R29 K59 ["Text"]
      473 SETTABLEKS                       R14 R29 K63 ["OnFocusLost"]
      475 SETTABLEKS                       R14 R29 K64 ["OnEnter"]
      477 SETTABLEKS                       R11 R29 K65 ["OnValidateText"]
      479 MOVE                             R30 R10
      480 GETTABLEKS                       R31 R6 K38 ["Max"]
      482 CALL                             R30 1 1
      483 SETTABLEKS                       R30 R29 K66 ["ErrorText"]
      485 CALL                             R27 2 1
      486 SETTABLEKS                       R27 R26 K58 ["UpperRangeInput"]
      488 GETUPVAL                         R27 5
      489 LOADK                            R28 K75 ["TextLabel"]
      490 NEWTABLE                         R29 8 0
      492 GETUPVAL                         R30 2
      493 GETTABLEKS                       R30 R30 K8 ["Tag"]
      495 LOADK                            R31 K76 ["Component-TextLabel"]
      496 SETTABLE                         R31 R29 R30
      497 GETIMPORT                        R30 K44 [UDim2.fromOffset]
      499 LOADN                            R31 0
      500 LOADN                            R32 28
      501 CALL                             R30 2 1
      502 SETTABLEKS                       R30 R29 K15 ["Size"]
      504 GETTABLEKS                       R30 R0 K80 ["inputFieldText"]
      506 SETTABLEKS                       R30 R29 K59 ["Text"]
      508 MOVE                             R30 R2
      509 CALL                             R30 0 1
      510 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      512 GETIMPORT                        R30 K79 [Enum.AutomaticSize.X]
      514 SETTABLEKS                       R30 R29 K17 ["AutomaticSize"]
      516 CALL                             R27 2 1
      517 SETTABLEKS                       R27 R26 K59 ["Text"]
      519 CALL                             R23 3 1
      520 SETTABLEKS                       R23 R22 K27 ["Input"]
      522 DUPTABLE                         R23 K81 [{"UIPadding"}]
      523 GETUPVAL                         R25 9
      524 CALL                             R25 0 1
      525 JUMPIF                           R25 ; [+12]
      526 GETUPVAL                         R24 5
      527 LOADK                            R25 K55 ["UIPadding"]
      528 DUPTABLE                         R26 K62 [{"PaddingLeft"}]
      529 GETIMPORT                        R27 K32 [UDim.new]
      531 LOADN                            R28 0
      532 LOADN                            R29 5
      533 CALL                             R27 2 1
      534 SETTABLEKS                       R27 R26 K61 ["PaddingLeft"]
      536 CALL                             R24 2 1
      537 JUMP                             ; [+1]
      538 LOADNIL                          R24
      539 SETTABLEKS                       R24 R23 K55 ["UIPadding"]
      541 CALL                             R19 4 1
      542 SETTABLEKS                       R19 R18 K20 ["SliderAndInput"]
      544 GETUPVAL                         R20 9
      545 CALL                             R20 0 1
      546 JUMPIFNOT                        R20 ; [+41]
      547 GETTABLEKS                       R20 R0 K1 ["toggleRangeProps"]
      549 JUMPIFNOT                        R20 ; [+5]
      550 GETTABLEKS                       R20 R0 K1 ["toggleRangeProps"]
      552 GETTABLEKS                       R20 R20 K2 ["toggleValue"]
      554 JUMPIFNOT                        R20 ; [+2]
      555 LOADNIL                          R19
      556 JUMP                             ; [+66]
      557 GETUPVAL                         R19 5
      558 GETUPVAL                         R20 12
      559 DUPTABLE                         R21 K51 [{"LayoutOrder", "min", "numberRange", "setNumberRange", "toggleRangeProps", "round", "roundToTenths"}]
      560 MOVE                             R22 R2
      561 CALL                             R22 0 1
      562 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      564 GETTABLEKS                       R22 R0 K46 ["min"]
      566 SETTABLEKS                       R22 R21 K46 ["min"]
      568 GETTABLEKS                       R22 R0 K4 ["numberRange"]
      570 SETTABLEKS                       R22 R21 K4 ["numberRange"]
      572 GETTABLEKS                       R22 R0 K48 ["setNumberRange"]
      574 SETTABLEKS                       R22 R21 K48 ["setNumberRange"]
      576 GETTABLEKS                       R22 R0 K1 ["toggleRangeProps"]
      578 SETTABLEKS                       R22 R21 K1 ["toggleRangeProps"]
      580 SETTABLEKS                       R5 R21 K49 ["round"]
      582 GETTABLEKS                       R22 R0 K50 ["roundToTenths"]
      584 SETTABLEKS                       R22 R21 K50 ["roundToTenths"]
      586 CALL                             R19 2 1
      587 JUMP                             ; [+35]
      588 GETTABLEKS                       R20 R0 K1 ["toggleRangeProps"]
      590 JUMPIF                           R20 ; [+2]
      591 LOADNIL                          R19
      592 JUMP                             ; [+30]
      593 GETUPVAL                         R19 5
      594 GETUPVAL                         R20 16
      595 NEWTABLE                         R21 8 0
      597 GETUPVAL                         R22 2
      598 GETTABLEKS                       R22 R22 K8 ["Tag"]
      600 LOADK                            R23 K82 ["X-Fit X-Left X-Middle X-RowS IconOnly Compact"]
      601 SETTABLE                         R23 R21 R22
      602 MOVE                             R22 R2
      603 CALL                             R22 0 1
      604 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      606 GETTABLEKS                       R22 R0 K1 ["toggleRangeProps"]
      608 GETTABLEKS                       R22 R22 K2 ["toggleValue"]
      610 SETTABLEKS                       R22 R21 K83 ["Checked"]
      612 GETTABLEKS                       R22 R0 K1 ["toggleRangeProps"]
      614 GETTABLEKS                       R22 R22 K84 ["toggleText"]
      616 SETTABLEKS                       R22 R21 K59 ["Text"]
      618 NEWCLOSURE                       R22 P11
      619 CAPTURE                          VAL R0
      620 SETTABLEKS                       R22 R21 K85 ["OnClick"]
      622 CALL                             R19 2 1
      623 SETTABLEKS                       R19 R18 K21 ["SetMinMaxToggle"]
      625 CALL                             R15 3 -1
      626 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["NumericTextInput"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Flags"]
       52 GETTABLEKS                       R7 R7 K16 ["getFFlagAvatarSettingsRevertInvalidInput"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Flags"]
       61 GETTABLEKS                       R8 R8 K17 ["getFFlagAvatarSettingsSliderErrorLayout"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Src"]
       68 GETTABLEKS                       R9 R9 K15 ["Flags"]
       70 GETTABLEKS                       R9 R9 K18 ["getFFlagAvatarSettingsValidateCustomBuildRange"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Src"]
       77 GETTABLEKS                       R10 R10 K15 ["Flags"]
       79 GETTABLEKS                       R10 R10 K19 ["getFFlagFeatureMigrateStylingV2"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K6 ["Src"]
       86 GETTABLEKS                       R11 R11 K7 ["Util"]
       88 GETTABLEKS                       R11 R11 K20 ["isValidNumberInput"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K6 ["Src"]
       95 GETTABLEKS                       R12 R12 K15 ["Flags"]
       97 GETTABLEKS                       R12 R12 K21 ["getFFlagAvatarSettingsReorderCustomScaleComponents"]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R2 K22 ["ContextServices"]
      102 GETTABLEKS                       R13 R12 K23 ["Localization"]
      104 GETTABLEKS                       R14 R2 K24 ["UI"]
      106 GETTABLEKS                       R15 R14 K25 ["Pane"]
      108 GETTABLEKS                       R16 R14 K26 ["RangeSlider"]
      110 GETTABLEKS                       R17 R14 K27 ["Checkbox"]
      112 GETTABLEKS                       R18 R5 K28 ["createNextOrder"]
      114 GETTABLEKS                       R19 R4 K29 ["createElement"]
      116 GETTABLEKS                       R20 R2 K30 ["Styling"]
      118 GETTABLEKS                       R20 R20 K31 ["joinTags"]
      120 DUPCLOSURE                       R21 K32 [PROTO_1]
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R4
      124 DUPCLOSURE                       R22 K33 [PROTO_14]
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R17
      142 RETURN                           R22 1
