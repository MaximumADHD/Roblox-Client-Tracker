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
       20 DUPTABLE                         R3 K16 [{"TileSize", "TileInnerBorder", "ThumbnailFrameSize", "TextLabelSize", "ButtonBackgroundColor", "ButtonPressedColor", "TextSize", "ThumbnailBackgroundColor"}]
       21 GETIMPORT                        R4 K19 [UDim2.new]
       23 LOADN                            R5 0
       24 LOADN                            R6 140
       25 LOADN                            R7 0
       26 LOADN                            R8 160
       27 CALL                             R4 4 1
       28 SETTABLEKS                       R4 R3 K8 ["TileSize"]
       30 GETIMPORT                        R4 K21 [Vector2.new]
       32 LOADN                            R5 10
       33 LOADN                            R6 10
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K9 ["TileInnerBorder"]
       37 GETIMPORT                        R4 K19 [UDim2.new]
       39 LOADN                            R5 0
       40 LOADN                            R6 120
       41 LOADN                            R7 0
       42 LOADN                            R8 118
       43 CALL                             R4 4 1
       44 SETTABLEKS                       R4 R3 K10 ["ThumbnailFrameSize"]
       46 GETIMPORT                        R4 K19 [UDim2.new]
       48 LOADN                            R5 0
       49 LOADN                            R6 120
       50 LOADN                            R7 0
       51 LOADN                            R8 22
       52 CALL                             R4 4 1
       53 SETTABLEKS                       R4 R3 K11 ["TextLabelSize"]
       55 GETTABLEKS                       R4 R2 K22 ["Button"]
       57 SETTABLEKS                       R4 R3 K12 ["ButtonBackgroundColor"]
       59 GETTABLEKS                       R4 R2 K23 ["ButtonHover"]
       61 SETTABLEKS                       R4 R3 K13 ["ButtonPressedColor"]
       63 LOADN                            R4 18
       64 SETTABLEKS                       R4 R3 K14 ["TextSize"]
       66 GETTABLEKS                       R4 R2 K24 ["CategoryItem"]
       68 SETTABLEKS                       R4 R3 K15 ["ThumbnailBackgroundColor"]
       70 RETURN                           R3 1
