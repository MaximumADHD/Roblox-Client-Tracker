PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R5 R0 K0 ["responseBody"]
        3 GETTABLEKS                       R4 R5 K1 ["data"]
        5 GETTABLEN                        R3 R4 1
        6 GETTABLEKS                       R2 R3 K2 ["id"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Unable to retrieve details of experience"]
        3 GETTABLEKS                       R3 R0 K3 ["responseBody"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R6 R1 K0 ["Develop"]
        2 GETTABLEKS                       R5 R6 K1 ["V2"]
        4 GETTABLEKS                       R4 R5 K2 ["Universes"]
        6 GETTABLEKS                       R3 R4 K3 ["places"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 NAMECALL                         R3 R3 K4 ["makeRequest"]
       12 CALL                             R3 1 1
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R2
       17 NAMECALL                         R3 R3 K5 ["andThen"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 0
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K1 [game]
        6 LOADK                            R4 K2 ["AsyncRenamesUsedInLuaApps"]
        7 NAMECALL                         R2 R2 K3 ["GetEngineFeature"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETUPVAL                         R1 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K4 ["GetProductInfoAsync"]
       15 CALL                             R1 2 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R1 1
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K5 ["GetProductInfo"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 0
       23 DUPTABLE                         R3 K9 [{"experienceId", "placeId", "name"}]
       24 GETUPVAL                         R4 2
       25 SETTABLEKS                       R4 R3 K6 ["experienceId"]
       27 SETTABLEKS                       R0 R3 K7 ["placeId"]
       29 GETTABLEKS                       R4 R1 K10 ["Name"]
       31 SETTABLEKS                       R4 R3 K8 ["name"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MarketplaceService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 DUPCLOSURE                       R2 K5 [PROTO_4]
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 RETURN                           R2 1
