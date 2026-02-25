MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K13 [{"ColorGridLine", "ColorGridLinePath", "ColorControlPointHighlight"}]
       19 GETIMPORT                        R4 K16 [Color3.fromRGB]
       21 LOADN                            R5 155
       22 LOADN                            R6 155
       23 LOADN                            R7 155
       24 CALL                             R4 3 1
       25 SETTABLEKS                       R4 R3 K10 ["ColorGridLine"]
       27 GETIMPORT                        R4 K16 [Color3.fromRGB]
       29 LOADN                            R5 100
       30 LOADN                            R6 100
       31 LOADN                            R7 100
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K11 ["ColorGridLinePath"]
       35 GETIMPORT                        R4 K16 [Color3.fromRGB]
       37 LOADN                            R5 250
       38 LOADN                            R6 250
       39 LOADN                            R7 250
       40 CALL                             R4 3 1
       41 SETTABLEKS                       R4 R3 K12 ["ColorControlPointHighlight"]
       43 MOVE                             R4 R2
       44 LOADK                            R5 K17 ["DirectionalCurveEditorDarkTheme"]
       45 NEWTABLE                         R6 0 0
       47 MOVE                             R7 R3
       48 CALL                             R4 3 -1
       49 RETURN                           R4 -1
