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
       18 DUPTABLE                         R3 K31 [{["BackButtonIcon"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Large/Back.png", ["InformationImage"] = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Large/Information.png", ["DownArrow"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png", ["UpArrow"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowUp.png", ["LeftArrow"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Back.png", ["RightArrow"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/Fwd.png", ["MeasuringBarBackground"], ["MeasuringBarFillLow"], ["MeasuringBarFillMedium"], ["MeasuringBarFillHigh"], ["SemanticColorSurface300Inverse"], ["SemanticColorContentStandardInverse"], ["QualityBarFullSquare"], ["QualityBarEmptySquare"], ["QualityBarDisabledSquare"]}]
       19 GETIMPORT                        R4 K34 [Color3.fromHex]
       21 LOADK                            R5 K35 ["#D0D9FB"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K22 ["MeasuringBarBackground"]
       25 GETIMPORT                        R4 K34 [Color3.fromHex]
       27 LOADK                            R5 K36 ["#13E986"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K23 ["MeasuringBarFillLow"]
       31 GETIMPORT                        R4 K34 [Color3.fromHex]
       33 LOADK                            R5 K37 ["#F9DD64"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K24 ["MeasuringBarFillMedium"]
       37 GETIMPORT                        R4 K34 [Color3.fromHex]
       39 LOADK                            R5 K38 ["#FB654F"]
       40 CALL                             R4 1 1
       41 SETTABLEKS                       R4 R3 K25 ["MeasuringBarFillHigh"]
       43 GETIMPORT                        R4 K34 [Color3.fromHex]
       45 LOADK                            R5 K39 ["#FFFFFF"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K26 ["SemanticColorSurface300Inverse"]
       49 GETIMPORT                        R4 K34 [Color3.fromHex]
       51 LOADK                            R5 K40 ["#202227"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R3 K27 ["SemanticColorContentStandardInverse"]
       55 GETIMPORT                        R4 K42 [Color3.new]
       57 LOADK                            R5 K43 [0.4]
       58 LOADK                            R6 K43 [0.4]
       59 LOADN                            R7 1
       60 CALL                             R4 3 1
       61 SETTABLEKS                       R4 R3 K28 ["QualityBarFullSquare"]
       63 GETIMPORT                        R4 K42 [Color3.new]
       65 LOADK                            R5 K44 [0.5]
       66 LOADK                            R6 K44 [0.5]
       67 LOADK                            R7 K44 [0.5]
       68 CALL                             R4 3 1
       69 SETTABLEKS                       R4 R3 K29 ["QualityBarEmptySquare"]
       71 GETIMPORT                        R4 K42 [Color3.new]
       73 LOADK                            R5 K45 [0.25]
       74 LOADK                            R6 K45 [0.25]
       75 LOADK                            R7 K45 [0.25]
       76 CALL                             R4 3 1
       77 SETTABLEKS                       R4 R3 K30 ["QualityBarDisabledSquare"]
       79 MOVE                             R4 R2
       80 LOADK                            R5 K46 ["PerformanceToolsDarkTheme"]
       81 NEWTABLE                         R6 0 0
       83 MOVE                             R7 R3
       84 CALL                             R4 3 -1
       85 RETURN                           R4 -1
