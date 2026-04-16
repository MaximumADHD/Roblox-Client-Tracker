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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
       18 LOADNIL                          R2
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R3 R4 K3 ["FoundationBottomSheetImproveSpring"]
       22 JUMPIFNOT                        R3 ; [+54]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K0 ["current"]
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
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K0 ["current"]
       52 GETIMPORT                        R6 K10 [Vector2.new]
       54 LOADN                            R7 0
       55 MOVE                             R8 R3
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K1 ["CanvasPosition"]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R7 R8 K0 ["current"]
       62 GETTABLEKS                       R6 R7 K1 ["CanvasPosition"]
       64 GETTABLEKS                       R5 R6 K2 ["Y"]
       66 SETUPVAL                         R5 6
       67 GETUPVAL                         R5 5
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R8 R9 K0 ["current"]
       71 GETTABLEKS                       R7 R8 K1 ["CanvasPosition"]
       73 GETTABLEKS                       R6 R7 K2 ["Y"]
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
       90 GETUPVAL                         R10 4
       91 GETTABLEKS                       R9 R10 K0 ["current"]
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
      106 GETUPVAL                         R11 4
      107 GETTABLEKS                       R10 R11 K0 ["current"]
      109 MUL                              R11 R6 R7
      110 ADD                              R9 R10 R11
      111 SETTABLEKS                       R9 R8 K0 ["current"]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R10 R11 K0 ["current"]
      116 MUL                              R9 R10 R7
      117 ADD                              R8 R1 R9
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R9 R10 K0 ["current"]
      121 GETIMPORT                        R10 K10 [Vector2.new]
      123 LOADN                            R11 0
      124 MOVE                             R12 R8
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K1 ["CanvasPosition"]
      128 GETUPVAL                         R12 0
      129 GETTABLEKS                       R11 R12 K0 ["current"]
      131 GETTABLEKS                       R10 R11 K1 ["CanvasPosition"]
      133 GETTABLEKS                       R9 R10 K2 ["Y"]
      135 SETUPVAL                         R9 6
      136 LOADB                            R3 0
      137 FASTCALL1                        MATH_ABS R2 ; [+3]
      138 MOVE                             R5 R2
      139 GETIMPORT                        R4 K18 [math.abs]
      141 CALL                             R4 1 1
      142 LOADK                            R5 K19 [0.5]
      143 JUMPIFNOTLT                      R4 R5 ; [+13]
      145 GETUPVAL                         R6 4
      146 GETTABLEKS                       R5 R6 K0 ["current"]
      148 FASTCALL1                        MATH_ABS R5 ; [+2]
      149 GETIMPORT                        R4 K18 [math.abs]
      151 CALL                             R4 1 1
      152 LOADN                            R5 1
      153 JUMPIFLT                         R4 R5 ; [+2]
      155 LOADB                            R3 0 +1
      156 LOADB                            R3 1
      157 JUMPIFNOT                        R3 ; [+12]
      158 GETUPVAL                         R5 0
      159 GETTABLEKS                       R4 R5 K0 ["current"]
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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 ADD                              R1 R2 R3
        5 RETURN                           R1 1

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

PROTO_10:
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

PROTO_11:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 NAMECALL                         R2 R2 K1 ["GetScrollVelocity"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R1 R2 K2 ["Y"]
        8 JUMPIFEQKN                       R1 K3 [0] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1

PROTO_19:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R4 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_30:
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
      185 NEWTABLE                         R41 0 1
      187 MOVE                             R42 R38
      188 SETLIST                          R41 R42 1 [1]
      190 CALL                             R39 2 1
      191 GETUPVAL                         R41 9
      192 GETTABLEKS                       R40 R41 K8 ["useCallback"]
      194 NEWCLOSURE                       R41 P5
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R14
      197 NEWTABLE                         R42 0 2
      199 MOVE                             R43 R14
      200 MOVE                             R44 R12
      201 SETLIST                          R42 R43 2 [1]
      203 CALL                             R40 2 1
      204 GETUPVAL                         R42 9
      205 GETTABLEKS                       R41 R42 K8 ["useCallback"]
      207 NEWCLOSURE                       R42 P6
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R39
      210 CAPTURE                          VAL R40
      211 CAPTURE                          VAL R11
      212 NEWTABLE                         R43 0 2
      214 MOVE                             R44 R40
      215 MOVE                             R45 R11
      216 SETLIST                          R43 R44 2 [1]
      218 CALL                             R41 2 1
      219 GETUPVAL                         R44 6
      220 GETTABLEKS                       R43 R44 K3 ["FoundationSheetReducedMotion"]
      222 JUMPIFNOT                        R43 ; [+18]
      223 GETUPVAL                         R43 9
      224 GETTABLEKS                       R42 R43 K8 ["useCallback"]
      226 NEWCLOSURE                       R43 P7
      227 CAPTURE                          VAL R38
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R28
      230 CAPTURE                          VAL R40
      231 CAPTURE                          VAL R11
      232 NEWTABLE                         R44 0 3
      234 MOVE                             R45 R38
      235 MOVE                             R46 R40
      236 MOVE                             R47 R11
      237 SETLIST                          R44 R45 3 [1]
      239 CALL                             R42 2 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R42
      242 GETUPVAL                         R44 9
      243 GETTABLEKS                       R43 R44 K8 ["useCallback"]
      245 NEWCLOSURE                       R44 P8
      246 CAPTURE                          VAL R16
      247 CAPTURE                          UPVAL U6
      248 CAPTURE                          REF R6
      249 CAPTURE                          VAL R38
      250 CAPTURE                          VAL R28
      251 CAPTURE                          VAL R18
      252 CAPTURE                          UPVAL U12
      253 CAPTURE                          VAL R37
      254 CAPTURE                          VAL R34
      255 CAPTURE                          VAL R39
      256 CAPTURE                          VAL R4
      257 GETUPVAL                         R47 6
      258 GETTABLEKS                       R46 R47 K3 ["FoundationSheetReducedMotion"]
      260 JUMPIFNOT                        R46 ; [+8]
      261 NEWTABLE                         R45 0 3
      263 MOVE                             R46 R39
      264 MOVE                             R47 R38
      265 MOVE                             R48 R6
      266 SETLIST                          R45 R46 3 [1]
      268 JUMP                             ; [+5]
      269 NEWTABLE                         R45 0 1
      271 MOVE                             R46 R39
      272 SETLIST                          R45 R46 1 [1]
      274 CALL                             R43 2 1
      275 GETUPVAL                         R45 9
      276 GETTABLEKS                       R44 R45 K8 ["useCallback"]
      278 NEWCLOSURE                       R45 P9
      279 CAPTURE                          VAL R29
      280 CAPTURE                          VAL R27
      281 CAPTURE                          UPVAL U6
      282 CAPTURE                          REF R13
      283 CAPTURE                          VAL R14
      284 CAPTURE                          VAL R34
      285 CAPTURE                          VAL R33
      286 CAPTURE                          VAL R32
      287 NEWTABLE                         R46 0 2
      289 MOVE                             R47 R13
      290 MOVE                             R48 R14
      291 SETLIST                          R46 R47 2 [1]
      293 CALL                             R44 2 1
      294 GETUPVAL                         R46 9
      295 GETTABLEKS                       R45 R46 K8 ["useCallback"]
      297 NEWCLOSURE                       R46 P10
      298 CAPTURE                          VAL R34
      299 CAPTURE                          VAL R27
      300 CAPTURE                          VAL R11
      301 CAPTURE                          VAL R40
      302 CAPTURE                          VAL R33
      303 CAPTURE                          VAL R37
      304 CAPTURE                          UPVAL U6
      305 CAPTURE                          VAL R43
      306 CAPTURE                          VAL R41
      307 NEWTABLE                         R47 0 4
      309 MOVE                             R48 R11
      310 MOVE                             R49 R41
      311 MOVE                             R50 R40
      312 MOVE                             R51 R43
      313 SETLIST                          R47 R48 4 [1]
      315 CALL                             R45 2 1
      316 GETUPVAL                         R47 9
      317 GETTABLEKS                       R46 R47 K15 ["useEffect"]
      319 NEWCLOSURE                       R47 P11
      320 CAPTURE                          VAL R3
      321 CAPTURE                          UPVAL U6
      322 CAPTURE                          REF R6
      323 CAPTURE                          VAL R42
      324 CAPTURE                          VAL R2
      325 CAPTURE                          VAL R18
      326 CAPTURE                          UPVAL U12
      327 CAPTURE                          VAL R41
      328 CAPTURE                          VAL R4
      329 CAPTURE                          VAL R12
      330 CAPTURE                          VAL R11
      331 CAPTURE                          REF R13
      332 CAPTURE                          VAL R32
      333 CAPTURE                          VAL R38
      334 GETUPVAL                         R50 6
      335 GETTABLEKS                       R49 R50 K3 ["FoundationSheetReducedMotion"]
      337 JUMPIFNOT                        R49 ; [+13]
      338 NEWTABLE                         R48 0 7
      340 MOVE                             R49 R3
      341 MOVE                             R50 R11
      342 GETTABLEKS                       R51 R2 K16 ["defaultSnapPointIndex"]
      344 MOVE                             R52 R41
      345 MOVE                             R53 R12
      346 MOVE                             R54 R42
      347 MOVE                             R55 R6
      348 SETLIST                          R48 R49 7 [1]
      350 JUMP                             ; [+10]
      351 NEWTABLE                         R48 0 5
      353 MOVE                             R49 R3
      354 MOVE                             R50 R11
      355 GETTABLEKS                       R51 R2 K16 ["defaultSnapPointIndex"]
      357 MOVE                             R52 R41
      358 MOVE                             R53 R12
      359 SETLIST                          R48 R49 5 [1]
      361 CALL                             R46 2 0
      362 GETUPVAL                         R47 9
      363 GETTABLEKS                       R46 R47 K15 ["useEffect"]
      365 NEWCLOSURE                       R47 P12
      366 CAPTURE                          VAL R34
      367 CAPTURE                          VAL R44
      368 CAPTURE                          VAL R33
      369 CAPTURE                          VAL R38
      370 CAPTURE                          UPVAL U6
      371 CAPTURE                          VAL R28
      372 CAPTURE                          VAL R27
      373 CAPTURE                          REF R13
      374 CAPTURE                          VAL R14
      375 CAPTURE                          VAL R16
      376 CAPTURE                          VAL R32
      377 CAPTURE                          VAL R31
      378 CAPTURE                          VAL R45
      379 NEWTABLE                         R48 0 4
      381 MOVE                             R49 R3
      382 MOVE                             R50 R45
      383 MOVE                             R51 R44
      384 MOVE                             R52 R38
      385 SETLIST                          R48 R49 4 [1]
      387 CALL                             R46 2 0
      388 GETUPVAL                         R47 9
      389 GETTABLEKS                       R46 R47 K13 ["useRef"]
      391 LOADNIL                          R47
      392 CALL                             R46 1 1
      393 GETUPVAL                         R48 9
      394 GETTABLEKS                       R47 R48 K5 ["useState"]
      396 LOADNIL                          R48
      397 CALL                             R47 1 2
      398 GETUPVAL                         R50 9
      399 GETTABLEKS                       R49 R50 K5 ["useState"]
      401 LOADNIL                          R50
      402 CALL                             R49 1 2
      403 GETUPVAL                         R52 13
      404 GETTABLEKS                       R51 R52 K17 ["useComposedRef"]
      406 MOVE                             R52 R1
      407 MOVE                             R53 R50
      408 CALL                             R51 2 1
      409 GETUPVAL                         R53 9
      410 GETTABLEKS                       R52 R53 K18 ["useImperativeHandle"]
      412 GETTABLEKS                       R53 R2 K19 ["sheetRef"]
      414 NEWCLOSURE                       R54 P13
      415 CAPTURE                          VAL R43
      416 NEWTABLE                         R55 0 0
      418 CALL                             R52 3 0
      419 GETUPVAL                         R53 9
      420 GETTABLEKS                       R52 R53 K6 ["useMemo"]
      422 NEWCLOSURE                       R53 P14
      423 CAPTURE                          VAL R21
      424 CAPTURE                          VAL R22
      425 CAPTURE                          VAL R23
      426 CAPTURE                          VAL R24
      427 CAPTURE                          VAL R19
      428 CAPTURE                          VAL R20
      429 CAPTURE                          VAL R14
      430 CAPTURE                          VAL R31
      431 CAPTURE                          VAL R29
      432 CAPTURE                          VAL R30
      433 CAPTURE                          VAL R44
      434 CAPTURE                          VAL R25
      435 CAPTURE                          VAL R26
      436 CAPTURE                          VAL R43
      437 CAPTURE                          UPVAL U14
      438 CAPTURE                          VAL R49
      439 CAPTURE                          VAL R2
      440 CAPTURE                          VAL R46
      441 CAPTURE                          VAL R47
      442 CAPTURE                          VAL R48
      443 NEWTABLE                         R54 0 7
      445 GETTABLEKS                       R55 R2 K20 ["testId"]
      447 MOVE                             R56 R43
      448 MOVE                             R57 R14
      449 MOVE                             R58 R44
      450 MOVE                             R59 R49
      451 MOVE                             R60 R46
      452 MOVE                             R61 R47
      453 SETLIST                          R54 R55 7 [1]
      455 CALL                             R52 2 1
      456 MOVE                             R53 R3
      457 JUMPIFNOT                        R53 ; [+450]
      458 GETUPVAL                         R54 15
      459 GETTABLEKS                       R53 R54 K21 ["createPortal"]
      461 GETUPVAL                         R55 9
      462 GETTABLEKS                       R54 R55 K22 ["createElement"]
      464 GETUPVAL                         R55 16
      465 DUPTABLE                         R56 K28 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      466 GETTABLEKS                       R57 R5 K29 ["zIndex"]
      468 SETTABLEKS                       R57 R56 K23 ["ZIndex"]
      470 SETTABLEKS                       R51 R56 K24 ["ref"]
      472 GETUPVAL                         R58 17
      473 GETTABLEKS                       R57 R58 K30 ["nonSelectable"]
      475 SETTABLEKS                       R57 R56 K25 ["selection"]
      477 GETUPVAL                         R58 17
      478 GETTABLEKS                       R57 R58 K31 ["isolatedSelectionGroup"]
      480 SETTABLEKS                       R57 R56 K26 ["selectionGroup"]
      482 LOADK                            R57 K32 ["size-full"]
      483 SETTABLEKS                       R57 R56 K27 ["tag"]
      485 LOADK                            R58 K33 ["%*--surface"]
      486 GETTABLEKS                       R60 R2 K20 ["testId"]
      488 NAMECALL                         R58 R58 K34 ["format"]
      490 CALL                             R58 2 1
      491 MOVE                             R57 R58
      492 SETTABLEKS                       R57 R56 K20 ["testId"]
      494 GETUPVAL                         R58 9
      495 GETTABLEKS                       R57 R58 K22 ["createElement"]
      497 LOADK                            R58 K35 ["ScrollingFrame"]
      498 NEWTABLE                         R59 8 0
      500 GETIMPORT                        R60 K38 [UDim2.fromScale]
      502 LOADN                            R61 1
      503 LOADN                            R62 1
      504 CALL                             R60 2 1
      505 SETTABLEKS                       R60 R59 K39 ["Size"]
      507 GETUPVAL                         R62 6
      508 GETTABLEKS                       R61 R62 K40 ["FoundationSheetPreventCloseOnResize"]
      510 JUMPIFNOT                        R61 ; [+8]
      511 GETIMPORT                        R60 K42 [UDim2.new]
      513 LOADN                            R61 1
      514 LOADN                            R62 0
      515 LOADN                            R63 1
      516 ADD                              R64 R13 R14
      517 CALL                             R60 4 1
      518 JUMP                             ; [+8]
      519 GETIMPORT                        R60 K42 [UDim2.new]
      521 LOADN                            R61 1
      522 LOADN                            R62 0
      523 LOADN                            R63 0
      524 ADD                              R65 R7 R13
      525 ADD                              R64 R65 R14
      526 CALL                             R60 4 1
      527 SETTABLEKS                       R60 R59 K43 ["CanvasSize"]
      529 LOADB                            R60 0
      530 SETTABLEKS                       R60 R59 K44 ["ClipsDescendants"]
      532 LOADN                            R60 1
      533 SETTABLEKS                       R60 R59 K45 ["BackgroundTransparency"]
      535 GETIMPORT                        R60 K49 [Enum.ScrollingDirection.Y]
      537 SETTABLEKS                       R60 R59 K47 ["ScrollingDirection"]
      539 LOADN                            R60 0
      540 SETTABLEKS                       R60 R59 K50 ["ScrollBarThickness"]
      542 SETTABLEKS                       R28 R59 K24 ["ref"]
      544 GETUPVAL                         R62 9
      545 GETTABLEKS                       R61 R62 K51 ["Change"]
      547 GETTABLEKS                       R60 R61 K52 ["CanvasPosition"]
      549 NEWCLOSURE                       R61 P15
      550 CAPTURE                          VAL R27
      551 CAPTURE                          VAL R20
      552 CAPTURE                          VAL R14
      553 CAPTURE                          VAL R4
      554 CAPTURE                          VAL R44
      555 CAPTURE                          VAL R43
      556 SETTABLE                         R61 R59 R60
      557 DUPTABLE                         R60 K56 [{"SheetContainer", "Shadow", "Backdrop"}]
      558 GETUPVAL                         R62 9
      559 GETTABLEKS                       R61 R62 K22 ["createElement"]
      561 GETUPVAL                         R62 16
      562 DUPTABLE                         R63 K58 [{"Size", "Position", "ZIndex"}]
      563 GETUPVAL                         R66 6
      564 GETTABLEKS                       R65 R66 K40 ["FoundationSheetPreventCloseOnResize"]
      566 JUMPIFNOT                        R65 ; [+9]
      567 GETIMPORT                        R64 K42 [UDim2.new]
      569 LOADN                            R65 1
      570 LOADN                            R66 0
      571 LOADN                            R67 1
      572 SUBRK                            R69 R59 K13 ["useRef"]
      573 SUB                              R68 R69 R14
      574 CALL                             R64 4 1
      575 JUMP                             ; [+7]
      576 GETIMPORT                        R64 K42 [UDim2.new]
      578 LOADN                            R65 1
      579 LOADN                            R66 0
      580 LOADN                            R67 0
      581 ADDK                             R68 R7 K59 [200]
      582 CALL                             R64 4 1
      583 SETTABLEKS                       R64 R63 K39 ["Size"]
      585 GETUPVAL                         R66 6
      586 GETTABLEKS                       R65 R66 K40 ["FoundationSheetPreventCloseOnResize"]
      588 JUMPIFNOT                        R65 ; [+8]
      589 GETIMPORT                        R64 K42 [UDim2.new]
      591 LOADN                            R65 0
      592 LOADN                            R66 0
      593 LOADN                            R67 1
      594 MINUS                            R68 R13
      595 CALL                             R64 4 1
      596 JUMP                             ; [+5]
      597 GETIMPORT                        R64 K61 [UDim2.fromOffset]
      599 LOADN                            R65 0
      600 ADD                              R66 R7 R14
      601 CALL                             R64 2 1
      602 SETTABLEKS                       R64 R63 K57 ["Position"]
      604 LOADN                            R64 3
      605 SETTABLEKS                       R64 R63 K23 ["ZIndex"]
      607 DUPTABLE                         R64 K62 [{"Sheet"}]
      608 GETUPVAL                         R66 9
      609 GETTABLEKS                       R65 R66 K22 ["createElement"]
      611 GETUPVAL                         R66 16
      612 DUPTABLE                         R67 K67 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      613 GETTABLEKS                       R69 R2 K7 ["snapPoints"]
      615 JUMPIFNOTEQKNIL                  R69 ; [+7]
      617 GETIMPORT                        R68 K38 [UDim2.fromScale]
      619 LOADN                            R69 1
      620 LOADN                            R70 0
      621 CALL                             R68 2 1
      622 JUMP                             ; [+7]
      623 GETIMPORT                        R68 K42 [UDim2.new]
      625 LOADN                            R69 1
      626 LOADN                            R70 0
      627 LOADN                            R71 0
      628 ADDK                             R72 R13 K59 [200]
      629 CALL                             R68 4 1
      630 SETTABLEKS                       R68 R67 K39 ["Size"]
      632 GETTABLEKS                       R69 R2 K7 ["snapPoints"]
      634 JUMPIFNOTEQKNIL                  R69 ; [+4]
      636 GETIMPORT                        R68 K68 [Enum.AutomaticSize.Y]
      638 JUMP                             ; [+1]
      639 LOADNIL                          R68
      640 SETTABLEKS                       R68 R67 K63 ["AutomaticSize"]
      642 GETTABLEKS                       R69 R2 K7 ["snapPoints"]
      644 JUMPIFNOTEQKNIL                  R69 ; [+4]
      646 NEWCLOSURE                       R68 P16
      647 CAPTURE                          VAL R9
      648 JUMP                             ; [+1]
      649 LOADNIL                          R68
      650 SETTABLEKS                       R68 R67 K64 ["onAbsoluteSizeChanged"]
      652 DUPTABLE                         R68 K70 [{"affordance"}]
      653 GETUPVAL                         R70 18
      654 GETTABLEKS                       R69 R70 K71 ["None"]
      656 SETTABLEKS                       R69 R68 K69 ["affordance"]
      658 SETTABLEKS                       R68 R67 K65 ["stateLayer"]
      660 GETUPVAL                         R69 19
      661 GETTABLEKS                       R68 R69 K72 ["noop"]
      663 SETTABLEKS                       R68 R67 K66 ["onActivated"]
      665 GETTABLEKS                       R68 R2 K20 ["testId"]
      667 SETTABLEKS                       R68 R67 K20 ["testId"]
      669 LOADK                            R68 K73 ["col items-center padding-top-small radius-large clip bg-surface-100"]
      670 SETTABLEKS                       R68 R67 K27 ["tag"]
      672 DUPTABLE                         R68 K76 [{"Gripper", "Content"}]
      673 GETUPVAL                         R70 9
      674 GETTABLEKS                       R69 R70 K22 ["createElement"]
      676 GETUPVAL                         R70 16
      677 DUPTABLE                         R71 K78 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      678 LOADN                            R72 3
      679 SETTABLEKS                       R72 R71 K23 ["ZIndex"]
      681 GETTABLEKS                       R74 R4 K79 ["Color"]
      683 GETTABLEKS                       R73 R74 K75 ["Content"]
      685 GETTABLEKS                       R72 R73 K80 ["Muted"]
      687 SETTABLEKS                       R72 R71 K77 ["backgroundStyle"]
      689 LOADK                            R72 K81 ["align-y-center size-1000-100 padding-y-small radius-small"]
      690 SETTABLEKS                       R72 R71 K27 ["tag"]
      692 LOADK                            R73 K82 ["%*--gripper"]
      693 GETTABLEKS                       R75 R2 K20 ["testId"]
      695 NAMECALL                         R73 R73 K34 ["format"]
      697 CALL                             R73 2 1
      698 MOVE                             R72 R73
      699 SETTABLEKS                       R72 R71 K20 ["testId"]
      701 DUPTABLE                         R72 K84 [{"TouchTarget"}]
      702 GETUPVAL                         R74 9
      703 GETTABLEKS                       R73 R74 K22 ["createElement"]
      705 GETUPVAL                         R74 16
      706 DUPTABLE                         R75 K85 [{"tag", "stateLayer", "onActivated"}]
      707 LOADK                            R76 K86 ["size-1000-600"]
      708 SETTABLEKS                       R76 R75 K27 ["tag"]
      710 DUPTABLE                         R76 K70 [{"affordance"}]
      711 GETUPVAL                         R78 18
      712 GETTABLEKS                       R77 R78 K71 ["None"]
      714 SETTABLEKS                       R77 R76 K69 ["affordance"]
      716 SETTABLEKS                       R76 R75 K65 ["stateLayer"]
      718 NEWCLOSURE                       R76 P17
      719 CAPTURE                          VAL R33
      720 CAPTURE                          VAL R11
      721 CAPTURE                          VAL R15
      722 CAPTURE                          UPVAL U6
      723 CAPTURE                          REF R6
      724 CAPTURE                          VAL R42
      725 CAPTURE                          VAL R41
      726 CAPTURE                          VAL R12
      727 CAPTURE                          REF R13
      728 CAPTURE                          VAL R32
      729 CAPTURE                          VAL R43
      730 SETTABLEKS                       R76 R75 K66 ["onActivated"]
      732 CALL                             R73 2 1
      733 SETTABLEKS                       R73 R72 K83 ["TouchTarget"]
      735 CALL                             R69 3 1
      736 SETTABLEKS                       R69 R68 K74 ["Gripper"]
      738 GETUPVAL                         R70 9
      739 GETTABLEKS                       R69 R70 K22 ["createElement"]
      741 GETUPVAL                         R71 20
      742 GETTABLEKS                       R70 R71 K87 ["Provider"]
      744 DUPTABLE                         R71 K89 [{"value"}]
      745 SETTABLEKS                       R52 R71 K88 ["value"]
      747 GETUPVAL                         R73 9
      748 GETTABLEKS                       R72 R73 K22 ["createElement"]
      750 GETUPVAL                         R73 21
      751 DUPTABLE                         R74 K91 [{"owner"}]
      752 SETTABLEKS                       R5 R74 K90 ["owner"]
      754 GETTABLEKS                       R75 R2 K92 ["children"]
      756 CALL                             R72 3 -1
      757 CALL                             R69 -1 1
      758 SETTABLEKS                       R69 R68 K75 ["Content"]
      760 CALL                             R65 3 1
      761 SETTABLEKS                       R65 R64 K0 ["Sheet"]
      763 CALL                             R61 3 1
      764 SETTABLEKS                       R61 R60 K53 ["SheetContainer"]
      766 GETUPVAL                         R62 9
      767 GETTABLEKS                       R61 R62 K22 ["createElement"]
      769 GETUPVAL                         R62 22
      770 DUPTABLE                         R63 K96 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      771 GETUPVAL                         R64 23
      772 SETTABLEKS                       R64 R63 K93 ["Image"]
      774 GETIMPORT                        R64 K42 [UDim2.new]
      776 LOADN                            R65 1
      777 GETUPVAL                         R67 24
      778 MULK                             R66 R67 K97 [2]
      779 LOADN                            R67 0
      780 ADDK                             R69 R13 K59 [200]
      781 GETUPVAL                         R71 24
      782 MULK                             R70 R71 K97 [2]
      783 ADD                              R68 R69 R70
      784 CALL                             R64 4 1
      785 SETTABLEKS                       R64 R63 K39 ["Size"]
      787 GETUPVAL                         R66 6
      788 GETTABLEKS                       R65 R66 K40 ["FoundationSheetPreventCloseOnResize"]
      790 JUMPIFNOT                        R65 ; [+11]
      791 GETIMPORT                        R64 K42 [UDim2.new]
      793 GETUPVAL                         R66 24
      794 MINUS                            R65 R66
      795 LOADN                            R66 0
      796 LOADN                            R67 1
      797 MINUS                            R69 R13
      798 GETUPVAL                         R70 24
      799 SUB                              R68 R69 R70
      800 CALL                             R64 4 1
      801 JUMP                             ; [+8]
      802 GETIMPORT                        R64 K61 [UDim2.fromOffset]
      804 GETUPVAL                         R66 24
      805 MINUS                            R65 R66
      806 ADD                              R67 R7 R14
      807 GETUPVAL                         R68 24
      808 SUB                              R66 R67 R68
      809 CALL                             R64 2 1
      810 SETTABLEKS                       R64 R63 K57 ["Position"]
      812 LOADN                            R64 2
      813 SETTABLEKS                       R64 R63 K23 ["ZIndex"]
      815 DUPTABLE                         R64 K100 [{"center", "scale"}]
      816 GETIMPORT                        R65 K102 [Rect.new]
      818 GETUPVAL                         R66 24
      819 GETUPVAL                         R67 24
      820 GETUPVAL                         R69 24
      821 ADDK                             R68 R69 K103 [1]
      822 GETUPVAL                         R70 24
      823 ADDK                             R69 R70 K103 [1]
      824 CALL                             R65 4 1
      825 SETTABLEKS                       R65 R64 K98 ["center"]
      827 LOADN                            R65 2
      828 SETTABLEKS                       R65 R64 K99 ["scale"]
      830 SETTABLEKS                       R64 R63 K94 ["slice"]
      832 GETTABLEKS                       R67 R4 K79 ["Color"]
      834 GETTABLEKS                       R66 R67 K104 ["Extended"]
      836 GETTABLEKS                       R65 R66 K105 ["Black"]
      838 GETTABLEKS                       R64 R65 K106 ["Black_10"]
      840 SETTABLEKS                       R64 R63 K95 ["imageStyle"]
      842 CALL                             R61 2 1
      843 SETTABLEKS                       R61 R60 K54 ["Shadow"]
      845 GETUPVAL                         R62 9
      846 GETTABLEKS                       R61 R62 K22 ["createElement"]
      848 GETUPVAL                         R62 16
      849 DUPTABLE                         R63 K107 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      850 GETIMPORT                        R64 K38 [UDim2.fromScale]
      852 LOADN                            R65 1
      853 LOADN                            R66 2
      854 CALL                             R64 2 1
      855 SETTABLEKS                       R64 R63 K39 ["Size"]
      857 GETIMPORT                        R64 K38 [UDim2.fromScale]
      859 LOADN                            R65 0
      860 LOADK                            R66 K108 [-0.5]
      861 CALL                             R64 2 1
      862 SETTABLEKS                       R64 R63 K57 ["Position"]
      864 LOADN                            R64 1
      865 SETTABLEKS                       R64 R63 K23 ["ZIndex"]
      867 DUPTABLE                         R64 K70 [{"affordance"}]
      868 GETUPVAL                         R66 18
      869 GETTABLEKS                       R65 R66 K71 ["None"]
      871 SETTABLEKS                       R65 R64 K69 ["affordance"]
      873 SETTABLEKS                       R64 R63 K65 ["stateLayer"]
      875 NEWCLOSURE                       R66 P18
      876 CAPTURE                          VAL R4
      877 NAMECALL                         R64 R17 K109 ["map"]
      879 CALL                             R64 2 1
      880 SETTABLEKS                       R64 R63 K77 ["backgroundStyle"]
      882 GETUPVAL                         R66 6
      883 GETTABLEKS                       R65 R66 K3 ["FoundationSheetReducedMotion"]
      885 JUMPIFNOT                        R65 ; [+3]
      886 NEWCLOSURE                       R64 P19
      887 CAPTURE                          VAL R43
      888 JUMP                             ; [+1]
      889 MOVE                             R64 R43
      890 SETTABLEKS                       R64 R63 K66 ["onActivated"]
      892 LOADK                            R65 K110 ["%*--backdrop"]
      893 GETTABLEKS                       R67 R2 K20 ["testId"]
      895 NAMECALL                         R65 R65 K34 ["format"]
      897 CALL                             R65 2 1
      898 MOVE                             R64 R65
      899 SETTABLEKS                       R64 R63 K20 ["testId"]
      901 CALL                             R61 2 1
      902 SETTABLEKS                       R61 R60 K55 ["Backdrop"]
      904 CALL                             R57 3 -1
      905 CALL                             R54 -1 1
      906 MOVE                             R55 R3
      907 CALL                             R53 2 1
      908 CLOSEUPVALS                      R6
      909 RETURN                           R53 1

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
      180 DUPTABLE                         R26 K42 [{"defaultSnapPointIndex", "testId"}]
      181 LOADN                            R27 1
      182 SETTABLEKS                       R27 R26 K40 ["defaultSnapPointIndex"]
      184 LOADK                            R27 K43 ["--foundation-sheet"]
      185 SETTABLEKS                       R27 R26 K41 ["testId"]
      187 GETTABLEKS                       R27 R16 K44 ["SHADOW_IMAGE"]
      189 GETTABLEKS                       R28 R16 K45 ["SHADOW_SIZE"]
      191 DUPCLOSURE                       R29 K46 [PROTO_0]
      192 DUPCLOSURE                       R30 K47 [PROTO_30]
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R26
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R12
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R8
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
      216 CAPTURE                          VAL R27
      217 CAPTURE                          VAL R28
      218 GETTABLEKS                       R31 R4 K48 ["memo"]
      220 GETTABLEKS                       R32 R4 K49 ["forwardRef"]
      222 MOVE                             R33 R30
      223 CALL                             R32 1 -1
      224 CALL                             R31 -1 -1
      225 RETURN                           R31 -1
