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
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["data"]
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R7 R7 K6 ["observeGeometry"]
       18 LOADB                            R8 0
       19 CALL                             R7 1 1
       20 MOVE                             R8 R3
       21 CALL                             R5 3 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["data"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["observeGeometry"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["current"]
       12 CALL                             R0 3 1
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["onSelect"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["data"]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["observeGeometry"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["current"]
       12 CALL                             R0 3 1
       13 JUMPIFNOT                        R0 ; [+5]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["onRightSelect"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

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
        1 GETTABLEKS                       R2 R2 K0 ["onDataChanged"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["setTransitionField"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["data"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K3 ["id"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 CALL                             R3 4 -1
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDeselect"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onDataChanged"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["deleteTransition"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["data"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["id"]
       16 CALL                             R1 2 -1
       17 CALL                             R0 -1 0
       18 RETURN                           R0 0

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
       18 GETTABLEKS                       R7 R7 K7 ["useRef"]
       20 LOADNIL                          R8
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K7 ["useRef"]
       25 GETIMPORT                        R9 K10 [Vector2.zero]
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K11 ["useMemo"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R11 0 4
       40 MOVE                             R12 R2
       41 MOVE                             R13 R3
       42 MOVE                             R14 R4
       43 MOVE                             R15 R5
       44 SETLIST                          R11 R12 4 [1]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K11 ["useMemo"]
       50 NEWCLOSURE                       R11 P1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R9
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R9
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 1
       59 GETUPVAL                         R11 4
       60 GETTABLEKS                       R11 R11 K12 ["useSignalBinding"]
       62 MOVE                             R12 R9
       63 CALL                             R11 1 1
       64 GETTABLEKS                       R12 R0 K13 ["fillFraction"]
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R13 R13 K11 ["useMemo"]
       69 NEWCLOSURE                       R14 P2
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R12
       73 NEWTABLE                         R15 0 2
       75 MOVE                             R16 R9
       76 MOVE                             R17 R12
       77 SETLIST                          R15 R16 2 [1]
       79 CALL                             R13 2 1
       80 LOADB                            R14 0
       81 JUMPIFEQKNIL                     R12 ; [+6]
       83 LOADN                            R15 0
       84 JUMPIFLT                         R15 R12 ; [+2]
       86 LOADB                            R14 0 +1
       87 LOADB                            R14 1
       88 JUMPIFNOT                        R14 ; [+3]
       89 GETTABLEKS                       R15 R0 K14 ["fillColor"]
       91 JUMP                             ; [+2]
       92 GETTABLEKS                       R15 R0 K15 ["color"]
       94 NEWCLOSURE                       R16 P3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R1
       97 NEWCLOSURE                       R17 P4
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R1
      100 NEWCLOSURE                       R18 P5
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R1
      103 NEWCLOSURE                       R19 P6
      104 CAPTURE                          VAL R0
      105 NEWCLOSURE                       R20 P7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R6
      110 NEWCLOSURE                       R21 P8
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R8
      115 NEWCLOSURE                       R22 P9
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R8
      120 GETUPVAL                         R23 0
      121 GETTABLEKS                       R23 R23 K16 ["createElement"]
      123 GETUPVAL                         R24 0
      124 GETTABLEKS                       R24 R24 K17 ["Fragment"]
      126 LOADNIL                          R25
      127 DUPTABLE                         R26 K23 [{"Line", "LinePath", "FillLine", "Arrow", "Popover"}]
      128 GETUPVAL                         R27 0
      129 GETTABLEKS                       R27 R27 K16 ["createElement"]
      131 LOADK                            R28 K24 ["ImageButton"]
      132 NEWTABLE                         R29 16 0
      134 GETUPVAL                         R32 6
      135 NAMECALL                         R30 R11 K25 ["map"]
      137 CALL                             R30 2 1
      138 SETTABLEKS                       R30 R29 K26 ["Position"]
      140 GETIMPORT                        R30 K28 [Vector2.new]
      142 LOADK                            R31 K29 [0.5]
      143 LOADK                            R32 K29 [0.5]
      144 CALL                             R30 2 1
      145 SETTABLEKS                       R30 R29 K30 ["AnchorPoint"]
      147 DUPCLOSURE                       R32 K31 [PROTO_24]
      148 NAMECALL                         R30 R11 K25 ["map"]
      150 CALL                             R30 2 1
      151 SETTABLEKS                       R30 R29 K32 ["Size"]
      153 GETUPVAL                         R32 7
      154 NAMECALL                         R30 R11 K25 ["map"]
      156 CALL                             R30 2 1
      157 SETTABLEKS                       R30 R29 K33 ["Rotation"]
      159 LOADN                            R30 1
      160 SETTABLEKS                       R30 R29 K34 ["BackgroundTransparency"]
      162 LOADN                            R30 1
      163 SETTABLEKS                       R30 R29 K35 ["ZIndex"]
      165 GETUPVAL                         R30 0
      166 GETTABLEKS                       R30 R30 K36 ["Event"]
      168 GETTABLEKS                       R30 R30 K37 ["Activated"]
      170 SETTABLE                         R21 R29 R30
      171 GETUPVAL                         R30 0
      172 GETTABLEKS                       R30 R30 K36 ["Event"]
      174 GETTABLEKS                       R30 R30 K38 ["MouseButton2Click"]
      176 SETTABLE                         R22 R29 R30
      177 GETUPVAL                         R30 0
      178 GETTABLEKS                       R30 R30 K36 ["Event"]
      180 GETTABLEKS                       R30 R30 K39 ["MouseMoved"]
      182 SETTABLE                         R20 R29 R30
      183 GETUPVAL                         R30 0
      184 GETTABLEKS                       R30 R30 K36 ["Event"]
      186 GETTABLEKS                       R30 R30 K40 ["MouseLeave"]
      188 SETTABLE                         R19 R29 R30
      189 CALL                             R27 2 1
      190 SETTABLEKS                       R27 R26 K18 ["Line"]
      192 GETUPVAL                         R27 0
      193 GETTABLEKS                       R27 R27 K16 ["createElement"]
      195 GETUPVAL                         R28 8
      196 DUPTABLE                         R29 K44 [{["observe"], ["color"], ["zIndex"] = 1}]
      197 SETTABLEKS                       R10 R29 K41 ["observe"]
      199 GETTABLEKS                       R30 R0 K15 ["color"]
      201 SETTABLEKS                       R30 R29 K15 ["color"]
      203 CALL                             R27 2 1
      204 SETTABLEKS                       R27 R26 K19 ["LinePath"]
      206 GETTABLEKS                       R28 R0 K13 ["fillFraction"]
      208 JUMPIFEQKNIL                     R28 ; [+14]
      210 GETUPVAL                         R27 0
      211 GETTABLEKS                       R27 R27 K16 ["createElement"]
      213 GETUPVAL                         R28 8
      214 DUPTABLE                         R29 K46 [{["observe"], ["color"], ["zIndex"] = 2}]
      215 SETTABLEKS                       R13 R29 K41 ["observe"]
      217 GETTABLEKS                       R30 R0 K14 ["fillColor"]
      219 SETTABLEKS                       R30 R29 K15 ["color"]
      221 CALL                             R27 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R27
      224 SETTABLEKS                       R27 R26 K20 ["FillLine"]
      226 GETUPVAL                         R27 0
      227 GETTABLEKS                       R27 R27 K16 ["createElement"]
      229 LOADK                            R28 K24 ["ImageButton"]
      230 NEWTABLE                         R29 16 0
      232 SETTABLEKS                       R7 R29 K47 ["ref"]
      234 GETUPVAL                         R32 9
      235 NAMECALL                         R30 R11 K25 ["map"]
      237 CALL                             R30 2 1
      238 SETTABLEKS                       R30 R29 K26 ["Position"]
      240 GETIMPORT                        R30 K28 [Vector2.new]
      242 LOADK                            R31 K29 [0.5]
      243 LOADK                            R32 K29 [0.5]
      244 CALL                             R30 2 1
      245 SETTABLEKS                       R30 R29 K30 ["AnchorPoint"]
      247 GETIMPORT                        R30 K50 [UDim2.fromOffset]
      249 GETUPVAL                         R31 10
      250 GETTABLEKS                       R31 R31 K51 ["SIZE"]
      252 GETUPVAL                         R32 10
      253 GETTABLEKS                       R32 R32 K51 ["SIZE"]
      255 CALL                             R30 2 1
      256 SETTABLEKS                       R30 R29 K32 ["Size"]
      258 LOADN                            R30 1
      259 SETTABLEKS                       R30 R29 K34 ["BackgroundTransparency"]
      261 GETUPVAL                         R32 7
      262 NAMECALL                         R30 R11 K25 ["map"]
      264 CALL                             R30 2 1
      265 SETTABLEKS                       R30 R29 K33 ["Rotation"]
      267 LOADN                            R30 3
      268 SETTABLEKS                       R30 R29 K35 ["ZIndex"]
      270 GETUPVAL                         R30 0
      271 GETTABLEKS                       R30 R30 K36 ["Event"]
      273 GETTABLEKS                       R30 R30 K37 ["Activated"]
      275 SETTABLE                         R16 R29 R30
      276 GETUPVAL                         R30 0
      277 GETTABLEKS                       R30 R30 K36 ["Event"]
      279 GETTABLEKS                       R30 R30 K38 ["MouseButton2Click"]
      281 SETTABLE                         R17 R29 R30
      282 GETUPVAL                         R30 0
      283 GETTABLEKS                       R30 R30 K36 ["Event"]
      285 GETTABLEKS                       R30 R30 K52 ["MouseEnter"]
      287 SETTABLE                         R18 R29 R30
      288 GETUPVAL                         R30 0
      289 GETTABLEKS                       R30 R30 K36 ["Event"]
      291 GETTABLEKS                       R30 R30 K40 ["MouseLeave"]
      293 SETTABLE                         R19 R29 R30
      294 GETUPVAL                         R30 10
      295 GETTABLEKS                       R30 R30 K53 ["children"]
      297 GETUPVAL                         R33 11
      298 NAMECALL                         R31 R11 K25 ["map"]
      300 CALL                             R31 2 1
      301 MOVE                             R32 R15
      302 LOADN                            R33 0
      303 CALL                             R30 3 -1
      304 CALL                             R27 -1 1
      305 SETTABLEKS                       R27 R26 K21 ["Arrow"]
      307 GETUPVAL                         R27 0
      308 GETTABLEKS                       R27 R27 K16 ["createElement"]
      310 GETUPVAL                         R28 12
      311 GETTABLEKS                       R28 R28 K22 ["Popover"]
      313 GETTABLEKS                       R28 R28 K54 ["Root"]
      315 DUPTABLE                         R29 K56 [{"isOpen"}]
      316 GETTABLEKS                       R30 R0 K57 ["showPopup"]
      318 SETTABLEKS                       R30 R29 K55 ["isOpen"]
      320 DUPTABLE                         R30 K60 [{"Anchor", "Content"}]
      321 GETUPVAL                         R31 0
      322 GETTABLEKS                       R31 R31 K16 ["createElement"]
      324 GETUPVAL                         R32 12
      325 GETTABLEKS                       R32 R32 K22 ["Popover"]
      327 GETTABLEKS                       R32 R32 K58 ["Anchor"]
      329 DUPTABLE                         R33 K62 [{"anchorRef"}]
      330 SETTABLEKS                       R7 R33 K61 ["anchorRef"]
      332 CALL                             R31 2 1
      333 SETTABLEKS                       R31 R30 K58 ["Anchor"]
      335 GETTABLEKS                       R32 R0 K57 ["showPopup"]
      337 JUMPIFNOT                        R32 ; [+60]
      338 GETUPVAL                         R31 0
      339 GETTABLEKS                       R31 R31 K16 ["createElement"]
      341 GETUPVAL                         R32 12
      342 GETTABLEKS                       R32 R32 K22 ["Popover"]
      344 GETTABLEKS                       R32 R32 K59 ["Content"]
      346 DUPTABLE                         R33 K66 [{"align", "side", "onPressedOutside"}]
      347 GETUPVAL                         R34 12
      348 GETTABLEKS                       R34 R34 K67 ["Enums"]
      350 GETTABLEKS                       R34 R34 K68 ["PopoverAlign"]
      352 GETTABLEKS                       R34 R34 K69 ["Start"]
      354 SETTABLEKS                       R34 R33 K63 ["align"]
      356 GETUPVAL                         R34 12
      357 GETTABLEKS                       R34 R34 K67 ["Enums"]
      359 GETTABLEKS                       R34 R34 K70 ["PopoverSide"]
      361 GETTABLEKS                       R34 R34 K71 ["Top"]
      363 SETTABLEKS                       R34 R33 K64 ["side"]
      365 GETTABLEKS                       R34 R0 K72 ["onDeselect"]
      367 SETTABLEKS                       R34 R33 K65 ["onPressedOutside"]
      369 DUPTABLE                         R34 K74 [{"Popup"}]
      370 GETUPVAL                         R35 0
      371 GETTABLEKS                       R35 R35 K16 ["createElement"]
      373 GETUPVAL                         R36 13
      374 DUPTABLE                         R37 K78 [{"transition", "onChangeField", "onDelete", "onClose"}]
      375 SETTABLEKS                       R1 R37 K0 ["transition"]
      377 NEWCLOSURE                       R38 P11
      378 CAPTURE                          VAL R0
      379 CAPTURE                          UPVAL U14
      380 CAPTURE                          VAL R1
      381 SETTABLEKS                       R38 R37 K75 ["onChangeField"]
      383 NEWCLOSURE                       R38 P12
      384 CAPTURE                          VAL R0
      385 CAPTURE                          UPVAL U14
      386 CAPTURE                          VAL R1
      387 SETTABLEKS                       R38 R37 K76 ["onDelete"]
      389 GETTABLEKS                       R38 R0 K72 ["onDeselect"]
      391 SETTABLEKS                       R38 R37 K77 ["onClose"]
      393 CALL                             R35 2 1
      394 SETTABLEKS                       R35 R34 K73 ["Popup"]
      396 CALL                             R31 3 1
      397 JUMP                             ; [+1]
      398 LOADNIL                          R31
      399 SETTABLEKS                       R31 R30 K59 ["Content"]
      401 CALL                             R27 3 1
      402 SETTABLEKS                       R27 R26 K22 ["Popover"]
      404 CALL                             R23 3 -1
      405 RETURN                           R23 -1

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
       27 GETTABLEKS                       R5 R4 K4 ["selectedTransitionId"]
       29 GETTABLEKS                       R6 R4 K5 ["transitionPopupOpen"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K6 ["useSignalState"]
       34 GETTABLEKS                       R8 R3 K7 ["observePending"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K8 ["useState"]
       40 LOADNIL                          R9
       41 CALL                             R8 1 2
       42 GETUPVAL                         R10 5
       43 GETTABLEKS                       R10 R10 K6 ["useSignalState"]
       45 GETTABLEKS                       R11 R3 K9 ["observePinActive"]
       47 CALL                             R10 1 1
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K10 ["useMemo"]
       51 DUPCLOSURE                       R12 K11 [PROTO_31]
       52 CAPTURE                          UPVAL U6
       53 NEWTABLE                         R13 0 0
       55 CALL                             R11 2 2
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          VAL R1
       58 GETUPVAL                         R14 1
       59 GETTABLEKS                       R14 R14 K12 ["useCallback"]
       61 NEWCLOSURE                       R15 P2
       62 CAPTURE                          VAL R4
       63 NEWTABLE                         R16 0 2
       65 GETTABLEKS                       R17 R4 K13 ["deleteSelection"]
       67 GETTABLEKS                       R18 R4 K14 ["selectTransition"]
       69 SETLIST                          R16 R17 2 [1]
       71 CALL                             R14 2 1
       72 GETUPVAL                         R15 1
       73 GETTABLEKS                       R15 R15 K12 ["useCallback"]
       75 NEWCLOSURE                       R16 P3
       76 CAPTURE                          VAL R4
       77 NEWTABLE                         R17 0 1
       79 GETTABLEKS                       R18 R4 K14 ["selectTransition"]
       81 SETLIST                          R17 R18 1 [1]
       83 CALL                             R15 2 1
       84 GETUPVAL                         R16 1
       85 GETTABLEKS                       R16 R16 K12 ["useCallback"]
       87 NEWCLOSURE                       R17 P4
       88 CAPTURE                          VAL R4
       89 NEWTABLE                         R18 0 1
       91 GETTABLEKS                       R19 R4 K14 ["selectTransition"]
       93 SETLIST                          R18 R19 1 [1]
       95 CALL                             R16 2 1
       96 GETUPVAL                         R17 1
       97 GETTABLEKS                       R17 R17 K12 ["useCallback"]
       99 NEWCLOSURE                       R18 P5
      100 CAPTURE                          VAL R4
      101 NEWTABLE                         R19 0 1
      103 GETTABLEKS                       R20 R4 K14 ["selectTransition"]
      105 SETLIST                          R19 R20 1 [1]
      107 CALL                             R17 2 1
      108 NEWTABLE                         R18 0 0
      110 GETTABLEKS                       R19 R0 K15 ["data"]
      112 GETTABLEKS                       R19 R19 K16 ["transitions"]
      114 LOADNIL                          R20
      115 LOADNIL                          R21
      116 FORGPREP                         R19
      117 GETTABLEKS                       R25 R23 K17 ["fromStateId"]
      119 GETTABLEKS                       R26 R23 K18 ["toStateId"]
      121 LOADK                            R27 K19 ["%*->%*"]
      122 MOVE                             R29 R25
      123 MOVE                             R30 R26
      124 NAMECALL                         R27 R27 K20 ["format"]
      126 CALL                             R27 3 1
      127 MOVE                             R24 R27
      128 LOADB                            R25 1
      129 SETTABLE                         R25 R18 R24
      130 FORGLOOP                         R19 2 ; [-14]
      132 JUMPIFNOT                        R7 ; [+16]
      133 GETTABLEKS                       R19 R7 K21 ["targetStateId"]
      135 JUMPIFNOT                        R19 ; [+13]
      136 GETTABLEKS                       R20 R7 K17 ["fromStateId"]
      138 GETTABLEKS                       R21 R7 K21 ["targetStateId"]
      140 LOADK                            R22 K19 ["%*->%*"]
      141 MOVE                             R24 R20
      142 MOVE                             R25 R21
      143 NAMECALL                         R22 R22 K20 ["format"]
      145 CALL                             R22 3 1
      146 MOVE                             R19 R22
      147 LOADB                            R20 1
      148 SETTABLE                         R20 R18 R19
      149 NEWTABLE                         R19 1 0
      151 GETTABLEKS                       R20 R0 K15 ["data"]
      153 GETTABLEKS                       R20 R20 K16 ["transitions"]
      155 LOADNIL                          R21
      156 LOADNIL                          R22
      157 FORGPREP                         R20
      158 GETTABLEKS                       R26 R24 K22 ["id"]
      160 JUMPIFEQ                         R5 R26 ; [+2]
      162 LOADB                            R25 0 +1
      163 LOADB                            R25 1
      164 LOADB                            R26 0
      165 JUMPIFNOTEQKNIL                  R7 ; [+9]
      167 NOT                              R26 R10
      168 JUMPIFNOT                        R26 ; [+6]
      169 GETTABLEKS                       R27 R24 K22 ["id"]
      171 JUMPIFEQ                         R8 R27 ; [+2]
      173 LOADB                            R26 0 +1
      174 LOADB                            R26 1
      175 JUMPIFNOT                        R25 ; [+7]
      176 GETTABLEKS                       R27 R1 K23 ["Color"]
      178 GETTABLEKS                       R27 R27 K24 ["System"]
      180 GETTABLEKS                       R27 R27 K25 ["Emphasis"]
      182 JUMP                             ; [+16]
      183 JUMPIFNOT                        R26 ; [+7]
      184 GETTABLEKS                       R27 R1 K23 ["Color"]
      186 GETTABLEKS                       R27 R27 K24 ["System"]
      188 GETTABLEKS                       R27 R27 K26 ["Neutral"]
      190 JUMP                             ; [+8]
      191 GETTABLEKS                       R27 R1 K23 ["Color"]
      193 GETTABLEKS                       R27 R27 K27 ["Extended"]
      195 GETTABLEKS                       R27 R27 K28 ["Gray"]
      197 GETTABLEKS                       R27 R27 K29 ["Gray_600"]
      199 JUMPIFEQKNIL                     R7 ; [+16]
      201 GETTABLEKS                       R28 R27 K30 ["Color3"]
      203 GETTABLEKS                       R30 R1 K23 ["Color"]
      205 GETTABLEKS                       R30 R30 K31 ["Surface"]
      207 GETTABLEKS                       R30 R30 K32 ["Surface_100"]
      209 GETTABLEKS                       R30 R30 K30 ["Color3"]
      211 LOADK                            R31 K33 [0.6]
      212 NAMECALL                         R28 R28 K34 ["Lerp"]
      214 CALL                             R28 3 1
      215 JUMP                             ; [+2]
      216 GETTABLEKS                       R28 R27 K30 ["Color3"]
      218 GETTABLEKS                       R29 R24 K22 ["id"]
      220 GETUPVAL                         R30 1
      221 GETTABLEKS                       R30 R30 K35 ["createElement"]
      223 GETUPVAL                         R31 7
      224 DUPTABLE                         R32 K50 [{"transition", "data", "onDataChanged", "observeFrom", "observeTo", "observeOrigin", "hasReverse", "color", "fillFraction", "fillColor", "showPopup", "onSelect", "onRightSelect", "onDeselect", "setHoveredId"}]
      225 SETTABLEKS                       R24 R32 K36 ["transition"]
      227 GETTABLEKS                       R33 R0 K15 ["data"]
      229 SETTABLEKS                       R33 R32 K15 ["data"]
      231 GETTABLEKS                       R33 R0 K37 ["onDataChanged"]
      233 SETTABLEKS                       R33 R32 K37 ["onDataChanged"]
      235 GETTABLEKS                       R33 R2 K51 ["observe"]
      237 GETTABLEKS                       R34 R24 K17 ["fromStateId"]
      239 CALL                             R33 1 1
      240 SETTABLEKS                       R33 R32 K38 ["observeFrom"]
      242 GETTABLEKS                       R33 R2 K51 ["observe"]
      244 GETTABLEKS                       R34 R24 K18 ["toStateId"]
      246 CALL                             R33 1 1
      247 SETTABLEKS                       R33 R32 K39 ["observeTo"]
      249 SETTABLEKS                       R11 R32 K40 ["observeOrigin"]
      251 GETTABLEKS                       R36 R24 K18 ["toStateId"]
      253 GETTABLEKS                       R37 R24 K17 ["fromStateId"]
      255 LOADK                            R38 K19 ["%*->%*"]
      256 MOVE                             R40 R36
      257 MOVE                             R41 R37
      258 NAMECALL                         R38 R38 K20 ["format"]
      260 CALL                             R38 3 1
      261 MOVE                             R35 R38
      262 GETTABLE                         R34 R18 R35
      263 JUMPIFEQKB                       R34 TRUE ; [+2]
      265 LOADB                            R33 0 +1
      266 LOADB                            R33 1
      267 SETTABLEKS                       R33 R32 K41 ["hasReverse"]
      269 SETTABLEKS                       R28 R32 K42 ["color"]
      271 GETTABLEKS                       R34 R24 K22 ["id"]
      273 GETTABLEKS                       R35 R0 K52 ["fillTransitionId"]
      275 JUMPIFNOTEQ                      R34 R35 ; [+4]
      277 GETTABLEKS                       R33 R0 K43 ["fillFraction"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R33
      281 SETTABLEKS                       R33 R32 K43 ["fillFraction"]
      283 GETTABLEKS                       R33 R1 K23 ["Color"]
      285 GETTABLEKS                       R33 R33 K27 ["Extended"]
      287 GETTABLEKS                       R33 R33 K53 ["White"]
      289 GETTABLEKS                       R33 R33 K54 ["White_100"]
      291 GETTABLEKS                       R33 R33 K30 ["Color3"]
      293 SETTABLEKS                       R33 R32 K44 ["fillColor"]
      295 AND                              R33 R25 R6
      296 SETTABLEKS                       R33 R32 K45 ["showPopup"]
      298 SETTABLEKS                       R15 R32 K46 ["onSelect"]
      300 SETTABLEKS                       R16 R32 K47 ["onRightSelect"]
      302 SETTABLEKS                       R17 R32 K48 ["onDeselect"]
      304 SETTABLEKS                       R9 R32 K49 ["setHoveredId"]
      306 CALL                             R30 2 1
      307 SETTABLE                         R30 R19 R29
      308 FORGLOOP                         R20 2 ; [-151]
      310 JUMPIFNOT                        R7 ; [+30]
      311 GETUPVAL                         R20 1
      312 GETTABLEKS                       R20 R20 K35 ["createElement"]
      314 GETUPVAL                         R21 8
      315 DUPTABLE                         R22 K56 [{"observePending", "observeGeometry", "observeOrigin", "color"}]
      316 GETTABLEKS                       R23 R3 K7 ["observePending"]
      318 SETTABLEKS                       R23 R22 K7 ["observePending"]
      320 GETTABLEKS                       R23 R2 K51 ["observe"]
      322 SETTABLEKS                       R23 R22 K55 ["observeGeometry"]
      324 SETTABLEKS                       R11 R22 K40 ["observeOrigin"]
      326 GETTABLEKS                       R23 R1 K23 ["Color"]
      328 GETTABLEKS                       R23 R23 K27 ["Extended"]
      330 GETTABLEKS                       R23 R23 K28 ["Gray"]
      332 GETTABLEKS                       R23 R23 K29 ["Gray_600"]
      334 GETTABLEKS                       R23 R23 K30 ["Color3"]
      336 SETTABLEKS                       R23 R22 K42 ["color"]
      338 CALL                             R20 2 1
      339 SETTABLEKS                       R20 R19 K57 ["Preview"]
      341 GETUPVAL                         R20 1
      342 GETTABLEKS                       R20 R20 K35 ["createElement"]
      344 LOADK                            R21 K58 ["Frame"]
      345 NEWTABLE                         R22 8 0
      347 GETIMPORT                        R23 K61 [UDim2.fromScale]
      349 LOADN                            R24 1
      350 LOADN                            R25 1
      351 CALL                             R23 2 1
      352 SETTABLEKS                       R23 R22 K62 ["Size"]
      354 LOADN                            R23 1
      355 SETTABLEKS                       R23 R22 K63 ["BackgroundTransparency"]
      357 LOADB                            R23 0
      358 SETTABLEKS                       R23 R22 K64 ["ClipsDescendants"]
      360 LOADN                            R23 5
      361 SETTABLEKS                       R23 R22 K65 ["ZIndex"]
      363 GETUPVAL                         R23 1
      364 GETTABLEKS                       R23 R23 K66 ["Change"]
      366 GETTABLEKS                       R23 R23 K67 ["AbsolutePosition"]
      368 NEWCLOSURE                       R24 P6
      369 CAPTURE                          VAL R12
      370 SETTABLE                         R24 R22 R23
      371 GETUPVAL                         R23 1
      372 GETTABLEKS                       R23 R23 K68 ["Event"]
      374 GETTABLEKS                       R23 R23 K69 ["InputBegan"]
      376 SETTABLE                         R14 R22 R23
      377 MOVE                             R23 R19
      378 CALL                             R20 3 -1
      379 RETURN                           R20 -1

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
       51 GETTABLEKS                       R8 R0 K15 ["Data"]
       53 GETTABLEKS                       R8 R8 K16 ["StateMachineData"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K13 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K17 ["StateMachineGeometryContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K13 ["Contexts"]
       67 GETTABLEKS                       R10 R10 K18 ["StateMachineSelectionContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K15 ["Data"]
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
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R18
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R22
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R23
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R7
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
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R24
      143 CAPTURE                          VAL R25
      144 RETURN                           R26 1
