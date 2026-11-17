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
       23 GETIMPORT                        R3 K1 [script]
       25 GETTABLEKS                       R3 R3 K2 ["Parent"]
       27 GETTABLEKS                       R3 R3 K9 ["commonInit"]
       29 CALL                             R2 1 1
       30 MOVE                             R3 R2
       31 CALL                             R3 0 0
       32 GETIMPORT                        R3 K4 [require]
       34 GETTABLEKS                       R4 R0 K10 ["Packages"]
       36 GETTABLEKS                       R4 R4 K11 ["TestLoader"]
       38 CALL                             R3 1 1
       39 GETTABLEKS                       R4 R3 K12 ["launch"]
       41 LOADK                            R5 K13 ["TagEditor"]
       42 GETTABLEKS                       R6 R0 K14 ["Src"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0
