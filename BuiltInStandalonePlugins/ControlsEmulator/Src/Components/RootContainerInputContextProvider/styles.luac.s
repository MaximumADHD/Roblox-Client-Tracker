MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Styling"]
       20 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K9 [".Component-RootContainerInputContextProvider"]
       24 DUPTABLE                         R5 K11 [{"BackgroundColor3"}]
       25 LOADK                            R6 K12 ["$BlueprintBackgroundColor"]
       26 SETTABLEKS                       R6 R5 K10 ["BackgroundColor3"]
       28 NEWTABLE                         R6 0 0
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1
