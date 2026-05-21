PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["initialPositionValue"]
        2 GETTABLEKS                       R2 R0 K1 ["scene"]
        4 GETTABLEKS                       R4 R2 K2 ["index"]
        6 JUMPIFNOTEQ                      R1 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 JUMPIFNOT                        R3 ; [+2]
       11 LOADK                            R4 K3 [1000000]
       12 JUMP                             ; [+1]
       13 LOADN                            R4 0
       14 DUPTABLE                         R5 K7 [{"forceHidden", "initialPosition", "positionStep"}]
       15 SETTABLEKS                       R3 R5 K4 ["forceHidden"]
       17 GETIMPORT                        R6 K10 [UDim2.new]
       19 LOADN                            R7 0
       20 MOVE                             R8 R4
       21 LOADN                            R9 0
       22 MOVE                             R10 R4
       23 CALL                             R6 4 1
       24 SETTABLEKS                       R6 R5 K5 ["initialPosition"]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R5 K6 ["positionStep"]
       29 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTLT                      R0 R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTLT                      R0 R1 ; [+12]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 1
       10 LOADN                            R3 0
       11 GETUPVAL                         R6 0
       12 SUB                              R5 R0 R6
       13 GETUPVAL                         R7 2
       14 GETUPVAL                         R8 0
       15 SUB                              R6 R7 R8
       16 DIV                              R4 R5 R6
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1
       19 GETUPVAL                         R1 2
       20 JUMPIFNOTEQ                      R0 R1 ; [+3]
       22 LOADN                            R1 0
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 4
       25 JUMPIFNOTLT                      R0 R1 ; [+13]
       27 GETUPVAL                         R1 3
       28 LOADN                            R2 0
       29 GETUPVAL                         R4 1
       30 MINUS                            R3 R4
       31 GETUPVAL                         R6 2
       32 SUB                              R5 R0 R6
       33 GETUPVAL                         R7 4
       34 GETUPVAL                         R8 2
       35 SUB                              R6 R7 R8
       36 DIV                              R4 R5 R6
       37 CALL                             R1 3 -1
       38 RETURN                           R1 -1
       39 GETUPVAL                         R2 1
       40 MINUS                            R1 R2
       41 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R2 K1 ["Position"]
        6 GETIMPORT                        R4 K4 [UDim2.new]
        8 GETTABLEKS                       R5 R3 K5 ["X"]
       10 GETTABLEKS                       R5 R5 K6 ["Scale"]
       12 GETUPVAL                         R7 0
       13 JUMPIFNOTLT                      R1 R7 ; [+3]
       15 GETUPVAL                         R6 1
       16 JUMP                             ; [+36]
       17 GETUPVAL                         R7 2
       18 JUMPIFNOTLT                      R1 R7 ; [+12]
       20 GETUPVAL                         R6 3
       21 GETUPVAL                         R7 1
       22 LOADN                            R8 0
       23 GETUPVAL                         R11 0
       24 SUB                              R10 R1 R11
       25 GETUPVAL                         R12 2
       26 GETUPVAL                         R13 0
       27 SUB                              R11 R12 R13
       28 DIV                              R9 R10 R11
       29 CALL                             R6 3 1
       30 JUMP                             ; [+22]
       31 GETUPVAL                         R7 2
       32 JUMPIFNOTEQ                      R1 R7 ; [+3]
       34 LOADN                            R6 0
       35 JUMP                             ; [+17]
       36 GETUPVAL                         R7 4
       37 JUMPIFNOTLT                      R1 R7 ; [+13]
       39 GETUPVAL                         R6 3
       40 LOADN                            R7 0
       41 GETUPVAL                         R9 1
       42 MINUS                            R8 R9
       43 GETUPVAL                         R11 2
       44 SUB                              R10 R1 R11
       45 GETUPVAL                         R12 4
       46 GETUPVAL                         R13 2
       47 SUB                              R11 R12 R13
       48 DIV                              R9 R10 R11
       49 CALL                             R6 3 1
       50 JUMP                             ; [+2]
       51 GETUPVAL                         R7 1
       52 MINUS                            R6 R7
       53 GETTABLEKS                       R7 R3 K7 ["Y"]
       55 GETTABLEKS                       R7 R7 K6 ["Scale"]
       57 GETTABLEKS                       R8 R3 K7 ["Y"]
       59 GETTABLEKS                       R8 R8 K8 ["Offset"]
       61 CALL                             R4 4 1
       62 SETTABLEKS                       R4 R2 K1 ["Position"]
       64 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["initialPositionValue"]
        2 GETTABLEKS                       R2 R0 K1 ["layout"]
        4 GETTABLEKS                       R3 R0 K2 ["scene"]
        6 GETTABLEKS                       R4 R2 K3 ["isMeasured"]
        8 JUMPIF                           R4 ; [+4]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 RETURN                           R4 1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 JUMPIF                           R4 ; [+17]
       17 DUPTABLE                         R5 K7 [{"forceHidden", "initialPosition", "positionStep"}]
       18 LOADB                            R6 1
       19 SETTABLEKS                       R6 R5 K4 ["forceHidden"]
       21 GETIMPORT                        R6 K10 [UDim2.new]
       23 LOADN                            R7 0
       24 LOADK                            R8 K11 [100000]
       25 LOADN                            R9 0
       26 LOADK                            R10 K11 [100000]
       27 CALL                             R6 4 1
       28 SETTABLEKS                       R6 R5 K5 ["initialPosition"]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K6 ["positionStep"]
       33 RETURN                           R5 1
       34 GETTABLEKS                       R5 R4 K12 ["first"]
       36 GETTABLEKS                       R6 R4 K13 ["last"]
       38 GETTABLEKS                       R7 R3 K14 ["index"]
       40 GETTABLEKS                       R8 R2 K15 ["initWidth"]
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R7
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R6
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R7
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R6
       54 GETIMPORT                        R11 K10 [UDim2.new]
       56 LOADN                            R12 0
       57 JUMPIFNOTLT                      R1 R5 ; [+3]
       59 MOVE                             R13 R8
       60 JUMP                             ; [+25]
       61 JUMPIFNOTLT                      R1 R7 ; [+9]
       63 GETUPVAL                         R13 2
       64 MOVE                             R14 R8
       65 LOADN                            R15 0
       66 SUB                              R17 R1 R5
       67 SUB                              R18 R7 R5
       68 DIV                              R16 R17 R18
       69 CALL                             R13 3 1
       70 JUMP                             ; [+15]
       71 JUMPIFNOTEQ                      R1 R7 ; [+3]
       73 LOADN                            R13 0
       74 JUMP                             ; [+11]
       75 JUMPIFNOTLT                      R1 R6 ; [+9]
       77 GETUPVAL                         R13 2
       78 LOADN                            R14 0
       79 MINUS                            R15 R8
       80 SUB                              R17 R1 R7
       81 SUB                              R18 R6 R7
       82 DIV                              R16 R17 R18
       83 CALL                             R13 3 1
       84 JUMP                             ; [+1]
       85 MINUS                            R13 R8
       86 LOADN                            R14 0
       87 LOADN                            R15 0
       88 CALL                             R11 4 1
       89 DUPTABLE                         R12 K16 [{"initialPosition", "positionStep"}]
       90 SETTABLEKS                       R11 R12 K5 ["initialPosition"]
       92 SETTABLEKS                       R10 R12 K6 ["positionStep"]
       94 RETURN                           R12 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTLT                      R0 R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTLT                      R0 R1 ; [+12]
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 1
       10 LOADN                            R3 0
       11 GETUPVAL                         R6 0
       12 SUB                              R5 R0 R6
       13 GETUPVAL                         R7 2
       14 GETUPVAL                         R8 0
       15 SUB                              R6 R7 R8
       16 DIV                              R4 R5 R6
       17 CALL                             R1 3 -1
       18 RETURN                           R1 -1
       19 LOADN                            R1 0
       20 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R2 K1 ["Position"]
        6 GETIMPORT                        R4 K4 [UDim2.new]
        8 GETTABLEKS                       R5 R3 K5 ["X"]
       10 GETTABLEKS                       R5 R5 K6 ["Scale"]
       12 GETTABLEKS                       R6 R3 K5 ["X"]
       14 GETTABLEKS                       R6 R6 K7 ["Offset"]
       16 GETTABLEKS                       R7 R3 K8 ["Y"]
       18 GETTABLEKS                       R7 R7 K6 ["Scale"]
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R1
       22 CALL                             R8 1 -1
       23 CALL                             R4 -1 1
       24 SETTABLEKS                       R4 R2 K1 ["Position"]
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["initialPositionValue"]
        2 GETTABLEKS                       R2 R0 K1 ["layout"]
        4 GETTABLEKS                       R3 R0 K2 ["scene"]
        6 GETTABLEKS                       R4 R2 K3 ["isMeasured"]
        8 JUMPIF                           R4 ; [+4]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 RETURN                           R4 1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 JUMPIF                           R4 ; [+17]
       17 DUPTABLE                         R5 K7 [{"forceHidden", "initialPosition", "positionStep"}]
       18 LOADB                            R6 1
       19 SETTABLEKS                       R6 R5 K4 ["forceHidden"]
       21 GETIMPORT                        R6 K10 [UDim2.new]
       23 LOADN                            R7 0
       24 LOADK                            R8 K11 [100000]
       25 LOADN                            R9 0
       26 LOADK                            R10 K11 [100000]
       27 CALL                             R6 4 1
       28 SETTABLEKS                       R6 R5 K5 ["initialPosition"]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K6 ["positionStep"]
       33 RETURN                           R5 1
       34 GETTABLEKS                       R5 R4 K12 ["first"]
       36 GETTABLEKS                       R6 R3 K13 ["index"]
       38 GETTABLEKS                       R7 R2 K14 ["initHeight"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R6
       44 CAPTURE                          UPVAL U2
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          VAL R8
       47 GETIMPORT                        R10 K10 [UDim2.new]
       49 LOADN                            R11 0
       50 LOADN                            R12 0
       51 LOADN                            R13 0
       52 MOVE                             R14 R8
       53 MOVE                             R15 R1
       54 CALL                             R14 1 -1
       55 CALL                             R10 -1 1
       56 DUPTABLE                         R11 K15 [{"initialPosition", "positionStep"}]
       57 SETTABLEKS                       R10 R11 K5 ["initialPosition"]
       59 SETTABLEKS                       R9 R11 K6 ["positionStep"]
       61 RETURN                           R11 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 SUBK                             R2 R3 K0 [0.5]
        2 JUMPIFLE                         R2 R0 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R5 0
        5 SUBK                             R4 R5 K1 [0.5]
        6 JUMPIFLE                         R4 R1 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["Visible"]
       12 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["initialPositionValue"]
        2 GETTABLEKS                       R2 R0 K1 ["layout"]
        4 GETTABLEKS                       R3 R0 K2 ["scene"]
        6 GETTABLEKS                       R4 R2 K3 ["isMeasured"]
        8 JUMPIF                           R4 ; [+4]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 RETURN                           R4 1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R0
       15 CALL                             R4 1 1
       16 JUMPIF                           R4 ; [+17]
       17 DUPTABLE                         R5 K7 [{"forceHidden", "initialPosition", "positionStep"}]
       18 LOADB                            R6 1
       19 SETTABLEKS                       R6 R5 K4 ["forceHidden"]
       21 GETIMPORT                        R6 K10 [UDim2.new]
       23 LOADN                            R7 0
       24 LOADK                            R8 K11 [100000]
       25 LOADN                            R9 0
       26 LOADK                            R10 K11 [100000]
       27 CALL                             R6 4 1
       28 SETTABLEKS                       R6 R5 K5 ["initialPosition"]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K6 ["positionStep"]
       33 RETURN                           R5 1
       34 GETTABLEKS                       R5 R3 K12 ["index"]
       36 NEWCLOSURE                       R6 P0
       37 CAPTURE                          VAL R5
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R5
       40 DUPTABLE                         R8 K7 [{"forceHidden", "initialPosition", "positionStep"}]
       41 SUBK                             R11 R5 K13 [0.5]
       42 JUMPIFLE                         R11 R1 ; [+2]
       44 LOADB                            R10 0 +1
       45 LOADB                            R10 1
       46 NOT                              R9 R10
       47 SETTABLEKS                       R9 R8 K4 ["forceHidden"]
       49 GETIMPORT                        R9 K10 [UDim2.new]
       51 LOADN                            R10 0
       52 LOADN                            R11 0
       53 LOADN                            R12 0
       54 LOADN                            R13 0
       55 CALL                             R9 4 1
       56 SETTABLEKS                       R9 R8 K5 ["initialPosition"]
       58 SETTABLEKS                       R7 R8 K6 ["positionStep"]
       60 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["utils"]
       13 GETTABLEKS                       R3 R3 K6 ["getSceneIndicesForInterpolationInputRange"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R1 K5 ["utils"]
       20 GETTABLEKS                       R4 R4 K7 ["lerp"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K8 [PROTO_0]
       24 DUPCLOSURE                       R5 K9 [PROTO_3]
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 DUPCLOSURE                       R6 K10 [PROTO_6]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R7 K11 [PROTO_9]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 DUPTABLE                         R8 K15 [{"forHorizontal", "forVertical", "forFade"}]
       36 SETTABLEKS                       R5 R8 K12 ["forHorizontal"]
       38 SETTABLEKS                       R6 R8 K13 ["forVertical"]
       40 SETTABLEKS                       R7 R8 K14 ["forFade"]
       42 RETURN                           R8 1
