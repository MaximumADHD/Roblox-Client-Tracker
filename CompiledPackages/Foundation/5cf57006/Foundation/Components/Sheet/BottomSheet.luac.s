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
        1 JUMPIFNOT                        R0 ; [+68]
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
       66 JUMPIFNOT                        R0 ; [+3]
       67 GETUPVAL                         R1 12
       68 LOADB                            R2 1
       69 CALL                             R1 1 0
       70 NEWCLOSURE                       R0 P0
       71 CAPTURE                          UPVAL U13
       72 RETURN                           R0 1

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
       42 GETUPVAL                         R2 13
       43 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       45 JUMPIFNOT                        R2 ; [+2]
       46 GETUPVAL                         R1 14
       47 JUMP                             ; [+1]
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K13 ["hasFullBleed"]
       51 GETUPVAL                         R2 13
       52 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       54 JUMPIFNOT                        R2 ; [+2]
       55 GETUPVAL                         R1 15
       56 JUMP                             ; [+1]
       57 LOADNIL                          R1
       58 SETTABLEKS                       R1 R0 K14 ["fullBleedHeight"]
       60 GETUPVAL                         R2 13
       61 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       63 JUMPIFNOT                        R2 ; [+2]
       64 GETUPVAL                         R1 16
       65 JUMP                             ; [+1]
       66 LOADNIL                          R1
       67 SETTABLEKS                       R1 R0 K15 ["setFullBleedHeight"]
       69 GETUPVAL                         R1 17
       70 SETTABLEKS                       R1 R0 K16 ["closeSheet"]
       72 GETUPVAL                         R2 13
       73 GETTABLEKS                       R2 R2 K25 ["FoundationSheetFullBleed"]
       75 JUMPIFNOT                        R2 ; [+2]
       76 LOADB                            R1 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R1
       79 SETTABLEKS                       R1 R0 K17 ["hasRadius"]
       81 GETUPVAL                         R1 18
       82 GETTABLEKS                       R1 R1 K26 ["Bottom"]
       84 SETTABLEKS                       R1 R0 K18 ["sheetType"]
       86 GETUPVAL                         R1 19
       87 SETTABLEKS                       R1 R0 K19 ["innerSurface"]
       89 GETUPVAL                         R1 20
       90 GETTABLEKS                       R1 R1 K20 ["testId"]
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
        7 JUMPIFNOTLT                      R1 R0 ; [+45]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K0 ["current"]
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
       26 GETTABLEKS                       R2 R2 K2 ["FoundationBottomSheetCapToOverlayHeight"]
       28 JUMPIFNOT                        R2 ; [+10]
       29 GETUPVAL                         R2 7
       30 GETUPVAL                         R4 1
       31 GETTABLE                         R3 R4 R0
       32 CALL                             R2 1 1
       33 GETUPVAL                         R3 8
       34 JUMPIFLE                         R3 R2 ; [+2]
       36 LOADB                            R1 0 +1
       37 LOADB                            R1 1
       38 JUMP                             ; [+9]
       39 GETUPVAL                         R2 7
       40 GETUPVAL                         R4 1
       41 GETTABLE                         R3 R4 R0
       42 CALL                             R2 1 1
       43 GETUPVAL                         R3 8
       44 JUMPIFEQ                         R2 R3 ; [+2]
       46 LOADB                            R1 0 +1
       47 LOADB                            R1 1
       48 JUMPIFNOT                        R1 ; [+6]
       49 GETUPVAL                         R2 9
       50 LOADB                            R3 1
       51 CALL                             R2 1 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R0 10
       54 CALL                             R0 0 0
       55 RETURN                           R0 0

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
      183 GETUPVAL                         R37 9
      184 GETTABLEKS                       R37 R37 K16 ["useBinding"]
      186 LOADB                            R38 0
      187 CALL                             R37 1 2
      188 GETUPVAL                         R39 9
      189 GETTABLEKS                       R39 R39 K15 ["useRef"]
      191 LOADB                            R40 0
      192 CALL                             R39 1 1
      193 GETUPVAL                         R40 9
      194 GETTABLEKS                       R40 R40 K15 ["useRef"]
      196 LOADN                            R41 0
      197 CALL                             R40 1 1
      198 GETUPVAL                         R41 9
      199 GETTABLEKS                       R41 R41 K15 ["useRef"]
      201 LOADNIL                          R42
      202 CALL                             R41 1 1
      203 GETUPVAL                         R42 9
      204 GETTABLEKS                       R42 R42 K15 ["useRef"]
      206 LOADB                            R43 0
      207 CALL                             R42 1 1
      208 GETUPVAL                         R43 9
      209 GETTABLEKS                       R43 R43 K15 ["useRef"]
      211 LOADN                            R44 0
      212 CALL                             R43 1 1
      213 GETUPVAL                         R44 9
      214 GETTABLEKS                       R44 R44 K10 ["useCallback"]
      216 NEWCLOSURE                       R45 P3
      217 CAPTURE                          VAL R41
      218 CAPTURE                          VAL R40
      219 CAPTURE                          VAL R42
      220 NEWTABLE                         R46 0 0
      222 CALL                             R44 2 1
      223 GETUPVAL                         R45 9
      224 GETTABLEKS                       R45 R45 K10 ["useCallback"]
      226 NEWCLOSURE                       R46 P4
      227 CAPTURE                          VAL R44
      228 CAPTURE                          VAL R42
      229 CAPTURE                          UPVAL U8
      230 CAPTURE                          VAL R34
      231 CAPTURE                          VAL R41
      232 CAPTURE                          VAL R43
      233 NEWTABLE                         R47 0 1
      235 MOVE                             R48 R44
      236 SETLIST                          R47 R48 1 [1]
      238 CALL                             R45 2 1
      239 GETUPVAL                         R46 9
      240 GETTABLEKS                       R46 R46 K10 ["useCallback"]
      242 NEWCLOSURE                       R47 P5
      243 CAPTURE                          UPVAL U8
      244 CAPTURE                          VAL R15
      245 CAPTURE                          REF R16
      246 CAPTURE                          VAL R17
      247 NEWTABLE                         R48 0 3
      249 MOVE                             R49 R17
      250 MOVE                             R50 R15
      251 GETUPVAL                         R52 8
      252 GETTABLEKS                       R52 R52 K4 ["FoundationBottomSheetCapToOverlayHeight"]
      254 JUMPIFNOT                        R52 ; [+2]
      255 MOVE                             R51 R16
      256 JUMP                             ; [+1]
      257 LOADNIL                          R51
      258 SETLIST                          R48 R49 3 [1]
      260 CALL                             R46 2 1
      261 GETUPVAL                         R47 9
      262 GETTABLEKS                       R47 R47 K10 ["useCallback"]
      264 NEWCLOSURE                       R48 P6
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R45
      267 CAPTURE                          VAL R46
      268 CAPTURE                          VAL R14
      269 NEWTABLE                         R49 0 2
      271 MOVE                             R50 R46
      272 MOVE                             R51 R14
      273 SETLIST                          R49 R50 2 [1]
      275 CALL                             R47 2 1
      276 GETUPVAL                         R48 9
      277 GETTABLEKS                       R48 R48 K10 ["useCallback"]
      279 NEWCLOSURE                       R49 P7
      280 CAPTURE                          VAL R44
      281 CAPTURE                          VAL R18
      282 CAPTURE                          VAL R34
      283 CAPTURE                          VAL R46
      284 CAPTURE                          VAL R14
      285 NEWTABLE                         R50 0 3
      287 MOVE                             R51 R44
      288 MOVE                             R52 R46
      289 MOVE                             R53 R14
      290 SETLIST                          R50 R51 3 [1]
      292 CALL                             R48 2 1
      293 GETUPVAL                         R49 9
      294 GETTABLEKS                       R49 R49 K10 ["useCallback"]
      296 NEWCLOSURE                       R50 P8
      297 CAPTURE                          VAL R19
      298 CAPTURE                          VAL R7
      299 CAPTURE                          VAL R44
      300 CAPTURE                          VAL R34
      301 CAPTURE                          VAL R21
      302 CAPTURE                          UPVAL U13
      303 CAPTURE                          VAL R43
      304 CAPTURE                          VAL R40
      305 CAPTURE                          VAL R45
      306 CAPTURE                          VAL R4
      307 NEWTABLE                         R51 0 3
      309 MOVE                             R52 R45
      310 MOVE                             R53 R44
      311 MOVE                             R54 R7
      312 SETLIST                          R51 R52 3 [1]
      314 CALL                             R49 2 1
      315 GETUPVAL                         R50 9
      316 GETTABLEKS                       R50 R50 K10 ["useCallback"]
      318 NEWCLOSURE                       R51 P9
      319 CAPTURE                          VAL R35
      320 CAPTURE                          VAL R33
      321 CAPTURE                          UPVAL U8
      322 CAPTURE                          REF R16
      323 CAPTURE                          VAL R17
      324 CAPTURE                          VAL R40
      325 CAPTURE                          VAL R39
      326 CAPTURE                          VAL R38
      327 NEWTABLE                         R52 0 2
      329 MOVE                             R53 R16
      330 MOVE                             R54 R17
      331 SETLIST                          R52 R53 2 [1]
      333 CALL                             R50 2 1
      334 GETUPVAL                         R51 9
      335 GETTABLEKS                       R51 R51 K10 ["useCallback"]
      337 NEWCLOSURE                       R52 P10
      338 CAPTURE                          VAL R40
      339 CAPTURE                          VAL R33
      340 CAPTURE                          VAL R14
      341 CAPTURE                          VAL R46
      342 CAPTURE                          VAL R39
      343 CAPTURE                          VAL R43
      344 CAPTURE                          VAL R49
      345 CAPTURE                          VAL R47
      346 NEWTABLE                         R53 0 4
      348 MOVE                             R54 R14
      349 MOVE                             R55 R47
      350 MOVE                             R56 R46
      351 MOVE                             R57 R49
      352 SETLIST                          R53 R54 4 [1]
      354 CALL                             R51 2 1
      355 GETUPVAL                         R52 9
      356 GETTABLEKS                       R52 R52 K19 ["useEffect"]
      358 NEWCLOSURE                       R53 P11
      359 CAPTURE                          VAL R3
      360 CAPTURE                          VAL R7
      361 CAPTURE                          VAL R48
      362 CAPTURE                          VAL R2
      363 CAPTURE                          VAL R21
      364 CAPTURE                          UPVAL U13
      365 CAPTURE                          VAL R47
      366 CAPTURE                          VAL R4
      367 CAPTURE                          UPVAL U8
      368 CAPTURE                          VAL R15
      369 CAPTURE                          VAL R14
      370 CAPTURE                          REF R16
      371 CAPTURE                          VAL R38
      372 CAPTURE                          VAL R44
      373 NEWTABLE                         R54 0 7
      375 MOVE                             R55 R3
      376 MOVE                             R56 R14
      377 GETTABLEKS                       R57 R2 K20 ["defaultSnapPointIndex"]
      379 MOVE                             R58 R47
      380 MOVE                             R59 R15
      381 MOVE                             R60 R48
      382 MOVE                             R61 R7
      383 SETLIST                          R54 R55 7 [1]
      385 CALL                             R52 2 0
      386 GETUPVAL                         R52 9
      387 GETTABLEKS                       R52 R52 K19 ["useEffect"]
      389 NEWCLOSURE                       R53 P12
      390 CAPTURE                          VAL R40
      391 CAPTURE                          VAL R50
      392 CAPTURE                          VAL R39
      393 CAPTURE                          VAL R44
      394 CAPTURE                          UPVAL U8
      395 CAPTURE                          VAL R34
      396 CAPTURE                          VAL R33
      397 CAPTURE                          REF R16
      398 CAPTURE                          VAL R17
      399 CAPTURE                          VAL R19
      400 CAPTURE                          VAL R38
      401 CAPTURE                          VAL R51
      402 NEWTABLE                         R54 0 4
      404 MOVE                             R55 R3
      405 MOVE                             R56 R51
      406 MOVE                             R57 R50
      407 MOVE                             R58 R44
      408 SETLIST                          R54 R55 4 [1]
      410 CALL                             R52 2 0
      411 GETUPVAL                         R52 9
      412 GETTABLEKS                       R52 R52 K15 ["useRef"]
      414 LOADNIL                          R53
      415 CALL                             R52 1 1
      416 GETUPVAL                         R53 9
      417 GETTABLEKS                       R53 R53 K5 ["useState"]
      419 LOADNIL                          R54
      420 CALL                             R53 1 2
      421 GETUPVAL                         R55 9
      422 GETTABLEKS                       R55 R55 K5 ["useState"]
      424 LOADNIL                          R56
      425 CALL                             R55 1 2
      426 GETUPVAL                         R57 14
      427 GETTABLEKS                       R57 R57 K21 ["useComposedRef"]
      429 MOVE                             R58 R1
      430 MOVE                             R59 R56
      431 CALL                             R57 2 1
      432 GETUPVAL                         R58 9
      433 GETTABLEKS                       R58 R58 K22 ["useImperativeHandle"]
      435 GETTABLEKS                       R59 R2 K23 ["sheetRef"]
      437 NEWCLOSURE                       R60 P13
      438 CAPTURE                          VAL R49
      439 NEWTABLE                         R61 0 0
      441 CALL                             R58 3 0
      442 GETUPVAL                         R58 9
      443 GETTABLEKS                       R58 R58 K8 ["useMemo"]
      445 NEWCLOSURE                       R59 P14
      446 CAPTURE                          VAL R24
      447 CAPTURE                          VAL R25
      448 CAPTURE                          VAL R26
      449 CAPTURE                          VAL R27
      450 CAPTURE                          VAL R22
      451 CAPTURE                          VAL R23
      452 CAPTURE                          VAL R17
      453 CAPTURE                          VAL R37
      454 CAPTURE                          VAL R35
      455 CAPTURE                          VAL R36
      456 CAPTURE                          VAL R50
      457 CAPTURE                          VAL R28
      458 CAPTURE                          VAL R29
      459 CAPTURE                          UPVAL U8
      460 CAPTURE                          REF R30
      461 CAPTURE                          REF R31
      462 CAPTURE                          REF R32
      463 CAPTURE                          VAL R49
      464 CAPTURE                          UPVAL U15
      465 CAPTURE                          VAL R55
      466 CAPTURE                          VAL R2
      467 CAPTURE                          VAL R52
      468 CAPTURE                          VAL R53
      469 CAPTURE                          VAL R54
      470 NEWTABLE                         R60 0 8
      472 GETTABLEKS                       R61 R2 K24 ["testId"]
      474 MOVE                             R62 R49
      475 MOVE                             R63 R17
      476 MOVE                             R64 R50
      477 MOVE                             R65 R55
      478 MOVE                             R66 R52
      479 MOVE                             R67 R53
      480 MOVE                             R68 R30
      481 SETLIST                          R60 R61 8 [1]
      483 CALL                             R58 2 1
      484 GETUPVAL                         R59 9
      485 GETTABLEKS                       R59 R59 K25 ["createElement"]
      487 GETUPVAL                         R60 16
      488 DUPTABLE                         R61 K31 [{"ZIndex", "backgroundStyle", "Position", "AnchorPoint", "tag", "testId"}]
      489 LOADN                            R62 3
      490 SETTABLEKS                       R62 R61 K26 ["ZIndex"]
      492 GETTABLEKS                       R62 R4 K32 ["Color"]
      494 GETTABLEKS                       R62 R62 K33 ["Content"]
      496 GETTABLEKS                       R62 R62 K34 ["Muted"]
      498 SETTABLEKS                       R62 R61 K27 ["backgroundStyle"]
      500 GETUPVAL                         R63 8
      501 GETTABLEKS                       R63 R63 K17 ["FoundationSheetFullBleed"]
      503 JUMPIFNOT                        R63 ; [+18]
      504 GETIMPORT                        R62 K37 [UDim2.new]
      506 LOADK                            R63 K38 [0.5]
      507 LOADN                            R64 0
      508 LOADN                            R65 0
      509 JUMPIFNOT                        R30 ; [+5]
      510 GETTABLEKS                       R66 R4 K39 ["Padding"]
      512 GETTABLEKS                       R66 R66 K40 ["Small"]
      514 JUMP                             ; [+5]
      515 GETTABLEKS                       R67 R4 K39 ["Padding"]
      517 GETTABLEKS                       R67 R67 K41 ["XSmall"]
      519 MINUS                            R66 R67
      520 CALL                             R62 4 1
      521 JUMP                             ; [+1]
      522 LOADNIL                          R62
      523 SETTABLEKS                       R62 R61 K28 ["Position"]
      525 GETUPVAL                         R63 8
      526 GETTABLEKS                       R63 R63 K17 ["FoundationSheetFullBleed"]
      528 JUMPIFNOT                        R63 ; [+6]
      529 GETIMPORT                        R62 K43 [Vector2.new]
      531 LOADK                            R63 K38 [0.5]
      532 LOADN                            R64 0
      533 CALL                             R62 2 1
      534 JUMP                             ; [+1]
      535 LOADNIL                          R62
      536 SETTABLEKS                       R62 R61 K29 ["AnchorPoint"]
      538 LOADK                            R62 K44 ["align-y-center size-1000-100 padding-y-small radius-small"]
      539 SETTABLEKS                       R62 R61 K30 ["tag"]
      541 LOADK                            R63 K45 ["%*--gripper"]
      542 GETTABLEKS                       R65 R2 K24 ["testId"]
      544 NAMECALL                         R63 R63 K46 ["format"]
      546 CALL                             R63 2 1
      547 MOVE                             R62 R63
      548 SETTABLEKS                       R62 R61 K24 ["testId"]
      550 DUPTABLE                         R62 K48 [{"TouchTarget"}]
      551 GETUPVAL                         R63 9
      552 GETTABLEKS                       R63 R63 K25 ["createElement"]
      554 GETUPVAL                         R64 16
      555 DUPTABLE                         R65 K51 [{"tag", "stateLayer", "onActivated"}]
      556 LOADK                            R66 K52 ["size-1000-600"]
      557 SETTABLEKS                       R66 R65 K30 ["tag"]
      559 DUPTABLE                         R66 K54 [{"affordance"}]
      560 GETUPVAL                         R67 17
      561 GETTABLEKS                       R67 R67 K55 ["None"]
      563 SETTABLEKS                       R67 R66 K53 ["affordance"]
      565 SETTABLEKS                       R66 R65 K49 ["stateLayer"]
      567 NEWCLOSURE                       R66 P15
      568 CAPTURE                          VAL R39
      569 CAPTURE                          VAL R14
      570 CAPTURE                          VAL R18
      571 CAPTURE                          VAL R7
      572 CAPTURE                          VAL R48
      573 CAPTURE                          VAL R47
      574 CAPTURE                          UPVAL U8
      575 CAPTURE                          VAL R15
      576 CAPTURE                          REF R16
      577 CAPTURE                          VAL R38
      578 CAPTURE                          VAL R49
      579 SETTABLEKS                       R66 R65 K50 ["onActivated"]
      581 CALL                             R63 2 1
      582 SETTABLEKS                       R63 R62 K47 ["TouchTarget"]
      584 CALL                             R59 3 1
      585 MOVE                             R60 R3
      586 JUMPIFNOT                        R60 ; [+419]
      587 GETUPVAL                         R60 18
      588 GETTABLEKS                       R60 R60 K56 ["createPortal"]
      590 GETUPVAL                         R61 9
      591 GETTABLEKS                       R61 R61 K25 ["createElement"]
      593 GETUPVAL                         R62 16
      594 DUPTABLE                         R63 K61 [{"ZIndex", "ref", "selection", "selectionGroup", "tag", "testId", "onAbsoluteSizeChanged"}]
      595 GETTABLEKS                       R64 R5 K62 ["zIndex"]
      597 SETTABLEKS                       R64 R63 K26 ["ZIndex"]
      599 SETTABLEKS                       R57 R63 K57 ["ref"]
      601 GETUPVAL                         R64 19
      602 GETTABLEKS                       R64 R64 K63 ["nonSelectable"]
      604 SETTABLEKS                       R64 R63 K58 ["selection"]
      606 GETUPVAL                         R64 19
      607 GETTABLEKS                       R64 R64 K64 ["isolatedSelectionGroup"]
      609 SETTABLEKS                       R64 R63 K59 ["selectionGroup"]
      611 LOADK                            R64 K65 ["size-full"]
      612 SETTABLEKS                       R64 R63 K30 ["tag"]
      614 LOADK                            R65 K66 ["%*--surface"]
      615 GETTABLEKS                       R67 R2 K24 ["testId"]
      617 NAMECALL                         R65 R65 K46 ["format"]
      619 CALL                             R65 2 1
      620 MOVE                             R64 R65
      621 SETTABLEKS                       R64 R63 K24 ["testId"]
      623 GETUPVAL                         R65 8
      624 GETTABLEKS                       R65 R65 K4 ["FoundationBottomSheetCapToOverlayHeight"]
      626 JUMPIFNOT                        R65 ; [+3]
      627 NEWCLOSURE                       R64 P16
      628 CAPTURE                          REF R10
      629 JUMP                             ; [+1]
      630 LOADNIL                          R64
      631 SETTABLEKS                       R64 R63 K60 ["onAbsoluteSizeChanged"]
      633 GETUPVAL                         R64 9
      634 GETTABLEKS                       R64 R64 K25 ["createElement"]
      636 LOADK                            R65 K67 ["ScrollingFrame"]
      637 NEWTABLE                         R66 8 0
      639 GETIMPORT                        R67 K69 [UDim2.fromScale]
      641 LOADN                            R68 1
      642 LOADN                            R69 1
      643 CALL                             R67 2 1
      644 SETTABLEKS                       R67 R66 K70 ["Size"]
      646 GETUPVAL                         R68 8
      647 GETTABLEKS                       R68 R68 K71 ["FoundationSheetPreventCloseOnResize"]
      649 JUMPIFNOT                        R68 ; [+8]
      650 GETIMPORT                        R67 K37 [UDim2.new]
      652 LOADN                            R68 1
      653 LOADN                            R69 0
      654 LOADN                            R70 1
      655 ADD                              R71 R16 R17
      656 CALL                             R67 4 1
      657 JUMP                             ; [+8]
      658 GETIMPORT                        R67 K37 [UDim2.new]
      660 LOADN                            R68 1
      661 LOADN                            R69 0
      662 LOADN                            R70 0
      663 ADD                              R72 R8 R16
      664 ADD                              R71 R72 R17
      665 CALL                             R67 4 1
      666 SETTABLEKS                       R67 R66 K72 ["CanvasSize"]
      668 LOADB                            R67 0
      669 SETTABLEKS                       R67 R66 K73 ["ClipsDescendants"]
      671 LOADN                            R67 1
      672 SETTABLEKS                       R67 R66 K74 ["BackgroundTransparency"]
      674 GETIMPORT                        R67 K77 [Enum.ScrollingDirection.Y]
      676 SETTABLEKS                       R67 R66 K76 ["ScrollingDirection"]
      678 LOADN                            R67 0
      679 SETTABLEKS                       R67 R66 K78 ["ScrollBarThickness"]
      681 SETTABLEKS                       R34 R66 K57 ["ref"]
      683 GETUPVAL                         R67 9
      684 GETTABLEKS                       R67 R67 K79 ["Change"]
      686 GETTABLEKS                       R67 R67 K80 ["CanvasPosition"]
      688 NEWCLOSURE                       R68 P17
      689 CAPTURE                          VAL R33
      690 CAPTURE                          VAL R23
      691 CAPTURE                          VAL R17
      692 CAPTURE                          VAL R4
      693 CAPTURE                          VAL R50
      694 CAPTURE                          VAL R49
      695 SETTABLE                         R68 R66 R67
      696 DUPTABLE                         R67 K84 [{"SheetContainer", "Shadow", "Backdrop"}]
      697 GETUPVAL                         R68 9
      698 GETTABLEKS                       R68 R68 K25 ["createElement"]
      700 GETUPVAL                         R69 16
      701 DUPTABLE                         R70 K85 [{"Size", "Position", "ZIndex"}]
      702 GETUPVAL                         R72 8
      703 GETTABLEKS                       R72 R72 K71 ["FoundationSheetPreventCloseOnResize"]
      705 JUMPIFNOT                        R72 ; [+9]
      706 GETIMPORT                        R71 K37 [UDim2.new]
      708 LOADN                            R72 1
      709 LOADN                            R73 0
      710 LOADN                            R74 1
      711 SUBRK                            R76 R86 K16 ["useBinding"]
      712 SUB                              R75 R76 R17
      713 CALL                             R71 4 1
      714 JUMP                             ; [+7]
      715 GETIMPORT                        R71 K37 [UDim2.new]
      717 LOADN                            R72 1
      718 LOADN                            R73 0
      719 LOADN                            R74 0
      720 ADDK                             R75 R8 K86 [200]
      721 CALL                             R71 4 1
      722 SETTABLEKS                       R71 R70 K70 ["Size"]
      724 GETUPVAL                         R72 8
      725 GETTABLEKS                       R72 R72 K71 ["FoundationSheetPreventCloseOnResize"]
      727 JUMPIFNOT                        R72 ; [+8]
      728 GETIMPORT                        R71 K37 [UDim2.new]
      730 LOADN                            R72 0
      731 LOADN                            R73 0
      732 LOADN                            R74 1
      733 MINUS                            R75 R16
      734 CALL                             R71 4 1
      735 JUMP                             ; [+5]
      736 GETIMPORT                        R71 K88 [UDim2.fromOffset]
      738 LOADN                            R72 0
      739 ADD                              R73 R8 R17
      740 CALL                             R71 2 1
      741 SETTABLEKS                       R71 R70 K28 ["Position"]
      743 LOADN                            R71 3
      744 SETTABLEKS                       R71 R70 K26 ["ZIndex"]
      746 DUPTABLE                         R71 K89 [{"Sheet"}]
      747 GETUPVAL                         R72 9
      748 GETTABLEKS                       R72 R72 K25 ["createElement"]
      750 GETUPVAL                         R73 16
      751 DUPTABLE                         R74 K91 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      752 GETTABLEKS                       R76 R2 K9 ["snapPoints"]
      754 JUMPIFNOTEQKNIL                  R76 ; [+7]
      756 GETIMPORT                        R75 K69 [UDim2.fromScale]
      758 LOADN                            R76 1
      759 LOADN                            R77 0
      760 CALL                             R75 2 1
      761 JUMP                             ; [+7]
      762 GETIMPORT                        R75 K37 [UDim2.new]
      764 LOADN                            R76 1
      765 LOADN                            R77 0
      766 LOADN                            R78 0
      767 ADDK                             R79 R16 K86 [200]
      768 CALL                             R75 4 1
      769 SETTABLEKS                       R75 R74 K70 ["Size"]
      771 GETTABLEKS                       R76 R2 K9 ["snapPoints"]
      773 JUMPIFNOTEQKNIL                  R76 ; [+4]
      775 GETIMPORT                        R75 K92 [Enum.AutomaticSize.Y]
      777 JUMP                             ; [+1]
      778 LOADNIL                          R75
      779 SETTABLEKS                       R75 R74 K90 ["AutomaticSize"]
      781 GETTABLEKS                       R76 R2 K9 ["snapPoints"]
      783 JUMPIFNOTEQKNIL                  R76 ; [+4]
      785 NEWCLOSURE                       R75 P18
      786 CAPTURE                          VAL R12
      787 JUMP                             ; [+1]
      788 LOADNIL                          R75
      789 SETTABLEKS                       R75 R74 K60 ["onAbsoluteSizeChanged"]
      791 DUPTABLE                         R75 K54 [{"affordance"}]
      792 GETUPVAL                         R76 17
      793 GETTABLEKS                       R76 R76 K55 ["None"]
      795 SETTABLEKS                       R76 R75 K53 ["affordance"]
      797 SETTABLEKS                       R75 R74 K49 ["stateLayer"]
      799 GETUPVAL                         R75 20
      800 GETTABLEKS                       R75 R75 K93 ["noop"]
      802 SETTABLEKS                       R75 R74 K50 ["onActivated"]
      804 GETTABLEKS                       R75 R2 K24 ["testId"]
      806 SETTABLEKS                       R75 R74 K24 ["testId"]
      808 GETUPVAL                         R76 8
      809 GETTABLEKS                       R76 R76 K17 ["FoundationSheetFullBleed"]
      811 JUMPIFNOT                        R76 ; [+9]
      812 NEWTABLE                         R75 2 0
      814 LOADB                            R76 1
      815 SETTABLEKS                       R76 R75 K94 ["col items-center radius-large clip bg-surface-100"]
      817 NOT                              R76 R30
      818 SETTABLEKS                       R76 R75 K95 ["padding-top-medium"]
      820 JUMP                             ; [+1]
      821 LOADK                            R75 K96 ["col items-center padding-top-small radius-large clip bg-surface-100"]
      822 SETTABLEKS                       R75 R74 K30 ["tag"]
      824 DUPTABLE                         R75 K98 [{"GripperContainer", "Content"}]
      825 GETUPVAL                         R77 8
      826 GETTABLEKS                       R77 R77 K17 ["FoundationSheetFullBleed"]
      828 JUMPIFNOT                        R77 ; [+10]
      829 GETUPVAL                         R76 9
      830 GETTABLEKS                       R76 R76 K25 ["createElement"]
      832 LOADK                            R77 K99 ["Folder"]
      833 LOADNIL                          R78
      834 DUPTABLE                         R79 K101 [{"Gripper"}]
      835 SETTABLEKS                       R59 R79 K100 ["Gripper"]
      837 CALL                             R76 3 1
      838 JUMP                             ; [+1]
      839 MOVE                             R76 R59
      840 SETTABLEKS                       R76 R75 K97 ["GripperContainer"]
      842 GETUPVAL                         R76 9
      843 GETTABLEKS                       R76 R76 K25 ["createElement"]
      845 GETUPVAL                         R77 21
      846 GETTABLEKS                       R77 R77 K102 ["Provider"]
      848 DUPTABLE                         R78 K104 [{"value"}]
      849 SETTABLEKS                       R58 R78 K103 ["value"]
      851 GETUPVAL                         R79 9
      852 GETTABLEKS                       R79 R79 K25 ["createElement"]
      854 GETUPVAL                         R80 22
      855 DUPTABLE                         R81 K106 [{"owner"}]
      856 SETTABLEKS                       R5 R81 K105 ["owner"]
      858 GETTABLEKS                       R82 R2 K18 ["children"]
      860 CALL                             R79 3 -1
      861 CALL                             R76 -1 1
      862 SETTABLEKS                       R76 R75 K33 ["Content"]
      864 CALL                             R72 3 1
      865 SETTABLEKS                       R72 R71 K0 ["Sheet"]
      867 CALL                             R68 3 1
      868 SETTABLEKS                       R68 R67 K81 ["SheetContainer"]
      870 GETUPVAL                         R68 9
      871 GETTABLEKS                       R68 R68 K25 ["createElement"]
      873 GETUPVAL                         R69 23
      874 DUPTABLE                         R70 K110 [{"Image", "Size", "Position", "ZIndex", "slice", "imageStyle"}]
      875 GETUPVAL                         R71 24
      876 SETTABLEKS                       R71 R70 K107 ["Image"]
      878 GETIMPORT                        R71 K37 [UDim2.new]
      880 LOADN                            R72 1
      881 GETUPVAL                         R74 25
      882 MULK                             R73 R74 K111 [2]
      883 LOADN                            R74 0
      884 ADDK                             R76 R16 K86 [200]
      885 GETUPVAL                         R78 25
      886 MULK                             R77 R78 K111 [2]
      887 ADD                              R75 R76 R77
      888 CALL                             R71 4 1
      889 SETTABLEKS                       R71 R70 K70 ["Size"]
      891 GETUPVAL                         R72 8
      892 GETTABLEKS                       R72 R72 K71 ["FoundationSheetPreventCloseOnResize"]
      894 JUMPIFNOT                        R72 ; [+11]
      895 GETIMPORT                        R71 K37 [UDim2.new]
      897 GETUPVAL                         R73 25
      898 MINUS                            R72 R73
      899 LOADN                            R73 0
      900 LOADN                            R74 1
      901 MINUS                            R76 R16
      902 GETUPVAL                         R77 25
      903 SUB                              R75 R76 R77
      904 CALL                             R71 4 1
      905 JUMP                             ; [+8]
      906 GETIMPORT                        R71 K88 [UDim2.fromOffset]
      908 GETUPVAL                         R73 25
      909 MINUS                            R72 R73
      910 ADD                              R74 R8 R17
      911 GETUPVAL                         R75 25
      912 SUB                              R73 R74 R75
      913 CALL                             R71 2 1
      914 SETTABLEKS                       R71 R70 K28 ["Position"]
      916 LOADN                            R71 2
      917 SETTABLEKS                       R71 R70 K26 ["ZIndex"]
      919 DUPTABLE                         R71 K114 [{"center", "scale"}]
      920 GETIMPORT                        R72 K116 [Rect.new]
      922 GETUPVAL                         R73 25
      923 GETUPVAL                         R74 25
      924 GETUPVAL                         R76 25
      925 ADDK                             R75 R76 K117 [1]
      926 GETUPVAL                         R77 25
      927 ADDK                             R76 R77 K117 [1]
      928 CALL                             R72 4 1
      929 SETTABLEKS                       R72 R71 K112 ["center"]
      931 LOADN                            R72 2
      932 SETTABLEKS                       R72 R71 K113 ["scale"]
      934 SETTABLEKS                       R71 R70 K108 ["slice"]
      936 GETTABLEKS                       R71 R4 K32 ["Color"]
      938 GETTABLEKS                       R71 R71 K118 ["Extended"]
      940 GETTABLEKS                       R71 R71 K119 ["Black"]
      942 GETTABLEKS                       R71 R71 K120 ["Black_10"]
      944 SETTABLEKS                       R71 R70 K109 ["imageStyle"]
      946 CALL                             R68 2 1
      947 SETTABLEKS                       R68 R67 K82 ["Shadow"]
      949 GETUPVAL                         R68 9
      950 GETTABLEKS                       R68 R68 K25 ["createElement"]
      952 GETUPVAL                         R69 16
      953 DUPTABLE                         R70 K121 [{"Size", "Position", "ZIndex", "stateLayer", "backgroundStyle", "onActivated", "testId"}]
      954 GETIMPORT                        R71 K69 [UDim2.fromScale]
      956 LOADN                            R72 1
      957 LOADN                            R73 2
      958 CALL                             R71 2 1
      959 SETTABLEKS                       R71 R70 K70 ["Size"]
      961 GETIMPORT                        R71 K69 [UDim2.fromScale]
      963 LOADN                            R72 0
      964 LOADK                            R73 K122 [-0.5]
      965 CALL                             R71 2 1
      966 SETTABLEKS                       R71 R70 K28 ["Position"]
      968 LOADN                            R71 1
      969 SETTABLEKS                       R71 R70 K26 ["ZIndex"]
      971 DUPTABLE                         R71 K54 [{"affordance"}]
      972 GETUPVAL                         R72 17
      973 GETTABLEKS                       R72 R72 K55 ["None"]
      975 SETTABLEKS                       R72 R71 K53 ["affordance"]
      977 SETTABLEKS                       R71 R70 K49 ["stateLayer"]
      979 NEWCLOSURE                       R73 P19
      980 CAPTURE                          VAL R4
      981 NAMECALL                         R71 R20 K123 ["map"]
      983 CALL                             R71 2 1
      984 SETTABLEKS                       R71 R70 K27 ["backgroundStyle"]
      986 NEWCLOSURE                       R71 P20
      987 CAPTURE                          VAL R49
      988 SETTABLEKS                       R71 R70 K50 ["onActivated"]
      990 LOADK                            R72 K124 ["%*--backdrop"]
      991 GETTABLEKS                       R74 R2 K24 ["testId"]
      993 NAMECALL                         R72 R72 K46 ["format"]
      995 CALL                             R72 2 1
      996 MOVE                             R71 R72
      997 SETTABLEKS                       R71 R70 K24 ["testId"]
      999 CALL                             R68 2 1
     1000 SETTABLEKS                       R68 R67 K83 ["Backdrop"]
     1002 CALL                             R64 3 -1
     1003 CALL                             R61 -1 1
     1004 MOVE                             R62 R3
     1005 CALL                             R60 2 1
     1006 CLOSEUPVALS                      R10
     1007 RETURN                           R60 1

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
