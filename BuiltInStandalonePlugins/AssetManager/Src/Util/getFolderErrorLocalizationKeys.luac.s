PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["Creating a folder under (.+) would exceed the maximum folders allowed: (%d+)"]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+7]
        6 JUMPIFNOT                        R2 ; [+6]
        7 DUPTABLE                         R3 K6 [{"location", "maxFolderCount"}]
        8 SETTABLEKS                       R1 R3 K4 ["location"]
       10 SETTABLEKS                       R2 R3 K5 ["maxFolderCount"]
       12 RETURN                           R3 1
       13 LOADNIL                          R3
       14 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["folders per scope of (%d+)"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 DUPTABLE                         R2 K5 [{"maxFolderCount"}]
        7 SETTABLEKS                       R1 R2 K4 ["maxFolderCount"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["folder depth of (%d+)"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 DUPTABLE                         R2 K5 [{"maxFolderDepth"}]
        7 SETTABLEKS                       R1 R2 K4 ["maxFolderDepth"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["maximum allowed (%d+)"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 DUPTABLE                         R2 K5 [{"maxFolderCount"}]
        7 SETTABLEKS                       R1 R2 K4 ["maxFolderCount"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["were not found: (.+)$"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETIMPORT                        R2 K2 [string.match]
       10 MOVE                             R3 R1
       11 LOADK                            R4 K4 ["^(%d+)"]
       12 CALL                             R2 2 1
       13 JUMPIF                           R2 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 LOADN                            R3 0
       17 GETIMPORT                        R4 K6 [string.gmatch]
       19 MOVE                             R5 R1
       20 LOADK                            R6 K7 [",%s*%d+"]
       21 CALL                             R4 2 3
       22 FORGPREP                         R4
       23 ADDK                             R3 R3 K8 [1]
       24 FORGLOOP                         R4 1 ; [-2]
       26 DUPTABLE                         R4 K11 [{"folderId", "remainingCount"}]
       27 SETTABLEKS                       R2 R4 K9 ["folderId"]
       29 FASTCALL1                        TOSTRING R3 ; [+3]
       30 MOVE                             R6 R3
       31 GETIMPORT                        R5 K13 [tostring]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K10 ["remainingCount"]
       36 RETURN                           R4 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["These folder IDs are not in (.+) %d+:"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 DUPTABLE                         R2 K5 [{"originFolderName"}]
        7 SETTABLEKS                       R1 R2 K4 ["originFolderName"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["maximum folders allowed in ([^:]+): .+ > (%d+)"]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+7]
        6 JUMPIFNOT                        R2 ; [+6]
        7 DUPTABLE                         R3 K6 [{"destinationLabel", "maxItemCount"}]
        8 SETTABLEKS                       R1 R3 K4 ["destinationLabel"]
       10 SETTABLEKS                       R2 R3 K5 ["maxItemCount"]
       12 RETURN                           R3 1
       13 LOADNIL                          R3
       14 RETURN                           R3 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["maximum items allowed in destination folder ([^:]+): .+ > (%d+)"]
        4 CALL                             R1 2 2
        5 JUMPIFNOT                        R1 ; [+7]
        6 JUMPIFNOT                        R2 ; [+6]
        7 DUPTABLE                         R3 K6 [{"destinationLabel", "maxItemCount"}]
        8 SETTABLEKS                       R1 R3 K4 ["destinationLabel"]
       10 SETTABLEKS                       R2 R3 K5 ["maxItemCount"]
       12 RETURN                           R3 1
       13 LOADNIL                          R3
       14 RETURN                           R3 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["maximum allowed (%d+)"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 DUPTABLE                         R2 K5 [{"maxAssetCount"}]
        7 SETTABLEKS                       R1 R2 K4 ["maxAssetCount"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["These asset IDs are not in (.+) %d+:"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 GETIMPORT                        R1 K2 [string.match]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K4 ["These asset IDs are not in (.+) null:"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 DUPTABLE                         R2 K6 [{"originFolderName"}]
       13 SETTABLEKS                       R1 R2 K5 ["originFolderName"]
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["folder depth of (%d+)"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 DUPTABLE                         R2 K5 [{"maxFolderDepth"}]
        7 SETTABLEKS                       R1 R2 K4 ["maxFolderDepth"]
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_11:
        0 JUMPIFNOTEQKS                    R1 K0 ["Create"] ; [+34]
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K3 [string.find]
        8 MOVE                             R8 R0
        9 GETTABLEKS                       R9 R6 K4 ["Pattern"]
       11 LOADN                            R10 1
       12 LOADB                            R11 1
       13 CALL                             R7 4 1
       14 JUMPIFNOT                        R7 ; [+14]
       15 GETTABLEKS                       R8 R6 K5 ["getArgs"]
       17 JUMPIFNOT                        R8 ; [+5]
       18 GETTABLEKS                       R7 R6 K5 ["getArgs"]
       20 MOVE                             R8 R0
       21 CALL                             R7 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R7
       24 LOADK                            R8 K6 ["FolderCreate"]
       25 GETTABLEKS                       R9 R6 K7 ["SubKey"]
       27 MOVE                             R10 R7
       28 RETURN                           R8 3
       29 FORGLOOP                         R2 2 ; [-24]
       31 LOADK                            R2 K6 ["FolderCreate"]
       32 LOADK                            R3 K8 ["GenericError"]
       33 LOADNIL                          R4
       34 RETURN                           R2 3
       35 JUMPIFNOTEQKS                    R1 K9 ["Move"] ; [+34]
       37 GETUPVAL                         R2 1
       38 LOADNIL                          R3
       39 LOADNIL                          R4
       40 FORGPREP                         R2
       41 GETIMPORT                        R7 K3 [string.find]
       43 MOVE                             R8 R0
       44 GETTABLEKS                       R9 R6 K4 ["Pattern"]
       46 LOADN                            R10 1
       47 LOADB                            R11 1
       48 CALL                             R7 4 1
       49 JUMPIFNOT                        R7 ; [+14]
       50 GETTABLEKS                       R8 R6 K5 ["getArgs"]
       52 JUMPIFNOT                        R8 ; [+5]
       53 GETTABLEKS                       R7 R6 K5 ["getArgs"]
       55 MOVE                             R8 R0
       56 CALL                             R7 1 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R7
       59 LOADK                            R8 K10 ["FolderMove"]
       60 GETTABLEKS                       R9 R6 K7 ["SubKey"]
       62 MOVE                             R10 R7
       63 RETURN                           R8 3
       64 FORGLOOP                         R2 2 ; [-24]
       66 LOADK                            R2 K10 ["FolderMove"]
       67 LOADK                            R3 K8 ["GenericError"]
       68 LOADNIL                          R4
       69 RETURN                           R2 3
       70 LOADK                            R2 K11 ["Folders"]
       71 LOADK                            R3 K8 ["GenericError"]
       72 LOADNIL                          R4
       73 RETURN                           R2 3

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 3
        3 DUPTABLE                         R1 K5 [{[1] = "would exceed the maximum folders allowed:", ["SubKey"] = "ExceedMaxFolders", ["getArgs"]}]
        4 DUPCLOSURE                       R2 K6 [PROTO_0]
        5 SETTABLEKS                       R2 R1 K4 ["getArgs"]
        7 DUPTABLE                         R2 K9 [{[1] = "would exceed the maximum folders per scope", ["SubKey"] = "ExceedMaxFoldersInAccount", ["getArgs"]}]
        8 DUPCLOSURE                       R3 K10 [PROTO_1]
        9 SETTABLEKS                       R3 R2 K4 ["getArgs"]
       11 DUPTABLE                         R3 K13 [{[1] = "would exceed the maximum folder depth", ["SubKey"] = "ExceedMaxFolderDepth", ["getArgs"]}]
       12 DUPCLOSURE                       R4 K14 [PROTO_2]
       13 SETTABLEKS                       R4 R3 K4 ["getArgs"]
       15 SETLIST                          R0 R1 3 [1]
       17 NEWTABLE                         R1 0 11
       19 DUPTABLE                         R2 K17 [{[1] = "Number of folders to move", ["SubKey"] = "MovingTooManyFolders", ["getArgs"]}]
       20 DUPCLOSURE                       R3 K18 [PROTO_3]
       21 SETTABLEKS                       R3 R2 K4 ["getArgs"]
       23 DUPTABLE                         R3 K21 [{[1] = "These folder IDs were not found", ["SubKey"] = "FoldersNotFound", ["getArgs"]}]
       24 DUPCLOSURE                       R4 K22 [PROTO_4]
       25 SETTABLEKS                       R4 R3 K4 ["getArgs"]
       27 DUPTABLE                         R4 K25 [{[1] = "These folder IDs does not belong to", ["SubKey"] = "FoldersNotInScope"}]
       28 DUPTABLE                         R5 K28 [{[1] = "These folder IDs are not in", ["SubKey"] = "FoldersNotInOriginFolder", ["getArgs"]}]
       29 DUPCLOSURE                       R6 K29 [PROTO_5]
       30 SETTABLEKS                       R6 R5 K4 ["getArgs"]
       32 DUPTABLE                         R6 K32 [{[1] = "into itself", ["SubKey"] = "CannotMoveIntoItself"}]
       33 DUPTABLE                         R7 K35 [{[1] = "Moving these folders would exceed", ["SubKey"] = "ExceedMaxFoldersInDestination", ["getArgs"]}]
       34 DUPCLOSURE                       R8 K36 [PROTO_6]
       35 SETTABLEKS                       R8 R7 K4 ["getArgs"]
       37 DUPTABLE                         R8 K38 [{[1] = "Moving these items would exceed", ["SubKey"] = "ExceedMaxFoldersInDestination", ["getArgs"]}]
       38 DUPCLOSURE                       R9 K39 [PROTO_7]
       39 SETTABLEKS                       R9 R8 K4 ["getArgs"]
       41 DUPTABLE                         R9 K42 [{[1] = "Number of assets to move", ["SubKey"] = "MovingTooManyAssets", ["getArgs"]}]
       42 DUPCLOSURE                       R10 K43 [PROTO_8]
       43 SETTABLEKS                       R10 R9 K4 ["getArgs"]
       45 DUPTABLE                         R10 K46 [{[1] = "These asset IDs are not in", ["SubKey"] = "AssetsNotInOriginFolder", ["getArgs"]}]
       46 DUPCLOSURE                       R11 K47 [PROTO_9]
       47 SETTABLEKS                       R11 R10 K4 ["getArgs"]
       49 DUPTABLE                         R11 K50 [{[1] = "would create a cycle", ["SubKey"] = "CycleDetected"}]
       50 DUPTABLE                         R12 K13 [{[1] = "would exceed the maximum folder depth", ["SubKey"] = "ExceedMaxFolderDepth", ["getArgs"]}]
       51 DUPCLOSURE                       R13 K51 [PROTO_10]
       52 SETTABLEKS                       R13 R12 K4 ["getArgs"]
       54 SETLIST                          R1 R2 11 [1]
       56 DUPCLOSURE                       R2 K52 [PROTO_11]
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 RETURN                           R2 1
