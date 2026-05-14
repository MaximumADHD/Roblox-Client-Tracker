PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["databaseLoaded"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Loaded"]
        7 NAMECALL                         R0 R0 K2 ["Invoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["databaseLoaded"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Loaded"]
        7 NAMECALL                         R0 R0 K2 ["Invoke"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.defer]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K3 ["Loaded"]
        9 NAMECALL                         R1 R1 K4 ["GetPropertyChangedSignal"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R1 R1 K5 ["Connect"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_9:
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
       17 GETTABLEKS                       R3 R3 K10 ["Util"]
       19 GETTABLEKS                       R3 R3 K11 ["InvokeKeys"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 8 0
       24 LOADB                            R4 0
       25 LOADB                            R5 0
       26 LOADB                            R6 1
       27 DUPCLOSURE                       R7 K12 [PROTO_2]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R7 R3 K13 ["sendDatabaseLoadedOnInitialization"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          REF R4
       35 CAPTURE                          REF R5
       36 SETTABLEKS                       R7 R3 K14 ["listenToHasUnpublishedChanges"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          REF R4
       40 SETTABLEKS                       R7 R3 K15 ["getHasUnpublishedChanges"]
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          REF R5
       44 SETTABLEKS                       R7 R3 K16 ["getHasUnpublishedAvatarTypeChanges"]
       46 NEWCLOSURE                       R7 P4
       47 CAPTURE                          REF R6
       48 SETTABLEKS                       R7 R3 K17 ["setLatestPublishSuccess"]
       50 NEWCLOSURE                       R7 P5
       51 CAPTURE                          REF R6
       52 SETTABLEKS                       R7 R3 K18 ["getLatestPublishSuccess"]
       54 CLOSEUPVALS                      R4
       55 RETURN                           R3 1
