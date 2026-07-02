MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1], ["isInteger"], ["isNaN"], ["isSafeInteger"], ["MAX_SAFE_INTEGER"], ["MIN_SAFE_INTEGER"], ["NaN"] = NaN, ["toExponential"]}]
        2 GETIMPORT                        R1 K11 [require]
        4 GETIMPORT                        R2 K13 [script]
        6 GETTABLEKS                       R2 R2 K0 ["isFinite"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["isFinite"]
       11 GETIMPORT                        R1 K11 [require]
       13 GETIMPORT                        R2 K13 [script]
       15 GETTABLEKS                       R2 R2 K1 ["isInteger"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["isInteger"]
       20 GETIMPORT                        R1 K11 [require]
       22 GETIMPORT                        R2 K13 [script]
       24 GETTABLEKS                       R2 R2 K2 ["isNaN"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["isNaN"]
       29 GETIMPORT                        R1 K11 [require]
       31 GETIMPORT                        R2 K13 [script]
       33 GETTABLEKS                       R2 R2 K3 ["isSafeInteger"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["isSafeInteger"]
       38 GETIMPORT                        R1 K11 [require]
       40 GETIMPORT                        R2 K13 [script]
       42 GETTABLEKS                       R2 R2 K4 ["MAX_SAFE_INTEGER"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["MAX_SAFE_INTEGER"]
       47 GETIMPORT                        R1 K11 [require]
       49 GETIMPORT                        R2 K13 [script]
       51 GETTABLEKS                       R2 R2 K5 ["MIN_SAFE_INTEGER"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["MIN_SAFE_INTEGER"]
       56 GETIMPORT                        R1 K11 [require]
       58 GETIMPORT                        R2 K13 [script]
       60 GETTABLEKS                       R2 R2 K8 ["toExponential"]
       62 CALL                             R1 1 1
       63 SETTABLEKS                       R1 R0 K8 ["toExponential"]
       65 RETURN                           R0 1
