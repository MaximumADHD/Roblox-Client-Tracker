MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["Object"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETTABLEKS                       R5 R1 K7 ["React"]
       22 CALL                             R4 1 1
       23 NEWTABLE                         R5 4 0
       25 GETTABLEKS                       R6 R4 K8 ["createContext"]
       27 LOADNIL                          R7
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K10 [_G]
       31 GETTABLEKS                       R7 R7 K11 ["__DEV__"]
       33 JUMPIFNOT                        R7 ; [+3]
       34 LOADK                            R7 K12 ["ScrollViewContext"]
       35 SETTABLEKS                       R7 R6 K13 ["displayName"]
       37 SETTABLEKS                       R6 R5 K14 ["default"]
       39 GETTABLEKS                       R7 R3 K15 ["freeze"]
       41 DUPTABLE                         R8 K18 [{["horizontal"] = True}]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R5 K19 ["HORIZONTAL"]
       45 GETTABLEKS                       R8 R3 K15 ["freeze"]
       47 DUPTABLE                         R9 K21 [{["horizontal"] = False}]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R5 K22 ["VERTICAL"]
       51 RETURN                           R5 1
