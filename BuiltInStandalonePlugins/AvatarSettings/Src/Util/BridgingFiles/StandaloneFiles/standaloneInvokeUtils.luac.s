PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["set"]
        9 GETUPVAL                         R3 1
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 JUMP                             ; [+1]
       15 MOVE                             R2 R0
       16 LOADB                            R3 1
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["fromAssetDm"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["OnInvoke"]
        9 CALL                             R0 3 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useEffect"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R3
        8 NEWTABLE                         R6 0 1
       10 GETTABLEKS                       R7 R1 K1 ["value"]
       12 SETLIST                          R6 R7 1 [1]
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useCreateInvokes"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R1 K1 ["assetId"]
        6 GETTABLEKS                       R6 R2 K1 ["assetId"]
        8 CALL                             R3 3 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["useCreateInvokes"]
       12 MOVE                             R4 R0
       13 GETTABLEKS                       R5 R1 K2 ["enabled"]
       15 GETTABLEKS                       R6 R2 K2 ["enabled"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["ProviderTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["InvokeKeys"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 2 0
       43 DUPCLOSURE                       R6 K13 [PROTO_3]
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R6 R5 K14 ["useCreateInvokes"]
       47 DUPCLOSURE                       R6 K15 [PROTO_4]
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R6 R5 K16 ["useCreateAssetIdInvokes"]
       51 RETURN                           R5 1
