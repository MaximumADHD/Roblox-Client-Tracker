PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+8]
        3 MOVE                             R3 R2
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 MOVE                             R7 R0
        7 NAMECALL                         R5 R5 K0 ["GetTooltip"]
        9 CALL                             R5 2 -1
       10 CALL                             R3 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K0 ["GetStatus"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 1
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K1 ["GetTooltip"]
       11 CALL                             R3 2 1
       12 MOVE                             R4 R2
       13 MOVE                             R5 R3
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 RETURN                           R4 3

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["StatusChanged"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 NEWCLOSURE                       R3 P2
       15 CAPTURE                          VAL R1
       16 DUPTABLE                         R4 K4 [{"watchInstanceFileSyncStatus", "destroy"}]
       17 SETTABLEKS                       R2 R4 K2 ["watchInstanceFileSyncStatus"]
       19 SETTABLEKS                       R3 R4 K3 ["destroy"]
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InstanceFileSyncService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_4]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
