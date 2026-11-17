PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/teleport", ["operationId"] = "Teleport.postV1Teleport"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 LOADK                            R3 K9 ["Roblox-Game-Id"]
       14 GETTABLEKS                       R4 R0 K10 ["robloxGameId"]
       16 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       18 CALL                             R1 3 1
       19 LOADK                            R3 K9 ["Roblox-Game-Id"]
       20 GETTABLEKS                       R4 R0 K10 ["robloxGameId"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K12 ["constrain"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K13 ["String"]
       28 DUPTABLE                         R7 K16 [{["format"] = "uuid"}]
       29 CALL                             R5 2 -1
       30 NAMECALL                         R1 R1 K17 ["validate"]
       32 CALL                             R1 -1 1
       33 LOADK                            R3 K18 ["Roblox-Place-Id"]
       34 GETTABLEKS                       R4 R0 K19 ["robloxPlaceId"]
       36 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       38 CALL                             R1 3 1
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R4 R0 K20 ["request"]
       42 NAMECALL                         R1 R1 K21 ["setBody"]
       44 CALL                             R1 3 1
       45 NAMECALL                         R1 R1 K22 ["returns"]
       47 CALL                             R1 1 -1
       48 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["method"], ["pathTemplate"] = "/v1/teleport/authorize", ["operationId"] = "Teleport.postV1TeleportAuthorize"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K7 ["HTTP_METHOD"]
        8 GETTABLEKS                       R4 R4 K8 ["POST"]
       10 SETTABLEKS                       R4 R3 K1 ["method"]
       12 CALL                             R1 2 1
       13 LOADK                            R3 K9 ["Roblox-Universe-Id"]
       14 GETTABLEKS                       R4 R0 K10 ["robloxUniverseId"]
       16 NAMECALL                         R1 R1 K11 ["addHeaderParameter"]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R4 R0 K12 ["request"]
       22 NAMECALL                         R1 R1 K13 ["setBody"]
       24 CALL                             R1 3 1
       25 GETUPVAL                         R3 3
       26 NAMECALL                         R1 R1 K14 ["returns"]
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R1 2 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R2 R1 K0 ["postV1Teleport"]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 SETTABLEKS                       R2 R1 K1 ["postV1TeleportAuthorize"]
       16 GETIMPORT                        R2 K4 [table.freeze]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["../Models/AuthorizeTeleportRequest"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["../Models/AuthorizeTeleportResponse"]
       14 CALL                             R3 1 1
       15 GETIMPORT                        R4 K1 [require]
       17 LOADK                            R5 K6 ["../Models/GroupTeleportRequest"]
       18 CALL                             R4 1 1
       19 NEWTABLE                         R5 1 0
       21 DUPCLOSURE                       R6 K7 [PROTO_2]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R6 R5 K8 ["new"]
       29 GETIMPORT                        R6 K11 [table.freeze]
       31 MOVE                             R7 R5
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1
