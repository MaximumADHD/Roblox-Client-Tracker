PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 LOADK                            R4 K3 ["Frame"]
        8 DUPTABLE                         R5 K9 [{"Size", "LayoutOrder", "BackgroundColor3", "BorderSizePixel", "ZIndex"}]
        9 GETIMPORT                        R6 K12 [UDim2.new]
       11 LOADN                            R7 0
       12 LOADN                            R8 2
       13 LOADN                            R9 1
       14 LOADN                            R10 0
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K4 ["Size"]
       18 LOADN                            R6 1
       19 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       21 GETTABLEKS                       R6 R2 K13 ["borderColor"]
       23 SETTABLEKS                       R6 R5 K6 ["BackgroundColor3"]
       25 LOADN                            R6 0
       26 SETTABLEKS                       R6 R5 K7 ["BorderSizePixel"]
       28 GETTABLEKS                       R6 R1 K8 ["ZIndex"]
       30 SETTABLEKS                       R6 R5 K8 ["ZIndex"]
       32 DUPTABLE                         R6 K15 [{"DragArea"}]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K2 ["createElement"]
       36 GETUPVAL                         R8 1
       37 DUPTABLE                         R9 K19 [{"AnchorPoint", "Size", "ZIndex", "Cursor", "OnDragMoved"}]
       38 GETIMPORT                        R10 K21 [Vector2.new]
       40 LOADN                            R11 1
       41 LOADN                            R12 0
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K16 ["AnchorPoint"]
       45 GETIMPORT                        R10 K12 [UDim2.new]
       47 LOADN                            R11 0
       48 LOADN                            R12 5
       49 LOADN                            R13 1
       50 LOADN                            R14 0
       51 CALL                             R10 4 1
       52 SETTABLEKS                       R10 R9 K4 ["Size"]
       54 LOADN                            R10 2
       55 SETTABLEKS                       R10 R9 K8 ["ZIndex"]
       57 LOADK                            R10 K22 ["SplitEW"]
       58 SETTABLEKS                       R10 R9 K17 ["Cursor"]
       60 GETTABLEKS                       R10 R1 K18 ["OnDragMoved"]
       62 SETTABLEKS                       R10 R9 K18 ["OnDragMoved"]
       64 CALL                             R7 2 1
       65 SETTABLEKS                       R7 R6 K14 ["DragArea"]
       67 CALL                             R3 3 -1
       68 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["DragListenerArea"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["TrackListBorder"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R7 R6 K18 ["render"]
       45 MOVE                             R7 R5
       46 DUPTABLE                         R8 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R9 R4 K19 ["Stylizer"]
       49 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R6 R7
       55 RETURN                           R6 1
