MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-ScrollingFrame"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 2
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 ["> ScrollingFrame"]
       24 DUPTABLE                         R8 K30 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TopImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png", ["MidImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png", ["BottomImage"] = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png", ["ScrollingEnabled"] = True, ["ScrollingDirection"], ["ScrollBarThickness"] = 8, ["ScrollBarImageTransparency"] = 0, ["ScrollBarImageColor3"] = "$SecondaryMain", ["VerticalScrollBarInset"]}]
       25 GETIMPORT                        R9 K33 [Enum.ScrollingDirection.Y]
       27 SETTABLEKS                       R9 R8 K23 ["ScrollingDirection"]
       29 GETIMPORT                        R9 K36 [Enum.ScrollBarInset.Always]
       31 SETTABLEKS                       R9 R8 K29 ["VerticalScrollBarInset"]
       33 CALL                             R6 2 1
       34 MOVE                             R7 R1
       35 LOADK                            R8 K37 [".modern > ScrollingFrame"]
       36 DUPTABLE                         R9 K39 [{["ScrollBarImageTransparency"] = 0, ["ScrollBarImageColor3"] = "$ScrollBarColor"}]
       37 CALL                             R7 2 -1
       38 SETLIST                          R5 R6 -1 [1]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1
