PROTO_0:
        0 LOADK                            R3 K0 ["%*:%*"]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K1 ["debugTargetIdentifierToId"]
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 MOVE                             R6 R1
        7 NAMECALL                         R3 R3 K2 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R2 K0 ["%*:%*:%*"]
        1 GETTABLEKS                       R4 R0 K1 ["type"]
        3 GETTABLEKS                       R5 R0 K2 ["graphId"]
        5 GETTABLEKS                       R6 R0 K3 ["rigId"]
        7 NAMECALL                         R2 R2 K4 ["format"]
        9 CALL                             R2 4 1
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 SETTABLEKS                       R3 R2 K9 ["toLookupKey"]
       20 DUPCLOSURE                       R3 K10 [PROTO_1]
       21 SETTABLEKS                       R3 R2 K11 ["debugTargetIdentifierToId"]
       23 RETURN                           R2 1
