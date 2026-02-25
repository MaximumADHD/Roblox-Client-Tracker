PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioPublishService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K4 ["getHasUnpublishedChanges"]
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K7 [coroutine.running]
       15 CALL                             R0 0 1
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K8 ["onStudioCloseHold"]
       21 NAMECALL                         R0 R0 K9 ["Invoke"]
       23 CALL                             R0 2 0
       24 GETIMPORT                        R0 K11 [coroutine.yield]
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETIMPORT                        R0 K2 [coroutine.status]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 1
        6 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+7]
        8 GETIMPORT                        R0 K6 [task.spawn]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K4 ["getHasUnpublishedChanges"]
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K7 [coroutine.running]
       15 CALL                             R0 0 1
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K8 ["onStudioPublishHold"]
       21 NAMECALL                         R0 R0 K9 ["Invoke"]
       23 CALL                             R0 2 0
       24 GETIMPORT                        R0 K11 [coroutine.yield]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R0 R1 K12 ["getLatestPublishSuccess"]
       30 CALL                             R0 0 1
       31 JUMPIF                           R0 ; [+2]
       32 LOADB                            R0 1
       33 RETURN                           R0 1
       34 LOADB                            R0 0
       35 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETIMPORT                        R0 K2 [coroutine.status]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 1
        6 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+7]
        8 GETIMPORT                        R0 K6 [task.spawn]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 LOADK                            R4 K0 ["PlaceManager"]
        2 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        4 CALL                             R2 2 1
        5 LOADN                            R4 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          REF R1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R2 R2 K2 ["RegisterCloseHold"]
       13 CALL                             R2 3 0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["releaseStudioCloseHold"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          REF R1
       19 NAMECALL                         R2 R0 K4 ["OnInvoke"]
       21 CALL                             R2 3 0
       22 LOADNIL                          R2
       23 GETUPVAL                         R3 2
       24 LOADN                            R5 0
       25 NEWCLOSURE                       R6 P2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 NAMECALL                         R3 R3 K5 ["RegisterPublishHold"]
       32 CALL                             R3 3 0
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K6 ["releaseStudioPublishHold"]
       36 NEWCLOSURE                       R6 P3
       37 CAPTURE                          REF R2
       38 NAMECALL                         R3 R0 K4 ["OnInvoke"]
       40 CALL                             R3 3 0
       41 CLOSEUPVALS                      R1
       42 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+2]
       12 DUPCLOSURE                       R3 K7 [PROTO_1]
       13 RETURN                           R3 1
       14 GETIMPORT                        R3 K9 [require]
       16 GETTABLEKS                       R8 R0 K10 ["Src"]
       18 GETTABLEKS                       R7 R8 K11 ["Util"]
       20 GETTABLEKS                       R6 R7 K12 ["BridgingFiles"]
       22 GETTABLEKS                       R5 R6 K13 ["AssetDmFiles"]
       24 GETTABLEKS                       R4 R5 K14 ["assetDmDatabaseLoadedManager"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R7 K11 ["Util"]
       33 GETTABLEKS                       R5 R6 K15 ["InvokeKeys"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K16 [PROTO_6]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
