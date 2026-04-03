PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarSettings"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarSettings"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["AvatarRules"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+17]
        9 GETIMPORT                        R2 K5 [Instance.new]
       11 LOADK                            R3 K1 ["AvatarRules"]
       12 CALL                             R2 1 1
       13 MOVE                             R1 R2
       14 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K6 ["Did not set up avatar rules properly"]
       18 GETIMPORT                        R2 K8 [assert]
       20 CALL                             R2 2 0
       21 LOADK                            R2 K9 ["DefaultAvatarRules"]
       22 SETTABLEKS                       R2 R1 K10 ["Name"]
       24 SETTABLEKS                       R0 R1 K11 ["Parent"]
       26 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       28 MOVE                             R3 R1
       29 LOADK                            R4 K6 ["Did not set up avatar rules properly"]
       30 GETIMPORT                        R2 K8 [assert]
       32 CALL                             R2 2 0
       33 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["avatarRules"]
        3 CALL                             R1 0 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R1 K1 ["FindFirstChildWhichIsA"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+19]
        9 GETIMPORT                        R3 K4 [Instance.new]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 MOVE                             R2 R3
       14 LOADK                            R6 K5 ["Did not set up rule instance "]
       15 MOVE                             R7 R0
       16 LOADK                            R8 K6 [" properly"]
       17 CONCAT                           R5 R6 R8
       18 FASTCALL2                        ASSERT R2 R5 ; [+4]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K8 [assert]
       23 CALL                             R3 2 0
       24 SETTABLEKS                       R1 R2 K9 ["Parent"]
       26 LOADB                            R3 1
       27 RETURN                           R3 1
       28 LOADB                            R3 0
       29 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["AvatarBodyRules"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["AvatarCollisionRules"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["AvatarAbilityRules"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["AvatarAnimationRules"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["AvatarAccessoryRules"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["avatarRules"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["AvatarClothingRules"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createRule"]
        3 LOADK                            R1 K1 ["AvatarBodyRules"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["avatarBodyRules"]
        8 CALL                             R1 0 1
        9 FASTCALL1                        ASSERT R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 1 0
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R1 1
       16 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createRule"]
        3 LOADK                            R1 K1 ["AvatarCollisionRules"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["avatarCollisionRules"]
        8 CALL                             R1 0 1
        9 FASTCALL1                        ASSERT R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 1 0
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R1 1
       16 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createRule"]
        3 LOADK                            R1 K1 ["AvatarAbilityRules"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["avatarAbilityRules"]
        8 CALL                             R1 0 1
        9 FASTCALL1                        ASSERT R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 1 0
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R1 1
       16 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createRule"]
        3 LOADK                            R1 K1 ["AvatarAnimationRules"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["avatarAnimationRules"]
        8 CALL                             R1 0 1
        9 FASTCALL1                        ASSERT R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 1 0
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R1 1
       16 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createRule"]
        3 LOADK                            R1 K1 ["AvatarAccessoryRules"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["avatarAccessoryRules"]
        8 CALL                             R1 0 1
        9 FASTCALL1                        ASSERT R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 1 0
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R1 1
       16 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createRule"]
        3 LOADK                            R1 K1 ["AvatarClothingRules"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["avatarClothingRules"]
        8 CALL                             R1 0 1
        9 FASTCALL1                        ASSERT R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 1 0
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R1 1
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["avatarSettings"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["avatarRules"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["createRule"]
       14 DUPCLOSURE                       R1 K6 [PROTO_3]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["avatarBodyRules"]
       18 DUPCLOSURE                       R1 K8 [PROTO_4]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K9 ["avatarCollisionRules"]
       22 DUPCLOSURE                       R1 K10 [PROTO_5]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K11 ["avatarAbilityRules"]
       26 DUPCLOSURE                       R1 K12 [PROTO_6]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K13 ["avatarAnimationRules"]
       30 DUPCLOSURE                       R1 K14 [PROTO_7]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K15 ["avatarAccessoryRules"]
       34 DUPCLOSURE                       R1 K16 [PROTO_8]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K17 ["avatarClothingRules"]
       38 DUPCLOSURE                       R1 K18 [PROTO_9]
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K19 ["createAvatarBodyRules"]
       42 DUPCLOSURE                       R1 K20 [PROTO_10]
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K21 ["createAvatarCollisionRules"]
       46 DUPCLOSURE                       R1 K22 [PROTO_11]
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K23 ["createAvatarAbilityRules"]
       50 DUPCLOSURE                       R1 K24 [PROTO_12]
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K25 ["createAvatarAnimationRules"]
       54 DUPCLOSURE                       R1 K26 [PROTO_13]
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K27 ["createAvatarAccessoryRules"]
       58 DUPCLOSURE                       R1 K28 [PROTO_14]
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K29 ["createAvatarClothingRules"]
       62 RETURN                           R0 1
