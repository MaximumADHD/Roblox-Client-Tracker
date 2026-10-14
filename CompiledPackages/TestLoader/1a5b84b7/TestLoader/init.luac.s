MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["runJestAsync"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["types"]
       14 CALL                             R1 1 1
       15 DUPTABLE                         R2 K14 [{"ModuleLoader", "getDebugFlags", "hasInternalPermission", "isCli", "isFTF", "launch", "resetApplicationScope", "runJestAsync", "waitUntil"}]
       16 GETIMPORT                        R3 K1 [require]
       18 GETIMPORT                        R4 K3 [script]
       20 GETTABLEKS                       R4 R4 K6 ["ModuleLoader"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K6 ["ModuleLoader"]
       25 GETIMPORT                        R3 K1 [require]
       27 GETIMPORT                        R4 K3 [script]
       29 GETTABLEKS                       R4 R4 K7 ["getDebugFlags"]
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K7 ["getDebugFlags"]
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K8 ["hasInternalPermission"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K8 ["hasInternalPermission"]
       43 GETIMPORT                        R3 K1 [require]
       45 GETIMPORT                        R4 K3 [script]
       47 GETTABLEKS                       R4 R4 K9 ["isCli"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K9 ["isCli"]
       52 GETIMPORT                        R3 K1 [require]
       54 GETIMPORT                        R4 K3 [script]
       56 GETTABLEKS                       R4 R4 K10 ["isFTF"]
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R2 K10 ["isFTF"]
       61 GETIMPORT                        R3 K1 [require]
       63 GETIMPORT                        R4 K3 [script]
       65 GETTABLEKS                       R4 R4 K11 ["launch"]
       67 CALL                             R3 1 1
       68 SETTABLEKS                       R3 R2 K11 ["launch"]
       70 GETIMPORT                        R3 K1 [require]
       72 GETIMPORT                        R4 K3 [script]
       74 GETTABLEKS                       R4 R4 K15 ["resetFTFApplicationScope"]
       76 CALL                             R3 1 1
       77 SETTABLEKS                       R3 R2 K12 ["resetApplicationScope"]
       79 SETTABLEKS                       R0 R2 K4 ["runJestAsync"]
       81 GETIMPORT                        R3 K1 [require]
       83 GETIMPORT                        R4 K3 [script]
       85 GETTABLEKS                       R4 R4 K13 ["waitUntil"]
       87 CALL                             R3 1 1
       88 SETTABLEKS                       R3 R2 K13 ["waitUntil"]
       90 RETURN                           R2 1
