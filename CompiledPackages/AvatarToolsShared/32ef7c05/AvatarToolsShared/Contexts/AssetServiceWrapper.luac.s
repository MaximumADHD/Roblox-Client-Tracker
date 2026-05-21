PROTO_0:
        0 DUPTABLE                         R2 K7 [{"id", "Name", "description", "bundleType", "Items", "Creator", "product"}]
        1 SETTABLEKS                       R1 R2 K0 ["id"]
        3 LOADK                            R3 K8 ["ROBLOX Boy"]
        4 SETTABLEKS                       R3 R2 K1 ["Name"]
        6 LOADK                            R3 K9 ["A free package awarded to new users on sign up."]
        7 SETTABLEKS                       R3 R2 K2 ["description"]
        9 LOADK                            R3 K10 ["BodyParts"]
       10 SETTABLEKS                       R3 R2 K3 ["bundleType"]
       12 NEWTABLE                         R3 0 6
       14 DUPTABLE                         R4 K14 [{"owned", "id", "name", "type"}]
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K11 ["owned"]
       18 LOADK                            R5 K15 [376530220]
       19 SETTABLEKS                       R5 R4 K0 ["id"]
       21 LOADK                            R5 K16 ["ROBLOX Boy Left Arm"]
       22 SETTABLEKS                       R5 R4 K12 ["name"]
       24 LOADK                            R5 K17 ["Asset"]
       25 SETTABLEKS                       R5 R4 K13 ["type"]
       27 DUPTABLE                         R5 K14 [{"owned", "id", "name", "type"}]
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R5 K11 ["owned"]
       31 LOADK                            R6 K18 [376531012]
       32 SETTABLEKS                       R6 R5 K0 ["id"]
       34 LOADK                            R6 K19 ["ROBLOX Boy Right Arm"]
       35 SETTABLEKS                       R6 R5 K12 ["name"]
       37 LOADK                            R6 K17 ["Asset"]
       38 SETTABLEKS                       R6 R5 K13 ["type"]
       40 DUPTABLE                         R6 K14 [{"owned", "id", "name", "type"}]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R6 K11 ["owned"]
       44 LOADK                            R7 K20 [376531300]
       45 SETTABLEKS                       R7 R6 K0 ["id"]
       47 LOADK                            R7 K21 ["ROBLOX Boy Left Leg"]
       48 SETTABLEKS                       R7 R6 K12 ["name"]
       50 LOADK                            R7 K17 ["Asset"]
       51 SETTABLEKS                       R7 R6 K13 ["type"]
       53 DUPTABLE                         R7 K14 [{"owned", "id", "name", "type"}]
       54 LOADB                            R8 1
       55 SETTABLEKS                       R8 R7 K11 ["owned"]
       57 LOADK                            R8 K22 [376531703]
       58 SETTABLEKS                       R8 R7 K0 ["id"]
       60 LOADK                            R8 K23 ["ROBLOX Boy Right Leg"]
       61 SETTABLEKS                       R8 R7 K12 ["name"]
       63 LOADK                            R8 K17 ["Asset"]
       64 SETTABLEKS                       R8 R7 K13 ["type"]
       66 DUPTABLE                         R8 K14 [{"owned", "id", "name", "type"}]
       67 LOADB                            R9 1
       68 SETTABLEKS                       R9 R8 K11 ["owned"]
       70 LOADK                            R9 K24 [376532000]
       71 SETTABLEKS                       R9 R8 K0 ["id"]
       73 LOADK                            R9 K25 ["ROBLOX Boy Torso"]
       74 SETTABLEKS                       R9 R8 K12 ["name"]
       76 LOADK                            R9 K17 ["Asset"]
       77 SETTABLEKS                       R9 R8 K13 ["type"]
       79 DUPTABLE                         R9 K26 [{"id", "name", "type"}]
       80 LOADK                            R10 K27 [131830044]
       81 SETTABLEKS                       R10 R9 K0 ["id"]
       83 LOADK                            R10 K8 ["ROBLOX Boy"]
       84 SETTABLEKS                       R10 R9 K12 ["name"]
       86 LOADK                            R10 K28 ["UserOutfit"]
       87 SETTABLEKS                       R10 R9 K13 ["type"]
       89 SETLIST                          R3 R4 6 [1]
       91 SETTABLEKS                       R3 R2 K4 ["Items"]
       93 DUPTABLE                         R3 K26 [{"id", "name", "type"}]
       94 LOADN                            R4 1
       95 SETTABLEKS                       R4 R3 K0 ["id"]
       97 LOADK                            R4 K29 ["Roblox"]
       98 SETTABLEKS                       R4 R3 K12 ["name"]
      100 LOADK                            R4 K30 ["User"]
      101 SETTABLEKS                       R4 R3 K13 ["type"]
      103 SETTABLEKS                       R3 R2 K5 ["Creator"]
      105 DUPTABLE                         R3 K36 [{"id", "type", "isPublicDomain", "isForSale", "priceInRobux", "isFree", "noPriceText"}]
      106 LOADK                            R4 K37 [369653750]
      107 SETTABLEKS                       R4 R3 K0 ["id"]
      109 LOADK                            R4 K38 ["productType"]
      110 SETTABLEKS                       R4 R3 K13 ["type"]
      112 LOADB                            R4 1
      113 SETTABLEKS                       R4 R3 K31 ["isPublicDomain"]
      115 LOADB                            R4 0
      116 SETTABLEKS                       R4 R3 K32 ["isForSale"]
      118 LOADK                            R4 K39 ["null"]
      119 SETTABLEKS                       R4 R3 K33 ["priceInRobux"]
      121 LOADB                            R4 1
      122 SETTABLEKS                       R4 R3 K34 ["isFree"]
      124 LOADK                            R4 K40 ["Free"]
      125 SETTABLEKS                       R4 R3 K35 ["noPriceText"]
      127 SETTABLEKS                       R3 R2 K6 ["product"]
      129 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [setmetatable]
        8 CALL                             R2 2 0
        9 SETTABLEKS                       R0 R1 K2 ["_service"]
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 1 0
        3 GETUPVAL                         R5 1
        4 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K1 [setmetatable]
        9 CALL                             R3 2 0
       10 SETTABLEKS                       R1 R2 K2 ["_service"]
       12 MOVE                             R0 R2
       13 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_service"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R6 1
        4 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K1 [setmetatable]
        9 CALL                             R4 2 0
       10 SETTABLEKS                       R2 R3 K2 ["_service"]
       12 MOVE                             R1 R3
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Framework"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       22 GETTABLEKS                       R4 R4 K11 ["ContextItem"]
       24 LOADK                            R7 K12 ["AssetServiceWrapper"]
       25 NAMECALL                         R5 R4 K13 ["extend"]
       27 CALL                             R5 2 1
       28 NEWTABLE                         R6 1 0
       30 DUPCLOSURE                       R7 K14 [PROTO_0]
       31 SETTABLEKS                       R7 R6 K15 ["GetBundleDetailsAsync"]
       33 DUPCLOSURE                       R7 K16 [PROTO_1]
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R8 K17 [PROTO_2]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R8 R5 K18 ["new"]
       40 DUPCLOSURE                       R8 K19 [PROTO_3]
       41 SETTABLEKS                       R8 R5 K20 ["get"]
       43 DUPCLOSURE                       R8 K21 [PROTO_4]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R8 R5 K22 ["mock"]
       48 RETURN                           R5 1
