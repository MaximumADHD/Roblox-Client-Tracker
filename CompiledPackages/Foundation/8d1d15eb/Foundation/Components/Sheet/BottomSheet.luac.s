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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 GETTABLEKS                       R1 R1 K1 ["CanvasPosition"]
       16 GETTABLEKS                       R1 R1 K2 ["Y"]
       18 GETUPVAL                         R3 3
       19 SUB                              R2 R3 R1
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R4 R4 K3 ["FoundationBottomSheetImproveSpring"]
       23 JUMPIFNOT                        R4 ; [+3]
       24 MULK                             R4 R2 K4 [25.1327412287183]
       25 MULK                             R3 R4 K4 [25.1327412287183]
       26 JUMP                             ; [+2]
       27 MULK                             R4 R2 K5 [18]
       28 MULK                             R3 R4 K5 [18]
       29 GETUPVAL                         R4 4
       30 GETTABLEKS                       R4 R4 K3 ["FoundationBottomSheetImproveSpring"]
       32 JUMPIF                           R4 ; [+9]
       33 GETUPVAL                         R6 5
       34 SUB                              R5 R1 R6
       35 DIV                              R4 R5 R0
       36 GETUPVAL                         R5 6
       37 GETTABLEKS                       R6 R5 K0 ["current"]
       39 SUB                              R6 R6 R4
       40 SETTABLEKS                       R6 R5 K0 ["current"]
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R5 R5 K3 ["FoundationBottomSheetImproveSpring"]
       45 JUMPIFNOT                        R5 ; [+9]
       46 GETUPVAL                         R8 6
       47 GETTABLEKS                       R8 R8 K0 ["current"]
       49 MINUS                            R7 R8
       50 MULK                             R6 R7 K6 [2]
       51 GETUPVAL                         R7 7
       52 MUL                              R5 R6 R7
       53 MULK                             R4 R5 K4 [25.1327412287183]
       54 JUMP                             ; [+8]
       55 GETUPVAL                         R8 6
       56 GETTABLEKS                       R8 R8 K0 ["current"]
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
       72 GETUPVAL                         R9 6
       73 GETTABLEKS                       R9 R9 K0 ["current"]
       75 MUL                              R10 R5 R6
       76 ADD                              R8 R9 R10
       77 SETTABLEKS                       R8 R7 K0 ["current"]
       79 GETUPVAL                         R9 6
       80 GETTABLEKS                       R9 R9 K0 ["current"]
       82 MUL                              R8 R9 R6
       83 ADD                              R7 R1 R8
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K0 ["current"]
       87 GETIMPORT                        R9 K13 [Vector2.new]
       89 LOADN                            R10 0
       90 MOVE                             R11 R7
       91 CALL                             R9 2 1
       92 SETTABLEKS                       R9 R8 K1 ["CanvasPosition"]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R8 R8 K0 ["current"]
       97 GETTABLEKS                       R8 R8 K1 ["CanvasPosition"]
       99 GETTABLEKS                       R8 R8 K2 ["Y"]
      101 SETUPVAL                         R8 5
      102 LOADB                            R8 0
      103 FASTCALL1                        MATH_ABS R2 ; [+3]
      104 MOVE                             R10 R2
      105 GETIMPORT                        R9 K15 [math.abs]
      107 CALL                             R9 1 1
      108 LOADK                            R10 K16 [0.5]
      109 JUMPIFNOTLT                      R9 R10 ; [+13]
      111 GETUPVAL                         R10 6
      112 GETTABLEKS                       R10 R10 K0 ["current"]
      114 FASTCALL1                        MATH_ABS R10 ; [+2]
      115 GETIMPORT                        R9 K15 [math.abs]
      117 CALL                             R9 1 1
      118 LOADN                            R10 1
      119 JUMPIFLT                         R9 R10 ; [+2]
      121 LOADB                            R8 0 +1
      122 LOADB                            R8 1
      123 JUMPIFNOT                        R8 ; [+12]
      124 GETUPVAL                         R9 0
      125 GETTABLEKS                       R9 R9 K0 ["current"]
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
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["FoundationBottomSheetImproveSpring"]
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K0 ["current"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 NAMECALL                         R1 R1 K2 ["ResetScrollVelocity"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K0 ["current"]
       23 JUMPIFNOT                        R2 ; [+8]
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K0 ["current"]
       27 GETTABLEKS                       R1 R1 K3 ["CanvasPosition"]
       29 GETTABLEKS                       R1 R1 K4 ["Y"]
       31 JUMP                             ; [+1]
       32 LOADN                            R1 0
       33 GETUPVAL                         R2 4
       34 GETIMPORT                        R3 K6 [game]
       36 LOADK                            R5 K7 ["RunService"]
       37 NAMECALL                         R3 R3 K8 ["GetService"]
       39 CALL                             R3 2 1
       40 GETTABLEKS                       R3 R3 K9 ["Heartbeat"]
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
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["FoundationSheetReducedMotion"]
        8 JUMPIFNOT                        R1 ; [+31]
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+29]
       11 JUMPIF                           R0 ; [+28]
       12 GETUPVAL                         R1 0
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K0 ["current"]
       16 GETUPVAL                         R1 3
       17 CALL                             R1 0 0
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 JUMPIFNOT                        R1 ; [+10]
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K0 ["current"]
       25 GETIMPORT                        R2 K4 [Vector2.new]
       27 LOADN                            R3 0
       28 LOADN                            R4 0
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K5 ["CanvasPosition"]
       32 GETUPVAL                         R1 5
       33 GETUPVAL                         R2 6
       34 GETTABLEKS                       R2 R2 K6 ["instant"]
       36 LOADN                            R3 1
       37 CALL                             R2 1 1
       38 CALL                             R1 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 7
       41 GETUPVAL                         R3 8
       42 GETTABLEKS                       R3 R3 K0 ["current"]
       44 MINUS                            R2 R3
       45 SETTABLEKS                       R2 R1 K0 ["current"]
       47 GETUPVAL                         R1 9
       48 LOADN                            R2 0
       49 CALL                             R1 1 0
       50 GETUPVAL                         R1 5
       51 GETUPVAL                         R2 6
       52 GETTABLEKS                       R2 R2 K7 ["ease"]
       54 LOADN                            R3 1
       55 DUPTABLE                         R4 K9 [{"duration"}]
       56 GETUPVAL                         R5 10
       57 GETTABLEKS                       R5 R5 K10 ["Time"]
       59 GETTABLEKS                       R5 R5 K11 ["Time_100"]
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
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["current"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K2 ["FoundationBottomSheetImproveSpring"]
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
       35 GETUPVAL                         R2 5
       36 GETTABLEKS                       R2 R2 K1 ["current"]
       38 LOADN                            R3 0
       39 JUMPIFNOTLT                      R3 R2 ; [+10]
       41 JUMPIFNOT                        R0 ; [+8]
       42 GETUPVAL                         R2 6
       43 GETTABLEKS                       R2 R2 K1 ["current"]
       45 JUMPIFNOT                        R2 ; [+4]
       46 GETUPVAL                         R2 7
       47 LOADB                            R3 0
       48 CALL                             R2 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 5
       51 GETTABLEKS                       R2 R2 K1 ["current"]
       53 LOADN                            R3 0
       54 JUMPIFLT                         R2 R3 ; [+10]
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K2 ["FoundationBottomSheetImproveSpring"]
       59 JUMPIFNOT                        R2 ; [+9]
       60 GETUPVAL                         R2 5
       61 GETTABLEKS                       R2 R2 K1 ["current"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 DIVK                             R2 R0 K1 [2.35]
        7 SUB                              R3 R1 R2
        8 NEWTABLE                         R4 0 1
       10 DUPTABLE                         R5 K5 [{["index"] = 0, ["position"] = 0}]
       11 SETLIST                          R4 R5 1 [1]
       13 GETUPVAL                         R5 2
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 DUPTABLE                         R12 K6 [{"index", "position"}]
       18 SETTABLEKS                       R8 R12 K2 ["index"]
       20 GETUPVAL                         R13 3
       21 MOVE                             R14 R9
       22 CALL                             R13 1 1
       23 SETTABLEKS                       R13 R12 K4 ["position"]
       25 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       27 MOVE                             R11 R4
       28 GETIMPORT                        R10 K9 [table.insert]
       30 CALL                             R10 2 0
       31 FORGLOOP                         R5 2 ; [-15]
       33 GETIMPORT                        R5 K11 [table.sort]
       35 MOVE                             R6 R4
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R3
       38 CALL                             R5 2 0
       39 GETTABLEN                        R5 R4 1
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R6 R6 K0 ["current"]
       43 JUMPIF                           R6 ; [+23]
       44 GETUPVAL                         R6 5
       45 MINUS                            R7 R0
       46 SETTABLEKS                       R7 R6 K0 ["current"]
       48 GETTABLEKS                       R6 R5 K2 ["index"]
       50 JUMPIFNOTEQKN                    R6 K3 [0] ; [+12]
       52 GETUPVAL                         R6 6
       53 GETTABLEKS                       R6 R6 K12 ["FoundationSheetReducedMotion"]
       55 JUMPIFNOT                        R6 ; [+4]
       56 GETUPVAL                         R6 7
       57 LOADB                            R7 1
       58 CALL                             R6 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R6 7
       61 CALL                             R6 0 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R6 8
       64 GETTABLEKS                       R7 R5 K2 ["index"]
       66 CALL                             R6 1 0
       67 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+55]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["FoundationSheetReducedMotion"]
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+13]
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 4
       10 GETTABLEKS                       R1 R1 K1 ["defaultSnapPointIndex"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 GETUPVAL                         R1 6
       15 GETTABLEKS                       R1 R1 K2 ["instant"]
       17 LOADN                            R2 0
       18 CALL                             R1 1 -1
       19 CALL                             R0 -1 0
       20 JUMP                             ; [+20]
       21 GETUPVAL                         R0 7
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K1 ["defaultSnapPointIndex"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 5
       27 GETUPVAL                         R1 6
       28 GETTABLEKS                       R1 R1 K3 ["ease"]
       30 LOADN                            R2 0
       31 DUPTABLE                         R3 K5 [{"duration"}]
       32 GETUPVAL                         R4 8
       33 GETTABLEKS                       R4 R4 K6 ["Time"]
       35 GETTABLEKS                       R4 R4 K7 ["Time_100"]
       37 SETTABLEKS                       R4 R3 K4 ["duration"]
       39 CALL                             R1 2 -1
       40 CALL                             R0 -1 0
       41 GETUPVAL                         R1 9
       42 GETUPVAL                         R3 10
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K1 ["defaultSnapPointIndex"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 NAMECALL                         R1 R1 K1 ["GetScrollVelocity"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R1 R1 K2 ["Y"]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["FoundationBottomSheetImproveSpring"]
       13 JUMPIFNOT                        R0 ; [+39]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 JUMPIFNOT                        R1 ; [+9]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K0 ["current"]
       21 NAMECALL                         R0 R0 K2 ["GetScrollVelocity"]
       23 CALL                             R0 1 1
       24 GETTABLEKS                       R0 R0 K3 ["Y"]
       26 JUMP                             ; [+1]
       27 LOADN                            R0 0
       28 GETUPVAL                         R1 3
       29 SETTABLEKS                       R0 R1 K0 ["current"]
       31 LOADB                            R1 1
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R2 R2 K0 ["current"]
       35 GETUPVAL                         R5 5
       36 GETUPVAL                         R6 6
       37 ADD                              R4 R5 R6
       38 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       39 GETIMPORT                        R3 K6 [math.floor]
       41 CALL                             R3 1 1
       42 JUMPIFLE                         R3 R2 ; [+4]
       44 GETUPVAL                         R1 7
       45 GETTABLEKS                       R1 R1 K0 ["current"]
       47 JUMPIFNOT                        R1 ; [+55]
       48 GETUPVAL                         R2 8
       49 LOADB                            R3 1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 JUMP                             ; [+50]
       53 GETUPVAL                         R0 1
       54 GETTABLEKS                       R0 R0 K7 ["FoundationSheetFixClosingSwipe"]
       56 JUMPIFNOT                        R0 ; [+23]
       57 LOADNIL                          R0
       58 GETUPVAL                         R1 2
       59 GETTABLEKS                       R1 R1 K0 ["current"]
       61 JUMPIFNOT                        R1 ; [+7]
       62 GETIMPORT                        R1 K9 [pcall]
       64 NEWCLOSURE                       R2 P0
       65 CAPTURE                          UPVAL U2
       66 CALL                             R1 1 2
       67 JUMPIFNOT                        R1 ; [+1]
       68 MOVE                             R0 R2
       69 MOVE                             R1 R0
       70 JUMPIF                           R1 ; [+3]
       71 GETUPVAL                         R1 7
       72 GETTABLEKS                       R1 R1 K0 ["current"]
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
       86 GETUPVAL                         R1 4
       87 GETTABLEKS                       R1 R1 K0 ["current"]
       89 GETUPVAL                         R4 5
       90 GETUPVAL                         R5 6
       91 ADD                              R3 R4 R5
       92 FASTCALL1                        MATH_ROUND R3 ; [+2]
       93 GETIMPORT                        R2 K12 [math.round]
       95 CALL                             R2 1 1
       96 JUMPIFLE                         R2 R1 ; [+4]
       98 GETUPVAL                         R0 7
       99 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UserInputService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K4 ["TouchPan"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R0 R0 K5 ["Connect"]
       13 CALL                             R0 2 1
       14 GETIMPORT                        R1 K1 [game]
       16 LOADK                            R3 K2 ["UserInputService"]
       17 NAMECALL                         R1 R1 K3 ["GetService"]
       19 CALL                             R1 2 1
       20 GETTABLEKS                       R1 R1 K6 ["InputBegan"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R1 R1 K5 ["Connect"]
       28 CALL                             R1 2 1
       29 GETIMPORT                        R2 K1 [game]
       31 LOADK                            R4 K2 ["UserInputService"]
       32 NAMECALL                         R2 R2 K3 ["GetService"]
       34 CALL                             R2 2 1
       35 GETTABLEKS                       R2 R2 K7 ["InputEnded"]
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
        0 DUPTABLE                         R0 K21 [{[1], ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"], ["setSheetHeightAvailable"], ["safeAreaPadding"], ["bottomPadding"] = 200, ["innerScrollingEnabled"], ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["closeSheet"], ["sheetType"], ["innerSurface"], ["testId"], ["closeAffordanceRef"], ["contentStartRef"], ["setContentStartRef"]}]
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
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K9 ["innerScrollingEnabled"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K10 ["innerScrollY"]
       28 NEWCLOSURE                       R1 P0
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U10
       31 SETTABLEKS                       R1 R0 K11 ["setInnerScrollY"]
       33 GETUPVAL                         R1 11
       34 SETTABLEKS                       R1 R0 K12 ["hasHeader"]
       36 GETUPVAL                         R1 12
       37 SETTABLEKS                       R1 R0 K13 ["setHasHeader"]
       39 GETUPVAL                         R1 13
       40 SETTABLEKS                       R1 R0 K14 ["closeSheet"]
       42 GETUPVAL                         R1 14
       43 GETTABLEKS                       R1 R1 K22 ["Bottom"]
       45 SETTABLEKS                       R1 R0 K15 ["sheetType"]
       47 GETUPVAL                         R1 15
       48 SETTABLEKS                       R1 R0 K16 ["innerSurface"]
       50 GETUPVAL                         R1 16
       51 GETTABLEKS                       R1 R1 K17 ["testId"]
       53 SETTABLEKS                       R1 R0 K17 ["testId"]
       55 GETUPVAL                         R1 17
       56 SETTABLEKS                       R1 R0 K18 ["closeAffordanceRef"]
       58 GETUPVAL                         R1 18
       59 SETTABLEKS                       R1 R0 K19 ["contentStartRef"]
       61 GETUPVAL                         R1 19
       62 SETTABLEKS                       R1 R0 K20 ["setContentStartRef"]
       64 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["CanvasPosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 SETTABLEKS                       R2 R1 K2 ["current"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["current"]
       11 GETUPVAL                         R5 2
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["Margin"]
       16 GETTABLEKS                       R4 R4 K4 ["Small"]
       18 SUB                              R2 R3 R4
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 4
       21 CALL                             R1 0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K2 ["current"]
       25 LOADN                            R2 0
       26 JUMPIFNOTLE                      R1 R2 ; [+3]
       28 GETUPVAL                         R1 5
       29 CALL                             R1 0 0
       30 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R3 K2 ["Y"]
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
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 GETUPVAL                         R4 1
       13 LENGTH                           R3 R4
       14 MOD                              R1 R2 R3
       15 ADDK                             R0 R1 K1 [1]
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K2 ["FoundationSheetReducedMotion"]
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
       29 GETUPVAL                         R1 3
       30 GETTABLEKS                       R1 R1 K3 ["FoundationSheetFixClosingSwipe"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Color"]
        4 GETTABLEKS                       R2 R2 K4 ["Common"]
        6 GETTABLEKS                       R2 R2 K5 ["Backdrop"]
        8 GETTABLEKS                       R2 R2 K0 ["Color3"]
       10 SETTABLEKS                       R2 R1 K0 ["Color3"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Color"]
       15 GETTABLEKS                       R3 R3 K4 ["Common"]
       17 GETTABLEKS                       R3 R3 K5 ["Backdrop"]
       19 GETTABLEKS                       R3 R3 K1 ["Transparency"]
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
        9 GETUPVAL                         R6 5
       10 GETTABLEKS                       R6 R6 K0 ["Sheet"]
       12 DUPTABLE                         R7 K3 [{["stackAboveOwner"] = False}]
       13 CALL                             R5 2 1
       14 LOADB                            R6 0
       15 GETUPVAL                         R7 6
       16 GETTABLEKS                       R7 R7 K4 ["FoundationSheetReducedMotion"]
       18 JUMPIFNOT                        R7 ; [+4]
       19 GETUPVAL                         R7 7
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R6 R7 K5 ["reducedMotion"]
       23 GETUPVAL                         R7 8
       24 CALL                             R7 0 1
       25 GETUPVAL                         R8 9
       26 GETTABLEKS                       R8 R8 K6 ["useState"]
       28 LOADN                            R9 0
       29 CALL                             R8 1 2
       30 GETUPVAL                         R10 9
       31 GETTABLEKS                       R10 R10 K7 ["useMemo"]
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          VAL R8
       35 NEWTABLE                         R12 0 1
       37 MOVE                             R13 R8
       38 SETLIST                          R12 R13 1 [1]
       40 CALL                             R10 2 1
       41 GETTABLEKS                       R12 R2 K8 ["snapPoints"]
       43 OR                               R11 R12 R10
       44 GETUPVAL                         R12 9
       45 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       47 NEWCLOSURE                       R13 P1
       48 CAPTURE                          VAL R7
       49 NEWTABLE                         R14 0 1
       51 MOVE                             R15 R7
       52 SETLIST                          R14 R15 1 [1]
       54 CALL                             R12 2 1
       55 LOADN                            R13 0
       56 MOVE                             R14 R11
       57 LOADNIL                          R15
       58 LOADNIL                          R16
       59 FORGPREP                         R14
       60 MOVE                             R19 R12
       61 MOVE                             R20 R18
       62 CALL                             R19 1 1
       63 JUMPIFNOTLT                      R13 R19 ; [+2]
       65 MOVE                             R13 R19
       66 FORGLOOP                         R14 2 ; [-7]
       68 FASTCALL2                        MATH_MIN R13 R7 ; [+5]
       70 MOVE                             R15 R13
       71 MOVE                             R16 R7
       72 GETIMPORT                        R14 K12 [math.min]
       74 CALL                             R14 2 1
       75 MOVE                             R13 R14
       76 GETUPVAL                         R14 10
       77 MOVE                             R15 R3
       78 CALL                             R14 1 1
       79 GETTABLEKS                       R14 R14 K13 ["bottom"]
       81 GETUPVAL                         R15 9
       82 GETTABLEKS                       R15 R15 K14 ["useRef"]
       84 LOADN                            R16 0
       85 CALL                             R15 1 1
       86 GETUPVAL                         R16 9
       87 GETTABLEKS                       R16 R16 K14 ["useRef"]
       89 LOADB                            R17 0
       90 CALL                             R16 1 1
       91 GETUPVAL                         R17 11
       92 LOADN                            R18 1
       93 NEWCLOSURE                       R19 P2
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R2
       96 CALL                             R17 2 2
       97 GETUPVAL                         R19 9
       98 GETTABLEKS                       R19 R19 K15 ["useBinding"]
      100 MINUS                            R20 R14
      101 CALL                             R19 1 2
      102 GETUPVAL                         R21 9
      103 GETTABLEKS                       R21 R21 K15 ["useBinding"]
      105 LOADN                            R22 0
      106 CALL                             R21 1 2
      107 GETUPVAL                         R23 9
      108 GETTABLEKS                       R23 R23 K15 ["useBinding"]
      110 LOADB                            R24 0
      111 CALL                             R23 1 2
      112 GETUPVAL                         R25 9
      113 GETTABLEKS                       R25 R25 K15 ["useBinding"]
      115 LOADB                            R26 0
      116 CALL                             R25 1 2
      117 GETUPVAL                         R27 9
      118 GETTABLEKS                       R27 R27 K14 ["useRef"]
      120 LOADN                            R28 0
      121 CALL                             R27 1 1
      122 GETUPVAL                         R28 9
      123 GETTABLEKS                       R28 R28 K14 ["useRef"]
      125 LOADNIL                          R29
      126 CALL                             R28 1 1
      127 GETUPVAL                         R29 9
      128 GETTABLEKS                       R29 R29 K15 ["useBinding"]
      130 LOADN                            R30 0
      131 CALL                             R29 1 2
      132 GETUPVAL                         R31 9
      133 GETTABLEKS                       R31 R31 K15 ["useBinding"]
      135 LOADB                            R32 0
      136 CALL                             R31 1 2
      137 GETUPVAL                         R33 9
      138 GETTABLEKS                       R33 R33 K14 ["useRef"]
      140 LOADB                            R34 0
      141 CALL                             R33 1 1
      142 GETUPVAL                         R34 9
      143 GETTABLEKS                       R34 R34 K14 ["useRef"]
      145 LOADN                            R35 0
      146 CALL                             R34 1 1
      147 GETUPVAL                         R35 9
      148 GETTABLEKS                       R35 R35 K14 ["useRef"]
      150 LOADNIL                          R36
      151 CALL                             R35 1 1
      152 GETUPVAL                         R36 9
      153 GETTABLEKS                       R36 R36 K14 ["useRef"]
      155 LOADB                            R37 0
      156 CALL                             R36 1 1
      157 GETUPVAL                         R37 9
      158 GETTABLEKS                       R37 R37 K14 ["useRef"]
      160 LOADN                            R38 0
      161 CALL                             R37 1 1
      162 GETUPVAL                         R38 9
      163 GETTABLEKS                       R38 R38 K9 ["useCallback"]
      165 NEWCLOSURE                       R39 P3
      166 CAPTURE                          VAL R35
      167 CAPTURE                          VAL R34
      168 CAPTURE                          VAL R36
      169 NEWTABLE                         R40 0 0
      171 CALL                             R38 2 1
      172 GETUPVAL                         R39 9
      173 GETTABLEKS                       R39 R39 K9 ["useCallback"]
      175 NEWCLOSURE                       R40 P4
      176 CAPTURE                          VAL R38
      177 CAPTURE                          VAL R36
      178 CAPTURE                          UPVAL U6
      179 CAPTURE                          VAL R28
      180 CAPTURE                          VAL R35
      181 CAPTURE                          VAL R37
      182 CAPTURE                          UPVAL U12
      183 NEWTABLE                         R41 0 1
      185 MOVE                             R42 R38
      186 SETLIST                          R41 R42 1 [1]
      188 CALL                             R39 2 1
      189 GETUPVAL                         R40 9
      190 GETTABLEKS                       R40 R40 K9 ["useCallback"]
      192 NEWCLOSURE                       R41 P5
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R14
      195 NEWTABLE                         R42 0 2
      197 MOVE                             R43 R14
      198 MOVE                             R44 R12
      199 SETLIST                          R42 R43 2 [1]
      201 CALL                             R40 2 1
      202 GETUPVAL                         R41 9
      203 GETTABLEKS                       R41 R41 K9 ["useCallback"]
      205 NEWCLOSURE                       R42 P6
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R39
      208 CAPTURE                          VAL R40
      209 CAPTURE                          VAL R11
      210 NEWTABLE                         R43 0 2
      212 MOVE                             R44 R40
      213 MOVE                             R45 R11
      214 SETLIST                          R43 R44 2 [1]
      216 CALL                             R41 2 1
      217 GETUPVAL                         R43 6
      218 GETTABLEKS                       R43 R43 K4 ["FoundationSheetReducedMotion"]
      220 JUMPIFNOT                        R43 ; [+18]
      221 GETUPVAL                         R42 9
      222 GETTABLEKS                       R42 R42 K9 ["useCallback"]
      224 NEWCLOSURE                       R43 P7
      225 CAPTURE                          VAL R38
      226 CAPTURE                          VAL R15
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R40
      229 CAPTURE                          VAL R11
      230 NEWTABLE                         R44 0 3
      232 MOVE                             R45 R38
      233 MOVE                             R46 R40
      234 MOVE                             R47 R11
      235 SETLIST                          R44 R45 3 [1]
      237 CALL                             R42 2 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R42
      240 GETUPVAL                         R43 9
      241 GETTABLEKS                       R43 R43 K9 ["useCallback"]
      243 NEWCLOSURE                       R44 P8
      244 CAPTURE                          VAL R16
      245 CAPTURE                          UPVAL U6
      246 CAPTURE                          REF R6
      247 CAPTURE                          VAL R38
      248 CAPTURE                          VAL R28
      249 CAPTURE                          VAL R18
      250 CAPTURE                          UPVAL U13
      251 CAPTURE                          VAL R37
      252 CAPTURE                          VAL R34
      253 CAPTURE                          VAL R39
      254 CAPTURE                          VAL R4
      255 GETUPVAL                         R46 6
      256 GETTABLEKS                       R46 R46 K4 ["FoundationSheetReducedMotion"]
      258 JUMPIFNOT                        R46 ; [+8]
      259 NEWTABLE                         R45 0 3
      261 MOVE                             R46 R39
      262 MOVE                             R47 R38
      263 MOVE                             R48 R6
      264 SETLIST                          R45 R46 3 [1]
      266 JUMP                             ; [+5]
      267 NEWTABLE                         R45 0 1
      269 MOVE                             R46 R39
      270 SETLIST                          R45 R46 1 [1]
      272 CALL                             R43 2 1
      273 GETUPVAL                         R44 9
      274 GETTABLEKS                       R44 R44 K9 ["useCallback"]
      276 NEWCLOSURE                       R45 P9
      277 CAPTURE                          VAL R29
      278 CAPTURE                          VAL R27
      279 CAPTURE                          UPVAL U6
      280 CAPTURE                          REF R13
      281 CAPTURE                          VAL R14
      282 CAPTURE                          VAL R34
      283 CAPTURE                          VAL R33
      284 CAPTURE                          VAL R32
      285 NEWTABLE                         R46 0 2
      287 MOVE                             R47 R13
      288 MOVE                             R48 R14
      289 SETLIST                          R46 R47 2 [1]
      291 CALL                             R44 2 1
      292 GETUPVAL                         R45 9
      293 GETTABLEKS                       R45 R45 K9 ["useCallback"]
      295 NEWCLOSURE                       R46 P10
      296 CAPTURE                          VAL R34
      297 CAPTURE                          VAL R27
      298 CAPTURE                          VAL R11
      299 CAPTURE                          VAL R40
      300 CAPTURE                          VAL R33
      301 CAPTURE                          VAL R37
      302 CAPTURE                          UPVAL U6
      303 CAPTURE                          VAL R43
      304 CAPTURE                          VAL R41
      305 NEWTABLE                         R47 0 4
      307 MOVE                             R48 R11
      308 MOVE                             R49 R41
      309 MOVE                             R50 R40
      310 MOVE                             R51 R43
      311 SETLIST                          R47 R48 4 [1]
      313 CALL                             R45 2 1
      314 GETUPVAL                         R46 9
      315 GETTABLEKS                       R46 R46 K16 ["useEffect"]
      317 NEWCLOSURE                       R47 P11
      318 CAPTURE                          VAL R3
      319 CAPTURE                          UPVAL U6
      320 CAPTURE                          REF R6
      321 CAPTURE                          VAL R42
      322 CAPTURE                          VAL R2
      323 CAPTURE                          VAL R18
      324 CAPTURE                          UPVAL U13
      325 CAPTURE                          VAL R41
      326 CAPTURE                          VAL R4
      327 CAPTURE                          VAL R12
      328 CAPTURE                          VAL R11
      329 CAPTURE                          REF R13
      330 CAPTURE                          VAL R32
      331 CAPTURE                          VAL R38
      332 GETUPVAL                         R49 6
      333 GETTABLEKS                       R49 R49 K4 ["FoundationSheetReducedMotion"]
      335 JUMPIFNOT                        R49 ; [+13]
      336 NEWTABLE                         R48 0 7
      338 MOVE                             R49 R3
      339 MOVE                             R50 R11
      340 GETTABLEKS                       R51 R2 K17 ["defaultSnapPointIndex"]
      342 MOVE                             R52 R41
      343 MOVE                             R53 R12
      344 MOVE                             R54 R42
      345 MOVE                             R55 R6
      346 SETLIST                          R48 R49 7 [1]
      348 JUMP                             ; [+10]
      349 NEWTABLE                         R48 0 5
      351 MOVE                             R49 R3
      352 MOVE                             R50 R11
      353 GETTABLEKS                       R51 R2 K17 ["defaultSnapPointIndex"]
      355 MOVE                             R52 R41
      356 MOVE                             R53 R12
      357 SETLIST                          R48 R49 5 [1]
      359 CALL                             R46 2 0
      360 GETUPVAL                         R46 9
      361 GETTABLEKS                       R46 R46 K16 ["useEffect"]
      363 NEWCLOSURE                       R47 P12
      364 CAPTURE                          VAL R34
      365 CAPTURE                          VAL R44
      366 CAPTURE                          VAL R33
      367 CAPTURE                          VAL R38
      368 CAPTURE                          UPVAL U6
      369 CAPTURE                          VAL R28
      370 CAPTURE                          VAL R27
      371 CAPTURE                          REF R13
      372 CAPTURE                          VAL R14
      373 CAPTURE                          VAL R16
      374 CAPTURE                          VAL R32
      375 CAPTURE                          VAL R31
      376 CAPTURE                          VAL R45
      377 NEWTABLE                         R48 0 4
      379 MOVE                             R49 R3
      380 MOVE                             R50 R45
      381 MOVE                             R51 R44
      382 MOVE                             R52 R38
      383 SETLIST                          R48 R49 4 [1]
      385 CALL                             R46 2 0
      386 GETUPVAL                         R46 9
      387 GETTABLEKS                       R46 R46 K14 ["useRef"]
      389 LOADNIL                          R47
      390 CALL                             R46 1 1
      391 GETUPVAL                         R47 9
      392 GETTABLEKS                       R47 R47 K6 ["useState"]
      394 LOADNIL                          R48
      395 CALL                             R47 1 2
      396 GETUPVAL                         R49 9
      397 GETTABLEKS                       R49 R49 K6 ["useState"]
      399 LOADNIL                          R50
      400 CALL                             R49 1 2
      401 GETUPVAL                         R51 14
      402 GETTABLEKS                       R51 R51 K18 ["useComposedRef"]
      404 MOVE                             R52 R1
      405 MOVE                             R53 R50
      406 CALL                             R51 2 1
      407 GETUPVAL                         R52 9
      408 GETTABLEKS                       R52 R52 K19 ["useImperativeHandle"]
      410 GETTABLEKS                       R53 R2 K20 ["sheetRef"]
      412 NEWCLOSURE                       R54 P13
      413 CAPTURE                          VAL R43
      414 NEWTABLE                         R55 0 0
      416 CALL                             R52 3 0
      417 GETUPVAL                         R52 9
      418 GETTABLEKS                       R52 R52 K7 ["useMemo"]
      420 NEWCLOSURE                       R53 P14
      421 CAPTURE                          VAL R21
      422 CAPTURE                          VAL R22
      423 CAPTURE                          VAL R23
      424 CAPTURE                          VAL R24
      425 CAPTURE                          VAL R19
      426 CAPTURE                          VAL R20
      427 CAPTURE                          VAL R14
      428 CAPTURE                          VAL R31
      429 CAPTURE                          VAL R29
      430 CAPTURE                          VAL R30
      431 CAPTURE                          VAL R44
      432 CAPTURE                          VAL R25
      433 CAPTURE                          VAL R26
      434 CAPTURE                          VAL R43
      435 CAPTURE                          UPVAL U15
      436 CAPTURE                          VAL R49
      437 CAPTURE                          VAL R2
      438 CAPTURE                          VAL R46
      439 CAPTURE                          VAL R47
      440 CAPTURE                          VAL R48
      441 NEWTABLE                         R54 0 7
      443 GETTABLEKS                       R55 R2 K21 ["testId"]
      445 MOVE                             R56 R43
      446 MOVE                             R57 R14
      447 MOVE                             R58 R44
      448 MOVE                             R59 R49
      449 MOVE                             R60 R46
      450 MOVE                             R61 R47
      451 SETLIST                          R54 R55 7 [1]
      453 CALL                             R52 2 1
      454 MOVE                             R53 R3
      455 JUMPIFNOT                        R53 ; [+423]
      456 GETUPVAL                         R53 16
      457 GETTABLEKS                       R53 R53 K22 ["createPortal"]
      459 GETUPVAL                         R54 9
      460 GETTABLEKS                       R54 R54 K23 ["createElement"]
      462 GETUPVAL                         R55 17
      463 DUPTABLE                         R56 K30 [{["ZIndex"], ["ref"], ["selection"], ["selectionGroup"], ["tag"] = "size-full", ["testId"]}]
      464 GETTABLEKS                       R57 R5 K31 ["zIndex"]
      466 SETTABLEKS                       R57 R56 K24 ["ZIndex"]
      468 SETTABLEKS                       R51 R56 K25 ["ref"]
      470 GETUPVAL                         R57 18
      471 GETTABLEKS                       R57 R57 K32 ["nonSelectable"]
      473 SETTABLEKS                       R57 R56 K26 ["selection"]
      475 GETUPVAL                         R57 18
      476 GETTABLEKS                       R57 R57 K33 ["isolatedSelectionGroup"]
      478 SETTABLEKS                       R57 R56 K27 ["selectionGroup"]
      480 LOADK                            R58 K34 ["%*--surface"]
      481 GETTABLEKS                       R60 R2 K21 ["testId"]
      483 NAMECALL                         R58 R58 K35 ["format"]
      485 CALL                             R58 2 1
      486 MOVE                             R57 R58
      487 SETTABLEKS                       R57 R56 K21 ["testId"]
      489 GETUPVAL                         R57 9
      490 GETTABLEKS                       R57 R57 K23 ["createElement"]
      492 LOADK                            R58 K36 ["ScrollingFrame"]
      493 NEWTABLE                         R59 8 0
      495 GETIMPORT                        R60 K39 [UDim2.fromScale]
      497 LOADN                            R61 1
      498 LOADN                            R62 1
      499 CALL                             R60 2 1
      500 SETTABLEKS                       R60 R59 K40 ["Size"]
      502 GETUPVAL                         R61 6
      503 GETTABLEKS                       R61 R61 K41 ["FoundationSheetPreventCloseOnResize"]
      505 JUMPIFNOT                        R61 ; [+8]
      506 GETIMPORT                        R60 K43 [UDim2.new]
      508 LOADN                            R61 1
      509 LOADN                            R62 0
      510 LOADN                            R63 1
      511 ADD                              R64 R13 R14
      512 CALL                             R60 4 1
      513 JUMP                             ; [+8]
      514 GETIMPORT                        R60 K43 [UDim2.new]
      516 LOADN                            R61 1
      517 LOADN                            R62 0
      518 LOADN                            R63 0
      519 ADD                              R65 R7 R13
      520 ADD                              R64 R65 R14
      521 CALL                             R60 4 1
      522 SETTABLEKS                       R60 R59 K44 ["CanvasSize"]
      524 LOADB                            R60 0
      525 SETTABLEKS                       R60 R59 K45 ["ClipsDescendants"]
      527 LOADN                            R60 1
      528 SETTABLEKS                       R60 R59 K46 ["BackgroundTransparency"]
      530 GETIMPORT                        R60 K50 [Enum.ScrollingDirection.Y]
      532 SETTABLEKS                       R60 R59 K48 ["ScrollingDirection"]
      534 LOADN                            R60 0
      535 SETTABLEKS                       R60 R59 K51 ["ScrollBarThickness"]
      537 SETTABLEKS                       R28 R59 K25 ["ref"]
      539 GETUPVAL                         R60 9
      540 GETTABLEKS                       R60 R60 K52 ["Change"]
      542 GETTABLEKS                       R60 R60 K53 ["CanvasPosition"]
      544 NEWCLOSURE                       R61 P15
      545 CAPTURE                          VAL R27
      546 CAPTURE                          VAL R20
      547 CAPTURE                          VAL R14
      548 CAPTURE                          VAL R4
      549 CAPTURE                          VAL R44
      550 CAPTURE                          VAL R43
      551 SETTABLE                         R61 R59 R60
      552 DUPTABLE                         R60 K57 [{"SheetContainer", "Shadow", "Backdrop"}]
      553 GETUPVAL                         R61 9
      554 GETTABLEKS                       R61 R61 K23 ["createElement"]
      556 GETUPVAL                         R62 17
      557 DUPTABLE                         R63 K60 [{["Size"], ["Position"], ["ZIndex"] = 3}]
      558 GETUPVAL                         R65 6
      559 GETTABLEKS                       R65 R65 K41 ["FoundationSheetPreventCloseOnResize"]
      561 JUMPIFNOT                        R65 ; [+9]
      562 GETIMPORT                        R64 K43 [UDim2.new]
      564 LOADN                            R65 1
      565 LOADN                            R66 0
      566 LOADN                            R67 1
      567 SUBRK                            R69 K61 [200] R13
      568 SUB                              R68 R69 R14
      569 CALL                             R64 4 1
      570 JUMP                             ; [+7]
      571 GETIMPORT                        R64 K43 [UDim2.new]
      573 LOADN                            R65 1
      574 LOADN                            R66 0
      575 LOADN                            R67 0
      576 ADDK                             R68 R7 K61 [200]
      577 CALL                             R64 4 1
      578 SETTABLEKS                       R64 R63 K40 ["Size"]
      580 GETUPVAL                         R65 6
      581 GETTABLEKS                       R65 R65 K41 ["FoundationSheetPreventCloseOnResize"]
      583 JUMPIFNOT                        R65 ; [+8]
      584 GETIMPORT                        R64 K43 [UDim2.new]
      586 LOADN                            R65 0
      587 LOADN                            R66 0
      588 LOADN                            R67 1
      589 MINUS                            R68 R13
      590 CALL                             R64 4 1
      591 JUMP                             ; [+5]
      592 GETIMPORT                        R64 K63 [UDim2.fromOffset]
      594 LOADN                            R65 0
      595 ADD                              R66 R7 R14
      596 CALL                             R64 2 1
      597 SETTABLEKS                       R64 R63 K58 ["Position"]
      599 DUPTABLE                         R64 K64 [{"Sheet"}]
      600 GETUPVAL                         R65 9
      601 GETTABLEKS                       R65 R65 K23 ["createElement"]
      603 GETUPVAL                         R66 17
      604 DUPTABLE                         R67 K70 [{["Size"], ["AutomaticSize"], ["onAbsoluteSizeChanged"], ["stateLayer"], ["onActivated"], ["testId"], ["tag"] = "bg-surface-100 radius-large col items-center clip padding-top-small"}]
      605 GETTABLEKS                       R69 R2 K8 ["snapPoints"]
      607 JUMPIFNOTEQKNIL                  R69 ; [+7]
      609 GETIMPORT                        R68 K39 [UDim2.fromScale]
      611 LOADN                            R69 1
      612 LOADN                            R70 0
      613 CALL                             R68 2 1
      614 JUMP                             ; [+7]
      615 GETIMPORT                        R68 K43 [UDim2.new]
      617 LOADN                            R69 1
      618 LOADN                            R70 0
      619 LOADN                            R71 0
      620 ADDK                             R72 R13 K61 [200]
      621 CALL                             R68 4 1
      622 SETTABLEKS                       R68 R67 K40 ["Size"]
      624 GETTABLEKS                       R69 R2 K8 ["snapPoints"]
      626 JUMPIFNOTEQKNIL                  R69 ; [+4]
      628 GETIMPORT                        R68 K71 [Enum.AutomaticSize.Y]
      630 JUMP                             ; [+1]
      631 LOADNIL                          R68
      632 SETTABLEKS                       R68 R67 K65 ["AutomaticSize"]
      634 GETTABLEKS                       R69 R2 K8 ["snapPoints"]
      636 JUMPIFNOTEQKNIL                  R69 ; [+4]
      638 NEWCLOSURE                       R68 P16
      639 CAPTURE                          VAL R9
      640 JUMP                             ; [+1]
      641 LOADNIL                          R68
      642 SETTABLEKS                       R68 R67 K66 ["onAbsoluteSizeChanged"]
      644 DUPTABLE                         R68 K73 [{"affordance"}]
      645 GETUPVAL                         R69 19
      646 GETTABLEKS                       R69 R69 K74 ["None"]
      648 SETTABLEKS                       R69 R68 K72 ["affordance"]
      650 SETTABLEKS                       R68 R67 K67 ["stateLayer"]
      652 GETUPVAL                         R68 20
      653 GETTABLEKS                       R68 R68 K75 ["noop"]
      655 SETTABLEKS                       R68 R67 K68 ["onActivated"]
      657 GETTABLEKS                       R68 R2 K21 ["testId"]
      659 SETTABLEKS                       R68 R67 K21 ["testId"]
      661 DUPTABLE                         R68 K78 [{"Gripper", "Content"}]
      662 GETUPVAL                         R69 9
      663 GETTABLEKS                       R69 R69 K23 ["createElement"]
      665 GETUPVAL                         R70 17
      666 DUPTABLE                         R71 K81 [{["ZIndex"] = 3, ["backgroundStyle"], ["tag"] = "padding-y-small size-1000-100 radius-small align-y-center", ["testId"]}]
      667 GETTABLEKS                       R72 R4 K82 ["Color"]
      669 GETTABLEKS                       R72 R72 K77 ["Content"]
      671 GETTABLEKS                       R72 R72 K83 ["Muted"]
      673 SETTABLEKS                       R72 R71 K79 ["backgroundStyle"]
      675 LOADK                            R73 K84 ["%*--gripper"]
      676 GETTABLEKS                       R75 R2 K21 ["testId"]
      678 NAMECALL                         R73 R73 K35 ["format"]
      680 CALL                             R73 2 1
      681 MOVE                             R72 R73
      682 SETTABLEKS                       R72 R71 K21 ["testId"]
      684 DUPTABLE                         R72 K86 [{"TouchTarget"}]
      685 GETUPVAL                         R73 9
      686 GETTABLEKS                       R73 R73 K23 ["createElement"]
      688 GETUPVAL                         R74 17
      689 DUPTABLE                         R75 K88 [{["tag"] = "size-1000-600", ["stateLayer"], ["onActivated"]}]
      690 DUPTABLE                         R76 K73 [{"affordance"}]
      691 GETUPVAL                         R77 19
      692 GETTABLEKS                       R77 R77 K74 ["None"]
      694 SETTABLEKS                       R77 R76 K72 ["affordance"]
      696 SETTABLEKS                       R76 R75 K67 ["stateLayer"]
      698 NEWCLOSURE                       R76 P17
      699 CAPTURE                          VAL R33
      700 CAPTURE                          VAL R11
      701 CAPTURE                          VAL R15
      702 CAPTURE                          UPVAL U6
      703 CAPTURE                          REF R6
      704 CAPTURE                          VAL R42
      705 CAPTURE                          VAL R41
      706 CAPTURE                          VAL R12
      707 CAPTURE                          REF R13
      708 CAPTURE                          VAL R32
      709 CAPTURE                          VAL R43
      710 SETTABLEKS                       R76 R75 K68 ["onActivated"]
      712 CALL                             R73 2 1
      713 SETTABLEKS                       R73 R72 K85 ["TouchTarget"]
      715 CALL                             R69 3 1
      716 SETTABLEKS                       R69 R68 K76 ["Gripper"]
      718 GETUPVAL                         R69 9
      719 GETTABLEKS                       R69 R69 K23 ["createElement"]
      721 GETUPVAL                         R70 21
      722 GETTABLEKS                       R70 R70 K89 ["Provider"]
      724 DUPTABLE                         R71 K91 [{"value"}]
      725 SETTABLEKS                       R52 R71 K90 ["value"]
      727 GETUPVAL                         R72 9
      728 GETTABLEKS                       R72 R72 K23 ["createElement"]
      730 GETUPVAL                         R73 22
      731 DUPTABLE                         R74 K93 [{"owner"}]
      732 SETTABLEKS                       R5 R74 K92 ["owner"]
      734 GETTABLEKS                       R75 R2 K94 ["children"]
      736 CALL                             R72 3 -1
      737 CALL                             R69 -1 1
      738 SETTABLEKS                       R69 R68 K77 ["Content"]
      740 CALL                             R65 3 1
      741 SETTABLEKS                       R65 R64 K0 ["Sheet"]
      743 CALL                             R61 3 1
      744 SETTABLEKS                       R61 R60 K54 ["SheetContainer"]
      746 GETUPVAL                         R61 9
      747 GETTABLEKS                       R61 R61 K23 ["createElement"]
      749 GETUPVAL                         R62 23
      750 DUPTABLE                         R63 K99 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      751 GETUPVAL                         R64 24
      752 SETTABLEKS                       R64 R63 K95 ["Image"]
      754 GETIMPORT                        R64 K43 [UDim2.new]
      756 LOADN                            R65 1
      757 GETUPVAL                         R67 25
      758 MULK                             R66 R67 K96 [2]
      759 LOADN                            R67 0
      760 ADDK                             R69 R13 K61 [200]
      761 GETUPVAL                         R71 25
      762 MULK                             R70 R71 K96 [2]
      763 ADD                              R68 R69 R70
      764 CALL                             R64 4 1
      765 SETTABLEKS                       R64 R63 K40 ["Size"]
      767 GETUPVAL                         R65 6
      768 GETTABLEKS                       R65 R65 K41 ["FoundationSheetPreventCloseOnResize"]
      770 JUMPIFNOT                        R65 ; [+11]
      771 GETIMPORT                        R64 K43 [UDim2.new]
      773 GETUPVAL                         R66 25
      774 MINUS                            R65 R66
      775 LOADN                            R66 0
      776 LOADN                            R67 1
      777 MINUS                            R69 R13
      778 GETUPVAL                         R70 25
      779 SUB                              R68 R69 R70
      780 CALL                             R64 4 1
      781 JUMP                             ; [+8]
      782 GETIMPORT                        R64 K63 [UDim2.fromOffset]
      784 GETUPVAL                         R66 25
      785 MINUS                            R65 R66
      786 ADD                              R67 R7 R14
      787 GETUPVAL                         R68 25
      788 SUB                              R66 R67 R68
      789 CALL                             R64 2 1
      790 SETTABLEKS                       R64 R63 K58 ["Position"]
      792 DUPTABLE                         R64 K102 [{["center"], ["scale"] = 2}]
      793 GETIMPORT                        R65 K104 [Rect.new]
      795 GETUPVAL                         R66 25
      796 GETUPVAL                         R67 25
      797 GETUPVAL                         R69 25
      798 ADDK                             R68 R69 K105 [1]
      799 GETUPVAL                         R70 25
      800 ADDK                             R69 R70 K105 [1]
      801 CALL                             R65 4 1
      802 SETTABLEKS                       R65 R64 K100 ["center"]
      804 SETTABLEKS                       R64 R63 K97 ["slice"]
      806 GETTABLEKS                       R64 R4 K82 ["Color"]
      808 GETTABLEKS                       R64 R64 K106 ["Extended"]
      810 GETTABLEKS                       R64 R64 K107 ["Black"]
      812 GETTABLEKS                       R64 R64 K108 ["Black_10"]
      814 SETTABLEKS                       R64 R63 K98 ["imageStyle"]
      816 CALL                             R61 2 1
      817 SETTABLEKS                       R61 R60 K55 ["Shadow"]
      819 GETUPVAL                         R61 9
      820 GETTABLEKS                       R61 R61 K23 ["createElement"]
      822 GETUPVAL                         R62 17
      823 DUPTABLE                         R63 K109 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      824 GETIMPORT                        R64 K39 [UDim2.fromScale]
      826 LOADN                            R65 1
      827 LOADN                            R66 2
      828 CALL                             R64 2 1
      829 SETTABLEKS                       R64 R63 K40 ["Size"]
      831 GETIMPORT                        R64 K39 [UDim2.fromScale]
      833 LOADN                            R65 0
      834 LOADK                            R66 K110 [-0.5]
      835 CALL                             R64 2 1
      836 SETTABLEKS                       R64 R63 K58 ["Position"]
      838 DUPTABLE                         R64 K73 [{"affordance"}]
      839 GETUPVAL                         R65 19
      840 GETTABLEKS                       R65 R65 K74 ["None"]
      842 SETTABLEKS                       R65 R64 K72 ["affordance"]
      844 SETTABLEKS                       R64 R63 K67 ["stateLayer"]
      846 NEWCLOSURE                       R66 P18
      847 CAPTURE                          VAL R4
      848 NAMECALL                         R64 R17 K111 ["map"]
      850 CALL                             R64 2 1
      851 SETTABLEKS                       R64 R63 K79 ["backgroundStyle"]
      853 GETUPVAL                         R65 6
      854 GETTABLEKS                       R65 R65 K4 ["FoundationSheetReducedMotion"]
      856 JUMPIFNOT                        R65 ; [+3]
      857 NEWCLOSURE                       R64 P19
      858 CAPTURE                          VAL R43
      859 JUMP                             ; [+1]
      860 MOVE                             R64 R43
      861 SETTABLEKS                       R64 R63 K68 ["onActivated"]
      863 LOADK                            R65 K112 ["%*--backdrop"]
      864 GETTABLEKS                       R67 R2 K21 ["testId"]
      866 NAMECALL                         R65 R65 K35 ["format"]
      868 CALL                             R65 2 1
      869 MOVE                             R64 R65
      870 SETTABLEKS                       R64 R63 K21 ["testId"]
      872 CALL                             R61 2 1
      873 SETTABLEKS                       R61 R60 K56 ["Backdrop"]
      875 CALL                             R57 3 -1
      876 CALL                             R54 -1 1
      877 MOVE                             R55 R3
      878 CALL                             R53 2 1
      879 CLOSEUPVALS                      R6
      880 RETURN                           R53 1

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
       43 GETTABLEKS                       R10 R0 K14 ["Enums"]
       45 GETTABLEKS                       R10 R10 K15 ["StateLayerAffordance"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K16 ["Providers"]
       52 GETTABLEKS                       R11 R11 K17 ["Elevation"]
       54 GETTABLEKS                       R11 R11 K18 ["useElevation"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K16 ["Providers"]
       61 GETTABLEKS                       R12 R12 K19 ["Overlay"]
       63 GETTABLEKS                       R12 R12 K20 ["useOverlay"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K16 ["Providers"]
       70 GETTABLEKS                       R13 R13 K21 ["Style"]
       72 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K23 ["Utility"]
       79 GETTABLEKS                       R14 R14 K24 ["withDefaults"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K16 ["Providers"]
       86 GETTABLEKS                       R15 R15 K17 ["Elevation"]
       88 GETTABLEKS                       R15 R15 K25 ["ElevationProvider"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R14 R14 K26 ["ElevationOwnerScope"]
       93 GETIMPORT                        R15 K6 [require]
       95 GETTABLEKS                       R16 R0 K14 ["Enums"]
       97 GETTABLEKS                       R16 R16 K27 ["ElevationLayer"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R17 R0 K28 ["Constants"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETIMPORT                        R18 K1 [script]
      109 GETTABLEKS                       R18 R18 K4 ["Parent"]
      111 GETTABLEKS                       R18 R18 K29 ["SheetContext"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETIMPORT                        R19 K1 [script]
      118 GETTABLEKS                       R19 R19 K4 ["Parent"]
      120 GETTABLEKS                       R19 R19 K30 ["Types"]
      122 CALL                             R18 1 1
      123 GETIMPORT                        R19 K6 [require]
      125 GETIMPORT                        R20 K1 [script]
      127 GETTABLEKS                       R20 R20 K4 ["Parent"]
      129 GETTABLEKS                       R20 R20 K31 ["SheetType"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K6 [require]
      134 GETIMPORT                        R21 K1 [script]
      136 GETTABLEKS                       R21 R21 K4 ["Parent"]
      138 GETTABLEKS                       R21 R21 K32 ["useHardwareInsets"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K4 ["Parent"]
      147 GETTABLEKS                       R22 R22 K33 ["useScreenHeight"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R23 R0 K23 ["Utility"]
      154 GETTABLEKS                       R23 R23 K34 ["Flags"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R24 R0 K35 ["Components"]
      161 GETTABLEKS                       R24 R24 K36 ["Image"]
      163 CALL                             R23 1 1
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R25 R0 K35 ["Components"]
      168 GETTABLEKS                       R25 R25 K37 ["View"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K6 [require]
      173 GETTABLEKS                       R26 R0 K16 ["Providers"]
      175 GETTABLEKS                       R26 R26 K38 ["Preferences"]
      177 GETTABLEKS                       R26 R26 K39 ["usePreferences"]
      179 CALL                             R25 1 1
      180 GETTABLEKS                       R27 R22 K40 ["FoundationBottomSheetImproveSpring"]
      182 JUMPIFNOT                        R27 ; [+2]
      183 LOADN                            R26 1
      184 JUMP                             ; [+1]
      185 LOADK                            R26 K41 [0.9]
      186 DUPTABLE                         R27 K46 [{["defaultSnapPointIndex"] = 1, ["testId"] = "--foundation-sheet"}]
      187 GETTABLEKS                       R28 R16 K47 ["SHADOW_IMAGE"]
      189 GETTABLEKS                       R29 R16 K48 ["SHADOW_SIZE"]
      191 DUPCLOSURE                       R30 K49 [PROTO_29]
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R25
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R26
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R19
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R23
      216 CAPTURE                          VAL R28
      217 CAPTURE                          VAL R29
      218 GETTABLEKS                       R31 R4 K50 ["memo"]
      220 GETTABLEKS                       R32 R4 K51 ["forwardRef"]
      222 MOVE                             R33 R30
      223 CALL                             R32 1 -1
      224 CALL                             R31 -1 -1
      225 RETURN                           R31 -1
