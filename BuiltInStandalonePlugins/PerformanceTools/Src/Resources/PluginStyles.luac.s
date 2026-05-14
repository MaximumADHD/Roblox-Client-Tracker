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
       26 DUPTABLE                         R7 K13 [{"Image"}]
       27 LOADK                            R8 K14 ["$BackButtonIcon"]
       28 SETTABLEKS                       R8 R7 K12 ["Image"]
       30 CALL                             R5 2 1
       31 MOVE                             R6 R2
       32 LOADK                            R7 K15 ["#WarningImageLabel"]
       33 DUPTABLE                         R8 K13 [{"Image"}]
       34 LOADK                            R9 K16 ["$WarningImage"]
       35 SETTABLEKS                       R9 R8 K12 ["Image"]
       37 CALL                             R6 2 1
       38 MOVE                             R7 R2
       39 LOADK                            R8 K17 ["#InformationImageLabel"]
       40 DUPTABLE                         R9 K13 [{"Image"}]
       41 LOADK                            R10 K18 ["$InformationImage"]
       42 SETTABLEKS                       R10 R9 K12 ["Image"]
       44 CALL                             R7 2 1
       45 MOVE                             R8 R2
       46 LOADK                            R9 K19 [">> .SimpleDivider"]
       47 DUPTABLE                         R10 K22 [{"BackgroundColor3", "BackgroundTransparency"}]
       48 LOADK                            R11 K23 ["$HeavyDivider"]
       49 SETTABLEKS                       R11 R10 K20 ["BackgroundColor3"]
       51 LOADK                            R11 K24 [0.75]
       52 SETTABLEKS                       R11 R10 K21 ["BackgroundTransparency"]
       54 CALL                             R8 2 -1
       55 SETLIST                          R4 R5 -1 [1]
       57 DUPTABLE                         R5 K28 [{"FontSize_300", "FontSize_350", "HeavyDivider"}]
       58 LOADN                            R6 15
       59 SETTABLEKS                       R6 R5 K25 ["FontSize_300"]
       61 LOADN                            R6 17
       62 SETTABLEKS                       R6 R5 K26 ["FontSize_350"]
       64 GETIMPORT                        R6 K31 [Color3.fromHex]
       66 LOADK                            R7 K32 ["#000000"]
       67 CALL                             R6 1 1
       68 SETTABLEKS                       R6 R5 K27 ["HeavyDivider"]
       70 MOVE                             R6 R3
       71 LOADK                            R7 K2 ["PerformanceTools"]
       72 MOVE                             R8 R4
       73 MOVE                             R9 R5
       74 CALL                             R6 3 -1
       75 RETURN                           R6 -1
