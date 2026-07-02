PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["rbxassetid://"]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 LOADK                            R5 K0 ["Animation"]
        5 LOADN                            R6 0
        6 GETUPVAL                         R7 4
        7 LOADK                            R8 K1 [""]
        8 LOADK                            R9 K1 [""]
        9 LOADK                            R10 K2 ["model/x-rbxm"]
       10 LOADN                            R11 0
       11 NAMECALL                         R0 R0 K3 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsync"]
       13 CALL                             R0 11 -1
       14 RETURN                           R0 -1

PROTO_3:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 NEWTABLE                         R3 0 0
        3 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
        5 MOVE                             R5 R3
        6 MOVE                             R6 R0
        7 GETIMPORT                        R4 K3 [table.insert]
        9 CALL                             R4 2 0
       10 GETIMPORT                        R4 K5 [pcall]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R3
       15 CALL                             R4 1 2
       16 JUMPIF                           R4 ; [+1]
       17 RETURN                           R0 0
       18 GETIMPORT                        R6 K9 [Enum.AssetCreatorType.User]
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R7 R7 K10 ["GetUserId"]
       23 CALL                             R7 1 1
       24 GETIMPORT                        R8 K5 [pcall]
       26 NEWCLOSURE                       R9 P2
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R1
       32 CALL                             R8 1 2
       33 JUMPIF                           R8 ; [+10]
       34 GETIMPORT                        R10 K12 [warn]
       36 LOADK                            R12 K13 ["Upload failed. %*"]
       37 MOVE                             R14 R9
       38 NAMECALL                         R12 R12 K14 ["format"]
       40 CALL                             R12 2 1
       41 MOVE                             R11 R12
       42 CALL                             R10 1 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R10 R9 K15 ["AssetId"]
       46 GETIMPORT                        R11 K17 [print]
       48 LOADK                            R13 K18 ["rbxassetid://"]
       49 MOVE                             R14 R10
       50 CONCAT                           R12 R13 R14
       51 CALL                             R11 1 0
       52 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [next]
        5 GETTABLEKS                       R4 R1 K3 ["AnimationConversion"]
        7 GETTABLEKS                       R4 R4 K4 ["animations"]
        9 GETUPVAL                         R5 0
       10 GETTABLE                         R3 R4 R5
       11 GETTABLEKS                       R3 R3 K5 ["refs"]
       13 CALL                             R2 1 2
       14 LOADN                            R6 1
       15 LOADN                            R4 300
       16 LOADN                            R5 1
       17 FORNPREP                         R4
       18 GETUPVAL                         R7 1
       19 NAMECALL                         R8 R2 K6 ["Clone"]
       21 CALL                             R8 1 1
       22 GETTABLEKS                       R10 R2 K7 ["Name"]
       24 MOVE                             R11 R6
       25 CONCAT                           R9 R10 R11
       26 CALL                             R7 2 0
       27 FORNLOOP                         R4
       28 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationConversion"]
       15 GETTABLEKS                       R2 R2 K9 ["serializeInstances"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K11 [game]
       20 LOADK                            R4 K12 ["StudioService"]
       21 NAMECALL                         R2 R2 K13 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K11 [game]
       26 LOADK                            R5 K14 ["PublishService"]
       27 NAMECALL                         R3 R3 K13 ["GetService"]
       29 CALL                             R3 2 1
       30 DUPCLOSURE                       R4 K15 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R5 K16 [PROTO_5]
       35 CAPTURE                          VAL R4
       36 RETURN                           R5 1
