MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K17 [{"ColorGridLine", "ColorKeypointHighlight", "ColorScrollbarButton", "ColorScrollbarButtonPressed", "ColorScrollbarButtonHovered", "ColorScrollbarButtonBorder", "ColorScrollbarButtonText"}]
       19 GETIMPORT                        R4 K20 [Color3.fromRGB]
       21 LOADN                            R5 100
       22 LOADN                            R6 100
       23 LOADN                            R7 100
       24 CALL                             R4 3 1
       25 SETTABLEKS                       R4 R3 K10 ["ColorGridLine"]
       27 GETIMPORT                        R4 K20 [Color3.fromRGB]
       29 LOADN                            R5 50
       30 LOADN                            R6 50
       31 LOADN                            R7 50
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K11 ["ColorKeypointHighlight"]
       35 GETIMPORT                        R4 K20 [Color3.fromRGB]
       37 LOADN                            R5 200
       38 LOADN                            R6 200
       39 LOADN                            R7 200
       40 CALL                             R4 3 1
       41 SETTABLEKS                       R4 R3 K12 ["ColorScrollbarButton"]
       43 GETIMPORT                        R4 K20 [Color3.fromRGB]
       45 LOADN                            R5 170
       46 LOADN                            R6 170
       47 LOADN                            R7 170
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K13 ["ColorScrollbarButtonPressed"]
       51 GETIMPORT                        R4 K20 [Color3.fromRGB]
       53 LOADN                            R5 230
       54 LOADN                            R6 230
       55 LOADN                            R7 230
       56 CALL                             R4 3 1
       57 SETTABLEKS                       R4 R3 K14 ["ColorScrollbarButtonHovered"]
       59 GETIMPORT                        R4 K20 [Color3.fromRGB]
       61 LOADN                            R5 100
       62 LOADN                            R6 100
       63 LOADN                            R7 100
       64 CALL                             R4 3 1
       65 SETTABLEKS                       R4 R3 K15 ["ColorScrollbarButtonBorder"]
       67 GETIMPORT                        R4 K20 [Color3.fromRGB]
       69 LOADN                            R5 0
       70 LOADN                            R6 0
       71 LOADN                            R7 0
       72 CALL                             R4 3 1
       73 SETTABLEKS                       R4 R3 K16 ["ColorScrollbarButtonText"]
       75 MOVE                             R4 R2
       76 LOADK                            R5 K21 ["AttenuationCurveEditorLightTheme"]
       77 NEWTABLE                         R6 0 0
       79 MOVE                             R7 R3
       80 CALL                             R4 3 -1
       81 RETURN                           R4 -1
