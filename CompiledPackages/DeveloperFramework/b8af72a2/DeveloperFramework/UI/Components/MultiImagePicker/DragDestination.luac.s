PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["DragDestination"]
        6 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
        8 ORK                              R4 R5 K3 [1]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K5 ["createElement"]
       12 LOADK                            R6 K6 ["ImageLabel"]
       13 DUPTABLE                         R7 K15 [{"BorderSizePixel", "BackgroundTransparency", "BackgroundColor3", "ImageColor3", "Image", "ResampleMode", "ScaleType", "SliceCenter", "LayoutOrder"}]
       14 LOADN                            R8 0
       15 SETTABLEKS                       R8 R7 K7 ["BorderSizePixel"]
       17 LOADK                            R8 K16 [0.85]
       18 SETTABLEKS                       R8 R7 K8 ["BackgroundTransparency"]
       20 GETTABLEKS                       R8 R3 K17 ["Background"]
       22 SETTABLEKS                       R8 R7 K9 ["BackgroundColor3"]
       24 GETTABLEKS                       R8 R3 K18 ["Border"]
       26 SETTABLEKS                       R8 R7 K10 ["ImageColor3"]
       28 GETTABLEKS                       R8 R2 K19 ["DottedBorder"]
       30 GETTABLEKS                       R8 R8 K11 ["Image"]
       32 SETTABLEKS                       R8 R7 K11 ["Image"]
       34 GETIMPORT                        R8 K23 [Enum.ResamplerMode.Pixelated]
       36 SETTABLEKS                       R8 R7 K12 ["ResampleMode"]
       38 GETIMPORT                        R8 K25 [Enum.ScaleType.Slice]
       40 SETTABLEKS                       R8 R7 K13 ["ScaleType"]
       42 GETTABLEKS                       R8 R2 K19 ["DottedBorder"]
       44 GETTABLEKS                       R8 R8 K14 ["SliceCenter"]
       46 SETTABLEKS                       R8 R7 K14 ["SliceCenter"]
       48 SETTABLEKS                       R4 R7 K4 ["LayoutOrder"]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       18 LOADK                            R4 K9 ["DragDestination"]
       19 NAMECALL                         R2 R2 K10 ["extend"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K11 [PROTO_0]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K12 ["render"]
       26 RETURN                           R2 1
