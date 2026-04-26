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
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+29]
        7 JUMPIF                           R0 ; [+28]
        8 GETUPVAL                         R1 0
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 GETUPVAL                         R1 2
       13 CALL                             R1 0 0
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K0 ["current"]
       17 JUMPIFNOT                        R1 ; [+10]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K0 ["current"]
       21 GETIMPORT                        R2 K3 [Vector2.new]
       23 LOADN                            R3 0
       24 LOADN                            R4 0
       25 CALL                             R2 2 1
       26 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       28 GETUPVAL                         R1 4
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R2 R3 K5 ["instant"]
       32 LOADN                            R3 1
       33 CALL                             R2 1 1
       34 CALL                             R1 1 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 6
       37 GETUPVAL                         R4 7
       38 GETTABLEKS                       R3 R4 K0 ["current"]
       40 MINUS                            R2 R3
       41 SETTABLEKS                       R2 R1 K0 ["current"]
       43 GETUPVAL                         R1 8
       44 LOADN                            R2 0
       45 CALL                             R1 1 0
       46 GETUPVAL                         R1 4
       47 GETUPVAL                         R3 5
       48 GETTABLEKS                       R2 R3 K6 ["ease"]
       50 LOADN                            R3 1
       51 DUPTABLE                         R4 K8 [{"duration"}]
       52 GETUPVAL                         R7 9
       53 GETTABLEKS                       R6 R7 K9 ["Time"]
       55 GETTABLEKS                       R5 R6 K10 ["Time_100"]
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
        1 JUMPIFNOT                        R0 ; [+51]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R1 R2 K0 ["defaultSnapPointIndex"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 4
       10 GETUPVAL                         R2 5
       11 GETTABLEKS                       R1 R2 K1 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 -1
       15 CALL                             R0 -1 0
       16 JUMP                             ; [+20]
       17 GETUPVAL                         R0 6
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K0 ["defaultSnapPointIndex"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 GETUPVAL                         R2 5
       24 GETTABLEKS                       R1 R2 K2 ["ease"]
       26 LOADN                            R2 0
       27 DUPTABLE                         R3 K4 [{"duration"}]
       28 GETUPVAL                         R6 7
       29 GETTABLEKS                       R5 R6 K5 ["Time"]
       31 GETTABLEKS                       R4 R5 K6 ["Time_100"]
       33 SETTABLEKS                       R4 R3 K3 ["duration"]
       35 CALL                             R1 2 -1
       36 CALL                             R0 -1 0
       37 GETUPVAL                         R1 8
       38 GETUPVAL                         R3 9
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K0 ["defaultSnapPointIndex"]
       42 GETTABLE                         R2 R3 R4
       43 CALL                             R1 1 1
       44 GETUPVAL                         R2 10
       45 JUMPIFEQ                         R1 R2 ; [+2]
       47 LOADB                            R0 0 +1
       48 LOADB                            R0 1
       49 JUMPIFNOT                        R0 ; [+3]
       50 GETUPVAL                         R1 11
       51 LOADB                            R2 1
       52 CALL                             R1 1 0
       53 NEWCLOSURE                       R0 P0
       54 CAPTURE                          UPVAL U12
       55 RETURN                           R0 1

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
       47 JUMPIFNOT                        R1 ; [+27]
       48 GETUPVAL                         R2 8
       49 LOADB                            R3 1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 JUMP                             ; [+22]
       53 LOADNIL                          R0
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R1 R2 K0 ["current"]
       57 JUMPIFNOT                        R1 ; [+7]
       58 GETIMPORT                        R1 K8 [pcall]
       60 NEWCLOSURE                       R2 P0
       61 CAPTURE                          UPVAL U2
       62 CALL                             R1 1 2
       63 JUMPIFNOT                        R1 ; [+1]
       64 MOVE                             R0 R2
       65 MOVE                             R1 R0
       66 JUMPIF                           R1 ; [+3]
       67 GETUPVAL                         R2 7
       68 GETTABLEKS                       R1 R2 K0 ["current"]
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
        7 JUMPIFNOTLT                      R1 R0 ; [+31]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K0 ["current"]
       12 GETUPVAL                         R4 1
       13 LENGTH                           R3 R4
       14 MOD                              R1 R2 R3
       15 ADDK                             R0 R1 K1 [1]
       16 GETUPVAL                         R1 3
       17 JUMPIFNOT                        R1 ; [+4]
       18 GETUPVAL                         R1 4
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R1 5
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 6
       26 GETUPVAL                         R4 1
       27 GETTABLE                         R3 R4 R0
       28 CALL                             R2 1 1
       29 GETUPVAL                         R3 7
       30 JUMPIFEQ                         R2 R3 ; [+2]
       32 LOADB                            R1 0 +1
       33 LOADB                            R1 1
       34 JUMPIFNOT                        R1 ; [+6]
       35 GETUPVAL                         R2 8
       36 LOADB                            R3 1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R0 9
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

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
       17 GETUPVAL                         R6 6
       18 CALL                             R6 0 1
       19 GETTABLEKS                       R7 R6 K3 ["reducedMotion"]
       21 GETUPVAL                         R8 7
       22 CALL                             R8 0 1
       23 GETUPVAL                         R10 8
       24 GETTABLEKS                       R9 R10 K4 ["useState"]
       26 LOADN                            R10 0
       27 CALL                             R9 1 2
       28 GETUPVAL                         R12 8
       29 GETTABLEKS                       R11 R12 K5 ["useMemo"]
       31 NEWCLOSURE                       R12 P0
       32 CAPTURE                          VAL R9
       33 NEWTABLE                         R13 0 1
       35 MOVE                             R14 R9
       36 SETLIST                          R13 R14 1 [1]
       38 CALL                             R11 2 1
       39 GETTABLEKS                       R13 R2 K6 ["snapPoints"]
       41 OR                               R12 R13 R11
       42 GETUPVAL                         R14 8
       43 GETTABLEKS                       R13 R14 K7 ["useCallback"]
       45 NEWCLOSURE                       R14 P1
       46 CAPTURE                          VAL R8
       47 NEWTABLE                         R15 0 1
       49 MOVE                             R16 R8
       50 SETLIST                          R15 R16 1 [1]
       52 CALL                             R13 2 1
       53 LOADN                            R14 0
       54 MOVE                             R15 R12
       55 LOADNIL                          R16
       56 LOADNIL                          R17
       57 FORGPREP                         R15
       58 MOVE                             R20 R13
       59 MOVE                             R21 R19
       60 CALL                             R20 1 1
       61 JUMPIFNOTLT                      R14 R20 ; [+2]
       63 MOVE                             R14 R20
       64 FORGLOOP                         R15 2 ; [-7]
       66 FASTCALL2                        MATH_MIN R14 R8 ; [+5]
       68 MOVE                             R16 R14
       69 MOVE                             R17 R8
       70 GETIMPORT                        R15 K10 [math.min]
       72 CALL                             R15 2 1
       73 MOVE                             R14 R15
       74 GETUPVAL                         R16 9
       75 MOVE                             R17 R3
       76 CALL                             R16 1 1
       77 GETTABLEKS                       R15 R16 K11 ["bottom"]
       79 GETUPVAL                         R17 8
       80 GETTABLEKS                       R16 R17 K12 ["useRef"]
       82 LOADN                            R17 0
       83 CALL                             R16 1 1
       84 GETUPVAL                         R18 8
       85 GETTABLEKS                       R17 R18 K12 ["useRef"]
       87 LOADB                            R18 0
       88 CALL                             R17 1 1
       89 GETUPVAL                         R18 10
       90 LOADN                            R19 1
       91 NEWCLOSURE                       R20 P2
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R2
       94 CALL                             R18 2 2
       95 GETUPVAL                         R21 8
       96 GETTABLEKS                       R20 R21 K13 ["useBinding"]
       98 MINUS                            R21 R15
       99 CALL                             R20 1 2
      100 GETUPVAL                         R23 8
      101 GETTABLEKS                       R22 R23 K13 ["useBinding"]
      103 LOADN                            R23 0
      104 CALL                             R22 1 2
      105 GETUPVAL                         R25 8
      106 GETTABLEKS                       R24 R25 K13 ["useBinding"]
      108 LOADB                            R25 0
      109 CALL                             R24 1 2
      110 GETUPVAL                         R27 8
      111 GETTABLEKS                       R26 R27 K13 ["useBinding"]
      113 LOADB                            R27 0
      114 CALL                             R26 1 2
      115 GETUPVAL                         R29 8
      116 GETTABLEKS                       R28 R29 K12 ["useRef"]
      118 LOADN                            R29 0
      119 CALL                             R28 1 1
      120 GETUPVAL                         R30 8
      121 GETTABLEKS                       R29 R30 K12 ["useRef"]
      123 LOADNIL                          R30
      124 CALL                             R29 1 1
      125 GETUPVAL                         R31 8
      126 GETTABLEKS                       R30 R31 K13 ["useBinding"]
      128 LOADN                            R31 0
      129 CALL                             R30 1 2
      130 GETUPVAL                         R33 8
      131 GETTABLEKS                       R32 R33 K13 ["useBinding"]
      133 LOADB                            R33 0
      134 CALL                             R32 1 2
      135 GETUPVAL                         R35 8
      136 GETTABLEKS                       R34 R35 K12 ["useRef"]
      138 LOADB                            R35 0
      139 CALL                             R34 1 1
      140 GETUPVAL                         R36 8
      141 GETTABLEKS                       R35 R36 K12 ["useRef"]
      143 LOADN                            R36 0
      144 CALL                             R35 1 1
      145 GETUPVAL                         R37 8
      146 GETTABLEKS                       R36 R37 K12 ["useRef"]
      148 LOADNIL                          R37
      149 CALL                             R36 1 1
      150 GETUPVAL                         R38 8
      151 GETTABLEKS                       R37 R38 K12 ["useRef"]
      153 LOADB                            R38 0
      154 CALL                             R37 1 1
      155 GETUPVAL                         R39 8
      156 GETTABLEKS                       R38 R39 K12 ["useRef"]
      158 LOADN                            R39 0
      159 CALL                             R38 1 1
      160 GETUPVAL                         R40 8
      161 GETTABLEKS                       R39 R40 K7 ["useCallback"]
      163 NEWCLOSURE                       R40 P3
      164 CAPTURE                          VAL R36
      165 CAPTURE                          VAL R35
      166 CAPTURE                          VAL R37
      167 NEWTABLE                         R41 0 0
      169 CALL                             R39 2 1
      170 GETUPVAL                         R41 8
      171 GETTABLEKS                       R40 R41 K7 ["useCallback"]
      173 NEWCLOSURE                       R41 P4
      174 CAPTURE                          VAL R39
      175 CAPTURE                          VAL R37
      176 CAPTURE                          UPVAL U11
      177 CAPTURE                          VAL R29
      178 CAPTURE                          VAL R36
      179 CAPTURE                          VAL R38
      180 NEWTABLE                         R42 0 1
      182 MOVE                             R43 R39
      183 SETLIST                          R42 R43 1 [1]
      185 CALL                             R40 2 1
      186 GETUPVAL                         R42 8
      187 GETTABLEKS                       R41 R42 K7 ["useCallback"]
      189 NEWCLOSURE                       R42 P5
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R15
      192 NEWTABLE                         R43 0 2
      194 MOVE                             R44 R15
      195 MOVE                             R45 R13
      196 SETLIST                          R43 R44 2 [1]
      198 CALL                             R41 2 1
      199 GETUPVAL                         R43 8
      200 GETTABLEKS                       R42 R43 K7 ["useCallback"]
      202 NEWCLOSURE                       R43 P6
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R40
      205 CAPTURE                          VAL R41
      206 CAPTURE                          VAL R12
      207 NEWTABLE                         R44 0 2
      209 MOVE                             R45 R41
      210 MOVE                             R46 R12
      211 SETLIST                          R44 R45 2 [1]
      213 CALL                             R42 2 1
      214 GETUPVAL                         R44 8
      215 GETTABLEKS                       R43 R44 K7 ["useCallback"]
      217 NEWCLOSURE                       R44 P7
      218 CAPTURE                          VAL R39
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R29
      221 CAPTURE                          VAL R41
      222 CAPTURE                          VAL R12
      223 NEWTABLE                         R45 0 3
      225 MOVE                             R46 R39
      226 MOVE                             R47 R41
      227 MOVE                             R48 R12
      228 SETLIST                          R45 R46 3 [1]
      230 CALL                             R43 2 1
      231 GETUPVAL                         R45 8
      232 GETTABLEKS                       R44 R45 K7 ["useCallback"]
      234 NEWCLOSURE                       R45 P8
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R7
      237 CAPTURE                          VAL R39
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R19
      240 CAPTURE                          UPVAL U12
      241 CAPTURE                          VAL R38
      242 CAPTURE                          VAL R35
      243 CAPTURE                          VAL R40
      244 CAPTURE                          VAL R4
      245 NEWTABLE                         R46 0 3
      247 MOVE                             R47 R40
      248 MOVE                             R48 R39
      249 MOVE                             R49 R7
      250 SETLIST                          R46 R47 3 [1]
      252 CALL                             R44 2 1
      253 GETUPVAL                         R46 8
      254 GETTABLEKS                       R45 R46 K7 ["useCallback"]
      256 NEWCLOSURE                       R46 P9
      257 CAPTURE                          VAL R30
      258 CAPTURE                          VAL R28
      259 CAPTURE                          UPVAL U11
      260 CAPTURE                          REF R14
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R35
      263 CAPTURE                          VAL R34
      264 CAPTURE                          VAL R33
      265 NEWTABLE                         R47 0 2
      267 MOVE                             R48 R14
      268 MOVE                             R49 R15
      269 SETLIST                          R47 R48 2 [1]
      271 CALL                             R45 2 1
      272 GETUPVAL                         R47 8
      273 GETTABLEKS                       R46 R47 K7 ["useCallback"]
      275 NEWCLOSURE                       R47 P10
      276 CAPTURE                          VAL R35
      277 CAPTURE                          VAL R28
      278 CAPTURE                          VAL R12
      279 CAPTURE                          VAL R41
      280 CAPTURE                          VAL R34
      281 CAPTURE                          VAL R38
      282 CAPTURE                          VAL R44
      283 CAPTURE                          VAL R42
      284 NEWTABLE                         R48 0 4
      286 MOVE                             R49 R12
      287 MOVE                             R50 R42
      288 MOVE                             R51 R41
      289 MOVE                             R52 R44
      290 SETLIST                          R48 R49 4 [1]
      292 CALL                             R46 2 1
      293 GETUPVAL                         R48 8
      294 GETTABLEKS                       R47 R48 K14 ["useEffect"]
      296 NEWCLOSURE                       R48 P11
      297 CAPTURE                          VAL R3
      298 CAPTURE                          VAL R7
      299 CAPTURE                          VAL R43
      300 CAPTURE                          VAL R2
      301 CAPTURE                          VAL R19
      302 CAPTURE                          UPVAL U12
      303 CAPTURE                          VAL R42
      304 CAPTURE                          VAL R4
      305 CAPTURE                          VAL R13
      306 CAPTURE                          VAL R12
      307 CAPTURE                          REF R14
      308 CAPTURE                          VAL R33
      309 CAPTURE                          VAL R39
      310 NEWTABLE                         R49 0 7
      312 MOVE                             R50 R3
      313 MOVE                             R51 R12
      314 GETTABLEKS                       R52 R2 K15 ["defaultSnapPointIndex"]
      316 MOVE                             R53 R42
      317 MOVE                             R54 R13
      318 MOVE                             R55 R43
      319 MOVE                             R56 R7
      320 SETLIST                          R49 R50 7 [1]
      322 CALL                             R47 2 0
      323 GETUPVAL                         R48 8
      324 GETTABLEKS                       R47 R48 K14 ["useEffect"]
      326 NEWCLOSURE                       R48 P12
      327 CAPTURE                          VAL R35
      328 CAPTURE                          VAL R45
      329 CAPTURE                          VAL R34
      330 CAPTURE                          VAL R39
      331 CAPTURE                          UPVAL U11
      332 CAPTURE                          VAL R29
      333 CAPTURE                          VAL R28
      334 CAPTURE                          REF R14
      335 CAPTURE                          VAL R15
      336 CAPTURE                          VAL R17
      337 CAPTURE                          VAL R33
      338 CAPTURE                          VAL R46
      339 NEWTABLE                         R49 0 4
      341 MOVE                             R50 R3
      342 MOVE                             R51 R46
      343 MOVE                             R52 R45
      344 MOVE                             R53 R39
      345 SETLIST                          R49 R50 4 [1]
      347 CALL                             R47 2 0
      348 GETUPVAL                         R48 8
      349 GETTABLEKS                       R47 R48 K12 ["useRef"]
      351 LOADNIL                          R48
      352 CALL                             R47 1 1
      353 GETUPVAL                         R49 8
      354 GETTABLEKS                       R48 R49 K4 ["useState"]
      356 LOADNIL                          R49
      357 CALL                             R48 1 2
      358 GETUPVAL                         R51 8
      359 GETTABLEKS                       R50 R51 K4 ["useState"]
      361 LOADNIL                          R51
      362 CALL                             R50 1 2
      363 GETUPVAL                         R53 13
      364 GETTABLEKS                       R52 R53 K16 ["useComposedRef"]
      366 MOVE                             R53 R1
      367 MOVE                             R54 R51
      368 CALL                             R52 2 1
      369 GETUPVAL                         R54 8
      370 GETTABLEKS                       R53 R54 K17 ["useImperativeHandle"]
      372 GETTABLEKS                       R54 R2 K18 ["sheetRef"]
      374 NEWCLOSURE                       R55 P13
      375 CAPTURE                          VAL R44
      376 NEWTABLE                         R56 0 0
      378 CALL                             R53 3 0
      379 GETUPVAL                         R54 8
      380 GETTABLEKS                       R53 R54 K5 ["useMemo"]
      382 NEWCLOSURE                       R54 P14
      383 CAPTURE                          VAL R22
      384 CAPTURE                          VAL R23
      385 CAPTURE                          VAL R24
      386 CAPTURE                          VAL R25
      387 CAPTURE                          VAL R20
      388 CAPTURE                          VAL R21
      389 CAPTURE                          VAL R15
      390 CAPTURE                          VAL R32
      391 CAPTURE                          VAL R30
      392 CAPTURE                          VAL R31
      393 CAPTURE                          VAL R45
      394 CAPTURE                          VAL R26
      395 CAPTURE                          VAL R27
      396 CAPTURE                          VAL R44
      397 CAPTURE                          UPVAL U14
      398 CAPTURE                          VAL R50
      399 CAPTURE                          VAL R2
      400 CAPTURE                          VAL R47
      401 CAPTURE                          VAL R48
      402 CAPTURE                          VAL R49
      403 NEWTABLE                         R55 0 7
      405 GETTABLEKS                       R56 R2 K19 ["testId"]
      407 MOVE                             R57 R44
      408 MOVE                             R58 R15
      409 MOVE                             R59 R45
      410 MOVE                             R60 R50
      411 MOVE                             R61 R47
      412 MOVE                             R62 R48
      413 SETLIST                          R55 R56 7 [1]
      415 CALL                             R53 2 1
      416 MOVE                             R54 R3
      417 JUMPIFNOT                        R54 ; [+443]
      418 GETUPVAL                         R55 15
      419 GETTABLEKS                       R54 R55 K20 ["createPortal"]
      421 GETUPVAL                         R56 8
      422 GETTABLEKS                       R55 R56 K21 ["createElement"]
      424 GETUPVAL                         R56 16
      425 DUPTABLE                         R57 K27 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      426 GETTABLEKS                       R58 R5 K28 ["zIndex"]
      428 SETTABLEKS                       R58 R57 K22 ["ZIndex"]
      430 SETTABLEKS                       R52 R57 K23 ["ref"]
      432 GETUPVAL                         R59 17
      433 GETTABLEKS                       R58 R59 K29 ["nonSelectable"]
      435 SETTABLEKS                       R58 R57 K24 ["selection"]
      437 GETUPVAL                         R59 17
      438 GETTABLEKS                       R58 R59 K30 ["isolatedSelectionGroup"]
      440 SETTABLEKS                       R58 R57 K25 ["selectionGroup"]
      442 LOADK                            R58 K31 ["size-full"]
      443 SETTABLEKS                       R58 R57 K26 ["tag"]
      445 LOADK                            R59 K32 ["%*--surface"]
      446 GETTABLEKS                       R61 R2 K19 ["testId"]
      448 NAMECALL                         R59 R59 K33 ["format"]
      450 CALL                             R59 2 1
      451 MOVE                             R58 R59
      452 SETTABLEKS                       R58 R57 K19 ["testId"]
      454 GETUPVAL                         R59 8
      455 GETTABLEKS                       R58 R59 K21 ["createElement"]
      457 LOADK                            R59 K34 ["ScrollingFrame"]
      458 NEWTABLE                         R60 8 0
      460 GETIMPORT                        R61 K37 [UDim2.fromScale]
      462 LOADN                            R62 1
      463 LOADN                            R63 1
      464 CALL                             R61 2 1
      465 SETTABLEKS                       R61 R60 K38 ["Size"]
      467 GETUPVAL                         R63 11
      468 GETTABLEKS                       R62 R63 K39 ["FoundationSheetPreventCloseOnResize"]
      470 JUMPIFNOT                        R62 ; [+8]
      471 GETIMPORT                        R61 K41 [UDim2.new]
      473 LOADN                            R62 1
      474 LOADN                            R63 0
      475 LOADN                            R64 1
      476 ADD                              R65 R14 R15
      477 CALL                             R61 4 1
      478 JUMP                             ; [+8]
      479 GETIMPORT                        R61 K41 [UDim2.new]
      481 LOADN                            R62 1
      482 LOADN                            R63 0
      483 LOADN                            R64 0
      484 ADD                              R66 R8 R14
      485 ADD                              R65 R66 R15
      486 CALL                             R61 4 1
      487 SETTABLEKS                       R61 R60 K42 ["CanvasSize"]
      489 LOADB                            R61 0
      490 SETTABLEKS                       R61 R60 K43 ["ClipsDescendants"]
      492 LOADN                            R61 1
      493 SETTABLEKS                       R61 R60 K44 ["BackgroundTransparency"]
      495 GETIMPORT                        R61 K48 [Enum.ScrollingDirection.Y]
      497 SETTABLEKS                       R61 R60 K46 ["ScrollingDirection"]
      499 LOADN                            R61 0
      500 SETTABLEKS                       R61 R60 K49 ["ScrollBarThickness"]
      502 SETTABLEKS                       R29 R60 K23 ["ref"]
      504 GETUPVAL                         R63 8
      505 GETTABLEKS                       R62 R63 K50 ["Change"]
      507 GETTABLEKS                       R61 R62 K51 ["CanvasPosition"]
      509 NEWCLOSURE                       R62 P15
      510 CAPTURE                          VAL R28
      511 CAPTURE                          VAL R21
      512 CAPTURE                          VAL R15
      513 CAPTURE                          VAL R4
      514 CAPTURE                          VAL R45
      515 CAPTURE                          VAL R44
      516 SETTABLE                         R62 R60 R61
      517 DUPTABLE                         R61 K55 [{"SheetContainer", "Shadow", "Backdrop"}]
      518 GETUPVAL                         R63 8
      519 GETTABLEKS                       R62 R63 K21 ["createElement"]
      521 GETUPVAL                         R63 16
      522 DUPTABLE                         R64 K57 [{"Size", "Position", "ZIndex"}]
      523 GETUPVAL                         R67 11
      524 GETTABLEKS                       R66 R67 K39 ["FoundationSheetPreventCloseOnResize"]
      526 JUMPIFNOT                        R66 ; [+9]
      527 GETIMPORT                        R65 K41 [UDim2.new]
      529 LOADN                            R66 1
      530 LOADN                            R67 0
      531 LOADN                            R68 1
      532 SUBRK                            R70 R58 K14 ["useEffect"]
      533 SUB                              R69 R70 R15
      534 CALL                             R65 4 1
      535 JUMP                             ; [+7]
      536 GETIMPORT                        R65 K41 [UDim2.new]
      538 LOADN                            R66 1
      539 LOADN                            R67 0
      540 LOADN                            R68 0
      541 ADDK                             R69 R8 K58 [200]
      542 CALL                             R65 4 1
      543 SETTABLEKS                       R65 R64 K38 ["Size"]
      545 GETUPVAL                         R67 11
      546 GETTABLEKS                       R66 R67 K39 ["FoundationSheetPreventCloseOnResize"]
      548 JUMPIFNOT                        R66 ; [+8]
      549 GETIMPORT                        R65 K41 [UDim2.new]
      551 LOADN                            R66 0
      552 LOADN                            R67 0
      553 LOADN                            R68 1
      554 MINUS                            R69 R14
      555 CALL                             R65 4 1
      556 JUMP                             ; [+5]
      557 GETIMPORT                        R65 K60 [UDim2.fromOffset]
      559 LOADN                            R66 0
      560 ADD                              R67 R8 R15
      561 CALL                             R65 2 1
      562 SETTABLEKS                       R65 R64 K56 ["Position"]
      564 LOADN                            R65 3
      565 SETTABLEKS                       R65 R64 K22 ["ZIndex"]
      567 DUPTABLE                         R65 K61 [{"Sheet"}]
      568 GETUPVAL                         R67 8
      569 GETTABLEKS                       R66 R67 K21 ["createElement"]
      571 GETUPVAL                         R67 16
      572 DUPTABLE                         R68 K66 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      573 GETTABLEKS                       R70 R2 K6 ["snapPoints"]
      575 JUMPIFNOTEQKNIL                  R70 ; [+7]
      577 GETIMPORT                        R69 K37 [UDim2.fromScale]
      579 LOADN                            R70 1
      580 LOADN                            R71 0
      581 CALL                             R69 2 1
      582 JUMP                             ; [+7]
      583 GETIMPORT                        R69 K41 [UDim2.new]
      585 LOADN                            R70 1
      586 LOADN                            R71 0
      587 LOADN                            R72 0
      588 ADDK                             R73 R14 K58 [200]
      589 CALL                             R69 4 1
      590 SETTABLEKS                       R69 R68 K38 ["Size"]
      592 GETTABLEKS                       R70 R2 K6 ["snapPoints"]
      594 JUMPIFNOTEQKNIL                  R70 ; [+4]
      596 GETIMPORT                        R69 K67 [Enum.AutomaticSize.Y]
      598 JUMP                             ; [+1]
      599 LOADNIL                          R69
      600 SETTABLEKS                       R69 R68 K62 ["AutomaticSize"]
      602 GETTABLEKS                       R70 R2 K6 ["snapPoints"]
      604 JUMPIFNOTEQKNIL                  R70 ; [+4]
      606 NEWCLOSURE                       R69 P16
      607 CAPTURE                          VAL R10
      608 JUMP                             ; [+1]
      609 LOADNIL                          R69
      610 SETTABLEKS                       R69 R68 K63 ["onAbsoluteSizeChanged"]
      612 DUPTABLE                         R69 K69 [{"affordance"}]
      613 GETUPVAL                         R71 18
      614 GETTABLEKS                       R70 R71 K70 ["None"]
      616 SETTABLEKS                       R70 R69 K68 ["affordance"]
      618 SETTABLEKS                       R69 R68 K64 ["stateLayer"]
      620 GETUPVAL                         R70 19
      621 GETTABLEKS                       R69 R70 K71 ["noop"]
      623 SETTABLEKS                       R69 R68 K65 ["onActivated"]
      625 GETTABLEKS                       R69 R2 K19 ["testId"]
      627 SETTABLEKS                       R69 R68 K19 ["testId"]
      629 LOADK                            R69 K72 ["col items-center padding-top-small radius-large clip bg-surface-100"]
      630 SETTABLEKS                       R69 R68 K26 ["tag"]
      632 DUPTABLE                         R69 K75 [{"Gripper", "Content"}]
      633 GETUPVAL                         R71 8
      634 GETTABLEKS                       R70 R71 K21 ["createElement"]
      636 GETUPVAL                         R71 16
      637 DUPTABLE                         R72 K77 [{"ZIndex", "backgroundStyle", "tag", "testId"}]
      638 LOADN                            R73 3
      639 SETTABLEKS                       R73 R72 K22 ["ZIndex"]
      641 GETTABLEKS                       R75 R4 K78 ["Color"]
      643 GETTABLEKS                       R74 R75 K74 ["Content"]
      645 GETTABLEKS                       R73 R74 K79 ["Muted"]
      647 SETTABLEKS                       R73 R72 K76 ["backgroundStyle"]
      649 LOADK                            R73 K80 ["align-y-center size-1000-100 padding-y-small radius-small"]
      650 SETTABLEKS                       R73 R72 K26 ["tag"]
      652 LOADK                            R74 K81 ["%*--gripper"]
      653 GETTABLEKS                       R76 R2 K19 ["testId"]
      655 NAMECALL                         R74 R74 K33 ["format"]
      657 CALL                             R74 2 1
      658 MOVE                             R73 R74
      659 SETTABLEKS                       R73 R72 K19 ["testId"]
      661 DUPTABLE                         R73 K83 [{"TouchTarget"}]
      662 GETUPVAL                         R75 8
      663 GETTABLEKS                       R74 R75 K21 ["createElement"]
      665 GETUPVAL                         R75 16
      666 DUPTABLE                         R76 K84 [{"tag", "stateLayer", "onActivated"}]
      667 LOADK                            R77 K85 ["size-1000-600"]
      668 SETTABLEKS                       R77 R76 K26 ["tag"]
      670 DUPTABLE                         R77 K69 [{"affordance"}]
      671 GETUPVAL                         R79 18
      672 GETTABLEKS                       R78 R79 K70 ["None"]
      674 SETTABLEKS                       R78 R77 K68 ["affordance"]
      676 SETTABLEKS                       R77 R76 K64 ["stateLayer"]
      678 NEWCLOSURE                       R77 P17
      679 CAPTURE                          VAL R34
      680 CAPTURE                          VAL R12
      681 CAPTURE                          VAL R16
      682 CAPTURE                          VAL R7
      683 CAPTURE                          VAL R43
      684 CAPTURE                          VAL R42
      685 CAPTURE                          VAL R13
      686 CAPTURE                          REF R14
      687 CAPTURE                          VAL R33
      688 CAPTURE                          VAL R44
      689 SETTABLEKS                       R77 R76 K65 ["onActivated"]
      691 CALL                             R74 2 1
      692 SETTABLEKS                       R74 R73 K82 ["TouchTarget"]
      694 CALL                             R70 3 1
      695 SETTABLEKS                       R70 R69 K73 ["Gripper"]
      697 GETUPVAL                         R71 8
      698 GETTABLEKS                       R70 R71 K21 ["createElement"]
      700 GETUPVAL                         R72 20
      701 GETTABLEKS                       R71 R72 K86 ["Provider"]
      703 DUPTABLE                         R72 K88 [{"value"}]
      704 SETTABLEKS                       R53 R72 K87 ["value"]
      706 GETUPVAL                         R74 8
      707 GETTABLEKS                       R73 R74 K21 ["createElement"]
      709 GETUPVAL                         R74 21
      710 DUPTABLE                         R75 K90 [{"owner"}]
      711 SETTABLEKS                       R5 R75 K89 ["owner"]
      713 GETTABLEKS                       R76 R2 K91 ["children"]
      715 CALL                             R73 3 -1
      716 CALL                             R70 -1 1
      717 SETTABLEKS                       R70 R69 K74 ["Content"]
      719 CALL                             R66 3 1
      720 SETTABLEKS                       R66 R65 K0 ["Sheet"]
      722 CALL                             R62 3 1
      723 SETTABLEKS                       R62 R61 K52 ["SheetContainer"]
      725 GETUPVAL                         R63 8
      726 GETTABLEKS                       R62 R63 K21 ["createElement"]
      728 GETUPVAL                         R63 22
      729 DUPTABLE                         R64 K95 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      730 GETUPVAL                         R65 23
      731 SETTABLEKS                       R65 R64 K92 ["Image"]
      733 GETIMPORT                        R65 K41 [UDim2.new]
      735 LOADN                            R66 1
      736 GETUPVAL                         R68 24
      737 MULK                             R67 R68 K96 [2]
      738 LOADN                            R68 0
      739 ADDK                             R70 R14 K58 [200]
      740 GETUPVAL                         R72 24
      741 MULK                             R71 R72 K96 [2]
      742 ADD                              R69 R70 R71
      743 CALL                             R65 4 1
      744 SETTABLEKS                       R65 R64 K38 ["Size"]
      746 GETUPVAL                         R67 11
      747 GETTABLEKS                       R66 R67 K39 ["FoundationSheetPreventCloseOnResize"]
      749 JUMPIFNOT                        R66 ; [+11]
      750 GETIMPORT                        R65 K41 [UDim2.new]
      752 GETUPVAL                         R67 24
      753 MINUS                            R66 R67
      754 LOADN                            R67 0
      755 LOADN                            R68 1
      756 MINUS                            R70 R14
      757 GETUPVAL                         R71 24
      758 SUB                              R69 R70 R71
      759 CALL                             R65 4 1
      760 JUMP                             ; [+8]
      761 GETIMPORT                        R65 K60 [UDim2.fromOffset]
      763 GETUPVAL                         R67 24
      764 MINUS                            R66 R67
      765 ADD                              R68 R8 R15
      766 GETUPVAL                         R69 24
      767 SUB                              R67 R68 R69
      768 CALL                             R65 2 1
      769 SETTABLEKS                       R65 R64 K56 ["Position"]
      771 LOADN                            R65 2
      772 SETTABLEKS                       R65 R64 K22 ["ZIndex"]
      774 DUPTABLE                         R65 K99 [{"center", "scale"}]
      775 GETIMPORT                        R66 K101 [Rect.new]
      777 GETUPVAL                         R67 24
      778 GETUPVAL                         R68 24
      779 GETUPVAL                         R70 24
      780 ADDK                             R69 R70 K102 [1]
      781 GETUPVAL                         R71 24
      782 ADDK                             R70 R71 K102 [1]
      783 CALL                             R66 4 1
      784 SETTABLEKS                       R66 R65 K97 ["center"]
      786 LOADN                            R66 2
      787 SETTABLEKS                       R66 R65 K98 ["scale"]
      789 SETTABLEKS                       R65 R64 K93 ["slice"]
      791 GETTABLEKS                       R68 R4 K78 ["Color"]
      793 GETTABLEKS                       R67 R68 K103 ["Extended"]
      795 GETTABLEKS                       R66 R67 K104 ["Black"]
      797 GETTABLEKS                       R65 R66 K105 ["Black_10"]
      799 SETTABLEKS                       R65 R64 K94 ["imageStyle"]
      801 CALL                             R62 2 1
      802 SETTABLEKS                       R62 R61 K53 ["Shadow"]
      804 GETUPVAL                         R63 8
      805 GETTABLEKS                       R62 R63 K21 ["createElement"]
      807 GETUPVAL                         R63 16
      808 DUPTABLE                         R64 K106 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      809 GETIMPORT                        R65 K37 [UDim2.fromScale]
      811 LOADN                            R66 1
      812 LOADN                            R67 2
      813 CALL                             R65 2 1
      814 SETTABLEKS                       R65 R64 K38 ["Size"]
      816 GETIMPORT                        R65 K37 [UDim2.fromScale]
      818 LOADN                            R66 0
      819 LOADK                            R67 K107 [-0.5]
      820 CALL                             R65 2 1
      821 SETTABLEKS                       R65 R64 K56 ["Position"]
      823 LOADN                            R65 1
      824 SETTABLEKS                       R65 R64 K22 ["ZIndex"]
      826 DUPTABLE                         R65 K69 [{"affordance"}]
      827 GETUPVAL                         R67 18
      828 GETTABLEKS                       R66 R67 K70 ["None"]
      830 SETTABLEKS                       R66 R65 K68 ["affordance"]
      832 SETTABLEKS                       R65 R64 K64 ["stateLayer"]
      834 NEWCLOSURE                       R67 P18
      835 CAPTURE                          VAL R4
      836 NAMECALL                         R65 R18 K108 ["map"]
      838 CALL                             R65 2 1
      839 SETTABLEKS                       R65 R64 K76 ["backgroundStyle"]
      841 NEWCLOSURE                       R65 P19
      842 CAPTURE                          VAL R44
      843 SETTABLEKS                       R65 R64 K65 ["onActivated"]
      845 LOADK                            R66 K109 ["%*--backdrop"]
      846 GETTABLEKS                       R68 R2 K19 ["testId"]
      848 NAMECALL                         R66 R66 K33 ["format"]
      850 CALL                             R66 2 1
      851 MOVE                             R65 R66
      852 SETTABLEKS                       R65 R64 K19 ["testId"]
      854 CALL                             R62 2 1
      855 SETTABLEKS                       R62 R61 K54 ["Backdrop"]
      857 CALL                             R58 3 -1
      858 CALL                             R55 -1 1
      859 MOVE                             R56 R3
      860 CALL                             R54 2 1
      861 CLOSEUPVALS                      R14
      862 RETURN                           R54 1

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
      199 CAPTURE                          VAL R25
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R22
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
