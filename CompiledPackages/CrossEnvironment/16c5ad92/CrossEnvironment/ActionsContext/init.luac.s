MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Context", "StudioProvider", "createMockActionsContext"}]
        2 GETIMPORT                        R1 K5 [require]
        4 GETIMPORT                        R3 K7 [script]
        6 GETTABLEKS                       R2 R3 K0 ["Context"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["Context"]
       11 GETIMPORT                        R1 K5 [require]
       13 GETIMPORT                        R3 K7 [script]
       15 GETTABLEKS                       R2 R3 K1 ["StudioProvider"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["StudioProvider"]
       20 GETIMPORT                        R1 K5 [require]
       22 GETIMPORT                        R3 K7 [script]
       24 GETTABLEKS                       R2 R3 K2 ["createMockActionsContext"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["createMockActionsContext"]
       29 RETURN                           R0 1
