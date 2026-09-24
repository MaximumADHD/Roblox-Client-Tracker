PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Theme"]
        4 GETTABLEKS                       R3 R2 K2 ["DragDestination"]
        6 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
        8 ORK                              R4 R5 K3 [1]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K5 ["createElement"]
       12 LOADK                            R6 K6 ["ImageLabel"]
       13 DUPTABLE                         R7 K17 [{["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 0.85, ["BackgroundColor3"], ["ImageColor3"], ["Image"], ["ResampleMode"], ["ScaleType"], ["SliceCenter"], ["LayoutOrder"]}]
       14 GETTABLEKS                       R8 R3 K18 ["Background"]
       16 SETTABLEKS                       R8 R7 K11 ["BackgroundColor3"]
       18 GETTABLEKS                       R8 R3 K19 ["Border"]
       20 SETTABLEKS                       R8 R7 K12 ["ImageColor3"]
       22 GETTABLEKS                       R8 R2 K20 ["DottedBorder"]
       24 GETTABLEKS                       R8 R8 K13 ["Image"]
       26 SETTABLEKS                       R8 R7 K13 ["Image"]
       28 GETIMPORT                        R8 K24 [Enum.ResamplerMode.Pixelated]
       30 SETTABLEKS                       R8 R7 K14 ["ResampleMode"]
       32 GETIMPORT                        R8 K26 [Enum.ScaleType.Slice]
       34 SETTABLEKS                       R8 R7 K15 ["ScaleType"]
       36 GETTABLEKS                       R8 R2 K20 ["DottedBorder"]
       38 GETTABLEKS                       R8 R8 K16 ["SliceCenter"]
       40 SETTABLEKS                       R8 R7 K16 ["SliceCenter"]
       42 SETTABLEKS                       R4 R7 K4 ["LayoutOrder"]
       44 CALL                             R5 2 -1
       45 RETURN                           R5 -1

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
