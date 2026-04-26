MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["Util"]
        9 GETTABLEKS                       R1 R2 K6 ["strict"]
       11 CALL                             R0 1 1
       12 MOVE                             R1 R0
       13 DUPTABLE                         R2 K15 [{"deepOverwrite", "getInstanceSnapshot", "Instances", "makeSettableValue", "provideMockContext", "setEquals", "testImmutability", "ServiceWrapper"}]
       14 GETIMPORT                        R3 K1 [require]
       16 GETIMPORT                        R5 K3 [script]
       18 GETTABLEKS                       R4 R5 K7 ["deepOverwrite"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K7 ["deepOverwrite"]
       23 GETIMPORT                        R3 K1 [require]
       25 GETIMPORT                        R5 K3 [script]
       27 GETTABLEKS                       R4 R5 K8 ["getInstanceSnapshot"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K8 ["getInstanceSnapshot"]
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R5 K3 [script]
       36 GETTABLEKS                       R4 R5 K9 ["Instances"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K9 ["Instances"]
       41 GETIMPORT                        R3 K1 [require]
       43 GETIMPORT                        R5 K3 [script]
       45 GETTABLEKS                       R4 R5 K10 ["makeSettableValue"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K10 ["makeSettableValue"]
       50 GETIMPORT                        R3 K1 [require]
       52 GETIMPORT                        R5 K3 [script]
       54 GETTABLEKS                       R4 R5 K11 ["provideMockContext"]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R2 K11 ["provideMockContext"]
       59 GETIMPORT                        R3 K1 [require]
       61 GETIMPORT                        R5 K3 [script]
       63 GETTABLEKS                       R4 R5 K12 ["setEquals"]
       65 CALL                             R3 1 1
       66 SETTABLEKS                       R3 R2 K12 ["setEquals"]
       68 GETIMPORT                        R3 K1 [require]
       70 GETIMPORT                        R5 K3 [script]
       72 GETTABLEKS                       R4 R5 K13 ["testImmutability"]
       74 CALL                             R3 1 1
       75 SETTABLEKS                       R3 R2 K13 ["testImmutability"]
       77 GETIMPORT                        R3 K1 [require]
       79 GETIMPORT                        R5 K3 [script]
       81 GETTABLEKS                       R4 R5 K14 ["ServiceWrapper"]
       83 CALL                             R3 1 1
       84 SETTABLEKS                       R3 R2 K14 ["ServiceWrapper"]
       86 CALL                             R1 1 -1
       87 RETURN                           R1 -1
