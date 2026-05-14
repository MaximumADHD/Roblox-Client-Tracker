PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["ZIndex"]
       10 GETTABLEKS                       R6 R1 K5 ["OnScaleHandleDragStart"]
       12 GETTABLEKS                       R7 R1 K6 ["OnScaleHandleDragMoved"]
       14 GETTABLEKS                       R8 R1 K7 ["OnScaleHandleDragEnd"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["createElement"]
       19 LOADK                            R10 K9 ["Frame"]
       20 DUPTABLE                         R11 K11 [{"BackgroundTransparency", "Size", "Position", "ZIndex"}]
       21 LOADN                            R12 1
       22 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
       24 SETTABLEKS                       R3 R11 K2 ["Size"]
       26 SETTABLEKS                       R4 R11 K3 ["Position"]
       28 SETTABLEKS                       R5 R11 K4 ["ZIndex"]
       30 DUPTABLE                         R12 K14 [{"DragListenerArea", "Bar"}]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K8 ["createElement"]
       34 GETUPVAL                         R14 1
       35 DUPTABLE                         R15 K19 [{"Cursor", "OnDragBegan", "OnDragMoved", "OnDragEnded"}]
       36 LOADK                            R16 K20 ["SizeEW"]
       37 SETTABLEKS                       R16 R15 K15 ["Cursor"]
       39 SETTABLEKS                       R6 R15 K16 ["OnDragBegan"]
       41 SETTABLEKS                       R7 R15 K17 ["OnDragMoved"]
       43 SETTABLEKS                       R8 R15 K18 ["OnDragEnded"]
       45 CALL                             R13 2 1
       46 SETTABLEKS                       R13 R12 K12 ["DragListenerArea"]
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K8 ["createElement"]
       51 LOADK                            R14 K9 ["Frame"]
       52 DUPTABLE                         R15 K24 [{"BackgroundColor3", "BorderSizePixel", "Size", "Position", "AnchorPoint", "ZIndex"}]
       53 GETTABLEKS                       R16 R2 K25 ["scaleControlsTheme"]
       55 GETTABLEKS                       R16 R16 K26 ["mainColor"]
       57 SETTABLEKS                       R16 R15 K21 ["BackgroundColor3"]
       59 LOADN                            R16 0
       60 SETTABLEKS                       R16 R15 K22 ["BorderSizePixel"]
       62 GETIMPORT                        R16 K29 [UDim2.new]
       64 LOADN                            R17 0
       65 LOADN                            R18 2
       66 LOADN                            R19 1
       67 LOADN                            R20 0
       68 CALL                             R16 4 1
       69 SETTABLEKS                       R16 R15 K2 ["Size"]
       71 GETIMPORT                        R16 K29 [UDim2.new]
       73 LOADK                            R17 K30 [0.5]
       74 LOADN                            R18 0
       75 LOADN                            R19 0
       76 LOADN                            R20 0
       77 CALL                             R16 4 1
       78 SETTABLEKS                       R16 R15 K3 ["Position"]
       80 GETIMPORT                        R16 K32 [Vector2.new]
       82 LOADK                            R17 K30 [0.5]
       83 LOADN                            R18 0
       84 CALL                             R16 2 1
       85 SETTABLEKS                       R16 R15 K23 ["AnchorPoint"]
       87 SETTABLEKS                       R5 R15 K4 ["ZIndex"]
       89 CALL                             R13 2 1
       90 SETTABLEKS                       R13 R12 K13 ["Bar"]
       92 CALL                             R9 3 -1
       93 RETURN                           R9 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["DragListenerArea"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       36 LOADK                            R8 K15 ["ScaleHandle"]
       37 NAMECALL                         R6 R6 K16 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R7 R6 K18 ["render"]
       45 MOVE                             R7 R4
       46 DUPTABLE                         R8 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R9 R3 K19 ["Stylizer"]
       49 SETTABLEKS                       R9 R8 K19 ["Stylizer"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 MOVE                             R6 R7
       55 RETURN                           R6 1
