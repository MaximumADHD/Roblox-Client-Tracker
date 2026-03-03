PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 GETTABLEKS                       R4 R0 K3 ["depth"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K4 ["indentWidth"]
        8 MUL                              R3 R4 R5
        9 LOADN                            R4 1
       10 LOADN                            R5 0
       11 CALL                             R1 4 -1
       12 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["ImageLabel"]
        2 NEWTABLE                         R3 8 0
        4 LOADN                            R4 1
        5 SETTABLEKS                       R4 R3 K1 ["BackgroundTransparency"]
        7 GETTABLEKS                       R4 R0 K2 ["layoutOrder"]
        9 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       11 GETTABLEKS                       R5 R0 K4 ["visibleNodeObservable"]
       13 GETTABLEKS                       R4 R5 K5 ["getBinding"]
       15 CALL                             R4 0 1
       16 DUPCLOSURE                       R6 K6 [PROTO_0]
       17 CAPTURE                          UPVAL U1
       18 NAMECALL                         R4 R4 K7 ["map"]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K8 ["Size"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K9 ["standard"]
       26 LOADK                            R5 K10 ["indentGuide"]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K11 ["Image"]
       30 GETIMPORT                        R4 K15 [Enum.ScaleType.Tile]
       32 SETTABLEKS                       R4 R3 K13 ["ScaleType"]
       34 GETIMPORT                        R4 K18 [UDim2.new]
       36 LOADN                            R5 0
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K19 ["indentWidth"]
       40 LOADN                            R7 1
       41 LOADN                            R8 0
       42 CALL                             R4 4 1
       43 SETTABLEKS                       R4 R3 K20 ["TileSize"]
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R4 R5 K21 ["Tag"]
       48 LOADK                            R5 K22 ["Explorer-Content-Surface-Outline"]
       49 SETTABLE                         R5 R3 R4
       50 CALL                             R1 2 -1
       51 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["ImageUrl"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K9 ["Observable"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R7 K13 ["useVisibleExplorerNodeRange"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K14 ["createElement"]
       44 DUPCLOSURE                       R7 K15 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 RETURN                           R7 1
