PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["renderRef"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["lastWidth"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["lastHeight"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K4 ["treemapSolveDirty"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["treemapNode"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["treemapInputData"]
       21 LOADN                            R1 0
       22 SETTABLEKS                       R1 R0 K7 ["timeCostOfLastSolve"]
       24 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["timeCostOfLastSolve"]
        2 LOADK                            R2 K1 [0.0333333333333333]
        3 JUMPIFNOTLT                      R1 R2 ; [+7]
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K2 ["treemapSolveDirty"]
        8 NAMECALL                         R1 R0 K3 ["repaintTreemap"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R0 0
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K3 ["Destroy"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R2 R0 K2 ["treemapSolveDirty"]
        5 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K3 ["treemapInputData"]
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K4 ["renderRef"]
       15 NAMECALL                         R2 R2 K5 ["getValue"]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 RETURN                           R0 0
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R0 K2 ["treemapSolveDirty"]
       24 GETTABLEKS                       R4 R2 K6 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R4 K7 ["x"]
       28 SETTABLEKS                       R3 R0 K8 ["lastWidth"]
       30 GETTABLEKS                       R4 R2 K6 ["AbsoluteSize"]
       32 GETTABLEKS                       R3 R4 K9 ["y"]
       34 SETTABLEKS                       R3 R0 K10 ["lastHeight"]
       36 GETTABLEKS                       R3 R0 K3 ["treemapInputData"]
       38 JUMPIFNOT                        R3 ; [+29]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R5 R0 K3 ["treemapInputData"]
       42 GETTABLEKS                       R6 R0 K8 ["lastWidth"]
       44 GETTABLEKS                       R7 R0 K10 ["lastHeight"]
       46 LOADN                            R8 3
       47 NAMECALL                         R3 R3 K11 ["SolveTreemap"]
       49 CALL                             R3 5 1
       50 GETTABLEKS                       R4 R0 K12 ["treemapRenderedFrame"]
       52 GETUPVAL                         R5 1
       53 MOVE                             R7 R3
       54 NAMECALL                         R5 R5 K13 ["RenderTreemap"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R0 K12 ["treemapRenderedFrame"]
       59 GETTABLEKS                       R5 R0 K12 ["treemapRenderedFrame"]
       61 SETTABLEKS                       R2 R5 K14 ["Parent"]
       63 GETIMPORT                        R5 K17 [task.spawn]
       65 NEWCLOSURE                       R6 P0
       66 CAPTURE                          VAL R4
       67 CALL                             R5 1 0
       68 GETIMPORT                        R4 K1 [tick]
       70 CALL                             R4 0 1
       71 SUB                              R3 R4 R1
       72 SETTABLEKS                       R3 R0 K18 ["timeCostOfLastSolve"]
       74 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"size"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["AbsoluteSize"]
        5 SETTABLEKS                       R3 R2 K0 ["size"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K4 ["repaintTreemapPerformanceAware"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["renderRef"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 DUPTABLE                         R5 K3 [{"size"}]
       12 GETTABLEKS                       R6 R1 K4 ["AbsoluteSize"]
       14 SETTABLEKS                       R6 R5 K2 ["size"]
       16 NAMECALL                         R3 R0 K5 ["setState"]
       18 CALL                             R3 2 0
       19 NAMECALL                         R3 R0 K6 ["repaintTreemapPerformanceAware"]
       21 CALL                             R3 1 0
       22 LOADK                            R5 K4 ["AbsoluteSize"]
       23 NAMECALL                         R3 R1 K7 ["GetPropertyChangedSignal"]
       25 CALL                             R3 2 1
       26 MOVE                             R5 R2
       27 NAMECALL                         R3 R3 K8 ["Connect"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R0 K9 ["resizeConn"]
       32 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["resizeConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["resizeConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["resizeConn"]
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K7 [{"Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex", "Visible"}]
        3 GETTABLEKS                       R3 R1 K1 ["Size"]
        5 SETTABLEKS                       R3 R2 K1 ["Size"]
        7 GETTABLEKS                       R3 R1 K2 ["Position"]
        9 SETTABLEKS                       R3 R2 K2 ["Position"]
       11 GETTABLEKS                       R3 R1 K3 ["AnchorPoint"]
       13 SETTABLEKS                       R3 R2 K3 ["AnchorPoint"]
       15 GETTABLEKS                       R3 R1 K4 ["LayoutOrder"]
       17 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       19 GETTABLEKS                       R3 R1 K5 ["ZIndex"]
       21 SETTABLEKS                       R3 R2 K5 ["ZIndex"]
       23 GETTABLEKS                       R3 R1 K6 ["Visible"]
       25 SETTABLEKS                       R3 R2 K6 ["Visible"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K8 ["createElement"]
       30 LOADK                            R4 K9 ["Frame"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K10 ["join"]
       34 MOVE                             R6 R2
       35 DUPTABLE                         R7 K13 [{"BackgroundColor3", "BorderSizePixel"}]
       36 GETIMPORT                        R8 K16 [Color3.new]
       38 LOADN                            R9 1
       39 LOADN                            R10 1
       40 LOADN                            R11 0
       41 CALL                             R8 3 1
       42 SETTABLEKS                       R8 R7 K11 ["BackgroundColor3"]
       44 LOADN                            R8 0
       45 SETTABLEKS                       R8 R7 K12 ["BorderSizePixel"]
       47 CALL                             R5 2 1
       48 DUPTABLE                         R6 K18 [{"InnerFrame"}]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R7 R8 K8 ["createElement"]
       52 LOADK                            R8 K9 ["Frame"]
       53 DUPTABLE                         R9 K20 [{"Size", "BorderSizePixel", "BackgroundColor3", "ref"}]
       54 GETIMPORT                        R10 K22 [UDim2.new]
       56 LOADN                            R11 1
       57 LOADN                            R12 0
       58 LOADN                            R13 1
       59 LOADN                            R14 0
       60 CALL                             R10 4 1
       61 SETTABLEKS                       R10 R9 K1 ["Size"]
       63 LOADN                            R10 0
       64 SETTABLEKS                       R10 R9 K12 ["BorderSizePixel"]
       66 GETIMPORT                        R10 K16 [Color3.new]
       68 LOADK                            R11 K23 [0.3]
       69 LOADK                            R12 K23 [0.3]
       70 LOADK                            R13 K23 [0.3]
       71 CALL                             R10 3 1
       72 SETTABLEKS                       R10 R9 K11 ["BackgroundColor3"]
       74 GETTABLEKS                       R10 R0 K24 ["renderRef"]
       76 SETTABLEKS                       R10 R9 K19 ["ref"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K17 ["InnerFrame"]
       81 CALL                             R3 3 -1
       82 RETURN                           R3 -1

PROTO_8:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["treemapSolveDirty"]
        3 SETTABLEKS                       R1 R0 K1 ["treemapInputData"]
        5 NAMECALL                         R2 R0 K2 ["repaintTreemap"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K8 ["Parent"]
       20 GETTABLEKS                       R4 R5 K9 ["Treemap"]
       22 GETTABLEKS                       R3 R4 K10 ["SquarifiedTreemapTree"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R7 K1 [script]
       29 GETTABLEKS                       R6 R7 K8 ["Parent"]
       31 GETTABLEKS                       R5 R6 K9 ["Treemap"]
       33 GETTABLEKS                       R4 R5 K11 ["TreemapToFrames"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Packages"]
       40 GETTABLEKS                       R5 R6 K12 ["Dash"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K13 ["Src"]
       47 GETTABLEKS                       R8 R9 K14 ["Components"]
       49 GETTABLEKS                       R7 R8 K9 ["Treemap"]
       51 GETTABLEKS                       R6 R7 K15 ["TreemapTypes"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R1 K16 ["PureComponent"]
       56 LOADK                            R8 K9 ["Treemap"]
       57 NAMECALL                         R6 R6 K17 ["extend"]
       59 CALL                             R6 2 1
       60 DUPCLOSURE                       R7 K18 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 SETTABLEKS                       R7 R6 K19 ["init"]
       64 DUPCLOSURE                       R7 K20 [PROTO_1]
       65 SETTABLEKS                       R7 R6 K21 ["repaintTreemapPerformanceAware"]
       67 DUPCLOSURE                       R7 K22 [PROTO_3]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R7 R6 K23 ["repaintTreemap"]
       72 DUPCLOSURE                       R7 K24 [PROTO_5]
       73 SETTABLEKS                       R7 R6 K25 ["didMount"]
       75 DUPCLOSURE                       R7 K26 [PROTO_6]
       76 SETTABLEKS                       R7 R6 K27 ["willUnmount"]
       78 DUPCLOSURE                       R7 K28 [PROTO_7]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R7 R6 K29 ["render"]
       83 DUPCLOSURE                       R7 K30 [PROTO_8]
       84 SETTABLEKS                       R7 R6 K31 ["SubmitTreemapNodes"]
       86 RETURN                           R6 1
