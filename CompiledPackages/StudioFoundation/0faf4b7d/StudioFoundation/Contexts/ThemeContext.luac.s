MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["SharedPluginConstants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Types"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["createContext"]
       26 GETTABLEKS                       R6 R3 K11 ["DEFAULT_STUDIO_THEME_NAME"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K14 [table.freeze]
       31 DUPTABLE                         R7 K17 [{"Context", "Provider"}]
       32 SETTABLEKS                       R5 R7 K15 ["Context"]
       34 GETTABLEKS                       R8 R5 K16 ["Provider"]
       36 SETTABLEKS                       R8 R7 K16 ["Provider"]
       38 CALL                             R6 1 -1
       39 RETURN                           R6 -1
