MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K13 [{"SemanticColorContentStandardInverse", "SemanticColorSurface300Inverse", "SemanticColorDivider"}]
       19 GETIMPORT                        R4 K16 [Color3.fromHex]
       21 LOADK                            R5 K17 ["#F9F9F9"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K10 ["SemanticColorContentStandardInverse"]
       25 GETIMPORT                        R4 K16 [Color3.fromHex]
       27 LOADK                            R5 K18 ["#2B2D33"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K11 ["SemanticColorSurface300Inverse"]
       31 GETIMPORT                        R4 K16 [Color3.fromHex]
       33 LOADK                            R5 K19 ["#000000"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K12 ["SemanticColorDivider"]
       37 MOVE                             R4 R2
       38 LOADK                            R5 K20 ["ExplorerPluginLightTheme"]
       39 NEWTABLE                         R6 0 0
       41 MOVE                             R7 R3
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1
