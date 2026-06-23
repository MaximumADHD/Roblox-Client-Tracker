MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K12 [{"RowHeight", "ListRow", "ScrollingFrame"}]
       17 LOADN                            R3 24
       18 SETTABLEKS                       R3 R2 K9 ["RowHeight"]
       20 DUPTABLE                         R3 K15 [{"Padding", "Spacing"}]
       21 LOADN                            R4 5
       22 SETTABLEKS                       R4 R3 K13 ["Padding"]
       24 LOADN                            R4 10
       25 SETTABLEKS                       R4 R3 K14 ["Spacing"]
       27 SETTABLEKS                       R3 R2 K10 ["ListRow"]
       29 DUPTABLE                         R3 K26 [{"BackgroundTransparency", "BorderSizePixel", "TopImage", "MidImage", "BottomImage", "ScrollBarThickness", "ScrollBarImageTransparency", "ScrollBarImageColor3", "VerticalScrollBarInset", "HorizontalScrollBarInset"}]
       30 LOADN                            R4 1
       31 SETTABLEKS                       R4 R3 K16 ["BackgroundTransparency"]
       33 LOADN                            R4 0
       34 SETTABLEKS                       R4 R3 K17 ["BorderSizePixel"]
       36 LOADK                            R4 K27 ["rbxasset://textures/StudioSharedUI/ScrollBarTop.png"]
       37 SETTABLEKS                       R4 R3 K18 ["TopImage"]
       39 LOADK                            R4 K28 ["rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png"]
       40 SETTABLEKS                       R4 R3 K19 ["MidImage"]
       42 LOADK                            R4 K29 ["rbxasset://textures/StudioSharedUI/ScrollBarBottom.png"]
       43 SETTABLEKS                       R4 R3 K20 ["BottomImage"]
       45 LOADN                            R4 8
       46 SETTABLEKS                       R4 R3 K21 ["ScrollBarThickness"]
       48 LOADN                            R4 0
       49 SETTABLEKS                       R4 R3 K22 ["ScrollBarImageTransparency"]
       51 GETTABLEKS                       R4 R1 K30 ["ScrollBar"]
       53 SETTABLEKS                       R4 R3 K23 ["ScrollBarImageColor3"]
       55 GETIMPORT                        R4 K34 [Enum.ScrollBarInset.Always]
       57 SETTABLEKS                       R4 R3 K24 ["VerticalScrollBarInset"]
       59 GETIMPORT                        R4 K35 [Enum.ScrollBarInset.ScrollBar]
       61 SETTABLEKS                       R4 R3 K25 ["HorizontalScrollBarInset"]
       63 SETTABLEKS                       R3 R2 K11 ["ScrollingFrame"]
       65 RETURN                           R2 1
