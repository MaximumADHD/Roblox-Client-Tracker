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
        3 DUPTABLE                         R1 K3 [{"Pattern", "SubKey", "getArgs"}]
        4 LOADK                            R2 K4 ["would exceed the maximum folders allowed:"]
        5 SETTABLEKS                       R2 R1 K0 ["Pattern"]
        7 LOADK                            R2 K5 ["ExceedMaxFolders"]
        8 SETTABLEKS                       R2 R1 K1 ["SubKey"]
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 SETTABLEKS                       R2 R1 K2 ["getArgs"]
       13 DUPTABLE                         R2 K3 [{"Pattern", "SubKey", "getArgs"}]
       14 LOADK                            R3 K7 ["would exceed the maximum folders per scope"]
       15 SETTABLEKS                       R3 R2 K0 ["Pattern"]
       17 LOADK                            R3 K8 ["ExceedMaxFoldersInAccount"]
       18 SETTABLEKS                       R3 R2 K1 ["SubKey"]
       20 DUPCLOSURE                       R3 K9 [PROTO_1]
       21 SETTABLEKS                       R3 R2 K2 ["getArgs"]
       23 DUPTABLE                         R3 K3 [{"Pattern", "SubKey", "getArgs"}]
       24 LOADK                            R4 K10 ["would exceed the maximum folder depth"]
       25 SETTABLEKS                       R4 R3 K0 ["Pattern"]
       27 LOADK                            R4 K11 ["ExceedMaxFolderDepth"]
       28 SETTABLEKS                       R4 R3 K1 ["SubKey"]
       30 DUPCLOSURE                       R4 K12 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K2 ["getArgs"]
       33 SETLIST                          R0 R1 3 [1]
       35 NEWTABLE                         R1 0 11
       37 DUPTABLE                         R2 K3 [{"Pattern", "SubKey", "getArgs"}]
       38 LOADK                            R3 K13 ["Number of folders to move"]
       39 SETTABLEKS                       R3 R2 K0 ["Pattern"]
       41 LOADK                            R3 K14 ["MovingTooManyFolders"]
       42 SETTABLEKS                       R3 R2 K1 ["SubKey"]
       44 DUPCLOSURE                       R3 K15 [PROTO_3]
       45 SETTABLEKS                       R3 R2 K2 ["getArgs"]
       47 DUPTABLE                         R3 K3 [{"Pattern", "SubKey", "getArgs"}]
       48 LOADK                            R4 K16 ["These folder IDs were not found"]
       49 SETTABLEKS                       R4 R3 K0 ["Pattern"]
       51 LOADK                            R4 K17 ["FoldersNotFound"]
       52 SETTABLEKS                       R4 R3 K1 ["SubKey"]
       54 DUPCLOSURE                       R4 K18 [PROTO_4]
       55 SETTABLEKS                       R4 R3 K2 ["getArgs"]
       57 DUPTABLE                         R4 K19 [{"Pattern", "SubKey"}]
       58 LOADK                            R5 K20 ["These folder IDs does not belong to"]
       59 SETTABLEKS                       R5 R4 K0 ["Pattern"]
       61 LOADK                            R5 K21 ["FoldersNotInScope"]
       62 SETTABLEKS                       R5 R4 K1 ["SubKey"]
       64 DUPTABLE                         R5 K3 [{"Pattern", "SubKey", "getArgs"}]
       65 LOADK                            R6 K22 ["These folder IDs are not in"]
       66 SETTABLEKS                       R6 R5 K0 ["Pattern"]
       68 LOADK                            R6 K23 ["FoldersNotInOriginFolder"]
       69 SETTABLEKS                       R6 R5 K1 ["SubKey"]
       71 DUPCLOSURE                       R6 K24 [PROTO_5]
       72 SETTABLEKS                       R6 R5 K2 ["getArgs"]
       74 DUPTABLE                         R6 K19 [{"Pattern", "SubKey"}]
       75 LOADK                            R7 K25 ["into itself"]
       76 SETTABLEKS                       R7 R6 K0 ["Pattern"]
       78 LOADK                            R7 K26 ["CannotMoveIntoItself"]
       79 SETTABLEKS                       R7 R6 K1 ["SubKey"]
       81 DUPTABLE                         R7 K3 [{"Pattern", "SubKey", "getArgs"}]
       82 LOADK                            R8 K27 ["Moving these folders would exceed"]
       83 SETTABLEKS                       R8 R7 K0 ["Pattern"]
       85 LOADK                            R8 K28 ["ExceedMaxFoldersInDestination"]
       86 SETTABLEKS                       R8 R7 K1 ["SubKey"]
       88 DUPCLOSURE                       R8 K29 [PROTO_6]
       89 SETTABLEKS                       R8 R7 K2 ["getArgs"]
       91 DUPTABLE                         R8 K3 [{"Pattern", "SubKey", "getArgs"}]
       92 LOADK                            R9 K30 ["Moving these items would exceed"]
       93 SETTABLEKS                       R9 R8 K0 ["Pattern"]
       95 LOADK                            R9 K28 ["ExceedMaxFoldersInDestination"]
       96 SETTABLEKS                       R9 R8 K1 ["SubKey"]
       98 DUPCLOSURE                       R9 K31 [PROTO_7]
       99 SETTABLEKS                       R9 R8 K2 ["getArgs"]
      101 DUPTABLE                         R9 K3 [{"Pattern", "SubKey", "getArgs"}]
      102 LOADK                            R10 K32 ["Number of assets to move"]
      103 SETTABLEKS                       R10 R9 K0 ["Pattern"]
      105 LOADK                            R10 K33 ["MovingTooManyAssets"]
      106 SETTABLEKS                       R10 R9 K1 ["SubKey"]
      108 DUPCLOSURE                       R10 K34 [PROTO_8]
      109 SETTABLEKS                       R10 R9 K2 ["getArgs"]
      111 DUPTABLE                         R10 K3 [{"Pattern", "SubKey", "getArgs"}]
      112 LOADK                            R11 K35 ["These asset IDs are not in"]
      113 SETTABLEKS                       R11 R10 K0 ["Pattern"]
      115 LOADK                            R11 K36 ["AssetsNotInOriginFolder"]
      116 SETTABLEKS                       R11 R10 K1 ["SubKey"]
      118 DUPCLOSURE                       R11 K37 [PROTO_9]
      119 SETTABLEKS                       R11 R10 K2 ["getArgs"]
      121 DUPTABLE                         R11 K19 [{"Pattern", "SubKey"}]
      122 LOADK                            R12 K38 ["would create a cycle"]
      123 SETTABLEKS                       R12 R11 K0 ["Pattern"]
      125 LOADK                            R12 K39 ["CycleDetected"]
      126 SETTABLEKS                       R12 R11 K1 ["SubKey"]
      128 DUPTABLE                         R12 K3 [{"Pattern", "SubKey", "getArgs"}]
      129 LOADK                            R13 K10 ["would exceed the maximum folder depth"]
      130 SETTABLEKS                       R13 R12 K0 ["Pattern"]
      132 LOADK                            R13 K11 ["ExceedMaxFolderDepth"]
      133 SETTABLEKS                       R13 R12 K1 ["SubKey"]
      135 DUPCLOSURE                       R13 K40 [PROTO_10]
      136 SETTABLEKS                       R13 R12 K2 ["getArgs"]
      138 SETLIST                          R1 R2 11 [1]
      140 DUPCLOSURE                       R2 K41 [PROTO_11]
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R1
      143 RETURN                           R2 1
