MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Utility"]
       18 GETTABLEKS                       R5 R6 K9 ["Responsive"]
       20 GETTABLEKS                       R4 R5 K10 ["BreakpointConfig"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Utility"]
       27 GETTABLEKS                       R6 R7 K9 ["Responsive"]
       29 GETTABLEKS                       R5 R6 K11 ["GridConfig"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K12 ["createContext"]
       34 DUPTABLE                         R6 K14 [{"config"}]
       35 DUPTABLE                         R7 K17 [{"breakpoint", "grid"}]
       36 SETTABLEKS                       R3 R7 K15 ["breakpoint"]
       38 SETTABLEKS                       R4 R7 K16 ["grid"]
       40 SETTABLEKS                       R7 R6 K13 ["config"]
       42 CALL                             R5 1 -1
       43 RETURN                           R5 -1
