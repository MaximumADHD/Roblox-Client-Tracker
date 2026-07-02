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
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 4
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 ["#BackToMainButton"]
       26 DUPTABLE                         R7 K14 [{["Image"] = "$BackButtonIcon"}]
       27 CALL                             R5 2 1
       28 MOVE                             R6 R2
       29 LOADK                            R7 K15 ["#WarningImageLabel"]
       30 DUPTABLE                         R8 K17 [{["Image"] = "$WarningImage"}]
       31 CALL                             R6 2 1
       32 MOVE                             R7 R2
       33 LOADK                            R8 K18 ["#InformationImageLabel"]
       34 DUPTABLE                         R9 K20 [{["Image"] = "$InformationImage"}]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R2
       37 LOADK                            R9 K21 [">> .SimpleDivider"]
       38 DUPTABLE                         R10 K26 [{["BackgroundColor3"] = "$HeavyDivider", ["BackgroundTransparency"] = 0.75}]
       39 CALL                             R8 2 -1
       40 SETLIST                          R4 R5 -1 [1]
       42 DUPTABLE                         R5 K32 [{["FontSize_300"] = 15, ["FontSize_350"] = 17, ["HeavyDivider"]}]
       43 GETIMPORT                        R6 K35 [Color3.fromHex]
       45 LOADK                            R7 K36 ["#000000"]
       46 CALL                             R6 1 1
       47 SETTABLEKS                       R6 R5 K31 ["HeavyDivider"]
       49 MOVE                             R6 R3
       50 LOADK                            R7 K2 ["PerformanceTools"]
       51 MOVE                             R8 R4
       52 MOVE                             R9 R5
       53 CALL                             R6 3 -1
       54 RETURN                           R6 -1
