PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnMoved"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["OnMoved"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["ImageButton"]
        4 DUPTABLE                         R3 K9 [{"AnchorPoint", "Position", "Rotation", "Size", "Image", "BackgroundColor3", "ZIndex"}]
        5 GETTABLEKS                       R4 R0 K2 ["AnchorPoint"]
        7 SETTABLEKS                       R4 R3 K2 ["AnchorPoint"]
        9 GETTABLEKS                       R4 R0 K3 ["Position"]
       11 SETTABLEKS                       R4 R3 K3 ["Position"]
       13 GETTABLEKS                       R4 R0 K4 ["Rotation"]
       15 SETTABLEKS                       R4 R3 K4 ["Rotation"]
       17 GETTABLEKS                       R4 R0 K5 ["Size"]
       19 SETTABLEKS                       R4 R3 K5 ["Size"]
       21 GETTABLEKS                       R4 R0 K6 ["Image"]
       23 SETTABLEKS                       R4 R3 K6 ["Image"]
       25 GETTABLEKS                       R4 R0 K10 ["Color3"]
       27 JUMPIF                           R4 ; [+3]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K11 ["SCROLLBAR_BUTTON_COLOR3"]
       31 SETTABLEKS                       R4 R3 K7 ["BackgroundColor3"]
       33 GETTABLEKS                       R4 R0 K8 ["ZIndex"]
       35 SETTABLEKS                       R4 R3 K8 ["ZIndex"]
       37 DUPTABLE                         R4 K13 [{"MouseDetector"}]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["createElement"]
       41 GETUPVAL                         R6 2
       42 DUPTABLE                         R7 K16 [{"AnchorPoint", "OnClick", "OnDragMoved"}]
       43 GETTABLEKS                       R8 R0 K2 ["AnchorPoint"]
       45 SETTABLEKS                       R8 R7 K2 ["AnchorPoint"]
       47 NEWCLOSURE                       R8 P0
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R8 R7 K15 ["OnDragMoved"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K12 ["MouseDetector"]
       58 CALL                             R1 3 -1
       59 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["InputDetector"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["StyleUtil"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 SETGLOBAL                        R6 K14 ["ScrollbarButton"]
       39 GETGLOBAL                        R6 K14 ["ScrollbarButton"]
       41 RETURN                           R6 1
