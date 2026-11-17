PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Failed to move items: %*"]
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
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Paths"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K2 [{"path"}]
        8 SETTABLEKS                       R6 R9 K1 ["path"]
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K5 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-10]
       18 DUPTABLE                         R2 K9 [{"originFolderId", "destinationFolderId", "items"}]
       19 GETTABLEKS                       R3 R0 K10 ["Origin"]
       21 SETTABLEKS                       R3 R2 K6 ["originFolderId"]
       23 GETTABLEKS                       R3 R0 K11 ["Destination"]
       25 SETTABLEKS                       R3 R2 K7 ["destinationFolderId"]
       27 SETTABLEKS                       R1 R2 K8 ["items"]
       29 NEWTABLE                         R3 1 0
       31 GETTABLEKS                       R4 R0 K12 ["PluginSessionId"]
       33 SETTABLEKS                       R4 R3 K13 ["rbx-inventory-session-id"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K14 ["convertScopeTypeToAccountType"]
       38 GETTABLEKS                       R5 R0 K15 ["Account"]
       40 GETTABLEKS                       R5 R5 K16 ["Type"]
       42 CALL                             R4 1 1
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K17 ["CreateMoveItemsRequest"]
       46 GETTABLEKS                       R6 R0 K15 ["Account"]
       48 GETTABLEKS                       R6 R6 K18 ["Id"]
       50 MOVE                             R7 R4
       51 MOVE                             R8 R2
       52 MOVE                             R9 R3
       53 CALL                             R5 4 1
       54 NAMECALL                         R5 R5 K19 ["makeRequest"]
       56 CALL                             R5 1 1
       57 DUPCLOSURE                       R7 K20 [PROTO_0]
       58 DUPCLOSURE                       R8 K21 [PROTO_1]
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U0
       62 NAMECALL                         R5 R5 K22 ["andThen"]
       64 CALL                             R5 3 -1
       65 RETURN                           R5 -1

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
       18 GETTABLEKS                       R4 R0 K8 ["Networking"]
       20 GETTABLEKS                       R4 R4 K9 ["Types"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Networking"]
       27 GETTABLEKS                       R5 R5 K10 ["Shared"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Networking"]
       39 GETTABLEKS                       R7 R7 K11 ["Urls"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Utils"]
       46 GETTABLEKS                       R8 R8 K13 ["logIfDebug"]
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K14 [PROTO_2]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 RETURN                           R8 1
