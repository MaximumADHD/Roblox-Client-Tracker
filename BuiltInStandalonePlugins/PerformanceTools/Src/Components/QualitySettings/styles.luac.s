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
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-QualitySettings"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 5
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .LeftArrow"]
       26 DUPTABLE                         R9 K14 [{["Image"] = "$LeftArrow"}]
       27 CALL                             R7 2 1
       28 MOVE                             R8 R2
       29 LOADK                            R9 K15 [">> .RightArrow"]
       30 DUPTABLE                         R10 K17 [{["Image"] = "$RightArrow"}]
       31 CALL                             R8 2 1
       32 MOVE                             R9 R2
       33 LOADK                            R10 K18 [">> .QualityBarFullSquare"]
       34 DUPTABLE                         R11 K21 [{["BackgroundColor3"] = "$QualityBarFullSquare"}]
       35 CALL                             R9 2 1
       36 MOVE                             R10 R2
       37 LOADK                            R11 K22 [">> .QualityBarEmptySquare"]
       38 DUPTABLE                         R12 K24 [{["BackgroundColor3"] = "$QualityBarEmptySquare"}]
       39 CALL                             R10 2 1
       40 MOVE                             R11 R2
       41 LOADK                            R12 K25 [">> .QualityBarDisabledSquare"]
       42 DUPTABLE                         R13 K27 [{["BackgroundColor3"] = "$QualityBarDisabledSquare"}]
       43 CALL                             R11 2 -1
       44 SETLIST                          R6 R7 -1 [1]
       46 CALL                             R3 3 -1
       47 RETURN                           R3 -1
