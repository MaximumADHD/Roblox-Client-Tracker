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
       16 DUPTABLE                         R2 K33 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["TopImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png", ["MidImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png", ["BottomImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png", ["AutoSizeCanvas"] = True, ["AutoSizeLayoutElement"] = "UIListLayout", ["AutoSizeLayoutOptions"], ["ScrollBarBackgroundColor"], ["ScrollingEnabled"] = True, ["ScrollingDirection"], ["ScrollBarThickness"] = 8, ["ScrollBarImageTransparency"] = 0, ["ScrollBarImageColor3"], ["VerticalScrollBarInset"]}]
       17 GETTABLEKS                       R3 R1 K34 ["MainBackground"]
       19 SETTABLEKS                       R3 R2 K13 ["BackgroundColor3"]
       21 DUPTABLE                         R3 K36 [{"Padding"}]
       22 GETIMPORT                        R4 K39 [UDim.new]
       24 LOADN                            R5 0
       25 LOADN                            R6 4
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K35 ["Padding"]
       29 SETTABLEKS                       R3 R2 K24 ["AutoSizeLayoutOptions"]
       31 GETTABLEKS                       R3 R1 K40 ["ScrollBarBackground"]
       33 SETTABLEKS                       R3 R2 K25 ["ScrollBarBackgroundColor"]
       35 GETIMPORT                        R3 K43 [Enum.ScrollingDirection.Y]
       37 SETTABLEKS                       R3 R2 K27 ["ScrollingDirection"]
       39 GETTABLEKS                       R3 R1 K44 ["ScrollBar"]
       41 SETTABLEKS                       R3 R2 K31 ["ScrollBarImageColor3"]
       43 GETIMPORT                        R3 K47 [Enum.ScrollBarInset.Always]
       45 SETTABLEKS                       R3 R2 K32 ["VerticalScrollBarInset"]
       47 RETURN                           R2 1
