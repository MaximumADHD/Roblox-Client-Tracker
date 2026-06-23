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
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["join"]
       25 DUPTABLE                         R4 K12 [{"Spacing"}]
       26 LOADN                            R5 5
       27 SETTABLEKS                       R5 R4 K11 ["Spacing"]
       29 DUPTABLE                         R5 K15 [{"TextColor", "ErrorImage"}]
       30 GETTABLEKS                       R6 R1 K16 ["ErrorText"]
       32 SETTABLEKS                       R6 R5 K13 ["TextColor"]
       34 DUPTABLE                         R6 K20 [{"Image", "ImageColor3", "Size"}]
       35 LOADK                            R7 K21 ["rbxasset://textures/DeveloperFramework/StudioTheme/clear.png"]
       36 SETTABLEKS                       R7 R6 K17 ["Image"]
       38 GETTABLEKS                       R7 R1 K16 ["ErrorText"]
       40 SETTABLEKS                       R7 R6 K18 ["ImageColor3"]
       42 GETIMPORT                        R7 K24 [UDim2.fromOffset]
       44 LOADN                            R8 16
       45 LOADN                            R9 16
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K19 ["Size"]
       49 SETTABLEKS                       R6 R5 K14 ["ErrorImage"]
       51 MOVE                             R6 R3
       52 MOVE                             R7 R4
       53 NEWTABLE                         R8 1 0
       55 SETTABLEKS                       R5 R8 K25 ["&PropertyCellError"]
       57 CALL                             R6 2 -1
       58 RETURN                           R6 -1
