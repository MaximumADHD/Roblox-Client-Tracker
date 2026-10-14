MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["bridge"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["types"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["backend"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K12 [{"constants", "backend", "bridge", "devtools", "hydration", "hook", "utils"}]
       23 GETIMPORT                        R4 K1 [require]
       25 GETIMPORT                        R5 K3 [script]
       27 GETTABLEKS                       R5 R5 K7 ["constants"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K7 ["constants"]
       32 GETIMPORT                        R4 K1 [require]
       34 GETIMPORT                        R5 K3 [script]
       36 GETTABLEKS                       R5 R5 K6 ["backend"]
       38 CALL                             R4 1 1
       39 SETTABLEKS                       R4 R3 K6 ["backend"]
       41 GETIMPORT                        R4 K1 [require]
       43 GETIMPORT                        R5 K3 [script]
       45 GETTABLEKS                       R5 R5 K4 ["bridge"]
       47 CALL                             R4 1 1
       48 SETTABLEKS                       R4 R3 K4 ["bridge"]
       50 GETIMPORT                        R4 K1 [require]
       52 GETIMPORT                        R5 K3 [script]
       54 GETTABLEKS                       R5 R5 K8 ["devtools"]
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K8 ["devtools"]
       59 GETIMPORT                        R4 K1 [require]
       61 GETIMPORT                        R5 K3 [script]
       63 GETTABLEKS                       R5 R5 K9 ["hydration"]
       65 CALL                             R4 1 1
       66 SETTABLEKS                       R4 R3 K9 ["hydration"]
       68 GETIMPORT                        R4 K1 [require]
       70 GETIMPORT                        R5 K3 [script]
       72 GETTABLEKS                       R5 R5 K10 ["hook"]
       74 CALL                             R4 1 1
       75 SETTABLEKS                       R4 R3 K10 ["hook"]
       77 GETIMPORT                        R4 K1 [require]
       79 GETIMPORT                        R5 K3 [script]
       81 GETTABLEKS                       R5 R5 K11 ["utils"]
       83 CALL                             R4 1 1
       84 SETTABLEKS                       R4 R3 K11 ["utils"]
       86 RETURN                           R3 1
