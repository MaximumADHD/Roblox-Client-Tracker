PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["__metadataCache"]
        8 GETUPVAL                         R4 0
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K3 [setmetatable]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v1/universes/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 NAMECALL                         R3 R2 K3 ["get"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["__metadataCache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+40]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["universesV1GET"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K2 ["await"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R4 R0 K0 ["__metadataCache"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIF                           R3 ; [+29]
       15 GETTABLEKS                       R3 R2 K3 ["responseBody"]
       17 GETTABLEKS                       R4 R0 K0 ["__metadataCache"]
       19 DUPTABLE                         R5 K9 [{"name", "rootPlaceId", "creatorId", "creatorName", "creatorType"}]
       20 GETTABLEKS                       R6 R3 K4 ["name"]
       22 SETTABLEKS                       R6 R5 K4 ["name"]
       24 GETTABLEKS                       R6 R3 K5 ["rootPlaceId"]
       26 SETTABLEKS                       R6 R5 K5 ["rootPlaceId"]
       28 GETTABLEKS                       R6 R3 K10 ["creatorTargetId"]
       30 SETTABLEKS                       R6 R5 K6 ["creatorId"]
       32 GETTABLEKS                       R6 R3 K7 ["creatorName"]
       34 SETTABLEKS                       R6 R5 K7 ["creatorName"]
       36 GETIMPORT                        R7 K13 [Enum.CreatorType]
       38 GETTABLEKS                       R8 R3 K8 ["creatorType"]
       40 GETTABLE                         R6 R7 R8
       41 SETTABLEKS                       R6 R5 K8 ["creatorType"]
       43 SETTABLE                         R5 R4 R1
       44 GETTABLEKS                       R3 R0 K0 ["__metadataCache"]
       46 GETTABLE                         R2 R3 R1
       47 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getUniverseMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["name"]
        6 RETURN                           R3 1

PROTO_4:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getUniverseMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["rootPlaceId"]
        6 RETURN                           R3 1

PROTO_5:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getUniverseMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["creatorId"]
        6 RETURN                           R3 1

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getUniverseMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["creatorName"]
        6 RETURN                           R3 1

PROTO_7:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["getUniverseMetadata"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K1 ["creatorType"]
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["universesV1GET"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["getUniverseMetadata"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["getName"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["getRootPlace"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["getCreatorId"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["getCreatorName"]
       27 DUPCLOSURE                       R1 K15 [PROTO_7]
       28 SETTABLEKS                       R1 R0 K16 ["getCreatorType"]
       30 RETURN                           R0 1
