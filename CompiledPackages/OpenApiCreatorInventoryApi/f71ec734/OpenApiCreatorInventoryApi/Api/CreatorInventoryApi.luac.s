PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["maxPageSize"]
       22 GETTABLEKS                       R4 R0 K9 ["maxPageSize"]
       24 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["pageToken"]
       28 GETTABLEKS                       R4 R0 K11 ["pageToken"]
       30 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K12 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["maxPageSize"]
       22 GETTABLEKS                       R4 R0 K9 ["maxPageSize"]
       24 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["pageToken"]
       28 GETTABLEKS                       R4 R0 K11 ["pageToken"]
       30 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K12 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["maxPageSize"]
       22 GETTABLEKS                       R4 R0 K9 ["maxPageSize"]
       24 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["pageToken"]
       28 GETTABLEKS                       R4 R0 K11 ["pageToken"]
       30 NAMECALL                         R1 R1 K10 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K12 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/-/creator-inventory-items:search"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["query"]
       16 GETTABLEKS                       R4 R0 K6 ["query"]
       18 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K8 ["filter"]
       22 GETTABLEKS                       R4 R0 K8 ["filter"]
       24 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K9 ["maxPageSize"]
       28 GETTABLEKS                       R4 R0 K9 ["maxPageSize"]
       30 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K10 ["pageToken"]
       34 GETTABLEKS                       R4 R0 K10 ["pageToken"]
       36 NAMECALL                         R1 R1 K7 ["addQueryParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 2
       40 NAMECALL                         R1 R1 K11 ["sendAsync"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["PATCH"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R4 R0 K11 ["body"]
       30 NAMECALL                         R1 R1 K12 ["setBody"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K13 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["DELETE"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 NAMECALL                         R1 R1 K11 ["sendAsync"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["PATCH"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R4 R0 K11 ["body"]
       30 NAMECALL                         R1 R1 K12 ["setBody"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K13 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["DELETE"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 NAMECALL                         R1 R1 K11 ["sendAsync"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["PATCH"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R4 R0 K11 ["body"]
       30 NAMECALL                         R1 R1 K12 ["setBody"]
       32 CALL                             R1 3 1
       33 GETUPVAL                         R3 2
       34 NAMECALL                         R1 R1 K13 ["sendAsync"]
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["DELETE"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{creatorInventoryItemId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 NAMECALL                         R1 R1 K11 ["sendAsync"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{creatorInventoryItemId}:listChildren"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["maxPageSize"]
       28 GETTABLEKS                       R4 R0 K11 ["maxPageSize"]
       30 NAMECALL                         R1 R1 K12 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K13 ["pageToken"]
       34 GETTABLEKS                       R4 R0 K13 ["pageToken"]
       36 NAMECALL                         R1 R1 K12 ["addQueryParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 2
       40 NAMECALL                         R1 R1 K14 ["sendAsync"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{creatorInventoryItemId}:listChildren"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["maxPageSize"]
       28 GETTABLEKS                       R4 R0 K11 ["maxPageSize"]
       30 NAMECALL                         R1 R1 K12 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K13 ["pageToken"]
       34 GETTABLEKS                       R4 R0 K13 ["pageToken"]
       36 NAMECALL                         R1 R1 K12 ["addQueryParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 2
       40 NAMECALL                         R1 R1 K14 ["sendAsync"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{creatorInventoryItemId}:listChildren"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{creatorInventoryItemId}"]
       22 GETTABLEKS                       R4 R0 K10 ["creatorInventoryItemId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["maxPageSize"]
       28 GETTABLEKS                       R4 R0 K11 ["maxPageSize"]
       30 NAMECALL                         R1 R1 K12 ["addQueryParameter"]
       32 CALL                             R1 3 1
       33 LOADK                            R3 K13 ["pageToken"]
       34 GETTABLEKS                       R4 R0 K13 ["pageToken"]
       36 NAMECALL                         R1 R1 K12 ["addQueryParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 2
       40 NAMECALL                         R1 R1 K14 ["sendAsync"]
       42 CALL                             R1 2 -1
       43 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items:move"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 3
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items:move"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 3
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items:move"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 3
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items:batchGetParents"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 3
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items:batchGetParents"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 3
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items:batchGetParents"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K9 ["body"]
       24 NAMECALL                         R1 R1 K10 ["setBody"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 3
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PathMetadata"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Models"]
       23 GETTABLEKS                       R5 R5 K10 ["ListCreatorInventoryItemsResponse"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Models"]
       30 GETTABLEKS                       R6 R6 K11 ["CreatorInventoryItem"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Models"]
       37 GETTABLEKS                       R7 R7 K12 ["SearchCreatorInventoryItemsResponse"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Models"]
       44 GETTABLEKS                       R8 R8 K13 ["ListCreatorInventoryItemChildrenResponse"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Models"]
       51 GETTABLEKS                       R9 R9 K14 ["MoveCreatorInventoryItemsRequest"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Models"]
       58 GETTABLEKS                       R10 R10 K15 ["MoveCreatorInventoryItemsResponse"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Models"]
       65 GETTABLEKS                       R11 R11 K16 ["BatchGetParentCreatorInventoryItemsRequest"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Models"]
       72 GETTABLEKS                       R12 R12 K17 ["BatchGetParentCreatorInventoryItemsResponse"]
       74 CALL                             R11 1 1
       75 NEWTABLE                         R12 32 0
       77 DUPCLOSURE                       R13 K18 [PROTO_0]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R13 R12 K19 ["getCreatorInventoryListUserCreatorInventoryItemsAsync"]
       83 DUPCLOSURE                       R13 K20 [PROTO_1]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R5
       87 SETTABLEKS                       R13 R12 K21 ["postCreatorInventoryCreateUserCreatorInventoryItemAsync"]
       89 DUPCLOSURE                       R13 K22 [PROTO_2]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R13 R12 K23 ["getCreatorInventoryListGroupCreatorInventoryItemsAsync"]
       95 DUPCLOSURE                       R13 K24 [PROTO_3]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R13 R12 K25 ["postCreatorInventoryCreateGroupCreatorInventoryItemAsync"]
      101 DUPCLOSURE                       R13 K26 [PROTO_4]
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R4
      105 SETTABLEKS                       R13 R12 K27 ["getCreatorInventoryListUniverseCreatorInventoryItemsAsync"]
      107 DUPCLOSURE                       R13 K28 [PROTO_5]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R13 R12 K29 ["postCreatorInventoryCreateUniverseCreatorInventoryItemAsync"]
      113 DUPCLOSURE                       R13 K30 [PROTO_6]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R13 R12 K31 ["getCreatorInventorySearchCreatorInventoryItemsAsync"]
      119 DUPCLOSURE                       R13 K32 [PROTO_7]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R5
      123 SETTABLEKS                       R13 R12 K33 ["getCreatorInventoryGetUserCreatorInventoryItemAsync"]
      125 DUPCLOSURE                       R13 K34 [PROTO_8]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R5
      129 SETTABLEKS                       R13 R12 K35 ["patchCreatorInventoryUpdateUserCreatorInventoryItemAsync"]
      131 DUPCLOSURE                       R13 K36 [PROTO_9]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R3
      134 SETTABLEKS                       R13 R12 K37 ["deleteCreatorInventoryDeleteUserCreatorInventoryItemAsync"]
      136 DUPCLOSURE                       R13 K38 [PROTO_10]
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R5
      140 SETTABLEKS                       R13 R12 K39 ["getCreatorInventoryGetGroupCreatorInventoryItemAsync"]
      142 DUPCLOSURE                       R13 K40 [PROTO_11]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R5
      146 SETTABLEKS                       R13 R12 K41 ["patchCreatorInventoryUpdateGroupCreatorInventoryItemAsync"]
      148 DUPCLOSURE                       R13 K42 [PROTO_12]
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R3
      151 SETTABLEKS                       R13 R12 K43 ["deleteCreatorInventoryDeleteGroupCreatorInventoryItemAsync"]
      153 DUPCLOSURE                       R13 K44 [PROTO_13]
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R5
      157 SETTABLEKS                       R13 R12 K45 ["getCreatorInventoryGetUniverseCreatorInventoryItemAsync"]
      159 DUPCLOSURE                       R13 K46 [PROTO_14]
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R5
      163 SETTABLEKS                       R13 R12 K47 ["patchCreatorInventoryUpdateUniverseCreatorInventoryItemAsync"]
      165 DUPCLOSURE                       R13 K48 [PROTO_15]
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R3
      168 SETTABLEKS                       R13 R12 K49 ["deleteCreatorInventoryDeleteUniverseCreatorInventoryItemAsync"]
      170 DUPCLOSURE                       R13 K50 [PROTO_16]
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R7
      174 SETTABLEKS                       R13 R12 K51 ["getCreatorInventoryListUserCreatorInventoryItemChildrenAsync"]
      176 DUPCLOSURE                       R13 K52 [PROTO_17]
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R7
      180 SETTABLEKS                       R13 R12 K53 ["getCreatorInventoryListGroupCreatorInventoryItemChildrenAsync"]
      182 DUPCLOSURE                       R13 K54 [PROTO_18]
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R7
      186 SETTABLEKS                       R13 R12 K55 ["getCreatorInventoryListUniverseCreatorInventoryItemChildrenAsync"]
      188 DUPCLOSURE                       R13 K56 [PROTO_19]
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R9
      193 SETTABLEKS                       R13 R12 K57 ["postCreatorInventoryMoveUserCreatorInventoryItemsAsync"]
      195 DUPCLOSURE                       R13 K58 [PROTO_20]
      196 CAPTURE                          VAL R2
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R9
      200 SETTABLEKS                       R13 R12 K59 ["postCreatorInventoryMoveGroupCreatorInventoryItemsAsync"]
      202 DUPCLOSURE                       R13 K60 [PROTO_21]
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R9
      207 SETTABLEKS                       R13 R12 K61 ["postCreatorInventoryMoveUniverseCreatorInventoryItemsAsync"]
      209 DUPCLOSURE                       R13 K62 [PROTO_22]
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R11
      214 SETTABLEKS                       R13 R12 K63 ["postCreatorInventoryBatchGetParentUserCreatorInventoryItemsAsync"]
      216 DUPCLOSURE                       R13 K64 [PROTO_23]
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R11
      221 SETTABLEKS                       R13 R12 K65 ["postCreatorInventoryBatchGetParentGroupCreatorInventoryItemsAsync"]
      223 DUPCLOSURE                       R13 K66 [PROTO_24]
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R3
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R11
      228 SETTABLEKS                       R13 R12 K67 ["postCreatorInventoryBatchGetParentUniverseCreatorInventoryItemsAsync"]
      230 GETIMPORT                        R13 K70 [table.freeze]
      232 MOVE                             R14 R12
      233 CALL                             R13 1 -1
      234 RETURN                           R13 -1
