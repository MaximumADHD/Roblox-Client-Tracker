MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"Components", "Context", "Enums", "Flags", "Resources", "TestHelpers", "Types", "Util"}]
        2 GETIMPORT                        R1 K10 [require]
        4 GETIMPORT                        R2 K12 [script]
        6 GETTABLEKS                       R2 R2 K0 ["Components"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["Components"]
       11 GETIMPORT                        R1 K10 [require]
       13 GETIMPORT                        R2 K12 [script]
       15 GETTABLEKS                       R2 R2 K1 ["Context"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["Context"]
       20 GETIMPORT                        R1 K10 [require]
       22 GETIMPORT                        R2 K12 [script]
       24 GETTABLEKS                       R2 R2 K2 ["Enums"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["Enums"]
       29 GETIMPORT                        R1 K10 [require]
       31 GETIMPORT                        R2 K12 [script]
       33 GETTABLEKS                       R2 R2 K3 ["Flags"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["Flags"]
       38 GETIMPORT                        R1 K10 [require]
       40 GETIMPORT                        R2 K12 [script]
       42 GETTABLEKS                       R2 R2 K4 ["Resources"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["Resources"]
       47 GETIMPORT                        R1 K10 [require]
       49 GETIMPORT                        R2 K12 [script]
       51 GETTABLEKS                       R2 R2 K5 ["TestHelpers"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["TestHelpers"]
       56 GETIMPORT                        R1 K10 [require]
       58 GETIMPORT                        R2 K12 [script]
       60 GETTABLEKS                       R2 R2 K6 ["Types"]
       62 CALL                             R1 1 1
       63 SETTABLEKS                       R1 R0 K6 ["Types"]
       65 GETIMPORT                        R1 K10 [require]
       67 GETIMPORT                        R2 K12 [script]
       69 GETTABLEKS                       R2 R2 K7 ["Util"]
       71 CALL                             R1 1 1
       72 SETTABLEKS                       R1 R0 K7 ["Util"]
       74 RETURN                           R0 1
