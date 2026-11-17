PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["viewToAbs"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["makeControlPoint"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopAnalyzing"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["startAnalyzing"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 DUPCLOSURE                       R0 K2 [PROTO_1]
       11 CAPTURE                          UPVAL U1
       12 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R0 0 2
        2 GETIMPORT                        R2 K2 [Vector2.new]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K3 ["getXMin"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["getYMin"]
       11 CALL                             R4 0 -1
       12 CALL                             R2 -1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["PlotAbsoluteSize"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["viewToAbs"]
       19 MOVE                             R5 R2
       20 MOVE                             R6 R3
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K7 ["makeControlPoint"]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 MOVE                             R1 R5
       28 GETUPVAL                         R2 3
       29 GETIMPORT                        R3 K2 [Vector2.new]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K3 ["getXMin"]
       34 CALL                             R4 0 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K4 ["getYMin"]
       38 CALL                             R5 0 -1
       39 CALL                             R3 -1 1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K5 ["PlotAbsoluteSize"]
       43 CALL                             R2 2 -1
       44 SETLIST                          R0 R1 -1 [1]
       46 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 LENGTH                           R1 R2
        4 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        6 GETUPVAL                         R2 1
        7 RETURN                           R2 1
        8 LOADN                            R4 0
        9 GETUPVAL                         R2 2
       10 LOADN                            R3 1
       11 FORNPREP                         R2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K1 ["viewToPlot"]
       15 GETIMPORT                        R6 K4 [Vector2.new]
       17 SUBK                             R8 R4 K5 [0.5]
       18 GETUPVAL                         R9 2
       19 DIV                              R7 R8 R9
       20 LOADN                            R8 0
       21 CALL                             R6 2 -1
       22 CALL                             R5 -1 1
       23 GETTABLEKS                       R5 R5 K6 ["X"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K1 ["viewToPlot"]
       28 GETIMPORT                        R7 K4 [Vector2.new]
       30 ADDK                             R9 R4 K5 [0.5]
       31 GETUPVAL                         R10 2
       32 DIV                              R8 R9 R10
       33 LOADN                            R9 0
       34 CALL                             R7 2 -1
       35 CALL                             R6 -1 1
       36 GETTABLEKS                       R6 R6 K6 ["X"]
       38 MUL                              R9 R1 R5
       39 DIVK                             R8 R9 K7 [24000]
       40 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       41 GETIMPORT                        R7 K10 [math.floor]
       43 CALL                             R7 1 1
       44 MUL                              R10 R1 R6
       45 DIVK                             R9 R10 K7 [24000]
       46 FASTCALL1                        MATH_CEIL R9 ; [+2]
       47 GETIMPORT                        R8 K12 [math.ceil]
       49 CALL                             R8 1 1
       50 LOADN                            R9 0
       51 MOVE                             R12 R7
       52 MOVE                             R10 R8
       53 LOADN                            R11 1
       54 FORNPREP                         R10
       55 JUMPIFLE                         R1 R12 ; [+53]
       57 MULK                             R14 R12 K7 [24000]
       58 DIV                              R13 R14 R1
       59 ADDK                             R16 R12 K13 [1]
       60 MULK                             R15 R16 K7 [24000]
       61 DIV                              R14 R15 R1
       62 FASTCALL2                        MATH_MAX R5 R13 ; [+5]
       64 MOVE                             R16 R5
       65 MOVE                             R17 R13
       66 GETIMPORT                        R15 K15 [math.max]
       68 CALL                             R15 2 1
       69 FASTCALL2                        MATH_MIN R6 R14 ; [+5]
       71 MOVE                             R17 R6
       72 MOVE                             R18 R14
       73 GETIMPORT                        R16 K17 [math.min]
       75 CALL                             R16 2 1
       76 JUMPIFLE                         R16 R15 ; [+32]
       78 SUB                              R18 R15 R13
       79 SUB                              R19 R14 R13
       80 DIV                              R17 R18 R19
       81 GETUPVAL                         R19 0
       82 ADDK                             R20 R12 K13 [1]
       83 GETTABLE                         R18 R19 R20
       84 GETUPVAL                         R20 0
       85 ADDK                             R21 R12 K18 [2]
       86 GETTABLE                         R19 R20 R21
       87 JUMPIFNOTEQKNIL                  R19 ; [+2]
       89 LOADN                            R19 0
       90 SUBRK                            R22 K13 [1] R17
       91 MUL                              R21 R18 R22
       92 MUL                              R22 R19 R17
       93 ADD                              R20 R21 R22
       94 SUB                              R21 R6 R5
       95 SUB                              R22 R14 R13
       96 SUB                              R23 R16 R15
       97 DIV                              R24 R23 R21
       98 DIV                              R26 R21 R22
       99 FASTCALL2K                       MATH_MIN R26 K13 ; [+4]
      101 LOADK                            R27 K13 [1]
      102 GETIMPORT                        R25 K17 [math.min]
      104 CALL                             R25 2 1
      105 MUL                              R28 R20 R25
      106 MUL                              R27 R28 R24
      107 MULK                             R26 R27 K19 [5]
      108 ADD                              R9 R9 R26
      109 FORNLOOP                         R10
      110 LOADN                            R12 0
      111 LOADN                            R13 1
      112 FASTCALL3                        MATH_CLAMP R9 R12 R13
      114 MOVE                             R11 R9
      115 GETIMPORT                        R10 K21 [math.clamp]
      117 CALL                             R10 3 1
      118 MOVE                             R9 R10
      119 MOVE                             R11 R0
      120 GETUPVAL                         R12 4
      121 GETIMPORT                        R13 K4 [Vector2.new]
      123 GETUPVAL                         R15 2
      124 DIV                              R14 R4 R15
      125 SUBRK                            R15 K13 [1] R9
      126 CALL                             R13 2 1
      127 GETUPVAL                         R14 5
      128 GETTABLEKS                       R14 R14 K22 ["PlotAbsoluteSize"]
      130 CALL                             R12 2 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R10 K25 [table.insert]
      134 CALL                             R10 -1 0
      135 FORNLOOP                         R2
      136 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R2
        9 NEWTABLE                         R5 0 1
       11 GETTABLEKS                       R6 R0 K0 ["Enabled"]
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 3
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 3
       26 NEWCLOSURE                       R5 P2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R6 0 1
       35 MOVE                             R7 R1
       36 SETLIST                          R6 R7 1 [1]
       38 CALL                             R4 2 1
       39 GETTABLEKS                       R5 R0 K0 ["Enabled"]
       41 JUMPIFNOT                        R5 ; [+14]
       42 GETUPVAL                         R5 8
       43 GETTABLEKS                       R5 R5 K1 ["createElement"]
       45 GETUPVAL                         R6 9
       46 DUPTABLE                         R7 K5 [{["ControlPoints"], ["Tag"] = "AnalyzerCurve"}]
       47 GETTABLEKS                       R9 R0 K0 ["Enabled"]
       49 JUMPIFNOT                        R9 ; [+2]
       50 MOVE                             R8 R4
       51 JUMPIF                           R8 ; [+1]
       52 MOVE                             R8 R3
       53 SETTABLEKS                       R8 R7 K2 ["ControlPoints"]
       55 CALL                             R5 2 1
       56 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useEffect"]
       20 GETTABLEKS                       R4 R2 K10 ["useMemo"]
       22 GETTABLEKS                       R5 R2 K11 ["useState"]
       24 GETIMPORT                        R6 K6 [require]
       26 GETTABLEKS                       R7 R0 K12 ["Path2DWrapper"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K6 [require]
       31 GETTABLEKS                       R8 R1 K13 ["Src"]
       33 GETTABLEKS                       R8 R8 K14 ["Util"]
       35 GETTABLEKS                       R8 R8 K15 ["AnalyzerUtil"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R1 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Util"]
       44 GETTABLEKS                       R9 R9 K16 ["Path2DUtil"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R1 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K14 ["Util"]
       53 GETTABLEKS                       R10 R10 K17 ["PlotUtil"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R11 R1 K18 ["Bin"]
       60 GETTABLEKS                       R11 R11 K19 ["Common"]
       62 GETTABLEKS                       R11 R11 K20 ["defineLuaFlags"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K21 ["getFIntAudioEqualizerEditorAnalyzerResolution"]
       67 CALL                             R11 0 1
       68 DUPCLOSURE                       R12 K22 [PROTO_0]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 DUPCLOSURE                       R13 K23 [PROTO_5]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R6
       82 RETURN                           R13 1
