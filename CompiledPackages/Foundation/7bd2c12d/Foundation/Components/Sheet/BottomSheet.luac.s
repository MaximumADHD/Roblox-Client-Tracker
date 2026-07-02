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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 MINUS                            R1 R2
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 3
       13 LOADN                            R1 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K1 ["ease"]
       19 LOADN                            R2 1
       20 DUPTABLE                         R3 K3 [{"duration"}]
       21 GETUPVAL                         R4 6
       22 GETTABLEKS                       R4 R4 K4 ["Time"]
       24 GETTABLEKS                       R4 R4 K5 ["Time_100"]
       26 SETTABLEKS                       R4 R3 K2 ["duration"]
       28 CALL                             R1 2 -1
       29 CALL                             R0 -1 0
       30 GETUPVAL                         R0 0
       31 LOADB                            R1 1
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       43 JUMPIF                           R6 ; [+15]
       44 GETUPVAL                         R6 5
       45 MINUS                            R7 R0
       46 SETTABLEKS                       R7 R6 K0 ["current"]
       48 GETTABLEKS                       R6 R5 K2 ["index"]
       50 JUMPIFNOTEQKN                    R6 K3 [0] ; [+4]
       52 GETUPVAL                         R6 6
       53 CALL                             R6 0 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R6 7
       56 GETTABLEKS                       R7 R5 K2 ["index"]
       58 CALL                             R6 1 0
       59 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+36]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["defaultSnapPointIndex"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R3 4
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["defaultSnapPointIndex"]
       12 GETTABLE                         R2 R3 R4
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 5
       15 JUMPIFEQ                         R1 R2 ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 JUMPIFNOT                        R0 ; [+3]
       20 GETUPVAL                         R1 6
       21 LOADB                            R2 1
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 7
       24 GETUPVAL                         R2 8
       25 GETTABLEKS                       R2 R2 K1 ["ease"]
       27 LOADN                            R3 0
       28 DUPTABLE                         R4 K3 [{"duration"}]
       29 GETUPVAL                         R5 9
       30 GETTABLEKS                       R5 R5 K4 ["Time"]
       32 GETTABLEKS                       R5 R5 K5 ["Time_100"]
       34 SETTABLEKS                       R5 R4 K2 ["duration"]
       36 CALL                             R2 2 -1
       37 CALL                             R1 -1 0
       38 NEWCLOSURE                       R0 P0
       39 CAPTURE                          UPVAL U10
       40 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["Y"]
        3 SETTABLEKS                       R5 R4 K1 ["current"]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 NAMECALL                         R1 R1 K1 ["GetScrollVelocity"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R1 R1 K2 ["Y"]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R0 K18 [{[1], ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"], ["setSheetHeightAvailable"], ["safeAreaPadding"], ["bottomPadding"] = 200, ["innerScrollingEnabled"], ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["closeSheet"], ["sheetType"], ["innerSurface"], ["testId"]}]
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
       43 GETTABLEKS                       R1 R1 K19 ["Bottom"]
       45 SETTABLEKS                       R1 R0 K15 ["sheetType"]
       47 GETUPVAL                         R1 15
       48 SETTABLEKS                       R1 R0 K16 ["innerSurface"]
       50 GETUPVAL                         R1 16
       51 GETTABLEKS                       R1 R1 K17 ["testId"]
       53 SETTABLEKS                       R1 R0 K17 ["testId"]
       55 RETURN                           R0 1

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R3 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LENGTH                           R0 R1
        6 LOADN                            R1 1
        7 JUMPIFNOTLT                      R1 R0 ; [+29]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 GETUPVAL                         R4 1
       13 LENGTH                           R3 R4
       14 MOD                              R1 R2 R3
       15 ADDK                             R0 R1 K1 [1]
       16 GETUPVAL                         R1 3
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K2 ["FoundationSheetFixClosingSwipe"]
       22 JUMPIFNOT                        R1 ; [+16]
       23 GETUPVAL                         R2 5
       24 GETUPVAL                         R4 1
       25 GETTABLE                         R3 R4 R0
       26 CALL                             R2 1 1
       27 GETUPVAL                         R3 6
       28 JUMPIFEQ                         R2 R3 ; [+2]
       30 LOADB                            R1 0 +1
       31 LOADB                            R1 1
       32 JUMPIFNOT                        R1 ; [+6]
       33 GETUPVAL                         R2 7
       34 LOADB                            R3 1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 8
       38 CALL                             R0 0 0
       39 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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
       14 GETUPVAL                         R6 6
       15 CALL                             R6 0 1
       16 GETUPVAL                         R7 7
       17 GETTABLEKS                       R7 R7 K4 ["useState"]
       19 LOADN                            R8 0
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 7
       22 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R7
       26 NEWTABLE                         R11 0 1
       28 MOVE                             R12 R7
       29 SETLIST                          R11 R12 1 [1]
       31 CALL                             R9 2 1
       32 GETTABLEKS                       R11 R2 K6 ["snapPoints"]
       34 OR                               R10 R11 R9
       35 GETUPVAL                         R11 7
       36 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       38 NEWCLOSURE                       R12 P1
       39 CAPTURE                          VAL R6
       40 NEWTABLE                         R13 0 1
       42 MOVE                             R14 R6
       43 SETLIST                          R13 R14 1 [1]
       45 CALL                             R11 2 1
       46 LOADN                            R12 0
       47 MOVE                             R13 R10
       48 LOADNIL                          R14
       49 LOADNIL                          R15
       50 FORGPREP                         R13
       51 MOVE                             R18 R11
       52 MOVE                             R19 R17
       53 CALL                             R18 1 1
       54 JUMPIFNOTLT                      R12 R18 ; [+2]
       56 MOVE                             R12 R18
       57 FORGLOOP                         R13 2 ; [-7]
       59 FASTCALL2                        MATH_MIN R12 R6 ; [+5]
       61 MOVE                             R14 R12
       62 MOVE                             R15 R6
       63 GETIMPORT                        R13 K10 [math.min]
       65 CALL                             R13 2 1
       66 MOVE                             R12 R13
       67 GETUPVAL                         R13 8
       68 MOVE                             R14 R3
       69 CALL                             R13 1 1
       70 GETTABLEKS                       R13 R13 K11 ["bottom"]
       72 GETUPVAL                         R14 7
       73 GETTABLEKS                       R14 R14 K12 ["useRef"]
       75 LOADN                            R15 0
       76 CALL                             R14 1 1
       77 GETUPVAL                         R15 7
       78 GETTABLEKS                       R15 R15 K12 ["useRef"]
       80 LOADB                            R16 0
       81 CALL                             R15 1 1
       82 GETUPVAL                         R16 9
       83 LOADN                            R17 1
       84 NEWCLOSURE                       R18 P2
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R2
       87 CALL                             R16 2 2
       88 GETUPVAL                         R18 7
       89 GETTABLEKS                       R18 R18 K13 ["useBinding"]
       91 MINUS                            R19 R13
       92 CALL                             R18 1 2
       93 GETUPVAL                         R20 7
       94 GETTABLEKS                       R20 R20 K13 ["useBinding"]
       96 LOADN                            R21 0
       97 CALL                             R20 1 2
       98 GETUPVAL                         R22 7
       99 GETTABLEKS                       R22 R22 K13 ["useBinding"]
      101 LOADB                            R23 0
      102 CALL                             R22 1 2
      103 GETUPVAL                         R24 7
      104 GETTABLEKS                       R24 R24 K13 ["useBinding"]
      106 LOADB                            R25 0
      107 CALL                             R24 1 2
      108 GETUPVAL                         R26 7
      109 GETTABLEKS                       R26 R26 K12 ["useRef"]
      111 LOADN                            R27 0
      112 CALL                             R26 1 1
      113 GETUPVAL                         R27 7
      114 GETTABLEKS                       R27 R27 K12 ["useRef"]
      116 LOADNIL                          R28
      117 CALL                             R27 1 1
      118 GETUPVAL                         R28 7
      119 GETTABLEKS                       R28 R28 K13 ["useBinding"]
      121 LOADN                            R29 0
      122 CALL                             R28 1 2
      123 GETUPVAL                         R30 7
      124 GETTABLEKS                       R30 R30 K13 ["useBinding"]
      126 LOADB                            R31 0
      127 CALL                             R30 1 2
      128 GETUPVAL                         R32 7
      129 GETTABLEKS                       R32 R32 K12 ["useRef"]
      131 LOADB                            R33 0
      132 CALL                             R32 1 1
      133 GETUPVAL                         R33 7
      134 GETTABLEKS                       R33 R33 K12 ["useRef"]
      136 LOADN                            R34 0
      137 CALL                             R33 1 1
      138 GETUPVAL                         R34 7
      139 GETTABLEKS                       R34 R34 K12 ["useRef"]
      141 LOADNIL                          R35
      142 CALL                             R34 1 1
      143 GETUPVAL                         R35 7
      144 GETTABLEKS                       R35 R35 K12 ["useRef"]
      146 LOADB                            R36 0
      147 CALL                             R35 1 1
      148 GETUPVAL                         R36 7
      149 GETTABLEKS                       R36 R36 K12 ["useRef"]
      151 LOADN                            R37 0
      152 CALL                             R36 1 1
      153 GETUPVAL                         R37 7
      154 GETTABLEKS                       R37 R37 K7 ["useCallback"]
      156 NEWCLOSURE                       R38 P3
      157 CAPTURE                          VAL R34
      158 CAPTURE                          VAL R33
      159 CAPTURE                          VAL R35
      160 NEWTABLE                         R39 0 0
      162 CALL                             R37 2 1
      163 GETUPVAL                         R38 7
      164 GETTABLEKS                       R38 R38 K7 ["useCallback"]
      166 NEWCLOSURE                       R39 P4
      167 CAPTURE                          VAL R37
      168 CAPTURE                          VAL R35
      169 CAPTURE                          UPVAL U10
      170 CAPTURE                          VAL R27
      171 CAPTURE                          VAL R34
      172 CAPTURE                          VAL R36
      173 CAPTURE                          UPVAL U11
      174 NEWTABLE                         R40 0 1
      176 MOVE                             R41 R37
      177 SETLIST                          R40 R41 1 [1]
      179 CALL                             R38 2 1
      180 GETUPVAL                         R39 7
      181 GETTABLEKS                       R39 R39 K7 ["useCallback"]
      183 NEWCLOSURE                       R40 P5
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R13
      186 NEWTABLE                         R41 0 2
      188 MOVE                             R42 R13
      189 MOVE                             R43 R11
      190 SETLIST                          R41 R42 2 [1]
      192 CALL                             R39 2 1
      193 GETUPVAL                         R40 7
      194 GETTABLEKS                       R40 R40 K7 ["useCallback"]
      196 NEWCLOSURE                       R41 P6
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R38
      199 CAPTURE                          VAL R39
      200 CAPTURE                          VAL R10
      201 NEWTABLE                         R42 0 2
      203 MOVE                             R43 R39
      204 MOVE                             R44 R10
      205 SETLIST                          R42 R43 2 [1]
      207 CALL                             R40 2 1
      208 GETUPVAL                         R41 7
      209 GETTABLEKS                       R41 R41 K7 ["useCallback"]
      211 NEWCLOSURE                       R42 P7
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R36
      214 CAPTURE                          VAL R33
      215 CAPTURE                          VAL R38
      216 CAPTURE                          VAL R17
      217 CAPTURE                          UPVAL U12
      218 CAPTURE                          VAL R4
      219 NEWTABLE                         R43 0 1
      221 MOVE                             R44 R38
      222 SETLIST                          R43 R44 1 [1]
      224 CALL                             R41 2 1
      225 GETUPVAL                         R42 7
      226 GETTABLEKS                       R42 R42 K7 ["useCallback"]
      228 NEWCLOSURE                       R43 P8
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R26
      231 CAPTURE                          UPVAL U10
      232 CAPTURE                          REF R12
      233 CAPTURE                          VAL R13
      234 CAPTURE                          VAL R33
      235 CAPTURE                          VAL R32
      236 CAPTURE                          VAL R31
      237 NEWTABLE                         R44 0 2
      239 MOVE                             R45 R12
      240 MOVE                             R46 R13
      241 SETLIST                          R44 R45 2 [1]
      243 CALL                             R42 2 1
      244 GETUPVAL                         R43 7
      245 GETTABLEKS                       R43 R43 K7 ["useCallback"]
      247 NEWCLOSURE                       R44 P9
      248 CAPTURE                          VAL R33
      249 CAPTURE                          VAL R26
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R39
      252 CAPTURE                          VAL R32
      253 CAPTURE                          VAL R36
      254 CAPTURE                          VAL R41
      255 CAPTURE                          VAL R40
      256 NEWTABLE                         R45 0 4
      258 MOVE                             R46 R10
      259 MOVE                             R47 R40
      260 MOVE                             R48 R39
      261 MOVE                             R49 R41
      262 SETLIST                          R45 R46 4 [1]
      264 CALL                             R43 2 1
      265 GETUPVAL                         R44 7
      266 GETTABLEKS                       R44 R44 K14 ["useEffect"]
      268 NEWCLOSURE                       R45 P10
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R40
      271 CAPTURE                          VAL R2
      272 CAPTURE                          VAL R11
      273 CAPTURE                          VAL R10
      274 CAPTURE                          REF R12
      275 CAPTURE                          VAL R31
      276 CAPTURE                          VAL R17
      277 CAPTURE                          UPVAL U12
      278 CAPTURE                          VAL R4
      279 CAPTURE                          VAL R37
      280 NEWTABLE                         R46 0 5
      282 MOVE                             R47 R3
      283 MOVE                             R48 R10
      284 GETTABLEKS                       R49 R2 K15 ["defaultSnapPointIndex"]
      286 MOVE                             R50 R40
      287 MOVE                             R51 R11
      288 SETLIST                          R46 R47 5 [1]
      290 CALL                             R44 2 0
      291 GETUPVAL                         R44 7
      292 GETTABLEKS                       R44 R44 K14 ["useEffect"]
      294 NEWCLOSURE                       R45 P11
      295 CAPTURE                          VAL R33
      296 CAPTURE                          VAL R42
      297 CAPTURE                          VAL R32
      298 CAPTURE                          VAL R37
      299 CAPTURE                          UPVAL U10
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R26
      302 CAPTURE                          REF R12
      303 CAPTURE                          VAL R13
      304 CAPTURE                          VAL R15
      305 CAPTURE                          VAL R31
      306 CAPTURE                          VAL R30
      307 CAPTURE                          VAL R43
      308 NEWTABLE                         R46 0 4
      310 MOVE                             R47 R3
      311 MOVE                             R48 R43
      312 MOVE                             R49 R42
      313 MOVE                             R50 R37
      314 SETLIST                          R46 R47 4 [1]
      316 CALL                             R44 2 0
      317 GETUPVAL                         R44 7
      318 GETTABLEKS                       R44 R44 K4 ["useState"]
      320 LOADNIL                          R45
      321 CALL                             R44 1 2
      322 GETUPVAL                         R46 13
      323 GETTABLEKS                       R46 R46 K16 ["useComposedRef"]
      325 MOVE                             R47 R1
      326 MOVE                             R48 R45
      327 CALL                             R46 2 1
      328 GETUPVAL                         R47 7
      329 GETTABLEKS                       R47 R47 K17 ["useImperativeHandle"]
      331 GETTABLEKS                       R48 R2 K18 ["sheetRef"]
      333 NEWCLOSURE                       R49 P12
      334 CAPTURE                          VAL R41
      335 NEWTABLE                         R50 0 0
      337 CALL                             R47 3 0
      338 GETUPVAL                         R47 7
      339 GETTABLEKS                       R47 R47 K5 ["useMemo"]
      341 NEWCLOSURE                       R48 P13
      342 CAPTURE                          VAL R20
      343 CAPTURE                          VAL R21
      344 CAPTURE                          VAL R22
      345 CAPTURE                          VAL R23
      346 CAPTURE                          VAL R18
      347 CAPTURE                          VAL R19
      348 CAPTURE                          VAL R13
      349 CAPTURE                          VAL R30
      350 CAPTURE                          VAL R28
      351 CAPTURE                          VAL R29
      352 CAPTURE                          VAL R42
      353 CAPTURE                          VAL R24
      354 CAPTURE                          VAL R25
      355 CAPTURE                          VAL R41
      356 CAPTURE                          UPVAL U14
      357 CAPTURE                          VAL R44
      358 CAPTURE                          VAL R2
      359 NEWTABLE                         R49 0 5
      361 GETTABLEKS                       R50 R2 K19 ["testId"]
      363 MOVE                             R51 R41
      364 MOVE                             R52 R13
      365 MOVE                             R53 R42
      366 MOVE                             R54 R44
      367 SETLIST                          R49 R50 5 [1]
      369 CALL                             R47 2 1
      370 MOVE                             R48 R3
      371 JUMPIFNOT                        R48 ; [+361]
      372 GETUPVAL                         R48 15
      373 GETTABLEKS                       R48 R48 K20 ["createPortal"]
      375 GETUPVAL                         R49 7
      376 GETTABLEKS                       R49 R49 K21 ["createElement"]
      378 GETUPVAL                         R50 16
      379 DUPTABLE                         R51 K28 [{["ZIndex"], ["ref"], ["selection"], ["selectionGroup"], ["tag"] = "size-full", ["testId"]}]
      380 GETTABLEKS                       R52 R5 K29 ["zIndex"]
      382 SETTABLEKS                       R52 R51 K22 ["ZIndex"]
      384 SETTABLEKS                       R46 R51 K23 ["ref"]
      386 GETUPVAL                         R52 17
      387 GETTABLEKS                       R52 R52 K30 ["nonSelectable"]
      389 SETTABLEKS                       R52 R51 K24 ["selection"]
      391 GETUPVAL                         R52 17
      392 GETTABLEKS                       R52 R52 K31 ["isolatedSelectionGroup"]
      394 SETTABLEKS                       R52 R51 K25 ["selectionGroup"]
      396 LOADK                            R53 K32 ["%*--surface"]
      397 GETTABLEKS                       R55 R2 K19 ["testId"]
      399 NAMECALL                         R53 R53 K33 ["format"]
      401 CALL                             R53 2 1
      402 MOVE                             R52 R53
      403 SETTABLEKS                       R52 R51 K19 ["testId"]
      405 GETUPVAL                         R52 7
      406 GETTABLEKS                       R52 R52 K21 ["createElement"]
      408 LOADK                            R53 K34 ["ScrollingFrame"]
      409 NEWTABLE                         R54 8 0
      411 GETIMPORT                        R55 K37 [UDim2.fromScale]
      413 LOADN                            R56 1
      414 LOADN                            R57 1
      415 CALL                             R55 2 1
      416 SETTABLEKS                       R55 R54 K38 ["Size"]
      418 GETIMPORT                        R55 K40 [UDim2.new]
      420 LOADN                            R56 1
      421 LOADN                            R57 0
      422 LOADN                            R58 0
      423 ADD                              R60 R6 R12
      424 ADD                              R59 R60 R13
      425 CALL                             R55 4 1
      426 SETTABLEKS                       R55 R54 K41 ["CanvasSize"]
      428 LOADB                            R55 0
      429 SETTABLEKS                       R55 R54 K42 ["ClipsDescendants"]
      431 LOADN                            R55 1
      432 SETTABLEKS                       R55 R54 K43 ["BackgroundTransparency"]
      434 GETIMPORT                        R55 K47 [Enum.ScrollingDirection.Y]
      436 SETTABLEKS                       R55 R54 K45 ["ScrollingDirection"]
      438 LOADN                            R55 0
      439 SETTABLEKS                       R55 R54 K48 ["ScrollBarThickness"]
      441 SETTABLEKS                       R27 R54 K23 ["ref"]
      443 GETUPVAL                         R55 7
      444 GETTABLEKS                       R55 R55 K49 ["Change"]
      446 GETTABLEKS                       R55 R55 K50 ["CanvasPosition"]
      448 NEWCLOSURE                       R56 P14
      449 CAPTURE                          VAL R26
      450 CAPTURE                          VAL R19
      451 CAPTURE                          VAL R13
      452 CAPTURE                          VAL R4
      453 CAPTURE                          VAL R42
      454 CAPTURE                          VAL R41
      455 SETTABLE                         R56 R54 R55
      456 DUPTABLE                         R55 K54 [{"SheetContainer", "Shadow", "Backdrop"}]
      457 GETUPVAL                         R56 7
      458 GETTABLEKS                       R56 R56 K21 ["createElement"]
      460 GETUPVAL                         R57 16
      461 DUPTABLE                         R58 K57 [{["Size"], ["Position"], ["ZIndex"] = 3}]
      462 GETIMPORT                        R59 K40 [UDim2.new]
      464 LOADN                            R60 1
      465 LOADN                            R61 0
      466 LOADN                            R62 0
      467 ADDK                             R63 R6 K58 [200]
      468 CALL                             R59 4 1
      469 SETTABLEKS                       R59 R58 K38 ["Size"]
      471 GETIMPORT                        R59 K60 [UDim2.fromOffset]
      473 LOADN                            R60 0
      474 ADD                              R61 R6 R13
      475 CALL                             R59 2 1
      476 SETTABLEKS                       R59 R58 K55 ["Position"]
      478 DUPTABLE                         R59 K61 [{"Sheet"}]
      479 GETUPVAL                         R60 7
      480 GETTABLEKS                       R60 R60 K21 ["createElement"]
      482 GETUPVAL                         R61 16
      483 DUPTABLE                         R62 K67 [{["Size"], ["AutomaticSize"], ["onAbsoluteSizeChanged"], ["stateLayer"], ["onActivated"], ["testId"], ["tag"] = "bg-surface-100 radius-large col items-center clip padding-top-small"}]
      484 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      486 JUMPIFNOTEQKNIL                  R64 ; [+7]
      488 GETIMPORT                        R63 K37 [UDim2.fromScale]
      490 LOADN                            R64 1
      491 LOADN                            R65 0
      492 CALL                             R63 2 1
      493 JUMP                             ; [+7]
      494 GETIMPORT                        R63 K40 [UDim2.new]
      496 LOADN                            R64 1
      497 LOADN                            R65 0
      498 LOADN                            R66 0
      499 ADDK                             R67 R12 K58 [200]
      500 CALL                             R63 4 1
      501 SETTABLEKS                       R63 R62 K38 ["Size"]
      503 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      505 JUMPIFNOTEQKNIL                  R64 ; [+4]
      507 GETIMPORT                        R63 K68 [Enum.AutomaticSize.Y]
      509 JUMP                             ; [+1]
      510 LOADNIL                          R63
      511 SETTABLEKS                       R63 R62 K62 ["AutomaticSize"]
      513 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      515 JUMPIFNOTEQKNIL                  R64 ; [+4]
      517 NEWCLOSURE                       R63 P15
      518 CAPTURE                          VAL R8
      519 JUMP                             ; [+1]
      520 LOADNIL                          R63
      521 SETTABLEKS                       R63 R62 K63 ["onAbsoluteSizeChanged"]
      523 DUPTABLE                         R63 K70 [{"affordance"}]
      524 GETUPVAL                         R64 18
      525 GETTABLEKS                       R64 R64 K71 ["None"]
      527 SETTABLEKS                       R64 R63 K69 ["affordance"]
      529 SETTABLEKS                       R63 R62 K64 ["stateLayer"]
      531 GETUPVAL                         R63 19
      532 GETTABLEKS                       R63 R63 K72 ["noop"]
      534 SETTABLEKS                       R63 R62 K65 ["onActivated"]
      536 GETTABLEKS                       R63 R2 K19 ["testId"]
      538 SETTABLEKS                       R63 R62 K19 ["testId"]
      540 DUPTABLE                         R63 K75 [{"Gripper", "Content"}]
      541 GETUPVAL                         R64 7
      542 GETTABLEKS                       R64 R64 K21 ["createElement"]
      544 GETUPVAL                         R65 16
      545 DUPTABLE                         R66 K78 [{["ZIndex"] = 3, ["backgroundStyle"], ["tag"] = "padding-y-small size-1000-100 radius-small align-y-center", ["testId"]}]
      546 GETTABLEKS                       R67 R4 K79 ["Color"]
      548 GETTABLEKS                       R67 R67 K74 ["Content"]
      550 GETTABLEKS                       R67 R67 K80 ["Muted"]
      552 SETTABLEKS                       R67 R66 K76 ["backgroundStyle"]
      554 LOADK                            R68 K81 ["%*--gripper"]
      555 GETTABLEKS                       R70 R2 K19 ["testId"]
      557 NAMECALL                         R68 R68 K33 ["format"]
      559 CALL                             R68 2 1
      560 MOVE                             R67 R68
      561 SETTABLEKS                       R67 R66 K19 ["testId"]
      563 DUPTABLE                         R67 K83 [{"TouchTarget"}]
      564 GETUPVAL                         R68 7
      565 GETTABLEKS                       R68 R68 K21 ["createElement"]
      567 GETUPVAL                         R69 16
      568 DUPTABLE                         R70 K85 [{["tag"] = "size-1000-600", ["stateLayer"], ["onActivated"]}]
      569 DUPTABLE                         R71 K70 [{"affordance"}]
      570 GETUPVAL                         R72 18
      571 GETTABLEKS                       R72 R72 K71 ["None"]
      573 SETTABLEKS                       R72 R71 K69 ["affordance"]
      575 SETTABLEKS                       R71 R70 K64 ["stateLayer"]
      577 NEWCLOSURE                       R71 P16
      578 CAPTURE                          VAL R32
      579 CAPTURE                          VAL R10
      580 CAPTURE                          VAL R14
      581 CAPTURE                          VAL R40
      582 CAPTURE                          UPVAL U10
      583 CAPTURE                          VAL R11
      584 CAPTURE                          REF R12
      585 CAPTURE                          VAL R31
      586 CAPTURE                          VAL R41
      587 SETTABLEKS                       R71 R70 K65 ["onActivated"]
      589 CALL                             R68 2 1
      590 SETTABLEKS                       R68 R67 K82 ["TouchTarget"]
      592 CALL                             R64 3 1
      593 SETTABLEKS                       R64 R63 K73 ["Gripper"]
      595 GETUPVAL                         R64 7
      596 GETTABLEKS                       R64 R64 K21 ["createElement"]
      598 GETUPVAL                         R65 20
      599 GETTABLEKS                       R65 R65 K86 ["Provider"]
      601 DUPTABLE                         R66 K88 [{"value"}]
      602 SETTABLEKS                       R47 R66 K87 ["value"]
      604 GETUPVAL                         R67 7
      605 GETTABLEKS                       R67 R67 K21 ["createElement"]
      607 GETUPVAL                         R68 21
      608 DUPTABLE                         R69 K90 [{"owner"}]
      609 SETTABLEKS                       R5 R69 K89 ["owner"]
      611 GETTABLEKS                       R70 R2 K91 ["children"]
      613 CALL                             R67 3 -1
      614 CALL                             R64 -1 1
      615 SETTABLEKS                       R64 R63 K74 ["Content"]
      617 CALL                             R60 3 1
      618 SETTABLEKS                       R60 R59 K0 ["Sheet"]
      620 CALL                             R56 3 1
      621 SETTABLEKS                       R56 R55 K51 ["SheetContainer"]
      623 GETUPVAL                         R56 7
      624 GETTABLEKS                       R56 R56 K21 ["createElement"]
      626 GETUPVAL                         R57 22
      627 DUPTABLE                         R58 K96 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      628 GETUPVAL                         R59 23
      629 SETTABLEKS                       R59 R58 K92 ["Image"]
      631 GETIMPORT                        R59 K40 [UDim2.new]
      633 LOADN                            R60 1
      634 GETUPVAL                         R62 24
      635 MULK                             R61 R62 K93 [2]
      636 LOADN                            R62 0
      637 ADDK                             R64 R12 K58 [200]
      638 GETUPVAL                         R66 24
      639 MULK                             R65 R66 K93 [2]
      640 ADD                              R63 R64 R65
      641 CALL                             R59 4 1
      642 SETTABLEKS                       R59 R58 K38 ["Size"]
      644 GETIMPORT                        R59 K60 [UDim2.fromOffset]
      646 GETUPVAL                         R61 24
      647 MINUS                            R60 R61
      648 ADD                              R62 R6 R13
      649 GETUPVAL                         R63 24
      650 SUB                              R61 R62 R63
      651 CALL                             R59 2 1
      652 SETTABLEKS                       R59 R58 K55 ["Position"]
      654 DUPTABLE                         R59 K99 [{["center"], ["scale"] = 2}]
      655 GETIMPORT                        R60 K101 [Rect.new]
      657 GETUPVAL                         R61 24
      658 GETUPVAL                         R62 24
      659 GETUPVAL                         R64 24
      660 ADDK                             R63 R64 K102 [1]
      661 GETUPVAL                         R65 24
      662 ADDK                             R64 R65 K102 [1]
      663 CALL                             R60 4 1
      664 SETTABLEKS                       R60 R59 K97 ["center"]
      666 SETTABLEKS                       R59 R58 K94 ["slice"]
      668 GETTABLEKS                       R59 R4 K79 ["Color"]
      670 GETTABLEKS                       R59 R59 K103 ["Extended"]
      672 GETTABLEKS                       R59 R59 K104 ["Black"]
      674 GETTABLEKS                       R59 R59 K105 ["Black_10"]
      676 SETTABLEKS                       R59 R58 K95 ["imageStyle"]
      678 CALL                             R56 2 1
      679 SETTABLEKS                       R56 R55 K52 ["Shadow"]
      681 GETUPVAL                         R56 7
      682 GETTABLEKS                       R56 R56 K21 ["createElement"]
      684 GETUPVAL                         R57 16
      685 DUPTABLE                         R58 K106 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      686 GETIMPORT                        R59 K37 [UDim2.fromScale]
      688 LOADN                            R60 1
      689 LOADN                            R61 2
      690 CALL                             R59 2 1
      691 SETTABLEKS                       R59 R58 K38 ["Size"]
      693 GETIMPORT                        R59 K37 [UDim2.fromScale]
      695 LOADN                            R60 0
      696 LOADK                            R61 K107 [-0.5]
      697 CALL                             R59 2 1
      698 SETTABLEKS                       R59 R58 K55 ["Position"]
      700 DUPTABLE                         R59 K70 [{"affordance"}]
      701 GETUPVAL                         R60 18
      702 GETTABLEKS                       R60 R60 K71 ["None"]
      704 SETTABLEKS                       R60 R59 K69 ["affordance"]
      706 SETTABLEKS                       R59 R58 K64 ["stateLayer"]
      708 NEWCLOSURE                       R61 P17
      709 CAPTURE                          VAL R4
      710 NAMECALL                         R59 R16 K108 ["map"]
      712 CALL                             R59 2 1
      713 SETTABLEKS                       R59 R58 K76 ["backgroundStyle"]
      715 SETTABLEKS                       R41 R58 K65 ["onActivated"]
      717 LOADK                            R60 K109 ["%*--backdrop"]
      718 GETTABLEKS                       R62 R2 K19 ["testId"]
      720 NAMECALL                         R60 R60 K33 ["format"]
      722 CALL                             R60 2 1
      723 MOVE                             R59 R60
      724 SETTABLEKS                       R59 R58 K19 ["testId"]
      726 CALL                             R56 2 1
      727 SETTABLEKS                       R56 R55 K53 ["Backdrop"]
      729 CALL                             R52 3 -1
      730 CALL                             R49 -1 1
      731 MOVE                             R50 R3
      732 CALL                             R48 2 1
      733 CLOSEUPVALS                      R12
      734 RETURN                           R48 1

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
      171 GETTABLEKS                       R26 R22 K38 ["FoundationBottomSheetImproveSpring"]
      173 JUMPIFNOT                        R26 ; [+2]
      174 LOADN                            R25 1
      175 JUMP                             ; [+1]
      176 LOADK                            R25 K39 [0.9]
      177 DUPTABLE                         R26 K44 [{["defaultSnapPointIndex"] = 1, ["testId"] = "--foundation-sheet"}]
      178 GETTABLEKS                       R27 R16 K45 ["SHADOW_IMAGE"]
      180 GETTABLEKS                       R28 R16 K46 ["SHADOW_SIZE"]
      182 DUPCLOSURE                       R29 K47 [PROTO_27]
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R26
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R4
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R22
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R19
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R14
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R27
      207 CAPTURE                          VAL R28
      208 GETTABLEKS                       R30 R4 K48 ["memo"]
      210 GETTABLEKS                       R31 R4 K49 ["forwardRef"]
      212 MOVE                             R32 R29
      213 CALL                             R31 1 -1
      214 CALL                             R30 -1 -1
      215 RETURN                           R30 -1
