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
       16 DUPTABLE                         R2 K13 [{["RowHeight"] = 24, ["ListRow"], ["ScrollingFrame"]}]
       17 DUPTABLE                         R3 K18 [{["Padding"] = 5, ["Spacing"] = 10}]
       18 SETTABLEKS                       R3 R2 K11 ["ListRow"]
       20 DUPTABLE                         R3 K35 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TopImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png", ["MidImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png", ["BottomImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png", ["ScrollBarThickness"] = 8, ["ScrollBarImageTransparency"] = 0, ["ScrollBarImageColor3"], ["VerticalScrollBarInset"], ["HorizontalScrollBarInset"]}]
       21 GETTABLEKS                       R4 R1 K36 ["ScrollBar"]
       23 SETTABLEKS                       R4 R3 K32 ["ScrollBarImageColor3"]
       25 GETIMPORT                        R4 K40 [Enum.ScrollBarInset.Always]
       27 SETTABLEKS                       R4 R3 K33 ["VerticalScrollBarInset"]
       29 GETIMPORT                        R4 K41 [Enum.ScrollBarInset.ScrollBar]
       31 SETTABLEKS                       R4 R3 K34 ["HorizontalScrollBarInset"]
       33 SETTABLEKS                       R3 R2 K12 ["ScrollingFrame"]
       35 RETURN                           R2 1
