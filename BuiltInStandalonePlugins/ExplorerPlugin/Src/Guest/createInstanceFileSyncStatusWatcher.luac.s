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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+2]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetSyncingCollaborators"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["StatusChanged"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R2 R2 K1 ["Connect"]
       12 CALL                             R2 2 1
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 1
       15 JUMPIFNOT                        R4 ; [+9]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["SyncingCollaboratorsChanged"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R1
       21 NAMECALL                         R4 R4 K1 ["Connect"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 NEWCLOSURE                       R4 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 GETUPVAL                         R7 1
       31 JUMPIFNOT                        R7 ; [+4]
       32 DUPCLOSURE                       R5 K3 [PROTO_4]
       33 CAPTURE                          UPVAL U0
       34 NEWCLOSURE                       R6 P4
       35 CAPTURE                          VAL R1
       36 NEWCLOSURE                       R7 P5
       37 CAPTURE                          VAL R2
       38 CAPTURE                          REF R3
       39 DUPTABLE                         R8 K8 [{"watchInstanceFileSyncStatus", "getSyncingCollaborators", "watchSyncingCollaborators", "destroy"}]
       40 SETTABLEKS                       R4 R8 K4 ["watchInstanceFileSyncStatus"]
       42 SETTABLEKS                       R5 R8 K5 ["getSyncingCollaborators"]
       44 SETTABLEKS                       R6 R8 K6 ["watchSyncingCollaborators"]
       46 SETTABLEKS                       R7 R8 K7 ["destroy"]
       48 CLOSEUPVALS                      R3
       49 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InstanceFileSyncService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["LDP884ReplicateTCSyncStatus"]
       10 NAMECALL                         R1 R1 K5 ["GetEngineFeature"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K6 [PROTO_8]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
