MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 DUPTABLE                         R1 K5 [{"expect", "RobloxInstance", "dedent"}]
        4 GETIMPORT                        R2 K7 [require]
        6 GETTABLEKS                       R3 R0 K2 ["expect"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K2 ["expect"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R0 K3 ["RobloxInstance"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K3 ["RobloxInstance"]
       18 GETIMPORT                        R2 K7 [require]
       20 GETTABLEKS                       R3 R0 K4 ["dedent"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K4 ["dedent"]
       25 SETTABLEKS                       R2 R1 K4 ["dedent"]
       27 GETIMPORT                        R2 K7 [require]
       29 GETTABLEKS                       R3 R0 K8 ["Writeable"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K8 ["Writeable"]
       34 SETTABLEKS                       R3 R1 K8 ["Writeable"]
       36 RETURN                           R1 1
