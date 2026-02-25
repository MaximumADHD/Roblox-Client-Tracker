PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["canvasRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETIMPORT                        R2 K4 [UDim2.new]
        8 LOADN                            R3 1
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 GETTABLEKS                       R6 R0 K5 ["Y"]
       13 CALL                             R2 4 1
       14 SETTABLEKS                       R2 R1 K6 ["CanvasSize"]
       16 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 NAMECALL                         R1 R0 K0 ["setState"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["createRef"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K2 ["canvasRef"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K3 ["contentSizeChanged"]
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["contentSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteContentSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K2 ["createElement"]
       10 LOADK                            R8 K3 ["Frame"]
       11 DUPTABLE                         R9 K7 [{"LayoutOrder", "BackgroundTransparency", "Size"}]
       12 GETTABLEKS                       R10 R6 K8 ["Index"]
       14 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       16 LOADN                            R10 1
       17 SETTABLEKS                       R10 R9 K5 ["BackgroundTransparency"]
       19 GETIMPORT                        R10 K11 [UDim2.new]
       21 LOADN                            R11 1
       22 LOADN                            R12 0
       23 LOADN                            R13 0
       24 GETUPVAL                         R14 1
       25 CALL                             R10 4 1
       26 SETTABLEKS                       R10 R9 K6 ["Size"]
       28 DUPTABLE                         R10 K13 [{"Button"}]
       29 GETTABLEKS                       R11 R6 K12 ["Button"]
       31 SETTABLEKS                       R11 R10 K12 ["Button"]
       33 CALL                             R7 3 1
       34 SETTABLE                         R7 R1 R5
       35 FORGLOOP                         R2 2 ; [-29]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R2 R3 K2 ["createElement"]
       40 GETUPVAL                         R3 2
       41 NEWTABLE                         R4 2 0
       43 GETIMPORT                        R5 K17 [Enum.AutomaticSize.Y]
       45 SETTABLEKS                       R5 R4 K18 ["AutomaticCanvasSize"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K19 ["Ref"]
       50 GETUPVAL                         R7 3
       51 GETTABLEKS                       R6 R7 K20 ["canvasRef"]
       53 SETTABLE                         R6 R4 R5
       54 DUPTABLE                         R5 K23 [{"UIListLayout", "FitContent"}]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R6 R7 K2 ["createElement"]
       58 LOADK                            R7 K21 ["UIListLayout"]
       59 NEWTABLE                         R8 8 0
       61 GETUPVAL                         R9 4
       62 SETTABLEKS                       R9 R8 K24 ["VerticalAlignment"]
       64 GETUPVAL                         R9 5
       65 SETTABLEKS                       R9 R8 K25 ["Padding"]
       67 GETIMPORT                        R9 K27 [Enum.SortOrder.LayoutOrder]
       69 SETTABLEKS                       R9 R8 K26 ["SortOrder"]
       71 GETIMPORT                        R9 K30 [Enum.FillDirection.Horizontal]
       73 SETTABLEKS                       R9 R8 K28 ["FillDirection"]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R10 R11 K31 ["Change"]
       78 GETTABLEKS                       R9 R10 K32 ["AbsoluteContentSize"]
       80 NEWCLOSURE                       R10 P0
       81 CAPTURE                          UPVAL U3
       82 SETTABLE                         R10 R8 R9
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K21 ["UIListLayout"]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R6 R7 K2 ["createElement"]
       89 GETUPVAL                         R7 6
       90 DUPTABLE                         R8 K35 [{"AutomaticSize", "HorizontalAlignment", "Layout"}]
       91 GETIMPORT                        R9 K17 [Enum.AutomaticSize.Y]
       93 SETTABLEKS                       R9 R8 K15 ["AutomaticSize"]
       95 GETIMPORT                        R9 K37 [Enum.HorizontalAlignment.Left]
       97 SETTABLEKS                       R9 R8 K33 ["HorizontalAlignment"]
       99 GETIMPORT                        R9 K39 [Enum.FillDirection.Vertical]
      101 SETTABLEKS                       R9 R8 K34 ["Layout"]
      103 MOVE                             R9 R1
      104 CALL                             R6 3 1
      105 SETTABLEKS                       R6 R5 K22 ["FitContent"]
      107 CALL                             R2 3 -1
      108 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["ItemHeight"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Items"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["RenderItem"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K4 ["MakeMenuActions"]
       16 GETTABLEKS                       R6 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R6 K5 ["OnDoubleClicked"]
       20 GETTABLEKS                       R7 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R7 K6 ["OnSelectionChanged"]
       24 GETTABLEKS                       R8 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R8 K7 ["ButtonStyle"]
       28 GETTABLEKS                       R9 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R9 K8 ["GetCurrentSelection"]
       32 GETTABLEKS                       R10 R0 K0 ["props"]
       34 GETTABLEKS                       R9 R10 K9 ["VerticalAlignment"]
       36 GETTABLEKS                       R11 R0 K0 ["props"]
       38 GETTABLEKS                       R10 R11 K10 ["Padding"]
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K11 ["createElement"]
       43 GETUPVAL                         R12 1
       44 DUPTABLE                         R13 K14 [{"Size", "GetCurrentSelection", "OnDoubleClicked", "OnSelectionChanged", "MakeMenuActions", "ButtonStyle", "Items", "RenderItem", "RenderContents"}]
       45 GETIMPORT                        R14 K17 [UDim2.new]
       47 LOADN                            R15 1
       48 LOADN                            R16 0
       49 LOADN                            R17 1
       50 LOADN                            R18 0
       51 CALL                             R14 4 1
       52 SETTABLEKS                       R14 R13 K12 ["Size"]
       54 SETTABLEKS                       R8 R13 K8 ["GetCurrentSelection"]
       56 SETTABLEKS                       R5 R13 K5 ["OnDoubleClicked"]
       58 SETTABLEKS                       R6 R13 K6 ["OnSelectionChanged"]
       60 SETTABLEKS                       R4 R13 K4 ["MakeMenuActions"]
       62 SETTABLEKS                       R7 R13 K7 ["ButtonStyle"]
       64 SETTABLEKS                       R2 R13 K2 ["Items"]
       66 SETTABLEKS                       R3 R13 K3 ["RenderItem"]
       68 NEWCLOSURE                       R14 P0
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R10
       75 CAPTURE                          UPVAL U3
       76 SETTABLEKS                       R14 R13 K13 ["RenderContents"]
       78 CALL                             R11 2 -1
       79 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Components"]
       29 GETTABLEKS                       R4 R5 K10 ["AbstractItemView"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["UI"]
       34 GETTABLEKS                       R5 R4 K12 ["Pane"]
       36 GETTABLEKS                       R6 R4 K13 ["ScrollingFrame"]
       38 GETTABLEKS                       R7 R2 K14 ["Component"]
       40 LOADK                            R9 K15 ["ListItemView"]
       41 NAMECALL                         R7 R7 K16 ["extend"]
       43 CALL                             R7 2 1
       44 DUPCLOSURE                       R8 K17 [PROTO_1]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R8 R7 K18 ["init"]
       48 DUPCLOSURE                       R8 K19 [PROTO_4]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R8 R7 K20 ["render"]
       55 RETURN                           R7 1
