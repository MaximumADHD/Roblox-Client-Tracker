PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+7]
        3 MOVE                             R2 R1
        4 GETUPVAL                         R3 1
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K0 ["GetSyncState"]
        8 CALL                             R3 2 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 LOADB                            R2 0
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["HasSyncedInstances"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 GETUPVAL                         R4 1
        9 MOVE                             R6 R0
       10 NAMECALL                         R4 R4 K1 ["GetSyncState"]
       12 CALL                             R4 2 2
       13 MOVE                             R2 R4
       14 MOVE                             R3 R5
       15 MOVE                             R4 R2
       16 MOVE                             R5 R3
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 RETURN                           R4 3

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["SyncStatusChanged"]
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
       16 DUPTABLE                         R4 K4 [{"watchLiveSyncStatus", "destroy"}]
       17 SETTABLEKS                       R2 R4 K2 ["watchLiveSyncStatus"]
       19 SETTABLEKS                       R3 R4 K3 ["destroy"]
       21 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 GETIMPORT                        R1 K1 [script]
        4 LOADK                            R3 K2 ["ExplorerPlugin"]
        5 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K5 [require]
       10 GETTABLEKS                       R3 R1 K6 ["Src"]
       12 GETTABLEKS                       R3 R3 K7 ["Flags"]
       14 GETTABLEKS                       R3 R3 K8 ["getFFlagLuaExplorerFileSync"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R1 K6 ["Src"]
       21 GETTABLEKS                       R4 R4 K7 ["Flags"]
       23 GETTABLEKS                       R4 R4 K9 ["getFFlagLuaExplorerHierarchySync"]
       25 CALL                             R3 1 1
       26 MOVE                             R4 R2
       27 CALL                             R4 0 1
       28 JUMPIF                           R4 ; [+3]
       29 MOVE                             R4 R3
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+7]
       32 GETIMPORT                        R4 K11 [game]
       34 LOADK                            R6 K12 ["LiveSyncService"]
       35 NAMECALL                         R4 R4 K13 ["GetService"]
       37 CALL                             R4 2 1
       38 MOVE                             R0 R4
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          REF R0
       41 CLOSEUPVALS                      R0
       42 RETURN                           R4 1
