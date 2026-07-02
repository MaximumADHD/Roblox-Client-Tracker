PROTO_0:
        0 LOADK                            R2 K0 [0.0001]
        1 JUMPIFNOTLT                      R2 R0 ; [+8]
        3 FASTCALL1                        MATH_LOG R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K4 [math.log]
        7 CALL                             R2 1 1
        8 MULK                             R1 R2 K1 [8.68588963806504]
        9 RETURN                           R1 1
       10 LOADN                            R1 -80
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Length"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["MaxLength"]
        6 JUMPIFNOTLE                      R4 R3 ; [+13]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["Head"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K0 ["Length"]
       15 MOD                              R5 R6 R7
       16 ADDK                             R4 R5 K2 [1]
       17 SETTABLEKS                       R4 R3 K3 ["Head"]
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R3 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["Length"]
       24 ADDK                             R4 R5 K2 [1]
       25 SETTABLEKS                       R4 R3 K0 ["Length"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K3 ["Head"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K0 ["Length"]
       33 ADD                              R6 R7 R8
       34 SUBK                             R5 R6 K4 [2]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K0 ["Length"]
       38 MOD                              R4 R5 R6
       39 ADDK                             R3 R4 K2 [1]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K5 ["In"]
       43 LOADK                            R6 K6 [0.0001]
       44 JUMPIFNOTLT                      R6 R0 ; [+8]
       46 FASTCALL1                        MATH_LOG R0 ; [+3]
       47 MOVE                             R7 R0
       48 GETIMPORT                        R6 K10 [math.log]
       50 CALL                             R6 1 1
       51 MULK                             R5 R6 K7 [8.68588963806504]
       52 JUMP                             ; [+1]
       53 LOADN                            R5 -80
       54 SETTABLE                         R5 R4 R3
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K11 ["Out"]
       58 LOADK                            R6 K6 [0.0001]
       59 JUMPIFNOTLT                      R6 R1 ; [+8]
       61 FASTCALL1                        MATH_LOG R1 ; [+3]
       62 MOVE                             R7 R1
       63 GETIMPORT                        R6 K10 [math.log]
       65 CALL                             R6 1 1
       66 MULK                             R5 R6 K7 [8.68588963806504]
       67 JUMP                             ; [+1]
       68 LOADN                            R5 -80
       69 SETTABLE                         R5 R4 R3
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K12 ["Sidechain"]
       73 LOADK                            R6 K6 [0.0001]
       74 JUMPIFNOTLT                      R6 R2 ; [+8]
       76 FASTCALL1                        MATH_LOG R2 ; [+3]
       77 MOVE                             R7 R2
       78 GETIMPORT                        R6 K10 [math.log]
       80 CALL                             R6 1 1
       81 MULK                             R5 R6 K7 [8.68588963806504]
       82 JUMP                             ; [+1]
       83 LOADN                            R5 -80
       84 SETTABLE                         R5 R4 R3
       85 GETUPVAL                         R4 1
       86 GETUPVAL                         R5 0
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 2
       89 NEWTABLE                         R5 0 0
       91 CALL                             R4 1 0
       92 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopAnalyzing"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DisplaySettings"]
        3 GETTABLEKS                       R0 R0 K1 ["IsPaused"]
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
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K4 ["startAnalyzing"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["DisplaySettings"]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 1
        9 LOADN                            R3 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["Length"]
       13 LOADN                            R2 1
       14 FORNPREP                         R1
       15 SUBK                             R8 R3 K2 [1]
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R9 R9 K3 ["Head"]
       19 ADD                              R7 R8 R9
       20 SUBK                             R6 R7 K2 [1]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K1 ["Length"]
       24 MOD                              R5 R6 R7
       25 ADDK                             R4 R5 K2 [1]
       26 GETUPVAL                         R5 3
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K4 ["viewToPlot"]
       32 GETIMPORT                        R7 K7 [Vector2.new]
       34 SUBK                             R9 R3 K2 [1]
       35 GETUPVAL                         R11 2
       36 GETTABLEKS                       R11 R11 K8 ["MaxLength"]
       38 SUBK                             R10 R11 K2 [1]
       39 DIV                              R8 R9 R10
       40 LOADN                            R9 0
       41 CALL                             R7 2 1
       42 GETIMPORT                        R8 K10 [Vector2.one]
       44 CALL                             R6 2 1
       45 GETTABLEKS                       R6 R6 K11 ["X"]
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R7 R7 K12 ["plotToAbs"]
       50 GETIMPORT                        R8 K7 [Vector2.new]
       52 MOVE                             R9 R6
       53 MOVE                             R10 R5
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K13 ["PlotAbsoluteSize"]
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
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K0 ["PlotAbsoluteSize"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K1 ["DisplaySettings"]
       16 GETTABLE                         R8 R9 R1
       17 SETLIST                          R5 R6 3 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 5
       21 GETUPVAL                         R5 6
       22 GETTABLEKS                       R5 R5 K2 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["In"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Out"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Out"]
        3 GETTABLE                         R3 R4 R0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["In"]
        7 GETTABLE                         R4 R5 R0
        8 SUB                              R2 R3 R4
        9 LOADN                            R3 -80
       10 LOADN                            R4 30
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R1 K4 [math.clamp]
       14 CALL                             R1 3 1
       15 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Sidechain"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K9 [{[1], ["Out"], ["Sidechain"], ["MaxLength"] = 100, ["Length"] = 0, ["Head"] = 1}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K0 ["In"]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["Out"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K2 ["Sidechain"]
       14 CALL                             R1 1 2
       15 GETUPVAL                         R3 0
       16 NEWTABLE                         R4 0 0
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 1
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R7 0 2
       28 GETTABLEKS                       R8 R0 K10 ["DisplaySettings"]
       30 GETTABLEKS                       R8 R8 K11 ["IsPaused"]
       32 GETTABLEKS                       R9 R0 K12 ["ForceRefresh"]
       34 SETLIST                          R7 R8 2 [1]
       36 CALL                             R5 2 0
       37 NEWTABLE                         R5 0 0
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 MOVE                             R7 R6
       49 LOADK                            R8 K0 ["In"]
       50 LOADK                            R9 K13 ["ShowInputWaveform"]
       51 NEWCLOSURE                       R10 P2
       52 CAPTURE                          VAL R1
       53 CALL                             R7 3 0
       54 MOVE                             R7 R6
       55 LOADK                            R8 K1 ["Out"]
       56 LOADK                            R9 K14 ["ShowOutputWaveform"]
       57 NEWCLOSURE                       R10 P3
       58 CAPTURE                          VAL R1
       59 CALL                             R7 3 0
       60 MOVE                             R7 R6
       61 LOADK                            R8 K15 ["Gain"]
       62 LOADK                            R9 K16 ["ShowGainChange"]
       63 NEWCLOSURE                       R10 P4
       64 CAPTURE                          VAL R1
       65 CALL                             R7 3 0
       66 MOVE                             R7 R6
       67 LOADK                            R8 K2 ["Sidechain"]
       68 LOADK                            R9 K17 ["ShowSidechain"]
       69 NEWCLOSURE                       R10 P5
       70 CAPTURE                          VAL R1
       71 CALL                             R7 3 0
       72 GETTABLEKS                       R7 R0 K18 ["InstanceType"]
       74 JUMPIFNOTEQKS                    R7 K19 ["AudioLimiter"] ; [+4]
       76 LOADNIL                          R7
       77 SETTABLEKS                       R7 R5 K2 ["Sidechain"]
       79 LOADB                            R7 0
       80 GETTABLEKS                       R8 R1 K5 ["Length"]
       82 LOADN                            R9 0
       83 JUMPIFNOTLT                      R9 R8 ; [+15]
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K20 ["createElement"]
       88 GETUPVAL                         R8 7
       89 DUPTABLE                         R9 K25 [{["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"] = 2}]
       90 GETIMPORT                        R10 K28 [UDim2.fromScale]
       92 LOADN                            R11 1
       93 LOADN                            R12 1
       94 CALL                             R10 2 1
       95 SETTABLEKS                       R10 R9 K22 ["Size"]
       97 MOVE                             R10 R5
       98 CALL                             R7 3 1
       99 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioCompressorEditor"]
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
       26 GETTABLEKS                       R7 R1 K7 ["Packages"]
       28 GETTABLEKS                       R7 R7 K12 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K13 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["Pane"]
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R9 R1 K15 ["Src"]
       39 GETTABLEKS                       R9 R9 K16 ["Types"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R0 K17 ["Path2DWrapper"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K6 [require]
       49 GETTABLEKS                       R11 R1 K15 ["Src"]
       51 GETTABLEKS                       R11 R11 K18 ["Util"]
       53 GETTABLEKS                       R11 R11 K19 ["AnalyzerUtil"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K6 [require]
       58 GETTABLEKS                       R12 R1 K15 ["Src"]
       60 GETTABLEKS                       R12 R12 K18 ["Util"]
       62 GETTABLEKS                       R12 R12 K20 ["PlotUtil"]
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
