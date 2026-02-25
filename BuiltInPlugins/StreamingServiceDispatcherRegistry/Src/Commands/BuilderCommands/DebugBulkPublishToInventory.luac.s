PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["HasInternalPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["SerializeInstances"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 DUPTABLE                         R0 K9 [{"AdditionalParameters", "AssetType", "AssetName", "AssetId", "ContentType", "CreatorId", "CreatorType", "Description", "Token"}]
        1 DUPTABLE                         R1 K11 [{"PublishAsPackage"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K10 ["PublishAsPackage"]
        5 SETTABLEKS                       R1 R0 K0 ["AdditionalParameters"]
        7 GETIMPORT                        R2 K14 [Enum.AssetType.Model]
        9 GETTABLEKS                       R1 R2 K15 ["Name"]
       11 SETTABLEKS                       R1 R0 K1 ["AssetType"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K15 ["Name"]
       16 SETTABLEKS                       R1 R0 K2 ["AssetName"]
       18 LOADN                            R1 0
       19 SETTABLEKS                       R1 R0 K3 ["AssetId"]
       21 LOADK                            R1 K16 ["model/x-rbxm"]
       22 SETTABLEKS                       R1 R0 K4 ["ContentType"]
       24 GETUPVAL                         R1 1
       25 NAMECALL                         R1 R1 K17 ["GetUserId"]
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K5 ["CreatorId"]
       30 GETIMPORT                        R1 K20 [Enum.AssetCreatorType.User]
       32 SETTABLEKS                       R1 R0 K6 ["CreatorType"]
       34 LOADK                            R1 K21 [""]
       35 SETTABLEKS                       R1 R0 K7 ["Description"]
       37 LOADK                            R1 K21 [""]
       38 SETTABLEKS                       R1 R0 K8 ["Token"]
       40 GETUPVAL                         R1 2
       41 GETUPVAL                         R3 3
       42 MOVE                             R4 R0
       43 NAMECALL                         R1 R1 K22 ["CreateAssetOrAssetVersionAndPollAssetWithTelemetryAsyncWithAddParam"]
       45 CALL                             R1 3 -1
       46 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsStudio"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIF                           R1 ; [+8]
        9 GETIMPORT                        R1 K2 [pcall]
       11 DUPCLOSURE                       R2 K3 [PROTO_0]
       12 CAPTURE                          UPVAL U2
       13 CALL                             R1 1 2
       14 AND                              R3 R1 R2
       15 JUMPIF                           R3 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 3
       18 CALL                             R1 0 1
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 4
       22 NAMECALL                         R1 R1 K4 ["Get"]
       24 CALL                             R1 1 3
       25 FORGPREP                         R1
       26 GETIMPORT                        R6 K2 [pcall]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R5
       31 CALL                             R6 1 2
       32 JUMPIFNOT                        R6 ; [+15]
       33 JUMPIFNOT                        R7 ; [+14]
       34 GETIMPORT                        R8 K2 [pcall]
       36 NEWCLOSURE                       R9 P2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R7
       41 CALL                             R8 1 2
       42 JUMPIF                           R8 ; [+10]
       43 GETIMPORT                        R10 K6 [warn]
       45 MOVE                             R11 R9
       46 CALL                             R10 1 0
       47 JUMP                             ; [+5]
       48 GETIMPORT                        R8 K6 [warn]
       50 MOVE                             R9 R6
       51 MOVE                             R10 R7
       52 CALL                             R8 2 0
       53 FORGLOOP                         R1 2 ; [-28]
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K8 ["CliAdapter"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K10 ["GetService"]
       25 LOADK                            R4 K11 ["StudioAssetService"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R1 K10 ["GetService"]
       29 LOADK                            R5 K12 ["PublishService"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R1 K10 ["GetService"]
       33 LOADK                            R6 K13 ["StudioService"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R1 K10 ["GetService"]
       37 LOADK                            R7 K14 ["RunService"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R1 K10 ["GetService"]
       41 LOADK                            R8 K15 ["Selection"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R12 R0 K6 ["Src"]
       47 GETTABLEKS                       R11 R12 K16 ["Flags"]
       49 GETTABLEKS                       R10 R11 K17 ["FFlagCLI88299"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R8 R9 K18 ["Get"]
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R13 R0 K6 ["Src"]
       58 GETTABLEKS                       R12 R13 K16 ["Flags"]
       60 GETTABLEKS                       R11 R12 K19 ["FFlagRunCommandsInCodeAssist"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R9 R10 K18 ["Get"]
       65 DUPCLOSURE                       R10 K20 [PROTO_3]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 RETURN                           R10 1
