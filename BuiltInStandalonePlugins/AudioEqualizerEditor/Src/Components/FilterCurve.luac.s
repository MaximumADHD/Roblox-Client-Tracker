PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["plotToAbs"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["makeControlPoint"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 -1
       11 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       10 LOADK                            R2 K1 ["filterRef was nil"]
       11 GETIMPORT                        R0 K3 [assert]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K0 ["current"]
       17 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       19 LOADK                            R2 K4 ["filterRef.current was nil"]
       20 GETIMPORT                        R0 K3 [assert]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R0 R1 K0 ["current"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K5 ["FilterHook"]
       29 GETTABLEKS                       R1 R2 K6 ["filterType"]
       31 SETTABLEKS                       R1 R0 K7 ["FilterType"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R2 R3 K5 ["FilterHook"]
       36 GETTABLEKS                       R1 R2 K8 ["frequency"]
       38 SETTABLEKS                       R1 R0 K9 ["Frequency"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K5 ["FilterHook"]
       43 GETTABLEKS                       R1 R2 K10 ["gain"]
       45 SETTABLEKS                       R1 R0 K11 ["Gain"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R2 R3 K5 ["FilterHook"]
       50 GETTABLEKS                       R1 R2 K12 ["q"]
       52 SETTABLEKS                       R1 R0 K13 ["Q"]
       54 NEWTABLE                         R1 0 0
       56 NEWTABLE                         R2 0 0
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R4 R5 K5 ["FilterHook"]
       61 GETTABLEKS                       R3 R4 K8 ["frequency"]
       63 LOADN                            R4 1
       64 GETUPVAL                         R6 2
       65 GETTABLEKS                       R5 R6 K14 ["getXMin"]
       67 CALL                             R5 0 1
       68 JUMPIFNOTLE                      R5 R3 ; [+42]
       70 MOVE                             R7 R3
       71 NAMECALL                         R5 R0 K15 ["GetGainAt"]
       73 CALL                             R5 2 1
       74 GETIMPORT                        R6 K18 [Vector2.new]
       76 MOVE                             R7 R3
       77 MOVE                             R8 R5
       78 CALL                             R6 2 1
       79 MOVE                             R8 R1
       80 GETUPVAL                         R9 3
       81 MOVE                             R10 R6
       82 GETUPVAL                         R12 1
       83 GETTABLEKS                       R11 R12 K19 ["PlotAbsoluteSize"]
       85 CALL                             R9 2 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R7 K22 [table.insert]
       89 CALL                             R7 -1 0
       90 MOVE                             R7 R3
       91 SUBK                             R4 R4 K23 [0.005]
       92 MUL                              R3 R3 R4
       93 GETUPVAL                         R9 2
       94 GETTABLEKS                       R8 R9 K14 ["getXMin"]
       96 CALL                             R8 0 1
       97 JUMPIFNOTLT                      R8 R7 ; [+12]
       99 GETUPVAL                         R9 2
      100 GETTABLEKS                       R8 R9 K14 ["getXMin"]
      102 CALL                             R8 0 1
      103 JUMPIFNOTLT                      R3 R8 ; [+6]
      105 GETUPVAL                         R9 2
      106 GETTABLEKS                       R8 R9 K14 ["getXMin"]
      108 CALL                             R8 0 1
      109 MOVE                             R3 R8
      110 JUMPBACK                         ; [-47]
      111 GETUPVAL                         R6 1
      112 GETTABLEKS                       R5 R6 K5 ["FilterHook"]
      114 GETTABLEKS                       R3 R5 K8 ["frequency"]
      116 LOADN                            R4 1
      117 GETUPVAL                         R6 2
      118 GETTABLEKS                       R5 R6 K24 ["getXMax"]
      120 CALL                             R5 0 1
      121 JUMPIFNOTLE                      R3 R5 ; [+42]
      123 MOVE                             R7 R3
      124 NAMECALL                         R5 R0 K15 ["GetGainAt"]
      126 CALL                             R5 2 1
      127 GETIMPORT                        R6 K18 [Vector2.new]
      129 MOVE                             R7 R3
      130 MOVE                             R8 R5
      131 CALL                             R6 2 1
      132 MOVE                             R8 R2
      133 GETUPVAL                         R9 3
      134 MOVE                             R10 R6
      135 GETUPVAL                         R12 1
      136 GETTABLEKS                       R11 R12 K19 ["PlotAbsoluteSize"]
      138 CALL                             R9 2 -1
      139 FASTCALL                         TABLE_INSERT ; [+2]
      140 GETIMPORT                        R7 K22 [table.insert]
      142 CALL                             R7 -1 0
      143 MOVE                             R7 R3
      144 ADDK                             R4 R4 K23 [0.005]
      145 MUL                              R3 R3 R4
      146 GETUPVAL                         R9 2
      147 GETTABLEKS                       R8 R9 K24 ["getXMax"]
      149 CALL                             R8 0 1
      150 JUMPIFNOTLT                      R7 R8 ; [+12]
      152 GETUPVAL                         R9 2
      153 GETTABLEKS                       R8 R9 K24 ["getXMax"]
      155 CALL                             R8 0 1
      156 JUMPIFNOTLT                      R8 R3 ; [+6]
      158 GETUPVAL                         R9 2
      159 GETTABLEKS                       R8 R9 K24 ["getXMax"]
      161 CALL                             R8 0 1
      162 MOVE                             R3 R8
      163 JUMPBACK                         ; [-47]
      164 GETUPVAL                         R5 4
      165 DUPTABLE                         R6 K27 [{"Left", "Right"}]
      166 SETTABLEKS                       R1 R6 K25 ["Left"]
      168 SETTABLEKS                       R2 R6 K26 ["Right"]
      170 CALL                             R5 1 0
      171 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R0 K0 ["FilterHook"]
        5 GETTABLEKS                       R3 R4 K1 ["bypass"]
        7 NOT                              R2 R3
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K4 [{"Left", "Right"}]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K2 ["Left"]
       14 NEWTABLE                         R5 0 0
       16 SETTABLEKS                       R5 R4 K3 ["Right"]
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 2
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R7 0 3
       28 GETTABLEKS                       R8 R0 K5 ["PlotAbsoluteSize"]
       30 GETTABLEKS                       R9 R0 K0 ["FilterHook"]
       32 MOVE                             R10 R1
       33 SETLIST                          R7 R8 3 [1]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R6 5
       37 GETTABLEKS                       R5 R6 K6 ["createElement"]
       39 GETUPVAL                         R6 6
       40 DUPTABLE                         R7 K9 [{"Size", "BackgroundTransparency"}]
       41 GETIMPORT                        R8 K12 [UDim2.fromScale]
       43 LOADN                            R9 1
       44 LOADN                            R10 1
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K7 ["Size"]
       48 LOADN                            R8 1
       49 SETTABLEKS                       R8 R7 K8 ["BackgroundTransparency"]
       51 DUPTABLE                         R8 K16 [{"LeftCurve", "RightCurve", "Filter"}]
       52 GETUPVAL                         R10 5
       53 GETTABLEKS                       R9 R10 K6 ["createElement"]
       55 GETUPVAL                         R10 7
       56 DUPTABLE                         R11 K19 [{"ControlPoints", "Tag"}]
       57 GETTABLEKS                       R12 R3 K2 ["Left"]
       59 SETTABLEKS                       R12 R11 K17 ["ControlPoints"]
       61 JUMPIFNOT                        R2 ; [+2]
       62 LOADK                            R12 K20 ["FullCurve"]
       63 JUMP                             ; [+1]
       64 LOADK                            R12 K21 ["FullCurveDisabled"]
       65 SETTABLEKS                       R12 R11 K18 ["Tag"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K13 ["LeftCurve"]
       70 GETUPVAL                         R10 5
       71 GETTABLEKS                       R9 R10 K6 ["createElement"]
       73 GETUPVAL                         R10 7
       74 DUPTABLE                         R11 K19 [{"ControlPoints", "Tag"}]
       75 GETTABLEKS                       R12 R3 K3 ["Right"]
       77 SETTABLEKS                       R12 R11 K17 ["ControlPoints"]
       79 JUMPIFNOT                        R2 ; [+2]
       80 LOADK                            R12 K20 ["FullCurve"]
       81 JUMP                             ; [+1]
       82 LOADK                            R12 K21 ["FullCurveDisabled"]
       83 SETTABLEKS                       R12 R11 K18 ["Tag"]
       85 CALL                             R9 2 1
       86 SETTABLEKS                       R9 R8 K14 ["RightCurve"]
       88 GETUPVAL                         R10 5
       89 GETTABLEKS                       R9 R10 K6 ["createElement"]
       91 LOADK                            R10 K22 ["AudioFilter"]
       92 DUPTABLE                         R11 K24 [{"ref"}]
       93 SETTABLEKS                       R1 R11 K23 ["ref"]
       95 CALL                             R9 2 1
       96 SETTABLEKS                       R9 R8 K15 ["Filter"]
       98 CALL                             R5 3 -1
       99 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useEffect"]
       20 GETTABLEKS                       R4 R2 K10 ["useRef"]
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
       53 GETTABLEKS                       R11 R12 K19 ["Path2DUtil"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K6 [require]
       58 GETTABLEKS                       R14 R1 K15 ["Src"]
       60 GETTABLEKS                       R13 R14 K18 ["Util"]
       62 GETTABLEKS                       R12 R13 K20 ["PlotUtil"]
       64 CALL                             R11 1 1
       65 DUPCLOSURE                       R12 K21 [PROTO_0]
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R10
       68 DUPCLOSURE                       R13 K22 [PROTO_2]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 RETURN                           R13 1
