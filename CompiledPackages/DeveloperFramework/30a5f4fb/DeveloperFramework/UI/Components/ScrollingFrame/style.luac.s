MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K25 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "TopImage", "MidImage", "BottomImage", "AutoSizeCanvas", "AutoSizeLayoutElement", "AutoSizeLayoutOptions", "ScrollBarBackgroundColor", "ScrollingEnabled", "ScrollingDirection", "ScrollBarThickness", "ScrollBarImageTransparency", "ScrollBarImageColor3", "VerticalScrollBarInset"}]
       17 LOADN                            R3 1
       18 SETTABLEKS                       R3 R2 K9 ["BackgroundTransparency"]
       20 LOADN                            R3 0
       21 SETTABLEKS                       R3 R2 K10 ["BorderSizePixel"]
       23 GETTABLEKS                       R3 R1 K26 ["MainBackground"]
       25 SETTABLEKS                       R3 R2 K11 ["BackgroundColor3"]
       27 LOADK                            R3 K27 ["rbxasset://textures/StudioSharedUI/ScrollBarTop.png"]
       28 SETTABLEKS                       R3 R2 K12 ["TopImage"]
       30 LOADK                            R3 K28 ["rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png"]
       31 SETTABLEKS                       R3 R2 K13 ["MidImage"]
       33 LOADK                            R3 K29 ["rbxasset://textures/StudioSharedUI/ScrollBarBottom.png"]
       34 SETTABLEKS                       R3 R2 K14 ["BottomImage"]
       36 LOADB                            R3 1
       37 SETTABLEKS                       R3 R2 K15 ["AutoSizeCanvas"]
       39 LOADK                            R3 K30 ["UIListLayout"]
       40 SETTABLEKS                       R3 R2 K16 ["AutoSizeLayoutElement"]
       42 DUPTABLE                         R3 K32 [{"Padding"}]
       43 GETIMPORT                        R4 K35 [UDim.new]
       45 LOADN                            R5 0
       46 LOADN                            R6 4
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K31 ["Padding"]
       50 SETTABLEKS                       R3 R2 K17 ["AutoSizeLayoutOptions"]
       52 GETTABLEKS                       R3 R1 K36 ["ScrollBarBackground"]
       54 SETTABLEKS                       R3 R2 K18 ["ScrollBarBackgroundColor"]
       56 LOADB                            R3 1
       57 SETTABLEKS                       R3 R2 K19 ["ScrollingEnabled"]
       59 GETIMPORT                        R3 K39 [Enum.ScrollingDirection.Y]
       61 SETTABLEKS                       R3 R2 K20 ["ScrollingDirection"]
       63 LOADN                            R3 8
       64 SETTABLEKS                       R3 R2 K21 ["ScrollBarThickness"]
       66 LOADN                            R3 0
       67 SETTABLEKS                       R3 R2 K22 ["ScrollBarImageTransparency"]
       69 GETTABLEKS                       R3 R1 K40 ["ScrollBar"]
       71 SETTABLEKS                       R3 R2 K23 ["ScrollBarImageColor3"]
       73 GETIMPORT                        R3 K43 [Enum.ScrollBarInset.Always]
       75 SETTABLEKS                       R3 R2 K24 ["VerticalScrollBarInset"]
       77 RETURN                           R2 1
