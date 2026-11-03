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
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K12 [{"FormItem"}]
       24 DUPTABLE                         R4 K35 [{["Spacing"] = 6, ["StatusIconSize"] = 20, ["HelpIconSize"] = 16, ["DepthPadding"] = 10, ["WithChildrenPadding"] = 10, ["Padding"] = 28, ["StatusIconError"] = "rbxasset://textures/StudioSharedUI/alert_error@2x.png", ["StatusIconWarning"] = "rbxasset://textures/StudioSharedUI/alert_warning@2x.png", ["HelpIcon"] = "rbxasset://textures/StudioSharedUI/Help.png", ["IconColor"], ["Arrow"], ["Font"], ["FontSize"] = 18}]
       25 GETTABLEKS                       R5 R1 K36 ["Icon"]
       27 SETTABLEKS                       R5 R4 K30 ["IconColor"]
       29 NEWTABLE                         R5 8 0
       31 GETTABLEKS                       R6 R1 K37 ["MainText"]
       33 SETTABLEKS                       R6 R5 K38 ["Color"]
       35 LOADK                            R6 K39 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       36 SETTABLEKS                       R6 R5 K40 ["Image"]
       38 GETIMPORT                        R6 K43 [Vector2.new]
       40 LOADN                            R7 12
       41 LOADN                            R8 0
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K44 ["ImageRectOffset"]
       45 GETIMPORT                        R6 K43 [Vector2.new]
       47 LOADN                            R7 12
       48 LOADN                            R8 12
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K45 ["ImageRectSize"]
       52 GETIMPORT                        R6 K48 [UDim2.fromOffset]
       54 LOADN                            R7 12
       55 LOADN                            R8 12
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K49 ["Size"]
       59 GETTABLEKS                       R6 R2 K50 ["Selected"]
       61 DUPTABLE                         R7 K51 [{"ImageRectOffset"}]
       62 GETIMPORT                        R8 K43 [Vector2.new]
       64 LOADN                            R9 24
       65 LOADN                            R10 0
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K44 ["ImageRectOffset"]
       69 SETTABLE                         R7 R5 R6
       70 SETTABLEKS                       R5 R4 K31 ["Arrow"]
       72 GETIMPORT                        R5 K54 [Enum.Font.SourceSans]
       74 SETTABLEKS                       R5 R4 K32 ["Font"]
       76 SETTABLEKS                       R4 R3 K11 ["FormItem"]
       78 RETURN                           R3 1
