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
       43 JUMPIF                           R6 ; [+16]
       44 GETUPVAL                         R6 5
       45 MINUS                            R7 R0
       46 SETTABLEKS                       R7 R6 K0 ["current"]
       48 GETTABLEKS                       R6 R5 K2 ["index"]
       50 JUMPIFNOTEQKN                    R6 K3 [0] ; [+5]
       52 GETUPVAL                         R6 6
       53 LOADB                            R7 1
       54 CALL                             R6 1 0
       55 RETURN                           R0 0
       56 GETUPVAL                         R6 7
       57 GETTABLEKS                       R7 R5 K2 ["index"]
       59 CALL                             R6 1 0
       60 RETURN                           R0 0

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
        0 DUPTABLE                         R0 K25 [{[1], ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"], ["setSheetHeightAvailable"], ["safeAreaPadding"], ["bottomPadding"] = 200, ["innerScrollingEnabled"], ["innerScrollY"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["hasFullBleed"], ["fullBleedHeight"], ["setFullBleedHeight"], ["closeSheet"], ["hasRadius"], ["sheetType"], ["innerSurface"], ["testId"], ["closeAffordanceRef"], ["contentStartRef"], ["setContentStartRef"]}]
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
       39 GETUPVAL                         R2 13
       40 GETTABLEKS                       R2 R2 K26 ["FoundationSheetFullBleed"]
       42 JUMPIFNOT                        R2 ; [+2]
       43 GETUPVAL                         R1 14
       44 JUMP                             ; [+1]
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K14 ["hasFullBleed"]
       48 GETUPVAL                         R2 13
       49 GETTABLEKS                       R2 R2 K26 ["FoundationSheetFullBleed"]
       51 JUMPIFNOT                        R2 ; [+2]
       52 GETUPVAL                         R1 15
       53 JUMP                             ; [+1]
       54 LOADNIL                          R1
       55 SETTABLEKS                       R1 R0 K15 ["fullBleedHeight"]
       57 GETUPVAL                         R2 13
       58 GETTABLEKS                       R2 R2 K26 ["FoundationSheetFullBleed"]
       60 JUMPIFNOT                        R2 ; [+2]
       61 GETUPVAL                         R1 16
       62 JUMP                             ; [+1]
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K16 ["setFullBleedHeight"]
       66 GETUPVAL                         R1 17
       67 SETTABLEKS                       R1 R0 K17 ["closeSheet"]
       69 GETUPVAL                         R2 13
       70 GETTABLEKS                       R2 R2 K26 ["FoundationSheetFullBleed"]
       72 JUMPIFNOT                        R2 ; [+2]
       73 LOADB                            R1 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R1
       76 SETTABLEKS                       R1 R0 K18 ["hasRadius"]
       78 GETUPVAL                         R1 18
       79 GETTABLEKS                       R1 R1 K27 ["Bottom"]
       81 SETTABLEKS                       R1 R0 K19 ["sheetType"]
       83 GETUPVAL                         R1 19
       84 SETTABLEKS                       R1 R0 K20 ["innerSurface"]
       86 GETUPVAL                         R1 20
       87 GETTABLEKS                       R1 R1 K21 ["testId"]
       89 SETTABLEKS                       R1 R0 K21 ["testId"]
       91 GETUPVAL                         R1 21
       92 SETTABLEKS                       R1 R0 K22 ["closeAffordanceRef"]
       94 GETUPVAL                         R1 22
       95 SETTABLEKS                       R1 R0 K23 ["contentStartRef"]
       97 GETUPVAL                         R1 23
       98 SETTABLEKS                       R1 R0 K24 ["setContentStartRef"]
      100 RETURN                           R0 1

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
       12 DUPTABLE                         R7 K3 [{["stackAboveOwner"] = False}]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 6
       15 CALL                             R6 0 1
       16 GETTABLEKS                       R7 R6 K4 ["reducedMotion"]
       18 GETUPVAL                         R8 7
       19 CALL                             R8 0 1
       20 LOADNIL                          R9
       21 LOADNIL                          R10
       22 GETUPVAL                         R11 8
       23 GETTABLEKS                       R11 R11 K5 ["FoundationBottomSheetCapToOverlayHeight"]
       25 JUMPIFNOT                        R11 ; [+13]
       26 GETUPVAL                         R11 9
       27 GETTABLEKS                       R11 R11 K6 ["useState"]
       29 JUMPIFNOT                        R3 ; [+5]
       30 GETTABLEKS                       R12 R3 K7 ["AbsoluteSize"]
       32 GETTABLEKS                       R12 R12 K8 ["Y"]
       34 JUMP                             ; [+1]
       35 LOADN                            R12 0
       36 CALL                             R11 1 2
       37 MOVE                             R9 R11
       38 MOVE                             R10 R12
       39 GETUPVAL                         R11 9
       40 GETTABLEKS                       R11 R11 K6 ["useState"]
       42 LOADN                            R12 0
       43 CALL                             R11 1 2
       44 GETUPVAL                         R13 9
       45 GETTABLEKS                       R13 R13 K9 ["useMemo"]
       47 NEWCLOSURE                       R14 P0
       48 CAPTURE                          VAL R11
       49 NEWTABLE                         R15 0 1
       51 MOVE                             R16 R11
       52 SETLIST                          R15 R16 1 [1]
       54 CALL                             R13 2 1
       55 GETTABLEKS                       R15 R2 K10 ["snapPoints"]
       57 OR                               R14 R15 R13
       58 GETUPVAL                         R15 9
       59 GETTABLEKS                       R15 R15 K11 ["useCallback"]
       61 NEWCLOSURE                       R16 P1
       62 CAPTURE                          VAL R8
       63 NEWTABLE                         R17 0 1
       65 MOVE                             R18 R8
       66 SETLIST                          R17 R18 1 [1]
       68 CALL                             R15 2 1
       69 LOADN                            R16 0
       70 MOVE                             R17 R14
       71 LOADNIL                          R18
       72 LOADNIL                          R19
       73 FORGPREP                         R17
       74 MOVE                             R22 R15
       75 MOVE                             R23 R21
       76 CALL                             R22 1 1
       77 JUMPIFNOTLT                      R16 R22 ; [+2]
       79 MOVE                             R16 R22
       80 FORGLOOP                         R17 2 ; [-7]
       82 FASTCALL2                        MATH_MIN R16 R8 ; [+5]
       84 MOVE                             R18 R16
       85 MOVE                             R19 R8
       86 GETIMPORT                        R17 K14 [math.min]
       88 CALL                             R17 2 1
       89 MOVE                             R16 R17
       90 GETUPVAL                         R17 8
       91 GETTABLEKS                       R17 R17 K5 ["FoundationBottomSheetCapToOverlayHeight"]
       93 JUMPIFNOT                        R17 ; [+11]
       94 LOADN                            R17 0
       95 JUMPIFNOTLT                      R17 R9 ; [+9]
       97 FASTCALL2                        MATH_MIN R16 R9 ; [+5]
       99 MOVE                             R18 R16
      100 MOVE                             R19 R9
      101 GETIMPORT                        R17 K14 [math.min]
      103 CALL                             R17 2 1
      104 MOVE                             R16 R17
      105 GETUPVAL                         R17 10
      106 MOVE                             R18 R3
      107 CALL                             R17 1 1
      108 GETTABLEKS                       R17 R17 K15 ["bottom"]
      110 GETUPVAL                         R18 9
      111 GETTABLEKS                       R18 R18 K16 ["useRef"]
      113 LOADN                            R19 0
      114 CALL                             R18 1 1
      115 GETUPVAL                         R19 9
      116 GETTABLEKS                       R19 R19 K16 ["useRef"]
      118 LOADB                            R20 0
      119 CALL                             R19 1 1
      120 GETUPVAL                         R20 11
      121 LOADN                            R21 1
      122 NEWCLOSURE                       R22 P2
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R2
      125 CALL                             R20 2 2
      126 GETUPVAL                         R22 9
      127 GETTABLEKS                       R22 R22 K17 ["useBinding"]
      129 MINUS                            R23 R17
      130 CALL                             R22 1 2
      131 GETUPVAL                         R24 9
      132 GETTABLEKS                       R24 R24 K17 ["useBinding"]
      134 LOADN                            R25 0
      135 CALL                             R24 1 2
      136 GETUPVAL                         R26 9
      137 GETTABLEKS                       R26 R26 K17 ["useBinding"]
      139 LOADB                            R27 0
      140 CALL                             R26 1 2
      141 GETUPVAL                         R28 9
      142 GETTABLEKS                       R28 R28 K17 ["useBinding"]
      144 LOADB                            R29 0
      145 CALL                             R28 1 2
      146 LOADNIL                          R30
      147 LOADNIL                          R31
      148 LOADNIL                          R32
      149 GETUPVAL                         R33 8
      150 GETTABLEKS                       R33 R33 K18 ["FoundationSheetFullBleed"]
      152 JUMPIFNOT                        R33 ; [+12]
      153 GETUPVAL                         R33 12
      154 GETTABLEKS                       R34 R2 K19 ["children"]
      156 CALL                             R33 1 1
      157 MOVE                             R30 R33
      158 GETUPVAL                         R33 9
      159 GETTABLEKS                       R33 R33 K17 ["useBinding"]
      161 LOADN                            R34 0
      162 CALL                             R33 1 2
      163 MOVE                             R31 R33
      164 MOVE                             R32 R34
      165 GETUPVAL                         R33 9
      166 GETTABLEKS                       R33 R33 K16 ["useRef"]
      168 LOADN                            R34 0
      169 CALL                             R33 1 1
      170 GETUPVAL                         R34 9
      171 GETTABLEKS                       R34 R34 K16 ["useRef"]
      173 LOADNIL                          R35
      174 CALL                             R34 1 1
      175 GETUPVAL                         R35 9
      176 GETTABLEKS                       R35 R35 K17 ["useBinding"]
      178 LOADN                            R36 0
      179 CALL                             R35 1 2
      180 GETUPVAL                         R37 9
      181 GETTABLEKS                       R37 R37 K17 ["useBinding"]
      183 LOADB                            R38 0
      184 CALL                             R37 1 2
      185 GETUPVAL                         R39 9
      186 GETTABLEKS                       R39 R39 K16 ["useRef"]
      188 LOADB                            R40 0
      189 CALL                             R39 1 1
      190 GETUPVAL                         R40 9
      191 GETTABLEKS                       R40 R40 K16 ["useRef"]
      193 LOADN                            R41 0
      194 CALL                             R40 1 1
      195 GETUPVAL                         R41 9
      196 GETTABLEKS                       R41 R41 K16 ["useRef"]
      198 LOADNIL                          R42
      199 CALL                             R41 1 1
      200 GETUPVAL                         R42 9
      201 GETTABLEKS                       R42 R42 K16 ["useRef"]
      203 LOADB                            R43 0
      204 CALL                             R42 1 1
      205 GETUPVAL                         R43 9
      206 GETTABLEKS                       R43 R43 K16 ["useRef"]
      208 LOADN                            R44 0
      209 CALL                             R43 1 1
      210 GETUPVAL                         R44 9
      211 GETTABLEKS                       R44 R44 K11 ["useCallback"]
      213 NEWCLOSURE                       R45 P3
      214 CAPTURE                          VAL R41
      215 CAPTURE                          VAL R40
      216 CAPTURE                          VAL R42
      217 NEWTABLE                         R46 0 0
      219 CALL                             R44 2 1
      220 GETUPVAL                         R45 9
      221 GETTABLEKS                       R45 R45 K11 ["useCallback"]
      223 NEWCLOSURE                       R46 P4
      224 CAPTURE                          VAL R44
      225 CAPTURE                          VAL R42
      226 CAPTURE                          UPVAL U8
      227 CAPTURE                          VAL R34
      228 CAPTURE                          VAL R41
      229 CAPTURE                          VAL R43
      230 NEWTABLE                         R47 0 1
      232 MOVE                             R48 R44
      233 SETLIST                          R47 R48 1 [1]
      235 CALL                             R45 2 1
      236 GETUPVAL                         R46 9
      237 GETTABLEKS                       R46 R46 K11 ["useCallback"]
      239 NEWCLOSURE                       R47 P5
      240 CAPTURE                          UPVAL U8
      241 CAPTURE                          VAL R15
      242 CAPTURE                          REF R16
      243 CAPTURE                          VAL R17
      244 NEWTABLE                         R48 0 3
      246 MOVE                             R49 R17
      247 MOVE                             R50 R15
      248 GETUPVAL                         R52 8
      249 GETTABLEKS                       R52 R52 K5 ["FoundationBottomSheetCapToOverlayHeight"]
      251 JUMPIFNOT                        R52 ; [+2]
      252 MOVE                             R51 R16
      253 JUMP                             ; [+1]
      254 LOADNIL                          R51
      255 SETLIST                          R48 R49 3 [1]
      257 CALL                             R46 2 1
      258 GETUPVAL                         R47 9
      259 GETTABLEKS                       R47 R47 K11 ["useCallback"]
      261 NEWCLOSURE                       R48 P6
      262 CAPTURE                          VAL R18
      263 CAPTURE                          VAL R45
      264 CAPTURE                          VAL R46
      265 CAPTURE                          VAL R14
      266 NEWTABLE                         R49 0 2
      268 MOVE                             R50 R46
      269 MOVE                             R51 R14
      270 SETLIST                          R49 R50 2 [1]
      272 CALL                             R47 2 1
      273 GETUPVAL                         R48 9
      274 GETTABLEKS                       R48 R48 K11 ["useCallback"]
      276 NEWCLOSURE                       R49 P7
      277 CAPTURE                          VAL R44
      278 CAPTURE                          VAL R18
      279 CAPTURE                          VAL R34
      280 CAPTURE                          VAL R46
      281 CAPTURE                          VAL R14
      282 NEWTABLE                         R50 0 3
      284 MOVE                             R51 R44
      285 MOVE                             R52 R46
      286 MOVE                             R53 R14
      287 SETLIST                          R50 R51 3 [1]
      289 CALL                             R48 2 1
      290 GETUPVAL                         R49 9
      291 GETTABLEKS                       R49 R49 K11 ["useCallback"]
      293 NEWCLOSURE                       R50 P8
      294 CAPTURE                          VAL R19
      295 CAPTURE                          VAL R7
      296 CAPTURE                          VAL R44
      297 CAPTURE                          VAL R34
      298 CAPTURE                          VAL R21
      299 CAPTURE                          UPVAL U13
      300 CAPTURE                          VAL R43
      301 CAPTURE                          VAL R40
      302 CAPTURE                          VAL R45
      303 CAPTURE                          VAL R4
      304 NEWTABLE                         R51 0 3
      306 MOVE                             R52 R45
      307 MOVE                             R53 R44
      308 MOVE                             R54 R7
      309 SETLIST                          R51 R52 3 [1]
      311 CALL                             R49 2 1
      312 GETUPVAL                         R50 9
      313 GETTABLEKS                       R50 R50 K11 ["useCallback"]
      315 NEWCLOSURE                       R51 P9
      316 CAPTURE                          VAL R35
      317 CAPTURE                          VAL R33
      318 CAPTURE                          UPVAL U8
      319 CAPTURE                          REF R16
      320 CAPTURE                          VAL R17
      321 CAPTURE                          VAL R40
      322 CAPTURE                          VAL R39
      323 CAPTURE                          VAL R38
      324 NEWTABLE                         R52 0 2
      326 MOVE                             R53 R16
      327 MOVE                             R54 R17
      328 SETLIST                          R52 R53 2 [1]
      330 CALL                             R50 2 1
      331 GETUPVAL                         R51 9
      332 GETTABLEKS                       R51 R51 K11 ["useCallback"]
      334 NEWCLOSURE                       R52 P10
      335 CAPTURE                          VAL R40
      336 CAPTURE                          VAL R33
      337 CAPTURE                          VAL R14
      338 CAPTURE                          VAL R46
      339 CAPTURE                          VAL R39
      340 CAPTURE                          VAL R43
      341 CAPTURE                          VAL R49
      342 CAPTURE                          VAL R47
      343 NEWTABLE                         R53 0 4
      345 MOVE                             R54 R14
      346 MOVE                             R55 R47
      347 MOVE                             R56 R46
      348 MOVE                             R57 R49
      349 SETLIST                          R53 R54 4 [1]
      351 CALL                             R51 2 1
      352 GETUPVAL                         R52 9
      353 GETTABLEKS                       R52 R52 K20 ["useEffect"]
      355 NEWCLOSURE                       R53 P11
      356 CAPTURE                          VAL R3
      357 CAPTURE                          VAL R7
      358 CAPTURE                          VAL R48
      359 CAPTURE                          VAL R2
      360 CAPTURE                          VAL R21
      361 CAPTURE                          UPVAL U13
      362 CAPTURE                          VAL R47
      363 CAPTURE                          VAL R4
      364 CAPTURE                          UPVAL U8
      365 CAPTURE                          VAL R15
      366 CAPTURE                          VAL R14
      367 CAPTURE                          REF R16
      368 CAPTURE                          VAL R38
      369 CAPTURE                          VAL R44
      370 NEWTABLE                         R54 0 7
      372 MOVE                             R55 R3
      373 MOVE                             R56 R14
      374 GETTABLEKS                       R57 R2 K21 ["defaultSnapPointIndex"]
      376 MOVE                             R58 R47
      377 MOVE                             R59 R15
      378 MOVE                             R60 R48
      379 MOVE                             R61 R7
      380 SETLIST                          R54 R55 7 [1]
      382 CALL                             R52 2 0
      383 GETUPVAL                         R52 9
      384 GETTABLEKS                       R52 R52 K20 ["useEffect"]
      386 NEWCLOSURE                       R53 P12
      387 CAPTURE                          VAL R40
      388 CAPTURE                          VAL R50
      389 CAPTURE                          VAL R39
      390 CAPTURE                          VAL R44
      391 CAPTURE                          UPVAL U8
      392 CAPTURE                          VAL R34
      393 CAPTURE                          VAL R33
      394 CAPTURE                          REF R16
      395 CAPTURE                          VAL R17
      396 CAPTURE                          VAL R19
      397 CAPTURE                          VAL R38
      398 CAPTURE                          VAL R51
      399 NEWTABLE                         R54 0 4
      401 MOVE                             R55 R3
      402 MOVE                             R56 R51
      403 MOVE                             R57 R50
      404 MOVE                             R58 R44
      405 SETLIST                          R54 R55 4 [1]
      407 CALL                             R52 2 0
      408 GETUPVAL                         R52 9
      409 GETTABLEKS                       R52 R52 K16 ["useRef"]
      411 LOADNIL                          R53
      412 CALL                             R52 1 1
      413 GETUPVAL                         R53 9
      414 GETTABLEKS                       R53 R53 K6 ["useState"]
      416 LOADNIL                          R54
      417 CALL                             R53 1 2
      418 GETUPVAL                         R55 9
      419 GETTABLEKS                       R55 R55 K6 ["useState"]
      421 LOADNIL                          R56
      422 CALL                             R55 1 2
      423 GETUPVAL                         R57 14
      424 GETTABLEKS                       R57 R57 K22 ["useComposedRef"]
      426 MOVE                             R58 R1
      427 MOVE                             R59 R56
      428 CALL                             R57 2 1
      429 GETUPVAL                         R58 9
      430 GETTABLEKS                       R58 R58 K23 ["useImperativeHandle"]
      432 GETTABLEKS                       R59 R2 K24 ["sheetRef"]
      434 NEWCLOSURE                       R60 P13
      435 CAPTURE                          VAL R49
      436 NEWTABLE                         R61 0 0
      438 CALL                             R58 3 0
      439 GETUPVAL                         R58 9
      440 GETTABLEKS                       R58 R58 K9 ["useMemo"]
      442 NEWCLOSURE                       R59 P14
      443 CAPTURE                          VAL R24
      444 CAPTURE                          VAL R25
      445 CAPTURE                          VAL R26
      446 CAPTURE                          VAL R27
      447 CAPTURE                          VAL R22
      448 CAPTURE                          VAL R23
      449 CAPTURE                          VAL R17
      450 CAPTURE                          VAL R37
      451 CAPTURE                          VAL R35
      452 CAPTURE                          VAL R36
      453 CAPTURE                          VAL R50
      454 CAPTURE                          VAL R28
      455 CAPTURE                          VAL R29
      456 CAPTURE                          UPVAL U8
      457 CAPTURE                          REF R30
      458 CAPTURE                          REF R31
      459 CAPTURE                          REF R32
      460 CAPTURE                          VAL R49
      461 CAPTURE                          UPVAL U15
      462 CAPTURE                          VAL R55
      463 CAPTURE                          VAL R2
      464 CAPTURE                          VAL R52
      465 CAPTURE                          VAL R53
      466 CAPTURE                          VAL R54
      467 NEWTABLE                         R60 0 8
      469 GETTABLEKS                       R61 R2 K25 ["testId"]
      471 MOVE                             R62 R49
      472 MOVE                             R63 R17
      473 MOVE                             R64 R50
      474 MOVE                             R65 R55
      475 MOVE                             R66 R52
      476 MOVE                             R67 R53
      477 MOVE                             R68 R30
      478 SETLIST                          R60 R61 8 [1]
      480 CALL                             R58 2 1
      481 GETUPVAL                         R59 9
      482 GETTABLEKS                       R59 R59 K26 ["createElement"]
      484 GETUPVAL                         R60 16
      485 DUPTABLE                         R61 K34 [{["ZIndex"] = 3, ["backgroundStyle"], ["Position"], ["AnchorPoint"], ["tag"] = "align-y-center size-1000-100 padding-y-small radius-small", ["testId"]}]
      486 GETTABLEKS                       R62 R4 K35 ["Color"]
      488 GETTABLEKS                       R62 R62 K36 ["Content"]
      490 GETTABLEKS                       R62 R62 K37 ["Muted"]
      492 SETTABLEKS                       R62 R61 K29 ["backgroundStyle"]
      494 GETUPVAL                         R63 8
      495 GETTABLEKS                       R63 R63 K18 ["FoundationSheetFullBleed"]
      497 JUMPIFNOT                        R63 ; [+18]
      498 GETIMPORT                        R62 K40 [UDim2.new]
      500 LOADK                            R63 K41 [0.5]
      501 LOADN                            R64 0
      502 LOADN                            R65 0
      503 JUMPIFNOT                        R30 ; [+5]
      504 GETTABLEKS                       R66 R4 K42 ["Padding"]
      506 GETTABLEKS                       R66 R66 K43 ["Small"]
      508 JUMP                             ; [+5]
      509 GETTABLEKS                       R67 R4 K42 ["Padding"]
      511 GETTABLEKS                       R67 R67 K44 ["XSmall"]
      513 MINUS                            R66 R67
      514 CALL                             R62 4 1
      515 JUMP                             ; [+1]
      516 LOADNIL                          R62
      517 SETTABLEKS                       R62 R61 K30 ["Position"]
      519 GETUPVAL                         R63 8
      520 GETTABLEKS                       R63 R63 K18 ["FoundationSheetFullBleed"]
      522 JUMPIFNOT                        R63 ; [+6]
      523 GETIMPORT                        R62 K46 [Vector2.new]
      525 LOADK                            R63 K41 [0.5]
      526 LOADN                            R64 0
      527 CALL                             R62 2 1
      528 JUMP                             ; [+1]
      529 LOADNIL                          R62
      530 SETTABLEKS                       R62 R61 K31 ["AnchorPoint"]
      532 LOADK                            R63 K47 ["%*--gripper"]
      533 GETTABLEKS                       R65 R2 K25 ["testId"]
      535 NAMECALL                         R63 R63 K48 ["format"]
      537 CALL                             R63 2 1
      538 MOVE                             R62 R63
      539 SETTABLEKS                       R62 R61 K25 ["testId"]
      541 DUPTABLE                         R62 K50 [{"TouchTarget"}]
      542 GETUPVAL                         R63 9
      543 GETTABLEKS                       R63 R63 K26 ["createElement"]
      545 GETUPVAL                         R64 16
      546 DUPTABLE                         R65 K54 [{["tag"] = "size-1000-600", ["stateLayer"], ["onActivated"]}]
      547 DUPTABLE                         R66 K56 [{"affordance"}]
      548 GETUPVAL                         R67 17
      549 GETTABLEKS                       R67 R67 K57 ["None"]
      551 SETTABLEKS                       R67 R66 K55 ["affordance"]
      553 SETTABLEKS                       R66 R65 K52 ["stateLayer"]
      555 NEWCLOSURE                       R66 P15
      556 CAPTURE                          VAL R39
      557 CAPTURE                          VAL R14
      558 CAPTURE                          VAL R18
      559 CAPTURE                          VAL R7
      560 CAPTURE                          VAL R48
      561 CAPTURE                          VAL R47
      562 CAPTURE                          UPVAL U8
      563 CAPTURE                          VAL R15
      564 CAPTURE                          REF R16
      565 CAPTURE                          VAL R38
      566 CAPTURE                          VAL R49
      567 SETTABLEKS                       R66 R65 K53 ["onActivated"]
      569 CALL                             R63 2 1
      570 SETTABLEKS                       R63 R62 K49 ["TouchTarget"]
      572 CALL                             R59 3 1
      573 MOVE                             R60 R3
      574 JUMPIFNOT                        R60 ; [+404]
      575 GETUPVAL                         R60 18
      576 GETTABLEKS                       R60 R60 K58 ["createPortal"]
      578 GETUPVAL                         R61 9
      579 GETTABLEKS                       R61 R61 K26 ["createElement"]
      581 GETUPVAL                         R62 16
      582 DUPTABLE                         R63 K64 [{["ZIndex"], ["ref"], ["selection"], ["selectionGroup"], ["tag"] = "size-full", ["testId"], ["onAbsoluteSizeChanged"]}]
      583 GETTABLEKS                       R64 R5 K65 ["zIndex"]
      585 SETTABLEKS                       R64 R63 K27 ["ZIndex"]
      587 SETTABLEKS                       R57 R63 K59 ["ref"]
      589 GETUPVAL                         R64 19
      590 GETTABLEKS                       R64 R64 K66 ["nonSelectable"]
      592 SETTABLEKS                       R64 R63 K60 ["selection"]
      594 GETUPVAL                         R64 19
      595 GETTABLEKS                       R64 R64 K67 ["isolatedSelectionGroup"]
      597 SETTABLEKS                       R64 R63 K61 ["selectionGroup"]
      599 LOADK                            R65 K68 ["%*--surface"]
      600 GETTABLEKS                       R67 R2 K25 ["testId"]
      602 NAMECALL                         R65 R65 K48 ["format"]
      604 CALL                             R65 2 1
      605 MOVE                             R64 R65
      606 SETTABLEKS                       R64 R63 K25 ["testId"]
      608 GETUPVAL                         R65 8
      609 GETTABLEKS                       R65 R65 K5 ["FoundationBottomSheetCapToOverlayHeight"]
      611 JUMPIFNOT                        R65 ; [+3]
      612 NEWCLOSURE                       R64 P16
      613 CAPTURE                          REF R10
      614 JUMP                             ; [+1]
      615 LOADNIL                          R64
      616 SETTABLEKS                       R64 R63 K63 ["onAbsoluteSizeChanged"]
      618 GETUPVAL                         R64 9
      619 GETTABLEKS                       R64 R64 K26 ["createElement"]
      621 LOADK                            R65 K69 ["ScrollingFrame"]
      622 NEWTABLE                         R66 8 0
      624 GETIMPORT                        R67 K71 [UDim2.fromScale]
      626 LOADN                            R68 1
      627 LOADN                            R69 1
      628 CALL                             R67 2 1
      629 SETTABLEKS                       R67 R66 K72 ["Size"]
      631 GETUPVAL                         R68 8
      632 GETTABLEKS                       R68 R68 K73 ["FoundationSheetPreventCloseOnResize"]
      634 JUMPIFNOT                        R68 ; [+8]
      635 GETIMPORT                        R67 K40 [UDim2.new]
      637 LOADN                            R68 1
      638 LOADN                            R69 0
      639 LOADN                            R70 1
      640 ADD                              R71 R16 R17
      641 CALL                             R67 4 1
      642 JUMP                             ; [+8]
      643 GETIMPORT                        R67 K40 [UDim2.new]
      645 LOADN                            R68 1
      646 LOADN                            R69 0
      647 LOADN                            R70 0
      648 ADD                              R72 R8 R16
      649 ADD                              R71 R72 R17
      650 CALL                             R67 4 1
      651 SETTABLEKS                       R67 R66 K74 ["CanvasSize"]
      653 LOADB                            R67 0
      654 SETTABLEKS                       R67 R66 K75 ["ClipsDescendants"]
      656 LOADN                            R67 1
      657 SETTABLEKS                       R67 R66 K76 ["BackgroundTransparency"]
      659 GETIMPORT                        R67 K79 [Enum.ScrollingDirection.Y]
      661 SETTABLEKS                       R67 R66 K78 ["ScrollingDirection"]
      663 LOADN                            R67 0
      664 SETTABLEKS                       R67 R66 K80 ["ScrollBarThickness"]
      666 SETTABLEKS                       R34 R66 K59 ["ref"]
      668 GETUPVAL                         R67 9
      669 GETTABLEKS                       R67 R67 K81 ["Change"]
      671 GETTABLEKS                       R67 R67 K82 ["CanvasPosition"]
      673 NEWCLOSURE                       R68 P17
      674 CAPTURE                          VAL R33
      675 CAPTURE                          VAL R23
      676 CAPTURE                          VAL R17
      677 CAPTURE                          VAL R4
      678 CAPTURE                          VAL R50
      679 CAPTURE                          VAL R49
      680 SETTABLE                         R68 R66 R67
      681 DUPTABLE                         R67 K86 [{"SheetContainer", "Shadow", "Backdrop"}]
      682 GETUPVAL                         R68 9
      683 GETTABLEKS                       R68 R68 K26 ["createElement"]
      685 GETUPVAL                         R69 16
      686 DUPTABLE                         R70 K87 [{["Size"], ["Position"], ["ZIndex"] = 3}]
      687 GETUPVAL                         R72 8
      688 GETTABLEKS                       R72 R72 K73 ["FoundationSheetPreventCloseOnResize"]
      690 JUMPIFNOT                        R72 ; [+9]
      691 GETIMPORT                        R71 K40 [UDim2.new]
      693 LOADN                            R72 1
      694 LOADN                            R73 0
      695 LOADN                            R74 1
      696 SUBRK                            R76 K88 [200] R16
      697 SUB                              R75 R76 R17
      698 CALL                             R71 4 1
      699 JUMP                             ; [+7]
      700 GETIMPORT                        R71 K40 [UDim2.new]
      702 LOADN                            R72 1
      703 LOADN                            R73 0
      704 LOADN                            R74 0
      705 ADDK                             R75 R8 K88 [200]
      706 CALL                             R71 4 1
      707 SETTABLEKS                       R71 R70 K72 ["Size"]
      709 GETUPVAL                         R72 8
      710 GETTABLEKS                       R72 R72 K73 ["FoundationSheetPreventCloseOnResize"]
      712 JUMPIFNOT                        R72 ; [+8]
      713 GETIMPORT                        R71 K40 [UDim2.new]
      715 LOADN                            R72 0
      716 LOADN                            R73 0
      717 LOADN                            R74 1
      718 MINUS                            R75 R16
      719 CALL                             R71 4 1
      720 JUMP                             ; [+5]
      721 GETIMPORT                        R71 K90 [UDim2.fromOffset]
      723 LOADN                            R72 0
      724 ADD                              R73 R8 R17
      725 CALL                             R71 2 1
      726 SETTABLEKS                       R71 R70 K30 ["Position"]
      728 DUPTABLE                         R71 K91 [{"Sheet"}]
      729 GETUPVAL                         R72 9
      730 GETTABLEKS                       R72 R72 K26 ["createElement"]
      732 GETUPVAL                         R73 16
      733 DUPTABLE                         R74 K93 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      734 GETTABLEKS                       R76 R2 K10 ["snapPoints"]
      736 JUMPIFNOTEQKNIL                  R76 ; [+7]
      738 GETIMPORT                        R75 K71 [UDim2.fromScale]
      740 LOADN                            R76 1
      741 LOADN                            R77 0
      742 CALL                             R75 2 1
      743 JUMP                             ; [+7]
      744 GETIMPORT                        R75 K40 [UDim2.new]
      746 LOADN                            R76 1
      747 LOADN                            R77 0
      748 LOADN                            R78 0
      749 ADDK                             R79 R16 K88 [200]
      750 CALL                             R75 4 1
      751 SETTABLEKS                       R75 R74 K72 ["Size"]
      753 GETTABLEKS                       R76 R2 K10 ["snapPoints"]
      755 JUMPIFNOTEQKNIL                  R76 ; [+4]
      757 GETIMPORT                        R75 K94 [Enum.AutomaticSize.Y]
      759 JUMP                             ; [+1]
      760 LOADNIL                          R75
      761 SETTABLEKS                       R75 R74 K92 ["AutomaticSize"]
      763 GETTABLEKS                       R76 R2 K10 ["snapPoints"]
      765 JUMPIFNOTEQKNIL                  R76 ; [+4]
      767 NEWCLOSURE                       R75 P18
      768 CAPTURE                          VAL R12
      769 JUMP                             ; [+1]
      770 LOADNIL                          R75
      771 SETTABLEKS                       R75 R74 K63 ["onAbsoluteSizeChanged"]
      773 DUPTABLE                         R75 K56 [{"affordance"}]
      774 GETUPVAL                         R76 17
      775 GETTABLEKS                       R76 R76 K57 ["None"]
      777 SETTABLEKS                       R76 R75 K55 ["affordance"]
      779 SETTABLEKS                       R75 R74 K52 ["stateLayer"]
      781 GETUPVAL                         R75 20
      782 GETTABLEKS                       R75 R75 K95 ["noop"]
      784 SETTABLEKS                       R75 R74 K53 ["onActivated"]
      786 GETTABLEKS                       R75 R2 K25 ["testId"]
      788 SETTABLEKS                       R75 R74 K25 ["testId"]
      790 GETUPVAL                         R76 8
      791 GETTABLEKS                       R76 R76 K18 ["FoundationSheetFullBleed"]
      793 JUMPIFNOT                        R76 ; [+9]
      794 NEWTABLE                         R75 2 0
      796 LOADB                            R76 1
      797 SETTABLEKS                       R76 R75 K96 ["col items-center radius-large clip bg-surface-100"]
      799 NOT                              R76 R30
      800 SETTABLEKS                       R76 R75 K97 ["padding-top-medium"]
      802 JUMP                             ; [+1]
      803 LOADK                            R75 K98 ["col items-center padding-top-small radius-large clip bg-surface-100"]
      804 SETTABLEKS                       R75 R74 K32 ["tag"]
      806 DUPTABLE                         R75 K100 [{"GripperContainer", "Content"}]
      807 GETUPVAL                         R77 8
      808 GETTABLEKS                       R77 R77 K18 ["FoundationSheetFullBleed"]
      810 JUMPIFNOT                        R77 ; [+10]
      811 GETUPVAL                         R76 9
      812 GETTABLEKS                       R76 R76 K26 ["createElement"]
      814 LOADK                            R77 K101 ["Folder"]
      815 LOADNIL                          R78
      816 DUPTABLE                         R79 K103 [{"Gripper"}]
      817 SETTABLEKS                       R59 R79 K102 ["Gripper"]
      819 CALL                             R76 3 1
      820 JUMP                             ; [+1]
      821 MOVE                             R76 R59
      822 SETTABLEKS                       R76 R75 K99 ["GripperContainer"]
      824 GETUPVAL                         R76 9
      825 GETTABLEKS                       R76 R76 K26 ["createElement"]
      827 GETUPVAL                         R77 21
      828 GETTABLEKS                       R77 R77 K104 ["Provider"]
      830 DUPTABLE                         R78 K106 [{"value"}]
      831 SETTABLEKS                       R58 R78 K105 ["value"]
      833 GETUPVAL                         R79 9
      834 GETTABLEKS                       R79 R79 K26 ["createElement"]
      836 GETUPVAL                         R80 22
      837 DUPTABLE                         R81 K108 [{"owner"}]
      838 SETTABLEKS                       R5 R81 K107 ["owner"]
      840 GETTABLEKS                       R82 R2 K19 ["children"]
      842 CALL                             R79 3 -1
      843 CALL                             R76 -1 1
      844 SETTABLEKS                       R76 R75 K36 ["Content"]
      846 CALL                             R72 3 1
      847 SETTABLEKS                       R72 R71 K0 ["Sheet"]
      849 CALL                             R68 3 1
      850 SETTABLEKS                       R68 R67 K83 ["SheetContainer"]
      852 GETUPVAL                         R68 9
      853 GETTABLEKS                       R68 R68 K26 ["createElement"]
      855 GETUPVAL                         R69 23
      856 DUPTABLE                         R70 K113 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      857 GETUPVAL                         R71 24
      858 SETTABLEKS                       R71 R70 K109 ["Image"]
      860 GETIMPORT                        R71 K40 [UDim2.new]
      862 LOADN                            R72 1
      863 GETUPVAL                         R74 25
      864 MULK                             R73 R74 K110 [2]
      865 LOADN                            R74 0
      866 ADDK                             R76 R16 K88 [200]
      867 GETUPVAL                         R78 25
      868 MULK                             R77 R78 K110 [2]
      869 ADD                              R75 R76 R77
      870 CALL                             R71 4 1
      871 SETTABLEKS                       R71 R70 K72 ["Size"]
      873 GETUPVAL                         R72 8
      874 GETTABLEKS                       R72 R72 K73 ["FoundationSheetPreventCloseOnResize"]
      876 JUMPIFNOT                        R72 ; [+11]
      877 GETIMPORT                        R71 K40 [UDim2.new]
      879 GETUPVAL                         R73 25
      880 MINUS                            R72 R73
      881 LOADN                            R73 0
      882 LOADN                            R74 1
      883 MINUS                            R76 R16
      884 GETUPVAL                         R77 25
      885 SUB                              R75 R76 R77
      886 CALL                             R71 4 1
      887 JUMP                             ; [+8]
      888 GETIMPORT                        R71 K90 [UDim2.fromOffset]
      890 GETUPVAL                         R73 25
      891 MINUS                            R72 R73
      892 ADD                              R74 R8 R17
      893 GETUPVAL                         R75 25
      894 SUB                              R73 R74 R75
      895 CALL                             R71 2 1
      896 SETTABLEKS                       R71 R70 K30 ["Position"]
      898 DUPTABLE                         R71 K116 [{["center"], ["scale"] = 2}]
      899 GETIMPORT                        R72 K118 [Rect.new]
      901 GETUPVAL                         R73 25
      902 GETUPVAL                         R74 25
      903 GETUPVAL                         R76 25
      904 ADDK                             R75 R76 K119 [1]
      905 GETUPVAL                         R77 25
      906 ADDK                             R76 R77 K119 [1]
      907 CALL                             R72 4 1
      908 SETTABLEKS                       R72 R71 K114 ["center"]
      910 SETTABLEKS                       R71 R70 K111 ["slice"]
      912 GETTABLEKS                       R71 R4 K35 ["Color"]
      914 GETTABLEKS                       R71 R71 K120 ["Extended"]
      916 GETTABLEKS                       R71 R71 K121 ["Black"]
      918 GETTABLEKS                       R71 R71 K122 ["Black_10"]
      920 SETTABLEKS                       R71 R70 K112 ["imageStyle"]
      922 CALL                             R68 2 1
      923 SETTABLEKS                       R68 R67 K84 ["Shadow"]
      925 GETUPVAL                         R68 9
      926 GETTABLEKS                       R68 R68 K26 ["createElement"]
      928 GETUPVAL                         R69 16
      929 DUPTABLE                         R70 K123 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      930 GETIMPORT                        R71 K71 [UDim2.fromScale]
      932 LOADN                            R72 1
      933 LOADN                            R73 2
      934 CALL                             R71 2 1
      935 SETTABLEKS                       R71 R70 K72 ["Size"]
      937 GETIMPORT                        R71 K71 [UDim2.fromScale]
      939 LOADN                            R72 0
      940 LOADK                            R73 K124 [-0.5]
      941 CALL                             R71 2 1
      942 SETTABLEKS                       R71 R70 K30 ["Position"]
      944 DUPTABLE                         R71 K56 [{"affordance"}]
      945 GETUPVAL                         R72 17
      946 GETTABLEKS                       R72 R72 K57 ["None"]
      948 SETTABLEKS                       R72 R71 K55 ["affordance"]
      950 SETTABLEKS                       R71 R70 K52 ["stateLayer"]
      952 NEWCLOSURE                       R73 P19
      953 CAPTURE                          VAL R4
      954 NAMECALL                         R71 R20 K125 ["map"]
      956 CALL                             R71 2 1
      957 SETTABLEKS                       R71 R70 K29 ["backgroundStyle"]
      959 NEWCLOSURE                       R71 P20
      960 CAPTURE                          VAL R49
      961 SETTABLEKS                       R71 R70 K53 ["onActivated"]
      963 LOADK                            R72 K126 ["%*--backdrop"]
      964 GETTABLEKS                       R74 R2 K25 ["testId"]
      966 NAMECALL                         R72 R72 K48 ["format"]
      968 CALL                             R72 2 1
      969 MOVE                             R71 R72
      970 SETTABLEKS                       R71 R70 K25 ["testId"]
      972 CALL                             R68 2 1
      973 SETTABLEKS                       R68 R67 K85 ["Backdrop"]
      975 CALL                             R64 3 -1
      976 CALL                             R61 -1 1
      977 MOVE                             R62 R3
      978 CALL                             R60 2 1
      979 CLOSEUPVALS                      R10
      980 RETURN                           R60 1

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
      189 DUPTABLE                         R27 K45 [{["defaultSnapPointIndex"] = 1, ["testId"] = "--foundation-sheet"}]
      190 GETTABLEKS                       R28 R16 K46 ["SHADOW_IMAGE"]
      192 GETTABLEKS                       R29 R16 K47 ["SHADOW_SIZE"]
      194 DUPCLOSURE                       R30 K48 [PROTO_0]
      195 DUPCLOSURE                       R31 K49 [PROTO_31]
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R27
      198 CAPTURE                          VAL R11
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R21
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R19
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R18
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R29
      222 GETTABLEKS                       R32 R4 K50 ["memo"]
      224 GETTABLEKS                       R33 R4 K51 ["forwardRef"]
      226 MOVE                             R34 R31
      227 CALL                             R33 1 -1
      228 CALL                             R32 -1 -1
      229 RETURN                           R32 -1
