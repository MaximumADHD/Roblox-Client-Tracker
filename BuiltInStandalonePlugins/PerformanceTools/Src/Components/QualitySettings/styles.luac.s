MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-QualitySettings"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .LeftArrow"]
       26 DUPTABLE                         R9 K13 [{"Image"}]
       27 LOADK                            R10 K14 ["$LeftArrow"]
       28 SETTABLEKS                       R10 R9 K12 ["Image"]
       30 CALL                             R7 2 1
       31 MOVE                             R8 R2
       32 LOADK                            R9 K15 [">> .RightArrow"]
       33 DUPTABLE                         R10 K13 [{"Image"}]
       34 LOADK                            R11 K16 ["$RightArrow"]
       35 SETTABLEKS                       R11 R10 K12 ["Image"]
       37 CALL                             R8 2 1
       38 MOVE                             R9 R2
       39 LOADK                            R10 K17 [">> .QualityBarFullSquare"]
       40 DUPTABLE                         R11 K19 [{"BackgroundColor3"}]
       41 LOADK                            R12 K20 ["$QualityBarFullSquare"]
       42 SETTABLEKS                       R12 R11 K18 ["BackgroundColor3"]
       44 CALL                             R9 2 1
       45 MOVE                             R10 R2
       46 LOADK                            R11 K21 [">> .QualityBarEmptySquare"]
       47 DUPTABLE                         R12 K19 [{"BackgroundColor3"}]
       48 LOADK                            R13 K22 ["$QualityBarEmptySquare"]
       49 SETTABLEKS                       R13 R12 K18 ["BackgroundColor3"]
       51 CALL                             R10 2 1
       52 MOVE                             R11 R2
       53 LOADK                            R12 K23 [">> .QualityBarDisabledSquare"]
       54 DUPTABLE                         R13 K19 [{"BackgroundColor3"}]
       55 LOADK                            R14 K24 ["$QualityBarDisabledSquare"]
       56 SETTABLEKS                       R14 R13 K18 ["BackgroundColor3"]
       58 CALL                             R11 2 -1
       59 SETLIST                          R6 R7 -1 [1]
       61 CALL                             R3 3 -1
       62 RETURN                           R3 -1
