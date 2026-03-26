PROTO_0:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R1 1
        1 JUMPIFNOTLT                      R1 R0 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 0
        5 MUL                              R1 R0 R2
        6 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 1
       15 LOADN                            R1 0
       16 SETTABLEKS                       R1 R0 K0 ["current"]
       18 GETUPVAL                         R0 2
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["current"]
       14 GETTABLEKS                       R2 R3 K1 ["CanvasPosition"]
       16 GETTABLEKS                       R1 R2 K2 ["Y"]
       18 GETUPVAL                         R3 3
       19 SUB                              R2 R3 R1
       20 GETUPVAL                         R5 4
       21 GETTABLEKS                       R4 R5 K3 ["FoundationBottomSheetImproveSpring"]
       23 JUMPIFNOT                        R4 ; [+3]
       24 MULK                             R4 R2 K4 [25.1327412287183]
       25 MULK                             R3 R4 K4 [25.1327412287183]
       26 JUMP                             ; [+2]
       27 MULK                             R4 R2 K5 [18]
       28 MULK                             R3 R4 K5 [18]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R4 R5 K3 ["FoundationBottomSheetImproveSpring"]
       32 JUMPIF                           R4 ; [+9]
       33 GETUPVAL                         R6 5
       34 SUB                              R5 R1 R6
       35 DIV                              R4 R5 R0
       36 GETUPVAL                         R5 6
       37 GETTABLEKS                       R6 R5 K0 ["current"]
       39 SUB                              R6 R6 R4
       40 SETTABLEKS                       R6 R5 K0 ["current"]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R5 R6 K3 ["FoundationBottomSheetImproveSpring"]
       45 JUMPIFNOT                        R5 ; [+9]
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R8 R9 K0 ["current"]
       49 MINUS                            R7 R8
       50 MULK                             R6 R7 K6 [2]
       51 GETUPVAL                         R7 7
       52 MUL                              R5 R6 R7
       53 MULK                             R4 R5 K4 [25.1327412287183]
       54 JUMP                             ; [+8]
       55 GETUPVAL                         R9 6
       56 GETTABLEKS                       R8 R9 K0 ["current"]
       58 MINUS                            R7 R8
       59 MULK                             R6 R7 K6 [2]
       60 GETUPVAL                         R7 7
       61 MUL                              R5 R6 R7
       62 MULK                             R4 R5 K5 [18]
       63 ADD                              R5 R3 R4
       64 FASTCALL2K                       MATH_MIN R0 K7 ; [+5]
       66 MOVE                             R7 R0
       67 LOADK                            R8 K7 [0.0333333333333333]
       68 GETIMPORT                        R6 K10 [math.min]
       70 CALL                             R6 2 1
       71 GETUPVAL                         R7 6
       72 GETUPVAL                         R10 6
       73 GETTABLEKS                       R9 R10 K0 ["current"]
       75 MUL                              R10 R5 R6
       76 ADD                              R8 R9 R10
       77 SETTABLEKS                       R8 R7 K0 ["current"]
       79 GETUPVAL                         R10 6
       80 GETTABLEKS                       R9 R10 K0 ["current"]
       82 MUL                              R8 R9 R6
       83 ADD                              R7 R1 R8
       84 GETUPVAL                         R9 0
       85 GETTABLEKS                       R8 R9 K0 ["current"]
       87 GETIMPORT                        R9 K13 [Vector2.new]
       89 LOADN                            R10 0
       90 MOVE                             R11 R7
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K1 ["CanvasPosition"]
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R10 R11 K0 ["current"]
       97 GETTABLEKS                       R9 R10 K1 ["CanvasPosition"]
       99 GETTABLEKS                       R8 R9 K2 ["Y"]
      101 SETUPVAL                         R8 5
      102 LOADB                            R8 0
      103 FASTCALL1                        MATH_ABS R2 ; [+3]
      104 MOVE                             R10 R2
      105 GETIMPORT                        R9 K15 [math.abs]
      107 CALL                             R9 1 1
      108 LOADK                            R10 K16 [0.5]
      109 JUMPIFNOTLT                      R9 R10 ; [+13]
      111 GETUPVAL                         R11 6
      112 GETTABLEKS                       R10 R11 K0 ["current"]
      114 FASTCALL1                        MATH_ABS R10 ; [+2]
      115 GETIMPORT                        R9 K15 [math.abs]
      117 CALL                             R9 1 1
      118 LOADN                            R10 1
      119 JUMPIFLT                         R9 R10 ; [+2]
      121 LOADB                            R8 0 +1
      122 LOADB                            R8 1
      123 JUMPIFNOT                        R8 ; [+12]
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R9 R10 K0 ["current"]
      127 GETIMPORT                        R10 K13 [Vector2.new]
      129 LOADN                            R11 0
      130 GETUPVAL                         R12 3
      131 CALL                             R10 2 1
      132 SETTABLEKS                       R10 R9 K1 ["CanvasPosition"]
      134 GETUPVAL                         R9 2
      135 CALL                             R9 0 0
      136 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["FoundationBottomSheetImproveSpring"]
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K0 ["current"]
       17 NAMECALL                         R1 R1 K2 ["ResetScrollVelocity"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K0 ["current"]
       23 JUMPIFNOT                        R2 ; [+8]
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R3 R4 K0 ["current"]
       27 GETTABLEKS                       R2 R3 K3 ["CanvasPosition"]
       29 GETTABLEKS                       R1 R2 K4 ["Y"]
       31 JUMP                             ; [+1]
       32 LOADN                            R1 0
       33 GETUPVAL                         R2 4
       34 GETIMPORT                        R4 K6 [game]
       36 LOADK                            R6 K7 ["RunService"]
       37 NAMECALL                         R4 R4 K8 ["GetService"]
       39 CALL                             R4 2 1
       40 GETTABLEKS                       R3 R4 K9 ["Heartbeat"]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          REF R1
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 NAMECALL                         R3 R3 K10 ["Connect"]
       53 CALL                             R3 2 1
       54 SETTABLEKS                       R3 R2 K0 ["current"]
       56 CLOSEUPVALS                      R1
       57 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 ADD                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R4 3
        6 GETTABLE                         R3 R4 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 SETTABLEKS                       R0 R1 K0 ["current"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K0 ["current"]
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 GETIMPORT                        R2 K3 [Vector2.new]
       14 LOADN                            R3 0
       15 GETUPVAL                         R4 3
       16 GETUPVAL                         R6 4
       17 GETTABLE                         R5 R6 R0
       18 CALL                             R4 1 -1
       19 CALL                             R2 -1 1
       20 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["FoundationSheetReducedMotion"]
        8 JUMPIFNOT                        R1 ; [+31]
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+29]
       11 JUMPIF                           R0 ; [+28]
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K0 ["current"]
       16 GETUPVAL                         R1 3
       17 CALL                             R1 0 0
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R1 R2 K0 ["current"]
       21 JUMPIFNOT                        R1 ; [+10]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R1 R2 K0 ["current"]
       25 GETIMPORT                        R2 K4 [Vector2.new]
       27 LOADN                            R3 0
       28 LOADN                            R4 0
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K5 ["CanvasPosition"]
       32 GETUPVAL                         R1 5
       33 GETUPVAL                         R3 6
       34 GETTABLEKS                       R2 R3 K6 ["instant"]
       36 LOADN                            R3 1
       37 CALL                             R2 1 1
       38 CALL                             R1 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 7
       41 GETUPVAL                         R4 8
       42 GETTABLEKS                       R3 R4 K0 ["current"]
       44 MINUS                            R2 R3
       45 SETTABLEKS                       R2 R1 K0 ["current"]
       47 GETUPVAL                         R1 9
       48 LOADN                            R2 0
       49 CALL                             R1 1 0
       50 GETUPVAL                         R1 5
       51 GETUPVAL                         R3 6
       52 GETTABLEKS                       R2 R3 K7 ["ease"]
       54 LOADN                            R3 1
       55 DUPTABLE                         R4 K9 [{"duration"}]
       56 GETUPVAL                         R7 10
       57 GETTABLEKS                       R6 R7 K10 ["Time"]
       59 GETTABLEKS                       R5 R6 K11 ["Time_100"]
       61 SETTABLEKS                       R5 R4 K8 ["duration"]
       63 CALL                             R2 2 -1
       64 CALL                             R1 -1 0
       65 GETUPVAL                         R1 0
       66 LOADB                            R2 1
       67 SETTABLEKS                       R2 R1 K0 ["current"]
       69 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 LOADN                            R2 0
        5 JUMPIFLE                         R1 R2 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K1 ["current"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K2 ["FoundationBottomSheetImproveSpring"]
       15 JUMPIFNOT                        R4 ; [+8]
       16 GETUPVAL                         R5 3
       17 GETUPVAL                         R6 4
       18 ADD                              R4 R5 R6
       19 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       20 GETIMPORT                        R3 K5 [math.floor]
       22 CALL                             R3 1 1
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R5 3
       25 GETUPVAL                         R6 4
       26 ADD                              R4 R5 R6
       27 FASTCALL1                        MATH_ROUND R4 ; [+2]
       28 GETIMPORT                        R3 K7 [math.round]
       30 CALL                             R3 1 1
       31 JUMPIFLE                         R3 R2 ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R2 R3 K1 ["current"]
       38 LOADN                            R3 0
       39 JUMPIFNOTLT                      R3 R2 ; [+10]
       41 JUMPIFNOT                        R0 ; [+8]
       42 GETUPVAL                         R3 6
       43 GETTABLEKS                       R2 R3 K1 ["current"]
       45 JUMPIFNOT                        R2 ; [+4]
       46 GETUPVAL                         R2 7
       47 LOADB                            R3 0
       48 CALL                             R2 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R3 5
       51 GETTABLEKS                       R2 R3 K1 ["current"]
       53 LOADN                            R3 0
       54 JUMPIFLT                         R2 R3 ; [+10]
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R2 R3 K2 ["FoundationBottomSheetImproveSpring"]
       59 JUMPIFNOT                        R2 ; [+9]
       60 GETUPVAL                         R3 5
       61 GETTABLEKS                       R2 R3 K1 ["current"]
       63 JUMPIFNOTEQKN                    R2 K8 [0] ; [+5]
       65 JUMPIFNOT                        R1 ; [+3]
       66 GETUPVAL                         R2 7
       67 LOADB                            R3 1
       68 CALL                             R2 1 0
       69 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R5 R0 K0 ["position"]
        2 GETUPVAL                         R6 0
        3 SUB                              R4 R5 R6
        4 FASTCALL1                        MATH_ABS R4 ; [+2]
        5 GETIMPORT                        R3 K3 [math.abs]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R6 R1 K0 ["position"]
       10 GETUPVAL                         R7 0
       11 SUB                              R5 R6 R7
       12 FASTCALL1                        MATH_ABS R5 ; [+2]
       13 GETIMPORT                        R4 K3 [math.abs]
       15 CALL                             R4 1 1
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 DIVK                             R2 R0 K1 [2.35]
        7 SUB                              R3 R1 R2
        8 NEWTABLE                         R4 0 1
       10 DUPTABLE                         R5 K4 [{"index", "position"}]
       11 LOADN                            R6 0
       12 SETTABLEKS                       R6 R5 K2 ["index"]
       14 LOADN                            R6 0
       15 SETTABLEKS                       R6 R5 K3 ["position"]
       17 SETLIST                          R4 R5 1 [1]
       19 GETUPVAL                         R5 2
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 DUPTABLE                         R12 K4 [{"index", "position"}]
       24 SETTABLEKS                       R8 R12 K2 ["index"]
       26 GETUPVAL                         R13 3
       27 MOVE                             R14 R9
       28 CALL                             R13 1 1
       29 SETTABLEKS                       R13 R12 K3 ["position"]
       31 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       33 MOVE                             R11 R4
       34 GETIMPORT                        R10 K7 [table.insert]
       36 CALL                             R10 2 0
       37 FORGLOOP                         R5 2 ; [-15]
       39 GETIMPORT                        R5 K9 [table.sort]
       41 MOVE                             R6 R4
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          VAL R3
       44 CALL                             R5 2 0
       45 GETTABLEN                        R5 R4 1
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R6 R7 K0 ["current"]
       49 JUMPIF                           R6 ; [+23]
       50 GETUPVAL                         R6 5
       51 MINUS                            R7 R0
       52 SETTABLEKS                       R7 R6 K0 ["current"]
       54 GETTABLEKS                       R6 R5 K2 ["index"]
       56 JUMPIFNOTEQKN                    R6 K10 [0] ; [+12]
       58 GETUPVAL                         R7 6
       59 GETTABLEKS                       R6 R7 K11 ["FoundationSheetReducedMotion"]
       61 JUMPIFNOT                        R6 ; [+4]
       62 GETUPVAL                         R6 7
       63 LOADB                            R7 1
       64 CALL                             R6 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R6 7
       67 CALL                             R6 0 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R6 8
       70 GETTABLEKS                       R7 R5 K2 ["index"]
       72 CALL                             R6 1 0
       73 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+55]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["FoundationSheetReducedMotion"]
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+13]
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R2 4
       10 GETTABLEKS                       R1 R2 K1 ["defaultSnapPointIndex"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 GETUPVAL                         R2 6
       15 GETTABLEKS                       R1 R2 K2 ["instant"]
       17 LOADN                            R2 0
       18 CALL                             R1 1 -1
       19 CALL                             R0 -1 0
       20 JUMP                             ; [+20]
       21 GETUPVAL                         R0 7
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R1 R2 K1 ["defaultSnapPointIndex"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 5
       27 GETUPVAL                         R2 6
       28 GETTABLEKS                       R1 R2 K3 ["ease"]
       30 LOADN                            R2 0
       31 DUPTABLE                         R3 K5 [{"duration"}]
       32 GETUPVAL                         R6 8
       33 GETTABLEKS                       R5 R6 K6 ["Time"]
       35 GETTABLEKS                       R4 R5 K7 ["Time_100"]
       37 SETTABLEKS                       R4 R3 K4 ["duration"]
       39 CALL                             R1 2 -1
       40 CALL                             R0 -1 0
       41 GETUPVAL                         R1 9
       42 GETUPVAL                         R3 10
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R4 R5 K1 ["defaultSnapPointIndex"]
       46 GETTABLE                         R2 R3 R4
       47 CALL                             R1 1 1
       48 GETUPVAL                         R2 11
       49 JUMPIFEQ                         R1 R2 ; [+2]
       51 LOADB                            R0 0 +1
       52 LOADB                            R0 1
       53 JUMPIFNOT                        R0 ; [+3]
       54 GETUPVAL                         R1 12
       55 LOADB                            R2 1
       56 CALL                             R1 1 0
       57 NEWCLOSURE                       R0 P0
       58 CAPTURE                          UPVAL U13
       59 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["Y"]
        3 SETTABLEKS                       R5 R4 K1 ["current"]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 NAMECALL                         R2 R2 K1 ["GetScrollVelocity"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R1 R2 K2 ["Y"]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["FoundationBottomSheetImproveSpring"]
       13 JUMPIFNOT                        R0 ; [+39]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K0 ["current"]
       17 JUMPIFNOT                        R1 ; [+9]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K0 ["current"]
       21 NAMECALL                         R1 R1 K2 ["GetScrollVelocity"]
       23 CALL                             R1 1 1
       24 GETTABLEKS                       R0 R1 K3 ["Y"]
       26 JUMP                             ; [+1]
       27 LOADN                            R0 0
       28 GETUPVAL                         R1 3
       29 SETTABLEKS                       R0 R1 K0 ["current"]
       31 LOADB                            R1 1
       32 GETUPVAL                         R3 4
       33 GETTABLEKS                       R2 R3 K0 ["current"]
       35 GETUPVAL                         R5 5
       36 GETUPVAL                         R6 6
       37 ADD                              R4 R5 R6
       38 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       39 GETIMPORT                        R3 K6 [math.floor]
       41 CALL                             R3 1 1
       42 JUMPIFLE                         R3 R2 ; [+4]
       44 GETUPVAL                         R2 7
       45 GETTABLEKS                       R1 R2 K0 ["current"]
       47 JUMPIFNOT                        R1 ; [+55]
       48 GETUPVAL                         R2 8
       49 LOADB                            R3 1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 JUMP                             ; [+50]
       53 GETUPVAL                         R1 1
       54 GETTABLEKS                       R0 R1 K7 ["FoundationSheetFixClosingSwipe"]
       56 JUMPIFNOT                        R0 ; [+23]
       57 LOADNIL                          R0
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R1 R2 K0 ["current"]
       61 JUMPIFNOT                        R1 ; [+7]
       62 GETIMPORT                        R1 K9 [pcall]
       64 NEWCLOSURE                       R2 P0
       65 CAPTURE                          UPVAL U2
       66 CALL                             R1 1 2
       67 JUMPIFNOT                        R1 ; [+1]
       68 MOVE                             R0 R2
       69 MOVE                             R1 R0
       70 JUMPIF                           R1 ; [+3]
       71 GETUPVAL                         R2 7
       72 GETTABLEKS                       R1 R2 K0 ["current"]
       74 JUMPIFNOT                        R1 ; [+28]
       75 GETUPVAL                         R2 8
       76 LOADB                            R3 1
       77 CALL                             R2 1 0
       78 RETURN                           R0 0
       79 JUMP                             ; [+23]
       80 GETUPVAL                         R1 9
       81 NAMECALL                         R1 R1 K10 ["getValue"]
       83 CALL                             R1 1 1
       84 JUMPIFNOT                        R1 ; [+13]
       85 LOADB                            R0 1
       86 GETUPVAL                         R2 4
       87 GETTABLEKS                       R1 R2 K0 ["current"]
       89 GETUPVAL                         R4 5
       90 GETUPVAL                         R5 6
       91 ADD                              R3 R4 R5
       92 FASTCALL1                        MATH_ROUND R3 ; [+2]
       93 GETIMPORT                        R2 K12 [math.round]
       95 CALL                             R2 1 1
       96 JUMPIFLE                         R2 R1 ; [+4]
       98 GETUPVAL                         R1 7
       99 GETTABLEKS                       R0 R1 K0 ["current"]
      101 JUMPIFNOT                        R0 ; [+1]
      102 RETURN                           R0 0
      103 GETUPVAL                         R0 10
      104 CALL                             R0 0 0
      105 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UserInputService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R0 R1 K4 ["TouchPan"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R0 R0 K5 ["Connect"]
       13 CALL                             R0 2 1
       14 GETIMPORT                        R2 K1 [game]
       16 LOADK                            R4 K2 ["UserInputService"]
       17 NAMECALL                         R2 R2 K3 ["GetService"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R1 R2 K6 ["InputBegan"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R1 R1 K5 ["Connect"]
       28 CALL                             R1 2 1
       29 GETIMPORT                        R3 K1 [game]
       31 LOADK                            R5 K2 ["UserInputService"]
       32 NAMECALL                         R3 R3 K3 ["GetService"]
       34 CALL                             R3 2 1
       35 GETTABLEKS                       R2 R3 K7 ["InputEnded"]
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U11
       48 CAPTURE                          UPVAL U12
       49 NAMECALL                         R2 R2 K5 ["Connect"]
       51 CALL                             R2 2 1
       52 NEWCLOSURE                       R3 P3
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 RETURN                           R3 1

PROTO_21:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R0 K20 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "innerSurface", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["actionsHeight"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setActionsHeight"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["hasActionsDivider"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setHasActionsDivider"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["sheetHeightAvailable"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setSheetHeightAvailable"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["safeAreaPadding"]
       22 LOADN                            R1 200
       23 SETTABLEKS                       R1 R0 K7 ["bottomPadding"]
       25 GETUPVAL                         R1 7
       26 SETTABLEKS                       R1 R0 K8 ["innerScrollingEnabled"]
       28 GETUPVAL                         R1 8
       29 SETTABLEKS                       R1 R0 K9 ["innerScrollY"]
       31 NEWCLOSURE                       R1 P0
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 SETTABLEKS                       R1 R0 K10 ["setInnerScrollY"]
       36 GETUPVAL                         R1 11
       37 SETTABLEKS                       R1 R0 K11 ["hasHeader"]
       39 GETUPVAL                         R1 12
       40 SETTABLEKS                       R1 R0 K12 ["setHasHeader"]
       42 GETUPVAL                         R1 13
       43 SETTABLEKS                       R1 R0 K13 ["closeSheet"]
       45 GETUPVAL                         R2 14
       46 GETTABLEKS                       R1 R2 K21 ["Bottom"]
       48 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       50 GETUPVAL                         R1 15
       51 SETTABLEKS                       R1 R0 K15 ["innerSurface"]
       53 GETUPVAL                         R2 16
       54 GETTABLEKS                       R1 R2 K16 ["testId"]
       56 SETTABLEKS                       R1 R0 K16 ["testId"]
       58 GETUPVAL                         R1 17
       59 SETTABLEKS                       R1 R0 K17 ["closeAffordanceRef"]
       61 GETUPVAL                         R1 18
       62 SETTABLEKS                       R1 R0 K18 ["contentStartRef"]
       64 GETUPVAL                         R1 19
       65 SETTABLEKS                       R1 R0 K19 ["setContentStartRef"]
       67 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 SETTABLEKS                       R2 R1 K2 ["current"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K2 ["current"]
       11 GETUPVAL                         R5 2
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K3 ["Margin"]
       16 GETTABLEKS                       R4 R5 K4 ["Small"]
       18 SUB                              R2 R3 R4
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 4
       21 CALL                             R1 0 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K2 ["current"]
       25 LOADN                            R2 0
       26 JUMPIFNOTLE                      R1 R2 ; [+3]
       28 GETUPVAL                         R1 5
       29 CALL                             R1 0 0
       30 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R4 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LENGTH                           R0 R1
        6 LOADN                            R1 1
        7 JUMPIFNOTLT                      R1 R0 ; [+39]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K0 ["current"]
       12 GETUPVAL                         R4 1
       13 LENGTH                           R3 R4
       14 MOD                              R1 R2 R3
       15 ADDK                             R0 R1 K1 [1]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R1 R2 K2 ["FoundationSheetReducedMotion"]
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETUPVAL                         R1 4
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETUPVAL                         R1 5
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 JUMP                             ; [+3]
       26 GETUPVAL                         R1 6
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R1 R2 K3 ["FoundationSheetFixClosingSwipe"]
       32 JUMPIFNOT                        R1 ; [+16]
       33 GETUPVAL                         R2 7
       34 GETUPVAL                         R4 1
       35 GETTABLE                         R3 R4 R0
       36 CALL                             R2 1 1
       37 GETUPVAL                         R3 8
       38 JUMPIFEQ                         R2 R3 ; [+2]
       40 LOADB                            R1 0 +1
       41 LOADB                            R1 1
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETUPVAL                         R2 9
       44 LOADB                            R3 1
       45 CALL                             R2 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R0 10
       48 CALL                             R0 0 0
       49 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K3 ["Color"]
        4 GETTABLEKS                       R4 R5 K4 ["Common"]
        6 GETTABLEKS                       R3 R4 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R3 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["Color"]
       15 GETTABLEKS                       R5 R6 K4 ["Common"]
       17 GETTABLEKS                       R4 R5 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R4 K1 ["Transparency"]
       21 LOADN                            R4 1
       22 FASTCALL3                        MATH_LERP R3 R4 R0
       24 MOVE                             R5 R0
       25 GETIMPORT                        R2 K8 [math.lerp]
       27 CALL                             R2 3 1
       28 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       30 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K0 ["Sheet"]
       12 DUPTABLE                         R7 K2 [{"stackAboveOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["stackAboveOwner"]
       16 CALL                             R5 2 1
       17 LOADB                            R6 0
       18 GETUPVAL                         R8 6
       19 GETTABLEKS                       R7 R8 K3 ["FoundationSheetReducedMotion"]
       21 JUMPIFNOT                        R7 ; [+4]
       22 GETUPVAL                         R7 7
       23 CALL                             R7 0 1
       24 GETTABLEKS                       R6 R7 K4 ["reducedMotion"]
       26 GETUPVAL                         R7 8
       27 CALL                             R7 0 1
       28 GETUPVAL                         R9 9
       29 GETTABLEKS                       R8 R9 K5 ["useState"]
       31 LOADN                            R9 0
       32 CALL                             R8 1 2
       33 GETUPVAL                         R11 9
       34 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       36 NEWCLOSURE                       R11 P0
       37 CAPTURE                          VAL R8
       38 NEWTABLE                         R12 0 1
       40 MOVE                             R13 R8
       41 SETLIST                          R12 R13 1 [1]
       43 CALL                             R10 2 1
       44 GETTABLEKS                       R12 R2 K7 ["snapPoints"]
       46 OR                               R11 R12 R10
       47 GETUPVAL                         R13 9
       48 GETTABLEKS                       R12 R13 K8 ["useCallback"]
       50 NEWCLOSURE                       R13 P1
       51 CAPTURE                          VAL R7
       52 NEWTABLE                         R14 0 1
       54 MOVE                             R15 R7
       55 SETLIST                          R14 R15 1 [1]
       57 CALL                             R12 2 1
       58 LOADN                            R13 0
       59 MOVE                             R14 R11
       60 LOADNIL                          R15
       61 LOADNIL                          R16
       62 FORGPREP                         R14
       63 MOVE                             R19 R12
       64 MOVE                             R20 R18
       65 CALL                             R19 1 1
       66 JUMPIFNOTLT                      R13 R19 ; [+2]
       68 MOVE                             R13 R19
       69 FORGLOOP                         R14 2 ; [-7]
       71 FASTCALL2                        MATH_MIN R13 R7 ; [+5]
       73 MOVE                             R15 R13
       74 MOVE                             R16 R7
       75 GETIMPORT                        R14 K11 [math.min]
       77 CALL                             R14 2 1
       78 MOVE                             R13 R14
       79 GETUPVAL                         R15 10
       80 MOVE                             R16 R3
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R14 R15 K12 ["bottom"]
       84 GETUPVAL                         R16 9
       85 GETTABLEKS                       R15 R16 K13 ["useRef"]
       87 LOADN                            R16 0
       88 CALL                             R15 1 1
       89 GETUPVAL                         R17 9
       90 GETTABLEKS                       R16 R17 K13 ["useRef"]
       92 LOADB                            R17 0
       93 CALL                             R16 1 1
       94 GETUPVAL                         R17 11
       95 LOADN                            R18 1
       96 NEWCLOSURE                       R19 P2
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R2
       99 CALL                             R17 2 2
      100 GETUPVAL                         R20 9
      101 GETTABLEKS                       R19 R20 K14 ["useBinding"]
      103 MINUS                            R20 R14
      104 CALL                             R19 1 2
      105 GETUPVAL                         R22 9
      106 GETTABLEKS                       R21 R22 K14 ["useBinding"]
      108 LOADN                            R22 0
      109 CALL                             R21 1 2
      110 GETUPVAL                         R24 9
      111 GETTABLEKS                       R23 R24 K14 ["useBinding"]
      113 LOADB                            R24 0
      114 CALL                             R23 1 2
      115 GETUPVAL                         R26 9
      116 GETTABLEKS                       R25 R26 K14 ["useBinding"]
      118 LOADB                            R26 0
      119 CALL                             R25 1 2
      120 GETUPVAL                         R28 9
      121 GETTABLEKS                       R27 R28 K13 ["useRef"]
      123 LOADN                            R28 0
      124 CALL                             R27 1 1
      125 GETUPVAL                         R29 9
      126 GETTABLEKS                       R28 R29 K13 ["useRef"]
      128 LOADNIL                          R29
      129 CALL                             R28 1 1
      130 GETUPVAL                         R30 9
      131 GETTABLEKS                       R29 R30 K14 ["useBinding"]
      133 LOADN                            R30 0
      134 CALL                             R29 1 2
      135 GETUPVAL                         R32 9
      136 GETTABLEKS                       R31 R32 K14 ["useBinding"]
      138 LOADB                            R32 0
      139 CALL                             R31 1 2
      140 GETUPVAL                         R34 9
      141 GETTABLEKS                       R33 R34 K13 ["useRef"]
      143 LOADB                            R34 0
      144 CALL                             R33 1 1
      145 GETUPVAL                         R35 9
      146 GETTABLEKS                       R34 R35 K13 ["useRef"]
      148 LOADN                            R35 0
      149 CALL                             R34 1 1
      150 GETUPVAL                         R36 9
      151 GETTABLEKS                       R35 R36 K13 ["useRef"]
      153 LOADNIL                          R36
      154 CALL                             R35 1 1
      155 GETUPVAL                         R37 9
      156 GETTABLEKS                       R36 R37 K13 ["useRef"]
      158 LOADB                            R37 0
      159 CALL                             R36 1 1
      160 GETUPVAL                         R38 9
      161 GETTABLEKS                       R37 R38 K13 ["useRef"]
      163 LOADN                            R38 0
      164 CALL                             R37 1 1
      165 GETUPVAL                         R39 9
      166 GETTABLEKS                       R38 R39 K8 ["useCallback"]
      168 NEWCLOSURE                       R39 P3
      169 CAPTURE                          VAL R35
      170 CAPTURE                          VAL R34
      171 CAPTURE                          VAL R36
      172 NEWTABLE                         R40 0 0
      174 CALL                             R38 2 1
      175 GETUPVAL                         R40 9
      176 GETTABLEKS                       R39 R40 K8 ["useCallback"]
      178 NEWCLOSURE                       R40 P4
      179 CAPTURE                          VAL R38
      180 CAPTURE                          VAL R36
      181 CAPTURE                          UPVAL U6
      182 CAPTURE                          VAL R28
      183 CAPTURE                          VAL R35
      184 CAPTURE                          VAL R37
      185 CAPTURE                          UPVAL U12
      186 NEWTABLE                         R41 0 1
      188 MOVE                             R42 R38
      189 SETLIST                          R41 R42 1 [1]
      191 CALL                             R39 2 1
      192 GETUPVAL                         R41 9
      193 GETTABLEKS                       R40 R41 K8 ["useCallback"]
      195 NEWCLOSURE                       R41 P5
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R14
      198 NEWTABLE                         R42 0 2
      200 MOVE                             R43 R14
      201 MOVE                             R44 R12
      202 SETLIST                          R42 R43 2 [1]
      204 CALL                             R40 2 1
      205 GETUPVAL                         R42 9
      206 GETTABLEKS                       R41 R42 K8 ["useCallback"]
      208 NEWCLOSURE                       R42 P6
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R39
      211 CAPTURE                          VAL R40
      212 CAPTURE                          VAL R11
      213 NEWTABLE                         R43 0 2
      215 MOVE                             R44 R40
      216 MOVE                             R45 R11
      217 SETLIST                          R43 R44 2 [1]
      219 CALL                             R41 2 1
      220 GETUPVAL                         R44 6
      221 GETTABLEKS                       R43 R44 K3 ["FoundationSheetReducedMotion"]
      223 JUMPIFNOT                        R43 ; [+18]
      224 GETUPVAL                         R43 9
      225 GETTABLEKS                       R42 R43 K8 ["useCallback"]
      227 NEWCLOSURE                       R43 P7
      228 CAPTURE                          VAL R38
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R40
      232 CAPTURE                          VAL R11
      233 NEWTABLE                         R44 0 3
      235 MOVE                             R45 R38
      236 MOVE                             R46 R40
      237 MOVE                             R47 R11
      238 SETLIST                          R44 R45 3 [1]
      240 CALL                             R42 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R42
      243 GETUPVAL                         R44 9
      244 GETTABLEKS                       R43 R44 K8 ["useCallback"]
      246 NEWCLOSURE                       R44 P8
      247 CAPTURE                          VAL R16
      248 CAPTURE                          UPVAL U6
      249 CAPTURE                          REF R6
      250 CAPTURE                          VAL R38
      251 CAPTURE                          VAL R28
      252 CAPTURE                          VAL R18
      253 CAPTURE                          UPVAL U13
      254 CAPTURE                          VAL R37
      255 CAPTURE                          VAL R34
      256 CAPTURE                          VAL R39
      257 CAPTURE                          VAL R4
      258 GETUPVAL                         R47 6
      259 GETTABLEKS                       R46 R47 K3 ["FoundationSheetReducedMotion"]
      261 JUMPIFNOT                        R46 ; [+8]
      262 NEWTABLE                         R45 0 3
      264 MOVE                             R46 R39
      265 MOVE                             R47 R38
      266 MOVE                             R48 R6
      267 SETLIST                          R45 R46 3 [1]
      269 JUMP                             ; [+5]
      270 NEWTABLE                         R45 0 1
      272 MOVE                             R46 R39
      273 SETLIST                          R45 R46 1 [1]
      275 CALL                             R43 2 1
      276 GETUPVAL                         R45 9
      277 GETTABLEKS                       R44 R45 K8 ["useCallback"]
      279 NEWCLOSURE                       R45 P9
      280 CAPTURE                          VAL R29
      281 CAPTURE                          VAL R27
      282 CAPTURE                          UPVAL U6
      283 CAPTURE                          REF R13
      284 CAPTURE                          VAL R14
      285 CAPTURE                          VAL R34
      286 CAPTURE                          VAL R33
      287 CAPTURE                          VAL R32
      288 NEWTABLE                         R46 0 2
      290 MOVE                             R47 R13
      291 MOVE                             R48 R14
      292 SETLIST                          R46 R47 2 [1]
      294 CALL                             R44 2 1
      295 GETUPVAL                         R46 9
      296 GETTABLEKS                       R45 R46 K8 ["useCallback"]
      298 NEWCLOSURE                       R46 P10
      299 CAPTURE                          VAL R34
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R11
      302 CAPTURE                          VAL R40
      303 CAPTURE                          VAL R33
      304 CAPTURE                          VAL R37
      305 CAPTURE                          UPVAL U6
      306 CAPTURE                          VAL R43
      307 CAPTURE                          VAL R41
      308 NEWTABLE                         R47 0 4
      310 MOVE                             R48 R11
      311 MOVE                             R49 R41
      312 MOVE                             R50 R40
      313 MOVE                             R51 R43
      314 SETLIST                          R47 R48 4 [1]
      316 CALL                             R45 2 1
      317 GETUPVAL                         R47 9
      318 GETTABLEKS                       R46 R47 K15 ["useEffect"]
      320 NEWCLOSURE                       R47 P11
      321 CAPTURE                          VAL R3
      322 CAPTURE                          UPVAL U6
      323 CAPTURE                          REF R6
      324 CAPTURE                          VAL R42
      325 CAPTURE                          VAL R2
      326 CAPTURE                          VAL R18
      327 CAPTURE                          UPVAL U13
      328 CAPTURE                          VAL R41
      329 CAPTURE                          VAL R4
      330 CAPTURE                          VAL R12
      331 CAPTURE                          VAL R11
      332 CAPTURE                          REF R13
      333 CAPTURE                          VAL R32
      334 CAPTURE                          VAL R38
      335 GETUPVAL                         R50 6
      336 GETTABLEKS                       R49 R50 K3 ["FoundationSheetReducedMotion"]
      338 JUMPIFNOT                        R49 ; [+13]
      339 NEWTABLE                         R48 0 7
      341 MOVE                             R49 R3
      342 MOVE                             R50 R11
      343 GETTABLEKS                       R51 R2 K16 ["defaultSnapPointIndex"]
      345 MOVE                             R52 R41
      346 MOVE                             R53 R12
      347 MOVE                             R54 R42
      348 MOVE                             R55 R6
      349 SETLIST                          R48 R49 7 [1]
      351 JUMP                             ; [+10]
      352 NEWTABLE                         R48 0 5
      354 MOVE                             R49 R3
      355 MOVE                             R50 R11
      356 GETTABLEKS                       R51 R2 K16 ["defaultSnapPointIndex"]
      358 MOVE                             R52 R41
      359 MOVE                             R53 R12
      360 SETLIST                          R48 R49 5 [1]
      362 CALL                             R46 2 0
      363 GETUPVAL                         R47 9
      364 GETTABLEKS                       R46 R47 K15 ["useEffect"]
      366 NEWCLOSURE                       R47 P12
      367 CAPTURE                          VAL R34
      368 CAPTURE                          VAL R44
      369 CAPTURE                          VAL R33
      370 CAPTURE                          VAL R38
      371 CAPTURE                          UPVAL U6
      372 CAPTURE                          VAL R28
      373 CAPTURE                          VAL R27
      374 CAPTURE                          REF R13
      375 CAPTURE                          VAL R14
      376 CAPTURE                          VAL R16
      377 CAPTURE                          VAL R32
      378 CAPTURE                          VAL R31
      379 CAPTURE                          VAL R45
      380 NEWTABLE                         R48 0 4
      382 MOVE                             R49 R3
      383 MOVE                             R50 R45
      384 MOVE                             R51 R44
      385 MOVE                             R52 R38
      386 SETLIST                          R48 R49 4 [1]
      388 CALL                             R46 2 0
      389 GETUPVAL                         R47 9
      390 GETTABLEKS                       R46 R47 K13 ["useRef"]
      392 LOADNIL                          R47
      393 CALL                             R46 1 1
      394 GETUPVAL                         R48 9
      395 GETTABLEKS                       R47 R48 K5 ["useState"]
      397 LOADNIL                          R48
      398 CALL                             R47 1 2
      399 GETUPVAL                         R50 9
      400 GETTABLEKS                       R49 R50 K5 ["useState"]
      402 LOADNIL                          R50
      403 CALL                             R49 1 2
      404 GETUPVAL                         R52 14
      405 GETTABLEKS                       R51 R52 K17 ["useComposedRef"]
      407 MOVE                             R52 R1
      408 MOVE                             R53 R50
      409 CALL                             R51 2 1
      410 GETUPVAL                         R53 9
      411 GETTABLEKS                       R52 R53 K18 ["useImperativeHandle"]
      413 GETTABLEKS                       R53 R2 K19 ["sheetRef"]
      415 NEWCLOSURE                       R54 P13
      416 CAPTURE                          VAL R43
      417 NEWTABLE                         R55 0 0
      419 CALL                             R52 3 0
      420 GETUPVAL                         R53 9
      421 GETTABLEKS                       R52 R53 K6 ["useMemo"]
      423 NEWCLOSURE                       R53 P14
      424 CAPTURE                          VAL R21
      425 CAPTURE                          VAL R22
      426 CAPTURE                          VAL R23
      427 CAPTURE                          VAL R24
      428 CAPTURE                          VAL R19
      429 CAPTURE                          VAL R20
      430 CAPTURE                          VAL R14
      431 CAPTURE                          VAL R31
      432 CAPTURE                          VAL R29
      433 CAPTURE                          VAL R30
      434 CAPTURE                          VAL R44
      435 CAPTURE                          VAL R25
      436 CAPTURE                          VAL R26
      437 CAPTURE                          VAL R43
      438 CAPTURE                          UPVAL U15
      439 CAPTURE                          VAL R49
      440 CAPTURE                          VAL R2
      441 CAPTURE                          VAL R46
      442 CAPTURE                          VAL R47
      443 CAPTURE                          VAL R48
      444 NEWTABLE                         R54 0 7
      446 GETTABLEKS                       R55 R2 K20 ["testId"]
      448 MOVE                             R56 R43
      449 MOVE                             R57 R14
      450 MOVE                             R58 R44
      451 MOVE                             R59 R49
      452 MOVE                             R60 R46
      453 MOVE                             R61 R47
      454 SETLIST                          R54 R55 7 [1]
      456 CALL                             R52 2 1
      457 MOVE                             R53 R3
      458 JUMPIFNOT                        R53 ; [+450]
      459 GETUPVAL                         R54 16
      460 GETTABLEKS                       R53 R54 K21 ["createPortal"]
      462 GETUPVAL                         R55 9
      463 GETTABLEKS                       R54 R55 K22 ["createElement"]
      465 GETUPVAL                         R55 17
      466 DUPTABLE                         R56 K28 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      467 GETTABLEKS                       R57 R5 K29 ["zIndex"]
      469 SETTABLEKS                       R57 R56 K23 ["ZIndex"]
      471 SETTABLEKS                       R51 R56 K24 ["ref"]
      473 GETUPVAL                         R58 18
      474 GETTABLEKS                       R57 R58 K30 ["nonSelectable"]
      476 SETTABLEKS                       R57 R56 K25 ["selection"]
      478 GETUPVAL                         R58 18
      479 GETTABLEKS                       R57 R58 K31 ["isolatedSelectionGroup"]
      481 SETTABLEKS                       R57 R56 K26 ["selectionGroup"]
      483 LOADK                            R57 K32 ["size-full"]
      484 SETTABLEKS                       R57 R56 K27 ["tag"]
      486 LOADK                            R58 K33 ["%*--surface"]
      487 GETTABLEKS                       R60 R2 K20 ["testId"]
      489 NAMECALL                         R58 R58 K34 ["format"]
      491 CALL                             R58 2 1
      492 MOVE                             R57 R58
      493 SETTABLEKS                       R57 R56 K20 ["testId"]
      495 GETUPVAL                         R58 9
      496 GETTABLEKS                       R57 R58 K22 ["createElement"]
      498 LOADK                            R58 K35 ["ScrollingFrame"]
      499 NEWTABLE                         R59 8 0
      501 GETIMPORT                        R60 K38 [UDim2.fromScale]
      503 LOADN                            R61 1
      504 LOADN                            R62 1
      505 CALL                             R60 2 1
      506 SETTABLEKS                       R60 R59 K39 ["Size"]
      508 GETUPVAL                         R62 6
      509 GETTABLEKS                       R61 R62 K40 ["FoundationSheetPreventCloseOnResize"]
      511 JUMPIFNOT                        R61 ; [+8]
      512 GETIMPORT                        R60 K42 [UDim2.new]
      514 LOADN                            R61 1
      515 LOADN                            R62 0
      516 LOADN                            R63 1
      517 ADD                              R64 R13 R14
      518 CALL                             R60 4 1
      519 JUMP                             ; [+8]
      520 GETIMPORT                        R60 K42 [UDim2.new]
      522 LOADN                            R61 1
      523 LOADN                            R62 0
      524 LOADN                            R63 0
      525 ADD                              R65 R7 R13
      526 ADD                              R64 R65 R14
      527 CALL                             R60 4 1
      528 SETTABLEKS                       R60 R59 K43 ["CanvasSize"]
      530 LOADB                            R60 0
      531 SETTABLEKS                       R60 R59 K44 ["ClipsDescendants"]
      533 LOADN                            R60 1
      534 SETTABLEKS                       R60 R59 K45 ["BackgroundTransparency"]
      536 GETIMPORT                        R60 K49 [Enum.ScrollingDirection.Y]
      538 SETTABLEKS                       R60 R59 K47 ["ScrollingDirection"]
      540 LOADN                            R60 0
      541 SETTABLEKS                       R60 R59 K50 ["ScrollBarThickness"]
      543 SETTABLEKS                       R28 R59 K24 ["ref"]
      545 GETUPVAL                         R62 9
      546 GETTABLEKS                       R61 R62 K51 ["Change"]
      548 GETTABLEKS                       R60 R61 K52 ["CanvasPosition"]
      550 NEWCLOSURE                       R61 P15
      551 CAPTURE                          VAL R27
      552 CAPTURE                          VAL R20
      553 CAPTURE                          VAL R14
      554 CAPTURE                          VAL R4
      555 CAPTURE                          VAL R44
      556 CAPTURE                          VAL R43
      557 SETTABLE                         R61 R59 R60
      558 DUPTABLE                         R60 K56 [{"SheetContainer", "Shadow", "Backdrop"}]
      559 GETUPVAL                         R62 9
      560 GETTABLEKS                       R61 R62 K22 ["createElement"]
      562 GETUPVAL                         R62 17
      563 DUPTABLE                         R63 K58 [{"Size", "Position", "ZIndex"}]
      564 GETUPVAL                         R66 6
      565 GETTABLEKS                       R65 R66 K40 ["FoundationSheetPreventCloseOnResize"]
      567 JUMPIFNOT                        R65 ; [+9]
      568 GETIMPORT                        R64 K42 [UDim2.new]
      570 LOADN                            R65 1
      571 LOADN                            R66 0
      572 LOADN                            R67 1
      573 SUBRK                            R69 R59 K13 ["useRef"]
      574 SUB                              R68 R69 R14
      575 CALL                             R64 4 1
      576 JUMP                             ; [+7]
      577 GETIMPORT                        R64 K42 [UDim2.new]
      579 LOADN                            R65 1
      580 LOADN                            R66 0
      581 LOADN                            R67 0
      582 ADDK                             R68 R7 K59 [200]
      583 CALL                             R64 4 1
      584 SETTABLEKS                       R64 R63 K39 ["Size"]
      586 GETUPVAL                         R66 6
      587 GETTABLEKS                       R65 R66 K40 ["FoundationSheetPreventCloseOnResize"]
      589 JUMPIFNOT                        R65 ; [+8]
      590 GETIMPORT                        R64 K42 [UDim2.new]
      592 LOADN                            R65 0
      593 LOADN                            R66 0
      594 LOADN                            R67 1
      595 MINUS                            R68 R13
      596 CALL                             R64 4 1
      597 JUMP                             ; [+5]
      598 GETIMPORT                        R64 K61 [UDim2.fromOffset]
      600 LOADN                            R65 0
      601 ADD                              R66 R7 R14
      602 CALL                             R64 2 1
      603 SETTABLEKS                       R64 R63 K57 ["Position"]
      605 LOADN                            R64 3
      606 SETTABLEKS                       R64 R63 K23 ["ZIndex"]
      608 DUPTABLE                         R64 K62 [{"Sheet"}]
      609 GETUPVAL                         R66 9
      610 GETTABLEKS                       R65 R66 K22 ["createElement"]
      612 GETUPVAL                         R66 17
      613 DUPTABLE                         R67 K67 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      614 GETTABLEKS                       R69 R2 K7 ["snapPoints"]
      616 JUMPIFNOTEQKNIL                  R69 ; [+7]
      618 GETIMPORT                        R68 K38 [UDim2.fromScale]
      620 LOADN                            R69 1
      621 LOADN                            R70 0
      622 CALL                             R68 2 1
      623 JUMP                             ; [+7]
      624 GETIMPORT                        R68 K42 [UDim2.new]
      626 LOADN                            R69 1
      627 LOADN                            R70 0
      628 LOADN                            R71 0
      629 ADDK                             R72 R13 K59 [200]
      630 CALL                             R68 4 1
      631 SETTABLEKS                       R68 R67 K39 ["Size"]
      633 GETTABLEKS                       R69 R2 K7 ["snapPoints"]
      635 JUMPIFNOTEQKNIL                  R69 ; [+4]
      637 GETIMPORT                        R68 K68 [Enum.AutomaticSize.Y]
      639 JUMP                             ; [+1]
      640 LOADNIL                          R68
      641 SETTABLEKS                       R68 R67 K63 ["AutomaticSize"]
      643 GETTABLEKS                       R69 R2 K7 ["snapPoints"]
      645 JUMPIFNOTEQKNIL                  R69 ; [+4]
      647 NEWCLOSURE                       R68 P16
      648 CAPTURE                          VAL R9
      649 JUMP                             ; [+1]
      650 LOADNIL                          R68
      651 SETTABLEKS                       R68 R67 K64 ["onAbsoluteSizeChanged"]
      653 DUPTABLE                         R68 K70 [{"affordance"}]
      654 GETUPVAL                         R70 19
      655 GETTABLEKS                       R69 R70 K71 ["None"]
      657 SETTABLEKS                       R69 R68 K69 ["affordance"]
      659 SETTABLEKS                       R68 R67 K65 ["stateLayer"]
      661 GETUPVAL                         R69 20
      662 GETTABLEKS                       R68 R69 K72 ["noop"]
      664 SETTABLEKS                       R68 R67 K66 ["onActivated"]
      666 GETTABLEKS                       R68 R2 K20 ["testId"]
      668 SETTABLEKS                       R68 R67 K20 ["testId"]
      670 LOADK                            R68 K73 ["bg-surface-100 radius-large col items-center clip padding-top-small"]
      671 SETTABLEKS                       R68 R67 K27 ["tag"]
      673 DUPTABLE                         R68 K76 [{"Gripper", "Content"}]
      674 GETUPVAL                         R70 9
      675 GETTABLEKS                       R69 R70 K22 ["createElement"]
      677 GETUPVAL                         R70 17
      678 DUPTABLE                         R71 K78 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      679 LOADN                            R72 3
      680 SETTABLEKS                       R72 R71 K23 ["ZIndex"]
      682 GETTABLEKS                       R74 R4 K79 ["Color"]
      684 GETTABLEKS                       R73 R74 K75 ["Content"]
      686 GETTABLEKS                       R72 R73 K80 ["Muted"]
      688 SETTABLEKS                       R72 R71 K77 ["backgroundStyle"]
      690 LOADK                            R72 K81 ["padding-y-small size-1000-100 radius-small align-y-center"]
      691 SETTABLEKS                       R72 R71 K27 ["tag"]
      693 LOADK                            R73 K82 ["%*--gripper"]
      694 GETTABLEKS                       R75 R2 K20 ["testId"]
      696 NAMECALL                         R73 R73 K34 ["format"]
      698 CALL                             R73 2 1
      699 MOVE                             R72 R73
      700 SETTABLEKS                       R72 R71 K20 ["testId"]
      702 DUPTABLE                         R72 K84 [{"TouchTarget"}]
      703 GETUPVAL                         R74 9
      704 GETTABLEKS                       R73 R74 K22 ["createElement"]
      706 GETUPVAL                         R74 17
      707 DUPTABLE                         R75 K85 [{"tag", "stateLayer", "onActivated"}]
      708 LOADK                            R76 K86 ["size-1000-600"]
      709 SETTABLEKS                       R76 R75 K27 ["tag"]
      711 DUPTABLE                         R76 K70 [{"affordance"}]
      712 GETUPVAL                         R78 19
      713 GETTABLEKS                       R77 R78 K71 ["None"]
      715 SETTABLEKS                       R77 R76 K69 ["affordance"]
      717 SETTABLEKS                       R76 R75 K65 ["stateLayer"]
      719 NEWCLOSURE                       R76 P17
      720 CAPTURE                          VAL R33
      721 CAPTURE                          VAL R11
      722 CAPTURE                          VAL R15
      723 CAPTURE                          UPVAL U6
      724 CAPTURE                          REF R6
      725 CAPTURE                          VAL R42
      726 CAPTURE                          VAL R41
      727 CAPTURE                          VAL R12
      728 CAPTURE                          REF R13
      729 CAPTURE                          VAL R32
      730 CAPTURE                          VAL R43
      731 SETTABLEKS                       R76 R75 K66 ["onActivated"]
      733 CALL                             R73 2 1
      734 SETTABLEKS                       R73 R72 K83 ["TouchTarget"]
      736 CALL                             R69 3 1
      737 SETTABLEKS                       R69 R68 K74 ["Gripper"]
      739 GETUPVAL                         R70 9
      740 GETTABLEKS                       R69 R70 K22 ["createElement"]
      742 GETUPVAL                         R71 21
      743 GETTABLEKS                       R70 R71 K87 ["Provider"]
      745 DUPTABLE                         R71 K89 [{"value"}]
      746 SETTABLEKS                       R52 R71 K88 ["value"]
      748 GETUPVAL                         R73 9
      749 GETTABLEKS                       R72 R73 K22 ["createElement"]
      751 GETUPVAL                         R73 22
      752 DUPTABLE                         R74 K91 [{"owner"}]
      753 SETTABLEKS                       R5 R74 K90 ["owner"]
      755 GETTABLEKS                       R75 R2 K92 ["children"]
      757 CALL                             R72 3 -1
      758 CALL                             R69 -1 1
      759 SETTABLEKS                       R69 R68 K75 ["Content"]
      761 CALL                             R65 3 1
      762 SETTABLEKS                       R65 R64 K0 ["Sheet"]
      764 CALL                             R61 3 1
      765 SETTABLEKS                       R61 R60 K53 ["SheetContainer"]
      767 GETUPVAL                         R62 9
      768 GETTABLEKS                       R61 R62 K22 ["createElement"]
      770 GETUPVAL                         R62 23
      771 DUPTABLE                         R63 K96 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      772 GETUPVAL                         R64 24
      773 SETTABLEKS                       R64 R63 K93 ["Image"]
      775 GETIMPORT                        R64 K42 [UDim2.new]
      777 LOADN                            R65 1
      778 GETUPVAL                         R67 25
      779 MULK                             R66 R67 K97 [2]
      780 LOADN                            R67 0
      781 ADDK                             R69 R13 K59 [200]
      782 GETUPVAL                         R71 25
      783 MULK                             R70 R71 K97 [2]
      784 ADD                              R68 R69 R70
      785 CALL                             R64 4 1
      786 SETTABLEKS                       R64 R63 K39 ["Size"]
      788 GETUPVAL                         R66 6
      789 GETTABLEKS                       R65 R66 K40 ["FoundationSheetPreventCloseOnResize"]
      791 JUMPIFNOT                        R65 ; [+11]
      792 GETIMPORT                        R64 K42 [UDim2.new]
      794 GETUPVAL                         R66 25
      795 MINUS                            R65 R66
      796 LOADN                            R66 0
      797 LOADN                            R67 1
      798 MINUS                            R69 R13
      799 GETUPVAL                         R70 25
      800 SUB                              R68 R69 R70
      801 CALL                             R64 4 1
      802 JUMP                             ; [+8]
      803 GETIMPORT                        R64 K61 [UDim2.fromOffset]
      805 GETUPVAL                         R66 25
      806 MINUS                            R65 R66
      807 ADD                              R67 R7 R14
      808 GETUPVAL                         R68 25
      809 SUB                              R66 R67 R68
      810 CALL                             R64 2 1
      811 SETTABLEKS                       R64 R63 K57 ["Position"]
      813 LOADN                            R64 2
      814 SETTABLEKS                       R64 R63 K23 ["ZIndex"]
      816 DUPTABLE                         R64 K100 [{"center", "scale"}]
      817 GETIMPORT                        R65 K102 [Rect.new]
      819 GETUPVAL                         R66 25
      820 GETUPVAL                         R67 25
      821 GETUPVAL                         R69 25
      822 ADDK                             R68 R69 K103 [1]
      823 GETUPVAL                         R70 25
      824 ADDK                             R69 R70 K103 [1]
      825 CALL                             R65 4 1
      826 SETTABLEKS                       R65 R64 K98 ["center"]
      828 LOADN                            R65 2
      829 SETTABLEKS                       R65 R64 K99 ["scale"]
      831 SETTABLEKS                       R64 R63 K94 ["slice"]
      833 GETTABLEKS                       R67 R4 K79 ["Color"]
      835 GETTABLEKS                       R66 R67 K104 ["Extended"]
      837 GETTABLEKS                       R65 R66 K105 ["Black"]
      839 GETTABLEKS                       R64 R65 K106 ["Black_10"]
      841 SETTABLEKS                       R64 R63 K95 ["imageStyle"]
      843 CALL                             R61 2 1
      844 SETTABLEKS                       R61 R60 K54 ["Shadow"]
      846 GETUPVAL                         R62 9
      847 GETTABLEKS                       R61 R62 K22 ["createElement"]
      849 GETUPVAL                         R62 17
      850 DUPTABLE                         R63 K107 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      851 GETIMPORT                        R64 K38 [UDim2.fromScale]
      853 LOADN                            R65 1
      854 LOADN                            R66 2
      855 CALL                             R64 2 1
      856 SETTABLEKS                       R64 R63 K39 ["Size"]
      858 GETIMPORT                        R64 K38 [UDim2.fromScale]
      860 LOADN                            R65 0
      861 LOADK                            R66 K108 [-0.5]
      862 CALL                             R64 2 1
      863 SETTABLEKS                       R64 R63 K57 ["Position"]
      865 LOADN                            R64 1
      866 SETTABLEKS                       R64 R63 K23 ["ZIndex"]
      868 DUPTABLE                         R64 K70 [{"affordance"}]
      869 GETUPVAL                         R66 19
      870 GETTABLEKS                       R65 R66 K71 ["None"]
      872 SETTABLEKS                       R65 R64 K69 ["affordance"]
      874 SETTABLEKS                       R64 R63 K65 ["stateLayer"]
      876 NEWCLOSURE                       R66 P18
      877 CAPTURE                          VAL R4
      878 NAMECALL                         R64 R17 K109 ["map"]
      880 CALL                             R64 2 1
      881 SETTABLEKS                       R64 R63 K77 ["backgroundStyle"]
      883 GETUPVAL                         R66 6
      884 GETTABLEKS                       R65 R66 K3 ["FoundationSheetReducedMotion"]
      886 JUMPIFNOT                        R65 ; [+3]
      887 NEWCLOSURE                       R64 P19
      888 CAPTURE                          VAL R43
      889 JUMP                             ; [+1]
      890 MOVE                             R64 R43
      891 SETTABLEKS                       R64 R63 K66 ["onActivated"]
      893 LOADK                            R65 K110 ["%*--backdrop"]
      894 GETTABLEKS                       R67 R2 K20 ["testId"]
      896 NAMECALL                         R65 R65 K34 ["format"]
      898 CALL                             R65 2 1
      899 MOVE                             R64 R65
      900 SETTABLEKS                       R64 R63 K20 ["testId"]
      902 CALL                             R61 2 1
      903 SETTABLEKS                       R61 R60 K55 ["Backdrop"]
      905 CALL                             R57 3 -1
      906 CALL                             R54 -1 1
      907 MOVE                             R55 R3
      908 CALL                             R53 2 1
      909 CLOSEUPVALS                      R6
      910 RETURN                           R53 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Otter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ReactRoblox"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R1 K12 ["ReactUtils"]
       38 CALL                             R7 1 1
       39 GETTABLEKS                       R8 R5 K13 ["useAnimatedBinding"]
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R11 R0 K14 ["Enums"]
       45 GETTABLEKS                       R10 R11 K15 ["StateLayerAffordance"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R13 R0 K16 ["Providers"]
       52 GETTABLEKS                       R12 R13 K17 ["Elevation"]
       54 GETTABLEKS                       R11 R12 K18 ["useElevation"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R14 R0 K16 ["Providers"]
       61 GETTABLEKS                       R13 R14 K19 ["Overlay"]
       63 GETTABLEKS                       R12 R13 K20 ["useOverlay"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R15 R0 K16 ["Providers"]
       70 GETTABLEKS                       R14 R15 K21 ["Style"]
       72 GETTABLEKS                       R13 R14 K22 ["useTokens"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R15 R0 K23 ["Utility"]
       79 GETTABLEKS                       R14 R15 K24 ["withDefaults"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R15 K6 [require]
       84 GETTABLEKS                       R18 R0 K16 ["Providers"]
       86 GETTABLEKS                       R17 R18 K17 ["Elevation"]
       88 GETTABLEKS                       R16 R17 K25 ["ElevationProvider"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R14 R15 K26 ["ElevationOwnerScope"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R17 R0 K14 ["Enums"]
       97 GETTABLEKS                       R16 R17 K27 ["ElevationLayer"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K28 ["Constants"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R19 R20 K4 ["Parent"]
      111 GETTABLEKS                       R18 R19 K29 ["SheetContext"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R21 K1 [script]
      118 GETTABLEKS                       R20 R21 K4 ["Parent"]
      120 GETTABLEKS                       R19 R20 K30 ["Types"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETIMPORT                        R22 K1 [script]
      127 GETTABLEKS                       R21 R22 K4 ["Parent"]
      129 GETTABLEKS                       R20 R21 K31 ["SheetType"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K6 [require]
      134 GETIMPORT                        R23 K1 [script]
      136 GETTABLEKS                       R22 R23 K4 ["Parent"]
      138 GETTABLEKS                       R21 R22 K32 ["useHardwareInsets"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R24 K1 [script]
      145 GETTABLEKS                       R23 R24 K4 ["Parent"]
      147 GETTABLEKS                       R22 R23 K33 ["useScreenHeight"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R24 R0 K23 ["Utility"]
      154 GETTABLEKS                       R23 R24 K34 ["Flags"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R25 R0 K35 ["Components"]
      161 GETTABLEKS                       R24 R25 K36 ["Image"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R26 R0 K35 ["Components"]
      168 GETTABLEKS                       R25 R26 K37 ["View"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K6 [require]
      173 GETTABLEKS                       R28 R0 K16 ["Providers"]
      175 GETTABLEKS                       R27 R28 K38 ["Preferences"]
      177 GETTABLEKS                       R26 R27 K39 ["usePreferences"]
      179 CALL                             R25 1 1
      180 GETTABLEKS                       R27 R22 K40 ["FoundationBottomSheetImproveSpring"]
      182 JUMPIFNOT                        R27 ; [+2]
      183 LOADN                            R26 1
      184 JUMP                             ; [+1]
      185 LOADK                            R26 K41 [0.9]
      186 DUPTABLE                         R27 K44 [{"defaultSnapPointIndex", "testId"}]
      187 LOADN                            R28 1
      188 SETTABLEKS                       R28 R27 K42 ["defaultSnapPointIndex"]
      190 LOADK                            R28 K45 ["--foundation-sheet"]
      191 SETTABLEKS                       R28 R27 K43 ["testId"]
      193 GETTABLEKS                       R28 R16 K46 ["SHADOW_IMAGE"]
      195 GETTABLEKS                       R29 R16 K47 ["SHADOW_SIZE"]
      197 DUPCLOSURE                       R30 K48 [PROTO_29]
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R27
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R12
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R8
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R28
      223 CAPTURE                          VAL R29
      224 GETTABLEKS                       R31 R4 K49 ["memo"]
      226 GETTABLEKS                       R32 R4 K50 ["forwardRef"]
      228 MOVE                             R33 R30
      229 CALL                             R32 1 -1
      230 CALL                             R31 -1 -1
      231 RETURN                           R31 -1
