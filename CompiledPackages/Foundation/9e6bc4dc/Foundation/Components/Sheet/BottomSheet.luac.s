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
       94 GETUPVAL                         R10 4
       95 GETTABLEKS                       R9 R10 K14 ["FoundationSheetBottomSheetAutoSize"]
       97 JUMPIFNOT                        R9 ; [+8]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R10 R11 K0 ["current"]
      101 GETTABLEKS                       R9 R10 K1 ["CanvasPosition"]
      103 GETTABLEKS                       R8 R9 K2 ["Y"]
      105 JUMP                             ; [+1]
      106 MOVE                             R8 R7
      107 SETUPVAL                         R8 5
      108 LOADB                            R8 0
      109 FASTCALL1                        MATH_ABS R2 ; [+3]
      110 MOVE                             R10 R2
      111 GETIMPORT                        R9 K16 [math.abs]
      113 CALL                             R9 1 1
      114 LOADK                            R10 K17 [0.5]
      115 JUMPIFNOTLT                      R9 R10 ; [+13]
      117 GETUPVAL                         R11 6
      118 GETTABLEKS                       R10 R11 K0 ["current"]
      120 FASTCALL1                        MATH_ABS R10 ; [+2]
      121 GETIMPORT                        R9 K16 [math.abs]
      123 CALL                             R9 1 1
      124 LOADN                            R10 1
      125 JUMPIFLT                         R9 R10 ; [+2]
      127 LOADB                            R8 0 +1
      128 LOADB                            R8 1
      129 JUMPIFNOT                        R8 ; [+12]
      130 GETUPVAL                         R10 0
      131 GETTABLEKS                       R9 R10 K0 ["current"]
      133 GETIMPORT                        R10 K13 [Vector2.new]
      135 LOADN                            R11 0
      136 GETUPVAL                         R12 3
      137 CALL                             R10 2 1
      138 SETTABLEKS                       R10 R9 K1 ["CanvasPosition"]
      140 GETUPVAL                         R9 2
      141 CALL                             R9 0 0
      142 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K0 ["current"]
        9 MINUS                            R1 R2
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 GETUPVAL                         R0 3
       13 LOADN                            R1 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R1 R2 K1 ["ease"]
       19 LOADN                            R2 1
       20 DUPTABLE                         R3 K3 [{"duration"}]
       21 GETUPVAL                         R6 6
       22 GETTABLEKS                       R5 R6 K4 ["Time"]
       24 GETTABLEKS                       R4 R5 K5 ["Time_100"]
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
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["defaultSnapPointIndex"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R3 4
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K0 ["defaultSnapPointIndex"]
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
       24 GETUPVAL                         R3 8
       25 GETTABLEKS                       R2 R3 K1 ["ease"]
       27 LOADN                            R3 0
       28 DUPTABLE                         R4 K3 [{"duration"}]
       29 GETUPVAL                         R7 9
       30 GETTABLEKS                       R6 R7 K4 ["Time"]
       32 GETTABLEKS                       R5 R6 K5 ["Time_100"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 NAMECALL                         R2 R2 K1 ["GetScrollVelocity"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R1 R2 K2 ["Y"]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_17:
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
       45 GETUPVAL                         R2 14
       46 GETTABLEKS                       R1 R2 K18 ["Bottom"]
       48 SETTABLEKS                       R1 R0 K14 ["sheetType"]
       50 GETUPVAL                         R1 15
       51 SETTABLEKS                       R1 R0 K15 ["innerSurface"]
       53 GETUPVAL                         R2 16
       54 GETTABLEKS                       R1 R2 K16 ["testId"]
       56 SETTABLEKS                       R1 R0 K16 ["testId"]
       58 RETURN                           R0 1

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R4 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["FoundationSheetBottomSheetAutoSize"]
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R1 2
        9 LENGTH                           R0 R1
       10 LOADN                            R1 1
       11 JUMPIFNOTLT                      R1 R0 ; [+29]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K0 ["current"]
       16 GETUPVAL                         R4 2
       17 LENGTH                           R3 R4
       18 MOD                              R1 R2 R3
       19 ADDK                             R0 R1 K2 [1]
       20 GETUPVAL                         R1 4
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K3 ["FoundationSheetFixClosingSwipe"]
       26 JUMPIFNOT                        R1 ; [+16]
       27 GETUPVAL                         R2 5
       28 GETUPVAL                         R4 2
       29 GETTABLE                         R3 R4 R0
       30 CALL                             R2 1 1
       31 GETUPVAL                         R3 6
       32 JUMPIFEQ                         R2 R3 ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 JUMPIFNOT                        R1 ; [+6]
       37 GETUPVAL                         R2 7
       38 LOADB                            R3 1
       39 CALL                             R2 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R0 8
       42 CALL                             R0 0 0
       43 RETURN                           R0 0

PROTO_26:
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
        9 GETUPVAL                         R7 5
       10 GETTABLEKS                       R6 R7 K0 ["Sheet"]
       12 DUPTABLE                         R7 K2 [{"stackAboveOwner"}]
       13 LOADB                            R8 0
       14 SETTABLEKS                       R8 R7 K1 ["stackAboveOwner"]
       16 CALL                             R5 2 1
       17 GETUPVAL                         R6 6
       18 CALL                             R6 0 1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 GETUPVAL                         R10 7
       22 GETTABLEKS                       R9 R10 K3 ["FoundationSheetBottomSheetAutoSize"]
       24 JUMPIFNOT                        R9 ; [+7]
       25 GETUPVAL                         R10 8
       26 GETTABLEKS                       R9 R10 K4 ["useState"]
       28 LOADN                            R10 0
       29 CALL                             R9 1 2
       30 MOVE                             R7 R9
       31 MOVE                             R8 R10
       32 GETUPVAL                         R11 7
       33 GETTABLEKS                       R10 R11 K3 ["FoundationSheetBottomSheetAutoSize"]
       35 JUMPIFNOT                        R10 ; [+12]
       36 GETUPVAL                         R10 8
       37 GETTABLEKS                       R9 R10 K5 ["useMemo"]
       39 NEWCLOSURE                       R10 P0
       40 CAPTURE                          REF R7
       41 NEWTABLE                         R11 0 1
       43 MOVE                             R12 R7
       44 SETLIST                          R11 R12 1 [1]
       46 CALL                             R9 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 GETUPVAL                         R11 7
       50 GETTABLEKS                       R10 R11 K3 ["FoundationSheetBottomSheetAutoSize"]
       52 JUMPIF                           R10 ; [+8]
       53 GETTABLEKS                       R10 R2 K6 ["snapPoints"]
       55 JUMPIFNOTEQKNIL                  R10 ; [+5]
       57 GETIMPORT                        R10 K8 [warn]
       59 LOADK                            R11 K9 ["snapPoints is required until FFlagFoundationSheetBottomSheetAutoSize is enabled"]
       60 CALL                             R10 1 0
       61 GETTABLEKS                       R11 R2 K6 ["snapPoints"]
       63 OR                               R10 R11 R9
       64 GETUPVAL                         R12 8
       65 GETTABLEKS                       R11 R12 K10 ["useCallback"]
       67 NEWCLOSURE                       R12 P1
       68 CAPTURE                          VAL R6
       69 NEWTABLE                         R13 0 1
       71 MOVE                             R14 R6
       72 SETLIST                          R13 R14 1 [1]
       74 CALL                             R11 2 1
       75 LOADN                            R12 0
       76 MOVE                             R13 R10
       77 LOADNIL                          R14
       78 LOADNIL                          R15
       79 FORGPREP                         R13
       80 MOVE                             R18 R11
       81 MOVE                             R19 R17
       82 CALL                             R18 1 1
       83 JUMPIFNOTLT                      R12 R18 ; [+2]
       85 MOVE                             R12 R18
       86 FORGLOOP                         R13 2 ; [-7]
       88 FASTCALL2                        MATH_MIN R12 R6 ; [+5]
       90 MOVE                             R14 R12
       91 MOVE                             R15 R6
       92 GETIMPORT                        R13 K13 [math.min]
       94 CALL                             R13 2 1
       95 MOVE                             R12 R13
       96 GETUPVAL                         R14 9
       97 MOVE                             R15 R3
       98 CALL                             R14 1 1
       99 GETTABLEKS                       R13 R14 K14 ["bottom"]
      101 GETUPVAL                         R15 8
      102 GETTABLEKS                       R14 R15 K15 ["useRef"]
      104 LOADN                            R15 0
      105 CALL                             R14 1 1
      106 GETUPVAL                         R16 8
      107 GETTABLEKS                       R15 R16 K15 ["useRef"]
      109 LOADB                            R16 0
      110 CALL                             R15 1 1
      111 GETUPVAL                         R16 10
      112 LOADN                            R17 1
      113 NEWCLOSURE                       R18 P2
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R2
      116 CALL                             R16 2 2
      117 GETUPVAL                         R19 8
      118 GETTABLEKS                       R18 R19 K16 ["useBinding"]
      120 MINUS                            R19 R13
      121 CALL                             R18 1 2
      122 GETUPVAL                         R21 8
      123 GETTABLEKS                       R20 R21 K16 ["useBinding"]
      125 LOADN                            R21 0
      126 CALL                             R20 1 2
      127 GETUPVAL                         R23 8
      128 GETTABLEKS                       R22 R23 K16 ["useBinding"]
      130 LOADB                            R23 0
      131 CALL                             R22 1 2
      132 GETUPVAL                         R25 8
      133 GETTABLEKS                       R24 R25 K16 ["useBinding"]
      135 LOADB                            R25 0
      136 CALL                             R24 1 2
      137 GETUPVAL                         R27 8
      138 GETTABLEKS                       R26 R27 K15 ["useRef"]
      140 LOADN                            R27 0
      141 CALL                             R26 1 1
      142 GETUPVAL                         R28 8
      143 GETTABLEKS                       R27 R28 K15 ["useRef"]
      145 LOADNIL                          R28
      146 CALL                             R27 1 1
      147 GETUPVAL                         R29 8
      148 GETTABLEKS                       R28 R29 K16 ["useBinding"]
      150 LOADN                            R29 0
      151 CALL                             R28 1 2
      152 GETUPVAL                         R31 8
      153 GETTABLEKS                       R30 R31 K16 ["useBinding"]
      155 LOADB                            R31 0
      156 CALL                             R30 1 2
      157 GETUPVAL                         R33 8
      158 GETTABLEKS                       R32 R33 K15 ["useRef"]
      160 LOADB                            R33 0
      161 CALL                             R32 1 1
      162 GETUPVAL                         R34 8
      163 GETTABLEKS                       R33 R34 K15 ["useRef"]
      165 LOADN                            R34 0
      166 CALL                             R33 1 1
      167 GETUPVAL                         R35 8
      168 GETTABLEKS                       R34 R35 K15 ["useRef"]
      170 LOADNIL                          R35
      171 CALL                             R34 1 1
      172 GETUPVAL                         R36 8
      173 GETTABLEKS                       R35 R36 K15 ["useRef"]
      175 LOADB                            R36 0
      176 CALL                             R35 1 1
      177 GETUPVAL                         R37 8
      178 GETTABLEKS                       R36 R37 K15 ["useRef"]
      180 LOADN                            R37 0
      181 CALL                             R36 1 1
      182 GETUPVAL                         R38 8
      183 GETTABLEKS                       R37 R38 K10 ["useCallback"]
      185 NEWCLOSURE                       R38 P3
      186 CAPTURE                          VAL R34
      187 CAPTURE                          VAL R33
      188 CAPTURE                          VAL R35
      189 NEWTABLE                         R39 0 0
      191 CALL                             R37 2 1
      192 GETUPVAL                         R39 8
      193 GETTABLEKS                       R38 R39 K10 ["useCallback"]
      195 NEWCLOSURE                       R39 P4
      196 CAPTURE                          VAL R37
      197 CAPTURE                          VAL R35
      198 CAPTURE                          UPVAL U7
      199 CAPTURE                          VAL R27
      200 CAPTURE                          VAL R34
      201 CAPTURE                          VAL R36
      202 CAPTURE                          UPVAL U11
      203 NEWTABLE                         R40 0 1
      205 MOVE                             R41 R37
      206 SETLIST                          R40 R41 1 [1]
      208 CALL                             R38 2 1
      209 GETUPVAL                         R40 8
      210 GETTABLEKS                       R39 R40 K10 ["useCallback"]
      212 NEWCLOSURE                       R40 P5
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R13
      215 NEWTABLE                         R41 0 2
      217 MOVE                             R42 R13
      218 MOVE                             R43 R11
      219 SETLIST                          R41 R42 2 [1]
      221 CALL                             R39 2 1
      222 GETUPVAL                         R41 8
      223 GETTABLEKS                       R40 R41 K10 ["useCallback"]
      225 NEWCLOSURE                       R41 P6
      226 CAPTURE                          VAL R14
      227 CAPTURE                          VAL R38
      228 CAPTURE                          VAL R39
      229 CAPTURE                          VAL R10
      230 NEWTABLE                         R42 0 2
      232 MOVE                             R43 R39
      233 MOVE                             R44 R10
      234 SETLIST                          R42 R43 2 [1]
      236 CALL                             R40 2 1
      237 GETUPVAL                         R42 8
      238 GETTABLEKS                       R41 R42 K10 ["useCallback"]
      240 NEWCLOSURE                       R42 P7
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R36
      243 CAPTURE                          VAL R33
      244 CAPTURE                          VAL R38
      245 CAPTURE                          VAL R17
      246 CAPTURE                          UPVAL U12
      247 CAPTURE                          VAL R4
      248 NEWTABLE                         R43 0 1
      250 MOVE                             R44 R38
      251 SETLIST                          R43 R44 1 [1]
      253 CALL                             R41 2 1
      254 GETUPVAL                         R43 8
      255 GETTABLEKS                       R42 R43 K10 ["useCallback"]
      257 NEWCLOSURE                       R43 P8
      258 CAPTURE                          VAL R28
      259 CAPTURE                          VAL R26
      260 CAPTURE                          UPVAL U7
      261 CAPTURE                          REF R12
      262 CAPTURE                          VAL R13
      263 CAPTURE                          VAL R33
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R31
      266 NEWTABLE                         R44 0 2
      268 MOVE                             R45 R12
      269 MOVE                             R46 R13
      270 SETLIST                          R44 R45 2 [1]
      272 CALL                             R42 2 1
      273 GETUPVAL                         R44 8
      274 GETTABLEKS                       R43 R44 K10 ["useCallback"]
      276 NEWCLOSURE                       R44 P9
      277 CAPTURE                          VAL R33
      278 CAPTURE                          VAL R26
      279 CAPTURE                          VAL R10
      280 CAPTURE                          VAL R39
      281 CAPTURE                          VAL R32
      282 CAPTURE                          VAL R36
      283 CAPTURE                          VAL R41
      284 CAPTURE                          VAL R40
      285 NEWTABLE                         R45 0 4
      287 MOVE                             R46 R10
      288 MOVE                             R47 R40
      289 MOVE                             R48 R39
      290 MOVE                             R49 R41
      291 SETLIST                          R45 R46 4 [1]
      293 CALL                             R43 2 1
      294 GETUPVAL                         R45 8
      295 GETTABLEKS                       R44 R45 K17 ["useEffect"]
      297 NEWCLOSURE                       R45 P10
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R40
      300 CAPTURE                          VAL R2
      301 CAPTURE                          VAL R11
      302 CAPTURE                          VAL R10
      303 CAPTURE                          REF R12
      304 CAPTURE                          VAL R31
      305 CAPTURE                          VAL R17
      306 CAPTURE                          UPVAL U12
      307 CAPTURE                          VAL R4
      308 CAPTURE                          VAL R37
      309 NEWTABLE                         R46 0 5
      311 MOVE                             R47 R3
      312 MOVE                             R48 R10
      313 GETTABLEKS                       R49 R2 K18 ["defaultSnapPointIndex"]
      315 MOVE                             R50 R40
      316 MOVE                             R51 R11
      317 SETLIST                          R46 R47 5 [1]
      319 CALL                             R44 2 0
      320 GETUPVAL                         R45 8
      321 GETTABLEKS                       R44 R45 K17 ["useEffect"]
      323 NEWCLOSURE                       R45 P11
      324 CAPTURE                          VAL R33
      325 CAPTURE                          VAL R42
      326 CAPTURE                          VAL R32
      327 CAPTURE                          VAL R37
      328 CAPTURE                          UPVAL U7
      329 CAPTURE                          VAL R27
      330 CAPTURE                          VAL R26
      331 CAPTURE                          REF R12
      332 CAPTURE                          VAL R13
      333 CAPTURE                          VAL R15
      334 CAPTURE                          VAL R31
      335 CAPTURE                          VAL R30
      336 CAPTURE                          VAL R43
      337 NEWTABLE                         R46 0 4
      339 MOVE                             R47 R3
      340 MOVE                             R48 R43
      341 MOVE                             R49 R42
      342 MOVE                             R50 R37
      343 SETLIST                          R46 R47 4 [1]
      345 CALL                             R44 2 0
      346 GETUPVAL                         R45 8
      347 GETTABLEKS                       R44 R45 K4 ["useState"]
      349 LOADNIL                          R45
      350 CALL                             R44 1 2
      351 GETUPVAL                         R47 13
      352 GETTABLEKS                       R46 R47 K19 ["useComposedRef"]
      354 MOVE                             R47 R1
      355 MOVE                             R48 R45
      356 CALL                             R46 2 1
      357 GETUPVAL                         R48 8
      358 GETTABLEKS                       R47 R48 K20 ["useImperativeHandle"]
      360 GETTABLEKS                       R48 R2 K21 ["sheetRef"]
      362 NEWCLOSURE                       R49 P12
      363 CAPTURE                          VAL R41
      364 NEWTABLE                         R50 0 0
      366 CALL                             R47 3 0
      367 GETUPVAL                         R48 8
      368 GETTABLEKS                       R47 R48 K5 ["useMemo"]
      370 NEWCLOSURE                       R48 P13
      371 CAPTURE                          VAL R20
      372 CAPTURE                          VAL R21
      373 CAPTURE                          VAL R22
      374 CAPTURE                          VAL R23
      375 CAPTURE                          VAL R18
      376 CAPTURE                          VAL R19
      377 CAPTURE                          VAL R13
      378 CAPTURE                          VAL R30
      379 CAPTURE                          VAL R28
      380 CAPTURE                          VAL R29
      381 CAPTURE                          VAL R42
      382 CAPTURE                          VAL R24
      383 CAPTURE                          VAL R25
      384 CAPTURE                          VAL R41
      385 CAPTURE                          UPVAL U14
      386 CAPTURE                          VAL R44
      387 CAPTURE                          VAL R2
      388 NEWTABLE                         R49 0 5
      390 GETTABLEKS                       R50 R2 K22 ["testId"]
      392 MOVE                             R51 R41
      393 MOVE                             R52 R13
      394 MOVE                             R53 R42
      395 MOVE                             R54 R44
      396 SETLIST                          R49 R50 5 [1]
      398 CALL                             R47 2 1
      399 MOVE                             R48 R3
      400 JUMPIFNOT                        R48 ; [+436]
      401 GETUPVAL                         R49 15
      402 GETTABLEKS                       R48 R49 K23 ["createPortal"]
      404 GETUPVAL                         R50 8
      405 GETTABLEKS                       R49 R50 K24 ["createElement"]
      407 GETUPVAL                         R50 16
      408 DUPTABLE                         R51 K30 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      409 GETTABLEKS                       R52 R5 K31 ["zIndex"]
      411 SETTABLEKS                       R52 R51 K25 ["ZIndex"]
      413 SETTABLEKS                       R46 R51 K26 ["ref"]
      415 GETUPVAL                         R53 17
      416 GETTABLEKS                       R52 R53 K32 ["nonSelectable"]
      418 SETTABLEKS                       R52 R51 K27 ["selection"]
      420 GETUPVAL                         R53 17
      421 GETTABLEKS                       R52 R53 K33 ["isolatedSelectionGroup"]
      423 SETTABLEKS                       R52 R51 K28 ["selectionGroup"]
      425 LOADK                            R52 K34 ["size-full"]
      426 SETTABLEKS                       R52 R51 K29 ["tag"]
      428 LOADK                            R53 K35 ["%*--surface"]
      429 GETTABLEKS                       R55 R2 K22 ["testId"]
      431 NAMECALL                         R53 R53 K36 ["format"]
      433 CALL                             R53 2 1
      434 MOVE                             R52 R53
      435 SETTABLEKS                       R52 R51 K22 ["testId"]
      437 GETUPVAL                         R53 8
      438 GETTABLEKS                       R52 R53 K24 ["createElement"]
      440 LOADK                            R53 K37 ["ScrollingFrame"]
      441 NEWTABLE                         R54 8 0
      443 GETIMPORT                        R55 K40 [UDim2.fromScale]
      445 LOADN                            R56 1
      446 LOADN                            R57 1
      447 CALL                             R55 2 1
      448 SETTABLEKS                       R55 R54 K41 ["Size"]
      450 GETIMPORT                        R55 K43 [UDim2.new]
      452 LOADN                            R56 1
      453 LOADN                            R57 0
      454 LOADN                            R58 0
      455 ADD                              R60 R6 R12
      456 ADD                              R59 R60 R13
      457 CALL                             R55 4 1
      458 SETTABLEKS                       R55 R54 K44 ["CanvasSize"]
      460 LOADB                            R55 0
      461 SETTABLEKS                       R55 R54 K45 ["ClipsDescendants"]
      463 LOADN                            R55 1
      464 SETTABLEKS                       R55 R54 K46 ["BackgroundTransparency"]
      466 GETIMPORT                        R55 K50 [Enum.ScrollingDirection.Y]
      468 SETTABLEKS                       R55 R54 K48 ["ScrollingDirection"]
      470 LOADN                            R55 0
      471 SETTABLEKS                       R55 R54 K51 ["ScrollBarThickness"]
      473 SETTABLEKS                       R27 R54 K26 ["ref"]
      475 GETUPVAL                         R57 8
      476 GETTABLEKS                       R56 R57 K52 ["Change"]
      478 GETTABLEKS                       R55 R56 K53 ["CanvasPosition"]
      480 NEWCLOSURE                       R56 P14
      481 CAPTURE                          VAL R26
      482 CAPTURE                          VAL R19
      483 CAPTURE                          VAL R13
      484 CAPTURE                          VAL R4
      485 CAPTURE                          VAL R42
      486 CAPTURE                          VAL R41
      487 SETTABLE                         R56 R54 R55
      488 DUPTABLE                         R55 K57 [{"SheetContainer", "Shadow", "Backdrop"}]
      489 GETUPVAL                         R57 8
      490 GETTABLEKS                       R56 R57 K24 ["createElement"]
      492 GETUPVAL                         R59 7
      493 GETTABLEKS                       R58 R59 K3 ["FoundationSheetBottomSheetAutoSize"]
      495 JUMPIFNOT                        R58 ; [+2]
      496 GETUPVAL                         R57 16
      497 JUMP                             ; [+3]
      498 GETUPVAL                         R58 8
      499 GETTABLEKS                       R57 R58 K58 ["Fragment"]
      501 GETUPVAL                         R60 7
      502 GETTABLEKS                       R59 R60 K3 ["FoundationSheetBottomSheetAutoSize"]
      504 JUMPIFNOT                        R59 ; [+21]
      505 DUPTABLE                         R58 K60 [{"Size", "Position", "ZIndex"}]
      506 GETIMPORT                        R59 K43 [UDim2.new]
      508 LOADN                            R60 1
      509 LOADN                            R61 0
      510 LOADN                            R62 0
      511 ADDK                             R63 R6 K61 [200]
      512 CALL                             R59 4 1
      513 SETTABLEKS                       R59 R58 K41 ["Size"]
      515 GETIMPORT                        R59 K63 [UDim2.fromOffset]
      517 LOADN                            R60 0
      518 ADD                              R61 R6 R13
      519 CALL                             R59 2 1
      520 SETTABLEKS                       R59 R58 K59 ["Position"]
      522 LOADN                            R59 3
      523 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      525 JUMP                             ; [+1]
      526 LOADNIL                          R58
      527 DUPTABLE                         R59 K64 [{"Sheet"}]
      528 GETUPVAL                         R61 8
      529 GETTABLEKS                       R60 R61 K24 ["createElement"]
      531 GETUPVAL                         R61 16
      532 DUPTABLE                         R62 K69 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "Position", "ZIndex", "stateLayer", "onActivated", "testId", "tag"}]
      533 GETUPVAL                         R65 7
      534 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      536 JUMPIFNOT                        R64 ; [+10]
      537 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      539 JUMPIFNOTEQKNIL                  R64 ; [+7]
      541 GETIMPORT                        R63 K40 [UDim2.fromScale]
      543 LOADN                            R64 1
      544 LOADN                            R65 0
      545 CALL                             R63 2 1
      546 JUMP                             ; [+7]
      547 GETIMPORT                        R63 K43 [UDim2.new]
      549 LOADN                            R64 1
      550 LOADN                            R65 0
      551 LOADN                            R66 0
      552 ADDK                             R67 R12 K61 [200]
      553 CALL                             R63 4 1
      554 SETTABLEKS                       R63 R62 K41 ["Size"]
      556 GETUPVAL                         R65 7
      557 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      559 JUMPIFNOT                        R64 ; [+7]
      560 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      562 JUMPIFNOTEQKNIL                  R64 ; [+4]
      564 GETIMPORT                        R63 K70 [Enum.AutomaticSize.Y]
      566 JUMP                             ; [+1]
      567 LOADNIL                          R63
      568 SETTABLEKS                       R63 R62 K65 ["AutomaticSize"]
      570 GETUPVAL                         R65 7
      571 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      573 JUMPIFNOT                        R64 ; [+7]
      574 GETTABLEKS                       R64 R2 K6 ["snapPoints"]
      576 JUMPIFNOTEQKNIL                  R64 ; [+4]
      578 NEWCLOSURE                       R63 P15
      579 CAPTURE                          REF R8
      580 JUMP                             ; [+1]
      581 LOADNIL                          R63
      582 SETTABLEKS                       R63 R62 K66 ["onAbsoluteSizeChanged"]
      584 GETUPVAL                         R65 7
      585 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      587 JUMPIFNOT                        R64 ; [+2]
      588 LOADNIL                          R63
      589 JUMP                             ; [+5]
      590 GETIMPORT                        R63 K63 [UDim2.fromOffset]
      592 LOADN                            R64 0
      593 ADD                              R65 R6 R13
      594 CALL                             R63 2 1
      595 SETTABLEKS                       R63 R62 K59 ["Position"]
      597 GETUPVAL                         R65 7
      598 GETTABLEKS                       R64 R65 K3 ["FoundationSheetBottomSheetAutoSize"]
      600 JUMPIFNOT                        R64 ; [+2]
      601 LOADNIL                          R63
      602 JUMP                             ; [+1]
      603 LOADN                            R63 3
      604 SETTABLEKS                       R63 R62 K25 ["ZIndex"]
      606 DUPTABLE                         R63 K72 [{"affordance"}]
      607 GETUPVAL                         R65 18
      608 GETTABLEKS                       R64 R65 K73 ["None"]
      610 SETTABLEKS                       R64 R63 K71 ["affordance"]
      612 SETTABLEKS                       R63 R62 K67 ["stateLayer"]
      614 GETUPVAL                         R64 19
      615 GETTABLEKS                       R63 R64 K74 ["noop"]
      617 SETTABLEKS                       R63 R62 K68 ["onActivated"]
      619 GETTABLEKS                       R63 R2 K22 ["testId"]
      621 SETTABLEKS                       R63 R62 K22 ["testId"]
      623 LOADK                            R63 K75 ["bg-surface-100 radius-large col items-center clip padding-top-small"]
      624 SETTABLEKS                       R63 R62 K29 ["tag"]
      626 DUPTABLE                         R63 K78 [{"Gripper", "Content"}]
      627 GETUPVAL                         R65 8
      628 GETTABLEKS                       R64 R65 K24 ["createElement"]
      630 GETUPVAL                         R65 16
      631 DUPTABLE                         R66 K80 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      632 LOADN                            R67 3
      633 SETTABLEKS                       R67 R66 K25 ["ZIndex"]
      635 GETTABLEKS                       R69 R4 K81 ["Color"]
      637 GETTABLEKS                       R68 R69 K77 ["Content"]
      639 GETTABLEKS                       R67 R68 K82 ["Muted"]
      641 SETTABLEKS                       R67 R66 K79 ["backgroundStyle"]
      643 LOADK                            R67 K83 ["padding-y-small size-1000-100 radius-small align-y-center"]
      644 SETTABLEKS                       R67 R66 K29 ["tag"]
      646 LOADK                            R68 K84 ["%*--gripper"]
      647 GETTABLEKS                       R70 R2 K22 ["testId"]
      649 NAMECALL                         R68 R68 K36 ["format"]
      651 CALL                             R68 2 1
      652 MOVE                             R67 R68
      653 SETTABLEKS                       R67 R66 K22 ["testId"]
      655 DUPTABLE                         R67 K86 [{"TouchTarget"}]
      656 GETUPVAL                         R69 8
      657 GETTABLEKS                       R68 R69 K24 ["createElement"]
      659 GETUPVAL                         R69 16
      660 DUPTABLE                         R70 K87 [{"tag", "stateLayer", "onActivated"}]
      661 LOADK                            R71 K88 ["size-1000-600"]
      662 SETTABLEKS                       R71 R70 K29 ["tag"]
      664 DUPTABLE                         R71 K72 [{"affordance"}]
      665 GETUPVAL                         R73 18
      666 GETTABLEKS                       R72 R73 K73 ["None"]
      668 SETTABLEKS                       R72 R71 K71 ["affordance"]
      670 SETTABLEKS                       R71 R70 K67 ["stateLayer"]
      672 NEWCLOSURE                       R71 P16
      673 CAPTURE                          VAL R32
      674 CAPTURE                          UPVAL U7
      675 CAPTURE                          VAL R10
      676 CAPTURE                          VAL R14
      677 CAPTURE                          VAL R40
      678 CAPTURE                          VAL R11
      679 CAPTURE                          REF R12
      680 CAPTURE                          VAL R31
      681 CAPTURE                          VAL R41
      682 SETTABLEKS                       R71 R70 K68 ["onActivated"]
      684 CALL                             R68 2 1
      685 SETTABLEKS                       R68 R67 K85 ["TouchTarget"]
      687 CALL                             R64 3 1
      688 SETTABLEKS                       R64 R63 K76 ["Gripper"]
      690 GETUPVAL                         R65 8
      691 GETTABLEKS                       R64 R65 K24 ["createElement"]
      693 GETUPVAL                         R66 20
      694 GETTABLEKS                       R65 R66 K89 ["Provider"]
      696 DUPTABLE                         R66 K91 [{"value"}]
      697 SETTABLEKS                       R47 R66 K90 ["value"]
      699 GETUPVAL                         R68 8
      700 GETTABLEKS                       R67 R68 K24 ["createElement"]
      702 GETUPVAL                         R68 21
      703 DUPTABLE                         R69 K93 [{"owner"}]
      704 SETTABLEKS                       R5 R69 K92 ["owner"]
      706 GETTABLEKS                       R70 R2 K94 ["children"]
      708 CALL                             R67 3 -1
      709 CALL                             R64 -1 1
      710 SETTABLEKS                       R64 R63 K77 ["Content"]
      712 CALL                             R60 3 1
      713 SETTABLEKS                       R60 R59 K0 ["Sheet"]
      715 CALL                             R56 3 1
      716 SETTABLEKS                       R56 R55 K54 ["SheetContainer"]
      718 GETUPVAL                         R57 8
      719 GETTABLEKS                       R56 R57 K24 ["createElement"]
      721 GETUPVAL                         R57 22
      722 DUPTABLE                         R58 K98 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      723 GETUPVAL                         R59 23
      724 SETTABLEKS                       R59 R58 K95 ["Image"]
      726 GETIMPORT                        R59 K43 [UDim2.new]
      728 LOADN                            R60 1
      729 GETUPVAL                         R62 24
      730 MULK                             R61 R62 K99 [2]
      731 LOADN                            R62 0
      732 ADDK                             R64 R12 K61 [200]
      733 GETUPVAL                         R66 24
      734 MULK                             R65 R66 K99 [2]
      735 ADD                              R63 R64 R65
      736 CALL                             R59 4 1
      737 SETTABLEKS                       R59 R58 K41 ["Size"]
      739 GETIMPORT                        R59 K63 [UDim2.fromOffset]
      741 GETUPVAL                         R61 24
      742 MINUS                            R60 R61
      743 ADD                              R62 R6 R13
      744 GETUPVAL                         R63 24
      745 SUB                              R61 R62 R63
      746 CALL                             R59 2 1
      747 SETTABLEKS                       R59 R58 K59 ["Position"]
      749 LOADN                            R59 2
      750 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      752 DUPTABLE                         R59 K102 [{"center", "scale"}]
      753 GETIMPORT                        R60 K104 [Rect.new]
      755 GETUPVAL                         R61 24
      756 GETUPVAL                         R62 24
      757 GETUPVAL                         R64 24
      758 ADDK                             R63 R64 K105 [1]
      759 GETUPVAL                         R65 24
      760 ADDK                             R64 R65 K105 [1]
      761 CALL                             R60 4 1
      762 SETTABLEKS                       R60 R59 K100 ["center"]
      764 LOADN                            R60 2
      765 SETTABLEKS                       R60 R59 K101 ["scale"]
      767 SETTABLEKS                       R59 R58 K96 ["slice"]
      769 GETTABLEKS                       R62 R4 K81 ["Color"]
      771 GETTABLEKS                       R61 R62 K106 ["Extended"]
      773 GETTABLEKS                       R60 R61 K107 ["Black"]
      775 GETTABLEKS                       R59 R60 K108 ["Black_10"]
      777 SETTABLEKS                       R59 R58 K97 ["imageStyle"]
      779 CALL                             R56 2 1
      780 SETTABLEKS                       R56 R55 K55 ["Shadow"]
      782 GETUPVAL                         R57 8
      783 GETTABLEKS                       R56 R57 K24 ["createElement"]
      785 GETUPVAL                         R57 16
      786 DUPTABLE                         R58 K109 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      787 GETIMPORT                        R59 K40 [UDim2.fromScale]
      789 LOADN                            R60 1
      790 LOADN                            R61 2
      791 CALL                             R59 2 1
      792 SETTABLEKS                       R59 R58 K41 ["Size"]
      794 GETIMPORT                        R59 K40 [UDim2.fromScale]
      796 LOADN                            R60 0
      797 LOADK                            R61 K110 [-0.5]
      798 CALL                             R59 2 1
      799 SETTABLEKS                       R59 R58 K59 ["Position"]
      801 LOADN                            R59 1
      802 SETTABLEKS                       R59 R58 K25 ["ZIndex"]
      804 DUPTABLE                         R59 K72 [{"affordance"}]
      805 GETUPVAL                         R61 18
      806 GETTABLEKS                       R60 R61 K73 ["None"]
      808 SETTABLEKS                       R60 R59 K71 ["affordance"]
      810 SETTABLEKS                       R59 R58 K67 ["stateLayer"]
      812 NEWCLOSURE                       R61 P17
      813 CAPTURE                          VAL R4
      814 NAMECALL                         R59 R16 K111 ["map"]
      816 CALL                             R59 2 1
      817 SETTABLEKS                       R59 R58 K79 ["backgroundStyle"]
      819 SETTABLEKS                       R41 R58 K68 ["onActivated"]
      821 LOADK                            R60 K112 ["%*--backdrop"]
      822 GETTABLEKS                       R62 R2 K22 ["testId"]
      824 NAMECALL                         R60 R60 K36 ["format"]
      826 CALL                             R60 2 1
      827 MOVE                             R59 R60
      828 SETTABLEKS                       R59 R58 K22 ["testId"]
      830 CALL                             R56 2 1
      831 SETTABLEKS                       R56 R55 K56 ["Backdrop"]
      833 CALL                             R52 3 -1
      834 CALL                             R49 -1 1
      835 MOVE                             R50 R3
      836 CALL                             R48 2 1
      837 CLOSEUPVALS                      R7
      838 RETURN                           R48 1

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
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R20
      199 CAPTURE                          VAL R8
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
