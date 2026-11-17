MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K7 [_G]
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K8 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       21 GETIMPORT                        R2 K4 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K10 ["TestLoader"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K11 ["launch"]
       30 LOADK                            R4 K12 ["LocalizationTools"]
       31 GETTABLEKS                       R5 R0 K13 ["Src"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
