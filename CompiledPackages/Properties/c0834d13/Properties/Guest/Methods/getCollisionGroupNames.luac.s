PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R0 R1 K1 ["map"]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K2 ["GetRegisteredCollisionGroups"]
        8 CALL                             R1 1 1
        9 DUPCLOSURE                       R2 K3 [PROTO_0]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PhysicsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Properties"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Cryo"]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K12 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R0
       23 RETURN                           R4 1
