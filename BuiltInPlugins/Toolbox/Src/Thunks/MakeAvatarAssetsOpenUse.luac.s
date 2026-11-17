PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 CALL                             R3 3 -1
        6 NAMECALL                         R1 R1 K0 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADNIL                          R4
        3 LOADB                            R5 0
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["privateAvatarAssetIds"]
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 -1
        7 NAMECALL                         R2 R0 K2 ["dispatch"]
        9 CALL                             R2 -1 0
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K3 ["makeAvatarAssetsOpenUse"]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U5
       24 NAMECALL                         R2 R2 K4 ["andThen"]
       26 CALL                             R2 3 -1
       27 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarAssetPrivacyCheckStarted"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarAssetPrivacyCheckReceived"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R4 K11 ["CheckAvatarAssetPrivacy"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 RETURN                           R4 1
