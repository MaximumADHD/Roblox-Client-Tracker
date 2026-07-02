MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R2 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K17 [{["TileSize"], ["TileInnerBorder"], ["ThumbnailFrameSize"], ["TextLabelSize"], ["ButtonBackgroundColor"], ["ButtonPressedColor"], ["TextSize"] = 18, ["ThumbnailBackgroundColor"]}]
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
       44 SETTABLEKS                       R4 R3 K10 ["ThumbnailFrameSize"]
       46 GETIMPORT                        R4 K20 [UDim2.new]
       48 LOADN                            R5 0
       49 LOADN                            R6 120
       50 LOADN                            R7 0
       51 LOADN                            R8 22
       52 CALL                             R4 4 1
       53 SETTABLEKS                       R4 R3 K11 ["TextLabelSize"]
       55 GETTABLEKS                       R4 R2 K23 ["Button"]
       57 SETTABLEKS                       R4 R3 K12 ["ButtonBackgroundColor"]
       59 GETTABLEKS                       R4 R2 K24 ["ButtonHover"]
       61 SETTABLEKS                       R4 R3 K13 ["ButtonPressedColor"]
       63 GETTABLEKS                       R4 R2 K25 ["CategoryItem"]
       65 SETTABLEKS                       R4 R3 K16 ["ThumbnailBackgroundColor"]
       67 RETURN                           R3 1
