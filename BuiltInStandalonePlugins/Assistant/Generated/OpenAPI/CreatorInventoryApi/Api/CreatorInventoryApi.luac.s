PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["GET"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/users/{userId}/creator-inventory-items"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K4 ["pathPrefix"]
       11 CALL                             R3 4 1
       12 LOADK                            R5 K5 ["{userId}"]
       13 MOVE                             R6 R0
       14 NAMECALL                         R3 R3 K6 ["addPathParameter"]
       16 CALL                             R3 3 1
       17 LOADK                            R5 K7 ["maxPageSize"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R3 K8 ["addQueryParameter"]
       21 CALL                             R3 3 1
       22 LOADK                            R5 K9 ["pageToken"]
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R3 K8 ["addQueryParameter"]
       26 CALL                             R3 3 1
       27 GETUPVAL                         R5 2
       28 NAMECALL                         R3 R3 K10 ["sendAsync"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["GET"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/groups/{groupId}/creator-inventory-items"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K4 ["pathPrefix"]
       11 CALL                             R3 4 1
       12 LOADK                            R5 K5 ["{groupId}"]
       13 MOVE                             R6 R0
       14 NAMECALL                         R3 R3 K6 ["addPathParameter"]
       16 CALL                             R3 3 1
       17 LOADK                            R5 K7 ["maxPageSize"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R3 K8 ["addQueryParameter"]
       21 CALL                             R3 3 1
       22 LOADK                            R5 K9 ["pageToken"]
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R3 K8 ["addQueryParameter"]
       26 CALL                             R3 3 1
       27 GETUPVAL                         R5 2
       28 NAMECALL                         R3 R3 K10 ["sendAsync"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["GET"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/universes/{universeId}/creator-inventory-items"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R7 R8 K4 ["pathPrefix"]
       11 CALL                             R3 4 1
       12 LOADK                            R5 K5 ["{universeId}"]
       13 MOVE                             R6 R0
       14 NAMECALL                         R3 R3 K6 ["addPathParameter"]
       16 CALL                             R3 3 1
       17 LOADK                            R5 K7 ["maxPageSize"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R3 K8 ["addQueryParameter"]
       21 CALL                             R3 3 1
       22 LOADK                            R5 K9 ["pageToken"]
       23 MOVE                             R6 R2
       24 NAMECALL                         R3 R3 K8 ["addQueryParameter"]
       26 CALL                             R3 3 1
       27 GETUPVAL                         R5 2
       28 NAMECALL                         R3 R3 K10 ["sendAsync"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["buildRequest"]
        3 LOADK                            R5 K1 ["GET"]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K2 ["host"]
        7 LOADK                            R7 K3 ["/v1/-/creator-inventory-items:search"]
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R8 R9 K4 ["pathPrefix"]
       11 CALL                             R4 4 1
       12 LOADK                            R6 K5 ["query"]
       13 MOVE                             R7 R0
       14 NAMECALL                         R4 R4 K6 ["addQueryParameter"]
       16 CALL                             R4 3 1
       17 LOADK                            R6 K7 ["filter"]
       18 MOVE                             R7 R1
       19 NAMECALL                         R4 R4 K6 ["addQueryParameter"]
       21 CALL                             R4 3 1
       22 LOADK                            R6 K8 ["maxPageSize"]
       23 MOVE                             R7 R2
       24 NAMECALL                         R4 R4 K6 ["addQueryParameter"]
       26 CALL                             R4 3 1
       27 LOADK                            R6 K9 ["pageToken"]
       28 MOVE                             R7 R3
       29 NAMECALL                         R4 R4 K6 ["addQueryParameter"]
       31 CALL                             R4 3 1
       32 GETUPVAL                         R6 2
       33 NAMECALL                         R4 R4 K10 ["sendAsync"]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R0 K9 ["PathMetadata"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K7 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R7 K11 ["ListCreatorInventoryItemsResponse"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R8 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R8 K12 ["SearchCreatorInventoryItemsResponse"]
       36 CALL                             R6 1 1
       37 NEWTABLE                         R7 4 0
       39 DUPCLOSURE                       R8 K13 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R8 R7 K14 ["getCreatorInventoryListUserCreatorInventoryItemsAsync"]
       45 DUPCLOSURE                       R8 K15 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R8 R7 K16 ["getCreatorInventoryListGroupCreatorInventoryItemsAsync"]
       51 DUPCLOSURE                       R8 K17 [PROTO_2]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R8 R7 K18 ["getCreatorInventoryListUniverseCreatorInventoryItemsAsync"]
       57 DUPCLOSURE                       R8 K19 [PROTO_3]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R8 R7 K20 ["getCreatorInventorySearchCreatorInventoryItemsAsync"]
       63 GETIMPORT                        R8 K23 [table.freeze]
       65 MOVE                             R9 R7
       66 CALL                             R8 1 -1
       67 RETURN                           R8 -1
