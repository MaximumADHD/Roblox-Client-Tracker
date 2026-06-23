PROTO_0:
        0 SUB                              R4 R0 R2
        1 LOADK                            R6 K0 [25.1327412287183]
        2 MUL                              R5 R6 R3
        3 MINUS                            R7 R5
        4 FASTCALL1                        MATH_EXP R7 ; [+2]
        5 GETIMPORT                        R6 K3 [math.exp]
        7 CALL                             R6 1 1
        8 LOADK                            R9 K0 [25.1327412287183]
        9 MUL                              R8 R9 R4
       10 ADD                              R7 R1 R8
       11 MUL                              R10 R7 R3
       12 ADD                              R9 R4 R10
       13 MUL                              R8 R9 R6
       14 MUL                              R11 R7 R5
       15 SUB                              R10 R1 R11
       16 MUL                              R9 R10 R6
       17 ADD                              R10 R2 R8
       18 MOVE                             R11 R9
       19 RETURN                           R10 2

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 SETLIST                          R0 R1 1 [1]
        5 RETURN                           R0 1

PROTO_2:
        0 LOADN                            R1 1
        1 JUMPIFNOTLT                      R1 R0 ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 0
        5 MUL                              R1 R0 R2
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["FoundationBottomSheetImproveSpring"]
       22 JUMPIFNOT                        R3 ; [+54]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K0 ["current"]
       26 GETUPVAL                         R6 5
       27 SUB                              R7 R1 R6
       28 LOADK                            R9 K4 [25.1327412287183]
       29 MUL                              R8 R9 R0
       30 MINUS                            R10 R8
       31 FASTCALL1                        MATH_EXP R10 ; [+2]
       32 GETIMPORT                        R9 K7 [math.exp]
       34 CALL                             R9 1 1
       35 LOADK                            R12 K4 [25.1327412287183]
       36 MUL                              R11 R12 R7
       37 ADD                              R10 R5 R11
       38 MUL                              R13 R10 R0
       39 ADD                              R12 R7 R13
       40 MUL                              R11 R12 R9
       41 MUL                              R14 R10 R8
       42 SUB                              R13 R5 R14
       43 MUL                              R12 R13 R9
       44 ADD                              R3 R6 R11
       45 MOVE                             R4 R12
       46 GETUPVAL                         R5 4
       47 SETTABLEKS                       R4 R5 K0 ["current"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K0 ["current"]
       52 GETIMPORT                        R6 K10 [Vector2.new]
       54 LOADN                            R7 0
       55 MOVE                             R8 R3
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K1 ["CanvasPosition"]
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K0 ["current"]
       62 GETTABLEKS                       R5 R5 K1 ["CanvasPosition"]
       64 GETTABLEKS                       R5 R5 K2 ["Y"]
       66 SETUPVAL                         R5 6
       67 GETUPVAL                         R5 5
       68 GETUPVAL                         R6 0
       69 GETTABLEKS                       R6 R6 K0 ["current"]
       71 GETTABLEKS                       R6 R6 K1 ["CanvasPosition"]
       73 GETTABLEKS                       R6 R6 K2 ["Y"]
       75 SUB                              R2 R5 R6
       76 JUMP                             ; [+59]
       77 GETUPVAL                         R3 5
       78 SUB                              R2 R3 R1
       79 MULK                             R4 R2 K11 [18]
       80 MULK                             R3 R4 K11 [18]
       81 GETUPVAL                         R6 6
       82 SUB                              R5 R1 R6
       83 DIV                              R4 R5 R0
       84 GETUPVAL                         R5 4
       85 GETTABLEKS                       R6 R5 K0 ["current"]
       87 SUB                              R6 R6 R4
       88 SETTABLEKS                       R6 R5 K0 ["current"]
       90 GETUPVAL                         R9 4
       91 GETTABLEKS                       R9 R9 K0 ["current"]
       93 MINUS                            R8 R9
       94 MULK                             R7 R8 K13 [2]
       95 MULK                             R6 R7 K12 [0.9]
       96 MULK                             R5 R6 K11 [18]
       97 ADD                              R6 R3 R5
       98 FASTCALL2K                       MATH_MIN R0 K14 ; [+5]
      100 MOVE                             R8 R0
      101 LOADK                            R9 K14 [0.0333333333333333]
      102 GETIMPORT                        R7 K16 [math.min]
      104 CALL                             R7 2 1
      105 GETUPVAL                         R8 4
      106 GETUPVAL                         R10 4
      107 GETTABLEKS                       R10 R10 K0 ["current"]
      109 MUL                              R11 R6 R7
      110 ADD                              R9 R10 R11
      111 SETTABLEKS                       R9 R8 K0 ["current"]
      113 GETUPVAL                         R10 4
      114 GETTABLEKS                       R10 R10 K0 ["current"]
      116 MUL                              R9 R10 R7
      117 ADD                              R8 R1 R9
      118 GETUPVAL                         R9 0
      119 GETTABLEKS                       R9 R9 K0 ["current"]
      121 GETIMPORT                        R10 K10 [Vector2.new]
      123 LOADN                            R11 0
      124 MOVE                             R12 R8
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K1 ["CanvasPosition"]
      128 GETUPVAL                         R9 0
      129 GETTABLEKS                       R9 R9 K0 ["current"]
      131 GETTABLEKS                       R9 R9 K1 ["CanvasPosition"]
      133 GETTABLEKS                       R9 R9 K2 ["Y"]
      135 SETUPVAL                         R9 6
      136 LOADB                            R3 0
      137 FASTCALL1                        MATH_ABS R2 ; [+3]
      138 MOVE                             R5 R2
      139 GETIMPORT                        R4 K18 [math.abs]
      141 CALL                             R4 1 1
      142 LOADK                            R5 K19 [0.5]
      143 JUMPIFNOTLT                      R4 R5 ; [+13]
      145 GETUPVAL                         R5 4
      146 GETTABLEKS                       R5 R5 K0 ["current"]
      148 FASTCALL1                        MATH_ABS R5 ; [+2]
      149 GETIMPORT                        R4 K18 [math.abs]
      151 CALL                             R4 1 1
      152 LOADN                            R5 1
      153 JUMPIFLT                         R4 R5 ; [+2]
      155 LOADB                            R3 0 +1
      156 LOADB                            R3 1
      157 JUMPIFNOT                        R3 ; [+12]
      158 GETUPVAL                         R4 0
      159 GETTABLEKS                       R4 R4 K0 ["current"]
      161 GETIMPORT                        R5 K10 [Vector2.new]
      163 LOADN                            R6 0
      164 GETUPVAL                         R7 5
      165 CALL                             R5 2 1
      166 SETTABLEKS                       R5 R4 K1 ["CanvasPosition"]
      168 GETUPVAL                         R4 2
      169 CALL                             R4 0 0
      170 RETURN                           R0 0

PROTO_6:
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
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          REF R1
       50 NAMECALL                         R3 R3 K10 ["Connect"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R2 K0 ["current"]
       55 CLOSEUPVALS                      R1
       56 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationBottomSheetCapToOverlayHeight"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       10 GETIMPORT                        R2 K3 [math.min]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 3
       14 ADD                              R1 R2 R3
       15 RETURN                           R1 1
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 3
       20 ADD                              R1 R2 R3
       21 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R4 3
        6 GETTABLE                         R3 R4 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+29]
        7 JUMPIF                           R0 ; [+28]
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 GETUPVAL                         R1 2
       13 CALL                             R1 0 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 JUMPIFNOT                        R1 ; [+10]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K0 ["current"]
       21 GETIMPORT                        R2 K3 [Vector2.new]
       23 LOADN                            R3 0
       24 LOADN                            R4 0
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       28 GETUPVAL                         R1 4
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K5 ["instant"]
       32 LOADN                            R3 1
       33 CALL                             R2 1 1
       34 CALL                             R1 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 6
       37 GETUPVAL                         R3 7
       38 GETTABLEKS                       R3 R3 K0 ["current"]
       40 MINUS                            R2 R3
       41 SETTABLEKS                       R2 R1 K0 ["current"]
       43 GETUPVAL                         R1 8
       44 LOADN                            R2 0
       45 CALL                             R1 1 0
       46 GETUPVAL                         R1 4
       47 GETUPVAL                         R2 5
       48 GETTABLEKS                       R2 R2 K6 ["ease"]
       50 LOADN                            R3 1
       51 DUPTABLE                         R4 K8 [{"duration"}]
       52 GETUPVAL                         R5 9
       53 GETTABLEKS                       R5 R5 K9 ["Time"]
       55 GETTABLEKS                       R5 R5 K10 ["Time_100"]
       57 SETTABLEKS                       R5 R4 K7 ["duration"]
       59 CALL                             R2 2 -1
       60 CALL                             R1 -1 0
       61 GETUPVAL                         R1 0
       62 LOADB                            R2 1
       63 SETTABLEKS                       R2 R1 K0 ["current"]
       65 RETURN                           R0 0

PROTO_11:
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
       35 NOT                              R2 R1
       36 JUMPIFNOT                        R2 ; [+8]
       37 GETUPVAL                         R3 5
       38 GETTABLEKS                       R3 R3 K1 ["current"]
       40 LOADN                            R4 0
       41 JUMPIFLT                         R3 R4 ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K8 ["FoundationBottomSheetInnerScrollingSync"]
       48 JUMPIFNOT                        R3 ; [+1]
       49 JUMPIF                           R2 ; [+11]
       50 GETUPVAL                         R3 5
       51 GETTABLEKS                       R3 R3 K1 ["current"]
       53 LOADN                            R4 0
       54 JUMPIFNOTLT                      R4 R3 ; [+10]
       56 JUMPIFNOT                        R0 ; [+8]
       57 GETUPVAL                         R3 6
       58 GETTABLEKS                       R3 R3 K1 ["current"]
       60 JUMPIFNOT                        R3 ; [+4]
       61 GETUPVAL                         R3 7
       62 LOADB                            R4 0
       63 CALL                             R3 1 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R3 5
       66 GETTABLEKS                       R3 R3 K1 ["current"]
       68 LOADN                            R4 0
       69 JUMPIFLT                         R3 R4 ; [+10]
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R3 R3 K2 ["FoundationBottomSheetImproveSpring"]
       74 JUMPIFNOT                        R3 ; [+9]
       75 GETUPVAL                         R3 5
       76 GETTABLEKS                       R3 R3 K1 ["current"]
       78 JUMPIFNOTEQKN                    R3 K9 [0] ; [+5]
       80 JUMPIFNOT                        R1 ; [+3]
       81 GETUPVAL                         R3 7
       82 LOADB                            R4 1
       83 CALL                             R3 1 0
       84 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       49 JUMPIF                           R6 ; [+16]
       50 GETUPVAL                         R6 5
       51 MINUS                            R7 R0
       52 SETTABLEKS                       R7 R6 K0 ["current"]
       54 GETTABLEKS                       R6 R5 K2 ["index"]
       56 JUMPIFNOTEQKN                    R6 K10 [0] ; [+5]
       58 GETUPVAL                         R6 6
       59 LOADB                            R7 1
       60 CALL                             R6 1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R6 7
       63 GETTABLEKS                       R7 R5 K2 ["index"]
       65 CALL                             R6 1 0
       66 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+76]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R1 R1 K0 ["defaultSnapPointIndex"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 4
       10 GETUPVAL                         R1 5
       11 GETTABLEKS                       R1 R1 K1 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 -1
       15 CALL                             R0 -1 0
       16 JUMP                             ; [+20]
       17 GETUPVAL                         R0 6
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K0 ["defaultSnapPointIndex"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 GETUPVAL                         R1 5
       24 GETTABLEKS                       R1 R1 K2 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K4 [{"duration"}]
       28 GETUPVAL                         R4 7
       29 GETTABLEKS                       R4 R4 K5 ["Time"]
       31 GETTABLEKS                       R4 R4 K6 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K3 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 GETUPVAL                         R1 8
       38 GETTABLEKS                       R1 R1 K7 ["FoundationBottomSheetCapToOverlayHeight"]
       40 JUMPIFNOT                        R1 ; [+13]
       41 GETUPVAL                         R1 9
       42 GETUPVAL                         R3 10
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K0 ["defaultSnapPointIndex"]
       46 GETTABLE                         R2 R3 R4
       47 CALL                             R1 1 1
       48 GETUPVAL                         R2 11
       49 JUMPIFLE                         R2 R1 ; [+2]
       51 LOADB                            R0 0 +1
       52 LOADB                            R0 1
       53 JUMP                             ; [+12]
       54 GETUPVAL                         R1 9
       55 GETUPVAL                         R3 10
       56 GETUPVAL                         R4 3
       57 GETTABLEKS                       R4 R4 K0 ["defaultSnapPointIndex"]
       59 GETTABLE                         R2 R3 R4
       60 CALL                             R1 1 1
       61 GETUPVAL                         R2 11
       62 JUMPIFEQ                         R1 R2 ; [+2]
       64 LOADB                            R0 0 +1
       65 LOADB                            R0 1
       66 GETUPVAL                         R1 8
       67 GETTABLEKS                       R1 R1 K8 ["FoundationBottomSheetInnerScrollingSync"]
       69 JUMPIFNOT                        R1 ; [+4]
       70 GETUPVAL                         R1 12
       71 MOVE                             R2 R0
       72 CALL                             R1 1 0
       73 JUMP                             ; [+4]
       74 JUMPIFNOT                        R0 ; [+3]
       75 GETUPVAL                         R1 12
       76 LOADB                            R2 1
       77 CALL                             R1 1 0
       78 NEWCLOSURE                       R0 P0
       79 CAPTURE                          UPVAL U13
       80 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R2 K0 ["Y"]
        3 SETTABLEKS                       R5 R4 K1 ["current"]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 NAMECALL                         R1 R1 K1 ["GetScrollVelocity"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R1 R1 K2 ["Y"]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_19:
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
       47 JUMPIFNOT                        R1 ; [+27]
       48 GETUPVAL                         R2 8
       49 LOADB                            R3 1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 JUMP                             ; [+22]
       53 LOADNIL                          R0
       54 GETUPVAL                         R1 2
       55 GETTABLEKS                       R1 R1 K0 ["current"]
       57 JUMPIFNOT                        R1 ; [+7]
       58 GETIMPORT                        R1 K8 [pcall]
       60 NEWCLOSURE                       R2 P0
       61 CAPTURE                          UPVAL U2
       62 CALL                             R1 1 2
       63 JUMPIFNOT                        R1 ; [+1]
       64 MOVE                             R0 R2
       65 MOVE                             R1 R0
       66 JUMPIF                           R1 ; [+3]
       67 GETUPVAL                         R1 7
       68 GETTABLEKS                       R1 R1 K0 ["current"]
       70 JUMPIFNOT                        R1 ; [+4]
       71 GETUPVAL                         R2 8
       72 LOADB                            R3 1
       73 CALL                             R2 1 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R0 9
       76 CALL                             R0 0 0
       77 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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
       48 NAMECALL                         R2 R2 K5 ["Connect"]
       50 CALL                             R2 2 1
       51 NEWCLOSURE                       R3 P3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 RETURN                           R3 1

PROTO_22:
        0 DUPTABLE                         R0 K1 [{"close"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["close"]
        4 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R0 K25 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "innerScrollingRef", "setInnerScrollY", "hasHeader", "setHasHeader", "hasFullBleed", "fullBleedHeight", "setFullBleedHeight", "closeSheet", "hasRadius", "sheetType", "innerSurface", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
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
       31 GETUPVAL                         R2 9
       32 GETTABLEKS                       R2 R2 K26 ["FoundationBottomSheetInnerScrollingSync"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 GETUPVAL                         R1 10
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K10 ["innerScrollingRef"]
       40 NEWCLOSURE                       R1 P0
       41 CAPTURE                          UPVAL U11
       42 CAPTURE                          UPVAL U12
       43 SETTABLEKS                       R1 R0 K11 ["setInnerScrollY"]
       45 GETUPVAL                         R1 13
       46 SETTABLEKS                       R1 R0 K12 ["hasHeader"]
       48 GETUPVAL                         R1 14
       49 SETTABLEKS                       R1 R0 K13 ["setHasHeader"]
       51 GETUPVAL                         R2 9
       52 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       54 JUMPIFNOT                        R2 ; [+2]
       55 GETUPVAL                         R1 15
       56 JUMP                             ; [+1]
       57 LOADNIL                          R1
       58 SETTABLEKS                       R1 R0 K14 ["hasFullBleed"]
       60 GETUPVAL                         R2 9
       61 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       63 JUMPIFNOT                        R2 ; [+2]
       64 GETUPVAL                         R1 16
       65 JUMP                             ; [+1]
       66 LOADNIL                          R1
       67 SETTABLEKS                       R1 R0 K15 ["fullBleedHeight"]
       69 GETUPVAL                         R2 9
       70 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       72 JUMPIFNOT                        R2 ; [+2]
       73 GETUPVAL                         R1 17
       74 JUMP                             ; [+1]
       75 LOADNIL                          R1
       76 SETTABLEKS                       R1 R0 K16 ["setFullBleedHeight"]
       78 GETUPVAL                         R1 18
       79 SETTABLEKS                       R1 R0 K17 ["closeSheet"]
       81 GETUPVAL                         R2 9
       82 GETTABLEKS                       R2 R2 K27 ["FoundationSheetFullBleed"]
       84 JUMPIFNOT                        R2 ; [+2]
       85 LOADB                            R1 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R1
       88 SETTABLEKS                       R1 R0 K18 ["hasRadius"]
       90 GETUPVAL                         R1 19
       91 GETTABLEKS                       R1 R1 K28 ["Bottom"]
       93 SETTABLEKS                       R1 R0 K19 ["sheetType"]
       95 GETUPVAL                         R1 20
       96 SETTABLEKS                       R1 R0 K20 ["innerSurface"]
       98 GETUPVAL                         R1 21
       99 GETTABLEKS                       R1 R1 K21 ["testId"]
      101 SETTABLEKS                       R1 R0 K21 ["testId"]
      103 GETUPVAL                         R1 22
      104 SETTABLEKS                       R1 R0 K22 ["closeAffordanceRef"]
      106 GETUPVAL                         R1 23
      107 SETTABLEKS                       R1 R0 K23 ["contentStartRef"]
      109 GETUPVAL                         R1 24
      110 SETTABLEKS                       R1 R0 K24 ["setContentStartRef"]
      112 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["FoundationBottomSheetInnerScrollingSync"]
        7 JUMPIFNOT                        R0 ; [+23]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 JUMPIFNOT                        R0 ; [+19]
       12 GETUPVAL                         R0 3
       13 LOADN                            R1 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K0 ["current"]
       18 GETIMPORT                        R1 K4 [Vector2.new]
       20 LOADN                            R2 0
       21 LOADN                            R3 0
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K5 ["CanvasPosition"]
       25 GETUPVAL                         R0 2
       26 GETTABLEKS                       R0 R0 K0 ["current"]
       28 NAMECALL                         R0 R0 K6 ["ResetScrollVelocity"]
       30 CALL                             R0 1 0
       31 GETUPVAL                         R1 4
       32 LENGTH                           R0 R1
       33 LOADN                            R1 1
       34 JUMPIFNOTLT                      R1 R0 ; [+53]
       36 GETUPVAL                         R2 5
       37 GETTABLEKS                       R2 R2 K0 ["current"]
       39 GETUPVAL                         R4 4
       40 LENGTH                           R3 R4
       41 MOD                              R1 R2 R3
       42 ADDK                             R0 R1 K7 [1]
       43 GETUPVAL                         R1 6
       44 JUMPIFNOT                        R1 ; [+4]
       45 GETUPVAL                         R1 7
       46 MOVE                             R2 R0
       47 CALL                             R1 1 0
       48 JUMP                             ; [+3]
       49 GETUPVAL                         R1 8
       50 MOVE                             R2 R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K8 ["FoundationBottomSheetCapToOverlayHeight"]
       55 JUMPIFNOT                        R2 ; [+10]
       56 GETUPVAL                         R2 9
       57 GETUPVAL                         R4 4
       58 GETTABLE                         R3 R4 R0
       59 CALL                             R2 1 1
       60 GETUPVAL                         R3 10
       61 JUMPIFLE                         R3 R2 ; [+2]
       63 LOADB                            R1 0 +1
       64 LOADB                            R1 1
       65 JUMP                             ; [+9]
       66 GETUPVAL                         R2 9
       67 GETUPVAL                         R4 4
       68 GETTABLE                         R3 R4 R0
       69 CALL                             R2 1 1
       70 GETUPVAL                         R3 10
       71 JUMPIFEQ                         R2 R3 ; [+2]
       73 LOADB                            R1 0 +1
       74 LOADB                            R1 1
       75 GETUPVAL                         R2 1
       76 GETTABLEKS                       R2 R2 K1 ["FoundationBottomSheetInnerScrollingSync"]
       78 JUMPIFNOT                        R2 ; [+4]
       79 GETUPVAL                         R2 11
       80 MOVE                             R3 R1
       81 CALL                             R2 1 0
       82 RETURN                           R0 0
       83 JUMPIFNOT                        R1 ; [+6]
       84 GETUPVAL                         R2 11
       85 LOADB                            R3 1
       86 CALL                             R2 1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R0 12
       89 CALL                             R0 0 0
       90 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R3 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_31:
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
       19 GETTABLEKS                       R7 R6 K3 ["reducedMotion"]
       21 GETUPVAL                         R8 7
       22 CALL                             R8 0 1
       23 LOADNIL                          R9
       24 LOADNIL                          R10
       25 GETUPVAL                         R11 8
       26 GETTABLEKS                       R11 R11 K4 ["FoundationBottomSheetCapToOverlayHeight"]
       28 JUMPIFNOT                        R11 ; [+13]
       29 GETUPVAL                         R11 9
       30 GETTABLEKS                       R11 R11 K5 ["useState"]
       32 JUMPIFNOT                        R3 ; [+5]
       33 GETTABLEKS                       R12 R3 K6 ["AbsoluteSize"]
       35 GETTABLEKS                       R12 R12 K7 ["Y"]
       37 JUMP                             ; [+1]
       38 LOADN                            R12 0
       39 CALL                             R11 1 2
       40 MOVE                             R9 R11
       41 MOVE                             R10 R12
       42 GETUPVAL                         R11 9
       43 GETTABLEKS                       R11 R11 K5 ["useState"]
       45 LOADN                            R12 0
       46 CALL                             R11 1 2
       47 GETUPVAL                         R13 9
       48 GETTABLEKS                       R13 R13 K8 ["useMemo"]
       50 NEWCLOSURE                       R14 P0
       51 CAPTURE                          VAL R11
       52 NEWTABLE                         R15 0 1
       54 MOVE                             R16 R11
       55 SETLIST                          R15 R16 1 [1]
       57 CALL                             R13 2 1
       58 GETTABLEKS                       R15 R2 K9 ["snapPoints"]
       60 OR                               R14 R15 R13
       61 GETUPVAL                         R15 9
       62 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       64 NEWCLOSURE                       R16 P1
       65 CAPTURE                          VAL R8
       66 NEWTABLE                         R17 0 1
       68 MOVE                             R18 R8
       69 SETLIST                          R17 R18 1 [1]
       71 CALL                             R15 2 1
       72 LOADN                            R16 0
       73 MOVE                             R17 R14
       74 LOADNIL                          R18
       75 LOADNIL                          R19
       76 FORGPREP                         R17
       77 MOVE                             R22 R15
       78 MOVE                             R23 R21
       79 CALL                             R22 1 1
       80 JUMPIFNOTLT                      R16 R22 ; [+2]
       82 MOVE                             R16 R22
       83 FORGLOOP                         R17 2 ; [-7]
       85 FASTCALL2                        MATH_MIN R16 R8 ; [+5]
       87 MOVE                             R18 R16
       88 MOVE                             R19 R8
       89 GETIMPORT                        R17 K13 [math.min]
       91 CALL                             R17 2 1
       92 MOVE                             R16 R17
       93 GETUPVAL                         R17 8
       94 GETTABLEKS                       R17 R17 K4 ["FoundationBottomSheetCapToOverlayHeight"]
       96 JUMPIFNOT                        R17 ; [+11]
       97 LOADN                            R17 0
       98 JUMPIFNOTLT                      R17 R9 ; [+9]
      100 FASTCALL2                        MATH_MIN R16 R9 ; [+5]
      102 MOVE                             R18 R16
      103 MOVE                             R19 R9
      104 GETIMPORT                        R17 K13 [math.min]
      106 CALL                             R17 2 1
      107 MOVE                             R16 R17
      108 GETUPVAL                         R17 10
      109 MOVE                             R18 R3
      110 CALL                             R17 1 1
      111 GETTABLEKS                       R17 R17 K14 ["bottom"]
      113 GETUPVAL                         R18 9
      114 GETTABLEKS                       R18 R18 K15 ["useRef"]
      116 LOADN                            R19 0
      117 CALL                             R18 1 1
      118 GETUPVAL                         R19 9
      119 GETTABLEKS                       R19 R19 K15 ["useRef"]
      121 LOADB                            R20 0
      122 CALL                             R19 1 1
      123 GETUPVAL                         R20 11
      124 LOADN                            R21 1
      125 NEWCLOSURE                       R22 P2
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R2
      128 CALL                             R20 2 2
      129 GETUPVAL                         R22 9
      130 GETTABLEKS                       R22 R22 K16 ["useBinding"]
      132 MINUS                            R23 R17
      133 CALL                             R22 1 2
      134 GETUPVAL                         R24 9
      135 GETTABLEKS                       R24 R24 K16 ["useBinding"]
      137 LOADN                            R25 0
      138 CALL                             R24 1 2
      139 GETUPVAL                         R26 9
      140 GETTABLEKS                       R26 R26 K16 ["useBinding"]
      142 LOADB                            R27 0
      143 CALL                             R26 1 2
      144 GETUPVAL                         R28 9
      145 GETTABLEKS                       R28 R28 K16 ["useBinding"]
      147 LOADB                            R29 0
      148 CALL                             R28 1 2
      149 LOADNIL                          R30
      150 LOADNIL                          R31
      151 LOADNIL                          R32
      152 GETUPVAL                         R33 8
      153 GETTABLEKS                       R33 R33 K17 ["FoundationSheetFullBleed"]
      155 JUMPIFNOT                        R33 ; [+12]
      156 GETUPVAL                         R33 12
      157 GETTABLEKS                       R34 R2 K18 ["children"]
      159 CALL                             R33 1 1
      160 MOVE                             R30 R33
      161 GETUPVAL                         R33 9
      162 GETTABLEKS                       R33 R33 K16 ["useBinding"]
      164 LOADN                            R34 0
      165 CALL                             R33 1 2
      166 MOVE                             R31 R33
      167 MOVE                             R32 R34
      168 GETUPVAL                         R33 9
      169 GETTABLEKS                       R33 R33 K15 ["useRef"]
      171 LOADN                            R34 0
      172 CALL                             R33 1 1
      173 GETUPVAL                         R34 9
      174 GETTABLEKS                       R34 R34 K15 ["useRef"]
      176 LOADNIL                          R35
      177 CALL                             R34 1 1
      178 GETUPVAL                         R35 9
      179 GETTABLEKS                       R35 R35 K16 ["useBinding"]
      181 LOADN                            R36 0
      182 CALL                             R35 1 2
      183 GETUPVAL                         R38 8
      184 GETTABLEKS                       R38 R38 K19 ["FoundationBottomSheetInnerScrollingSync"]
      186 JUMPIFNOT                        R38 ; [+6]
      187 GETUPVAL                         R37 9
      188 GETTABLEKS                       R37 R37 K15 ["useRef"]
      190 LOADNIL                          R38
      191 CALL                             R37 1 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R37
      194 GETUPVAL                         R38 9
      195 GETTABLEKS                       R38 R38 K16 ["useBinding"]
      197 LOADB                            R39 0
      198 CALL                             R38 1 2
      199 GETUPVAL                         R40 9
      200 GETTABLEKS                       R40 R40 K15 ["useRef"]
      202 LOADB                            R41 0
      203 CALL                             R40 1 1
      204 GETUPVAL                         R41 9
      205 GETTABLEKS                       R41 R41 K15 ["useRef"]
      207 LOADN                            R42 0
      208 CALL                             R41 1 1
      209 GETUPVAL                         R42 9
      210 GETTABLEKS                       R42 R42 K15 ["useRef"]
      212 LOADNIL                          R43
      213 CALL                             R42 1 1
      214 GETUPVAL                         R43 9
      215 GETTABLEKS                       R43 R43 K15 ["useRef"]
      217 LOADB                            R44 0
      218 CALL                             R43 1 1
      219 GETUPVAL                         R44 9
      220 GETTABLEKS                       R44 R44 K15 ["useRef"]
      222 LOADN                            R45 0
      223 CALL                             R44 1 1
      224 GETUPVAL                         R45 9
      225 GETTABLEKS                       R45 R45 K10 ["useCallback"]
      227 NEWCLOSURE                       R46 P3
      228 CAPTURE                          VAL R42
      229 CAPTURE                          VAL R41
      230 CAPTURE                          VAL R43
      231 NEWTABLE                         R47 0 0
      233 CALL                             R45 2 1
      234 GETUPVAL                         R46 9
      235 GETTABLEKS                       R46 R46 K10 ["useCallback"]
      237 NEWCLOSURE                       R47 P4
      238 CAPTURE                          VAL R45
      239 CAPTURE                          VAL R43
      240 CAPTURE                          UPVAL U8
      241 CAPTURE                          VAL R34
      242 CAPTURE                          VAL R42
      243 CAPTURE                          VAL R44
      244 NEWTABLE                         R48 0 1
      246 MOVE                             R49 R45
      247 SETLIST                          R48 R49 1 [1]
      249 CALL                             R46 2 1
      250 GETUPVAL                         R47 9
      251 GETTABLEKS                       R47 R47 K10 ["useCallback"]
      253 NEWCLOSURE                       R48 P5
      254 CAPTURE                          UPVAL U8
      255 CAPTURE                          VAL R15
      256 CAPTURE                          REF R16
      257 CAPTURE                          VAL R17
      258 NEWTABLE                         R49 0 3
      260 MOVE                             R50 R17
      261 MOVE                             R51 R15
      262 GETUPVAL                         R53 8
      263 GETTABLEKS                       R53 R53 K4 ["FoundationBottomSheetCapToOverlayHeight"]
      265 JUMPIFNOT                        R53 ; [+2]
      266 MOVE                             R52 R16
      267 JUMP                             ; [+1]
      268 LOADNIL                          R52
      269 SETLIST                          R49 R50 3 [1]
      271 CALL                             R47 2 1
      272 GETUPVAL                         R48 9
      273 GETTABLEKS                       R48 R48 K10 ["useCallback"]
      275 NEWCLOSURE                       R49 P6
      276 CAPTURE                          VAL R18
      277 CAPTURE                          VAL R46
      278 CAPTURE                          VAL R47
      279 CAPTURE                          VAL R14
      280 NEWTABLE                         R50 0 2
      282 MOVE                             R51 R47
      283 MOVE                             R52 R14
      284 SETLIST                          R50 R51 2 [1]
      286 CALL                             R48 2 1
      287 GETUPVAL                         R49 9
      288 GETTABLEKS                       R49 R49 K10 ["useCallback"]
      290 NEWCLOSURE                       R50 P7
      291 CAPTURE                          VAL R45
      292 CAPTURE                          VAL R18
      293 CAPTURE                          VAL R34
      294 CAPTURE                          VAL R47
      295 CAPTURE                          VAL R14
      296 NEWTABLE                         R51 0 3
      298 MOVE                             R52 R45
      299 MOVE                             R53 R47
      300 MOVE                             R54 R14
      301 SETLIST                          R51 R52 3 [1]
      303 CALL                             R49 2 1
      304 GETUPVAL                         R50 9
      305 GETTABLEKS                       R50 R50 K10 ["useCallback"]
      307 NEWCLOSURE                       R51 P8
      308 CAPTURE                          VAL R19
      309 CAPTURE                          VAL R7
      310 CAPTURE                          VAL R45
      311 CAPTURE                          VAL R34
      312 CAPTURE                          VAL R21
      313 CAPTURE                          UPVAL U13
      314 CAPTURE                          VAL R44
      315 CAPTURE                          VAL R41
      316 CAPTURE                          VAL R46
      317 CAPTURE                          VAL R4
      318 NEWTABLE                         R52 0 3
      320 MOVE                             R53 R46
      321 MOVE                             R54 R45
      322 MOVE                             R55 R7
      323 SETLIST                          R52 R53 3 [1]
      325 CALL                             R50 2 1
      326 GETUPVAL                         R51 9
      327 GETTABLEKS                       R51 R51 K10 ["useCallback"]
      329 NEWCLOSURE                       R52 P9
      330 CAPTURE                          VAL R35
      331 CAPTURE                          VAL R33
      332 CAPTURE                          UPVAL U8
      333 CAPTURE                          REF R16
      334 CAPTURE                          VAL R17
      335 CAPTURE                          VAL R41
      336 CAPTURE                          VAL R40
      337 CAPTURE                          VAL R39
      338 NEWTABLE                         R53 0 2
      340 MOVE                             R54 R16
      341 MOVE                             R55 R17
      342 SETLIST                          R53 R54 2 [1]
      344 CALL                             R51 2 1
      345 GETUPVAL                         R52 9
      346 GETTABLEKS                       R52 R52 K10 ["useCallback"]
      348 NEWCLOSURE                       R53 P10
      349 CAPTURE                          VAL R41
      350 CAPTURE                          VAL R33
      351 CAPTURE                          VAL R14
      352 CAPTURE                          VAL R47
      353 CAPTURE                          VAL R40
      354 CAPTURE                          VAL R44
      355 CAPTURE                          VAL R50
      356 CAPTURE                          VAL R48
      357 NEWTABLE                         R54 0 4
      359 MOVE                             R55 R14
      360 MOVE                             R56 R48
      361 MOVE                             R57 R47
      362 MOVE                             R58 R50
      363 SETLIST                          R54 R55 4 [1]
      365 CALL                             R52 2 1
      366 GETUPVAL                         R53 9
      367 GETTABLEKS                       R53 R53 K20 ["useEffect"]
      369 NEWCLOSURE                       R54 P11
      370 CAPTURE                          VAL R3
      371 CAPTURE                          VAL R7
      372 CAPTURE                          VAL R49
      373 CAPTURE                          VAL R2
      374 CAPTURE                          VAL R21
      375 CAPTURE                          UPVAL U13
      376 CAPTURE                          VAL R48
      377 CAPTURE                          VAL R4
      378 CAPTURE                          UPVAL U8
      379 CAPTURE                          VAL R15
      380 CAPTURE                          VAL R14
      381 CAPTURE                          REF R16
      382 CAPTURE                          VAL R39
      383 CAPTURE                          VAL R45
      384 NEWTABLE                         R55 0 7
      386 MOVE                             R56 R3
      387 MOVE                             R57 R14
      388 GETTABLEKS                       R58 R2 K21 ["defaultSnapPointIndex"]
      390 MOVE                             R59 R48
      391 MOVE                             R60 R15
      392 MOVE                             R61 R49
      393 MOVE                             R62 R7
      394 SETLIST                          R55 R56 7 [1]
      396 CALL                             R53 2 0
      397 GETUPVAL                         R53 9
      398 GETTABLEKS                       R53 R53 K20 ["useEffect"]
      400 NEWCLOSURE                       R54 P12
      401 CAPTURE                          VAL R41
      402 CAPTURE                          VAL R51
      403 CAPTURE                          VAL R40
      404 CAPTURE                          VAL R45
      405 CAPTURE                          UPVAL U8
      406 CAPTURE                          VAL R34
      407 CAPTURE                          VAL R33
      408 CAPTURE                          REF R16
      409 CAPTURE                          VAL R17
      410 CAPTURE                          VAL R19
      411 CAPTURE                          VAL R39
      412 CAPTURE                          VAL R52
      413 NEWTABLE                         R55 0 4
      415 MOVE                             R56 R3
      416 MOVE                             R57 R52
      417 MOVE                             R58 R51
      418 MOVE                             R59 R45
      419 SETLIST                          R55 R56 4 [1]
      421 CALL                             R53 2 0
      422 GETUPVAL                         R53 9
      423 GETTABLEKS                       R53 R53 K15 ["useRef"]
      425 LOADNIL                          R54
      426 CALL                             R53 1 1
      427 GETUPVAL                         R54 9
      428 GETTABLEKS                       R54 R54 K5 ["useState"]
      430 LOADNIL                          R55
      431 CALL                             R54 1 2
      432 GETUPVAL                         R56 9
      433 GETTABLEKS                       R56 R56 K5 ["useState"]
      435 LOADNIL                          R57
      436 CALL                             R56 1 2
      437 GETUPVAL                         R58 14
      438 GETTABLEKS                       R58 R58 K22 ["useComposedRef"]
      440 MOVE                             R59 R1
      441 MOVE                             R60 R57
      442 CALL                             R58 2 1
      443 GETUPVAL                         R59 9
      444 GETTABLEKS                       R59 R59 K23 ["useImperativeHandle"]
      446 GETTABLEKS                       R60 R2 K24 ["sheetRef"]
      448 NEWCLOSURE                       R61 P13
      449 CAPTURE                          VAL R50
      450 NEWTABLE                         R62 0 0
      452 CALL                             R59 3 0
      453 GETUPVAL                         R59 9
      454 GETTABLEKS                       R59 R59 K8 ["useMemo"]
      456 NEWCLOSURE                       R60 P14
      457 CAPTURE                          VAL R24
      458 CAPTURE                          VAL R25
      459 CAPTURE                          VAL R26
      460 CAPTURE                          VAL R27
      461 CAPTURE                          VAL R22
      462 CAPTURE                          VAL R23
      463 CAPTURE                          VAL R17
      464 CAPTURE                          VAL R38
      465 CAPTURE                          VAL R35
      466 CAPTURE                          UPVAL U8
      467 CAPTURE                          VAL R37
      468 CAPTURE                          VAL R36
      469 CAPTURE                          VAL R51
      470 CAPTURE                          VAL R28
      471 CAPTURE                          VAL R29
      472 CAPTURE                          REF R30
      473 CAPTURE                          REF R31
      474 CAPTURE                          REF R32
      475 CAPTURE                          VAL R50
      476 CAPTURE                          UPVAL U15
      477 CAPTURE                          VAL R56
      478 CAPTURE                          VAL R2
      479 CAPTURE                          VAL R53
      480 CAPTURE                          VAL R54
      481 CAPTURE                          VAL R55
      482 NEWTABLE                         R61 0 8
      484 GETTABLEKS                       R62 R2 K25 ["testId"]
      486 MOVE                             R63 R50
      487 MOVE                             R64 R17
      488 MOVE                             R65 R51
      489 MOVE                             R66 R56
      490 MOVE                             R67 R53
      491 MOVE                             R68 R54
      492 MOVE                             R69 R30
      493 SETLIST                          R61 R62 8 [1]
      495 CALL                             R59 2 1
      496 GETUPVAL                         R60 9
      497 GETTABLEKS                       R60 R60 K26 ["createElement"]
      499 GETUPVAL                         R61 16
      500 DUPTABLE                         R62 K32 [{"ZIndex", "backgroundStyle", "Position", "AnchorPoint", "tag", "testId"}]
      501 LOADN                            R63 3
      502 SETTABLEKS                       R63 R62 K27 ["ZIndex"]
      504 GETTABLEKS                       R63 R4 K33 ["Color"]
      506 GETTABLEKS                       R63 R63 K34 ["Content"]
      508 GETTABLEKS                       R63 R63 K35 ["Muted"]
      510 SETTABLEKS                       R63 R62 K28 ["backgroundStyle"]
      512 GETUPVAL                         R64 8
      513 GETTABLEKS                       R64 R64 K17 ["FoundationSheetFullBleed"]
      515 JUMPIFNOT                        R64 ; [+18]
      516 GETIMPORT                        R63 K38 [UDim2.new]
      518 LOADK                            R64 K39 [0.5]
      519 LOADN                            R65 0
      520 LOADN                            R66 0
      521 JUMPIFNOT                        R30 ; [+5]
      522 GETTABLEKS                       R67 R4 K40 ["Padding"]
      524 GETTABLEKS                       R67 R67 K41 ["Small"]
      526 JUMP                             ; [+5]
      527 GETTABLEKS                       R68 R4 K40 ["Padding"]
      529 GETTABLEKS                       R68 R68 K42 ["XSmall"]
      531 MINUS                            R67 R68
      532 CALL                             R63 4 1
      533 JUMP                             ; [+1]
      534 LOADNIL                          R63
      535 SETTABLEKS                       R63 R62 K29 ["Position"]
      537 GETUPVAL                         R64 8
      538 GETTABLEKS                       R64 R64 K17 ["FoundationSheetFullBleed"]
      540 JUMPIFNOT                        R64 ; [+6]
      541 GETIMPORT                        R63 K44 [Vector2.new]
      543 LOADK                            R64 K39 [0.5]
      544 LOADN                            R65 0
      545 CALL                             R63 2 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R63
      548 SETTABLEKS                       R63 R62 K30 ["AnchorPoint"]
      550 LOADK                            R63 K45 ["align-y-center size-1000-100 padding-y-small radius-small"]
      551 SETTABLEKS                       R63 R62 K31 ["tag"]
      553 LOADK                            R64 K46 ["%*--gripper"]
      554 GETTABLEKS                       R66 R2 K25 ["testId"]
      556 NAMECALL                         R64 R64 K47 ["format"]
      558 CALL                             R64 2 1
      559 MOVE                             R63 R64
      560 SETTABLEKS                       R63 R62 K25 ["testId"]
      562 DUPTABLE                         R63 K49 [{"TouchTarget"}]
      563 GETUPVAL                         R64 9
      564 GETTABLEKS                       R64 R64 K26 ["createElement"]
      566 GETUPVAL                         R65 16
      567 DUPTABLE                         R66 K52 [{"tag", "stateLayer", "onActivated"}]
      568 LOADK                            R67 K53 ["size-1000-600"]
      569 SETTABLEKS                       R67 R66 K31 ["tag"]
      571 DUPTABLE                         R67 K55 [{"affordance"}]
      572 GETUPVAL                         R68 17
      573 GETTABLEKS                       R68 R68 K56 ["None"]
      575 SETTABLEKS                       R68 R67 K54 ["affordance"]
      577 SETTABLEKS                       R67 R66 K50 ["stateLayer"]
      579 NEWCLOSURE                       R67 P15
      580 CAPTURE                          VAL R40
      581 CAPTURE                          UPVAL U8
      582 CAPTURE                          VAL R37
      583 CAPTURE                          VAL R36
      584 CAPTURE                          VAL R14
      585 CAPTURE                          VAL R18
      586 CAPTURE                          VAL R7
      587 CAPTURE                          VAL R49
      588 CAPTURE                          VAL R48
      589 CAPTURE                          VAL R15
      590 CAPTURE                          REF R16
      591 CAPTURE                          VAL R39
      592 CAPTURE                          VAL R50
      593 SETTABLEKS                       R67 R66 K51 ["onActivated"]
      595 CALL                             R64 2 1
      596 SETTABLEKS                       R64 R63 K48 ["TouchTarget"]
      598 CALL                             R60 3 1
      599 MOVE                             R61 R3
      600 JUMPIFNOT                        R61 ; [+419]
      601 GETUPVAL                         R61 18
      602 GETTABLEKS                       R61 R61 K57 ["createPortal"]
      604 GETUPVAL                         R62 9
      605 GETTABLEKS                       R62 R62 K26 ["createElement"]
      607 GETUPVAL                         R63 16
      608 DUPTABLE                         R64 K62 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId", "onAbsoluteSizeChanged"}]
      609 GETTABLEKS                       R65 R5 K63 ["zIndex"]
      611 SETTABLEKS                       R65 R64 K27 ["ZIndex"]
      613 SETTABLEKS                       R58 R64 K58 ["ref"]
      615 GETUPVAL                         R65 19
      616 GETTABLEKS                       R65 R65 K64 ["nonSelectable"]
      618 SETTABLEKS                       R65 R64 K59 ["selection"]
      620 GETUPVAL                         R65 19
      621 GETTABLEKS                       R65 R65 K65 ["isolatedSelectionGroup"]
      623 SETTABLEKS                       R65 R64 K60 ["selectionGroup"]
      625 LOADK                            R65 K66 ["size-full"]
      626 SETTABLEKS                       R65 R64 K31 ["tag"]
      628 LOADK                            R66 K67 ["%*--surface"]
      629 GETTABLEKS                       R68 R2 K25 ["testId"]
      631 NAMECALL                         R66 R66 K47 ["format"]
      633 CALL                             R66 2 1
      634 MOVE                             R65 R66
      635 SETTABLEKS                       R65 R64 K25 ["testId"]
      637 GETUPVAL                         R66 8
      638 GETTABLEKS                       R66 R66 K4 ["FoundationBottomSheetCapToOverlayHeight"]
      640 JUMPIFNOT                        R66 ; [+3]
      641 NEWCLOSURE                       R65 P16
      642 CAPTURE                          REF R10
      643 JUMP                             ; [+1]
      644 LOADNIL                          R65
      645 SETTABLEKS                       R65 R64 K61 ["onAbsoluteSizeChanged"]
      647 GETUPVAL                         R65 9
      648 GETTABLEKS                       R65 R65 K26 ["createElement"]
      650 LOADK                            R66 K68 ["ScrollingFrame"]
      651 NEWTABLE                         R67 8 0
      653 GETIMPORT                        R68 K70 [UDim2.fromScale]
      655 LOADN                            R69 1
      656 LOADN                            R70 1
      657 CALL                             R68 2 1
      658 SETTABLEKS                       R68 R67 K71 ["Size"]
      660 GETUPVAL                         R69 8
      661 GETTABLEKS                       R69 R69 K72 ["FoundationSheetPreventCloseOnResize"]
      663 JUMPIFNOT                        R69 ; [+8]
      664 GETIMPORT                        R68 K38 [UDim2.new]
      666 LOADN                            R69 1
      667 LOADN                            R70 0
      668 LOADN                            R71 1
      669 ADD                              R72 R16 R17
      670 CALL                             R68 4 1
      671 JUMP                             ; [+8]
      672 GETIMPORT                        R68 K38 [UDim2.new]
      674 LOADN                            R69 1
      675 LOADN                            R70 0
      676 LOADN                            R71 0
      677 ADD                              R73 R8 R16
      678 ADD                              R72 R73 R17
      679 CALL                             R68 4 1
      680 SETTABLEKS                       R68 R67 K73 ["CanvasSize"]
      682 LOADB                            R68 0
      683 SETTABLEKS                       R68 R67 K74 ["ClipsDescendants"]
      685 LOADN                            R68 1
      686 SETTABLEKS                       R68 R67 K75 ["BackgroundTransparency"]
      688 GETIMPORT                        R68 K78 [Enum.ScrollingDirection.Y]
      690 SETTABLEKS                       R68 R67 K77 ["ScrollingDirection"]
      692 LOADN                            R68 0
      693 SETTABLEKS                       R68 R67 K79 ["ScrollBarThickness"]
      695 SETTABLEKS                       R34 R67 K58 ["ref"]
      697 GETUPVAL                         R68 9
      698 GETTABLEKS                       R68 R68 K80 ["Change"]
      700 GETTABLEKS                       R68 R68 K81 ["CanvasPosition"]
      702 NEWCLOSURE                       R69 P17
      703 CAPTURE                          VAL R33
      704 CAPTURE                          VAL R23
      705 CAPTURE                          VAL R17
      706 CAPTURE                          VAL R4
      707 CAPTURE                          VAL R51
      708 CAPTURE                          VAL R50
      709 SETTABLE                         R69 R67 R68
      710 DUPTABLE                         R68 K85 [{"SheetContainer", "Shadow", "Backdrop"}]
      711 GETUPVAL                         R69 9
      712 GETTABLEKS                       R69 R69 K26 ["createElement"]
      714 GETUPVAL                         R70 16
      715 DUPTABLE                         R71 K86 [{"Size", "Position", "ZIndex"}]
      716 GETUPVAL                         R73 8
      717 GETTABLEKS                       R73 R73 K72 ["FoundationSheetPreventCloseOnResize"]
      719 JUMPIFNOT                        R73 ; [+9]
      720 GETIMPORT                        R72 K38 [UDim2.new]
      722 LOADN                            R73 1
      723 LOADN                            R74 0
      724 LOADN                            R75 1
      725 SUBRK                            R77 R87 K16 ["useBinding"]
      726 SUB                              R76 R77 R17
      727 CALL                             R72 4 1
      728 JUMP                             ; [+7]
      729 GETIMPORT                        R72 K38 [UDim2.new]
      731 LOADN                            R73 1
      732 LOADN                            R74 0
      733 LOADN                            R75 0
      734 ADDK                             R76 R8 K87 [200]
      735 CALL                             R72 4 1
      736 SETTABLEKS                       R72 R71 K71 ["Size"]
      738 GETUPVAL                         R73 8
      739 GETTABLEKS                       R73 R73 K72 ["FoundationSheetPreventCloseOnResize"]
      741 JUMPIFNOT                        R73 ; [+8]
      742 GETIMPORT                        R72 K38 [UDim2.new]
      744 LOADN                            R73 0
      745 LOADN                            R74 0
      746 LOADN                            R75 1
      747 MINUS                            R76 R16
      748 CALL                             R72 4 1
      749 JUMP                             ; [+5]
      750 GETIMPORT                        R72 K89 [UDim2.fromOffset]
      752 LOADN                            R73 0
      753 ADD                              R74 R8 R17
      754 CALL                             R72 2 1
      755 SETTABLEKS                       R72 R71 K29 ["Position"]
      757 LOADN                            R72 3
      758 SETTABLEKS                       R72 R71 K27 ["ZIndex"]
      760 DUPTABLE                         R72 K90 [{"Sheet"}]
      761 GETUPVAL                         R73 9
      762 GETTABLEKS                       R73 R73 K26 ["createElement"]
      764 GETUPVAL                         R74 16
      765 DUPTABLE                         R75 K92 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      766 GETTABLEKS                       R77 R2 K9 ["snapPoints"]
      768 JUMPIFNOTEQKNIL                  R77 ; [+7]
      770 GETIMPORT                        R76 K70 [UDim2.fromScale]
      772 LOADN                            R77 1
      773 LOADN                            R78 0
      774 CALL                             R76 2 1
      775 JUMP                             ; [+7]
      776 GETIMPORT                        R76 K38 [UDim2.new]
      778 LOADN                            R77 1
      779 LOADN                            R78 0
      780 LOADN                            R79 0
      781 ADDK                             R80 R16 K87 [200]
      782 CALL                             R76 4 1
      783 SETTABLEKS                       R76 R75 K71 ["Size"]
      785 GETTABLEKS                       R77 R2 K9 ["snapPoints"]
      787 JUMPIFNOTEQKNIL                  R77 ; [+4]
      789 GETIMPORT                        R76 K93 [Enum.AutomaticSize.Y]
      791 JUMP                             ; [+1]
      792 LOADNIL                          R76
      793 SETTABLEKS                       R76 R75 K91 ["AutomaticSize"]
      795 GETTABLEKS                       R77 R2 K9 ["snapPoints"]
      797 JUMPIFNOTEQKNIL                  R77 ; [+4]
      799 NEWCLOSURE                       R76 P18
      800 CAPTURE                          VAL R12
      801 JUMP                             ; [+1]
      802 LOADNIL                          R76
      803 SETTABLEKS                       R76 R75 K61 ["onAbsoluteSizeChanged"]
      805 DUPTABLE                         R76 K55 [{"affordance"}]
      806 GETUPVAL                         R77 17
      807 GETTABLEKS                       R77 R77 K56 ["None"]
      809 SETTABLEKS                       R77 R76 K54 ["affordance"]
      811 SETTABLEKS                       R76 R75 K50 ["stateLayer"]
      813 GETUPVAL                         R76 20
      814 GETTABLEKS                       R76 R76 K94 ["noop"]
      816 SETTABLEKS                       R76 R75 K51 ["onActivated"]
      818 GETTABLEKS                       R76 R2 K25 ["testId"]
      820 SETTABLEKS                       R76 R75 K25 ["testId"]
      822 GETUPVAL                         R77 8
      823 GETTABLEKS                       R77 R77 K17 ["FoundationSheetFullBleed"]
      825 JUMPIFNOT                        R77 ; [+9]
      826 NEWTABLE                         R76 2 0
      828 LOADB                            R77 1
      829 SETTABLEKS                       R77 R76 K95 ["col items-center radius-large clip bg-surface-100"]
      831 NOT                              R77 R30
      832 SETTABLEKS                       R77 R76 K96 ["padding-top-medium"]
      834 JUMP                             ; [+1]
      835 LOADK                            R76 K97 ["col items-center padding-top-small radius-large clip bg-surface-100"]
      836 SETTABLEKS                       R76 R75 K31 ["tag"]
      838 DUPTABLE                         R76 K99 [{"GripperContainer", "Content"}]
      839 GETUPVAL                         R78 8
      840 GETTABLEKS                       R78 R78 K17 ["FoundationSheetFullBleed"]
      842 JUMPIFNOT                        R78 ; [+10]
      843 GETUPVAL                         R77 9
      844 GETTABLEKS                       R77 R77 K26 ["createElement"]
      846 LOADK                            R78 K100 ["Folder"]
      847 LOADNIL                          R79
      848 DUPTABLE                         R80 K102 [{"Gripper"}]
      849 SETTABLEKS                       R60 R80 K101 ["Gripper"]
      851 CALL                             R77 3 1
      852 JUMP                             ; [+1]
      853 MOVE                             R77 R60
      854 SETTABLEKS                       R77 R76 K98 ["GripperContainer"]
      856 GETUPVAL                         R77 9
      857 GETTABLEKS                       R77 R77 K26 ["createElement"]
      859 GETUPVAL                         R78 21
      860 GETTABLEKS                       R78 R78 K103 ["Provider"]
      862 DUPTABLE                         R79 K105 [{"value"}]
      863 SETTABLEKS                       R59 R79 K104 ["value"]
      865 GETUPVAL                         R80 9
      866 GETTABLEKS                       R80 R80 K26 ["createElement"]
      868 GETUPVAL                         R81 22
      869 DUPTABLE                         R82 K107 [{"owner"}]
      870 SETTABLEKS                       R5 R82 K106 ["owner"]
      872 GETTABLEKS                       R83 R2 K18 ["children"]
      874 CALL                             R80 3 -1
      875 CALL                             R77 -1 1
      876 SETTABLEKS                       R77 R76 K34 ["Content"]
      878 CALL                             R73 3 1
      879 SETTABLEKS                       R73 R72 K0 ["Sheet"]
      881 CALL                             R69 3 1
      882 SETTABLEKS                       R69 R68 K82 ["SheetContainer"]
      884 GETUPVAL                         R69 9
      885 GETTABLEKS                       R69 R69 K26 ["createElement"]
      887 GETUPVAL                         R70 23
      888 DUPTABLE                         R71 K111 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      889 GETUPVAL                         R72 24
      890 SETTABLEKS                       R72 R71 K108 ["Image"]
      892 GETIMPORT                        R72 K38 [UDim2.new]
      894 LOADN                            R73 1
      895 GETUPVAL                         R75 25
      896 MULK                             R74 R75 K112 [2]
      897 LOADN                            R75 0
      898 ADDK                             R77 R16 K87 [200]
      899 GETUPVAL                         R79 25
      900 MULK                             R78 R79 K112 [2]
      901 ADD                              R76 R77 R78
      902 CALL                             R72 4 1
      903 SETTABLEKS                       R72 R71 K71 ["Size"]
      905 GETUPVAL                         R73 8
      906 GETTABLEKS                       R73 R73 K72 ["FoundationSheetPreventCloseOnResize"]
      908 JUMPIFNOT                        R73 ; [+11]
      909 GETIMPORT                        R72 K38 [UDim2.new]
      911 GETUPVAL                         R74 25
      912 MINUS                            R73 R74
      913 LOADN                            R74 0
      914 LOADN                            R75 1
      915 MINUS                            R77 R16
      916 GETUPVAL                         R78 25
      917 SUB                              R76 R77 R78
      918 CALL                             R72 4 1
      919 JUMP                             ; [+8]
      920 GETIMPORT                        R72 K89 [UDim2.fromOffset]
      922 GETUPVAL                         R74 25
      923 MINUS                            R73 R74
      924 ADD                              R75 R8 R17
      925 GETUPVAL                         R76 25
      926 SUB                              R74 R75 R76
      927 CALL                             R72 2 1
      928 SETTABLEKS                       R72 R71 K29 ["Position"]
      930 LOADN                            R72 2
      931 SETTABLEKS                       R72 R71 K27 ["ZIndex"]
      933 DUPTABLE                         R72 K115 [{"center", "scale"}]
      934 GETIMPORT                        R73 K117 [Rect.new]
      936 GETUPVAL                         R74 25
      937 GETUPVAL                         R75 25
      938 GETUPVAL                         R77 25
      939 ADDK                             R76 R77 K118 [1]
      940 GETUPVAL                         R78 25
      941 ADDK                             R77 R78 K118 [1]
      942 CALL                             R73 4 1
      943 SETTABLEKS                       R73 R72 K113 ["center"]
      945 LOADN                            R73 2
      946 SETTABLEKS                       R73 R72 K114 ["scale"]
      948 SETTABLEKS                       R72 R71 K109 ["slice"]
      950 GETTABLEKS                       R72 R4 K33 ["Color"]
      952 GETTABLEKS                       R72 R72 K119 ["Extended"]
      954 GETTABLEKS                       R72 R72 K120 ["Black"]
      956 GETTABLEKS                       R72 R72 K121 ["Black_10"]
      958 SETTABLEKS                       R72 R71 K110 ["imageStyle"]
      960 CALL                             R69 2 1
      961 SETTABLEKS                       R69 R68 K83 ["Shadow"]
      963 GETUPVAL                         R69 9
      964 GETTABLEKS                       R69 R69 K26 ["createElement"]
      966 GETUPVAL                         R70 16
      967 DUPTABLE                         R71 K122 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      968 GETIMPORT                        R72 K70 [UDim2.fromScale]
      970 LOADN                            R73 1
      971 LOADN                            R74 2
      972 CALL                             R72 2 1
      973 SETTABLEKS                       R72 R71 K71 ["Size"]
      975 GETIMPORT                        R72 K70 [UDim2.fromScale]
      977 LOADN                            R73 0
      978 LOADK                            R74 K123 [-0.5]
      979 CALL                             R72 2 1
      980 SETTABLEKS                       R72 R71 K29 ["Position"]
      982 LOADN                            R72 1
      983 SETTABLEKS                       R72 R71 K27 ["ZIndex"]
      985 DUPTABLE                         R72 K55 [{"affordance"}]
      986 GETUPVAL                         R73 17
      987 GETTABLEKS                       R73 R73 K56 ["None"]
      989 SETTABLEKS                       R73 R72 K54 ["affordance"]
      991 SETTABLEKS                       R72 R71 K50 ["stateLayer"]
      993 NEWCLOSURE                       R74 P19
      994 CAPTURE                          VAL R4
      995 NAMECALL                         R72 R20 K124 ["map"]
      997 CALL                             R72 2 1
      998 SETTABLEKS                       R72 R71 K28 ["backgroundStyle"]
     1000 NEWCLOSURE                       R72 P20
     1001 CAPTURE                          VAL R50
     1002 SETTABLEKS                       R72 R71 K51 ["onActivated"]
     1004 LOADK                            R73 K125 ["%*--backdrop"]
     1005 GETTABLEKS                       R75 R2 K25 ["testId"]
     1007 NAMECALL                         R73 R73 K47 ["format"]
     1009 CALL                             R73 2 1
     1010 MOVE                             R72 R73
     1011 SETTABLEKS                       R72 R71 K25 ["testId"]
     1013 CALL                             R69 2 1
     1014 SETTABLEKS                       R69 R68 K84 ["Backdrop"]
     1016 CALL                             R65 3 -1
     1017 CALL                             R62 -1 1
     1018 MOVE                             R63 R3
     1019 CALL                             R61 2 1
     1020 CLOSEUPVALS                      R10
     1021 RETURN                           R61 1

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
      138 GETTABLEKS                       R21 R21 K32 ["childrenHasFullBleed"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R22 K1 [script]
      145 GETTABLEKS                       R22 R22 K4 ["Parent"]
      147 GETTABLEKS                       R22 R22 K33 ["useHardwareInsets"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETIMPORT                        R23 K1 [script]
      154 GETTABLEKS                       R23 R23 K4 ["Parent"]
      156 GETTABLEKS                       R23 R23 K34 ["useScreenHeight"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K6 [require]
      161 GETTABLEKS                       R24 R0 K23 ["Utility"]
      163 GETTABLEKS                       R24 R24 K35 ["Flags"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R25 R0 K36 ["Components"]
      170 GETTABLEKS                       R25 R25 K37 ["Image"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R26 R0 K36 ["Components"]
      177 GETTABLEKS                       R26 R26 K38 ["View"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R27 R0 K16 ["Providers"]
      184 GETTABLEKS                       R27 R27 K39 ["Preferences"]
      186 GETTABLEKS                       R27 R27 K40 ["usePreferences"]
      188 CALL                             R26 1 1
      189 DUPTABLE                         R27 K43 [{"defaultSnapPointIndex", "testId"}]
      190 LOADN                            R28 1
      191 SETTABLEKS                       R28 R27 K41 ["defaultSnapPointIndex"]
      193 LOADK                            R28 K44 ["--foundation-sheet"]
      194 SETTABLEKS                       R28 R27 K42 ["testId"]
      196 GETTABLEKS                       R28 R16 K45 ["SHADOW_IMAGE"]
      198 GETTABLEKS                       R29 R16 K46 ["SHADOW_SIZE"]
      200 DUPCLOSURE                       R30 K47 [PROTO_0]
      201 DUPCLOSURE                       R31 K48 [PROTO_31]
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R27
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R22
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R20
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R19
      218 CAPTURE                          VAL R25
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R18
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R24
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R29
      228 GETTABLEKS                       R32 R4 K49 ["memo"]
      230 GETTABLEKS                       R33 R4 K50 ["forwardRef"]
      232 MOVE                             R34 R31
      233 CALL                             R33 1 -1
      234 CALL                             R32 -1 -1
      235 RETURN                           R32 -1
