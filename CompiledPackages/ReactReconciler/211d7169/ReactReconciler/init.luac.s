PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETIMPORT                        R2 K3 [script]
        4 GETTABLEKS                       R2 R2 K4 ["ReactFiberHostConfig"]
        6 CALL                             R1 1 1
        7 GETIMPORT                        R2 K6 [pairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 SETTABLE                         R6 R1 R5
       13 FORGLOOP                         R2 2 ; [-2]
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K7 ["ReactFiberReconciler"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["ReactInternalTypes"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["ReactRootTags"]
       14 CALL                             R1 1 1
       15 DUPCLOSURE                       R2 K6 [PROTO_0]
       16 RETURN                           R2 1
