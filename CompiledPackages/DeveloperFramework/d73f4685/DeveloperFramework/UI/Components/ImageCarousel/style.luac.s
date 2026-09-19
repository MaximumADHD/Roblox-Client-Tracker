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
       16 DUPTABLE                         R2 K14 [{"LeftButton", "MoveButtons", "RightButton", "ImageScaleType", "Size"}]
       17 DUPTABLE                         R3 K23 [{["Icon"] = "rbxasset://textures/DeveloperFramework/icon_backward.png", ["Padding"], ["Position"], ["ShouldMoveRight"] = False, ["ZIndex"] = 2}]
       18 DUPTABLE                         R4 K26 [{["Right"] = 3}]
       19 SETTABLEKS                       R4 R3 K17 ["Padding"]
       21 GETIMPORT                        R4 K29 [UDim2.new]
       23 LOADN                            R5 0
       24 LOADN                            R6 20
       25 LOADK                            R7 K30 [0.5]
       26 LOADN                            R8 0
       27 CALL                             R4 4 1
       28 SETTABLEKS                       R4 R3 K18 ["Position"]
       30 SETTABLEKS                       R3 R2 K9 ["LeftButton"]
       32 DUPTABLE                         R3 K41 [{["AnchorPoint"], ["BackgroundColor"], ["Color"], ["Cursor"] = "PointingHand", ["HoverColor"], ["IconScaleType"], ["IconSize"] = 16, ["ImageTransparency"] = 0.5, ["Size"]}]
       33 GETIMPORT                        R4 K43 [Vector2.new]
       35 LOADK                            R5 K30 [0.5]
       36 LOADK                            R6 K30 [0.5]
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K31 ["AnchorPoint"]
       40 GETTABLEKS                       R4 R1 K44 ["SecondaryMain"]
       42 SETTABLEKS                       R4 R3 K32 ["BackgroundColor"]
       44 GETTABLEKS                       R4 R1 K45 ["SecondaryMuted"]
       46 SETTABLEKS                       R4 R3 K33 ["Color"]
       48 GETTABLEKS                       R4 R1 K46 ["SecondaryStatesHoverBackground"]
       50 SETTABLEKS                       R4 R3 K36 ["HoverColor"]
       52 GETIMPORT                        R4 K50 [Enum.ScaleType.Fit]
       54 SETTABLEKS                       R4 R3 K37 ["IconScaleType"]
       56 GETIMPORT                        R4 K29 [UDim2.new]
       58 LOADN                            R5 0
       59 LOADN                            R6 24
       60 LOADN                            R7 0
       61 LOADN                            R8 24
       62 CALL                             R4 4 1
       63 SETTABLEKS                       R4 R3 K13 ["Size"]
       65 SETTABLEKS                       R3 R2 K10 ["MoveButtons"]
       67 DUPTABLE                         R3 K53 [{["Icon"] = "rbxasset://textures/DeveloperFramework/icon_forward.png", ["Padding"], ["Position"], ["ShouldMoveRight"] = True, ["ZIndex"] = 3}]
       68 DUPTABLE                         R4 K55 [{["Left"] = 3}]
       69 SETTABLEKS                       R4 R3 K17 ["Padding"]
       71 GETIMPORT                        R4 K29 [UDim2.new]
       73 LOADN                            R5 1
       74 LOADN                            R6 -20
       75 LOADK                            R7 K30 [0.5]
       76 LOADN                            R8 0
       77 CALL                             R4 4 1
       78 SETTABLEKS                       R4 R3 K18 ["Position"]
       80 SETTABLEKS                       R3 R2 K11 ["RightButton"]
       82 GETIMPORT                        R3 K50 [Enum.ScaleType.Fit]
       84 SETTABLEKS                       R3 R2 K12 ["ImageScaleType"]
       86 GETIMPORT                        R3 K29 [UDim2.new]
       88 LOADN                            R4 1
       89 LOADN                            R5 0
       90 LOADN                            R6 1
       91 LOADN                            R7 0
       92 CALL                             R3 4 1
       93 SETTABLEKS                       R3 R2 K13 ["Size"]
       95 RETURN                           R2 1
