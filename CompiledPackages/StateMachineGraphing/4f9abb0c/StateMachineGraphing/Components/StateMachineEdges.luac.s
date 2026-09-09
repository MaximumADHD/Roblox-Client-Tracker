PROTO_0:
        0 GETTABLEKS                       R6 R2 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R6 ; [+2]
        3 GETIMPORT                        R5 K3 [math.abs]
        5 CALL                             R5 1 1
        6 LOADK                            R6 K4 [0.0001]
        7 JUMPIFNOTLT                      R6 R5 ; [+19]
        9 GETTABLEKS                       R7 R2 K0 ["X"]
       11 LOADN                            R8 0
       12 JUMPIFNOTLT                      R8 R7 ; [+4]
       14 GETTABLEKS                       R6 R1 K0 ["X"]
       16 JUMP                             ; [+3]
       17 GETTABLEKS                       R7 R1 K0 ["X"]
       19 MINUS                            R6 R7
       20 GETTABLEKS                       R7 R3 K0 ["X"]
       22 SUB                              R5 R6 R7
       23 GETTABLEKS                       R6 R2 K0 ["X"]
       25 DIV                              R4 R5 R6
       26 JUMP                             ; [+1]
       27 LOADK                            R4 K5 [∞]
       28 GETTABLEKS                       R7 R2 K6 ["Y"]
       30 FASTCALL1                        MATH_ABS R7 ; [+2]
       31 GETIMPORT                        R6 K3 [math.abs]
       33 CALL                             R6 1 1
       34 LOADK                            R7 K4 [0.0001]
       35 JUMPIFNOTLT                      R7 R6 ; [+19]
       37 GETTABLEKS                       R8 R2 K6 ["Y"]
       39 LOADN                            R9 0
       40 JUMPIFNOTLT                      R9 R8 ; [+4]
       42 GETTABLEKS                       R7 R1 K6 ["Y"]
       44 JUMP                             ; [+3]
       45 GETTABLEKS                       R8 R1 K6 ["Y"]
       47 MINUS                            R7 R8
       48 GETTABLEKS                       R8 R3 K6 ["Y"]
       50 SUB                              R6 R7 R8
       51 GETTABLEKS                       R7 R2 K6 ["Y"]
       53 DIV                              R5 R6 R7
       54 JUMP                             ; [+1]
       55 LOADK                            R5 K5 [∞]
       56 ADD                              R7 R0 R3
       57 FASTCALL2                        MATH_MIN R4 R5 ; [+5]
       59 MOVE                             R10 R4
       60 MOVE                             R11 R5
       61 GETIMPORT                        R9 K8 [math.min]
       63 CALL                             R9 2 1
       64 MUL                              R8 R2 R9
       65 ADD                              R6 R7 R8
       66 RETURN                           R6 1

PROTO_1:
        0 LOADK                            R3 K0 ["%*->%*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 3 1
        6 MOVE                             R2 R3
        7 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R6 R0 K0 ["center"]
        2 SUB                              R5 R1 R6
        3 GETTABLEKS                       R6 R5 K1 ["Magnitude"]
        5 LOADK                            R7 K2 [0.0001]
        6 JUMPIFNOTLT                      R6 R7 ; [+3]
        8 LOADNIL                          R6
        9 RETURN                           R6 1
       10 GETTABLEKS                       R6 R5 K3 ["Unit"]
       12 GETTABLEKS                       R7 R0 K4 ["zoom"]
       14 JUMPIFNOT                        R4 ; [+12]
       15 GETIMPORT                        R9 K7 [Vector2.new]
       17 GETTABLEKS                       R11 R6 K8 ["Y"]
       19 MINUS                            R10 R11
       20 GETTABLEKS                       R11 R6 K9 ["X"]
       22 CALL                             R9 2 1
       23 LOADN                            R11 10
       24 MUL                              R10 R11 R7
       25 MUL                              R8 R9 R10
       26 JUMP                             ; [+2]
       27 GETIMPORT                        R8 K11 [Vector2.zero]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R11 R0 K0 ["center"]
       32 GETTABLEKS                       R12 R0 K12 ["attachHalfSize"]
       34 MOVE                             R13 R6
       35 MOVE                             R14 R8
       36 CALL                             R10 4 1
       37 SUB                              R9 R10 R3
       38 JUMPIFNOT                        R2 ; [+9]
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R12 R2 K0 ["center"]
       42 GETTABLEKS                       R13 R2 K12 ["attachHalfSize"]
       44 MINUS                            R14 R6
       45 MOVE                             R15 R8
       46 CALL                             R11 4 1
       47 JUMP                             ; [+1]
       48 MOVE                             R11 R1
       49 SUB                              R10 R11 R3
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R13 R0 K0 ["center"]
       53 GETTABLEKS                       R14 R0 K13 ["halfSize"]
       55 MOVE                             R15 R6
       56 MOVE                             R16 R8
       57 CALL                             R12 4 1
       58 SUB                              R11 R12 R3
       59 JUMPIFNOT                        R2 ; [+9]
       60 GETUPVAL                         R13 0
       61 GETTABLEKS                       R14 R2 K0 ["center"]
       63 GETTABLEKS                       R15 R2 K13 ["halfSize"]
       65 MINUS                            R16 R6
       66 MOVE                             R17 R8
       67 CALL                             R13 4 1
       68 JUMP                             ; [+1]
       69 MOVE                             R13 R1
       70 SUB                              R12 R13 R3
       71 SUB                              R13 R10 R9
       72 DUPTABLE                         R14 K20 [{"fromLocal", "toLocal", "midpoint", "chevronMidpoint", "angleDeg", "magnitude", "zoom"}]
       73 SETTABLEKS                       R9 R14 K14 ["fromLocal"]
       75 SETTABLEKS                       R10 R14 K15 ["toLocal"]
       77 ADD                              R16 R9 R10
       78 DIVK                             R15 R16 K21 [2]
       79 SETTABLEKS                       R15 R14 K16 ["midpoint"]
       81 ADD                              R16 R11 R12
       82 DIVK                             R15 R16 K21 [2]
       83 SETTABLEKS                       R15 R14 K17 ["chevronMidpoint"]
       85 GETTABLEKS                       R17 R6 K8 ["Y"]
       87 GETTABLEKS                       R18 R6 K9 ["X"]
       89 FASTCALL2                        MATH_ATAN2 R17 R18 ; [+3]
       91 GETIMPORT                        R16 K24 [math.atan2]
       93 CALL                             R16 2 1
       94 FASTCALL1                        MATH_DEG R16 ; [+2]
       95 GETIMPORT                        R15 K26 [math.deg]
       97 CALL                             R15 1 1
       98 SETTABLEKS                       R15 R14 K18 ["angleDeg"]
      100 GETTABLEKS                       R15 R13 K1 ["Magnitude"]
      102 SETTABLEKS                       R15 R14 K19 ["magnitude"]
      104 SETTABLEKS                       R7 R14 K4 ["zoom"]
      106 RETURN                           R14 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 GETTABLEKS                       R6 R1 K0 ["center"]
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 CALL                             R4 5 1
        8 RETURN                           R4 1

PROTO_4:
        0 SUB                              R3 R2 R1
        1 MOVE                             R6 R3
        2 NAMECALL                         R4 R3 K0 ["Dot"]
        4 CALL                             R4 2 1
        5 LOADK                            R5 K1 [1E-08]
        6 JUMPIFNOTLT                      R4 R5 ; [+5]
        8 SUB                              R5 R0 R1
        9 GETTABLEKS                       R5 R5 K2 ["Magnitude"]
       11 RETURN                           R5 1
       12 SUB                              R7 R0 R1
       13 MOVE                             R9 R3
       14 NAMECALL                         R7 R7 K0 ["Dot"]
       16 CALL                             R7 2 1
       17 DIV                              R6 R7 R4
       18 LOADN                            R7 0
       19 LOADN                            R8 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R5 K5 [math.clamp]
       23 CALL                             R5 3 1
       24 MUL                              R8 R3 R5
       25 ADD                              R7 R1 R8
       26 SUB                              R6 R0 R7
       27 GETTABLEKS                       R6 R6 K2 ["Magnitude"]
       29 RETURN                           R6 1

PROTO_5:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["transitions"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R10 R8 K1 ["fromStateId"]
        9 GETTABLEKS                       R11 R8 K2 ["toStateId"]
       11 LOADK                            R12 K3 ["%*->%*"]
       12 MOVE                             R14 R10
       13 MOVE                             R15 R11
       14 NAMECALL                         R12 R12 K4 ["format"]
       16 CALL                             R12 3 1
       17 MOVE                             R9 R12
       18 LOADB                            R10 1
       19 SETTABLE                         R10 R3 R9
       20 FORGLOOP                         R4 2 ; [-14]
       22 LOADNIL                          R4
       23 LOADK                            R5 K5 [∞]
       24 GETTABLEKS                       R6 R0 K0 ["transitions"]
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 FORGPREP                         R6
       29 GETTABLEKS                       R12 R10 K1 ["fromStateId"]
       31 GETTABLE                         R11 R1 R12
       32 GETTABLEKS                       R13 R10 K2 ["toStateId"]
       34 GETTABLE                         R12 R1 R13
       35 JUMPIFNOT                        R11 ; [+78]
       36 JUMPIFNOT                        R12 ; [+77]
       37 GETTABLEKS                       R16 R10 K2 ["toStateId"]
       39 GETTABLEKS                       R17 R10 K1 ["fromStateId"]
       41 LOADK                            R18 K3 ["%*->%*"]
       42 MOVE                             R20 R16
       43 MOVE                             R21 R17
       44 NAMECALL                         R18 R18 K4 ["format"]
       46 CALL                             R18 3 1
       47 MOVE                             R15 R18
       48 GETTABLE                         R14 R3 R15
       49 JUMPIFEQKB                       R14 TRUE ; [+2]
       51 LOADB                            R13 0 +1
       52 LOADB                            R13 1
       53 GETIMPORT                        R15 K8 [Vector2.zero]
       55 GETUPVAL                         R16 0
       56 MOVE                             R17 R11
       57 GETTABLEKS                       R18 R12 K9 ["center"]
       59 MOVE                             R19 R12
       60 MOVE                             R20 R15
       61 MOVE                             R21 R13
       62 CALL                             R16 5 1
       63 MOVE                             R14 R16
       64 JUMPIFNOT                        R14 ; [+49]
       65 GETTABLEKS                       R16 R14 K10 ["fromLocal"]
       67 GETTABLEKS                       R17 R14 K11 ["toLocal"]
       69 SUB                              R18 R17 R16
       70 MOVE                             R21 R18
       71 NAMECALL                         R19 R18 K12 ["Dot"]
       73 CALL                             R19 2 1
       74 LOADK                            R20 K13 [1E-08]
       75 JUMPIFNOTLT                      R19 R20 ; [+5]
       77 SUB                              R15 R2 R16
       78 GETTABLEKS                       R15 R15 K14 ["Magnitude"]
       80 JUMP                             ; [+17]
       81 SUB                              R22 R2 R16
       82 MOVE                             R24 R18
       83 NAMECALL                         R22 R22 K12 ["Dot"]
       85 CALL                             R22 2 1
       86 DIV                              R21 R22 R19
       87 LOADN                            R22 0
       88 LOADN                            R23 1
       89 FASTCALL                         MATH_CLAMP ; [+2]
       90 GETIMPORT                        R20 K17 [math.clamp]
       92 CALL                             R20 3 1
       93 MUL                              R22 R18 R20
       94 ADD                              R21 R16 R22
       95 SUB                              R15 R2 R21
       96 GETTABLEKS                       R15 R15 K14 ["Magnitude"]
       98 LOADN                            R16 8
       99 JUMPIFLT                         R16 R15 ; [+14]
      101 JUMPIFLT                         R15 R5 ; [+9]
      103 JUMPIFNOTEQ                      R15 R5 ; [+10]
      105 JUMPIFEQKNIL                     R4 ; [+5]
      107 GETTABLEKS                       R16 R10 K18 ["id"]
      109 JUMPIFNOTLT                      R16 R4 ; [+4]
      111 MOVE                             R5 R15
      112 GETTABLEKS                       R4 R10 K18 ["id"]
      114 FORGLOOP                         R6 2 ; [-86]
      116 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 DUPTABLE                         R2 K3 [{"from", "to", "thickness"}]
        7 GETTABLEKS                       R3 R1 K4 ["fromLocal"]
        9 SETTABLEKS                       R3 R2 K0 ["from"]
       11 GETTABLEKS                       R3 R1 K5 ["toLocal"]
       13 SETTABLEKS                       R3 R2 K1 ["to"]
       15 GETTABLEKS                       R4 R1 K7 ["zoom"]
       17 MULK                             R3 R4 K6 [2]
       18 SETTABLEKS                       R3 R2 K2 ["thickness"]
       20 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R2 R0 K3 ["midpoint"]
        5 GETTABLEKS                       R2 R2 K4 ["X"]
        7 GETTABLEKS                       R3 R0 K3 ["midpoint"]
        9 GETTABLEKS                       R3 R3 K5 ["Y"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1
       13 GETIMPORT                        R1 K7 [UDim2.new]
       15 CALL                             R1 0 1
       16 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R2 R0 K3 ["chevronMidpoint"]
        5 GETTABLEKS                       R2 R2 K4 ["X"]
        7 GETTABLEKS                       R3 R0 K3 ["chevronMidpoint"]
        9 GETTABLEKS                       R3 R3 K5 ["Y"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1
       13 GETIMPORT                        R1 K7 [UDim2.new]
       15 CALL                             R1 0 1
       16 RETURN                           R1 1

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["angleDeg"]
        3 RETURN                           R1 1
        4 LOADN                            R1 0
        5 RETURN                           R1 1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["zoom"]
        3 JUMP                             ; [+1]
        4 LOADN                            R2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["SCALE"]
        8 MUL                              R1 R2 R3
        9 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 3
       14 GETUPVAL                         R6 4
       15 MOVE                             R7 R1
       16 GETTABLEKS                       R8 R2 K0 ["center"]
       18 MOVE                             R9 R2
       19 MOVE                             R10 R4
       20 MOVE                             R11 R5
       21 CALL                             R6 5 1
       22 MOVE                             R3 R6
       23 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 1
        5 JUMPIFEQKNIL                     R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 LOADN                            R3 0
        9 JUMPIFNOTLE                      R2 R3 ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 DUPTABLE                         R2 K3 [{"from", "to", "thickness"}]
       14 GETTABLEKS                       R3 R1 K4 ["fromLocal"]
       16 SETTABLEKS                       R3 R2 K0 ["from"]
       18 GETTABLEKS                       R3 R1 K4 ["fromLocal"]
       20 GETTABLEKS                       R5 R1 K5 ["toLocal"]
       22 GETUPVAL                         R7 1
       23 LOADN                            R8 0
       24 LOADN                            R9 1
       25 FASTCALL                         MATH_CLAMP ; [+2]
       26 GETIMPORT                        R6 K8 [math.clamp]
       28 CALL                             R6 3 1
       29 NAMECALL                         R3 R3 K9 ["Lerp"]
       31 CALL                             R3 3 1
       32 SETTABLEKS                       R3 R2 K1 ["to"]
       34 GETTABLEKS                       R4 R1 K11 ["zoom"]
       36 MULK                             R3 R4 K10 [4]
       37 SETTABLEKS                       R3 R2 K2 ["thickness"]
       39 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelect"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRightSelect"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setHoveredId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setHoveredId"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 SETTABLEKS                       R3 R4 K3 ["current"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["setHoveredId"]
       11 GETUPVAL                         R5 2
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R6 R6 K5 ["observeData"]
       15 LOADB                            R7 0
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R7 R7 K6 ["observeGeometry"]
       20 LOADB                            R8 0
       21 CALL                             R7 1 1
       22 MOVE                             R8 R3
       23 CALL                             R5 3 1
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["observeData"]
        4 LOADB                            R2 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["observeGeometry"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["current"]
       14 CALL                             R0 3 1
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K3 ["onSelect"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["observeData"]
        4 LOADB                            R2 0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["observeGeometry"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["current"]
       14 CALL                             R0 3 1
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K3 ["onRightSelect"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_24:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R2 R0 K3 ["magnitude"]
        5 LOADN                            R3 16
        6 CALL                             R1 2 1
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K5 [UDim2.new]
       10 CALL                             R1 0 1
       11 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setTransitionField"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["id"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDeselect"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["deleteTransition"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["id"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["transition"]
        2 GETTABLEKS                       R2 R0 K1 ["observeFrom"]
        4 GETTABLEKS                       R3 R0 K2 ["observeTo"]
        6 GETTABLEKS                       R4 R0 K3 ["observeOrigin"]
        8 GETTABLEKS                       R5 R0 K4 ["hasReverse"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["useContext"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K6 ["Context"]
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K5 ["useContext"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K6 ["Context"]
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K7 ["useRef"]
       27 LOADNIL                          R9
       28 CALL                             R8 1 1
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K7 ["useRef"]
       32 GETIMPORT                        R10 K10 [Vector2.zero]
       34 CALL                             R9 1 1
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       38 NEWCLOSURE                       R11 P0
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          UPVAL U4
       45 NEWTABLE                         R12 0 4
       47 MOVE                             R13 R2
       48 MOVE                             R14 R3
       49 MOVE                             R15 R4
       50 MOVE                             R16 R5
       51 SETLIST                          R12 R13 4 [1]
       53 CALL                             R10 2 1
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K11 ["useMemo"]
       57 NEWCLOSURE                       R12 P1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R10
       60 NEWTABLE                         R13 0 1
       62 MOVE                             R14 R10
       63 SETLIST                          R13 R14 1 [1]
       65 CALL                             R11 2 1
       66 GETUPVAL                         R12 5
       67 GETTABLEKS                       R12 R12 K12 ["useSignalBinding"]
       69 MOVE                             R13 R10
       70 CALL                             R12 1 1
       71 GETTABLEKS                       R13 R0 K13 ["fillFraction"]
       73 GETUPVAL                         R14 0
       74 GETTABLEKS                       R14 R14 K11 ["useMemo"]
       76 NEWCLOSURE                       R15 P2
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R13
       80 NEWTABLE                         R16 0 2
       82 MOVE                             R17 R10
       83 MOVE                             R18 R13
       84 SETLIST                          R16 R17 2 [1]
       86 CALL                             R14 2 1
       87 LOADB                            R15 0
       88 JUMPIFEQKNIL                     R13 ; [+6]
       90 LOADN                            R16 0
       91 JUMPIFLT                         R16 R13 ; [+2]
       93 LOADB                            R15 0 +1
       94 LOADB                            R15 1
       95 JUMPIFNOT                        R15 ; [+3]
       96 GETTABLEKS                       R16 R0 K14 ["fillColor"]
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R16 R0 K15 ["color"]
      101 NEWCLOSURE                       R17 P3
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R1
      104 NEWCLOSURE                       R18 P4
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 NEWCLOSURE                       R19 P5
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R1
      110 NEWCLOSURE                       R20 P6
      111 CAPTURE                          VAL R0
      112 NEWCLOSURE                       R21 P7
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R0
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R6
      118 NEWCLOSURE                       R22 P8
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R0
      124 NEWCLOSURE                       R23 P9
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R0
      130 GETUPVAL                         R24 0
      131 GETTABLEKS                       R24 R24 K16 ["createElement"]
      133 GETUPVAL                         R25 0
      134 GETTABLEKS                       R25 R25 K17 ["Fragment"]
      136 LOADNIL                          R26
      137 DUPTABLE                         R27 K23 [{"Line", "LinePath", "FillLine", "Arrow", "Popover"}]
      138 GETUPVAL                         R28 0
      139 GETTABLEKS                       R28 R28 K16 ["createElement"]
      141 LOADK                            R29 K24 ["ImageButton"]
      142 NEWTABLE                         R30 16 0
      144 GETUPVAL                         R33 7
      145 NAMECALL                         R31 R12 K25 ["map"]
      147 CALL                             R31 2 1
      148 SETTABLEKS                       R31 R30 K26 ["Position"]
      150 GETIMPORT                        R31 K28 [Vector2.new]
      152 LOADK                            R32 K29 [0.5]
      153 LOADK                            R33 K29 [0.5]
      154 CALL                             R31 2 1
      155 SETTABLEKS                       R31 R30 K30 ["AnchorPoint"]
      157 DUPCLOSURE                       R33 K31 [PROTO_24]
      158 NAMECALL                         R31 R12 K25 ["map"]
      160 CALL                             R31 2 1
      161 SETTABLEKS                       R31 R30 K32 ["Size"]
      163 GETUPVAL                         R33 8
      164 NAMECALL                         R31 R12 K25 ["map"]
      166 CALL                             R31 2 1
      167 SETTABLEKS                       R31 R30 K33 ["Rotation"]
      169 LOADN                            R31 1
      170 SETTABLEKS                       R31 R30 K34 ["BackgroundTransparency"]
      172 LOADN                            R31 1
      173 SETTABLEKS                       R31 R30 K35 ["ZIndex"]
      175 GETUPVAL                         R31 0
      176 GETTABLEKS                       R31 R31 K36 ["Event"]
      178 GETTABLEKS                       R31 R31 K37 ["Activated"]
      180 SETTABLE                         R22 R30 R31
      181 GETUPVAL                         R31 0
      182 GETTABLEKS                       R31 R31 K36 ["Event"]
      184 GETTABLEKS                       R31 R31 K38 ["MouseButton2Click"]
      186 SETTABLE                         R23 R30 R31
      187 GETUPVAL                         R31 0
      188 GETTABLEKS                       R31 R31 K36 ["Event"]
      190 GETTABLEKS                       R31 R31 K39 ["MouseMoved"]
      192 SETTABLE                         R21 R30 R31
      193 GETUPVAL                         R31 0
      194 GETTABLEKS                       R31 R31 K36 ["Event"]
      196 GETTABLEKS                       R31 R31 K40 ["MouseLeave"]
      198 SETTABLE                         R20 R30 R31
      199 CALL                             R28 2 1
      200 SETTABLEKS                       R28 R27 K18 ["Line"]
      202 GETUPVAL                         R28 0
      203 GETTABLEKS                       R28 R28 K16 ["createElement"]
      205 GETUPVAL                         R29 9
      206 DUPTABLE                         R30 K44 [{["observe"], ["color"], ["zIndex"] = 1}]
      207 SETTABLEKS                       R11 R30 K41 ["observe"]
      209 GETTABLEKS                       R31 R0 K15 ["color"]
      211 SETTABLEKS                       R31 R30 K15 ["color"]
      213 CALL                             R28 2 1
      214 SETTABLEKS                       R28 R27 K19 ["LinePath"]
      216 GETTABLEKS                       R29 R0 K13 ["fillFraction"]
      218 JUMPIFEQKNIL                     R29 ; [+14]
      220 GETUPVAL                         R28 0
      221 GETTABLEKS                       R28 R28 K16 ["createElement"]
      223 GETUPVAL                         R29 9
      224 DUPTABLE                         R30 K46 [{["observe"], ["color"], ["zIndex"] = 2}]
      225 SETTABLEKS                       R14 R30 K41 ["observe"]
      227 GETTABLEKS                       R31 R0 K14 ["fillColor"]
      229 SETTABLEKS                       R31 R30 K15 ["color"]
      231 CALL                             R28 2 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R28
      234 SETTABLEKS                       R28 R27 K20 ["FillLine"]
      236 GETUPVAL                         R28 0
      237 GETTABLEKS                       R28 R28 K16 ["createElement"]
      239 LOADK                            R29 K24 ["ImageButton"]
      240 NEWTABLE                         R30 16 0
      242 SETTABLEKS                       R8 R30 K47 ["ref"]
      244 GETUPVAL                         R33 10
      245 NAMECALL                         R31 R12 K25 ["map"]
      247 CALL                             R31 2 1
      248 SETTABLEKS                       R31 R30 K26 ["Position"]
      250 GETIMPORT                        R31 K28 [Vector2.new]
      252 LOADK                            R32 K29 [0.5]
      253 LOADK                            R33 K29 [0.5]
      254 CALL                             R31 2 1
      255 SETTABLEKS                       R31 R30 K30 ["AnchorPoint"]
      257 GETIMPORT                        R31 K50 [UDim2.fromOffset]
      259 GETUPVAL                         R32 11
      260 GETTABLEKS                       R32 R32 K51 ["SIZE"]
      262 GETUPVAL                         R33 11
      263 GETTABLEKS                       R33 R33 K51 ["SIZE"]
      265 CALL                             R31 2 1
      266 SETTABLEKS                       R31 R30 K32 ["Size"]
      268 LOADN                            R31 1
      269 SETTABLEKS                       R31 R30 K34 ["BackgroundTransparency"]
      271 GETUPVAL                         R33 8
      272 NAMECALL                         R31 R12 K25 ["map"]
      274 CALL                             R31 2 1
      275 SETTABLEKS                       R31 R30 K33 ["Rotation"]
      277 LOADN                            R31 3
      278 SETTABLEKS                       R31 R30 K35 ["ZIndex"]
      280 GETUPVAL                         R31 0
      281 GETTABLEKS                       R31 R31 K36 ["Event"]
      283 GETTABLEKS                       R31 R31 K37 ["Activated"]
      285 SETTABLE                         R17 R30 R31
      286 GETUPVAL                         R31 0
      287 GETTABLEKS                       R31 R31 K36 ["Event"]
      289 GETTABLEKS                       R31 R31 K38 ["MouseButton2Click"]
      291 SETTABLE                         R18 R30 R31
      292 GETUPVAL                         R31 0
      293 GETTABLEKS                       R31 R31 K36 ["Event"]
      295 GETTABLEKS                       R31 R31 K52 ["MouseEnter"]
      297 SETTABLE                         R19 R30 R31
      298 GETUPVAL                         R31 0
      299 GETTABLEKS                       R31 R31 K36 ["Event"]
      301 GETTABLEKS                       R31 R31 K40 ["MouseLeave"]
      303 SETTABLE                         R20 R30 R31
      304 GETUPVAL                         R31 11
      305 GETTABLEKS                       R31 R31 K53 ["children"]
      307 GETUPVAL                         R34 12
      308 NAMECALL                         R32 R12 K25 ["map"]
      310 CALL                             R32 2 1
      311 MOVE                             R33 R16
      312 LOADN                            R34 0
      313 CALL                             R31 3 -1
      314 CALL                             R28 -1 1
      315 SETTABLEKS                       R28 R27 K21 ["Arrow"]
      317 GETUPVAL                         R28 0
      318 GETTABLEKS                       R28 R28 K16 ["createElement"]
      320 GETUPVAL                         R29 13
      321 GETTABLEKS                       R29 R29 K22 ["Popover"]
      323 GETTABLEKS                       R29 R29 K54 ["Root"]
      325 DUPTABLE                         R30 K56 [{"isOpen"}]
      326 GETTABLEKS                       R31 R0 K57 ["showPopup"]
      328 SETTABLEKS                       R31 R30 K55 ["isOpen"]
      330 DUPTABLE                         R31 K60 [{"Anchor", "Content"}]
      331 GETUPVAL                         R32 0
      332 GETTABLEKS                       R32 R32 K16 ["createElement"]
      334 GETUPVAL                         R33 13
      335 GETTABLEKS                       R33 R33 K22 ["Popover"]
      337 GETTABLEKS                       R33 R33 K58 ["Anchor"]
      339 DUPTABLE                         R34 K62 [{"anchorRef"}]
      340 SETTABLEKS                       R8 R34 K61 ["anchorRef"]
      342 CALL                             R32 2 1
      343 SETTABLEKS                       R32 R31 K58 ["Anchor"]
      345 GETTABLEKS                       R33 R0 K57 ["showPopup"]
      347 JUMPIFNOT                        R33 ; [+59]
      348 GETUPVAL                         R32 0
      349 GETTABLEKS                       R32 R32 K16 ["createElement"]
      351 GETUPVAL                         R33 13
      352 GETTABLEKS                       R33 R33 K22 ["Popover"]
      354 GETTABLEKS                       R33 R33 K59 ["Content"]
      356 DUPTABLE                         R34 K66 [{"align", "side", "onPressedOutside"}]
      357 GETUPVAL                         R35 13
      358 GETTABLEKS                       R35 R35 K67 ["Enums"]
      360 GETTABLEKS                       R35 R35 K68 ["PopoverAlign"]
      362 GETTABLEKS                       R35 R35 K69 ["Start"]
      364 SETTABLEKS                       R35 R34 K63 ["align"]
      366 GETUPVAL                         R35 13
      367 GETTABLEKS                       R35 R35 K67 ["Enums"]
      369 GETTABLEKS                       R35 R35 K70 ["PopoverSide"]
      371 GETTABLEKS                       R35 R35 K71 ["Top"]
      373 SETTABLEKS                       R35 R34 K64 ["side"]
      375 GETTABLEKS                       R35 R0 K72 ["onDeselect"]
      377 SETTABLEKS                       R35 R34 K65 ["onPressedOutside"]
      379 DUPTABLE                         R35 K74 [{"Popup"}]
      380 GETUPVAL                         R36 0
      381 GETTABLEKS                       R36 R36 K16 ["createElement"]
      383 GETUPVAL                         R37 14
      384 DUPTABLE                         R38 K78 [{"transition", "onChangeField", "onDelete", "onClose"}]
      385 SETTABLEKS                       R1 R38 K0 ["transition"]
      387 NEWCLOSURE                       R39 P11
      388 CAPTURE                          VAL R7
      389 CAPTURE                          VAL R1
      390 SETTABLEKS                       R39 R38 K75 ["onChangeField"]
      392 NEWCLOSURE                       R39 P12
      393 CAPTURE                          VAL R0
      394 CAPTURE                          VAL R7
      395 CAPTURE                          VAL R1
      396 SETTABLEKS                       R39 R38 K76 ["onDelete"]
      398 GETTABLEKS                       R39 R0 K72 ["onDeselect"]
      400 SETTABLEKS                       R39 R38 K77 ["onClose"]
      402 CALL                             R36 2 1
      403 SETTABLEKS                       R36 R35 K73 ["Popup"]
      405 CALL                             R32 3 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R32
      408 SETTABLEKS                       R32 R31 K59 ["Content"]
      410 CALL                             R28 3 1
      411 SETTABLEKS                       R28 R27 K22 ["Popover"]
      413 CALL                             R24 3 -1
      414 RETURN                           R24 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R1 K0 ["fromStateId"]
        9 CALL                             R2 1 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETTABLEKS                       R4 R1 K1 ["targetStateId"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R4 R1 K1 ["targetStateId"]
       21 CALL                             R3 1 1
       22 MOVE                             R4 R0
       23 CALL                             R3 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETTABLEKS                       R4 R3 K2 ["center"]
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R4 R1 K3 ["cursorAbs"]
       32 LOADB                            R5 0
       33 JUMPIFEQKNIL                     R3 ; [+7]
       35 GETTABLEKS                       R6 R1 K4 ["targetHasReverse"]
       37 JUMPIFEQKB                       R6 TRUE ; [+2]
       39 LOADB                            R5 0 +1
       40 LOADB                            R5 1
       41 GETUPVAL                         R6 2
       42 MOVE                             R7 R2
       43 MOVE                             R8 R4
       44 MOVE                             R9 R3
       45 GETUPVAL                         R10 3
       46 MOVE                             R11 R0
       47 CALL                             R10 1 1
       48 MOVE                             R11 R5
       49 CALL                             R6 5 1
       50 RETURN                           R6 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["observePending"]
        2 GETTABLEKS                       R2 R0 K1 ["observeGeometry"]
        4 GETTABLEKS                       R3 R0 K2 ["observeOrigin"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R3
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 MOVE                             R9 R3
       20 SETLIST                          R6 R7 3 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R4
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K4 ["useSignalBinding"]
       38 MOVE                             R7 R4
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K5 ["createElement"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K6 ["Fragment"]
       46 LOADNIL                          R9
       47 DUPTABLE                         R10 K9 [{"PreviewLine", "PreviewArrow"}]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K5 ["createElement"]
       51 GETUPVAL                         R12 4
       52 DUPTABLE                         R13 K14 [{["observe"], ["color"], ["zIndex"] = 1}]
       53 SETTABLEKS                       R5 R13 K10 ["observe"]
       55 GETTABLEKS                       R14 R0 K11 ["color"]
       57 SETTABLEKS                       R14 R13 K11 ["color"]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K7 ["PreviewLine"]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K5 ["createElement"]
       65 LOADK                            R12 K15 ["ImageButton"]
       66 DUPTABLE                         R13 K25 [{["Active"] = False, ["Position"], ["AnchorPoint"], ["Size"], ["BackgroundTransparency"] = 1, ["Rotation"], ["ZIndex"] = 4}]
       67 GETUPVAL                         R16 5
       68 NAMECALL                         R14 R6 K26 ["map"]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K18 ["Position"]
       73 GETIMPORT                        R14 K29 [Vector2.new]
       75 LOADK                            R15 K30 [0.5]
       76 LOADK                            R16 K30 [0.5]
       77 CALL                             R14 2 1
       78 SETTABLEKS                       R14 R13 K19 ["AnchorPoint"]
       80 GETIMPORT                        R14 K33 [UDim2.fromOffset]
       82 GETUPVAL                         R15 6
       83 GETTABLEKS                       R15 R15 K34 ["SIZE"]
       85 GETUPVAL                         R16 6
       86 GETTABLEKS                       R16 R16 K34 ["SIZE"]
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K20 ["Size"]
       91 GETUPVAL                         R16 7
       92 NAMECALL                         R14 R6 K26 ["map"]
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K22 ["Rotation"]
       97 GETUPVAL                         R14 6
       98 GETTABLEKS                       R14 R14 K35 ["children"]
      100 GETUPVAL                         R17 8
      101 NAMECALL                         R15 R6 K26 ["map"]
      103 CALL                             R15 2 1
      104 GETTABLEKS                       R16 R0 K11 ["color"]
      106 LOADN                            R17 0
      107 CALL                             R14 3 -1
      108 CALL                             R11 -1 1
      109 SETTABLEKS                       R11 R10 K8 ["PreviewArrow"]
      111 CALL                             R7 3 -1
      112 RETURN                           R7 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.zero]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_32:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Color"]
        4 GETTABLEKS                       R2 R2 K1 ["System"]
        6 GETTABLEKS                       R2 R2 K2 ["Emphasis"]
        8 RETURN                           R2 1
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["Color"]
       13 GETTABLEKS                       R2 R2 K1 ["System"]
       15 GETTABLEKS                       R2 R2 K3 ["Neutral"]
       17 RETURN                           R2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["Color"]
       21 GETTABLEKS                       R2 R2 K4 ["Extended"]
       23 GETTABLEKS                       R2 R2 K5 ["Gray"]
       25 GETTABLEKS                       R2 R2 K6 ["Gray_600"]
       27 RETURN                           R2 1

PROTO_33:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+18]
        6 GETTABLEKS                       R2 R1 K4 ["KeyCode"]
        8 GETIMPORT                        R3 K6 [Enum.KeyCode.Delete]
       10 JUMPIFEQ                         R2 R3 ; [+7]
       12 GETTABLEKS                       R2 R1 K4 ["KeyCode"]
       14 GETIMPORT                        R3 K8 [Enum.KeyCode.Backspace]
       16 JUMPIFNOTEQ                      R2 R3 ; [+5]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K9 ["deleteSelection"]
       21 CALL                             R2 0 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       25 GETIMPORT                        R3 K11 [Enum.UserInputType.MouseButton1]
       27 JUMPIFEQ                         R2 R3 ; [+7]
       29 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       31 GETIMPORT                        R3 K13 [Enum.UserInputType.MouseButton2]
       33 JUMPIFNOTEQ                      R2 R3 ; [+6]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K14 ["selectTransition"]
       38 LOADNIL                          R3
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectTransition"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectTransition"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectTransition"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["useContext"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K3 ["Context"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K2 ["useContext"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K3 ["Context"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K2 ["useContext"]
       30 GETUPVAL                         R6 5
       31 GETTABLEKS                       R6 R6 K3 ["Context"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 6
       35 GETTABLEKS                       R6 R6 K4 ["useSignalState"]
       37 GETTABLEKS                       R7 R5 K5 ["observeData"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R4 K6 ["selectedTransitionId"]
       42 GETTABLEKS                       R8 R4 K7 ["transitionPopupOpen"]
       44 GETUPVAL                         R9 6
       45 GETTABLEKS                       R9 R9 K4 ["useSignalState"]
       47 GETTABLEKS                       R10 R3 K8 ["observePending"]
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R10 R10 K9 ["useState"]
       53 LOADNIL                          R11
       54 CALL                             R10 1 2
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R12 R12 K4 ["useSignalState"]
       58 GETTABLEKS                       R13 R3 K10 ["observePinActive"]
       60 CALL                             R12 1 1
       61 GETUPVAL                         R13 1
       62 GETTABLEKS                       R13 R13 K11 ["useMemo"]
       64 DUPCLOSURE                       R14 K12 [PROTO_31]
       65 CAPTURE                          UPVAL U7
       66 NEWTABLE                         R15 0 0
       68 CALL                             R13 2 2
       69 NEWCLOSURE                       R15 P1
       70 CAPTURE                          VAL R1
       71 GETUPVAL                         R16 1
       72 GETTABLEKS                       R16 R16 K13 ["useCallback"]
       74 NEWCLOSURE                       R17 P2
       75 CAPTURE                          VAL R4
       76 NEWTABLE                         R18 0 2
       78 GETTABLEKS                       R19 R4 K14 ["deleteSelection"]
       80 GETTABLEKS                       R20 R4 K15 ["selectTransition"]
       82 SETLIST                          R18 R19 2 [1]
       84 CALL                             R16 2 1
       85 GETUPVAL                         R17 1
       86 GETTABLEKS                       R17 R17 K13 ["useCallback"]
       88 NEWCLOSURE                       R18 P3
       89 CAPTURE                          VAL R4
       90 NEWTABLE                         R19 0 1
       92 GETTABLEKS                       R20 R4 K15 ["selectTransition"]
       94 SETLIST                          R19 R20 1 [1]
       96 CALL                             R17 2 1
       97 GETUPVAL                         R18 1
       98 GETTABLEKS                       R18 R18 K13 ["useCallback"]
      100 NEWCLOSURE                       R19 P4
      101 CAPTURE                          VAL R4
      102 NEWTABLE                         R20 0 1
      104 GETTABLEKS                       R21 R4 K15 ["selectTransition"]
      106 SETLIST                          R20 R21 1 [1]
      108 CALL                             R18 2 1
      109 GETUPVAL                         R19 1
      110 GETTABLEKS                       R19 R19 K13 ["useCallback"]
      112 NEWCLOSURE                       R20 P5
      113 CAPTURE                          VAL R4
      114 NEWTABLE                         R21 0 1
      116 GETTABLEKS                       R22 R4 K15 ["selectTransition"]
      118 SETLIST                          R21 R22 1 [1]
      120 CALL                             R19 2 1
      121 NEWTABLE                         R20 0 0
      123 GETTABLEKS                       R21 R6 K16 ["transitions"]
      125 LOADNIL                          R22
      126 LOADNIL                          R23
      127 FORGPREP                         R21
      128 GETTABLEKS                       R27 R25 K17 ["fromStateId"]
      130 GETTABLEKS                       R28 R25 K18 ["toStateId"]
      132 LOADK                            R29 K19 ["%*->%*"]
      133 MOVE                             R31 R27
      134 MOVE                             R32 R28
      135 NAMECALL                         R29 R29 K20 ["format"]
      137 CALL                             R29 3 1
      138 MOVE                             R26 R29
      139 LOADB                            R27 1
      140 SETTABLE                         R27 R20 R26
      141 FORGLOOP                         R21 2 ; [-14]
      143 JUMPIFNOT                        R9 ; [+16]
      144 GETTABLEKS                       R21 R9 K21 ["targetStateId"]
      146 JUMPIFNOT                        R21 ; [+13]
      147 GETTABLEKS                       R22 R9 K17 ["fromStateId"]
      149 GETTABLEKS                       R23 R9 K21 ["targetStateId"]
      151 LOADK                            R24 K19 ["%*->%*"]
      152 MOVE                             R26 R22
      153 MOVE                             R27 R23
      154 NAMECALL                         R24 R24 K20 ["format"]
      156 CALL                             R24 3 1
      157 MOVE                             R21 R24
      158 LOADB                            R22 1
      159 SETTABLE                         R22 R20 R21
      160 NEWTABLE                         R21 1 0
      162 GETTABLEKS                       R22 R6 K16 ["transitions"]
      164 LOADNIL                          R23
      165 LOADNIL                          R24
      166 FORGPREP                         R22
      167 GETTABLEKS                       R28 R26 K22 ["id"]
      169 JUMPIFEQ                         R7 R28 ; [+2]
      171 LOADB                            R27 0 +1
      172 LOADB                            R27 1
      173 LOADB                            R28 0
      174 JUMPIFNOTEQKNIL                  R9 ; [+9]
      176 NOT                              R28 R12
      177 JUMPIFNOT                        R28 ; [+6]
      178 GETTABLEKS                       R29 R26 K22 ["id"]
      180 JUMPIFEQ                         R10 R29 ; [+2]
      182 LOADB                            R28 0 +1
      183 LOADB                            R28 1
      184 JUMPIFNOT                        R27 ; [+7]
      185 GETTABLEKS                       R29 R1 K23 ["Color"]
      187 GETTABLEKS                       R29 R29 K24 ["System"]
      189 GETTABLEKS                       R29 R29 K25 ["Emphasis"]
      191 JUMP                             ; [+16]
      192 JUMPIFNOT                        R28 ; [+7]
      193 GETTABLEKS                       R29 R1 K23 ["Color"]
      195 GETTABLEKS                       R29 R29 K24 ["System"]
      197 GETTABLEKS                       R29 R29 K26 ["Neutral"]
      199 JUMP                             ; [+8]
      200 GETTABLEKS                       R29 R1 K23 ["Color"]
      202 GETTABLEKS                       R29 R29 K27 ["Extended"]
      204 GETTABLEKS                       R29 R29 K28 ["Gray"]
      206 GETTABLEKS                       R29 R29 K29 ["Gray_600"]
      208 JUMPIFEQKNIL                     R9 ; [+16]
      210 GETTABLEKS                       R30 R29 K30 ["Color3"]
      212 GETTABLEKS                       R32 R1 K23 ["Color"]
      214 GETTABLEKS                       R32 R32 K31 ["Surface"]
      216 GETTABLEKS                       R32 R32 K32 ["Surface_100"]
      218 GETTABLEKS                       R32 R32 K30 ["Color3"]
      220 LOADK                            R33 K33 [0.6]
      221 NAMECALL                         R30 R30 K34 ["Lerp"]
      223 CALL                             R30 3 1
      224 JUMP                             ; [+2]
      225 GETTABLEKS                       R30 R29 K30 ["Color3"]
      227 GETTABLEKS                       R31 R26 K22 ["id"]
      229 GETUPVAL                         R32 1
      230 GETTABLEKS                       R32 R32 K35 ["createElement"]
      232 GETUPVAL                         R33 8
      233 DUPTABLE                         R34 K49 [{"transition", "observeFrom", "observeTo", "observeOrigin", "hasReverse", "color", "fillFraction", "fillColor", "showPopup", "onSelect", "onRightSelect", "onDeselect", "setHoveredId"}]
      234 SETTABLEKS                       R26 R34 K36 ["transition"]
      236 GETTABLEKS                       R35 R2 K50 ["observe"]
      238 GETTABLEKS                       R36 R26 K17 ["fromStateId"]
      240 CALL                             R35 1 1
      241 SETTABLEKS                       R35 R34 K37 ["observeFrom"]
      243 GETTABLEKS                       R35 R2 K50 ["observe"]
      245 GETTABLEKS                       R36 R26 K18 ["toStateId"]
      247 CALL                             R35 1 1
      248 SETTABLEKS                       R35 R34 K38 ["observeTo"]
      250 SETTABLEKS                       R13 R34 K39 ["observeOrigin"]
      252 GETTABLEKS                       R38 R26 K18 ["toStateId"]
      254 GETTABLEKS                       R39 R26 K17 ["fromStateId"]
      256 LOADK                            R40 K19 ["%*->%*"]
      257 MOVE                             R42 R38
      258 MOVE                             R43 R39
      259 NAMECALL                         R40 R40 K20 ["format"]
      261 CALL                             R40 3 1
      262 MOVE                             R37 R40
      263 GETTABLE                         R36 R20 R37
      264 JUMPIFEQKB                       R36 TRUE ; [+2]
      266 LOADB                            R35 0 +1
      267 LOADB                            R35 1
      268 SETTABLEKS                       R35 R34 K40 ["hasReverse"]
      270 SETTABLEKS                       R30 R34 K41 ["color"]
      272 GETTABLEKS                       R36 R26 K22 ["id"]
      274 GETTABLEKS                       R37 R0 K51 ["fillTransitionId"]
      276 JUMPIFNOTEQ                      R36 R37 ; [+4]
      278 GETTABLEKS                       R35 R0 K42 ["fillFraction"]
      280 JUMP                             ; [+1]
      281 LOADNIL                          R35
      282 SETTABLEKS                       R35 R34 K42 ["fillFraction"]
      284 GETTABLEKS                       R35 R1 K23 ["Color"]
      286 GETTABLEKS                       R35 R35 K27 ["Extended"]
      288 GETTABLEKS                       R35 R35 K52 ["White"]
      290 GETTABLEKS                       R35 R35 K53 ["White_100"]
      292 GETTABLEKS                       R35 R35 K30 ["Color3"]
      294 SETTABLEKS                       R35 R34 K43 ["fillColor"]
      296 AND                              R35 R27 R8
      297 SETTABLEKS                       R35 R34 K44 ["showPopup"]
      299 SETTABLEKS                       R17 R34 K45 ["onSelect"]
      301 SETTABLEKS                       R18 R34 K46 ["onRightSelect"]
      303 SETTABLEKS                       R19 R34 K47 ["onDeselect"]
      305 SETTABLEKS                       R11 R34 K48 ["setHoveredId"]
      307 CALL                             R32 2 1
      308 SETTABLE                         R32 R21 R31
      309 FORGLOOP                         R22 2 ; [-143]
      311 JUMPIFNOT                        R9 ; [+30]
      312 GETUPVAL                         R22 1
      313 GETTABLEKS                       R22 R22 K35 ["createElement"]
      315 GETUPVAL                         R23 9
      316 DUPTABLE                         R24 K55 [{"observePending", "observeGeometry", "observeOrigin", "color"}]
      317 GETTABLEKS                       R25 R3 K8 ["observePending"]
      319 SETTABLEKS                       R25 R24 K8 ["observePending"]
      321 GETTABLEKS                       R25 R2 K50 ["observe"]
      323 SETTABLEKS                       R25 R24 K54 ["observeGeometry"]
      325 SETTABLEKS                       R13 R24 K39 ["observeOrigin"]
      327 GETTABLEKS                       R25 R1 K23 ["Color"]
      329 GETTABLEKS                       R25 R25 K27 ["Extended"]
      331 GETTABLEKS                       R25 R25 K28 ["Gray"]
      333 GETTABLEKS                       R25 R25 K29 ["Gray_600"]
      335 GETTABLEKS                       R25 R25 K30 ["Color3"]
      337 SETTABLEKS                       R25 R24 K41 ["color"]
      339 CALL                             R22 2 1
      340 SETTABLEKS                       R22 R21 K56 ["Preview"]
      342 GETUPVAL                         R22 1
      343 GETTABLEKS                       R22 R22 K35 ["createElement"]
      345 LOADK                            R23 K57 ["Frame"]
      346 NEWTABLE                         R24 8 0
      348 GETIMPORT                        R25 K60 [UDim2.fromScale]
      350 LOADN                            R26 1
      351 LOADN                            R27 1
      352 CALL                             R25 2 1
      353 SETTABLEKS                       R25 R24 K61 ["Size"]
      355 LOADN                            R25 1
      356 SETTABLEKS                       R25 R24 K62 ["BackgroundTransparency"]
      358 LOADB                            R25 0
      359 SETTABLEKS                       R25 R24 K63 ["ClipsDescendants"]
      361 LOADN                            R25 5
      362 SETTABLEKS                       R25 R24 K64 ["ZIndex"]
      364 GETUPVAL                         R25 1
      365 GETTABLEKS                       R25 R25 K65 ["Change"]
      367 GETTABLEKS                       R25 R25 K66 ["AbsolutePosition"]
      369 NEWCLOSURE                       R26 P6
      370 CAPTURE                          VAL R14
      371 SETTABLE                         R26 R24 R25
      372 GETUPVAL                         R25 1
      373 GETTABLEKS                       R25 R25 K67 ["Event"]
      375 GETTABLEKS                       R25 R25 K68 ["InputBegan"]
      377 SETTABLE                         R16 R24 R25
      378 MOVE                             R25 R21
      379 CALL                             R22 3 -1
      380 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineChevron"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["StateMachineConnectContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K15 ["StateMachineDataContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K13 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K16 ["StateMachineGeometryContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K13 ["Contexts"]
       67 GETTABLEKS                       R10 R10 K17 ["StateMachineSelectionContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K18 ["Data"]
       74 GETTABLEKS                       R11 R11 K19 ["StateMachineTypes"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K11 ["Components"]
       81 GETTABLEKS                       R12 R12 K20 ["TransitionLine"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K11 ["Components"]
       88 GETTABLEKS                       R13 R13 K21 ["TransitionPopup"]
       90 CALL                             R12 1 1
       91 DUPCLOSURE                       R13 K22 [PROTO_0]
       92 DUPCLOSURE                       R14 K23 [PROTO_1]
       93 DUPCLOSURE                       R15 K24 [PROTO_2]
       94 CAPTURE                          VAL R13
       95 DUPCLOSURE                       R16 K25 [PROTO_3]
       96 CAPTURE                          VAL R15
       97 DUPCLOSURE                       R17 K26 [PROTO_4]
       98 DUPCLOSURE                       R18 K27 [PROTO_5]
       99 CAPTURE                          VAL R15
      100 DUPCLOSURE                       R19 K28 [PROTO_8]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R3
      103 DUPCLOSURE                       R20 K29 [PROTO_9]
      104 DUPCLOSURE                       R21 K30 [PROTO_10]
      105 DUPCLOSURE                       R22 K31 [PROTO_11]
      106 DUPCLOSURE                       R23 K32 [PROTO_12]
      107 CAPTURE                          VAL R5
      108 DUPCLOSURE                       R24 K33 [PROTO_27]
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R23
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R12
      124 DUPCLOSURE                       R25 K34 [PROTO_30]
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R23
      134 DUPCLOSURE                       R26 K35 [PROTO_38]
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R25
      145 RETURN                           R26 1
