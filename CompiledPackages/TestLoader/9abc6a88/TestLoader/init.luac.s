MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["types"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K13 [{"ModuleLoader", "getDebugFlags", "hasInternalPermission", "isCli", "isFTF", "launch", "resetApplicationScope", "waitUntil"}]
        9 GETIMPORT                        R2 K1 [require]
       11 GETIMPORT                        R4 K3 [script]
       13 GETTABLEKS                       R3 R4 K5 ["ModuleLoader"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K5 ["ModuleLoader"]
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R4 K3 [script]
       22 GETTABLEKS                       R3 R4 K6 ["getDebugFlags"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K6 ["getDebugFlags"]
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R4 K3 [script]
       31 GETTABLEKS                       R3 R4 K7 ["hasInternalPermission"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K7 ["hasInternalPermission"]
       36 GETIMPORT                        R2 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R3 R4 K8 ["isCli"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R1 K8 ["isCli"]
       45 GETIMPORT                        R2 K1 [require]
       47 GETIMPORT                        R4 K3 [script]
       49 GETTABLEKS                       R3 R4 K9 ["isFTF"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R1 K9 ["isFTF"]
       54 GETIMPORT                        R2 K1 [require]
       56 GETIMPORT                        R4 K3 [script]
       58 GETTABLEKS                       R3 R4 K10 ["launch"]
       60 CALL                             R2 1 1
       61 SETTABLEKS                       R2 R1 K10 ["launch"]
       63 GETIMPORT                        R2 K1 [require]
       65 GETIMPORT                        R4 K3 [script]
       67 GETTABLEKS                       R3 R4 K14 ["resetFTFApplicationScope"]
       69 CALL                             R2 1 1
       70 SETTABLEKS                       R2 R1 K11 ["resetApplicationScope"]
       72 GETIMPORT                        R2 K1 [require]
       74 GETIMPORT                        R4 K3 [script]
       76 GETTABLEKS                       R3 R4 K12 ["waitUntil"]
       78 CALL                             R2 1 1
       79 SETTABLEKS                       R2 R1 K12 ["waitUntil"]
       81 RETURN                           R1 1
