MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["BaseMenu"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["BaseMenuItem"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["BaseMenuContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["BaseMenuGroup"]
       28 CALL                             R3 1 1
       29 DUPTABLE                         R4 K12 [{"Root", "Item", "Context", "Group"}]
       30 SETTABLEKS                       R0 R4 K8 ["Root"]
       32 SETTABLEKS                       R1 R4 K9 ["Item"]
       34 SETTABLEKS                       R2 R4 K10 ["Context"]
       36 SETTABLEKS                       R3 R4 K11 ["Group"]
       38 RETURN                           R4 1
