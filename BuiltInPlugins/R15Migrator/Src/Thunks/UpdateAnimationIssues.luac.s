PROTO_0:
        0 MOVE                             R3 R1
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K0 ["getAnimationAssetInfo"]
        7 GETTABLEKS                       R9 R7 K1 ["str"]
        9 CALL                             R8 1 1
       10 GETTABLEKS                       R9 R8 K2 ["id"]
       12 GETTABLE                         R10 R0 R9
       13 JUMPIF                           R10 ; [+28]
       14 GETUPVAL                         R11 0
       15 GETTABLEKS                       R11 R11 K3 ["getCachedName"]
       17 MOVE                             R12 R9
       18 CALL                             R11 1 1
       19 GETUPVAL                         R12 1
       20 GETTABLEKS                       R12 R12 K4 ["new"]
       22 MOVE                             R13 R8
       23 JUMPIFNOT                        R11 ; [+2]
       24 MOVE                             R14 R11
       25 JUMP                             ; [+5]
       26 FASTCALL1                        TOSTRING R9 ; [+3]
       27 MOVE                             R15 R9
       28 GETIMPORT                        R14 K6 [tostring]
       30 CALL                             R14 1 1
       31 MOVE                             R15 R2
       32 LOADNIL                          R16
       33 GETUPVAL                         R17 0
       34 GETTABLEKS                       R17 R17 K7 ["getConvertedAssetId"]
       36 MOVE                             R18 R9
       37 CALL                             R17 1 -1
       38 CALL                             R12 -1 1
       39 MOVE                             R10 R12
       40 ADDK                             R2 R2 K8 [1]
       41 SETTABLE                         R10 R0 R9
       42 GETTABLEKS                       R11 R10 K9 ["refs"]
       44 SETTABLE                         R8 R11 R7
       45 LOADNIL                          R11
       46 SETTABLEKS                       R11 R10 K10 ["status"]
       48 GETTABLEKS                       R11 R10 K11 ["oldRefs"]
       50 LOADNIL                          R12
       51 LOADNIL                          R13
       52 FORGPREP                         R11
       53 JUMPIFNOTEQ                      R14 R7 ; [+5]
       55 GETTABLEKS                       R16 R10 K11 ["oldRefs"]
       57 LOADNIL                          R17
       58 SETTABLE                         R17 R16 R14
       59 FORGLOOP                         R11 2 ; [-7]
       61 FORGLOOP                         R3 2 ; [-58]
       63 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["getAnimationAssetInfo"]
        7 GETTABLEKS                       R8 R6 K1 ["str"]
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R7 R7 K2 ["id"]
       12 GETTABLE                         R8 R0 R7
       13 NEWTABLE                         R9 0 0
       15 LOADN                            R10 0
       16 JUMPIFNOT                        R8 ; [+33]
       17 GETTABLEKS                       R11 R8 K3 ["refs"]
       19 LOADNIL                          R12
       20 LOADNIL                          R13
       21 FORGPREP                         R11
       22 GETUPVAL                         R18 1
       23 GETTABLEKS                       R18 R18 K4 ["AssetIdString"]
       25 NAMECALL                         R16 R15 K5 ["IsA"]
       27 CALL                             R16 2 1
       28 JUMPIFNOT                        R16 ; [+9]
       29 JUMPIFNOTEQ                      R14 R6 ; [+8]
       31 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       33 MOVE                             R17 R9
       34 MOVE                             R18 R14
       35 GETIMPORT                        R16 K8 [table.insert]
       37 CALL                             R16 2 0
       38 ADDK                             R10 R10 K9 [1]
       39 FORGLOOP                         R11 2 ; [-18]
       41 JUMP                             ; [+1]
       42 JUMP                             ; [+7]
       43 LENGTH                           R11 R9
       44 JUMPIFEQKN                       R11 K10 [0] ; [+5]
       46 MOVE                             R13 R9
       47 NAMECALL                         R11 R8 K11 ["removeRefs"]
       49 CALL                             R11 2 0
       50 FORGLOOP                         R2 2 ; [-47]
       52 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLE                         R8 R1 R6
        7 JUMPIF                           R8 ; [+10]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K0 ["List"]
       11 GETTABLEKS                       R8 R8 K1 ["join"]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R7
       15 CALL                             R8 2 1
       16 MOVE                             R2 R8
       17 JUMP                             ; [+25]
       18 MOVE                             R8 R7
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 LOADB                            R13 0
       23 GETTABLE                         R14 R1 R6
       24 LOADNIL                          R15
       25 LOADNIL                          R16
       26 FORGPREP                         R14
       27 JUMPIFNOTEQ                      R12 R18 ; [+3]
       29 LOADB                            R13 1
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R14 2 ; [-5]
       33 JUMPIF                           R13 ; [+7]
       34 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       36 MOVE                             R15 R2
       37 MOVE                             R16 R12
       38 GETIMPORT                        R14 K4 [table.insert]
       40 CALL                             R14 2 0
       41 FORGLOOP                         R8 2 ; [-20]
       43 FORGLOOP                         R3 2 ; [-38]
       45 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 1
        8 LENGTH                           R3 R1
        9 JUMPIFNOTEQKN                    R3 K0 [0] ; [+5]
       11 LENGTH                           R3 R2
       12 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
       14 RETURN                           R0 0
       15 NAMECALL                         R3 R0 K1 ["getState"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R5 R3 K2 ["AnimationConversion"]
       21 GETTABLEKS                       R5 R5 K3 ["animations"]
       23 CALL                             R4 1 1
       24 LOADN                            R5 0
       25 MOVE                             R6 R4
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 FORGPREP                         R6
       29 GETTABLEKS                       R11 R10 K4 ["index"]
       31 JUMPIFNOTLE                      R5 R11 ; [+4]
       33 GETTABLEKS                       R11 R10 K4 ["index"]
       35 ADDK                             R5 R11 K5 [1]
       36 FORGLOOP                         R6 2 ; [-8]
       38 GETUPVAL                         R6 4
       39 MOVE                             R7 R4
       40 MOVE                             R8 R1
       41 MOVE                             R9 R5
       42 CALL                             R6 3 0
       43 GETUPVAL                         R6 5
       44 MOVE                             R7 R4
       45 MOVE                             R8 R2
       46 CALL                             R6 2 0
       47 GETUPVAL                         R8 6
       48 MOVE                             R9 R4
       49 CALL                             R8 1 -1
       50 NAMECALL                         R6 R0 K6 ["dispatch"]
       52 CALL                             R6 -1 0
       53 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["deepCopy"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K11 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R5 R4 K12 ["AnimationConversion"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R5 K13 ["AnimationConversionManager"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R5 K14 ["AnimationState"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R5 K15 ["constants"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K16 ["AssetType"]
       48 GETTABLEKS                       R10 R0 K11 ["Src"]
       50 GETTABLEKS                       R10 R10 K17 ["Actions"]
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R12 R10 K18 ["SetAnimations"]
       56 CALL                             R11 1 1
       57 DUPCLOSURE                       R12 K19 [PROTO_0]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 DUPCLOSURE                       R13 K20 [PROTO_1]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R9
       63 DUPCLOSURE                       R14 K21 [PROTO_2]
       64 CAPTURE                          VAL R3
       65 DUPCLOSURE                       R15 K22 [PROTO_4]
       66 CAPTURE                          VAL R14
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R13
       70 CAPTURE                          VAL R11
       71 RETURN                           R15 1
