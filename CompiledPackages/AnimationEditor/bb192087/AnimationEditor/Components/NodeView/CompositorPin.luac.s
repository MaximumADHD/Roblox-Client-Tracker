PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Point"]
        6 DUPTABLE                         R3 K9 [{"Position", "ZIndex", "Color3", "OutlineColor3", "OutlineThickness", "Size", "positionerRef"}]
        7 GETTABLEKS                       R4 R0 K2 ["Position"]
        9 SETTABLEKS                       R4 R3 K2 ["Position"]
       11 GETTABLEKS                       R4 R0 K3 ["ZIndex"]
       13 SETTABLEKS                       R4 R3 K3 ["ZIndex"]
       15 GETTABLEKS                       R4 R0 K4 ["Color3"]
       17 SETTABLEKS                       R4 R3 K4 ["Color3"]
       19 GETTABLEKS                       R4 R0 K5 ["OutlineColor3"]
       21 SETTABLEKS                       R4 R3 K5 ["OutlineColor3"]
       23 GETTABLEKS                       R4 R0 K6 ["OutlineThickness"]
       25 SETTABLEKS                       R4 R3 K6 ["OutlineThickness"]
       27 LOADN                            R4 9
       28 SETTABLEKS                       R4 R3 K7 ["Size"]
       30 GETTABLEKS                       R4 R0 K8 ["positionerRef"]
       32 SETTABLEKS                       R4 R3 K8 ["positionerRef"]
       34 DUPTABLE                         R4 K12 [{"UIScale", "InputDetector"}]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K0 ["createElement"]
       38 LOADK                            R6 K10 ["UIScale"]
       39 DUPTABLE                         R7 K14 [{"Scale"}]
       40 GETTABLEKS                       R9 R0 K13 ["Scale"]
       42 ORK                              R8 R9 K15 [1]
       43 SETTABLEKS                       R8 R7 K13 ["Scale"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K10 ["UIScale"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["createElement"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K11 ["InputDetector"]
       54 DUPTABLE                         R7 K19 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
       55 GETTABLEKS                       R8 R0 K16 ["OnDragStart"]
       57 SETTABLEKS                       R8 R7 K16 ["OnDragStart"]
       59 GETTABLEKS                       R8 R0 K17 ["OnDragMoved"]
       61 SETTABLEKS                       R8 R7 K17 ["OnDragMoved"]
       63 GETTABLEKS                       R8 R0 K18 ["OnDragEnded"]
       65 SETTABLEKS                       R8 R7 K18 ["OnDragEnded"]
       67 CALL                             R5 2 1
       68 SETTABLEKS                       R5 R4 K11 ["InputDetector"]
       70 GETTABLEKS                       R5 R0 K20 ["children"]
       72 CALL                             R1 4 -1
       73 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Graphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
