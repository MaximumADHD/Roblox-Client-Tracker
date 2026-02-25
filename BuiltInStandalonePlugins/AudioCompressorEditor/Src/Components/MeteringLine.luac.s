PROTO_0:
        0 LOADK                            R2 K0 [0.0001]
        1 JUMPIFNOTLT                      R2 R0 ; [+8]
        3 FASTCALL1                        MATH_LOG R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K4 [math.log]
        7 CALL                             R2 1 1
        8 MULK                             R1 R2 K1 [8.68588963806504]
        9 RETURN                           R1 1
       10 LOADN                            R1 176
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Length"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["MaxLength"]
        6 JUMPIFNOTLE                      R4 R3 ; [+13]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K3 ["Head"]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K0 ["Length"]
       15 MOD                              R5 R6 R7
       16 ADDK                             R4 R5 K2 [1]
       17 SETTABLEKS                       R4 R3 K3 ["Head"]
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K0 ["Length"]
       24 ADDK                             R4 R5 K2 [1]
       25 SETTABLEKS                       R4 R3 K0 ["Length"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K3 ["Head"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K0 ["Length"]
       33 ADD                              R6 R7 R8
       34 SUBK                             R5 R6 K4 [2]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K0 ["Length"]
       38 MOD                              R4 R5 R6
       39 ADDK                             R3 R4 K2 [1]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K5 ["In"]
       43 LOADK                            R6 K6 [0.0001]
       44 JUMPIFNOTLT                      R6 R0 ; [+8]
       46 FASTCALL1                        MATH_LOG R0 ; [+3]
       47 MOVE                             R7 R0
       48 GETIMPORT                        R6 K10 [math.log]
       50 CALL                             R6 1 1
       51 MULK                             R5 R6 K7 [8.68588963806504]
       52 JUMP                             ; [+1]
       53 LOADN                            R5 176
       54 SETTABLE                         R5 R4 R3
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R4 R5 K11 ["Out"]
       58 LOADK                            R6 K6 [0.0001]
       59 JUMPIFNOTLT                      R6 R1 ; [+8]
       61 FASTCALL1                        MATH_LOG R1 ; [+3]
       62 MOVE                             R7 R1
       63 GETIMPORT                        R6 K10 [math.log]
       65 CALL                             R6 1 1
       66 MULK                             R5 R6 K7 [8.68588963806504]
       67 JUMP                             ; [+1]
       68 LOADN                            R5 176
       69 SETTABLE                         R5 R4 R3
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K12 ["Sidechain"]
       73 LOADK                            R6 K6 [0.0001]
       74 JUMPIFNOTLT                      R6 R2 ; [+8]
       76 FASTCALL1                        MATH_LOG R2 ; [+3]
       77 MOVE                             R7 R2
       78 GETIMPORT                        R6 K10 [math.log]
       80 CALL                             R6 1 1
       81 MULK                             R5 R6 K7 [8.68588963806504]
       82 JUMP                             ; [+1]
       83 LOADN                            R5 176
       84 SETTABLE                         R5 R4 R3
       85 GETUPVAL                         R4 1
       86 GETUPVAL                         R5 0
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 2
       89 NEWTABLE                         R5 0 0
       91 CALL                             R4 1 0
       92 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["stopAnalyzing"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["DisplaySettings"]
        3 GETTABLEKS                       R0 R1 K1 ["IsPaused"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["Length"]
       11 GETUPVAL                         R0 1
       12 LOADN                            R1 1
       13 SETTABLEKS                       R1 R0 K3 ["Head"]
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R1 1
       17 CALL                             R0 1 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R0 R1 K4 ["startAnalyzing"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U4
       25 CALL                             R0 1 0
       26 DUPCLOSURE                       R0 K5 [PROTO_2]
       27 CAPTURE                          UPVAL U3
       28 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["DisplaySettings"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 1
        9 LOADN                            R3 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R1 R4 K1 ["Length"]
       13 LOADN                            R2 1
       14 FORNPREP                         R1
       15 SUBK                             R8 R3 K2 [1]
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K3 ["Head"]
       19 ADD                              R7 R8 R9
       20 SUBK                             R6 R7 K2 [1]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K1 ["Length"]
       24 MOD                              R5 R6 R7
       25 ADDK                             R4 R5 K2 [1]
       26 GETUPVAL                         R5 3
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R7 R8 K4 ["viewToPlot"]
       32 GETIMPORT                        R8 K7 [Vector2.new]
       34 SUBK                             R10 R3 K2 [1]
       35 GETUPVAL                         R13 2
       36 GETTABLEKS                       R12 R13 K8 ["MaxLength"]
       38 SUBK                             R11 R12 K2 [1]
       39 DIV                              R9 R10 R11
       40 LOADN                            R10 0
       41 CALL                             R8 2 1
       42 GETIMPORT                        R9 K10 [Vector2.one]
       44 CALL                             R7 2 1
       45 GETTABLEKS                       R6 R7 K11 ["X"]
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R7 R8 K12 ["plotToAbs"]
       50 GETIMPORT                        R8 K7 [Vector2.new]
       52 MOVE                             R9 R6
       53 MOVE                             R10 R5
       54 CALL                             R8 2 1
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R9 R10 K13 ["PlotAbsoluteSize"]
       58 CALL                             R7 2 1
       59 GETIMPORT                        R8 K15 [Path2DControlPoint.new]
       61 GETIMPORT                        R9 K18 [UDim2.fromOffset]
       63 GETTABLEKS                       R10 R7 K11 ["X"]
       65 GETTABLEKS                       R11 R7 K19 ["Y"]
       67 CALL                             R9 2 -1
       68 CALL                             R8 -1 1
       69 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       71 MOVE                             R10 R0
       72 MOVE                             R11 R8
       73 GETIMPORT                        R9 K22 [table.insert]
       75 CALL                             R9 2 0
       76 FORNLOOP                         R1
       77 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 NEWTABLE                         R5 0 3
        9 GETUPVAL                         R6 4
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R7 R8 K0 ["PlotAbsoluteSize"]
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R9 R10 K1 ["DisplaySettings"]
       16 GETTABLE                         R8 R9 R1
       17 SETLIST                          R5 R6 3 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 5
       21 GETUPVAL                         R6 6
       22 GETTABLEKS                       R5 R6 K2 ["createElement"]
       24 GETUPVAL                         R6 7
       25 DUPTABLE                         R7 K5 [{"ControlPoints", "Tag"}]
       26 SETTABLEKS                       R3 R7 K3 ["ControlPoints"]
       28 LOADK                            R9 K6 ["AnalyzerCurve"]
       29 MOVE                             R10 R0
       30 CONCAT                           R8 R9 R10
       31 SETTABLEKS                       R8 R7 K4 ["Tag"]
       33 CALL                             R5 2 1
       34 SETTABLE                         R5 R4 R0
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["In"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Out"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Out"]
        3 GETTABLE                         R3 R4 R0
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K1 ["In"]
        7 GETTABLE                         R4 R5 R0
        8 SUB                              R2 R3 R4
        9 LOADN                            R3 176
       10 LOADN                            R4 30
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R1 K4 [math.clamp]
       14 CALL                             R1 3 1
       15 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Sidechain"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K6 [{"In", "Out", "Sidechain", "MaxLength", "Length", "Head"}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K0 ["In"]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["Out"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K2 ["Sidechain"]
       14 LOADN                            R3 100
       15 SETTABLEKS                       R3 R2 K3 ["MaxLength"]
       17 LOADN                            R3 0
       18 SETTABLEKS                       R3 R2 K4 ["Length"]
       20 LOADN                            R3 1
       21 SETTABLEKS                       R3 R2 K5 ["Head"]
       23 CALL                             R1 1 2
       24 GETUPVAL                         R3 0
       25 NEWTABLE                         R4 0 0
       27 CALL                             R3 1 2
       28 GETUPVAL                         R5 1
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R7 0 2
       37 GETTABLEKS                       R9 R0 K7 ["DisplaySettings"]
       39 GETTABLEKS                       R8 R9 K8 ["IsPaused"]
       41 GETTABLEKS                       R9 R0 K9 ["ForceRefresh"]
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 0
       46 NEWTABLE                         R5 0 0
       48 NEWCLOSURE                       R6 P1
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 MOVE                             R7 R6
       58 LOADK                            R8 K0 ["In"]
       59 LOADK                            R9 K10 ["ShowInputWaveform"]
       60 NEWCLOSURE                       R10 P2
       61 CAPTURE                          VAL R1
       62 CALL                             R7 3 0
       63 MOVE                             R7 R6
       64 LOADK                            R8 K1 ["Out"]
       65 LOADK                            R9 K11 ["ShowOutputWaveform"]
       66 NEWCLOSURE                       R10 P3
       67 CAPTURE                          VAL R1
       68 CALL                             R7 3 0
       69 MOVE                             R7 R6
       70 LOADK                            R8 K12 ["Gain"]
       71 LOADK                            R9 K13 ["ShowGainChange"]
       72 NEWCLOSURE                       R10 P4
       73 CAPTURE                          VAL R1
       74 CALL                             R7 3 0
       75 MOVE                             R7 R6
       76 LOADK                            R8 K2 ["Sidechain"]
       77 LOADK                            R9 K14 ["ShowSidechain"]
       78 NEWCLOSURE                       R10 P5
       79 CAPTURE                          VAL R1
       80 CALL                             R7 3 0
       81 GETTABLEKS                       R7 R0 K15 ["InstanceType"]
       83 JUMPIFNOTEQKS                    R7 K16 ["AudioLimiter"] ; [+4]
       85 LOADNIL                          R7
       86 SETTABLEKS                       R7 R5 K2 ["Sidechain"]
       88 LOADB                            R7 0
       89 GETTABLEKS                       R8 R1 K4 ["Length"]
       91 LOADN                            R9 0
       92 JUMPIFNOTLT                      R9 R8 ; [+21]
       94 GETUPVAL                         R8 5
       95 GETTABLEKS                       R7 R8 K17 ["createElement"]
       97 GETUPVAL                         R8 7
       98 DUPTABLE                         R9 K21 [{"BackgroundTransparency", "Size", "ZIndex"}]
       99 LOADN                            R10 1
      100 SETTABLEKS                       R10 R9 K18 ["BackgroundTransparency"]
      102 GETIMPORT                        R10 K24 [UDim2.fromScale]
      104 LOADN                            R11 1
      105 LOADN                            R12 1
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K19 ["Size"]
      109 LOADN                            R10 2
      110 SETTABLEKS                       R10 R9 K20 ["ZIndex"]
      112 MOVE                             R10 R5
      113 CALL                             R7 3 1
      114 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioCompressorEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useEffect"]
       20 GETTABLEKS                       R4 R2 K10 ["useMemo"]
       22 GETTABLEKS                       R5 R2 K11 ["useState"]
       24 GETIMPORT                        R6 K6 [require]
       26 GETTABLEKS                       R8 R1 K7 ["Packages"]
       28 GETTABLEKS                       R7 R8 K12 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R8 R6 K13 ["UI"]
       33 GETTABLEKS                       R7 R8 K14 ["Pane"]
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R10 R1 K15 ["Src"]
       39 GETTABLEKS                       R9 R10 K16 ["Types"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R0 K17 ["Path2DWrapper"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K6 [require]
       49 GETTABLEKS                       R13 R1 K15 ["Src"]
       51 GETTABLEKS                       R12 R13 K18 ["Util"]
       53 GETTABLEKS                       R11 R12 K19 ["AnalyzerUtil"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K6 [require]
       58 GETTABLEKS                       R14 R1 K15 ["Src"]
       60 GETTABLEKS                       R13 R14 K18 ["Util"]
       62 GETTABLEKS                       R12 R13 K20 ["PlotUtil"]
       64 CALL                             R11 1 1
       65 DUPCLOSURE                       R12 K21 [PROTO_0]
       66 DUPCLOSURE                       R13 K22 [PROTO_10]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 RETURN                           R13 1
