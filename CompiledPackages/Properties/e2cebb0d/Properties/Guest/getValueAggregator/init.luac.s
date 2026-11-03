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
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["BasicAggregator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["CFrameAggregator"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K8 ["CombinedColorAggregator"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K9 ["ContentAggregator"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K10 ["InstanceRefAggregator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["RpcTypes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K12 ["Vector2Aggregator"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R9 R9 K13 ["Vector3Aggregator"]
       60 CALL                             R8 1 1
       61 DUPTABLE                         R9 K20 [{"Vector2", "Vector3", "InstanceRef", "CombinedColor", "Content", "CFrame"}]
       62 SETTABLEKS                       R7 R9 K14 ["Vector2"]
       64 SETTABLEKS                       R8 R9 K15 ["Vector3"]
       66 SETTABLEKS                       R5 R9 K16 ["InstanceRef"]
       68 SETTABLEKS                       R3 R9 K17 ["CombinedColor"]
       70 SETTABLEKS                       R4 R9 K18 ["Content"]
       72 SETTABLEKS                       R2 R9 K19 ["CFrame"]
       74 DUPCLOSURE                       R10 K21 [PROTO_0]
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R1
       77 RETURN                           R10 1
