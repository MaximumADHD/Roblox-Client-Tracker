MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K25 [{"BackButtonIcon", "InformationImage", "DownArrow", "UpArrow", "LeftArrow", "RightArrow", "MeasuringBarBackground", "MeasuringBarFillLow", "MeasuringBarFillMedium", "MeasuringBarFillHigh", "SemanticColorSurface300Inverse", "SemanticColorContentStandardInverse", "QualityBarFullSquare", "QualityBarEmptySquare", "QualityBarDisabledSquare"}]
       19 LOADK                            R4 K26 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/Back.png"]
       20 SETTABLEKS                       R4 R3 K10 ["BackButtonIcon"]
       22 LOADK                            R4 K27 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png"]
       23 SETTABLEKS                       R4 R3 K11 ["InformationImage"]
       25 LOADK                            R4 K28 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
       26 SETTABLEKS                       R4 R3 K12 ["DownArrow"]
       28 LOADK                            R4 K29 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowUp.png"]
       29 SETTABLEKS                       R4 R3 K13 ["UpArrow"]
       31 LOADK                            R4 K30 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Back.png"]
       32 SETTABLEKS                       R4 R3 K14 ["LeftArrow"]
       34 LOADK                            R4 K31 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Fwd.png"]
       35 SETTABLEKS                       R4 R3 K15 ["RightArrow"]
       37 GETIMPORT                        R4 K34 [Color3.fromHex]
       39 LOADK                            R5 K35 ["#D0D9FB"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K16 ["MeasuringBarBackground"]
       43 GETIMPORT                        R4 K34 [Color3.fromHex]
       45 LOADK                            R5 K36 ["#13E986"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K17 ["MeasuringBarFillLow"]
       49 GETIMPORT                        R4 K34 [Color3.fromHex]
       51 LOADK                            R5 K37 ["#F9DD64"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K18 ["MeasuringBarFillMedium"]
       55 GETIMPORT                        R4 K34 [Color3.fromHex]
       57 LOADK                            R5 K38 ["#FB654F"]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K19 ["MeasuringBarFillHigh"]
       61 GETIMPORT                        R4 K34 [Color3.fromHex]
       63 LOADK                            R5 K39 ["#FFFFFF"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K20 ["SemanticColorSurface300Inverse"]
       67 GETIMPORT                        R4 K34 [Color3.fromHex]
       69 LOADK                            R5 K40 ["#202227"]
       70 CALL                             R4 1 1
       71 SETTABLEKS                       R4 R3 K21 ["SemanticColorContentStandardInverse"]
       73 GETIMPORT                        R4 K42 [Color3.new]
       75 LOADK                            R5 K43 [0.4]
       76 LOADK                            R6 K43 [0.4]
       77 LOADN                            R7 1
       78 CALL                             R4 3 1
       79 SETTABLEKS                       R4 R3 K22 ["QualityBarFullSquare"]
       81 GETIMPORT                        R4 K42 [Color3.new]
       83 LOADK                            R5 K44 [0.5]
       84 LOADK                            R6 K44 [0.5]
       85 LOADK                            R7 K44 [0.5]
       86 CALL                             R4 3 1
       87 SETTABLEKS                       R4 R3 K23 ["QualityBarEmptySquare"]
       89 GETIMPORT                        R4 K42 [Color3.new]
       91 LOADK                            R5 K45 [0.25]
       92 LOADK                            R6 K45 [0.25]
       93 LOADK                            R7 K45 [0.25]
       94 CALL                             R4 3 1
       95 SETTABLEKS                       R4 R3 K24 ["QualityBarDisabledSquare"]
       97 MOVE                             R4 R2
       98 LOADK                            R5 K46 ["PerformanceToolsDarkTheme"]
       99 NEWTABLE                         R6 0 0
      101 MOVE                             R7 R3
      102 CALL                             R4 3 -1
      103 RETURN                           R4 -1
