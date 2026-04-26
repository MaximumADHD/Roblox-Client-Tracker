MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-ScrollingFrame"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 2
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 ["> ScrollingFrame"]
       24 DUPTABLE                         R8 K22 [{"BackgroundTransparency", "BorderSizePixel", "TopImage", "MidImage", "BottomImage", "ScrollingEnabled", "ScrollingDirection", "ScrollBarThickness", "ScrollBarImageTransparency", "ScrollBarImageColor3", "VerticalScrollBarInset"}]
       25 LOADN                            R9 1
       26 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       28 LOADN                            R9 0
       29 SETTABLEKS                       R9 R8 K12 ["BorderSizePixel"]
       31 LOADK                            R9 K23 ["rbxasset://textures/StudioSharedUI/ScrollBarTop.png"]
       32 SETTABLEKS                       R9 R8 K13 ["TopImage"]
       34 LOADK                            R9 K24 ["rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png"]
       35 SETTABLEKS                       R9 R8 K14 ["MidImage"]
       37 LOADK                            R9 K25 ["rbxasset://textures/StudioSharedUI/ScrollBarBottom.png"]
       38 SETTABLEKS                       R9 R8 K15 ["BottomImage"]
       40 LOADB                            R9 1
       41 SETTABLEKS                       R9 R8 K16 ["ScrollingEnabled"]
       43 GETIMPORT                        R9 K28 [Enum.ScrollingDirection.Y]
       45 SETTABLEKS                       R9 R8 K17 ["ScrollingDirection"]
       47 LOADN                            R9 8
       48 SETTABLEKS                       R9 R8 K18 ["ScrollBarThickness"]
       50 LOADN                            R9 0
       51 SETTABLEKS                       R9 R8 K19 ["ScrollBarImageTransparency"]
       53 LOADK                            R9 K29 ["$SecondaryMain"]
       54 SETTABLEKS                       R9 R8 K20 ["ScrollBarImageColor3"]
       56 GETIMPORT                        R9 K32 [Enum.ScrollBarInset.Always]
       58 SETTABLEKS                       R9 R8 K21 ["VerticalScrollBarInset"]
       60 CALL                             R6 2 1
       61 MOVE                             R7 R1
       62 LOADK                            R8 K33 [".modern > ScrollingFrame"]
       63 DUPTABLE                         R9 K34 [{"ScrollBarImageTransparency", "ScrollBarImageColor3"}]
       64 LOADN                            R10 0
       65 SETTABLEKS                       R10 R9 K19 ["ScrollBarImageTransparency"]
       67 LOADK                            R10 K35 ["$ScrollBarColor"]
       68 SETTABLEKS                       R10 R9 K20 ["ScrollBarImageColor3"]
       70 CALL                             R7 2 -1
       71 SETLIST                          R5 R6 -1 [1]
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1
