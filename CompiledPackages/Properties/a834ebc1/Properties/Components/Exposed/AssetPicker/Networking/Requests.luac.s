PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Develop"]
        3 GETTABLEKS                       R3 R4 K1 ["V1"]
        5 GETTABLEKS                       R2 R3 K2 ["Universes"]
        7 GETTABLEKS                       R1 R2 K3 ["get"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 NAMECALL                         R2 R1 K4 ["makeRequest"]
       13 CALL                             R2 1 1
       14 NAMECALL                         R2 R2 K5 ["await"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["APIS"]
        3 GETTABLEKS                       R3 R4 K1 ["CreatorHomeApi"]
        5 GETTABLEKS                       R2 R3 K2 ["V1"]
        7 GETTABLEKS                       R1 R2 K3 ["groups"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 NAMECALL                         R2 R1 K4 ["makeRequest"]
       13 CALL                             R2 1 1
       14 NAMECALL                         R2 R2 K5 ["await"]
       16 CALL                             R2 1 -1
       17 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["GetUserInfosByUserIdsAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+11]
        7 LOADB                            R3 1
        8 DUPTABLE                         R4 K3 [{"responseBody"}]
        9 DUPTABLE                         R5 K5 [{"displayName"}]
       10 GETTABLEN                        R7 R2 1
       11 GETTABLEKS                       R6 R7 K6 ["DisplayName"]
       13 SETTABLEKS                       R6 R5 K4 ["displayName"]
       15 SETTABLEKS                       R5 R4 K2 ["responseBody"]
       17 RETURN                           R3 2
       18 LOADB                            R3 0
       19 DUPTABLE                         R4 K3 [{"responseBody"}]
       20 DUPTABLE                         R5 K5 [{"displayName"}]
       21 LOADK                            R6 K7 [""]
       22 SETTABLEKS                       R6 R5 K4 ["displayName"]
       24 SETTABLEKS                       R5 R4 K2 ["responseBody"]
       26 RETURN                           R3 2

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["universeItems"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NAMECALL                         R3 R2 K1 ["makeRequest"]
        8 CALL                             R3 1 1
        9 NAMECALL                         R3 R3 K2 ["await"]
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["userItems"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NAMECALL                         R3 R2 K1 ["makeRequest"]
        8 CALL                             R3 1 1
        9 NAMECALL                         R3 R3 K2 ["await"]
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["groupItems"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NAMECALL                         R3 R2 K1 ["makeRequest"]
        8 CALL                             R3 1 1
        9 NAMECALL                         R3 R3 K2 ["await"]
       11 CALL                             R3 1 -1
       12 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["search"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R5 5 1
        9 NAMECALL                         R6 R5 K1 ["makeRequest"]
       11 CALL                             R6 1 1
       12 NAMECALL                         R6 R6 K2 ["await"]
       14 CALL                             R6 1 -1
       15 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.InfoType.Asset]
        4 NAMECALL                         R1 R1 K4 ["GetProductInfoAsync"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MarketplaceService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["Properties"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K9 ["Parent"]
       21 GETIMPORT                        R4 K6 [script]
       23 LOADK                            R6 K10 ["AssetPicker"]
       24 NAMECALL                         R4 R4 K8 ["FindFirstAncestor"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K12 [require]
       29 GETTABLEKS                       R6 R3 K13 ["Networking"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K12 [require]
       34 GETTABLEKS                       R7 R4 K14 ["Types"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R8 R5 K15 ["RobloxAPI"]
       39 GETTABLEKS                       R7 R8 K16 ["new"]
       41 GETTABLEKS                       R10 R5 K17 ["Http"]
       43 GETTABLEKS                       R9 R10 K13 ["Networking"]
       45 GETTABLEKS                       R8 R9 K16 ["new"]
       47 CALL                             R8 0 1
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R9 R7 K18 ["API"]
       51 GETTABLEKS                       R8 R9 K19 ["CreatorInventory"]
       53 DUPCLOSURE                       R9 K20 [PROTO_0]
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R10 K21 [PROTO_1]
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R11 K22 [PROTO_3]
       58 CAPTURE                          VAL R1
       59 DUPCLOSURE                       R12 K23 [PROTO_4]
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R13 K24 [PROTO_5]
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R14 K25 [PROTO_6]
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R15 K26 [PROTO_7]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R16 K27 [PROTO_8]
       68 CAPTURE                          VAL R0
       69 DUPTABLE                         R17 K36 [{"getUniverseScope", "getGroupScopes", "getUserScope", "getUniverseAssetItems", "getUserAssetItems", "getGroupAssetItems", "searchAssetItems", "getAssetProductInfo"}]
       70 SETTABLEKS                       R9 R17 K28 ["getUniverseScope"]
       72 SETTABLEKS                       R10 R17 K29 ["getGroupScopes"]
       74 SETTABLEKS                       R11 R17 K30 ["getUserScope"]
       76 SETTABLEKS                       R12 R17 K31 ["getUniverseAssetItems"]
       78 SETTABLEKS                       R13 R17 K32 ["getUserAssetItems"]
       80 SETTABLEKS                       R14 R17 K33 ["getGroupAssetItems"]
       82 SETTABLEKS                       R15 R17 K34 ["searchAssetItems"]
       84 SETTABLEKS                       R16 R17 K35 ["getAssetProductInfo"]
       86 RETURN                           R17 1
