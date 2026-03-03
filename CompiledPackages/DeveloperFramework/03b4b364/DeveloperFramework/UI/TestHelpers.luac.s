MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 DUPTABLE                         R1 K9 [{"Instances", "makeSettableValue", "provideMockContext", "ServiceWrapper", "setEquals", "testImmutability"}]
        8 GETIMPORT                        R2 K11 [require]
       10 GETTABLEKS                       R4 R0 K12 ["TestHelpers"]
       12 GETTABLEKS                       R3 R4 K3 ["Instances"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K3 ["Instances"]
       17 GETIMPORT                        R2 K11 [require]
       19 GETTABLEKS                       R4 R0 K12 ["TestHelpers"]
       21 GETTABLEKS                       R3 R4 K4 ["makeSettableValue"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K4 ["makeSettableValue"]
       26 GETIMPORT                        R2 K11 [require]
       28 GETTABLEKS                       R4 R0 K12 ["TestHelpers"]
       30 GETTABLEKS                       R3 R4 K5 ["provideMockContext"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K5 ["provideMockContext"]
       35 GETIMPORT                        R2 K11 [require]
       37 GETTABLEKS                       R4 R0 K12 ["TestHelpers"]
       39 GETTABLEKS                       R3 R4 K6 ["ServiceWrapper"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R1 K6 ["ServiceWrapper"]
       44 GETIMPORT                        R2 K11 [require]
       46 GETTABLEKS                       R4 R0 K12 ["TestHelpers"]
       48 GETTABLEKS                       R3 R4 K7 ["setEquals"]
       50 CALL                             R2 1 1
       51 SETTABLEKS                       R2 R1 K7 ["setEquals"]
       53 GETIMPORT                        R2 K11 [require]
       55 GETTABLEKS                       R4 R0 K12 ["TestHelpers"]
       57 GETTABLEKS                       R3 R4 K8 ["testImmutability"]
       59 CALL                             R2 1 1
       60 SETTABLEKS                       R2 R1 K8 ["testImmutability"]
       62 RETURN                           R1 1
