PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 JUMPIF                           R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["set"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["databaseLoaded"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["PublishProvider: saveUnpublishedSettings should not be called with mockPublishProvider"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["PublishProvider: discardUnpublishedSettings should not be called with mockPublishProvider"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["databaseLoaded"]
        3 JUMPIFEQKNIL                     R3 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["databaseLoaded"]
        7 JUMP                             ; [+1]
        8 LOADB                            R2 1
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K1 ["use"]
       13 CALL                             R2 1 1
       14 NAMECALL                         R2 R2 K2 ["get"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 0
       27 DUPTABLE                         R3 K5 [{"content"}]
       28 DUPTABLE                         R4 K11 [{"databaseLoaded", "canPublish", "isAvatarTypeOutOfSync", "isSettingOutOfSync", "saveUnpublishedSettings", "discardUnpublishedSettings"}]
       29 SETTABLEKS                       R1 R4 K0 ["databaseLoaded"]
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K6 ["canPublish"]
       34 DUPCLOSURE                       R5 K12 [PROTO_2]
       35 SETTABLEKS                       R5 R4 K7 ["isAvatarTypeOutOfSync"]
       37 DUPCLOSURE                       R5 K13 [PROTO_3]
       38 SETTABLEKS                       R5 R4 K8 ["isSettingOutOfSync"]
       40 DUPCLOSURE                       R5 K14 [PROTO_4]
       41 SETTABLEKS                       R5 R4 K9 ["saveUnpublishedSettings"]
       43 DUPCLOSURE                       R5 K15 [PROTO_5]
       44 SETTABLEKS                       R5 R4 K10 ["discardUnpublishedSettings"]
       46 SETTABLEKS                       R4 R3 K4 ["content"]
       48 GETUPVAL                         R4 4
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K16 ["Provider"]
       52 DUPTABLE                         R6 K18 [{"value"}]
       53 SETTABLEKS                       R3 R6 K17 ["value"]
       55 GETTABLEKS                       R7 R0 K19 ["children"]
       57 CALL                             R4 3 -1
       58 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["PublishProvider"]
       24 GETTABLEKS                       R3 R3 K12 ["PublishContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["React"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Util"]
       40 GETTABLEKS                       R5 R5 K15 ["InvokeKeys"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K14 ["Util"]
       49 GETTABLEKS                       R6 R6 K16 ["settingUtil"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R1 K17 ["ContextServices"]
       54 GETTABLEKS                       R7 R6 K18 ["Plugin"]
       56 GETTABLEKS                       R8 R5 K19 ["useSetting"]
       58 GETTABLEKS                       R9 R3 K20 ["createElement"]
       60 DUPCLOSURE                       R10 K21 [PROTO_6]
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R2
       67 RETURN                           R10 1
