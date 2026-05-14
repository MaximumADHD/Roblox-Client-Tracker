PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/places"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Params"}]
        8 SETTABLEKS                       R2 R8 K4 ["Params"]
       10 NAMECALL                         R4 R3 K6 ["get"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/places/"]
        4 MOVE                             R9 R1
        5 CONCAT                           R7 R8 R9
        6 DUPTABLE                         R8 K4 [{"Body"}]
        7 SETTABLEKS                       R2 R8 K3 ["Body"]
        9 NAMECALL                         R4 R3 K5 ["patch"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETIMPORT                        R2 K2 [pairs]
        4 GETTABLEKS                       R3 R1 K3 ["data"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETUPVAL                         R7 0
        9 SETTABLEKS                       R7 R6 K4 ["index"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R8 R6 K5 ["id"]
       14 SETTABLE                         R6 R7 R8
       15 GETUPVAL                         R8 0
       16 ADDK                             R7 R8 K6 [1]
       17 SETUPVAL                         R7 0
       18 FORGLOOP                         R2 2 ; [-11]
       20 GETTABLEKS                       R2 R1 K7 ["nextPageCursor"]
       22 JUMPIFNOTEQKNIL                  R2 ; [+2]
       24 LOADK                            R2 K8 [""]
       25 GETUPVAL                         R3 1
       26 MOVE                             R4 R2
       27 GETUPVAL                         R5 0
       28 RETURN                           R3 3

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 JUMPIFNOTEQKNIL                  R3 ; [+3]
        4 LOADN                            R5 1
        5 JUMP                             ; [+1]
        6 ADDK                             R5 R3 K0 [1]
        7 DUPTABLE                         R6 K5 [{"limit", "sortOrder", "cursor", "extendedSettings"}]
        8 LOADN                            R7 10
        9 SETTABLEKS                       R7 R6 K1 ["limit"]
       11 LOADK                            R7 K6 ["Asc"]
       12 SETTABLEKS                       R7 R6 K2 ["sortOrder"]
       14 SETTABLEKS                       R2 R6 K3 ["cursor"]
       16 LOADB                            R7 1
       17 SETTABLEKS                       R7 R6 K4 ["extendedSettings"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K7 ["resolve"]
       22 MOVE                             R10 R1
       23 MOVE                             R11 R6
       24 NAMECALL                         R8 R0 K8 ["placesV2GET"]
       26 CALL                             R8 3 -1
       27 CALL                             R7 -1 1
       28 NEWCLOSURE                       R9 P0
       29 CAPTURE                          REF R5
       30 CAPTURE                          VAL R4
       31 NAMECALL                         R7 R7 K9 ["andThen"]
       33 CALL                             R7 2 -1
       34 CLOSEUPVALS                      R5
       35 RETURN                           R7 -1

PROTO_5:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"name"}]
        2 SETTABLEKS                       R2 R6 K0 ["name"]
        4 NAMECALL                         R3 R0 K2 ["placesV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"maxPlayerCount"}]
        2 SETTABLEKS                       R2 R6 K0 ["maxPlayerCount"]
        4 NAMECALL                         R3 R0 K2 ["placesV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"allowCopying"}]
        2 SETTABLEKS                       R2 R6 K0 ["allowCopying"]
        4 NAMECALL                         R3 R0 K2 ["placesV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"socialSlotType"}]
        2 SETTABLEKS                       R2 R6 K0 ["socialSlotType"]
        4 NAMECALL                         R3 R0 K2 ["placesV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"customSocialSlotsCount"}]
        2 SETTABLEKS                       R2 R6 K0 ["customSocialSlotsCount"]
        4 NAMECALL                         R3 R0 K2 ["placesV2PATCH"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R3 R3 K3 ["await"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v1/assets/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/published-versions"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_11:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["assetPublishVersionV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R1 R1 K7 ["Util"]
       20 GETTABLEKS                       R1 R1 K8 ["Promise"]
       22 NEWTABLE                         R2 16 0
       24 SETTABLEKS                       R2 R2 K9 ["__index"]
       26 DUPCLOSURE                       R3 K10 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R3 R2 K11 ["new"]
       30 DUPCLOSURE                       R3 K12 [PROTO_1]
       31 SETTABLEKS                       R3 R2 K13 ["placesV2GET"]
       33 DUPCLOSURE                       R3 K14 [PROTO_2]
       34 SETTABLEKS                       R3 R2 K15 ["placesV2PATCH"]
       36 DUPCLOSURE                       R3 K16 [PROTO_4]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R3 R2 K17 ["getPlaces"]
       40 DUPCLOSURE                       R3 K18 [PROTO_5]
       41 SETTABLEKS                       R3 R2 K19 ["setName"]
       43 DUPCLOSURE                       R3 K20 [PROTO_6]
       44 SETTABLEKS                       R3 R2 K21 ["setMaxPlayerCount"]
       46 DUPCLOSURE                       R3 K22 [PROTO_7]
       47 SETTABLEKS                       R3 R2 K23 ["setAllowCopying"]
       49 DUPCLOSURE                       R3 K24 [PROTO_8]
       50 SETTABLEKS                       R3 R2 K25 ["setSocialSlotType"]
       52 DUPCLOSURE                       R3 K26 [PROTO_9]
       53 SETTABLEKS                       R3 R2 K27 ["setCustomSocialSlotsCount"]
       55 DUPCLOSURE                       R3 K28 [PROTO_10]
       56 SETTABLEKS                       R3 R2 K29 ["assetPublishVersionV1GET"]
       58 DUPCLOSURE                       R3 K30 [PROTO_11]
       59 SETTABLEKS                       R3 R2 K31 ["getAssetPublishedVersions"]
       61 RETURN                           R2 1
