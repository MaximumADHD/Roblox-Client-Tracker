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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
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
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
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
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/users/{userId}/creator-inventory-items/{folderId}:listChildren"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{userId}"]
       16 GETTABLEKS                       R4 R0 K7 ["userId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
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
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["PATCH"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
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

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["DELETE"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/groups/{groupId}/creator-inventory-items/{folderId}:listChildren"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{groupId}"]
       16 GETTABLEKS                       R4 R0 K7 ["groupId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
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

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["PATCH"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
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

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["DELETE"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{folderId}"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
       24 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       26 CALL                             R1 3 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K11 ["sendAsync"]
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["GET"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/universes/{universeId}/creator-inventory-items/{folderId}:listChildren"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 LOADK                            R3 K6 ["{universeId}"]
       16 GETTABLEKS                       R4 R0 K7 ["universeId"]
       18 NAMECALL                         R1 R1 K8 ["addPathParameter"]
       20 CALL                             R1 3 1
       21 LOADK                            R3 K9 ["{folderId}"]
       22 GETTABLEKS                       R4 R0 K10 ["folderId"]
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
       44 GETTABLEKS                       R8 R8 K13 ["MoveCreatorInventoryItemsRequest"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Models"]
       51 GETTABLEKS                       R9 R9 K14 ["MoveCreatorInventoryItemsResponse"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Models"]
       58 GETTABLEKS                       R10 R10 K15 ["BatchGetParentCreatorInventoryItemsRequest"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K9 ["Models"]
       65 GETTABLEKS                       R11 R11 K16 ["BatchGetParentCreatorInventoryItemsResponse"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Models"]
       72 GETTABLEKS                       R12 R12 K17 ["Status"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K9 ["Models"]
       79 GETTABLEKS                       R13 R13 K18 ["ListCreatorInventoryItemChildrenResponse"]
       81 CALL                             R12 1 1
       82 NEWTABLE                         R13 32 0
       84 DUPCLOSURE                       R14 K19 [PROTO_0]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R14 R13 K20 ["getListUserCreatorInventoryItemsAsync"]
       90 DUPCLOSURE                       R14 K21 [PROTO_1]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R14 R13 K22 ["postCreateUserCreatorInventoryItemAsync"]
       96 DUPCLOSURE                       R14 K23 [PROTO_2]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R14 R13 K24 ["getListGroupCreatorInventoryItemsAsync"]
      102 DUPCLOSURE                       R14 K25 [PROTO_3]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R14 R13 K26 ["postCreateGroupCreatorInventoryItemAsync"]
      108 DUPCLOSURE                       R14 K27 [PROTO_4]
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R14 R13 K28 ["getListUniverseCreatorInventoryItemsAsync"]
      114 DUPCLOSURE                       R14 K29 [PROTO_5]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R5
      118 SETTABLEKS                       R14 R13 K30 ["postCreateUniverseCreatorInventoryItemAsync"]
      120 DUPCLOSURE                       R14 K31 [PROTO_6]
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R6
      124 SETTABLEKS                       R14 R13 K32 ["getSearchCreatorInventoryItemsAsync"]
      126 DUPCLOSURE                       R14 K33 [PROTO_7]
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R14 R13 K34 ["postMoveUserCreatorInventoryItemsAsync"]
      133 DUPCLOSURE                       R14 K35 [PROTO_8]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R8
      138 SETTABLEKS                       R14 R13 K36 ["postMoveGroupCreatorInventoryItemsAsync"]
      140 DUPCLOSURE                       R14 K37 [PROTO_9]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R8
      145 SETTABLEKS                       R14 R13 K38 ["postMoveUniverseCreatorInventoryItemsAsync"]
      147 DUPCLOSURE                       R14 K39 [PROTO_10]
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R10
      152 SETTABLEKS                       R14 R13 K40 ["postBatchGetParentUserCreatorInventoryItemsAsync"]
      154 DUPCLOSURE                       R14 K41 [PROTO_11]
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R10
      159 SETTABLEKS                       R14 R13 K42 ["postBatchGetParentGroupCreatorInventoryItemsAsync"]
      161 DUPCLOSURE                       R14 K43 [PROTO_12]
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R10
      166 SETTABLEKS                       R14 R13 K44 ["postBatchGetParentUniverseCreatorInventoryItemsAsync"]
      168 DUPCLOSURE                       R14 K45 [PROTO_13]
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R5
      172 SETTABLEKS                       R14 R13 K46 ["getUserCreatorInventoryItemAsync"]
      174 DUPCLOSURE                       R14 K47 [PROTO_14]
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R5
      178 SETTABLEKS                       R14 R13 K48 ["patchUpdateUserCreatorInventoryItemAsync"]
      180 DUPCLOSURE                       R14 K49 [PROTO_15]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R11
      184 SETTABLEKS                       R14 R13 K50 ["deleteUserCreatorInventoryItemAsync"]
      186 DUPCLOSURE                       R14 K51 [PROTO_16]
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R12
      190 SETTABLEKS                       R14 R13 K52 ["getListUserCreatorInventoryItemChildrenAsync"]
      192 DUPCLOSURE                       R14 K53 [PROTO_17]
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R5
      196 SETTABLEKS                       R14 R13 K54 ["getGroupCreatorInventoryItemAsync"]
      198 DUPCLOSURE                       R14 K55 [PROTO_18]
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R5
      202 SETTABLEKS                       R14 R13 K56 ["patchUpdateGroupCreatorInventoryItemAsync"]
      204 DUPCLOSURE                       R14 K57 [PROTO_19]
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R11
      208 SETTABLEKS                       R14 R13 K58 ["deleteGroupCreatorInventoryItemAsync"]
      210 DUPCLOSURE                       R14 K59 [PROTO_20]
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R12
      214 SETTABLEKS                       R14 R13 K60 ["getListGroupCreatorInventoryItemChildrenAsync"]
      216 DUPCLOSURE                       R14 K61 [PROTO_21]
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R5
      220 SETTABLEKS                       R14 R13 K62 ["getUniverseCreatorInventoryItemAsync"]
      222 DUPCLOSURE                       R14 K63 [PROTO_22]
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R3
      225 CAPTURE                          VAL R5
      226 SETTABLEKS                       R14 R13 K64 ["patchUpdateUniverseCreatorInventoryItemAsync"]
      228 DUPCLOSURE                       R14 K65 [PROTO_23]
      229 CAPTURE                          VAL R2
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R11
      232 SETTABLEKS                       R14 R13 K66 ["deleteUniverseCreatorInventoryItemAsync"]
      234 DUPCLOSURE                       R14 K67 [PROTO_24]
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R3
      237 CAPTURE                          VAL R12
      238 SETTABLEKS                       R14 R13 K68 ["getListUniverseCreatorInventoryItemChildrenAsync"]
      240 GETIMPORT                        R14 K71 [table.freeze]
      242 MOVE                             R15 R13
      243 CALL                             R14 1 -1
      244 RETURN                           R14 -1
