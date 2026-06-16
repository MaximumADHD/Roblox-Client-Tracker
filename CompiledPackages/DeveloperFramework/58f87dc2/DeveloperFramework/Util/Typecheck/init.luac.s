MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["strict"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 DUPTABLE                         R2 K11 [{"DocParser", "FrameworkTypes", "t", "tutils", "wrap"}]
       12 GETIMPORT                        R3 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R4 R4 K6 ["DocParser"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K6 ["DocParser"]
       21 GETIMPORT                        R3 K1 [require]
       23 GETIMPORT                        R4 K3 [script]
       25 GETTABLEKS                       R4 R4 K7 ["FrameworkTypes"]
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R2 K7 ["FrameworkTypes"]
       30 GETIMPORT                        R3 K1 [require]
       32 GETIMPORT                        R4 K3 [script]
       34 GETTABLEKS                       R4 R4 K8 ["t"]
       36 CALL                             R3 1 1
       37 SETTABLEKS                       R3 R2 K8 ["t"]
       39 GETIMPORT                        R3 K1 [require]
       41 GETIMPORT                        R4 K3 [script]
       43 GETTABLEKS                       R4 R4 K9 ["tutils"]
       45 CALL                             R3 1 1
       46 SETTABLEKS                       R3 R2 K9 ["tutils"]
       48 GETIMPORT                        R3 K1 [require]
       50 GETIMPORT                        R4 K3 [script]
       52 GETTABLEKS                       R4 R4 K10 ["wrap"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R2 K10 ["wrap"]
       57 CALL                             R1 1 -1
       58 RETURN                           R1 -1
