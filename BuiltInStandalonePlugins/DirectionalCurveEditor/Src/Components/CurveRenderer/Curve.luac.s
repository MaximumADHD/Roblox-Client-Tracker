PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R4 0
        3 GETTABLEKS                       R5 R0 K0 ["keypoints"]
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R10 R10 K1 ["plotToAbsolutePosition"]
       11 MOVE                             R11 R9
       12 MOVE                             R12 R1
       13 MOVE                             R13 R2
       14 CALL                             R10 3 1
       15 MOVE                             R12 R3
       16 GETIMPORT                        R13 K4 [Path2DControlPoint.new]
       18 GETIMPORT                        R14 K7 [UDim2.fromOffset]
       20 GETTABLEKS                       R15 R10 K8 ["X"]
       22 GETTABLEKS                       R16 R10 K9 ["Y"]
       24 CALL                             R14 2 -1
       25 CALL                             R13 -1 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R11 K12 [table.insert]
       29 CALL                             R11 -1 0
       30 ADDK                             R4 R4 K13 [1]
       31 GETTABLEKS                       R11 R9 K8 ["X"]
       33 GETTABLEKS                       R12 R1 K14 ["Max"]
       35 GETTABLEKS                       R12 R12 K8 ["X"]
       37 JUMPIFLT                         R12 R11 ; [+3]
       39 FORGLOOP                         R5 2 ; [-32]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K15 ["createElement"]
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K18 [{"ControlPoints", "Tag"}]
       46 SETTABLEKS                       R3 R7 K16 ["ControlPoints"]
       48 LOADK                            R8 K19 ["CurveLinePath2D"]
       49 SETTABLEKS                       R8 R7 K17 ["Tag"]
       51 CALL                             R5 2 -1
       52 RETURN                           R5 -1

PROTO_1:
        0 NEWTABLE                         R3 2 0
        2 GETTABLEKS                       R5 R0 K0 ["keypoints"]
        4 LENGTH                           R4 R5
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R4 ; [+46]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["plotToAbsolutePosition"]
       11 GETTABLEKS                       R7 R0 K0 ["keypoints"]
       13 GETTABLEN                        R6 R7 1
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 CALL                             R5 3 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K2 ["createElement"]
       20 GETUPVAL                         R7 2
       21 DUPTABLE                         R8 K5 [{"ControlPoints", "Tag"}]
       22 NEWTABLE                         R9 0 2
       24 GETIMPORT                        R10 K8 [Path2DControlPoint.new]
       26 GETIMPORT                        R11 K11 [UDim2.fromOffset]
       28 LOADN                            R12 0
       29 GETTABLEKS                       R13 R5 K12 ["Y"]
       31 CALL                             R11 2 -1
       32 CALL                             R10 -1 1
       33 GETIMPORT                        R11 K8 [Path2DControlPoint.new]
       35 GETIMPORT                        R12 K11 [UDim2.fromOffset]
       37 GETTABLEKS                       R13 R5 K13 ["X"]
       39 GETTABLEKS                       R14 R5 K12 ["Y"]
       41 CALL                             R12 2 -1
       42 CALL                             R11 -1 -1
       43 SETLIST                          R9 R10 -1 [1]
       45 SETTABLEKS                       R9 R8 K3 ["ControlPoints"]
       47 LOADK                            R9 K14 ["EndLinePath2D"]
       48 SETTABLEKS                       R9 R8 K4 ["Tag"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R3 K15 ["EndLineLeft"]
       53 LOADN                            R5 0
       54 JUMPIFNOTLT                      R5 R4 ; [+47]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K1 ["plotToAbsolutePosition"]
       59 GETTABLEKS                       R7 R0 K0 ["keypoints"]
       61 GETTABLE                         R6 R7 R4
       62 MOVE                             R7 R1
       63 MOVE                             R8 R2
       64 CALL                             R5 3 1
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K2 ["createElement"]
       68 GETUPVAL                         R7 2
       69 DUPTABLE                         R8 K5 [{"ControlPoints", "Tag"}]
       70 NEWTABLE                         R9 0 2
       72 GETIMPORT                        R10 K8 [Path2DControlPoint.new]
       74 GETIMPORT                        R11 K11 [UDim2.fromOffset]
       76 GETTABLEKS                       R12 R5 K13 ["X"]
       78 GETTABLEKS                       R13 R5 K12 ["Y"]
       80 CALL                             R11 2 -1
       81 CALL                             R10 -1 1
       82 GETIMPORT                        R11 K8 [Path2DControlPoint.new]
       84 GETIMPORT                        R12 K11 [UDim2.fromOffset]
       86 GETTABLEKS                       R13 R2 K13 ["X"]
       88 GETTABLEKS                       R14 R5 K12 ["Y"]
       90 CALL                             R12 2 -1
       91 CALL                             R11 -1 -1
       92 SETLIST                          R9 R10 -1 [1]
       94 SETTABLEKS                       R9 R8 K3 ["ControlPoints"]
       96 LOADK                            R9 K14 ["EndLinePath2D"]
       97 SETTABLEKS                       R9 R8 K4 ["Tag"]
       99 CALL                             R6 2 1
      100 SETTABLEKS                       R6 R3 K16 ["EndLineRight"]
      102 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 GETUPVAL                         R1 4
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 CALL                             R1 3 1
       10 SETTABLEKS                       R1 R0 K0 ["Curve"]
       12 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["PlotAbsoluteSize"]
        2 GETTABLEKS                       R2 R0 K1 ["CurveHook"]
        4 GETTABLEKS                       R3 R2 K2 ["plotRect"]
        6 FASTCALL1                        ASSERT R3 ; [+3]
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K4 [assert]
       10 CALL                             R4 1 0
       11 GETUPVAL                         R4 0
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R6 0 3
       20 MOVE                             R7 R2
       21 MOVE                             R8 R3
       22 GETTABLEKS                       R9 R0 K0 ["PlotAbsoluteSize"]
       24 SETLIST                          R6 R7 3 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K5 ["createElement"]
       30 GETUPVAL                         R6 4
       31 DUPTABLE                         R7 K8 [{"Size", "BackgroundTransparency"}]
       32 GETIMPORT                        R8 K11 [UDim2.fromScale]
       34 LOADN                            R9 1
       35 LOADN                            R10 1
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K6 ["Size"]
       39 LOADN                            R8 1
       40 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       42 MOVE                             R8 R4
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["DirectionalCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useMemo"]
       20 GETIMPORT                        R4 K6 [require]
       22 GETTABLEKS                       R5 R1 K7 ["Packages"]
       24 GETTABLEKS                       R5 R5 K10 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K11 ["UI"]
       29 GETTABLEKS                       R5 R5 K12 ["Pane"]
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K13 ["Path2DWrapper"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K14 ["PlotRectUtil"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R1 K15 ["Src"]
       45 GETTABLEKS                       R9 R9 K16 ["Types"]
       47 CALL                             R8 1 1
       48 DUPCLOSURE                       R9 K17 [PROTO_0]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R10 K18 [PROTO_1]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R6
       56 DUPCLOSURE                       R11 K19 [PROTO_3]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 RETURN                           R11 1
