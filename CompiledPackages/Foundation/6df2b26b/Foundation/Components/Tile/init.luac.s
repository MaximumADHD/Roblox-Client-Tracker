MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"Root", "Actions", "Content", "Footer", "Header", "Media"}]
        2 GETIMPORT                        R1 K8 [require]
        4 GETIMPORT                        R3 K10 [script]
        6 GETTABLEKS                       R2 R3 K11 ["Tile"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["Root"]
       11 GETIMPORT                        R1 K8 [require]
       13 GETIMPORT                        R3 K10 [script]
       15 GETTABLEKS                       R2 R3 K1 ["Actions"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["Actions"]
       20 GETIMPORT                        R1 K8 [require]
       22 GETIMPORT                        R3 K10 [script]
       24 GETTABLEKS                       R2 R3 K2 ["Content"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["Content"]
       29 GETIMPORT                        R1 K8 [require]
       31 GETIMPORT                        R3 K10 [script]
       33 GETTABLEKS                       R2 R3 K3 ["Footer"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["Footer"]
       38 GETIMPORT                        R1 K8 [require]
       40 GETIMPORT                        R3 K10 [script]
       42 GETTABLEKS                       R2 R3 K4 ["Header"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["Header"]
       47 GETIMPORT                        R1 K8 [require]
       49 GETIMPORT                        R3 K10 [script]
       51 GETTABLEKS                       R2 R3 K5 ["Media"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["Media"]
       56 RETURN                           R0 1
