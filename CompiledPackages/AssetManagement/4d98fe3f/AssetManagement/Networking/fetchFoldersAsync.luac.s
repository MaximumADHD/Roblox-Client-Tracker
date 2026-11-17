PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Uid"]
        3 GETTABLEKS                       R2 R0 K1 ["responseCode"]
        5 GETTABLEKS                       R3 R0 K2 ["responseBody"]
        7 JUMPIFEQKN                       R2 K3 [200] ; [+7]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["reject"]
       12 MOVE                             R5 R0
       13 CALL                             R4 1 -1
       14 RETURN                           R4 -1
       15 GETTABLEKS                       R5 R3 K5 ["items"]
       17 LENGTH                           R4 R5
       18 JUMPIFNOTEQKN                    R4 K6 [0] ; [+4]
       20 NEWTABLE                         R4 0 0
       22 RETURN                           R4 1
       23 NEWTABLE                         R4 0 0
       25 GETTABLEKS                       R5 R3 K5 ["items"]
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLEKS                       R10 R9 K7 ["folderItem"]
       32 JUMPIFNOT                        R10 ; [+13]
       33 MOVE                             R11 R4
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R13 R9 K7 ["folderItem"]
       37 GETUPVAL                         R14 3
       38 GETTABLEKS                       R15 R9 K8 ["path"]
       40 MOVE                             R16 R8
       41 CALL                             R12 4 -1
       42 FASTCALL                         TABLE_INSERT ; [+2]
       43 GETIMPORT                        R10 K11 [table.insert]
       45 CALL                             R10 -1 0
       46 FORGLOOP                         R5 2 ; [-17]
       48 NEWTABLE                         R5 1 0
       50 SETTABLE                         R4 R5 R1
       51 RETURN                           R5 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"maxPageSize"}]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 SETTABLEKS                       R3 R2 K0 ["maxPageSize"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["convertScopeTypeToAccountType"]
        8 GETTABLEKS                       R4 R1 K3 ["Type"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R5 R0 K3 ["Type"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K4 ["ScopeType"]
       16 GETTABLEKS                       R6 R6 K5 ["Folder"]
       18 JUMPIFNOTEQ                      R5 R6 ; [+4]
       20 GETTABLEKS                       R4 R0 K6 ["Path"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K7 ["CreateGetItemsRequest"]
       27 GETTABLEKS                       R6 R1 K8 ["Id"]
       29 MOVE                             R7 R3
       30 MOVE                             R8 R4
       31 MOVE                             R9 R2
       32 CALL                             R5 4 1
       33 NAMECALL                         R5 R5 K9 ["makeRequest"]
       35 CALL                             R5 1 1
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R1
       41 GETUPVAL                         R8 1
       42 GETTABLEKS                       R8 R8 K10 ["reject"]
       44 NAMECALL                         R5 R5 K11 ["andThen"]
       46 CALL                             R5 3 -1
       47 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Networking"]
       16 GETTABLEKS                       R3 R3 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Networking"]
       23 GETTABLEKS                       R4 R4 K9 ["Shared"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K7 ["Networking"]
       35 GETTABLEKS                       R6 R6 K10 ["Urls"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Utils"]
       42 GETTABLEKS                       R7 R7 K12 ["convertFolderResponseToItem"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K13 ["Flags"]
       49 GETTABLEKS                       R8 R8 K14 ["getFIntAssetManagementFolderPageSize"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K15 [PROTO_1]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 RETURN                           R8 1
