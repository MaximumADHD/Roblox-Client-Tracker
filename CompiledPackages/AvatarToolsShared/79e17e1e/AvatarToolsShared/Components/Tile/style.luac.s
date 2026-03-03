MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R3 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K17 [{"TileSize", "TileInnerBorder", "ImageFrameSize", "ImageSize", "TextLabelSize", "ButtonBackgroundColor", "ButtonPressedColor", "TextSize", "ImageBackgroundColor"}]
       21 GETIMPORT                        R4 K20 [UDim2.new]
       23 LOADN                            R5 0
       24 LOADN                            R6 140
       25 LOADN                            R7 0
       26 LOADN                            R8 160
       27 CALL                             R4 4 1
       28 SETTABLEKS                       R4 R3 K8 ["TileSize"]
       30 GETIMPORT                        R4 K22 [Vector2.new]
       32 LOADN                            R5 10
       33 LOADN                            R6 10
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K9 ["TileInnerBorder"]
       37 GETIMPORT                        R4 K20 [UDim2.new]
       39 LOADN                            R5 0
       40 LOADN                            R6 120
       41 LOADN                            R7 0
       42 LOADN                            R8 118
       43 CALL                             R4 4 1
       44 SETTABLEKS                       R4 R3 K10 ["ImageFrameSize"]
       46 GETIMPORT                        R4 K20 [UDim2.new]
       48 LOADN                            R5 0
       49 LOADN                            R6 100
       50 LOADN                            R7 0
       51 LOADN                            R8 98
       52 CALL                             R4 4 1
       53 SETTABLEKS                       R4 R3 K11 ["ImageSize"]
       55 GETIMPORT                        R4 K20 [UDim2.new]
       57 LOADN                            R5 0
       58 LOADN                            R6 120
       59 LOADN                            R7 0
       60 LOADN                            R8 22
       61 CALL                             R4 4 1
       62 SETTABLEKS                       R4 R3 K12 ["TextLabelSize"]
       64 GETTABLEKS                       R4 R2 K23 ["Button"]
       66 SETTABLEKS                       R4 R3 K13 ["ButtonBackgroundColor"]
       68 GETTABLEKS                       R4 R2 K24 ["ButtonHover"]
       70 SETTABLEKS                       R4 R3 K14 ["ButtonPressedColor"]
       72 LOADN                            R4 18
       73 SETTABLEKS                       R4 R3 K15 ["TextSize"]
       75 GETTABLEKS                       R4 R2 K25 ["CategoryItem"]
       77 SETTABLEKS                       R4 R3 K16 ["ImageBackgroundColor"]
       79 RETURN                           R3 1
