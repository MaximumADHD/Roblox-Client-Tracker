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
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R6 R6 K0 ["current"]
       49 JUMPIF                           R6 ; [+15]
       50 GETUPVAL                         R6 5
       51 MINUS                            R7 R0
       52 SETTABLEKS                       R7 R6 K0 ["current"]
       54 GETTABLEKS                       R6 R5 K2 ["index"]
       56 JUMPIFNOTEQKN                    R6 K10 [0] ; [+4]
       58 GETUPVAL                         R6 6
       59 CALL                             R6 0 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R7 R5 K2 ["index"]
       64 CALL                             R6 1 0
       65 RETURN                           R0 0

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
        0 DUPTABLE                         R0 K17 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "innerSurface", "testId"}]
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
       45 GETUPVAL                         R1 14
       46 GETTABLEKS                       R1 R1 K18 ["Bottom"]
       48 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       50 GETUPVAL                         R1 15
       51 SETTABLEKS                       R1 R0 K15 ["innerSurface"]
       53 GETUPVAL                         R1 16
       54 GETTABLEKS                       R1 R1 K16 ["testId"]
       56 SETTABLEKS                       R1 R0 K16 ["testId"]
       58 RETURN                           R0 1

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
       12 DUPTABLE                         R7 K2 [{"stackAboveOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["stackAboveOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 CALL                             R6 0 1
       19 GETUPVAL                         R7 7
       20 GETTABLEKS                       R7 R7 K3 ["useState"]
       22 LOADN                            R8 0
       23 CALL                             R7 1 2
       24 GETUPVAL                         R9 7
       25 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          VAL R7
       29 NEWTABLE                         R11 0 1
       31 MOVE                             R12 R7
       32 SETLIST                          R11 R12 1 [1]
       34 CALL                             R9 2 1
       35 GETTABLEKS                       R11 R2 K5 ["snapPoints"]
       37 OR                               R10 R11 R9
       38 GETUPVAL                         R11 7
       39 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       41 NEWCLOSURE                       R12 P1
       42 CAPTURE                          VAL R6
       43 NEWTABLE                         R13 0 1
       45 MOVE                             R14 R6
       46 SETLIST                          R13 R14 1 [1]
       48 CALL                             R11 2 1
       49 LOADN                            R12 0
       50 MOVE                             R13 R10
       51 LOADNIL                          R14
       52 LOADNIL                          R15
       53 FORGPREP                         R13
       54 MOVE                             R18 R11
       55 MOVE                             R19 R17
       56 CALL                             R18 1 1
       57 JUMPIFNOTLT                      R12 R18 ; [+2]
       59 MOVE                             R12 R18
       60 FORGLOOP                         R13 2 ; [-7]
       62 FASTCALL2                        MATH_MIN R12 R6 ; [+5]
       64 MOVE                             R14 R12
       65 MOVE                             R15 R6
       66 GETIMPORT                        R13 K9 [math.min]
       68 CALL                             R13 2 1
       69 MOVE                             R12 R13
       70 GETUPVAL                         R13 8
       71 MOVE                             R14 R3
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R13 R13 K10 ["bottom"]
       75 GETUPVAL                         R14 7
       76 GETTABLEKS                       R14 R14 K11 ["useRef"]
       78 LOADN                            R15 0
       79 CALL                             R14 1 1
       80 GETUPVAL                         R15 7
       81 GETTABLEKS                       R15 R15 K11 ["useRef"]
       83 LOADB                            R16 0
       84 CALL                             R15 1 1
       85 GETUPVAL                         R16 9
       86 LOADN                            R17 1
       87 NEWCLOSURE                       R18 P2
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R2
       90 CALL                             R16 2 2
       91 GETUPVAL                         R18 7
       92 GETTABLEKS                       R18 R18 K12 ["useBinding"]
       94 MINUS                            R19 R13
       95 CALL                             R18 1 2
       96 GETUPVAL                         R20 7
       97 GETTABLEKS                       R20 R20 K12 ["useBinding"]
       99 LOADN                            R21 0
      100 CALL                             R20 1 2
      101 GETUPVAL                         R22 7
      102 GETTABLEKS                       R22 R22 K12 ["useBinding"]
      104 LOADB                            R23 0
      105 CALL                             R22 1 2
      106 GETUPVAL                         R24 7
      107 GETTABLEKS                       R24 R24 K12 ["useBinding"]
      109 LOADB                            R25 0
      110 CALL                             R24 1 2
      111 GETUPVAL                         R26 7
      112 GETTABLEKS                       R26 R26 K11 ["useRef"]
      114 LOADN                            R27 0
      115 CALL                             R26 1 1
      116 GETUPVAL                         R27 7
      117 GETTABLEKS                       R27 R27 K11 ["useRef"]
      119 LOADNIL                          R28
      120 CALL                             R27 1 1
      121 GETUPVAL                         R28 7
      122 GETTABLEKS                       R28 R28 K12 ["useBinding"]
      124 LOADN                            R29 0
      125 CALL                             R28 1 2
      126 GETUPVAL                         R30 7
      127 GETTABLEKS                       R30 R30 K12 ["useBinding"]
      129 LOADB                            R31 0
      130 CALL                             R30 1 2
      131 GETUPVAL                         R32 7
      132 GETTABLEKS                       R32 R32 K11 ["useRef"]
      134 LOADB                            R33 0
      135 CALL                             R32 1 1
      136 GETUPVAL                         R33 7
      137 GETTABLEKS                       R33 R33 K11 ["useRef"]
      139 LOADN                            R34 0
      140 CALL                             R33 1 1
      141 GETUPVAL                         R34 7
      142 GETTABLEKS                       R34 R34 K11 ["useRef"]
      144 LOADNIL                          R35
      145 CALL                             R34 1 1
      146 GETUPVAL                         R35 7
      147 GETTABLEKS                       R35 R35 K11 ["useRef"]
      149 LOADB                            R36 0
      150 CALL                             R35 1 1
      151 GETUPVAL                         R36 7
      152 GETTABLEKS                       R36 R36 K11 ["useRef"]
      154 LOADN                            R37 0
      155 CALL                             R36 1 1
      156 GETUPVAL                         R37 7
      157 GETTABLEKS                       R37 R37 K6 ["useCallback"]
      159 NEWCLOSURE                       R38 P3
      160 CAPTURE                          VAL R34
      161 CAPTURE                          VAL R33
      162 CAPTURE                          VAL R35
      163 NEWTABLE                         R39 0 0
      165 CALL                             R37 2 1
      166 GETUPVAL                         R38 7
      167 GETTABLEKS                       R38 R38 K6 ["useCallback"]
      169 NEWCLOSURE                       R39 P4
      170 CAPTURE                          VAL R37
      171 CAPTURE                          VAL R35
      172 CAPTURE                          UPVAL U10
      173 CAPTURE                          VAL R27
      174 CAPTURE                          VAL R34
      175 CAPTURE                          VAL R36
      176 CAPTURE                          UPVAL U11
      177 NEWTABLE                         R40 0 1
      179 MOVE                             R41 R37
      180 SETLIST                          R40 R41 1 [1]
      182 CALL                             R38 2 1
      183 GETUPVAL                         R39 7
      184 GETTABLEKS                       R39 R39 K6 ["useCallback"]
      186 NEWCLOSURE                       R40 P5
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R13
      189 NEWTABLE                         R41 0 2
      191 MOVE                             R42 R13
      192 MOVE                             R43 R11
      193 SETLIST                          R41 R42 2 [1]
      195 CALL                             R39 2 1
      196 GETUPVAL                         R40 7
      197 GETTABLEKS                       R40 R40 K6 ["useCallback"]
      199 NEWCLOSURE                       R41 P6
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R38
      202 CAPTURE                          VAL R39
      203 CAPTURE                          VAL R10
      204 NEWTABLE                         R42 0 2
      206 MOVE                             R43 R39
      207 MOVE                             R44 R10
      208 SETLIST                          R42 R43 2 [1]
      210 CALL                             R40 2 1
      211 GETUPVAL                         R41 7
      212 GETTABLEKS                       R41 R41 K6 ["useCallback"]
      214 NEWCLOSURE                       R42 P7
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R36
      217 CAPTURE                          VAL R33
      218 CAPTURE                          VAL R38
      219 CAPTURE                          VAL R17
      220 CAPTURE                          UPVAL U12
      221 CAPTURE                          VAL R4
      222 NEWTABLE                         R43 0 1
      224 MOVE                             R44 R38
      225 SETLIST                          R43 R44 1 [1]
      227 CALL                             R41 2 1
      228 GETUPVAL                         R42 7
      229 GETTABLEKS                       R42 R42 K6 ["useCallback"]
      231 NEWCLOSURE                       R43 P8
      232 CAPTURE                          VAL R28
      233 CAPTURE                          VAL R26
      234 CAPTURE                          UPVAL U10
      235 CAPTURE                          REF R12
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R32
      239 CAPTURE                          VAL R31
      240 NEWTABLE                         R44 0 2
      242 MOVE                             R45 R12
      243 MOVE                             R46 R13
      244 SETLIST                          R44 R45 2 [1]
      246 CALL                             R42 2 1
      247 GETUPVAL                         R43 7
      248 GETTABLEKS                       R43 R43 K6 ["useCallback"]
      250 NEWCLOSURE                       R44 P9
      251 CAPTURE                          VAL R33
      252 CAPTURE                          VAL R26
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R39
      255 CAPTURE                          VAL R32
      256 CAPTURE                          VAL R36
      257 CAPTURE                          VAL R41
      258 CAPTURE                          VAL R40
      259 NEWTABLE                         R45 0 4
      261 MOVE                             R46 R10
      262 MOVE                             R47 R40
      263 MOVE                             R48 R39
      264 MOVE                             R49 R41
      265 SETLIST                          R45 R46 4 [1]
      267 CALL                             R43 2 1
      268 GETUPVAL                         R44 7
      269 GETTABLEKS                       R44 R44 K13 ["useEffect"]
      271 NEWCLOSURE                       R45 P10
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R40
      274 CAPTURE                          VAL R2
      275 CAPTURE                          VAL R11
      276 CAPTURE                          VAL R10
      277 CAPTURE                          REF R12
      278 CAPTURE                          VAL R31
      279 CAPTURE                          VAL R17
      280 CAPTURE                          UPVAL U12
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R37
      283 NEWTABLE                         R46 0 5
      285 MOVE                             R47 R3
      286 MOVE                             R48 R10
      287 GETTABLEKS                       R49 R2 K14 ["defaultSnapPointIndex"]
      289 MOVE                             R50 R40
      290 MOVE                             R51 R11
      291 SETLIST                          R46 R47 5 [1]
      293 CALL                             R44 2 0
      294 GETUPVAL                         R44 7
      295 GETTABLEKS                       R44 R44 K13 ["useEffect"]
      297 NEWCLOSURE                       R45 P11
      298 CAPTURE                          VAL R33
      299 CAPTURE                          VAL R42
      300 CAPTURE                          VAL R32
      301 CAPTURE                          VAL R37
      302 CAPTURE                          UPVAL U10
      303 CAPTURE                          VAL R27
      304 CAPTURE                          VAL R26
      305 CAPTURE                          REF R12
      306 CAPTURE                          VAL R13
      307 CAPTURE                          VAL R15
      308 CAPTURE                          VAL R31
      309 CAPTURE                          VAL R30
      310 CAPTURE                          VAL R43
      311 NEWTABLE                         R46 0 4
      313 MOVE                             R47 R3
      314 MOVE                             R48 R43
      315 MOVE                             R49 R42
      316 MOVE                             R50 R37
      317 SETLIST                          R46 R47 4 [1]
      319 CALL                             R44 2 0
      320 GETUPVAL                         R44 7
      321 GETTABLEKS                       R44 R44 K3 ["useState"]
      323 LOADNIL                          R45
      324 CALL                             R44 1 2
      325 GETUPVAL                         R46 13
      326 GETTABLEKS                       R46 R46 K15 ["useComposedRef"]
      328 MOVE                             R47 R1
      329 MOVE                             R48 R45
      330 CALL                             R46 2 1
      331 GETUPVAL                         R47 7
      332 GETTABLEKS                       R47 R47 K16 ["useImperativeHandle"]
      334 GETTABLEKS                       R48 R2 K17 ["sheetRef"]
      336 NEWCLOSURE                       R49 P12
      337 CAPTURE                          VAL R41
      338 NEWTABLE                         R50 0 0
      340 CALL                             R47 3 0
      341 GETUPVAL                         R47 7
      342 GETTABLEKS                       R47 R47 K4 ["useMemo"]
      344 NEWCLOSURE                       R48 P13
      345 CAPTURE                          VAL R20
      346 CAPTURE                          VAL R21
      347 CAPTURE                          VAL R22
      348 CAPTURE                          VAL R23
      349 CAPTURE                          VAL R18
      350 CAPTURE                          VAL R19
      351 CAPTURE                          VAL R13
      352 CAPTURE                          VAL R30
      353 CAPTURE                          VAL R28
      354 CAPTURE                          VAL R29
      355 CAPTURE                          VAL R42
      356 CAPTURE                          VAL R24
      357 CAPTURE                          VAL R25
      358 CAPTURE                          VAL R41
      359 CAPTURE                          UPVAL U14
      360 CAPTURE                          VAL R44
      361 CAPTURE                          VAL R2
      362 NEWTABLE                         R49 0 5
      364 GETTABLEKS                       R50 R2 K18 ["testId"]
      366 MOVE                             R51 R41
      367 MOVE                             R52 R13
      368 MOVE                             R53 R42
      369 MOVE                             R54 R44
      370 SETLIST                          R49 R50 5 [1]
      372 CALL                             R47 2 1
      373 MOVE                             R48 R3
      374 JUMPIFNOT                        R48 ; [+388]
      375 GETUPVAL                         R48 15
      376 GETTABLEKS                       R48 R48 K19 ["createPortal"]
      378 GETUPVAL                         R49 7
      379 GETTABLEKS                       R49 R49 K20 ["createElement"]
      381 GETUPVAL                         R50 16
      382 DUPTABLE                         R51 K26 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      383 GETTABLEKS                       R52 R5 K27 ["zIndex"]
      385 SETTABLEKS                       R52 R51 K21 ["ZIndex"]
      387 SETTABLEKS                       R46 R51 K22 ["ref"]
      389 GETUPVAL                         R52 17
      390 GETTABLEKS                       R52 R52 K28 ["nonSelectable"]
      392 SETTABLEKS                       R52 R51 K23 ["selection"]
      394 GETUPVAL                         R52 17
      395 GETTABLEKS                       R52 R52 K29 ["isolatedSelectionGroup"]
      397 SETTABLEKS                       R52 R51 K24 ["selectionGroup"]
      399 LOADK                            R52 K30 ["size-full"]
      400 SETTABLEKS                       R52 R51 K25 ["tag"]
      402 LOADK                            R53 K31 ["%*--surface"]
      403 GETTABLEKS                       R55 R2 K18 ["testId"]
      405 NAMECALL                         R53 R53 K32 ["format"]
      407 CALL                             R53 2 1
      408 MOVE                             R52 R53
      409 SETTABLEKS                       R52 R51 K18 ["testId"]
      411 GETUPVAL                         R52 7
      412 GETTABLEKS                       R52 R52 K20 ["createElement"]
      414 LOADK                            R53 K33 ["ScrollingFrame"]
      415 NEWTABLE                         R54 8 0
      417 GETIMPORT                        R55 K36 [UDim2.fromScale]
      419 LOADN                            R56 1
      420 LOADN                            R57 1
      421 CALL                             R55 2 1
      422 SETTABLEKS                       R55 R54 K37 ["Size"]
      424 GETIMPORT                        R55 K39 [UDim2.new]
      426 LOADN                            R56 1
      427 LOADN                            R57 0
      428 LOADN                            R58 0
      429 ADD                              R60 R6 R12
      430 ADD                              R59 R60 R13
      431 CALL                             R55 4 1
      432 SETTABLEKS                       R55 R54 K40 ["CanvasSize"]
      434 LOADB                            R55 0
      435 SETTABLEKS                       R55 R54 K41 ["ClipsDescendants"]
      437 LOADN                            R55 1
      438 SETTABLEKS                       R55 R54 K42 ["BackgroundTransparency"]
      440 GETIMPORT                        R55 K46 [Enum.ScrollingDirection.Y]
      442 SETTABLEKS                       R55 R54 K44 ["ScrollingDirection"]
      444 LOADN                            R55 0
      445 SETTABLEKS                       R55 R54 K47 ["ScrollBarThickness"]
      447 SETTABLEKS                       R27 R54 K22 ["ref"]
      449 GETUPVAL                         R55 7
      450 GETTABLEKS                       R55 R55 K48 ["Change"]
      452 GETTABLEKS                       R55 R55 K49 ["CanvasPosition"]
      454 NEWCLOSURE                       R56 P14
      455 CAPTURE                          VAL R26
      456 CAPTURE                          VAL R19
      457 CAPTURE                          VAL R13
      458 CAPTURE                          VAL R4
      459 CAPTURE                          VAL R42
      460 CAPTURE                          VAL R41
      461 SETTABLE                         R56 R54 R55
      462 DUPTABLE                         R55 K53 [{"SheetContainer", "Shadow", "Backdrop"}]
      463 GETUPVAL                         R56 7
      464 GETTABLEKS                       R56 R56 K20 ["createElement"]
      466 GETUPVAL                         R57 16
      467 DUPTABLE                         R58 K55 [{"Size", "Position", "ZIndex"}]
      468 GETIMPORT                        R59 K39 [UDim2.new]
      470 LOADN                            R60 1
      471 LOADN                            R61 0
      472 LOADN                            R62 0
      473 ADDK                             R63 R6 K56 [200]
      474 CALL                             R59 4 1
      475 SETTABLEKS                       R59 R58 K37 ["Size"]
      477 GETIMPORT                        R59 K58 [UDim2.fromOffset]
      479 LOADN                            R60 0
      480 ADD                              R61 R6 R13
      481 CALL                             R59 2 1
      482 SETTABLEKS                       R59 R58 K54 ["Position"]
      484 LOADN                            R59 3
      485 SETTABLEKS                       R59 R58 K21 ["ZIndex"]
      487 DUPTABLE                         R59 K59 [{"Sheet"}]
      488 GETUPVAL                         R60 7
      489 GETTABLEKS                       R60 R60 K20 ["createElement"]
      491 GETUPVAL                         R61 16
      492 DUPTABLE                         R62 K64 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      493 GETTABLEKS                       R64 R2 K5 ["snapPoints"]
      495 JUMPIFNOTEQKNIL                  R64 ; [+7]
      497 GETIMPORT                        R63 K36 [UDim2.fromScale]
      499 LOADN                            R64 1
      500 LOADN                            R65 0
      501 CALL                             R63 2 1
      502 JUMP                             ; [+7]
      503 GETIMPORT                        R63 K39 [UDim2.new]
      505 LOADN                            R64 1
      506 LOADN                            R65 0
      507 LOADN                            R66 0
      508 ADDK                             R67 R12 K56 [200]
      509 CALL                             R63 4 1
      510 SETTABLEKS                       R63 R62 K37 ["Size"]
      512 GETTABLEKS                       R64 R2 K5 ["snapPoints"]
      514 JUMPIFNOTEQKNIL                  R64 ; [+4]
      516 GETIMPORT                        R63 K65 [Enum.AutomaticSize.Y]
      518 JUMP                             ; [+1]
      519 LOADNIL                          R63
      520 SETTABLEKS                       R63 R62 K60 ["AutomaticSize"]
      522 GETTABLEKS                       R64 R2 K5 ["snapPoints"]
      524 JUMPIFNOTEQKNIL                  R64 ; [+4]
      526 NEWCLOSURE                       R63 P15
      527 CAPTURE                          VAL R8
      528 JUMP                             ; [+1]
      529 LOADNIL                          R63
      530 SETTABLEKS                       R63 R62 K61 ["onAbsoluteSizeChanged"]
      532 DUPTABLE                         R63 K67 [{"affordance"}]
      533 GETUPVAL                         R64 18
      534 GETTABLEKS                       R64 R64 K68 ["None"]
      536 SETTABLEKS                       R64 R63 K66 ["affordance"]
      538 SETTABLEKS                       R63 R62 K62 ["stateLayer"]
      540 GETUPVAL                         R63 19
      541 GETTABLEKS                       R63 R63 K69 ["noop"]
      543 SETTABLEKS                       R63 R62 K63 ["onActivated"]
      545 GETTABLEKS                       R63 R2 K18 ["testId"]
      547 SETTABLEKS                       R63 R62 K18 ["testId"]
      549 LOADK                            R63 K70 ["bg-surface-100 radius-large col items-center clip padding-top-small"]
      550 SETTABLEKS                       R63 R62 K25 ["tag"]
      552 DUPTABLE                         R63 K73 [{"Gripper", "Content"}]
      553 GETUPVAL                         R64 7
      554 GETTABLEKS                       R64 R64 K20 ["createElement"]
      556 GETUPVAL                         R65 16
      557 DUPTABLE                         R66 K75 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      558 LOADN                            R67 3
      559 SETTABLEKS                       R67 R66 K21 ["ZIndex"]
      561 GETTABLEKS                       R67 R4 K76 ["Color"]
      563 GETTABLEKS                       R67 R67 K72 ["Content"]
      565 GETTABLEKS                       R67 R67 K77 ["Muted"]
      567 SETTABLEKS                       R67 R66 K74 ["backgroundStyle"]
      569 LOADK                            R67 K78 ["padding-y-small size-1000-100 radius-small align-y-center"]
      570 SETTABLEKS                       R67 R66 K25 ["tag"]
      572 LOADK                            R68 K79 ["%*--gripper"]
      573 GETTABLEKS                       R70 R2 K18 ["testId"]
      575 NAMECALL                         R68 R68 K32 ["format"]
      577 CALL                             R68 2 1
      578 MOVE                             R67 R68
      579 SETTABLEKS                       R67 R66 K18 ["testId"]
      581 DUPTABLE                         R67 K81 [{"TouchTarget"}]
      582 GETUPVAL                         R68 7
      583 GETTABLEKS                       R68 R68 K20 ["createElement"]
      585 GETUPVAL                         R69 16
      586 DUPTABLE                         R70 K82 [{"tag", "stateLayer", "onActivated"}]
      587 LOADK                            R71 K83 ["size-1000-600"]
      588 SETTABLEKS                       R71 R70 K25 ["tag"]
      590 DUPTABLE                         R71 K67 [{"affordance"}]
      591 GETUPVAL                         R72 18
      592 GETTABLEKS                       R72 R72 K68 ["None"]
      594 SETTABLEKS                       R72 R71 K66 ["affordance"]
      596 SETTABLEKS                       R71 R70 K62 ["stateLayer"]
      598 NEWCLOSURE                       R71 P16
      599 CAPTURE                          VAL R32
      600 CAPTURE                          VAL R10
      601 CAPTURE                          VAL R14
      602 CAPTURE                          VAL R40
      603 CAPTURE                          UPVAL U10
      604 CAPTURE                          VAL R11
      605 CAPTURE                          REF R12
      606 CAPTURE                          VAL R31
      607 CAPTURE                          VAL R41
      608 SETTABLEKS                       R71 R70 K63 ["onActivated"]
      610 CALL                             R68 2 1
      611 SETTABLEKS                       R68 R67 K80 ["TouchTarget"]
      613 CALL                             R64 3 1
      614 SETTABLEKS                       R64 R63 K71 ["Gripper"]
      616 GETUPVAL                         R64 7
      617 GETTABLEKS                       R64 R64 K20 ["createElement"]
      619 GETUPVAL                         R65 20
      620 GETTABLEKS                       R65 R65 K84 ["Provider"]
      622 DUPTABLE                         R66 K86 [{"value"}]
      623 SETTABLEKS                       R47 R66 K85 ["value"]
      625 GETUPVAL                         R67 7
      626 GETTABLEKS                       R67 R67 K20 ["createElement"]
      628 GETUPVAL                         R68 21
      629 DUPTABLE                         R69 K88 [{"owner"}]
      630 SETTABLEKS                       R5 R69 K87 ["owner"]
      632 GETTABLEKS                       R70 R2 K89 ["children"]
      634 CALL                             R67 3 -1
      635 CALL                             R64 -1 1
      636 SETTABLEKS                       R64 R63 K72 ["Content"]
      638 CALL                             R60 3 1
      639 SETTABLEKS                       R60 R59 K0 ["Sheet"]
      641 CALL                             R56 3 1
      642 SETTABLEKS                       R56 R55 K50 ["SheetContainer"]
      644 GETUPVAL                         R56 7
      645 GETTABLEKS                       R56 R56 K20 ["createElement"]
      647 GETUPVAL                         R57 22
      648 DUPTABLE                         R58 K93 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      649 GETUPVAL                         R59 23
      650 SETTABLEKS                       R59 R58 K90 ["Image"]
      652 GETIMPORT                        R59 K39 [UDim2.new]
      654 LOADN                            R60 1
      655 GETUPVAL                         R62 24
      656 MULK                             R61 R62 K94 [2]
      657 LOADN                            R62 0
      658 ADDK                             R64 R12 K56 [200]
      659 GETUPVAL                         R66 24
      660 MULK                             R65 R66 K94 [2]
      661 ADD                              R63 R64 R65
      662 CALL                             R59 4 1
      663 SETTABLEKS                       R59 R58 K37 ["Size"]
      665 GETIMPORT                        R59 K58 [UDim2.fromOffset]
      667 GETUPVAL                         R61 24
      668 MINUS                            R60 R61
      669 ADD                              R62 R6 R13
      670 GETUPVAL                         R63 24
      671 SUB                              R61 R62 R63
      672 CALL                             R59 2 1
      673 SETTABLEKS                       R59 R58 K54 ["Position"]
      675 LOADN                            R59 2
      676 SETTABLEKS                       R59 R58 K21 ["ZIndex"]
      678 DUPTABLE                         R59 K97 [{"center", "scale"}]
      679 GETIMPORT                        R60 K99 [Rect.new]
      681 GETUPVAL                         R61 24
      682 GETUPVAL                         R62 24
      683 GETUPVAL                         R64 24
      684 ADDK                             R63 R64 K100 [1]
      685 GETUPVAL                         R65 24
      686 ADDK                             R64 R65 K100 [1]
      687 CALL                             R60 4 1
      688 SETTABLEKS                       R60 R59 K95 ["center"]
      690 LOADN                            R60 2
      691 SETTABLEKS                       R60 R59 K96 ["scale"]
      693 SETTABLEKS                       R59 R58 K91 ["slice"]
      695 GETTABLEKS                       R59 R4 K76 ["Color"]
      697 GETTABLEKS                       R59 R59 K101 ["Extended"]
      699 GETTABLEKS                       R59 R59 K102 ["Black"]
      701 GETTABLEKS                       R59 R59 K103 ["Black_10"]
      703 SETTABLEKS                       R59 R58 K92 ["imageStyle"]
      705 CALL                             R56 2 1
      706 SETTABLEKS                       R56 R55 K51 ["Shadow"]
      708 GETUPVAL                         R56 7
      709 GETTABLEKS                       R56 R56 K20 ["createElement"]
      711 GETUPVAL                         R57 16
      712 DUPTABLE                         R58 K104 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      713 GETIMPORT                        R59 K36 [UDim2.fromScale]
      715 LOADN                            R60 1
      716 LOADN                            R61 2
      717 CALL                             R59 2 1
      718 SETTABLEKS                       R59 R58 K37 ["Size"]
      720 GETIMPORT                        R59 K36 [UDim2.fromScale]
      722 LOADN                            R60 0
      723 LOADK                            R61 K105 [-0.5]
      724 CALL                             R59 2 1
      725 SETTABLEKS                       R59 R58 K54 ["Position"]
      727 LOADN                            R59 1
      728 SETTABLEKS                       R59 R58 K21 ["ZIndex"]
      730 DUPTABLE                         R59 K67 [{"affordance"}]
      731 GETUPVAL                         R60 18
      732 GETTABLEKS                       R60 R60 K68 ["None"]
      734 SETTABLEKS                       R60 R59 K66 ["affordance"]
      736 SETTABLEKS                       R59 R58 K62 ["stateLayer"]
      738 NEWCLOSURE                       R61 P17
      739 CAPTURE                          VAL R4
      740 NAMECALL                         R59 R16 K106 ["map"]
      742 CALL                             R59 2 1
      743 SETTABLEKS                       R59 R58 K74 ["backgroundStyle"]
      745 SETTABLEKS                       R41 R58 K63 ["onActivated"]
      747 LOADK                            R60 K107 ["%*--backdrop"]
      748 GETTABLEKS                       R62 R2 K18 ["testId"]
      750 NAMECALL                         R60 R60 K32 ["format"]
      752 CALL                             R60 2 1
      753 MOVE                             R59 R60
      754 SETTABLEKS                       R59 R58 K18 ["testId"]
      756 CALL                             R56 2 1
      757 SETTABLEKS                       R56 R55 K52 ["Backdrop"]
      759 CALL                             R52 3 -1
      760 CALL                             R49 -1 1
      761 MOVE                             R50 R3
      762 CALL                             R48 2 1
      763 CLOSEUPVALS                      R12
      764 RETURN                           R48 1

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
      177 DUPTABLE                         R26 K42 [{"defaultSnapPointIndex", "testId"}]
      178 LOADN                            R27 1
      179 SETTABLEKS                       R27 R26 K40 ["defaultSnapPointIndex"]
      181 LOADK                            R27 K43 ["--foundation-sheet"]
      182 SETTABLEKS                       R27 R26 K41 ["testId"]
      184 GETTABLEKS                       R27 R16 K44 ["SHADOW_IMAGE"]
      186 GETTABLEKS                       R28 R16 K45 ["SHADOW_SIZE"]
      188 DUPCLOSURE                       R29 K46 [PROTO_27]
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R26
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R12
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R28
      214 GETTABLEKS                       R30 R4 K47 ["memo"]
      216 GETTABLEKS                       R31 R4 K48 ["forwardRef"]
      218 MOVE                             R32 R29
      219 CALL                             R31 1 -1
      220 CALL                             R30 -1 -1
      221 RETURN                           R30 -1
