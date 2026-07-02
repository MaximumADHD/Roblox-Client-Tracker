MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Responsive"]
       15 GETTABLEKS                       R3 R3 K9 ["BreakpointConfig"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Utility"]
       22 GETTABLEKS                       R4 R4 K8 ["Responsive"]
       24 GETTABLEKS                       R4 R4 K10 ["GridConfig"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K11 ["React"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K12 ["createContext"]
       34 DUPTABLE                         R6 K14 [{"config"}]
       35 DUPTABLE                         R7 K17 [{"breakpoint", "grid"}]
       36 SETTABLEKS                       R2 R7 K15 ["breakpoint"]
       38 SETTABLEKS                       R3 R7 K16 ["grid"]
       40 SETTABLEKS                       R7 R6 K13 ["config"]
       42 CALL                             R5 1 -1
       43 RETURN                           R5 -1
