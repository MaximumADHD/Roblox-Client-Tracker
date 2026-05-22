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
       17 DUPTABLE                         R3 K20 [{"Icon", "Padding", "Position", "ShouldMoveRight", "ZIndex"}]
       18 LOADK                            R4 K21 ["rbxasset://textures/DeveloperFramework/icon_backward.png"]
       19 SETTABLEKS                       R4 R3 K15 ["Icon"]
       21 DUPTABLE                         R4 K23 [{"Right"}]
       22 LOADN                            R5 3
       23 SETTABLEKS                       R5 R4 K22 ["Right"]
       25 SETTABLEKS                       R4 R3 K16 ["Padding"]
       27 GETIMPORT                        R4 K26 [UDim2.new]
       29 LOADN                            R5 0
       30 LOADN                            R6 20
       31 LOADK                            R7 K27 [0.5]
       32 LOADN                            R8 0
       33 CALL                             R4 4 1
       34 SETTABLEKS                       R4 R3 K17 ["Position"]
       36 LOADB                            R4 0
       37 SETTABLEKS                       R4 R3 K18 ["ShouldMoveRight"]
       39 LOADN                            R4 2
       40 SETTABLEKS                       R4 R3 K19 ["ZIndex"]
       42 SETTABLEKS                       R3 R2 K9 ["LeftButton"]
       44 DUPTABLE                         R3 K36 [{"AnchorPoint", "BackgroundColor", "Color", "Cursor", "HoverColor", "IconScaleType", "IconSize", "ImageTransparency", "Size"}]
       45 GETIMPORT                        R4 K38 [Vector2.new]
       47 LOADK                            R5 K27 [0.5]
       48 LOADK                            R6 K27 [0.5]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K28 ["AnchorPoint"]
       52 GETTABLEKS                       R4 R1 K39 ["SecondaryMain"]
       54 SETTABLEKS                       R4 R3 K29 ["BackgroundColor"]
       56 GETTABLEKS                       R4 R1 K40 ["SecondaryMuted"]
       58 SETTABLEKS                       R4 R3 K30 ["Color"]
       60 LOADK                            R4 K41 ["PointingHand"]
       61 SETTABLEKS                       R4 R3 K31 ["Cursor"]
       63 GETTABLEKS                       R4 R1 K42 ["SecondaryStatesHoverBackground"]
       65 SETTABLEKS                       R4 R3 K32 ["HoverColor"]
       67 GETIMPORT                        R4 K46 [Enum.ScaleType.Fit]
       69 SETTABLEKS                       R4 R3 K33 ["IconScaleType"]
       71 LOADN                            R4 16
       72 SETTABLEKS                       R4 R3 K34 ["IconSize"]
       74 LOADK                            R4 K27 [0.5]
       75 SETTABLEKS                       R4 R3 K35 ["ImageTransparency"]
       77 GETIMPORT                        R4 K26 [UDim2.new]
       79 LOADN                            R5 0
       80 LOADN                            R6 24
       81 LOADN                            R7 0
       82 LOADN                            R8 24
       83 CALL                             R4 4 1
       84 SETTABLEKS                       R4 R3 K13 ["Size"]
       86 SETTABLEKS                       R3 R2 K10 ["MoveButtons"]
       88 DUPTABLE                         R3 K20 [{"Icon", "Padding", "Position", "ShouldMoveRight", "ZIndex"}]
       89 LOADK                            R4 K47 ["rbxasset://textures/DeveloperFramework/icon_forward.png"]
       90 SETTABLEKS                       R4 R3 K15 ["Icon"]
       92 DUPTABLE                         R4 K49 [{"Left"}]
       93 LOADN                            R5 3
       94 SETTABLEKS                       R5 R4 K48 ["Left"]
       96 SETTABLEKS                       R4 R3 K16 ["Padding"]
       98 GETIMPORT                        R4 K26 [UDim2.new]
      100 LOADN                            R5 1
      101 LOADN                            R6 236
      102 LOADK                            R7 K27 [0.5]
      103 LOADN                            R8 0
      104 CALL                             R4 4 1
      105 SETTABLEKS                       R4 R3 K17 ["Position"]
      107 LOADB                            R4 1
      108 SETTABLEKS                       R4 R3 K18 ["ShouldMoveRight"]
      110 LOADN                            R4 3
      111 SETTABLEKS                       R4 R3 K19 ["ZIndex"]
      113 SETTABLEKS                       R3 R2 K11 ["RightButton"]
      115 GETIMPORT                        R3 K46 [Enum.ScaleType.Fit]
      117 SETTABLEKS                       R3 R2 K12 ["ImageScaleType"]
      119 GETIMPORT                        R3 K26 [UDim2.new]
      121 LOADN                            R4 1
      122 LOADN                            R5 0
      123 LOADN                            R6 1
      124 LOADN                            R7 0
      125 CALL                             R3 4 1
      126 SETTABLEKS                       R3 R2 K13 ["Size"]
      128 RETURN                           R2 1
