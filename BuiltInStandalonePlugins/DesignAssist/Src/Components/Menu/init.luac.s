MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"Anchored", "Context", "Item", "Surface", "Constants", "Types", "clampPosition"}]
        2 GETIMPORT                        R1 K9 [require]
        4 GETIMPORT                        R2 K11 [script]
        6 GETTABLEKS                       R2 R2 K12 ["AnchoredMenu"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["Anchored"]
       11 GETIMPORT                        R1 K9 [require]
       13 GETIMPORT                        R2 K11 [script]
       15 GETTABLEKS                       R2 R2 K13 ["ContextMenu"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["Context"]
       20 GETIMPORT                        R1 K9 [require]
       22 GETIMPORT                        R2 K11 [script]
       24 GETTABLEKS                       R2 R2 K14 ["MenuItem"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["Item"]
       29 GETIMPORT                        R1 K9 [require]
       31 GETIMPORT                        R2 K11 [script]
       33 GETTABLEKS                       R2 R2 K15 ["MenuSurface"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["Surface"]
       38 GETIMPORT                        R1 K9 [require]
       40 GETIMPORT                        R2 K11 [script]
       42 GETTABLEKS                       R2 R2 K4 ["Constants"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["Constants"]
       47 GETIMPORT                        R1 K9 [require]
       49 GETIMPORT                        R2 K11 [script]
       51 GETTABLEKS                       R2 R2 K5 ["Types"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["Types"]
       56 GETIMPORT                        R1 K9 [require]
       58 GETIMPORT                        R2 K11 [script]
       60 GETTABLEKS                       R2 R2 K6 ["clampPosition"]
       62 CALL                             R1 1 1
       63 SETTABLEKS                       R1 R0 K6 ["clampPosition"]
       65 RETURN                           R0 1
