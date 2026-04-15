PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Image"]
        6 DUPTABLE                         R3 K7 [{"LayoutOrder", "Size", "Image", "ScaleType", "TileSize", "tag"}]
        7 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       11 GETIMPORT                        R4 K10 [UDim2.new]
       13 LOADN                            R5 0
       14 GETTABLEKS                       R7 R0 K11 ["Depth"]
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R8 R9 K12 ["IconWidthXSmall"]
       19 MUL                              R6 R7 R8
       20 LOADN                            R7 1
       21 LOADN                            R8 0
       22 CALL                             R4 4 1
       23 SETTABLEKS                       R4 R3 K3 ["Size"]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R4 R5 K13 ["getLight"]
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K14 ["AvailableImages"]
       31 GETTABLEKS                       R5 R6 K15 ["IndentGuide"]
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K1 ["Image"]
       36 GETIMPORT                        R4 K18 [Enum.ScaleType.Tile]
       38 SETTABLEKS                       R4 R3 K4 ["ScaleType"]
       40 GETIMPORT                        R4 K10 [UDim2.new]
       42 LOADN                            R5 0
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K12 ["IconWidthXSmall"]
       46 LOADN                            R7 1
       47 LOADN                            R8 0
       48 CALL                             R4 4 1
       49 SETTABLEKS                       R4 R3 K5 ["TileSize"]
       51 LOADK                            R4 K19 ["content-inverse-default"]
       52 SETTABLEKS                       R4 R3 K6 ["tag"]
       54 CALL                             R1 2 -1
       55 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Images"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Resources"]
       36 GETTABLEKS                       R5 R6 K13 ["StyleConstants"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 RETURN                           R5 1
