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
        0 DUPTABLE                         R0 K24 [{"actionsHeight", "setActionsHeight", "hasActionsDivider", "setHasActionsDivider", "sheetHeightAvailable", "setSheetHeightAvailable", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "hasFullBleed", "fullBleedHeight", "setFullBleedHeight", "closeSheet", "hasRadius", "sheetType", "innerSurface", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
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
       42 GETUPVAL                         R3 13
       43 GETTABLEKS                       R2 R3 K25 ["FoundationSheetFullBleed"]
       45 JUMPIFNOT                        R2 ; [+2]
       46 GETUPVAL                         R1 14
       47 JUMP                             ; [+1]
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K13 ["hasFullBleed"]
       51 GETUPVAL                         R3 13
       52 GETTABLEKS                       R2 R3 K25 ["FoundationSheetFullBleed"]
       54 JUMPIFNOT                        R2 ; [+2]
       55 GETUPVAL                         R1 15
       56 JUMP                             ; [+1]
       57 LOADNIL                          R1
       58 SETTABLEKS                       R1 R0 K14 ["fullBleedHeight"]
       60 GETUPVAL                         R3 13
       61 GETTABLEKS                       R2 R3 K25 ["FoundationSheetFullBleed"]
       63 JUMPIFNOT                        R2 ; [+2]
       64 GETUPVAL                         R1 16
       65 JUMP                             ; [+1]
       66 LOADNIL                          R1
       67 SETTABLEKS                       R1 R0 K15 ["setFullBleedHeight"]
       69 GETUPVAL                         R1 17
       70 SETTABLEKS                       R1 R0 K16 ["closeSheet"]
       72 GETUPVAL                         R3 13
       73 GETTABLEKS                       R2 R3 K25 ["FoundationSheetFullBleed"]
       75 JUMPIFNOT                        R2 ; [+2]
       76 LOADB                            R1 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R1
       79 SETTABLEKS                       R1 R0 K17 ["hasRadius"]
       81 GETUPVAL                         R2 18
       82 GETTABLEKS                       R1 R2 K26 ["Bottom"]
       84 SETTABLEKS                       R1 R0 K18 ["sheetType"]
       86 GETUPVAL                         R1 19
       87 SETTABLEKS                       R1 R0 K19 ["innerSurface"]
       89 GETUPVAL                         R2 20
       90 GETTABLEKS                       R1 R2 K20 ["testId"]
       92 SETTABLEKS                       R1 R0 K20 ["testId"]
       94 GETUPVAL                         R1 21
       95 SETTABLEKS                       R1 R0 K21 ["closeAffordanceRef"]
       97 GETUPVAL                         R1 22
       98 SETTABLEKS                       R1 R0 K22 ["contentStartRef"]
      100 GETUPVAL                         R1 23
      101 SETTABLEKS                       R1 R0 K23 ["setContentStartRef"]
      103 RETURN                           R0 1

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
        3 GETTABLEKS                       R3 R4 K2 ["Y"]
        5 SUBK                             R2 R3 K0 [200]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

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
      115 LOADNIL                          R28
      116 LOADNIL                          R29
      117 LOADNIL                          R30
      118 GETUPVAL                         R32 11
      119 GETTABLEKS                       R31 R32 K14 ["FoundationSheetFullBleed"]
      121 JUMPIFNOT                        R31 ; [+12]
      122 GETUPVAL                         R31 12
      123 GETTABLEKS                       R32 R2 K15 ["children"]
      125 CALL                             R31 1 1
      126 MOVE                             R28 R31
      127 GETUPVAL                         R32 8
      128 GETTABLEKS                       R31 R32 K13 ["useBinding"]
      130 LOADN                            R32 0
      131 CALL                             R31 1 2
      132 MOVE                             R29 R31
      133 MOVE                             R30 R32
      134 GETUPVAL                         R32 8
      135 GETTABLEKS                       R31 R32 K12 ["useRef"]
      137 LOADN                            R32 0
      138 CALL                             R31 1 1
      139 GETUPVAL                         R33 8
      140 GETTABLEKS                       R32 R33 K12 ["useRef"]
      142 LOADNIL                          R33
      143 CALL                             R32 1 1
      144 GETUPVAL                         R34 8
      145 GETTABLEKS                       R33 R34 K13 ["useBinding"]
      147 LOADN                            R34 0
      148 CALL                             R33 1 2
      149 GETUPVAL                         R36 8
      150 GETTABLEKS                       R35 R36 K13 ["useBinding"]
      152 LOADB                            R36 0
      153 CALL                             R35 1 2
      154 GETUPVAL                         R38 8
      155 GETTABLEKS                       R37 R38 K12 ["useRef"]
      157 LOADB                            R38 0
      158 CALL                             R37 1 1
      159 GETUPVAL                         R39 8
      160 GETTABLEKS                       R38 R39 K12 ["useRef"]
      162 LOADN                            R39 0
      163 CALL                             R38 1 1
      164 GETUPVAL                         R40 8
      165 GETTABLEKS                       R39 R40 K12 ["useRef"]
      167 LOADNIL                          R40
      168 CALL                             R39 1 1
      169 GETUPVAL                         R41 8
      170 GETTABLEKS                       R40 R41 K12 ["useRef"]
      172 LOADB                            R41 0
      173 CALL                             R40 1 1
      174 GETUPVAL                         R42 8
      175 GETTABLEKS                       R41 R42 K12 ["useRef"]
      177 LOADN                            R42 0
      178 CALL                             R41 1 1
      179 GETUPVAL                         R43 8
      180 GETTABLEKS                       R42 R43 K7 ["useCallback"]
      182 NEWCLOSURE                       R43 P3
      183 CAPTURE                          VAL R39
      184 CAPTURE                          VAL R38
      185 CAPTURE                          VAL R40
      186 NEWTABLE                         R44 0 0
      188 CALL                             R42 2 1
      189 GETUPVAL                         R44 8
      190 GETTABLEKS                       R43 R44 K7 ["useCallback"]
      192 NEWCLOSURE                       R44 P4
      193 CAPTURE                          VAL R42
      194 CAPTURE                          VAL R40
      195 CAPTURE                          UPVAL U11
      196 CAPTURE                          VAL R32
      197 CAPTURE                          VAL R39
      198 CAPTURE                          VAL R41
      199 NEWTABLE                         R45 0 1
      201 MOVE                             R46 R42
      202 SETLIST                          R45 R46 1 [1]
      204 CALL                             R43 2 1
      205 GETUPVAL                         R45 8
      206 GETTABLEKS                       R44 R45 K7 ["useCallback"]
      208 NEWCLOSURE                       R45 P5
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R15
      211 NEWTABLE                         R46 0 2
      213 MOVE                             R47 R15
      214 MOVE                             R48 R13
      215 SETLIST                          R46 R47 2 [1]
      217 CALL                             R44 2 1
      218 GETUPVAL                         R46 8
      219 GETTABLEKS                       R45 R46 K7 ["useCallback"]
      221 NEWCLOSURE                       R46 P6
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R43
      224 CAPTURE                          VAL R44
      225 CAPTURE                          VAL R12
      226 NEWTABLE                         R47 0 2
      228 MOVE                             R48 R44
      229 MOVE                             R49 R12
      230 SETLIST                          R47 R48 2 [1]
      232 CALL                             R45 2 1
      233 GETUPVAL                         R47 8
      234 GETTABLEKS                       R46 R47 K7 ["useCallback"]
      236 NEWCLOSURE                       R47 P7
      237 CAPTURE                          VAL R42
      238 CAPTURE                          VAL R16
      239 CAPTURE                          VAL R32
      240 CAPTURE                          VAL R44
      241 CAPTURE                          VAL R12
      242 NEWTABLE                         R48 0 3
      244 MOVE                             R49 R42
      245 MOVE                             R50 R44
      246 MOVE                             R51 R12
      247 SETLIST                          R48 R49 3 [1]
      249 CALL                             R46 2 1
      250 GETUPVAL                         R48 8
      251 GETTABLEKS                       R47 R48 K7 ["useCallback"]
      253 NEWCLOSURE                       R48 P8
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R42
      257 CAPTURE                          VAL R32
      258 CAPTURE                          VAL R19
      259 CAPTURE                          UPVAL U13
      260 CAPTURE                          VAL R41
      261 CAPTURE                          VAL R38
      262 CAPTURE                          VAL R43
      263 CAPTURE                          VAL R4
      264 NEWTABLE                         R49 0 3
      266 MOVE                             R50 R43
      267 MOVE                             R51 R42
      268 MOVE                             R52 R7
      269 SETLIST                          R49 R50 3 [1]
      271 CALL                             R47 2 1
      272 GETUPVAL                         R49 8
      273 GETTABLEKS                       R48 R49 K7 ["useCallback"]
      275 NEWCLOSURE                       R49 P9
      276 CAPTURE                          VAL R33
      277 CAPTURE                          VAL R31
      278 CAPTURE                          UPVAL U11
      279 CAPTURE                          REF R14
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R38
      282 CAPTURE                          VAL R37
      283 CAPTURE                          VAL R36
      284 NEWTABLE                         R50 0 2
      286 MOVE                             R51 R14
      287 MOVE                             R52 R15
      288 SETLIST                          R50 R51 2 [1]
      290 CALL                             R48 2 1
      291 GETUPVAL                         R50 8
      292 GETTABLEKS                       R49 R50 K7 ["useCallback"]
      294 NEWCLOSURE                       R50 P10
      295 CAPTURE                          VAL R38
      296 CAPTURE                          VAL R31
      297 CAPTURE                          VAL R12
      298 CAPTURE                          VAL R44
      299 CAPTURE                          VAL R37
      300 CAPTURE                          VAL R41
      301 CAPTURE                          VAL R47
      302 CAPTURE                          VAL R45
      303 NEWTABLE                         R51 0 4
      305 MOVE                             R52 R12
      306 MOVE                             R53 R45
      307 MOVE                             R54 R44
      308 MOVE                             R55 R47
      309 SETLIST                          R51 R52 4 [1]
      311 CALL                             R49 2 1
      312 GETUPVAL                         R51 8
      313 GETTABLEKS                       R50 R51 K16 ["useEffect"]
      315 NEWCLOSURE                       R51 P11
      316 CAPTURE                          VAL R3
      317 CAPTURE                          VAL R7
      318 CAPTURE                          VAL R46
      319 CAPTURE                          VAL R2
      320 CAPTURE                          VAL R19
      321 CAPTURE                          UPVAL U13
      322 CAPTURE                          VAL R45
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R13
      325 CAPTURE                          VAL R12
      326 CAPTURE                          REF R14
      327 CAPTURE                          VAL R36
      328 CAPTURE                          VAL R42
      329 NEWTABLE                         R52 0 7
      331 MOVE                             R53 R3
      332 MOVE                             R54 R12
      333 GETTABLEKS                       R55 R2 K17 ["defaultSnapPointIndex"]
      335 MOVE                             R56 R45
      336 MOVE                             R57 R13
      337 MOVE                             R58 R46
      338 MOVE                             R59 R7
      339 SETLIST                          R52 R53 7 [1]
      341 CALL                             R50 2 0
      342 GETUPVAL                         R51 8
      343 GETTABLEKS                       R50 R51 K16 ["useEffect"]
      345 NEWCLOSURE                       R51 P12
      346 CAPTURE                          VAL R38
      347 CAPTURE                          VAL R48
      348 CAPTURE                          VAL R37
      349 CAPTURE                          VAL R42
      350 CAPTURE                          UPVAL U11
      351 CAPTURE                          VAL R32
      352 CAPTURE                          VAL R31
      353 CAPTURE                          REF R14
      354 CAPTURE                          VAL R15
      355 CAPTURE                          VAL R17
      356 CAPTURE                          VAL R36
      357 CAPTURE                          VAL R49
      358 NEWTABLE                         R52 0 4
      360 MOVE                             R53 R3
      361 MOVE                             R54 R49
      362 MOVE                             R55 R48
      363 MOVE                             R56 R42
      364 SETLIST                          R52 R53 4 [1]
      366 CALL                             R50 2 0
      367 GETUPVAL                         R51 8
      368 GETTABLEKS                       R50 R51 K12 ["useRef"]
      370 LOADNIL                          R51
      371 CALL                             R50 1 1
      372 GETUPVAL                         R52 8
      373 GETTABLEKS                       R51 R52 K4 ["useState"]
      375 LOADNIL                          R52
      376 CALL                             R51 1 2
      377 GETUPVAL                         R54 8
      378 GETTABLEKS                       R53 R54 K4 ["useState"]
      380 LOADNIL                          R54
      381 CALL                             R53 1 2
      382 GETUPVAL                         R56 14
      383 GETTABLEKS                       R55 R56 K18 ["useComposedRef"]
      385 MOVE                             R56 R1
      386 MOVE                             R57 R54
      387 CALL                             R55 2 1
      388 GETUPVAL                         R57 8
      389 GETTABLEKS                       R56 R57 K19 ["useImperativeHandle"]
      391 GETTABLEKS                       R57 R2 K20 ["sheetRef"]
      393 NEWCLOSURE                       R58 P13
      394 CAPTURE                          VAL R47
      395 NEWTABLE                         R59 0 0
      397 CALL                             R56 3 0
      398 GETUPVAL                         R57 8
      399 GETTABLEKS                       R56 R57 K5 ["useMemo"]
      401 NEWCLOSURE                       R57 P14
      402 CAPTURE                          VAL R22
      403 CAPTURE                          VAL R23
      404 CAPTURE                          VAL R24
      405 CAPTURE                          VAL R25
      406 CAPTURE                          VAL R20
      407 CAPTURE                          VAL R21
      408 CAPTURE                          VAL R15
      409 CAPTURE                          VAL R35
      410 CAPTURE                          VAL R33
      411 CAPTURE                          VAL R34
      412 CAPTURE                          VAL R48
      413 CAPTURE                          VAL R26
      414 CAPTURE                          VAL R27
      415 CAPTURE                          UPVAL U11
      416 CAPTURE                          REF R28
      417 CAPTURE                          REF R29
      418 CAPTURE                          REF R30
      419 CAPTURE                          VAL R47
      420 CAPTURE                          UPVAL U15
      421 CAPTURE                          VAL R53
      422 CAPTURE                          VAL R2
      423 CAPTURE                          VAL R50
      424 CAPTURE                          VAL R51
      425 CAPTURE                          VAL R52
      426 NEWTABLE                         R58 0 8
      428 GETTABLEKS                       R59 R2 K21 ["testId"]
      430 MOVE                             R60 R47
      431 MOVE                             R61 R15
      432 MOVE                             R62 R48
      433 MOVE                             R63 R53
      434 MOVE                             R64 R50
      435 MOVE                             R65 R51
      436 MOVE                             R66 R28
      437 SETLIST                          R58 R59 8 [1]
      439 CALL                             R56 2 1
      440 GETUPVAL                         R58 8
      441 GETTABLEKS                       R57 R58 K22 ["createElement"]
      443 GETUPVAL                         R58 16
      444 DUPTABLE                         R59 K28 [{"ZIndex", "backgroundStyle", "Position", "AnchorPoint", "tag", "testId"}]
      445 LOADN                            R60 3
      446 SETTABLEKS                       R60 R59 K23 ["ZIndex"]
      448 GETTABLEKS                       R62 R4 K29 ["Color"]
      450 GETTABLEKS                       R61 R62 K30 ["Content"]
      452 GETTABLEKS                       R60 R61 K31 ["Muted"]
      454 SETTABLEKS                       R60 R59 K24 ["backgroundStyle"]
      456 GETUPVAL                         R62 11
      457 GETTABLEKS                       R61 R62 K14 ["FoundationSheetFullBleed"]
      459 JUMPIFNOT                        R61 ; [+18]
      460 GETIMPORT                        R60 K34 [UDim2.new]
      462 LOADK                            R61 K35 [0.5]
      463 LOADN                            R62 0
      464 LOADN                            R63 0
      465 JUMPIFNOT                        R28 ; [+5]
      466 GETTABLEKS                       R65 R4 K36 ["Padding"]
      468 GETTABLEKS                       R64 R65 K37 ["Small"]
      470 JUMP                             ; [+5]
      471 GETTABLEKS                       R66 R4 K36 ["Padding"]
      473 GETTABLEKS                       R65 R66 K38 ["XSmall"]
      475 MINUS                            R64 R65
      476 CALL                             R60 4 1
      477 JUMP                             ; [+1]
      478 LOADNIL                          R60
      479 SETTABLEKS                       R60 R59 K25 ["Position"]
      481 GETUPVAL                         R62 11
      482 GETTABLEKS                       R61 R62 K14 ["FoundationSheetFullBleed"]
      484 JUMPIFNOT                        R61 ; [+6]
      485 GETIMPORT                        R60 K40 [Vector2.new]
      487 LOADK                            R61 K35 [0.5]
      488 LOADN                            R62 0
      489 CALL                             R60 2 1
      490 JUMP                             ; [+1]
      491 LOADNIL                          R60
      492 SETTABLEKS                       R60 R59 K26 ["AnchorPoint"]
      494 LOADK                            R60 K41 ["align-y-center size-1000-100 padding-y-small radius-small"]
      495 SETTABLEKS                       R60 R59 K27 ["tag"]
      497 LOADK                            R61 K42 ["%*--gripper"]
      498 GETTABLEKS                       R63 R2 K21 ["testId"]
      500 NAMECALL                         R61 R61 K43 ["format"]
      502 CALL                             R61 2 1
      503 MOVE                             R60 R61
      504 SETTABLEKS                       R60 R59 K21 ["testId"]
      506 DUPTABLE                         R60 K45 [{"TouchTarget"}]
      507 GETUPVAL                         R62 8
      508 GETTABLEKS                       R61 R62 K22 ["createElement"]
      510 GETUPVAL                         R62 16
      511 DUPTABLE                         R63 K48 [{"tag", "stateLayer", "onActivated"}]
      512 LOADK                            R64 K49 ["size-1000-600"]
      513 SETTABLEKS                       R64 R63 K27 ["tag"]
      515 DUPTABLE                         R64 K51 [{"affordance"}]
      516 GETUPVAL                         R66 17
      517 GETTABLEKS                       R65 R66 K52 ["None"]
      519 SETTABLEKS                       R65 R64 K50 ["affordance"]
      521 SETTABLEKS                       R64 R63 K46 ["stateLayer"]
      523 NEWCLOSURE                       R64 P15
      524 CAPTURE                          VAL R37
      525 CAPTURE                          VAL R12
      526 CAPTURE                          VAL R16
      527 CAPTURE                          VAL R7
      528 CAPTURE                          VAL R46
      529 CAPTURE                          VAL R45
      530 CAPTURE                          VAL R13
      531 CAPTURE                          REF R14
      532 CAPTURE                          VAL R36
      533 CAPTURE                          VAL R47
      534 SETTABLEKS                       R64 R63 K47 ["onActivated"]
      536 CALL                             R61 2 1
      537 SETTABLEKS                       R61 R60 K44 ["TouchTarget"]
      539 CALL                             R57 3 1
      540 MOVE                             R58 R3
      541 JUMPIFNOT                        R58 ; [+409]
      542 GETUPVAL                         R59 18
      543 GETTABLEKS                       R58 R59 K53 ["createPortal"]
      545 GETUPVAL                         R60 8
      546 GETTABLEKS                       R59 R60 K22 ["createElement"]
      548 GETUPVAL                         R60 16
      549 DUPTABLE                         R61 K57 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId"}]
      550 GETTABLEKS                       R62 R5 K58 ["zIndex"]
      552 SETTABLEKS                       R62 R61 K23 ["ZIndex"]
      554 SETTABLEKS                       R55 R61 K54 ["ref"]
      556 GETUPVAL                         R63 19
      557 GETTABLEKS                       R62 R63 K59 ["nonSelectable"]
      559 SETTABLEKS                       R62 R61 K55 ["selection"]
      561 GETUPVAL                         R63 19
      562 GETTABLEKS                       R62 R63 K60 ["isolatedSelectionGroup"]
      564 SETTABLEKS                       R62 R61 K56 ["selectionGroup"]
      566 LOADK                            R62 K61 ["size-full"]
      567 SETTABLEKS                       R62 R61 K27 ["tag"]
      569 LOADK                            R63 K62 ["%*--surface"]
      570 GETTABLEKS                       R65 R2 K21 ["testId"]
      572 NAMECALL                         R63 R63 K43 ["format"]
      574 CALL                             R63 2 1
      575 MOVE                             R62 R63
      576 SETTABLEKS                       R62 R61 K21 ["testId"]
      578 GETUPVAL                         R63 8
      579 GETTABLEKS                       R62 R63 K22 ["createElement"]
      581 LOADK                            R63 K63 ["ScrollingFrame"]
      582 NEWTABLE                         R64 8 0
      584 GETIMPORT                        R65 K65 [UDim2.fromScale]
      586 LOADN                            R66 1
      587 LOADN                            R67 1
      588 CALL                             R65 2 1
      589 SETTABLEKS                       R65 R64 K66 ["Size"]
      591 GETUPVAL                         R67 11
      592 GETTABLEKS                       R66 R67 K67 ["FoundationSheetPreventCloseOnResize"]
      594 JUMPIFNOT                        R66 ; [+8]
      595 GETIMPORT                        R65 K34 [UDim2.new]
      597 LOADN                            R66 1
      598 LOADN                            R67 0
      599 LOADN                            R68 1
      600 ADD                              R69 R14 R15
      601 CALL                             R65 4 1
      602 JUMP                             ; [+8]
      603 GETIMPORT                        R65 K34 [UDim2.new]
      605 LOADN                            R66 1
      606 LOADN                            R67 0
      607 LOADN                            R68 0
      608 ADD                              R70 R8 R14
      609 ADD                              R69 R70 R15
      610 CALL                             R65 4 1
      611 SETTABLEKS                       R65 R64 K68 ["CanvasSize"]
      613 LOADB                            R65 0
      614 SETTABLEKS                       R65 R64 K69 ["ClipsDescendants"]
      616 LOADN                            R65 1
      617 SETTABLEKS                       R65 R64 K70 ["BackgroundTransparency"]
      619 GETIMPORT                        R65 K74 [Enum.ScrollingDirection.Y]
      621 SETTABLEKS                       R65 R64 K72 ["ScrollingDirection"]
      623 LOADN                            R65 0
      624 SETTABLEKS                       R65 R64 K75 ["ScrollBarThickness"]
      626 SETTABLEKS                       R32 R64 K54 ["ref"]
      628 GETUPVAL                         R67 8
      629 GETTABLEKS                       R66 R67 K76 ["Change"]
      631 GETTABLEKS                       R65 R66 K77 ["CanvasPosition"]
      633 NEWCLOSURE                       R66 P16
      634 CAPTURE                          VAL R31
      635 CAPTURE                          VAL R21
      636 CAPTURE                          VAL R15
      637 CAPTURE                          VAL R4
      638 CAPTURE                          VAL R48
      639 CAPTURE                          VAL R47
      640 SETTABLE                         R66 R64 R65
      641 DUPTABLE                         R65 K81 [{"SheetContainer", "Shadow", "Backdrop"}]
      642 GETUPVAL                         R67 8
      643 GETTABLEKS                       R66 R67 K22 ["createElement"]
      645 GETUPVAL                         R67 16
      646 DUPTABLE                         R68 K82 [{"Size", "Position", "ZIndex"}]
      647 GETUPVAL                         R71 11
      648 GETTABLEKS                       R70 R71 K67 ["FoundationSheetPreventCloseOnResize"]
      650 JUMPIFNOT                        R70 ; [+9]
      651 GETIMPORT                        R69 K34 [UDim2.new]
      653 LOADN                            R70 1
      654 LOADN                            R71 0
      655 LOADN                            R72 1
      656 SUBRK                            R74 R83 K14 ["FoundationSheetFullBleed"]
      657 SUB                              R73 R74 R15
      658 CALL                             R69 4 1
      659 JUMP                             ; [+7]
      660 GETIMPORT                        R69 K34 [UDim2.new]
      662 LOADN                            R70 1
      663 LOADN                            R71 0
      664 LOADN                            R72 0
      665 ADDK                             R73 R8 K83 [200]
      666 CALL                             R69 4 1
      667 SETTABLEKS                       R69 R68 K66 ["Size"]
      669 GETUPVAL                         R71 11
      670 GETTABLEKS                       R70 R71 K67 ["FoundationSheetPreventCloseOnResize"]
      672 JUMPIFNOT                        R70 ; [+8]
      673 GETIMPORT                        R69 K34 [UDim2.new]
      675 LOADN                            R70 0
      676 LOADN                            R71 0
      677 LOADN                            R72 1
      678 MINUS                            R73 R14
      679 CALL                             R69 4 1
      680 JUMP                             ; [+5]
      681 GETIMPORT                        R69 K85 [UDim2.fromOffset]
      683 LOADN                            R70 0
      684 ADD                              R71 R8 R15
      685 CALL                             R69 2 1
      686 SETTABLEKS                       R69 R68 K25 ["Position"]
      688 LOADN                            R69 3
      689 SETTABLEKS                       R69 R68 K23 ["ZIndex"]
      691 DUPTABLE                         R69 K86 [{"Sheet"}]
      692 GETUPVAL                         R71 8
      693 GETTABLEKS                       R70 R71 K22 ["createElement"]
      695 GETUPVAL                         R71 16
      696 DUPTABLE                         R72 K89 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      697 GETTABLEKS                       R74 R2 K6 ["snapPoints"]
      699 JUMPIFNOTEQKNIL                  R74 ; [+7]
      701 GETIMPORT                        R73 K65 [UDim2.fromScale]
      703 LOADN                            R74 1
      704 LOADN                            R75 0
      705 CALL                             R73 2 1
      706 JUMP                             ; [+7]
      707 GETIMPORT                        R73 K34 [UDim2.new]
      709 LOADN                            R74 1
      710 LOADN                            R75 0
      711 LOADN                            R76 0
      712 ADDK                             R77 R14 K83 [200]
      713 CALL                             R73 4 1
      714 SETTABLEKS                       R73 R72 K66 ["Size"]
      716 GETTABLEKS                       R74 R2 K6 ["snapPoints"]
      718 JUMPIFNOTEQKNIL                  R74 ; [+4]
      720 GETIMPORT                        R73 K90 [Enum.AutomaticSize.Y]
      722 JUMP                             ; [+1]
      723 LOADNIL                          R73
      724 SETTABLEKS                       R73 R72 K87 ["AutomaticSize"]
      726 GETTABLEKS                       R74 R2 K6 ["snapPoints"]
      728 JUMPIFNOTEQKNIL                  R74 ; [+4]
      730 NEWCLOSURE                       R73 P17
      731 CAPTURE                          VAL R10
      732 JUMP                             ; [+1]
      733 LOADNIL                          R73
      734 SETTABLEKS                       R73 R72 K88 ["onAbsoluteSizeChanged"]
      736 DUPTABLE                         R73 K51 [{"affordance"}]
      737 GETUPVAL                         R75 17
      738 GETTABLEKS                       R74 R75 K52 ["None"]
      740 SETTABLEKS                       R74 R73 K50 ["affordance"]
      742 SETTABLEKS                       R73 R72 K46 ["stateLayer"]
      744 GETUPVAL                         R74 20
      745 GETTABLEKS                       R73 R74 K91 ["noop"]
      747 SETTABLEKS                       R73 R72 K47 ["onActivated"]
      749 GETTABLEKS                       R73 R2 K21 ["testId"]
      751 SETTABLEKS                       R73 R72 K21 ["testId"]
      753 GETUPVAL                         R75 11
      754 GETTABLEKS                       R74 R75 K14 ["FoundationSheetFullBleed"]
      756 JUMPIFNOT                        R74 ; [+9]
      757 NEWTABLE                         R73 2 0
      759 LOADB                            R74 1
      760 SETTABLEKS                       R74 R73 K92 ["col items-center radius-large clip bg-surface-100"]
      762 NOT                              R74 R28
      763 SETTABLEKS                       R74 R73 K93 ["padding-top-medium"]
      765 JUMP                             ; [+1]
      766 LOADK                            R73 K94 ["col items-center padding-top-small radius-large clip bg-surface-100"]
      767 SETTABLEKS                       R73 R72 K27 ["tag"]
      769 DUPTABLE                         R73 K96 [{"GripperContainer", "Content"}]
      770 GETUPVAL                         R76 11
      771 GETTABLEKS                       R75 R76 K14 ["FoundationSheetFullBleed"]
      773 JUMPIFNOT                        R75 ; [+10]
      774 GETUPVAL                         R75 8
      775 GETTABLEKS                       R74 R75 K22 ["createElement"]
      777 LOADK                            R75 K97 ["Folder"]
      778 LOADNIL                          R76
      779 DUPTABLE                         R77 K99 [{"Gripper"}]
      780 SETTABLEKS                       R57 R77 K98 ["Gripper"]
      782 CALL                             R74 3 1
      783 JUMP                             ; [+1]
      784 MOVE                             R74 R57
      785 SETTABLEKS                       R74 R73 K95 ["GripperContainer"]
      787 GETUPVAL                         R75 8
      788 GETTABLEKS                       R74 R75 K22 ["createElement"]
      790 GETUPVAL                         R76 21
      791 GETTABLEKS                       R75 R76 K100 ["Provider"]
      793 DUPTABLE                         R76 K102 [{"value"}]
      794 SETTABLEKS                       R56 R76 K101 ["value"]
      796 GETUPVAL                         R78 8
      797 GETTABLEKS                       R77 R78 K22 ["createElement"]
      799 GETUPVAL                         R78 22
      800 DUPTABLE                         R79 K104 [{"owner"}]
      801 SETTABLEKS                       R5 R79 K103 ["owner"]
      803 GETTABLEKS                       R80 R2 K15 ["children"]
      805 CALL                             R77 3 -1
      806 CALL                             R74 -1 1
      807 SETTABLEKS                       R74 R73 K30 ["Content"]
      809 CALL                             R70 3 1
      810 SETTABLEKS                       R70 R69 K0 ["Sheet"]
      812 CALL                             R66 3 1
      813 SETTABLEKS                       R66 R65 K78 ["SheetContainer"]
      815 GETUPVAL                         R67 8
      816 GETTABLEKS                       R66 R67 K22 ["createElement"]
      818 GETUPVAL                         R67 23
      819 DUPTABLE                         R68 K108 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      820 GETUPVAL                         R69 24
      821 SETTABLEKS                       R69 R68 K105 ["Image"]
      823 GETIMPORT                        R69 K34 [UDim2.new]
      825 LOADN                            R70 1
      826 GETUPVAL                         R72 25
      827 MULK                             R71 R72 K109 [2]
      828 LOADN                            R72 0
      829 ADDK                             R74 R14 K83 [200]
      830 GETUPVAL                         R76 25
      831 MULK                             R75 R76 K109 [2]
      832 ADD                              R73 R74 R75
      833 CALL                             R69 4 1
      834 SETTABLEKS                       R69 R68 K66 ["Size"]
      836 GETUPVAL                         R71 11
      837 GETTABLEKS                       R70 R71 K67 ["FoundationSheetPreventCloseOnResize"]
      839 JUMPIFNOT                        R70 ; [+11]
      840 GETIMPORT                        R69 K34 [UDim2.new]
      842 GETUPVAL                         R71 25
      843 MINUS                            R70 R71
      844 LOADN                            R71 0
      845 LOADN                            R72 1
      846 MINUS                            R74 R14
      847 GETUPVAL                         R75 25
      848 SUB                              R73 R74 R75
      849 CALL                             R69 4 1
      850 JUMP                             ; [+8]
      851 GETIMPORT                        R69 K85 [UDim2.fromOffset]
      853 GETUPVAL                         R71 25
      854 MINUS                            R70 R71
      855 ADD                              R72 R8 R15
      856 GETUPVAL                         R73 25
      857 SUB                              R71 R72 R73
      858 CALL                             R69 2 1
      859 SETTABLEKS                       R69 R68 K25 ["Position"]
      861 LOADN                            R69 2
      862 SETTABLEKS                       R69 R68 K23 ["ZIndex"]
      864 DUPTABLE                         R69 K112 [{"center", "scale"}]
      865 GETIMPORT                        R70 K114 [Rect.new]
      867 GETUPVAL                         R71 25
      868 GETUPVAL                         R72 25
      869 GETUPVAL                         R74 25
      870 ADDK                             R73 R74 K115 [1]
      871 GETUPVAL                         R75 25
      872 ADDK                             R74 R75 K115 [1]
      873 CALL                             R70 4 1
      874 SETTABLEKS                       R70 R69 K110 ["center"]
      876 LOADN                            R70 2
      877 SETTABLEKS                       R70 R69 K111 ["scale"]
      879 SETTABLEKS                       R69 R68 K106 ["slice"]
      881 GETTABLEKS                       R72 R4 K29 ["Color"]
      883 GETTABLEKS                       R71 R72 K116 ["Extended"]
      885 GETTABLEKS                       R70 R71 K117 ["Black"]
      887 GETTABLEKS                       R69 R70 K118 ["Black_10"]
      889 SETTABLEKS                       R69 R68 K107 ["imageStyle"]
      891 CALL                             R66 2 1
      892 SETTABLEKS                       R66 R65 K79 ["Shadow"]
      894 GETUPVAL                         R67 8
      895 GETTABLEKS                       R66 R67 K22 ["createElement"]
      897 GETUPVAL                         R67 16
      898 DUPTABLE                         R68 K119 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      899 GETIMPORT                        R69 K65 [UDim2.fromScale]
      901 LOADN                            R70 1
      902 LOADN                            R71 2
      903 CALL                             R69 2 1
      904 SETTABLEKS                       R69 R68 K66 ["Size"]
      906 GETIMPORT                        R69 K65 [UDim2.fromScale]
      908 LOADN                            R70 0
      909 LOADK                            R71 K120 [-0.5]
      910 CALL                             R69 2 1
      911 SETTABLEKS                       R69 R68 K25 ["Position"]
      913 LOADN                            R69 1
      914 SETTABLEKS                       R69 R68 K23 ["ZIndex"]
      916 DUPTABLE                         R69 K51 [{"affordance"}]
      917 GETUPVAL                         R71 17
      918 GETTABLEKS                       R70 R71 K52 ["None"]
      920 SETTABLEKS                       R70 R69 K50 ["affordance"]
      922 SETTABLEKS                       R69 R68 K46 ["stateLayer"]
      924 NEWCLOSURE                       R71 P18
      925 CAPTURE                          VAL R4
      926 NAMECALL                         R69 R18 K121 ["map"]
      928 CALL                             R69 2 1
      929 SETTABLEKS                       R69 R68 K24 ["backgroundStyle"]
      931 NEWCLOSURE                       R69 P19
      932 CAPTURE                          VAL R47
      933 SETTABLEKS                       R69 R68 K47 ["onActivated"]
      935 LOADK                            R70 K122 ["%*--backdrop"]
      936 GETTABLEKS                       R72 R2 K21 ["testId"]
      938 NAMECALL                         R70 R70 K43 ["format"]
      940 CALL                             R70 2 1
      941 MOVE                             R69 R70
      942 SETTABLEKS                       R69 R68 K21 ["testId"]
      944 CALL                             R66 2 1
      945 SETTABLEKS                       R66 R65 K80 ["Backdrop"]
      947 CALL                             R62 3 -1
      948 CALL                             R59 -1 1
      949 MOVE                             R60 R3
      950 CALL                             R58 2 1
      951 CLOSEUPVALS                      R14
      952 RETURN                           R58 1

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
      138 GETTABLEKS                       R21 R22 K32 ["childrenHasFullBleed"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K6 [require]
      143 GETIMPORT                        R24 K1 [script]
      145 GETTABLEKS                       R23 R24 K4 ["Parent"]
      147 GETTABLEKS                       R22 R23 K33 ["useHardwareInsets"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETIMPORT                        R25 K1 [script]
      154 GETTABLEKS                       R24 R25 K4 ["Parent"]
      156 GETTABLEKS                       R23 R24 K34 ["useScreenHeight"]
      158 CALL                             R22 1 1
      159 GETIMPORT                        R23 K6 [require]
      161 GETTABLEKS                       R25 R0 K23 ["Utility"]
      163 GETTABLEKS                       R24 R25 K35 ["Flags"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R26 R0 K36 ["Components"]
      170 GETTABLEKS                       R25 R26 K37 ["Image"]
      172 CALL                             R24 1 1
      173 GETIMPORT                        R25 K6 [require]
      175 GETTABLEKS                       R27 R0 K36 ["Components"]
      177 GETTABLEKS                       R26 R27 K38 ["View"]
      179 CALL                             R25 1 1
      180 GETIMPORT                        R26 K6 [require]
      182 GETTABLEKS                       R29 R0 K16 ["Providers"]
      184 GETTABLEKS                       R28 R29 K39 ["Preferences"]
      186 GETTABLEKS                       R27 R28 K40 ["usePreferences"]
      188 CALL                             R26 1 1
      189 DUPTABLE                         R27 K43 [{"defaultSnapPointIndex", "testId"}]
      190 LOADN                            R28 1
      191 SETTABLEKS                       R28 R27 K41 ["defaultSnapPointIndex"]
      193 LOADK                            R28 K44 ["--foundation-sheet"]
      194 SETTABLEKS                       R28 R27 K42 ["testId"]
      196 GETTABLEKS                       R28 R16 K45 ["SHADOW_IMAGE"]
      198 GETTABLEKS                       R29 R16 K46 ["SHADOW_SIZE"]
      200 DUPCLOSURE                       R30 K47 [PROTO_0]
      201 DUPCLOSURE                       R31 K48 [PROTO_30]
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R27
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R22
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R23
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
