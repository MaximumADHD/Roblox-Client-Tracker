PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["BasicAggregator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K7 ["CombinedColorAggregator"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K8 ["ContentAggregator"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K9 ["InstanceRefAggregator"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["RpcTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R7 R8 K11 ["Vector3Aggregator"]
       46 CALL                             R6 1 1
       47 DUPTABLE                         R7 K16 [{"Vector3", "InstanceRef", "CombinedColor", "Content"}]
       48 SETTABLEKS                       R6 R7 K12 ["Vector3"]
       50 SETTABLEKS                       R4 R7 K13 ["InstanceRef"]
       52 SETTABLEKS                       R2 R7 K14 ["CombinedColor"]
       54 SETTABLEKS                       R3 R7 K15 ["Content"]
       56 DUPCLOSURE                       R8 K17 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R1
       59 RETURN                           R8 1
