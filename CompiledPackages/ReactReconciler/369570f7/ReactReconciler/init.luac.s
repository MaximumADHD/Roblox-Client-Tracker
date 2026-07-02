PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETIMPORT                        R2 K3 [script]
        4 GETTABLEKS                       R2 R2 K4 ["ReactFiberHostConfig"]
        6 CALL                             R1 1 1
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 SETTABLE                         R6 R1 R5
       12 FORGLOOP                         R2 2 ; [-2]
       14 GETIMPORT                        R2 K1 [require]
       16 GETIMPORT                        R3 K3 [script]
       18 GETTABLEKS                       R3 R3 K5 ["ReactFiberReconciler"]
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

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
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["ReactFiberHostConfig"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["ReactFiberHotReloading.new"]
       28 CALL                             R3 1 1
       29 DUPCLOSURE                       R4 K8 [PROTO_0]
       30 RETURN                           R4 1
