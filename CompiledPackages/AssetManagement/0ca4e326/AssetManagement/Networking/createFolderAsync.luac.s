PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["folderItem"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R6 R1 K2 ["path"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to create folder: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["reject"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["ParentScope"]
        3 GETTABLEKS                       R2 R2 K1 ["Id"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["convertScopeTypeToAccountType"]
        8 GETTABLEKS                       R4 R0 K0 ["ParentScope"]
       10 GETTABLEKS                       R4 R4 K3 ["Type"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R0 K4 ["RootScope"]
       15 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       17 GETTABLEKS                       R5 R5 K3 ["Type"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["ScopeType"]
       22 GETTABLEKS                       R6 R6 K6 ["Folder"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+14]
       26 GETTABLEKS                       R5 R0 K0 ["ParentScope"]
       28 GETTABLEKS                       R1 R5 K1 ["Id"]
       30 GETTABLEKS                       R2 R4 K1 ["Id"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K2 ["convertScopeTypeToAccountType"]
       35 GETTABLEKS                       R6 R4 K3 ["Type"]
       37 CALL                             R5 1 1
       38 MOVE                             R3 R5
       39 NEWTABLE                         R5 1 0
       41 GETTABLEKS                       R6 R0 K7 ["PluginSessionId"]
       43 SETTABLEKS                       R6 R5 K8 ["rbx-inventory-session-id"]
       45 DUPTABLE                         R6 K10 [{"folderItem"}]
       46 DUPTABLE                         R7 K12 [{"folder"}]
       47 DUPTABLE                         R8 K15 [{"displayName", "parentFolderId"}]
       48 GETTABLEKS                       R9 R0 K16 ["FolderName"]
       50 SETTABLEKS                       R9 R8 K13 ["displayName"]
       52 SETTABLEKS                       R1 R8 K14 ["parentFolderId"]
       54 SETTABLEKS                       R8 R7 K11 ["folder"]
       56 SETTABLEKS                       R7 R6 K9 ["folderItem"]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K17 ["CreateCreateFolderRequest"]
       61 MOVE                             R8 R2
       62 MOVE                             R9 R3
       63 MOVE                             R10 R6
       64 MOVE                             R11 R5
       65 CALL                             R7 4 1
       66 NAMECALL                         R7 R7 K18 ["makeRequest"]
       68 CALL                             R7 1 1
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R10 K19 [PROTO_1]
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U0
       76 NAMECALL                         R7 R7 K20 ["andThen"]
       78 CALL                             R7 3 -1
       79 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Dash"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Enums"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Networking"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Networking"]
       32 GETTABLEKS                       R6 R6 K11 ["Shared"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Types"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Networking"]
       44 GETTABLEKS                       R8 R8 K12 ["Urls"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Utils"]
       51 GETTABLEKS                       R9 R9 K14 ["convertFolderResponseToItem"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Utils"]
       58 GETTABLEKS                       R10 R10 K15 ["logIfDebug"]
       60 CALL                             R9 1 1
       61 DUPCLOSURE                       R10 K16 [PROTO_2]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R2
       68 RETURN                           R10 1
