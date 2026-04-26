PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+10]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Expected %s to be a number"]
       12 MOVE                             R6 R0
       13 CALL                             R4 2 1
       14 LOADN                            R5 1
       15 CALL                             R3 2 0
       16 GETTABLE                         R3 R2 R1
       17 JUMPIFEQKNIL                     R3 ; [+10]
       19 GETIMPORT                        R3 K4 [error]
       21 GETIMPORT                        R4 K7 [string.format]
       23 LOADK                            R5 K9 ["Expected %s to be a valid enum value."]
       24 MOVE                             R6 R0
       25 CALL                             R4 2 1
       26 LOADN                            R5 1
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["catalogContext"]
        2 MOVE                             R7 R0
        3 GETUPVAL                         R8 1
        4 CALL                             R5 3 0
        5 GETUPVAL                         R5 0
        6 LOADK                            R6 K1 ["sortType"]
        7 MOVE                             R7 R1
        8 GETUPVAL                         R8 2
        9 CALL                             R5 3 0
       10 GETUPVAL                         R5 0
       11 LOADK                            R6 K2 ["sortAggregation"]
       12 MOVE                             R7 R2
       13 GETUPVAL                         R8 3
       14 CALL                             R5 3 0
       15 GETUPVAL                         R5 0
       16 LOADK                            R6 K3 ["sortCurrency"]
       17 MOVE                             R7 R3
       18 GETUPVAL                         R8 4
       19 CALL                             R5 3 0
       20 GETUPVAL                         R5 0
       21 LOADK                            R6 K4 ["category"]
       22 MOVE                             R7 R4
       23 GETUPVAL                         R8 5
       24 CALL                             R5 3 0
       25 GETUPVAL                         R6 6
       26 GETTABLEKS                       R5 R6 K5 ["composeUrl"]
       28 GETUPVAL                         R7 6
       29 GETTABLEKS                       R6 R7 K6 ["BASE_URL"]
       31 LOADK                            R7 K7 ["develop/library"]
       32 DUPTABLE                         R8 K13 [{"CatalogContext", "SortType", "SortAggregation", "SortCurrency", "Category"}]
       33 SETTABLEKS                       R0 R8 K8 ["CatalogContext"]
       35 SETTABLEKS                       R1 R8 K9 ["SortType"]
       37 SETTABLEKS                       R2 R8 K10 ["SortAggregation"]
       39 SETTABLEKS                       R3 R8 K11 ["SortCurrency"]
       41 SETTABLEKS                       R4 R8 K12 ["Category"]
       43 CALL                             R5 3 1
       44 DUPTABLE                         R6 K15 [{"getUrl"}]
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K14 ["getUrl"]
       49 RETURN                           R6 1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADN                            R1 0
        4 LOADK                            R2 K0 ["FullCatalog"]
        5 SETTABLE                         R2 R0 R1
        6 LOADK                            R1 K1 ["AvatarOnly"]
        7 SETTABLEN                        R1 R0 1
        8 LOADK                            R1 K2 ["DevelopOnly"]
        9 SETTABLEN                        R1 R0 2
       10 NEWTABLE                         R1 8 0
       12 LOADN                            R2 0
       13 LOADK                            R3 K3 ["Relevance"]
       14 SETTABLE                         R3 R1 R2
       15 LOADK                            R2 K4 ["Favorited"]
       16 SETTABLEN                        R2 R1 1
       17 LOADK                            R2 K5 ["Sales"]
       18 SETTABLEN                        R2 R1 2
       19 LOADK                            R2 K6 ["Updated"]
       20 SETTABLEN                        R2 R1 3
       21 LOADK                            R2 K7 ["PriceAsc"]
       22 SETTABLEN                        R2 R1 4
       23 LOADK                            R2 K8 ["PriceDesc"]
       24 SETTABLEN                        R2 R1 5
       25 NEWTABLE                         R2 8 0
       27 LOADN                            R3 0
       28 LOADK                            R4 K9 ["Past12Hours"]
       29 SETTABLE                         R4 R2 R3
       30 LOADK                            R3 K10 ["PastDay"]
       31 SETTABLEN                        R3 R2 1
       32 LOADK                            R3 K11 ["Past3Days"]
       33 SETTABLEN                        R3 R2 2
       34 LOADK                            R3 K12 ["PastWeek"]
       35 SETTABLEN                        R3 R2 3
       36 LOADK                            R3 K13 ["PastMonth"]
       37 SETTABLEN                        R3 R2 4
       38 LOADK                            R3 K14 ["AllTime"]
       39 SETTABLEN                        R3 R2 5
       40 NEWTABLE                         R3 1 0
       42 LOADN                            R4 0
       43 LOADK                            R5 K15 ["Robux"]
       44 SETTABLE                         R5 R3 R4
       45 NEWTABLE                         R4 16 0
       47 LOADN                            R5 0
       48 LOADK                            R6 K16 ["Featured"]
       49 SETTABLE                         R6 R4 R5
       50 LOADK                            R5 K17 ["All"]
       51 SETTABLEN                        R5 R4 1
       52 LOADK                            R5 K18 ["Collectibles"]
       53 SETTABLEN                        R5 R4 2
       54 LOADK                            R5 K19 ["Clothing"]
       55 SETTABLEN                        R5 R4 3
       56 LOADK                            R5 K20 ["BodyParts"]
       57 SETTABLEN                        R5 R4 4
       58 LOADK                            R5 K21 ["Gear"]
       59 SETTABLEN                        R5 R4 5
       60 LOADK                            R5 K22 ["Models"]
       61 SETTABLEN                        R5 R4 6
       62 LOADK                            R5 K23 ["Plugins"]
       63 SETTABLEN                        R5 R4 7
       64 LOADK                            R5 K24 ["Decals"]
       65 SETTABLEN                        R5 R4 8
       66 LOADK                            R5 K25 ["Audio"]
       67 SETTABLEN                        R5 R4 9
       68 LOADK                            R5 K26 ["Meshes"]
       69 SETTABLEN                        R5 R4 10
       70 LOADK                            R5 K27 ["Accessories"]
       71 SETTABLEN                        R5 R4 11
       72 LOADK                            R5 K28 ["AvatarAnimations"]
       73 SETTABLEN                        R5 R4 12
       74 DUPCLOSURE                       R5 K29 [PROTO_0]
       75 DUPCLOSURE                       R6 K30 [PROTO_3]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 RETURN                           R6 1
