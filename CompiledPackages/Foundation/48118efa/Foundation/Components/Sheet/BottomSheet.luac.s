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
        0 DUPTABLE                         R0 K26 [{[1], ["setActionsHeight"], ["hasActionsDivider"], ["setHasActionsDivider"], ["sheetHeightAvailable"], ["setSheetHeightAvailable"], ["safeAreaPadding"], ["bottomPadding"] = 200, ["innerScrollingEnabled"], ["innerScrollY"], ["innerScrollingRef"], ["setInnerScrollY"], ["hasHeader"], ["setHasHeader"], ["hasFullBleed"], ["fullBleedHeight"], ["setFullBleedHeight"], ["closeSheet"], ["hasRadius"], ["sheetType"], ["innerSurface"], ["testId"], ["closeAffordanceRef"], ["contentStartRef"], ["setContentStartRef"]}]
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
       28 GETUPVAL                         R2 9
       29 GETTABLEKS                       R2 R2 K27 ["FoundationBottomSheetInnerScrollingSync"]
       31 JUMPIFNOT                        R2 ; [+2]
       32 GETUPVAL                         R1 10
       33 JUMP                             ; [+1]
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K11 ["innerScrollingRef"]
       37 NEWCLOSURE                       R1 P0
       38 CAPTURE                          UPVAL U11
       39 CAPTURE                          UPVAL U12
       40 SETTABLEKS                       R1 R0 K12 ["setInnerScrollY"]
       42 GETUPVAL                         R1 13
       43 SETTABLEKS                       R1 R0 K13 ["hasHeader"]
       45 GETUPVAL                         R1 14
       46 SETTABLEKS                       R1 R0 K14 ["setHasHeader"]
       48 GETUPVAL                         R2 9
       49 GETTABLEKS                       R2 R2 K28 ["FoundationSheetFullBleed"]
       51 JUMPIFNOT                        R2 ; [+2]
       52 GETUPVAL                         R1 15
       53 JUMP                             ; [+1]
       54 LOADNIL                          R1
       55 SETTABLEKS                       R1 R0 K15 ["hasFullBleed"]
       57 GETUPVAL                         R2 9
       58 GETTABLEKS                       R2 R2 K28 ["FoundationSheetFullBleed"]
       60 JUMPIFNOT                        R2 ; [+2]
       61 GETUPVAL                         R1 16
       62 JUMP                             ; [+1]
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K16 ["fullBleedHeight"]
       66 GETUPVAL                         R2 9
       67 GETTABLEKS                       R2 R2 K28 ["FoundationSheetFullBleed"]
       69 JUMPIFNOT                        R2 ; [+2]
       70 GETUPVAL                         R1 17
       71 JUMP                             ; [+1]
       72 LOADNIL                          R1
       73 SETTABLEKS                       R1 R0 K17 ["setFullBleedHeight"]
       75 GETUPVAL                         R1 18
       76 SETTABLEKS                       R1 R0 K18 ["closeSheet"]
       78 GETUPVAL                         R2 9
       79 GETTABLEKS                       R2 R2 K28 ["FoundationSheetFullBleed"]
       81 JUMPIFNOT                        R2 ; [+2]
       82 LOADB                            R1 1
       83 JUMP                             ; [+1]
       84 LOADNIL                          R1
       85 SETTABLEKS                       R1 R0 K19 ["hasRadius"]
       87 GETUPVAL                         R1 19
       88 GETTABLEKS                       R1 R1 K29 ["Bottom"]
       90 SETTABLEKS                       R1 R0 K20 ["sheetType"]
       92 GETUPVAL                         R1 20
       93 SETTABLEKS                       R1 R0 K21 ["innerSurface"]
       95 GETUPVAL                         R1 21
       96 GETTABLEKS                       R1 R1 K22 ["testId"]
       98 SETTABLEKS                       R1 R0 K22 ["testId"]
      100 GETUPVAL                         R1 22
      101 SETTABLEKS                       R1 R0 K23 ["closeAffordanceRef"]
      103 GETUPVAL                         R1 23
      104 SETTABLEKS                       R1 R0 K24 ["contentStartRef"]
      106 GETUPVAL                         R1 24
      107 SETTABLEKS                       R1 R0 K25 ["setContentStartRef"]
      109 RETURN                           R0 1

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
      180 GETUPVAL                         R38 8
      181 GETTABLEKS                       R38 R38 K20 ["FoundationBottomSheetInnerScrollingSync"]
      183 JUMPIFNOT                        R38 ; [+6]
      184 GETUPVAL                         R37 9
      185 GETTABLEKS                       R37 R37 K16 ["useRef"]
      187 LOADNIL                          R38
      188 CALL                             R37 1 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R37
      191 GETUPVAL                         R38 9
      192 GETTABLEKS                       R38 R38 K17 ["useBinding"]
      194 LOADB                            R39 0
      195 CALL                             R38 1 2
      196 GETUPVAL                         R40 9
      197 GETTABLEKS                       R40 R40 K16 ["useRef"]
      199 LOADB                            R41 0
      200 CALL                             R40 1 1
      201 GETUPVAL                         R41 9
      202 GETTABLEKS                       R41 R41 K16 ["useRef"]
      204 LOADN                            R42 0
      205 CALL                             R41 1 1
      206 GETUPVAL                         R42 9
      207 GETTABLEKS                       R42 R42 K16 ["useRef"]
      209 LOADNIL                          R43
      210 CALL                             R42 1 1
      211 GETUPVAL                         R43 9
      212 GETTABLEKS                       R43 R43 K16 ["useRef"]
      214 LOADB                            R44 0
      215 CALL                             R43 1 1
      216 GETUPVAL                         R44 9
      217 GETTABLEKS                       R44 R44 K16 ["useRef"]
      219 LOADN                            R45 0
      220 CALL                             R44 1 1
      221 GETUPVAL                         R45 9
      222 GETTABLEKS                       R45 R45 K11 ["useCallback"]
      224 NEWCLOSURE                       R46 P3
      225 CAPTURE                          VAL R42
      226 CAPTURE                          VAL R41
      227 CAPTURE                          VAL R43
      228 NEWTABLE                         R47 0 0
      230 CALL                             R45 2 1
      231 GETUPVAL                         R46 9
      232 GETTABLEKS                       R46 R46 K11 ["useCallback"]
      234 NEWCLOSURE                       R47 P4
      235 CAPTURE                          VAL R45
      236 CAPTURE                          VAL R43
      237 CAPTURE                          UPVAL U8
      238 CAPTURE                          VAL R34
      239 CAPTURE                          VAL R42
      240 CAPTURE                          VAL R44
      241 NEWTABLE                         R48 0 1
      243 MOVE                             R49 R45
      244 SETLIST                          R48 R49 1 [1]
      246 CALL                             R46 2 1
      247 GETUPVAL                         R47 9
      248 GETTABLEKS                       R47 R47 K11 ["useCallback"]
      250 NEWCLOSURE                       R48 P5
      251 CAPTURE                          UPVAL U8
      252 CAPTURE                          VAL R15
      253 CAPTURE                          REF R16
      254 CAPTURE                          VAL R17
      255 NEWTABLE                         R49 0 3
      257 MOVE                             R50 R17
      258 MOVE                             R51 R15
      259 GETUPVAL                         R53 8
      260 GETTABLEKS                       R53 R53 K5 ["FoundationBottomSheetCapToOverlayHeight"]
      262 JUMPIFNOT                        R53 ; [+2]
      263 MOVE                             R52 R16
      264 JUMP                             ; [+1]
      265 LOADNIL                          R52
      266 SETLIST                          R49 R50 3 [1]
      268 CALL                             R47 2 1
      269 GETUPVAL                         R48 9
      270 GETTABLEKS                       R48 R48 K11 ["useCallback"]
      272 NEWCLOSURE                       R49 P6
      273 CAPTURE                          VAL R18
      274 CAPTURE                          VAL R46
      275 CAPTURE                          VAL R47
      276 CAPTURE                          VAL R14
      277 NEWTABLE                         R50 0 2
      279 MOVE                             R51 R47
      280 MOVE                             R52 R14
      281 SETLIST                          R50 R51 2 [1]
      283 CALL                             R48 2 1
      284 GETUPVAL                         R49 9
      285 GETTABLEKS                       R49 R49 K11 ["useCallback"]
      287 NEWCLOSURE                       R50 P7
      288 CAPTURE                          VAL R45
      289 CAPTURE                          VAL R18
      290 CAPTURE                          VAL R34
      291 CAPTURE                          VAL R47
      292 CAPTURE                          VAL R14
      293 NEWTABLE                         R51 0 3
      295 MOVE                             R52 R45
      296 MOVE                             R53 R47
      297 MOVE                             R54 R14
      298 SETLIST                          R51 R52 3 [1]
      300 CALL                             R49 2 1
      301 GETUPVAL                         R50 9
      302 GETTABLEKS                       R50 R50 K11 ["useCallback"]
      304 NEWCLOSURE                       R51 P8
      305 CAPTURE                          VAL R19
      306 CAPTURE                          VAL R7
      307 CAPTURE                          VAL R45
      308 CAPTURE                          VAL R34
      309 CAPTURE                          VAL R21
      310 CAPTURE                          UPVAL U13
      311 CAPTURE                          VAL R44
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R46
      314 CAPTURE                          VAL R4
      315 NEWTABLE                         R52 0 3
      317 MOVE                             R53 R46
      318 MOVE                             R54 R45
      319 MOVE                             R55 R7
      320 SETLIST                          R52 R53 3 [1]
      322 CALL                             R50 2 1
      323 GETUPVAL                         R51 9
      324 GETTABLEKS                       R51 R51 K11 ["useCallback"]
      326 NEWCLOSURE                       R52 P9
      327 CAPTURE                          VAL R35
      328 CAPTURE                          VAL R33
      329 CAPTURE                          UPVAL U8
      330 CAPTURE                          REF R16
      331 CAPTURE                          VAL R17
      332 CAPTURE                          VAL R41
      333 CAPTURE                          VAL R40
      334 CAPTURE                          VAL R39
      335 NEWTABLE                         R53 0 2
      337 MOVE                             R54 R16
      338 MOVE                             R55 R17
      339 SETLIST                          R53 R54 2 [1]
      341 CALL                             R51 2 1
      342 GETUPVAL                         R52 9
      343 GETTABLEKS                       R52 R52 K11 ["useCallback"]
      345 NEWCLOSURE                       R53 P10
      346 CAPTURE                          VAL R41
      347 CAPTURE                          VAL R33
      348 CAPTURE                          VAL R14
      349 CAPTURE                          VAL R47
      350 CAPTURE                          VAL R40
      351 CAPTURE                          VAL R44
      352 CAPTURE                          VAL R50
      353 CAPTURE                          VAL R48
      354 NEWTABLE                         R54 0 4
      356 MOVE                             R55 R14
      357 MOVE                             R56 R48
      358 MOVE                             R57 R47
      359 MOVE                             R58 R50
      360 SETLIST                          R54 R55 4 [1]
      362 CALL                             R52 2 1
      363 GETUPVAL                         R53 9
      364 GETTABLEKS                       R53 R53 K21 ["useEffect"]
      366 NEWCLOSURE                       R54 P11
      367 CAPTURE                          VAL R3
      368 CAPTURE                          VAL R7
      369 CAPTURE                          VAL R49
      370 CAPTURE                          VAL R2
      371 CAPTURE                          VAL R21
      372 CAPTURE                          UPVAL U13
      373 CAPTURE                          VAL R48
      374 CAPTURE                          VAL R4
      375 CAPTURE                          UPVAL U8
      376 CAPTURE                          VAL R15
      377 CAPTURE                          VAL R14
      378 CAPTURE                          REF R16
      379 CAPTURE                          VAL R39
      380 CAPTURE                          VAL R45
      381 NEWTABLE                         R55 0 7
      383 MOVE                             R56 R3
      384 MOVE                             R57 R14
      385 GETTABLEKS                       R58 R2 K22 ["defaultSnapPointIndex"]
      387 MOVE                             R59 R48
      388 MOVE                             R60 R15
      389 MOVE                             R61 R49
      390 MOVE                             R62 R7
      391 SETLIST                          R55 R56 7 [1]
      393 CALL                             R53 2 0
      394 GETUPVAL                         R53 9
      395 GETTABLEKS                       R53 R53 K21 ["useEffect"]
      397 NEWCLOSURE                       R54 P12
      398 CAPTURE                          VAL R41
      399 CAPTURE                          VAL R51
      400 CAPTURE                          VAL R40
      401 CAPTURE                          VAL R45
      402 CAPTURE                          UPVAL U8
      403 CAPTURE                          VAL R34
      404 CAPTURE                          VAL R33
      405 CAPTURE                          REF R16
      406 CAPTURE                          VAL R17
      407 CAPTURE                          VAL R19
      408 CAPTURE                          VAL R39
      409 CAPTURE                          VAL R52
      410 NEWTABLE                         R55 0 4
      412 MOVE                             R56 R3
      413 MOVE                             R57 R52
      414 MOVE                             R58 R51
      415 MOVE                             R59 R45
      416 SETLIST                          R55 R56 4 [1]
      418 CALL                             R53 2 0
      419 GETUPVAL                         R53 9
      420 GETTABLEKS                       R53 R53 K16 ["useRef"]
      422 LOADNIL                          R54
      423 CALL                             R53 1 1
      424 GETUPVAL                         R54 9
      425 GETTABLEKS                       R54 R54 K6 ["useState"]
      427 LOADNIL                          R55
      428 CALL                             R54 1 2
      429 GETUPVAL                         R56 9
      430 GETTABLEKS                       R56 R56 K6 ["useState"]
      432 LOADNIL                          R57
      433 CALL                             R56 1 2
      434 GETUPVAL                         R58 14
      435 GETTABLEKS                       R58 R58 K23 ["useComposedRef"]
      437 MOVE                             R59 R1
      438 MOVE                             R60 R57
      439 CALL                             R58 2 1
      440 GETUPVAL                         R59 9
      441 GETTABLEKS                       R59 R59 K24 ["useImperativeHandle"]
      443 GETTABLEKS                       R60 R2 K25 ["sheetRef"]
      445 NEWCLOSURE                       R61 P13
      446 CAPTURE                          VAL R50
      447 NEWTABLE                         R62 0 0
      449 CALL                             R59 3 0
      450 GETUPVAL                         R59 9
      451 GETTABLEKS                       R59 R59 K9 ["useMemo"]
      453 NEWCLOSURE                       R60 P14
      454 CAPTURE                          VAL R24
      455 CAPTURE                          VAL R25
      456 CAPTURE                          VAL R26
      457 CAPTURE                          VAL R27
      458 CAPTURE                          VAL R22
      459 CAPTURE                          VAL R23
      460 CAPTURE                          VAL R17
      461 CAPTURE                          VAL R38
      462 CAPTURE                          VAL R35
      463 CAPTURE                          UPVAL U8
      464 CAPTURE                          VAL R37
      465 CAPTURE                          VAL R36
      466 CAPTURE                          VAL R51
      467 CAPTURE                          VAL R28
      468 CAPTURE                          VAL R29
      469 CAPTURE                          REF R30
      470 CAPTURE                          REF R31
      471 CAPTURE                          REF R32
      472 CAPTURE                          VAL R50
      473 CAPTURE                          UPVAL U15
      474 CAPTURE                          VAL R56
      475 CAPTURE                          VAL R2
      476 CAPTURE                          VAL R53
      477 CAPTURE                          VAL R54
      478 CAPTURE                          VAL R55
      479 NEWTABLE                         R61 0 8
      481 GETTABLEKS                       R62 R2 K26 ["testId"]
      483 MOVE                             R63 R50
      484 MOVE                             R64 R17
      485 MOVE                             R65 R51
      486 MOVE                             R66 R56
      487 MOVE                             R67 R53
      488 MOVE                             R68 R54
      489 MOVE                             R69 R30
      490 SETLIST                          R61 R62 8 [1]
      492 CALL                             R59 2 1
      493 GETUPVAL                         R60 9
      494 GETTABLEKS                       R60 R60 K27 ["createElement"]
      496 GETUPVAL                         R61 16
      497 DUPTABLE                         R62 K35 [{["ZIndex"] = 3, ["backgroundStyle"], ["Position"], ["AnchorPoint"], ["tag"] = "align-y-center size-1000-100 padding-y-small radius-small", ["testId"]}]
      498 GETTABLEKS                       R63 R4 K36 ["Color"]
      500 GETTABLEKS                       R63 R63 K37 ["Content"]
      502 GETTABLEKS                       R63 R63 K38 ["Muted"]
      504 SETTABLEKS                       R63 R62 K30 ["backgroundStyle"]
      506 GETUPVAL                         R64 8
      507 GETTABLEKS                       R64 R64 K18 ["FoundationSheetFullBleed"]
      509 JUMPIFNOT                        R64 ; [+18]
      510 GETIMPORT                        R63 K41 [UDim2.new]
      512 LOADK                            R64 K42 [0.5]
      513 LOADN                            R65 0
      514 LOADN                            R66 0
      515 JUMPIFNOT                        R30 ; [+5]
      516 GETTABLEKS                       R67 R4 K43 ["Padding"]
      518 GETTABLEKS                       R67 R67 K44 ["Small"]
      520 JUMP                             ; [+5]
      521 GETTABLEKS                       R68 R4 K43 ["Padding"]
      523 GETTABLEKS                       R68 R68 K45 ["XSmall"]
      525 MINUS                            R67 R68
      526 CALL                             R63 4 1
      527 JUMP                             ; [+1]
      528 LOADNIL                          R63
      529 SETTABLEKS                       R63 R62 K31 ["Position"]
      531 GETUPVAL                         R64 8
      532 GETTABLEKS                       R64 R64 K18 ["FoundationSheetFullBleed"]
      534 JUMPIFNOT                        R64 ; [+6]
      535 GETIMPORT                        R63 K47 [Vector2.new]
      537 LOADK                            R64 K42 [0.5]
      538 LOADN                            R65 0
      539 CALL                             R63 2 1
      540 JUMP                             ; [+1]
      541 LOADNIL                          R63
      542 SETTABLEKS                       R63 R62 K32 ["AnchorPoint"]
      544 LOADK                            R64 K48 ["%*--gripper"]
      545 GETTABLEKS                       R66 R2 K26 ["testId"]
      547 NAMECALL                         R64 R64 K49 ["format"]
      549 CALL                             R64 2 1
      550 MOVE                             R63 R64
      551 SETTABLEKS                       R63 R62 K26 ["testId"]
      553 DUPTABLE                         R63 K51 [{"TouchTarget"}]
      554 GETUPVAL                         R64 9
      555 GETTABLEKS                       R64 R64 K27 ["createElement"]
      557 GETUPVAL                         R65 16
      558 DUPTABLE                         R66 K55 [{["tag"] = "size-1000-600", ["stateLayer"], ["onActivated"]}]
      559 DUPTABLE                         R67 K57 [{"affordance"}]
      560 GETUPVAL                         R68 17
      561 GETTABLEKS                       R68 R68 K58 ["None"]
      563 SETTABLEKS                       R68 R67 K56 ["affordance"]
      565 SETTABLEKS                       R67 R66 K53 ["stateLayer"]
      567 NEWCLOSURE                       R67 P15
      568 CAPTURE                          VAL R40
      569 CAPTURE                          UPVAL U8
      570 CAPTURE                          VAL R37
      571 CAPTURE                          VAL R36
      572 CAPTURE                          VAL R14
      573 CAPTURE                          VAL R18
      574 CAPTURE                          VAL R7
      575 CAPTURE                          VAL R49
      576 CAPTURE                          VAL R48
      577 CAPTURE                          VAL R15
      578 CAPTURE                          REF R16
      579 CAPTURE                          VAL R39
      580 CAPTURE                          VAL R50
      581 SETTABLEKS                       R67 R66 K54 ["onActivated"]
      583 CALL                             R64 2 1
      584 SETTABLEKS                       R64 R63 K50 ["TouchTarget"]
      586 CALL                             R60 3 1
      587 MOVE                             R61 R3
      588 JUMPIFNOT                        R61 ; [+404]
      589 GETUPVAL                         R61 18
      590 GETTABLEKS                       R61 R61 K59 ["createPortal"]
      592 GETUPVAL                         R62 9
      593 GETTABLEKS                       R62 R62 K27 ["createElement"]
      595 GETUPVAL                         R63 16
      596 DUPTABLE                         R64 K65 [{["ZIndex"], ["ref"], ["selection"], ["selectionGroup"], ["tag"] = "size-full", ["testId"], ["onAbsoluteSizeChanged"]}]
      597 GETTABLEKS                       R65 R5 K66 ["zIndex"]
      599 SETTABLEKS                       R65 R64 K28 ["ZIndex"]
      601 SETTABLEKS                       R58 R64 K60 ["ref"]
      603 GETUPVAL                         R65 19
      604 GETTABLEKS                       R65 R65 K67 ["nonSelectable"]
      606 SETTABLEKS                       R65 R64 K61 ["selection"]
      608 GETUPVAL                         R65 19
      609 GETTABLEKS                       R65 R65 K68 ["isolatedSelectionGroup"]
      611 SETTABLEKS                       R65 R64 K62 ["selectionGroup"]
      613 LOADK                            R66 K69 ["%*--surface"]
      614 GETTABLEKS                       R68 R2 K26 ["testId"]
      616 NAMECALL                         R66 R66 K49 ["format"]
      618 CALL                             R66 2 1
      619 MOVE                             R65 R66
      620 SETTABLEKS                       R65 R64 K26 ["testId"]
      622 GETUPVAL                         R66 8
      623 GETTABLEKS                       R66 R66 K5 ["FoundationBottomSheetCapToOverlayHeight"]
      625 JUMPIFNOT                        R66 ; [+3]
      626 NEWCLOSURE                       R65 P16
      627 CAPTURE                          REF R10
      628 JUMP                             ; [+1]
      629 LOADNIL                          R65
      630 SETTABLEKS                       R65 R64 K64 ["onAbsoluteSizeChanged"]
      632 GETUPVAL                         R65 9
      633 GETTABLEKS                       R65 R65 K27 ["createElement"]
      635 LOADK                            R66 K70 ["ScrollingFrame"]
      636 NEWTABLE                         R67 8 0
      638 GETIMPORT                        R68 K72 [UDim2.fromScale]
      640 LOADN                            R69 1
      641 LOADN                            R70 1
      642 CALL                             R68 2 1
      643 SETTABLEKS                       R68 R67 K73 ["Size"]
      645 GETUPVAL                         R69 8
      646 GETTABLEKS                       R69 R69 K74 ["FoundationSheetPreventCloseOnResize"]
      648 JUMPIFNOT                        R69 ; [+8]
      649 GETIMPORT                        R68 K41 [UDim2.new]
      651 LOADN                            R69 1
      652 LOADN                            R70 0
      653 LOADN                            R71 1
      654 ADD                              R72 R16 R17
      655 CALL                             R68 4 1
      656 JUMP                             ; [+8]
      657 GETIMPORT                        R68 K41 [UDim2.new]
      659 LOADN                            R69 1
      660 LOADN                            R70 0
      661 LOADN                            R71 0
      662 ADD                              R73 R8 R16
      663 ADD                              R72 R73 R17
      664 CALL                             R68 4 1
      665 SETTABLEKS                       R68 R67 K75 ["CanvasSize"]
      667 LOADB                            R68 0
      668 SETTABLEKS                       R68 R67 K76 ["ClipsDescendants"]
      670 LOADN                            R68 1
      671 SETTABLEKS                       R68 R67 K77 ["BackgroundTransparency"]
      673 GETIMPORT                        R68 K80 [Enum.ScrollingDirection.Y]
      675 SETTABLEKS                       R68 R67 K79 ["ScrollingDirection"]
      677 LOADN                            R68 0
      678 SETTABLEKS                       R68 R67 K81 ["ScrollBarThickness"]
      680 SETTABLEKS                       R34 R67 K60 ["ref"]
      682 GETUPVAL                         R68 9
      683 GETTABLEKS                       R68 R68 K82 ["Change"]
      685 GETTABLEKS                       R68 R68 K83 ["CanvasPosition"]
      687 NEWCLOSURE                       R69 P17
      688 CAPTURE                          VAL R33
      689 CAPTURE                          VAL R23
      690 CAPTURE                          VAL R17
      691 CAPTURE                          VAL R4
      692 CAPTURE                          VAL R51
      693 CAPTURE                          VAL R50
      694 SETTABLE                         R69 R67 R68
      695 DUPTABLE                         R68 K87 [{"SheetContainer", "Shadow", "Backdrop"}]
      696 GETUPVAL                         R69 9
      697 GETTABLEKS                       R69 R69 K27 ["createElement"]
      699 GETUPVAL                         R70 16
      700 DUPTABLE                         R71 K88 [{["Size"], ["Position"], ["ZIndex"] = 3}]
      701 GETUPVAL                         R73 8
      702 GETTABLEKS                       R73 R73 K74 ["FoundationSheetPreventCloseOnResize"]
      704 JUMPIFNOT                        R73 ; [+9]
      705 GETIMPORT                        R72 K41 [UDim2.new]
      707 LOADN                            R73 1
      708 LOADN                            R74 0
      709 LOADN                            R75 1
      710 SUBRK                            R77 K89 [200] R16
      711 SUB                              R76 R77 R17
      712 CALL                             R72 4 1
      713 JUMP                             ; [+7]
      714 GETIMPORT                        R72 K41 [UDim2.new]
      716 LOADN                            R73 1
      717 LOADN                            R74 0
      718 LOADN                            R75 0
      719 ADDK                             R76 R8 K89 [200]
      720 CALL                             R72 4 1
      721 SETTABLEKS                       R72 R71 K73 ["Size"]
      723 GETUPVAL                         R73 8
      724 GETTABLEKS                       R73 R73 K74 ["FoundationSheetPreventCloseOnResize"]
      726 JUMPIFNOT                        R73 ; [+8]
      727 GETIMPORT                        R72 K41 [UDim2.new]
      729 LOADN                            R73 0
      730 LOADN                            R74 0
      731 LOADN                            R75 1
      732 MINUS                            R76 R16
      733 CALL                             R72 4 1
      734 JUMP                             ; [+5]
      735 GETIMPORT                        R72 K91 [UDim2.fromOffset]
      737 LOADN                            R73 0
      738 ADD                              R74 R8 R17
      739 CALL                             R72 2 1
      740 SETTABLEKS                       R72 R71 K31 ["Position"]
      742 DUPTABLE                         R72 K92 [{"Sheet"}]
      743 GETUPVAL                         R73 9
      744 GETTABLEKS                       R73 R73 K27 ["createElement"]
      746 GETUPVAL                         R74 16
      747 DUPTABLE                         R75 K94 [{"Size", "AutomaticSize", "onAbsoluteSizeChanged", "stateLayer", "onActivated", "testId", "tag"}]
      748 GETTABLEKS                       R77 R2 K10 ["snapPoints"]
      750 JUMPIFNOTEQKNIL                  R77 ; [+7]
      752 GETIMPORT                        R76 K72 [UDim2.fromScale]
      754 LOADN                            R77 1
      755 LOADN                            R78 0
      756 CALL                             R76 2 1
      757 JUMP                             ; [+7]
      758 GETIMPORT                        R76 K41 [UDim2.new]
      760 LOADN                            R77 1
      761 LOADN                            R78 0
      762 LOADN                            R79 0
      763 ADDK                             R80 R16 K89 [200]
      764 CALL                             R76 4 1
      765 SETTABLEKS                       R76 R75 K73 ["Size"]
      767 GETTABLEKS                       R77 R2 K10 ["snapPoints"]
      769 JUMPIFNOTEQKNIL                  R77 ; [+4]
      771 GETIMPORT                        R76 K95 [Enum.AutomaticSize.Y]
      773 JUMP                             ; [+1]
      774 LOADNIL                          R76
      775 SETTABLEKS                       R76 R75 K93 ["AutomaticSize"]
      777 GETTABLEKS                       R77 R2 K10 ["snapPoints"]
      779 JUMPIFNOTEQKNIL                  R77 ; [+4]
      781 NEWCLOSURE                       R76 P18
      782 CAPTURE                          VAL R12
      783 JUMP                             ; [+1]
      784 LOADNIL                          R76
      785 SETTABLEKS                       R76 R75 K64 ["onAbsoluteSizeChanged"]
      787 DUPTABLE                         R76 K57 [{"affordance"}]
      788 GETUPVAL                         R77 17
      789 GETTABLEKS                       R77 R77 K58 ["None"]
      791 SETTABLEKS                       R77 R76 K56 ["affordance"]
      793 SETTABLEKS                       R76 R75 K53 ["stateLayer"]
      795 GETUPVAL                         R76 20
      796 GETTABLEKS                       R76 R76 K96 ["noop"]
      798 SETTABLEKS                       R76 R75 K54 ["onActivated"]
      800 GETTABLEKS                       R76 R2 K26 ["testId"]
      802 SETTABLEKS                       R76 R75 K26 ["testId"]
      804 GETUPVAL                         R77 8
      805 GETTABLEKS                       R77 R77 K18 ["FoundationSheetFullBleed"]
      807 JUMPIFNOT                        R77 ; [+9]
      808 NEWTABLE                         R76 2 0
      810 LOADB                            R77 1
      811 SETTABLEKS                       R77 R76 K97 ["col items-center radius-large clip bg-surface-100"]
      813 NOT                              R77 R30
      814 SETTABLEKS                       R77 R76 K98 ["padding-top-medium"]
      816 JUMP                             ; [+1]
      817 LOADK                            R76 K99 ["col items-center padding-top-small radius-large clip bg-surface-100"]
      818 SETTABLEKS                       R76 R75 K33 ["tag"]
      820 DUPTABLE                         R76 K101 [{"GripperContainer", "Content"}]
      821 GETUPVAL                         R78 8
      822 GETTABLEKS                       R78 R78 K18 ["FoundationSheetFullBleed"]
      824 JUMPIFNOT                        R78 ; [+10]
      825 GETUPVAL                         R77 9
      826 GETTABLEKS                       R77 R77 K27 ["createElement"]
      828 LOADK                            R78 K102 ["Folder"]
      829 LOADNIL                          R79
      830 DUPTABLE                         R80 K104 [{"Gripper"}]
      831 SETTABLEKS                       R60 R80 K103 ["Gripper"]
      833 CALL                             R77 3 1
      834 JUMP                             ; [+1]
      835 MOVE                             R77 R60
      836 SETTABLEKS                       R77 R76 K100 ["GripperContainer"]
      838 GETUPVAL                         R77 9
      839 GETTABLEKS                       R77 R77 K27 ["createElement"]
      841 GETUPVAL                         R78 21
      842 GETTABLEKS                       R78 R78 K105 ["Provider"]
      844 DUPTABLE                         R79 K107 [{"value"}]
      845 SETTABLEKS                       R59 R79 K106 ["value"]
      847 GETUPVAL                         R80 9
      848 GETTABLEKS                       R80 R80 K27 ["createElement"]
      850 GETUPVAL                         R81 22
      851 DUPTABLE                         R82 K109 [{"owner"}]
      852 SETTABLEKS                       R5 R82 K108 ["owner"]
      854 GETTABLEKS                       R83 R2 K19 ["children"]
      856 CALL                             R80 3 -1
      857 CALL                             R77 -1 1
      858 SETTABLEKS                       R77 R76 K37 ["Content"]
      860 CALL                             R73 3 1
      861 SETTABLEKS                       R73 R72 K0 ["Sheet"]
      863 CALL                             R69 3 1
      864 SETTABLEKS                       R69 R68 K84 ["SheetContainer"]
      866 GETUPVAL                         R69 9
      867 GETTABLEKS                       R69 R69 K27 ["createElement"]
      869 GETUPVAL                         R70 23
      870 DUPTABLE                         R71 K114 [{["Image"], ["Size"], ["Position"], ["ZIndex"] = 2, ["slice"], ["imageStyle"]}]
      871 GETUPVAL                         R72 24
      872 SETTABLEKS                       R72 R71 K110 ["Image"]
      874 GETIMPORT                        R72 K41 [UDim2.new]
      876 LOADN                            R73 1
      877 GETUPVAL                         R75 25
      878 MULK                             R74 R75 K111 [2]
      879 LOADN                            R75 0
      880 ADDK                             R77 R16 K89 [200]
      881 GETUPVAL                         R79 25
      882 MULK                             R78 R79 K111 [2]
      883 ADD                              R76 R77 R78
      884 CALL                             R72 4 1
      885 SETTABLEKS                       R72 R71 K73 ["Size"]
      887 GETUPVAL                         R73 8
      888 GETTABLEKS                       R73 R73 K74 ["FoundationSheetPreventCloseOnResize"]
      890 JUMPIFNOT                        R73 ; [+11]
      891 GETIMPORT                        R72 K41 [UDim2.new]
      893 GETUPVAL                         R74 25
      894 MINUS                            R73 R74
      895 LOADN                            R74 0
      896 LOADN                            R75 1
      897 MINUS                            R77 R16
      898 GETUPVAL                         R78 25
      899 SUB                              R76 R77 R78
      900 CALL                             R72 4 1
      901 JUMP                             ; [+8]
      902 GETIMPORT                        R72 K91 [UDim2.fromOffset]
      904 GETUPVAL                         R74 25
      905 MINUS                            R73 R74
      906 ADD                              R75 R8 R17
      907 GETUPVAL                         R76 25
      908 SUB                              R74 R75 R76
      909 CALL                             R72 2 1
      910 SETTABLEKS                       R72 R71 K31 ["Position"]
      912 DUPTABLE                         R72 K117 [{["center"], ["scale"] = 2}]
      913 GETIMPORT                        R73 K119 [Rect.new]
      915 GETUPVAL                         R74 25
      916 GETUPVAL                         R75 25
      917 GETUPVAL                         R77 25
      918 ADDK                             R76 R77 K120 [1]
      919 GETUPVAL                         R78 25
      920 ADDK                             R77 R78 K120 [1]
      921 CALL                             R73 4 1
      922 SETTABLEKS                       R73 R72 K115 ["center"]
      924 SETTABLEKS                       R72 R71 K112 ["slice"]
      926 GETTABLEKS                       R72 R4 K36 ["Color"]
      928 GETTABLEKS                       R72 R72 K121 ["Extended"]
      930 GETTABLEKS                       R72 R72 K122 ["Black"]
      932 GETTABLEKS                       R72 R72 K123 ["Black_10"]
      934 SETTABLEKS                       R72 R71 K113 ["imageStyle"]
      936 CALL                             R69 2 1
      937 SETTABLEKS                       R69 R68 K85 ["Shadow"]
      939 GETUPVAL                         R69 9
      940 GETTABLEKS                       R69 R69 K27 ["createElement"]
      942 GETUPVAL                         R70 16
      943 DUPTABLE                         R71 K124 [{["Size"], ["Position"], ["ZIndex"] = 1, ["stateLayer"], ["backgroundStyle"], ["onActivated"], ["testId"]}]
      944 GETIMPORT                        R72 K72 [UDim2.fromScale]
      946 LOADN                            R73 1
      947 LOADN                            R74 2
      948 CALL                             R72 2 1
      949 SETTABLEKS                       R72 R71 K73 ["Size"]
      951 GETIMPORT                        R72 K72 [UDim2.fromScale]
      953 LOADN                            R73 0
      954 LOADK                            R74 K125 [-0.5]
      955 CALL                             R72 2 1
      956 SETTABLEKS                       R72 R71 K31 ["Position"]
      958 DUPTABLE                         R72 K57 [{"affordance"}]
      959 GETUPVAL                         R73 17
      960 GETTABLEKS                       R73 R73 K58 ["None"]
      962 SETTABLEKS                       R73 R72 K56 ["affordance"]
      964 SETTABLEKS                       R72 R71 K53 ["stateLayer"]
      966 NEWCLOSURE                       R74 P19
      967 CAPTURE                          VAL R4
      968 NAMECALL                         R72 R20 K126 ["map"]
      970 CALL                             R72 2 1
      971 SETTABLEKS                       R72 R71 K30 ["backgroundStyle"]
      973 NEWCLOSURE                       R72 P20
      974 CAPTURE                          VAL R50
      975 SETTABLEKS                       R72 R71 K54 ["onActivated"]
      977 LOADK                            R73 K127 ["%*--backdrop"]
      978 GETTABLEKS                       R75 R2 K26 ["testId"]
      980 NAMECALL                         R73 R73 K49 ["format"]
      982 CALL                             R73 2 1
      983 MOVE                             R72 R73
      984 SETTABLEKS                       R72 R71 K26 ["testId"]
      986 CALL                             R69 2 1
      987 SETTABLEKS                       R69 R68 K86 ["Backdrop"]
      989 CALL                             R65 3 -1
      990 CALL                             R62 -1 1
      991 MOVE                             R63 R3
      992 CALL                             R61 2 1
      993 CLOSEUPVALS                      R10
      994 RETURN                           R61 1

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
