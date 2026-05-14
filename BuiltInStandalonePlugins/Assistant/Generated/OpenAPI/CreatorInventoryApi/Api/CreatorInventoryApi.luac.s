PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["GET"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/users/{userId}/creator-inventory-items"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K4 ["pathPrefix"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K5 ["baseUrl"]
       14 CALL                             R3 5 1
       15 LOADK                            R5 K6 ["{userId}"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R3 R3 K7 ["addPathParameter"]
       19 CALL                             R3 3 1
       20 LOADK                            R5 K8 ["maxPageSize"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R3 R3 K9 ["addQueryParameter"]
       24 CALL                             R3 3 1
       25 LOADK                            R5 K10 ["pageToken"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K9 ["addQueryParameter"]
       29 CALL                             R3 3 1
       30 GETUPVAL                         R5 2
       31 NAMECALL                         R3 R3 K11 ["sendAsync"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["GET"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/groups/{groupId}/creator-inventory-items"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K4 ["pathPrefix"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K5 ["baseUrl"]
       14 CALL                             R3 5 1
       15 LOADK                            R5 K6 ["{groupId}"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R3 R3 K7 ["addPathParameter"]
       19 CALL                             R3 3 1
       20 LOADK                            R5 K8 ["maxPageSize"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R3 R3 K9 ["addQueryParameter"]
       24 CALL                             R3 3 1
       25 LOADK                            R5 K10 ["pageToken"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K9 ["addQueryParameter"]
       29 CALL                             R3 3 1
       30 GETUPVAL                         R5 2
       31 NAMECALL                         R3 R3 K11 ["sendAsync"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["buildRequest"]
        3 LOADK                            R4 K1 ["GET"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K2 ["host"]
        7 LOADK                            R6 K3 ["/v1/universes/{universeId}/creator-inventory-items"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K4 ["pathPrefix"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K5 ["baseUrl"]
       14 CALL                             R3 5 1
       15 LOADK                            R5 K6 ["{universeId}"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R3 R3 K7 ["addPathParameter"]
       19 CALL                             R3 3 1
       20 LOADK                            R5 K8 ["maxPageSize"]
       21 MOVE                             R6 R1
       22 NAMECALL                         R3 R3 K9 ["addQueryParameter"]
       24 CALL                             R3 3 1
       25 LOADK                            R5 K10 ["pageToken"]
       26 MOVE                             R6 R2
       27 NAMECALL                         R3 R3 K9 ["addQueryParameter"]
       29 CALL                             R3 3 1
       30 GETUPVAL                         R5 2
       31 NAMECALL                         R3 R3 K11 ["sendAsync"]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["buildRequest"]
        3 LOADK                            R5 K1 ["GET"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K2 ["host"]
        7 LOADK                            R7 K3 ["/v1/-/creator-inventory-items:search"]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K4 ["pathPrefix"]
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K5 ["baseUrl"]
       14 CALL                             R4 5 1
       15 LOADK                            R6 K6 ["query"]
       16 MOVE                             R7 R0
       17 NAMECALL                         R4 R4 K7 ["addQueryParameter"]
       19 CALL                             R4 3 1
       20 LOADK                            R6 K8 ["filter"]
       21 MOVE                             R7 R1
       22 NAMECALL                         R4 R4 K7 ["addQueryParameter"]
       24 CALL                             R4 3 1
       25 LOADK                            R6 K9 ["maxPageSize"]
       26 MOVE                             R7 R2
       27 NAMECALL                         R4 R4 K7 ["addQueryParameter"]
       29 CALL                             R4 3 1
       30 LOADK                            R6 K10 ["pageToken"]
       31 MOVE                             R7 R3
       32 NAMECALL                         R4 R4 K7 ["addQueryParameter"]
       34 CALL                             R4 3 1
       35 GETUPVAL                         R6 2
       36 NAMECALL                         R4 R4 K11 ["sendAsync"]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

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
       25 GETTABLEKS                       R6 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R6 K11 ["ListCreatorInventoryItemsResponse"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Models"]
       34 GETTABLEKS                       R7 R7 K12 ["SearchCreatorInventoryItemsResponse"]
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
