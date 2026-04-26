MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-DragBar"]
       18 DUPTABLE                         R4 K11 [{"BackgroundColor3"}]
       19 LOADK                            R5 K12 ["$ForegroundMain"]
       20 SETTABLEKS                       R5 R4 K10 ["BackgroundColor3"]
       22 NEWTABLE                         R5 0 3
       24 MOVE                             R6 R1
       25 LOADK                            R7 K13 [":hover"]
       26 DUPTABLE                         R8 K11 [{"BackgroundColor3"}]
       27 LOADK                            R9 K14 ["$ActionHover"]
       28 SETTABLEKS                       R9 R8 K10 ["BackgroundColor3"]
       30 CALL                             R6 2 1
       31 MOVE                             R7 R1
       32 LOADK                            R8 K15 [":press"]
       33 DUPTABLE                         R9 K11 [{"BackgroundColor3"}]
       34 LOADK                            R10 K16 ["$ActionSelected"]
       35 SETTABLEKS                       R10 R9 K10 ["BackgroundColor3"]
       37 CALL                             R7 2 1
       38 MOVE                             R8 R1
       39 LOADK                            R9 K17 [".Transparent"]
       40 DUPTABLE                         R10 K19 [{"BackgroundTransparency"}]
       41 LOADN                            R11 1
       42 SETTABLEKS                       R11 R10 K18 ["BackgroundTransparency"]
       44 CALL                             R8 2 -1
       45 SETLIST                          R5 R6 -1 [1]
       47 DUPTABLE                         R6 K21 [{"Weight"}]
       48 LOADN                            R7 5
       49 SETTABLEKS                       R7 R6 K20 ["Weight"]
       51 CALL                             R2 4 -1
       52 RETURN                           R2 -1
