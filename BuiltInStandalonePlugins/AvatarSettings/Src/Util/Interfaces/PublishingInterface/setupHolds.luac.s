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
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["getHasUnpublishedChanges"]
        8 CALL                             R0 0 1
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R0 K4 [coroutine.running]
       13 CALL                             R0 0 1
       14 SETUPVAL                         R0 2
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K5 ["onStudioCloseHold"]
       19 NAMECALL                         R0 R0 K6 ["Invoke"]
       21 CALL                             R0 2 0
       22 GETIMPORT                        R0 K8 [coroutine.yield]
       24 CALL                             R0 0 1
       25 JUMPIFNOTEQKS                    R0 K9 ["cancel"] ; [+3]
       27 LOADB                            R1 1
       28 RETURN                           R1 1
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETIMPORT                        R1 K2 [coroutine.status]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+8]
        8 GETIMPORT                        R1 K6 [task.spawn]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 LOADNIL                          R1
       14 SETUPVAL                         R1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["getHasUnpublishedChanges"]
        8 CALL                             R0 0 1
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R0 K4 [coroutine.running]
       13 CALL                             R0 0 1
       14 SETUPVAL                         R0 2
       15 GETUPVAL                         R0 3
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K5 ["onStudioPublishHold"]
       19 NAMECALL                         R0 R0 K6 ["Invoke"]
       21 CALL                             R0 2 0
       22 GETIMPORT                        R0 K8 [coroutine.yield]
       24 CALL                             R0 0 1
       25 JUMPIFNOTEQKS                    R0 K9 ["cancel"] ; [+3]
       27 LOADB                            R1 1
       28 RETURN                           R1 1
       29 JUMPIFNOTEQKS                    R0 K10 ["discard"] ; [+3]
       31 LOADB                            R1 0
       32 RETURN                           R1 1
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K11 ["getLatestPublishSuccess"]
       36 CALL                             R1 0 1
       37 JUMPIF                           R1 ; [+2]
       38 LOADB                            R1 1
       39 RETURN                           R1 1
       40 LOADB                            R1 0
       41 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETIMPORT                        R1 K2 [coroutine.status]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+8]
        8 GETIMPORT                        R1 K6 [task.spawn]
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 LOADNIL                          R1
       14 SETUPVAL                         R1 0
       15 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R3 R1 K0 ["publishService"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["publishService"]
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R2 0
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETTABLEKS                       R4 R1 K1 ["getGameId"]
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETTABLEKS                       R3 R1 K1 ["getGameId"]
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R3 1
       16 LOADNIL                          R4
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          REF R4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 LOADK                            R8 K2 ["PlaceManager"]
       24 NAMECALL                         R6 R0 K3 ["GetPluginComponent"]
       26 CALL                             R6 2 1
       27 LOADN                            R8 0
       28 MOVE                             R9 R5
       29 NAMECALL                         R6 R6 K4 ["RegisterCloseHold"]
       31 CALL                             R6 3 0
       32 GETIMPORT                        R6 K6 [game]
       34 LOADK                            R8 K7 ["StudioPlaceCloserCloseHold"]
       35 NAMECALL                         R6 R6 K8 ["GetEngineFeature"]
       37 CALL                             R6 2 1
       38 JUMPIFNOT                        R6 ; [+9]
       39 LOADK                            R8 K9 ["PlaceCloser"]
       40 NAMECALL                         R6 R0 K3 ["GetPluginComponent"]
       42 CALL                             R6 2 1
       43 LOADN                            R8 0
       44 MOVE                             R9 R5
       45 NAMECALL                         R6 R6 K10 ["RegisterCloseHoldAsync"]
       47 CALL                             R6 3 0
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K11 ["releaseStudioCloseHold"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          REF R4
       53 NAMECALL                         R6 R0 K12 ["OnInvoke"]
       55 CALL                             R6 3 0
       56 LOADNIL                          R6
       57 LOADN                            R9 0
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          REF R6
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U3
       64 NAMECALL                         R7 R2 K13 ["RegisterPublishHold"]
       66 CALL                             R7 3 0
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K14 ["releaseStudioPublishHold"]
       70 NEWCLOSURE                       R10 P3
       71 CAPTURE                          REF R6
       72 NAMECALL                         R7 R0 K12 ["OnInvoke"]
       74 CALL                             R7 3 0
       75 CLOSEUPVALS                      R4
       76 RETURN                           R0 0

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
       36 DUPCLOSURE                       R5 K16 [PROTO_2]
       37 DUPCLOSURE                       R6 K17 [PROTO_7]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R6 1
