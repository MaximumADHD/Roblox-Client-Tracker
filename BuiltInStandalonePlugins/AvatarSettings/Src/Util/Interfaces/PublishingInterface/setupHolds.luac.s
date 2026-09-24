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
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K4 ["getHasUnpublishedChanges"]
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K7 [coroutine.running]
       15 CALL                             R0 0 1
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K8 ["onStudioCloseHold"]
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
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R0 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K4 ["getHasUnpublishedChanges"]
       10 CALL                             R0 0 1
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K7 [coroutine.running]
       15 CALL                             R0 0 1
       16 SETUPVAL                         R0 1
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K8 ["onStudioPublishHold"]
       21 NAMECALL                         R0 R0 K9 ["Invoke"]
       23 CALL                             R0 2 0
       24 GETIMPORT                        R0 K11 [coroutine.yield]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K12 ["getLatestPublishSuccess"]
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
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          REF R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 LOADK                            R5 K0 ["PlaceManager"]
        7 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
        9 CALL                             R3 2 1
       10 LOADN                            R5 0
       11 MOVE                             R6 R2
       12 NAMECALL                         R3 R3 K2 ["RegisterCloseHold"]
       14 CALL                             R3 3 0
       15 GETIMPORT                        R3 K4 [game]
       17 LOADK                            R5 K5 ["StudioPlaceCloserCloseHold"]
       18 NAMECALL                         R3 R3 K6 ["GetEngineFeature"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R3 ; [+9]
       22 LOADK                            R5 K7 ["PlaceCloser"]
       23 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
       25 CALL                             R3 2 1
       26 LOADN                            R5 0
       27 MOVE                             R6 R2
       28 NAMECALL                         R3 R3 K8 ["RegisterCloseHoldAsync"]
       30 CALL                             R3 3 0
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K9 ["releaseStudioCloseHold"]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          REF R1
       36 NAMECALL                         R3 R0 K10 ["OnInvoke"]
       38 CALL                             R3 3 0
       39 LOADNIL                          R3
       40 GETUPVAL                         R4 2
       41 LOADN                            R6 0
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          REF R3
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U1
       47 NAMECALL                         R4 R4 K11 ["RegisterPublishHold"]
       49 CALL                             R4 3 0
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K12 ["releaseStudioPublishHold"]
       53 NEWCLOSURE                       R7 P3
       54 CAPTURE                          REF R3
       55 NAMECALL                         R4 R0 K10 ["OnInvoke"]
       57 CALL                             R4 3 0
       58 CLOSEUPVALS                      R1
       59 RETURN                           R0 0

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
       16 GETTABLEKS                       R4 R0 K10 ["Src"]
       18 GETTABLEKS                       R4 R4 K11 ["Util"]
       20 GETTABLEKS                       R4 R4 K12 ["BridgingFiles"]
       22 GETTABLEKS                       R4 R4 K13 ["AssetDmFiles"]
       24 GETTABLEKS                       R4 R4 K14 ["assetDmDatabaseLoadedManager"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["InvokeKeys"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K16 [PROTO_6]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 RETURN                           R5 1
