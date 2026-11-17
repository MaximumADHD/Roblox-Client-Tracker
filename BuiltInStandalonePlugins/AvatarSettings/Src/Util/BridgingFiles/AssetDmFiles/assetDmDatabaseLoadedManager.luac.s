PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+34]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Loaded"]
        6 JUMPIFNOT                        R0 ; [+17]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["captureCompletedLoad"]
       10 GETUPVAL                         R1 3
       11 CALL                             R0 1 2
       12 JUMPIFNOT                        R0 ; [+34]
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K2 ["databaseLoaded"]
       17 LOADB                            R5 1
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 NAMECALL                         R2 R2 K3 ["Invoke"]
       22 CALL                             R2 5 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K4 ["cancelPendingLoad"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R2 R2 K2 ["databaseLoaded"]
       32 LOADB                            R3 0
       33 NAMECALL                         R0 R0 K3 ["Invoke"]
       35 CALL                             R0 3 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R0 3
       38 GETUPVAL                         R2 4
       39 GETTABLEKS                       R2 R2 K2 ["databaseLoaded"]
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K0 ["Loaded"]
       44 NAMECALL                         R0 R0 K3 ["Invoke"]
       46 CALL                             R0 3 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 GETIMPORT                        R2 K2 [task.defer]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 LOADK                            R4 K3 ["Loaded"]
       13 NAMECALL                         R2 R2 K4 ["GetPropertyChangedSignal"]
       15 CALL                             R2 2 1
       16 NEWCLOSURE                       R4 P2
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R2 R2 K5 ["Connect"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["hasUnpublishedChanges"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R1 R0 K1 ["OnInvoke"]
        7 CALL                             R1 3 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["hasUnpublishedAvatarTypeChanges"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R1 R0 K1 ["OnInvoke"]
       15 CALL                             R1 3 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["requestUnpublishedChangesStatus"]
       19 NAMECALL                         R1 R0 K4 ["Invoke"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K2 ["AvatarSettings"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Src"]
       17 GETTABLEKS                       R3 R3 K10 ["Flags"]
       19 GETTABLEKS                       R3 R3 K11 ["getFFlagAvatarSettingsSyncPublishedSnapshot"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K12 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["InvokeKeys"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R0 K9 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["BridgingFiles"]
       39 GETTABLEKS                       R5 R5 K15 ["AssetDmFiles"]
       41 GETTABLEKS                       R5 R5 K16 ["assetDmSettingsSnapshot"]
       43 CALL                             R4 1 1
       44 NEWTABLE                         R5 8 0
       46 LOADB                            R6 0
       47 LOADB                            R7 0
       48 LOADB                            R8 1
       49 DUPCLOSURE                       R9 K17 [PROTO_3]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R9 R5 K18 ["sendDatabaseLoadedOnInitialization"]
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          REF R6
       59 CAPTURE                          REF R7
       60 SETTABLEKS                       R9 R5 K19 ["listenToHasUnpublishedChanges"]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          REF R6
       64 SETTABLEKS                       R9 R5 K20 ["getHasUnpublishedChanges"]
       66 NEWCLOSURE                       R9 P3
       67 CAPTURE                          REF R7
       68 SETTABLEKS                       R9 R5 K21 ["getHasUnpublishedAvatarTypeChanges"]
       70 NEWCLOSURE                       R9 P4
       71 CAPTURE                          REF R8
       72 SETTABLEKS                       R9 R5 K22 ["setLatestPublishSuccess"]
       74 NEWCLOSURE                       R9 P5
       75 CAPTURE                          REF R8
       76 SETTABLEKS                       R9 R5 K23 ["getLatestPublishSuccess"]
       78 CLOSEUPVALS                      R6
       79 RETURN                           R5 1
