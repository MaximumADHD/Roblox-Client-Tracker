PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["List"]
        3 GETTABLEKS                       R0 R0 K1 ["map"]
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K2 ["GetRegisteredCollisionGroups"]
        8 CALL                             R1 1 1
        9 DUPCLOSURE                       R2 K3 [PROTO_0]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 DUPCLOSURE                       R2 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWCLOSURE                       R3 P1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 GETTABLEKS                       R4 R0 K1 ["SelectionChanged"]
        8 NEWCLOSURE                       R6 P2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 NAMECALL                         R4 R4 K2 ["Connect"]
       13 CALL                             R4 2 1
       14 DUPTABLE                         R5 K5 [{"get", "destroy"}]
       15 SETTABLEKS                       R2 R5 K3 ["get"]
       17 NEWCLOSURE                       R6 P3
       18 CAPTURE                          VAL R4
       19 SETTABLEKS                       R6 R5 K4 ["destroy"]
       21 RETURN                           R5 1

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
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["RpcTypes"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K13 [PROTO_5]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R0
       28 RETURN                           R5 1
