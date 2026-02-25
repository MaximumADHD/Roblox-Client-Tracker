PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 JUMPIFEQKNIL                     R0 ; [+8]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R1 R2 K0 ["keypointsToStrTable"]
       13 GETUPVAL                         R2 4
       14 CALL                             R1 1 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 LOADN                            R2 1
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R0
        6 SETTABLE                         R4 R2 R0
        7 SETTABLE                         R5 R3 R1
        8 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R1
        1 LOADN                            R3 1
        2 JUMPIFLT                         R2 R3 ; [+4]
        4 LENGTH                           R3 R0
        5 JUMPIFNOTLT                      R3 R2 ; [+2]
        7 RETURN                           R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 LOADN                            R6 0
       11 GETUPVAL                         R4 0
       12 LOADN                            R5 1
       13 FORNPREP                         R4
       14 GETTABLE                         R7 R0 R2
       15 SUBK                             R9 R2 K0 [1]
       16 GETTABLE                         R8 R0 R9
       17 JUMPIFNOT                        R8 ; [+14]
       18 GETTABLEKS                       R9 R8 K1 ["X"]
       20 GETTABLEKS                       R10 R7 K1 ["X"]
       22 JUMPIFNOTLT                      R10 R9 ; [+9]
       24 SUBK                             R9 R2 K0 [1]
       25 MOVE                             R10 R2
       26 GETTABLE                         R11 R0 R10
       27 GETTABLE                         R12 R0 R9
       28 SETTABLE                         R11 R0 R9
       29 SETTABLE                         R12 R0 R10
       30 SUBK                             R2 R2 K0 [1]
       31 JUMP                             ; [+18]
       32 ADDK                             R10 R2 K0 [1]
       33 GETTABLE                         R9 R0 R10
       34 JUMPIFNOT                        R9 ; [+16]
       35 GETTABLEKS                       R10 R9 K1 ["X"]
       37 GETTABLEKS                       R11 R7 K1 ["X"]
       39 JUMPIFNOTLT                      R10 R11 ; [+11]
       41 MOVE                             R10 R2
       42 ADDK                             R11 R2 K0 [1]
       43 GETTABLE                         R12 R0 R11
       44 GETTABLE                         R13 R0 R10
       45 SETTABLE                         R12 R0 R10
       46 SETTABLE                         R13 R0 R11
       47 ADDK                             R2 R2 K0 [1]
       48 JUMP                             ; [+1]
       49 RETURN                           R2 1
       50 FORNLOOP                         R4
       51 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R4 R0 R1
        2 GETTABLEKS                       R3 R4 K0 ["X"]
        4 LOADN                            R4 3
        5 CALL                             R2 2 1
        6 LOADN                            R3 2
        7 JUMPIFNOTLE                      R3 R1 ; [+17]
        9 GETUPVAL                         R3 0
       10 SUBK                             R6 R1 K1 [1]
       11 GETTABLE                         R5 R0 R6
       12 GETTABLEKS                       R4 R5 K0 ["X"]
       14 LOADN                            R5 3
       15 CALL                             R3 2 1
       16 JUMPIFNOTEQ                      R3 R2 ; [+8]
       18 GETIMPORT                        R4 K4 [table.remove]
       20 MOVE                             R5 R0
       21 SUBK                             R6 R1 K1 [1]
       22 CALL                             R4 2 0
       23 SUBK                             R4 R1 K1 [1]
       24 RETURN                           R4 1
       25 LENGTH                           R4 R0
       26 SUBK                             R3 R4 K1 [1]
       27 JUMPIFNOTLE                      R1 R3 ; [+16]
       29 GETUPVAL                         R3 0
       30 ADDK                             R6 R1 K1 [1]
       31 GETTABLE                         R5 R0 R6
       32 GETTABLEKS                       R4 R5 K0 ["X"]
       34 LOADN                            R5 3
       35 CALL                             R3 2 1
       36 JUMPIFNOTEQ                      R3 R2 ; [+7]
       38 GETIMPORT                        R4 K4 [table.remove]
       40 MOVE                             R5 R0
       41 ADDK                             R6 R1 K1 [1]
       42 CALL                             R4 2 0
       43 RETURN                           R1 1
       44 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 LOADN                            R4 3
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K1 ["Y"]
        8 LOADN                            R5 3
        9 CALL                             R3 2 1
       10 GETIMPORT                        R4 K4 [Vector2.new]
       12 LOADN                            R7 0
       13 LOADN                            R8 180
       14 FASTCALL3                        MATH_CLAMP R2 R7 R8
       16 MOVE                             R6 R2
       17 GETIMPORT                        R5 K7 [math.clamp]
       19 CALL                             R5 3 1
       20 LOADN                            R8 0
       21 LOADN                            R9 1
       22 FASTCALL3                        MATH_CLAMP R3 R8 R9
       24 MOVE                             R7 R3
       25 GETIMPORT                        R6 K7 [math.clamp]
       27 CALL                             R6 3 1
       28 CALL                             R4 2 1
       29 MOVE                             R0 R4
       30 GETUPVAL                         R4 1
       31 GETUPVAL                         R5 2
       32 NEWTABLE                         R6 1 0
       34 GETUPVAL                         R7 3
       35 SETTABLE                         R0 R6 R7
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 4
       38 MOVE                             R6 R4
       39 GETUPVAL                         R7 3
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R1 ; [+5]
       42 GETUPVAL                         R6 5
       43 MOVE                             R7 R4
       44 MOVE                             R8 R5
       45 CALL                             R6 2 1
       46 MOVE                             R5 R6
       47 GETUPVAL                         R6 6
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 GETUPVAL                         R6 7
       51 MOVE                             R7 R4
       52 CALL                             R6 1 0
       53 GETUPVAL                         R6 8
       54 JUMPIFEQKNIL                     R6 ; [+3]
       56 GETUPVAL                         R6 8
       57 CALL                             R6 0 0
       58 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R1 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R2 R3
        3 JUMPIFNOTLE                      R1 R2 ; [+29]
        5 ADD                              R5 R1 R2
        6 DIVK                             R4 R5 K0 [2]
        7 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        8 GETIMPORT                        R3 K3 [math.floor]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLE                         R5 R6 R3
       13 GETTABLEKS                       R4 R5 K4 ["X"]
       15 GETTABLEKS                       R5 R0 K4 ["X"]
       17 JUMPIFNOTEQ                      R4 R5 ; [+3]
       19 MOVE                             R1 R3
       20 RETURN                           R1 1
       21 GETTABLEKS                       R4 R0 K4 ["X"]
       23 GETUPVAL                         R7 0
       24 GETTABLE                         R6 R7 R3
       25 GETTABLEKS                       R5 R6 K4 ["X"]
       27 JUMPIFNOTLT                      R4 R5 ; [+3]
       29 SUBK                             R2 R3 K5 [1]
       30 JUMP                             ; [+1]
       31 ADDK                             R1 R3 K5 [1]
       32 JUMPBACK                         ; [-30]
       33 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTLE                      R2 R1 ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 LENGTH                           R3 R1
       14 JUMPIFNOTLE                      R2 R3 ; [+10]
       16 GETTABLE                         R4 R1 R2
       17 GETTABLEKS                       R3 R4 K0 ["X"]
       19 GETTABLEKS                       R4 R0 K0 ["X"]
       21 JUMPIFNOTEQ                      R3 R4 ; [+3]
       23 SETTABLE                         R0 R1 R2
       24 JUMP                             ; [+8]
       25 FASTCALL3                        TABLE_INSERT R1 R2 R0
       27 MOVE                             R4 R1
       28 MOVE                             R5 R2
       29 MOVE                             R6 R0
       30 GETIMPORT                        R3 K3 [table.insert]
       32 CALL                             R3 3 0
       33 GETUPVAL                         R3 4
       34 MOVE                             R4 R1
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 5
       37 MOVE                             R4 R2
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 6
       40 JUMPIFEQKNIL                     R3 ; [+3]
       42 GETUPVAL                         R3 6
       43 CALL                             R3 0 0
       44 LOADB                            R3 1
       45 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETIMPORT                        R1 K2 [table.remove]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 3
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 LENGTH                           R1 R0
       12 GETUPVAL                         R2 2
       13 JUMPIFNOTLT                      R1 R2 ; [+4]
       15 GETUPVAL                         R1 4
       16 LENGTH                           R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 5
       19 JUMPIFEQKNIL                     R1 ; [+3]
       21 GETUPVAL                         R1 5
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFLE                         R0 R1 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 LENGTH                           R1 R2
        7 JUMPIFNOTLT                      R1 R0 ; [+3]
        9 LOADNIL                          R0
       10 RETURN                           R0 1
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 0
       13 GETTABLE                         R0 R1 R2
       14 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 2
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R0
        5 CALL                             R6 1 2
        6 GETUPVAL                         R8 0
        7 LOADN                            R9 1
        8 CALL                             R8 1 2
        9 LOADN                            R10 1
       10 GETUPVAL                         R12 1
       11 GETTABLEKS                       R11 R12 K0 ["DISTANCE"]
       13 JUMPIFNOTEQ                      R1 R11 ; [+20]
       15 LENGTH                           R11 R6
       16 LOADN                            R12 0
       17 JUMPIFNOTLT                      R12 R11 ; [+14]
       19 LOADN                            R12 100
       20 LENGTH                           R16 R6
       21 GETTABLE                         R15 R6 R16
       22 GETTABLEKS                       R14 R15 K2 ["X"]
       24 MULK                             R13 R14 K1 [1.1]
       25 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
       27 GETIMPORT                        R11 K5 [math.max]
       29 CALL                             R11 2 1
       30 MOVE                             R10 R11
       31 JUMP                             ; [+8]
       32 LOADN                            R10 100
       33 JUMP                             ; [+6]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R11 R12 K6 ["ANGLE"]
       37 JUMPIFNOTEQ                      R1 R11 ; [+2]
       39 LOADN                            R10 180
       40 GETUPVAL                         R11 0
       41 GETIMPORT                        R12 K9 [Rect.new]
       43 LOADN                            R13 0
       44 LOADN                            R14 0
       45 MOVE                             R15 R10
       46 LOADN                            R16 1
       47 CALL                             R12 4 -1
       48 CALL                             R11 -1 2
       49 GETUPVAL                         R13 0
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R14 R15 K10 ["INVERSE"]
       53 CALL                             R13 1 2
       54 GETUPVAL                         R16 2
       55 GETTABLEKS                       R15 R16 K11 ["areKeypointsEqual"]
       57 MOVE                             R16 R0
       58 MOVE                             R17 R4
       59 CALL                             R15 2 1
       60 JUMPIF                           R15 ; [+18]
       61 MOVE                             R15 R5
       62 MOVE                             R16 R0
       63 CALL                             R15 1 0
       64 MOVE                             R15 R7
       65 MOVE                             R16 R0
       66 CALL                             R15 1 0
       67 JUMPIFEQKNIL                     R6 ; [+7]
       69 LENGTH                           R15 R6
       70 JUMPIFNOTLT                      R15 R8 ; [+4]
       72 MOVE                             R15 R9
       73 LENGTH                           R16 R6
       74 CALL                             R15 1 0
       75 JUMPIFEQKNIL                     R3 ; [+3]
       77 MOVE                             R15 R3
       78 CALL                             R15 0 0
       79 GETUPVAL                         R15 0
       80 LOADB                            R16 0
       81 CALL                             R15 1 2
       82 GETUPVAL                         R17 3
       83 NEWCLOSURE                       R18 P0
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R2
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          VAL R6
       89 NEWTABLE                         R19 0 1
       91 MOVE                             R20 R6
       92 SETLIST                          R19 R20 1 [1]
       94 CALL                             R17 2 0
       95 GETUPVAL                         R17 4
       96 NEWCLOSURE                       R18 P1
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R9
       99 NEWTABLE                         R19 0 1
      101 MOVE                             R20 R6
      102 SETLIST                          R19 R20 1 [1]
      104 CALL                             R17 2 1
      105 GETUPVAL                         R18 4
      106 DUPCLOSURE                       R19 K12 [PROTO_3]
      107 CAPTURE                          UPVAL U5
      108 NEWTABLE                         R20 0 0
      110 CALL                             R18 2 1
      111 GETUPVAL                         R19 4
      112 DUPCLOSURE                       R20 K13 [PROTO_4]
      113 CAPTURE                          UPVAL U6
      114 NEWTABLE                         R21 0 0
      116 CALL                             R19 2 1
      117 GETUPVAL                         R20 4
      118 NEWCLOSURE                       R21 P4
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R3
      128 NEWTABLE                         R22 0 2
      130 MOVE                             R23 R6
      131 MOVE                             R24 R8
      132 SETLIST                          R22 R23 2 [1]
      134 CALL                             R20 2 1
      135 GETUPVAL                         R21 4
      136 NEWCLOSURE                       R22 P5
      137 CAPTURE                          VAL R6
      138 NEWTABLE                         R23 0 1
      140 MOVE                             R24 R6
      141 SETLIST                          R23 R24 1 [1]
      143 CALL                             R21 2 1
      144 GETUPVAL                         R22 4
      145 NEWCLOSURE                       R23 P6
      146 CAPTURE                          VAL R6
      147 CAPTURE                          UPVAL U5
      148 CAPTURE                          UPVAL U8
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R3
      153 NEWTABLE                         R24 0 3
      155 MOVE                             R25 R6
      156 MOVE                             R26 R8
      157 MOVE                             R27 R21
      158 SETLIST                          R24 R25 3 [1]
      160 CALL                             R22 2 1
      161 GETUPVAL                         R23 4
      162 NEWCLOSURE                       R24 P7
      163 CAPTURE                          UPVAL U8
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R3
      169 NEWTABLE                         R25 0 2
      171 MOVE                             R26 R6
      172 MOVE                             R27 R8
      173 SETLIST                          R25 R26 2 [1]
      175 CALL                             R23 2 1
      176 GETUPVAL                         R24 4
      177 NEWCLOSURE                       R25 P8
      178 CAPTURE                          VAL R9
      179 NEWTABLE                         R26 0 0
      181 CALL                             R24 2 1
      182 GETUPVAL                         R25 4
      183 NEWCLOSURE                       R26 P9
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R6
      186 NEWTABLE                         R27 0 2
      188 MOVE                             R28 R6
      189 MOVE                             R29 R8
      190 SETLIST                          R27 R28 2 [1]
      192 CALL                             R25 2 1
      193 GETUPVAL                         R26 4
      194 NEWCLOSURE                       R27 P10
      195 CAPTURE                          VAL R12
      196 NEWTABLE                         R28 0 0
      198 CALL                             R26 2 1
      199 DUPTABLE                         R27 K26 [{"keypoints", "selectedIndex", "plotRect", "curveType", "reset", "update", "add", "remove", "select", "getSelectedKeypoint", "setPlotRect", "setCurveType"}]
      200 SETTABLEKS                       R6 R27 K14 ["keypoints"]
      202 SETTABLEKS                       R8 R27 K15 ["selectedIndex"]
      204 SETTABLEKS                       R11 R27 K16 ["plotRect"]
      206 SETTABLEKS                       R13 R27 K17 ["curveType"]
      208 SETTABLEKS                       R17 R27 K18 ["reset"]
      210 SETTABLEKS                       R20 R27 K19 ["update"]
      212 SETTABLEKS                       R22 R27 K20 ["add"]
      214 SETTABLEKS                       R23 R27 K21 ["remove"]
      216 SETTABLEKS                       R24 R27 K22 ["select"]
      218 SETTABLEKS                       R25 R27 K23 ["getSelectedKeypoint"]
      220 SETTABLEKS                       R26 R27 K24 ["setPlotRect"]
      222 SETTABLEKS                       R14 R27 K25 ["setCurveType"]
      224 RETURN                           R27 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["join"]
       25 GETTABLEKS                       R4 R2 K12 ["copy"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R7 R0 K9 ["Packages"]
       31 GETTABLEKS                       R6 R7 K13 ["React"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K14 ["useCallback"]
       36 GETTABLEKS                       R7 R5 K15 ["useEffect"]
       38 GETTABLEKS                       R8 R5 K16 ["useState"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R12 R0 K17 ["Src"]
       44 GETTABLEKS                       R11 R12 K18 ["Util"]
       46 GETTABLEKS                       R10 R11 K19 ["AttenuationUtil"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R13 R0 K17 ["Src"]
       53 GETTABLEKS                       R12 R13 K18 ["Util"]
       55 GETTABLEKS                       R11 R12 K20 ["roundDecimal"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R13 R0 K17 ["Src"]
       62 GETTABLEKS                       R12 R13 K21 ["Types"]
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R12 R1 K22 ["getFIntDistanceAttenuationMaxPoints"]
       67 CALL                             R12 0 1
       68 DUPCLOSURE                       R13 K23 [PROTO_12]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 RETURN                           R13 1
