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
       25 DUPTABLE                         R4 K13 [{["Spacing"] = 5}]
       26 DUPTABLE                         R5 K16 [{"TextColor", "ErrorImage"}]
       27 GETTABLEKS                       R6 R1 K17 ["ErrorText"]
       29 SETTABLEKS                       R6 R5 K14 ["TextColor"]
       31 DUPTABLE                         R6 K22 [{["Image"] = "rbxasset://textures/DeveloperFramework/StudioTheme/clear.png", ["ImageColor3"], ["Size"]}]
       32 GETTABLEKS                       R7 R1 K17 ["ErrorText"]
       34 SETTABLEKS                       R7 R6 K20 ["ImageColor3"]
       36 GETIMPORT                        R7 K25 [UDim2.fromOffset]
       38 LOADN                            R8 16
       39 LOADN                            R9 16
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K21 ["Size"]
       43 SETTABLEKS                       R6 R5 K15 ["ErrorImage"]
       45 MOVE                             R6 R3
       46 MOVE                             R7 R4
       47 NEWTABLE                         R8 1 0
       49 SETTABLEKS                       R5 R8 K26 ["&PropertyCellError"]
       51 CALL                             R6 2 -1
       52 RETURN                           R6 -1
