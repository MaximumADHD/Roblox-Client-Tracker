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
       20 DUPTABLE                         R11 K12 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["ZIndex"]}]
       21 SETTABLEKS                       R3 R11 K2 ["Size"]
       23 SETTABLEKS                       R4 R11 K3 ["Position"]
       25 SETTABLEKS                       R5 R11 K4 ["ZIndex"]
       27 DUPTABLE                         R12 K15 [{"DragListenerArea", "Bar"}]
       28 GETUPVAL                         R13 0
       29 GETTABLEKS                       R13 R13 K8 ["createElement"]
       31 GETUPVAL                         R14 1
       32 DUPTABLE                         R15 K21 [{["Cursor"] = "SizeEW", ["OnDragBegan"], ["OnDragMoved"], ["OnDragEnded"]}]
       33 SETTABLEKS                       R6 R15 K18 ["OnDragBegan"]
       35 SETTABLEKS                       R7 R15 K19 ["OnDragMoved"]
       37 SETTABLEKS                       R8 R15 K20 ["OnDragEnded"]
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K13 ["DragListenerArea"]
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R13 R13 K8 ["createElement"]
       45 LOADK                            R14 K9 ["Frame"]
       46 DUPTABLE                         R15 K26 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"]}]
       47 GETTABLEKS                       R16 R2 K27 ["scaleControlsTheme"]
       49 GETTABLEKS                       R16 R16 K28 ["mainColor"]
       51 SETTABLEKS                       R16 R15 K22 ["BackgroundColor3"]
       53 GETIMPORT                        R16 K31 [UDim2.new]
       55 LOADN                            R17 0
       56 LOADN                            R18 2
       57 LOADN                            R19 1
       58 LOADN                            R20 0
       59 CALL                             R16 4 1
       60 SETTABLEKS                       R16 R15 K2 ["Size"]
       62 GETIMPORT                        R16 K31 [UDim2.new]
       64 LOADK                            R17 K32 [0.5]
       65 LOADN                            R18 0
       66 LOADN                            R19 0
       67 LOADN                            R20 0
       68 CALL                             R16 4 1
       69 SETTABLEKS                       R16 R15 K3 ["Position"]
       71 GETIMPORT                        R16 K34 [Vector2.new]
       73 LOADK                            R17 K32 [0.5]
       74 LOADN                            R18 0
       75 CALL                             R16 2 1
       76 SETTABLEKS                       R16 R15 K25 ["AnchorPoint"]
       78 SETTABLEKS                       R5 R15 K4 ["ZIndex"]
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K14 ["Bar"]
       83 CALL                             R9 3 -1
       84 RETURN                           R9 -1

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
