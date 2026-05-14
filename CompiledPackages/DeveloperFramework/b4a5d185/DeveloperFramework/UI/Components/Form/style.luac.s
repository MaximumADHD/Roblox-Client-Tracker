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
       24 DUPTABLE                         R4 K26 [{"Spacing", "StatusIconSize", "HelpIconSize", "DepthPadding", "WithChildrenPadding", "Padding", "StatusIconError", "StatusIconWarning", "HelpIcon", "IconColor", "Arrow", "Font", "FontSize"}]
       25 LOADN                            R5 6
       26 SETTABLEKS                       R5 R4 K13 ["Spacing"]
       28 LOADN                            R5 20
       29 SETTABLEKS                       R5 R4 K14 ["StatusIconSize"]
       31 LOADN                            R5 16
       32 SETTABLEKS                       R5 R4 K15 ["HelpIconSize"]
       34 LOADN                            R5 10
       35 SETTABLEKS                       R5 R4 K16 ["DepthPadding"]
       37 LOADN                            R5 10
       38 SETTABLEKS                       R5 R4 K17 ["WithChildrenPadding"]
       40 LOADN                            R5 28
       41 SETTABLEKS                       R5 R4 K18 ["Padding"]
       43 LOADK                            R5 K27 ["rbxasset://textures/StudioSharedUI/alert_error@2x.png"]
       44 SETTABLEKS                       R5 R4 K19 ["StatusIconError"]
       46 LOADK                            R5 K28 ["rbxasset://textures/StudioSharedUI/alert_warning@2x.png"]
       47 SETTABLEKS                       R5 R4 K20 ["StatusIconWarning"]
       49 LOADK                            R5 K29 ["rbxasset://textures/StudioSharedUI/Help.png"]
       50 SETTABLEKS                       R5 R4 K21 ["HelpIcon"]
       52 GETTABLEKS                       R5 R1 K30 ["Icon"]
       54 SETTABLEKS                       R5 R4 K22 ["IconColor"]
       56 NEWTABLE                         R5 8 0
       58 GETTABLEKS                       R6 R1 K31 ["MainText"]
       60 SETTABLEKS                       R6 R5 K32 ["Color"]
       62 LOADK                            R6 K33 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
       63 SETTABLEKS                       R6 R5 K34 ["Image"]
       65 GETIMPORT                        R6 K37 [Vector2.new]
       67 LOADN                            R7 12
       68 LOADN                            R8 0
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K38 ["ImageRectOffset"]
       72 GETIMPORT                        R6 K37 [Vector2.new]
       74 LOADN                            R7 12
       75 LOADN                            R8 12
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K39 ["ImageRectSize"]
       79 GETIMPORT                        R6 K42 [UDim2.fromOffset]
       81 LOADN                            R7 12
       82 LOADN                            R8 12
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K43 ["Size"]
       86 GETTABLEKS                       R6 R2 K44 ["Selected"]
       88 DUPTABLE                         R7 K45 [{"ImageRectOffset"}]
       89 GETIMPORT                        R8 K37 [Vector2.new]
       91 LOADN                            R9 24
       92 LOADN                            R10 0
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R7 K38 ["ImageRectOffset"]
       96 SETTABLE                         R7 R5 R6
       97 SETTABLEKS                       R5 R4 K23 ["Arrow"]
       99 GETIMPORT                        R5 K48 [Enum.Font.SourceSans]
      101 SETTABLEKS                       R5 R4 K24 ["Font"]
      103 LOADN                            R5 18
      104 SETTABLEKS                       R5 R4 K25 ["FontSize"]
      106 SETTABLEKS                       R4 R3 K11 ["FormItem"]
      108 RETURN                           R3 1
