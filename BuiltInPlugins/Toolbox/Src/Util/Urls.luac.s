PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 GETIMPORT                        R5 K5 [table.concat]
        7 MOVE                             R6 R0
        8 LOADK                            R7 K6 [","]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["assetIds"]
       12 CALL                             R3 1 1
       13 CONCAT                           R1 R2 R3
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R8 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R9 R9 K0 ["makeQueryString"]
        4 DUPTABLE                         R10 K8 [{"category", "keyword", "num", "page", "sort", "groupId", "creatorId"}]
        5 SETTABLEKS                       R0 R10 K1 ["category"]
        7 SETTABLEKS                       R1 R10 K2 ["keyword"]
        9 SETTABLEKS                       R2 R10 K3 ["num"]
       11 SETTABLEKS                       R3 R10 K4 ["page"]
       13 SETTABLEKS                       R4 R10 K5 ["sort"]
       15 SETTABLEKS                       R5 R10 K6 ["groupId"]
       17 SETTABLEKS                       R6 R10 K7 ["creatorId"]
       19 CALL                             R9 1 1
       20 CONCAT                           R7 R8 R9
       21 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["has"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["%s/saves"]
        3 GETUPVAL                         R2 0
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s/saves?targetType=%s&targetId=%d"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R0
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s/saves?targetType=%s&targetId=%d"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R0
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["categoryName"]
        2 GETTABLEKS                       R2 R0 K1 ["ownerId"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["assign"]
        7 NEWTABLE                         R4 0 0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["omit"]
       12 MOVE                             R6 R0
       13 NEWTABLE                         R7 0 5
       15 LOADK                            R8 K0 ["categoryName"]
       16 LOADK                            R9 K4 ["sectionName"]
       17 LOADK                            R10 K1 ["ownerId"]
       18 LOADK                            R11 K5 ["tags"]
       19 LOADK                            R12 K6 ["qualityFilterData"]
       20 SETLIST                          R7 R8 5 [1]
       22 CALL                             R5 2 1
       23 DUPTABLE                         R6 K7 [{"tags"}]
       24 GETTABLEKS                       R8 R0 K5 ["tags"]
       26 JUMPIFNOT                        R8 ; [+8]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K8 ["join"]
       30 GETTABLEKS                       R8 R0 K5 ["tags"]
       32 LOADK                            R9 K9 [","]
       33 CALL                             R7 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 SETTABLEKS                       R7 R6 K5 ["tags"]
       38 DUPTABLE                         R7 K11 [{"placeId"}]
       39 GETTABLEKS                       R9 R0 K4 ["sectionName"]
       41 JUMPIFNOT                        R9 ; [+3]
       42 GETUPVAL                         R8 3
       43 CALL                             R8 0 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R8
       46 SETTABLEKS                       R8 R7 K10 ["placeId"]
       48 DUPTABLE                         R8 K13 [{"assetsInCameraViewport"}]
       49 GETTABLEKS                       R10 R0 K12 ["assetsInCameraViewport"]
       51 JUMPIFNOT                        R10 ; [+7]
       52 GETIMPORT                        R9 K16 [table.concat]
       54 GETTABLEKS                       R10 R0 K12 ["assetsInCameraViewport"]
       56 LOADK                            R11 K9 [","]
       57 CALL                             R9 2 1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R9
       60 SETTABLEKS                       R9 R8 K12 ["assetsInCameraViewport"]
       62 DUPTABLE                         R9 K18 [{"assetsInCameraVicinity"}]
       63 GETTABLEKS                       R11 R0 K17 ["assetsInCameraVicinity"]
       65 JUMPIFNOT                        R11 ; [+7]
       66 GETIMPORT                        R10 K16 [table.concat]
       68 GETTABLEKS                       R11 R0 K17 ["assetsInCameraVicinity"]
       70 LOADK                            R12 K9 [","]
       71 CALL                             R10 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R10
       74 SETTABLEKS                       R10 R9 K17 ["assetsInCameraVicinity"]
       76 CALL                             R3 6 1
       77 GETUPVAL                         R4 4
       78 GETTABLEKS                       R4 R4 K19 ["getCategoryByName"]
       80 MOVE                             R5 R1
       81 CALL                             R4 1 1
       82 JUMPIF                           R4 ; [+8]
       83 GETIMPORT                        R5 K21 [error]
       85 GETIMPORT                        R6 K24 [string.format]
       87 LOADK                            R7 K25 ["Could not find categoryData for %s"]
       88 MOVE                             R8 R1
       89 CALL                             R6 2 -1
       90 CALL                             R5 -1 0
       91 LOADNIL                          R5
       92 GETTABLEKS                       R6 R0 K4 ["sectionName"]
       94 JUMPIFNOT                        R6 ; [+18]
       95 GETUPVAL                         R7 4
       96 GETTABLEKS                       R7 R7 K26 ["ToolboxAssetTypeToEngine"]
       98 GETTABLEKS                       R8 R4 K27 ["assetType"]
      100 GETTABLE                         R6 R7 R8
      101 GETTABLEKS                       R6 R6 K28 ["Value"]
      103 GETIMPORT                        R7 K24 [string.format]
      105 LOADK                            R8 K29 ["%s/home/%s/section/%s/assets"]
      106 GETUPVAL                         R9 5
      107 MOVE                             R10 R6
      108 GETTABLEKS                       R11 R0 K4 ["sectionName"]
      110 CALL                             R7 4 1
      111 MOVE                             R5 R7
      112 JUMP                             ; [+113]
      113 GETUPVAL                         R6 6
      114 GETTABLEKS                       R6 R6 K30 ["usesMarketplaceRoute"]
      116 GETTABLEKS                       R7 R4 K31 ["name"]
      118 CALL                             R6 1 1
      119 JUMPIFNOT                        R6 ; [+9]
      120 GETIMPORT                        R6 K24 [string.format]
      122 LOADK                            R7 K32 ["%s/marketplace/%d"]
      123 GETUPVAL                         R8 5
      124 GETTABLEKS                       R9 R4 K27 ["assetType"]
      126 CALL                             R6 3 1
      127 MOVE                             R5 R6
      128 JUMP                             ; [+97]
      129 GETUPVAL                         R7 4
      130 GETTABLEKS                       R7 R7 K33 ["API_NAMES"]
      132 GETTABLE                         R6 R7 R1
      133 GETUPVAL                         R8 4
      134 GETTABLEKS                       R8 R8 K34 ["getTabForCategoryName"]
      136 GETTABLEKS                       R9 R4 K31 ["name"]
      138 CALL                             R8 1 1
      139 GETUPVAL                         R9 4
      140 GETTABLEKS                       R9 R9 K35 ["CREATIONS"]
      142 JUMPIFEQ                         R8 R9 ; [+2]
      144 LOADB                            R7 0 +1
      145 LOADB                            R7 1
      146 JUMPIF                           R6 ; [+8]
      147 GETIMPORT                        R8 K21 [error]
      149 GETIMPORT                        R9 K24 [string.format]
      151 LOADK                            R10 K36 ["Could not find API_NAME for %s"]
      152 MOVE                             R11 R1
      153 CALL                             R9 2 -1
      154 CALL                             R8 -1 0
      155 GETTABLEKS                       R8 R4 K37 ["ownershipType"]
      157 GETUPVAL                         R9 4
      158 GETTABLEKS                       R9 R9 K38 ["OwnershipType"]
      160 GETTABLEKS                       R9 R9 K39 ["MY"]
      162 JUMPIFNOTEQ                      R8 R9 ; [+10]
      164 GETIMPORT                        R8 K24 [string.format]
      166 LOADK                            R9 K40 ["%s/inventory/user/%d/%s"]
      167 GETUPVAL                         R10 5
      168 MOVE                             R11 R2
      169 MOVE                             R12 R6
      170 CALL                             R8 4 1
      171 MOVE                             R5 R8
      172 JUMP                             ; [+53]
      173 GETTABLEKS                       R8 R4 K37 ["ownershipType"]
      175 GETUPVAL                         R9 4
      176 GETTABLEKS                       R9 R9 K38 ["OwnershipType"]
      178 GETTABLEKS                       R9 R9 K41 ["GROUP"]
      180 JUMPIFNOTEQ                      R8 R9 ; [+20]
      182 JUMPIFNOT                        R7 ; [+9]
      183 GETIMPORT                        R8 K24 [string.format]
      185 LOADK                            R9 K42 ["%s/creations/group/%d/%s"]
      186 GETUPVAL                         R10 5
      187 MOVE                             R11 R2
      188 MOVE                             R12 R6
      189 CALL                             R8 4 1
      190 MOVE                             R5 R8
      191 JUMP                             ; [+34]
      192 GETIMPORT                        R8 K24 [string.format]
      194 LOADK                            R9 K43 ["%s/inventory/group/%d/%s"]
      195 GETUPVAL                         R10 5
      196 MOVE                             R11 R2
      197 MOVE                             R12 R6
      198 CALL                             R8 4 1
      199 MOVE                             R5 R8
      200 JUMP                             ; [+25]
      201 GETTABLEKS                       R8 R4 K37 ["ownershipType"]
      203 GETUPVAL                         R9 4
      204 GETTABLEKS                       R9 R9 K38 ["OwnershipType"]
      206 GETTABLEKS                       R9 R9 K44 ["RECENT"]
      208 JUMPIFNOTEQ                      R8 R9 ; [+10]
      210 GETIMPORT                        R8 K24 [string.format]
      212 LOADK                            R9 K45 ["%s/recent/user/%d/%s"]
      213 GETUPVAL                         R10 5
      214 MOVE                             R11 R2
      215 MOVE                             R12 R6
      216 CALL                             R8 4 1
      217 MOVE                             R5 R8
      218 JUMP                             ; [+7]
      219 GETIMPORT                        R8 K24 [string.format]
      221 LOADK                            R9 K46 ["%s/%s"]
      222 GETUPVAL                         R10 5
      223 MOVE                             R11 R6
      224 CALL                             R8 3 1
      225 MOVE                             R5 R8
      226 GETTABLEKS                       R6 R3 K47 ["queryParams"]
      228 JUMPIFEQKNIL                     R6 ; [+10]
      230 GETIMPORT                        R6 K49 [pairs]
      232 GETTABLEKS                       R7 R3 K47 ["queryParams"]
      234 CALL                             R6 1 3
      235 FORGPREP_NEXT                    R6
      236 SETTABLE                         R10 R3 R9
      237 FORGLOOP                         R6 2 ; [-2]
      239 GETUPVAL                         R6 7
      240 GETTABLEKS                       R6 R6 K50 ["makeQueryString"]
      242 MOVE                             R7 R3
      243 LOADB                            R8 0
      244 GETUPVAL                         R10 8
      245 CALL                             R10 0 1
      246 JUMPIFNOT                        R10 ; [+2]
      247 LOADB                            R9 0
      248 JUMP                             ; [+1]
      249 LOADB                            R9 1
      250 CALL                             R6 3 1
      251 LENGTH                           R7 R6
      252 LOADN                            R8 0
      253 JUMPIFNOTLT                      R8 R7 ; [+5]
      255 MOVE                             R7 R5
      256 LOADK                            R8 K51 ["?"]
      257 MOVE                             R9 R6
      258 CONCAT                           R5 R7 R9
      259 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R9 0
        1 GETUPVAL                         R10 1
        2 GETTABLEKS                       R10 R10 K0 ["makeQueryString"]
        4 DUPTABLE                         R11 K9 [{"category", "keyword", "num", "page", "sort", "groupId", "creatorType", "creatorId"}]
        5 SETTABLEKS                       R0 R11 K1 ["category"]
        7 SETTABLEKS                       R1 R11 K2 ["keyword"]
        9 SETTABLEKS                       R4 R11 K3 ["num"]
       11 SETTABLEKS                       R5 R11 K4 ["page"]
       13 SETTABLEKS                       R2 R11 K5 ["sort"]
       15 SETTABLEKS                       R6 R11 K6 ["groupId"]
       17 SETTABLEKS                       R7 R11 K7 ["creatorType"]
       19 SETTABLEKS                       R3 R11 K8 ["creatorId"]
       21 CALL                             R10 1 1
       22 CONCAT                           R8 R9 R10
       23 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"action", "targetTypes"}]
        5 SETTABLEKS                       R0 R5 K1 ["action"]
        7 SETTABLEKS                       R1 R5 K2 ["targetTypes"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R8 K2 [string.format]
        2 GETUPVAL                         R9 0
        3 MOVE                             R10 R4
        4 MOVE                             R11 R0
        5 CALL                             R8 3 1
        6 MOVE                             R6 R8
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K3 ["makeQueryString"]
       10 DUPTABLE                         R8 K6 [{"limit", "cursor"}]
       11 SETTABLEKS                       R1 R8 K4 ["limit"]
       13 SETTABLEKS                       R2 R8 K5 ["cursor"]
       15 CALL                             R7 1 1
       16 CONCAT                           R5 R6 R7
       17 RETURN                           R5 1

PROTO_11:
        0 GETIMPORT                        R8 K2 [string.format]
        2 GETUPVAL                         R9 0
        3 MOVE                             R10 R4
        4 MOVE                             R11 R0
        5 CALL                             R8 3 1
        6 MOVE                             R6 R8
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K3 ["makeQueryString"]
       10 DUPTABLE                         R8 K7 [{"limit", "cursor", "separateModelsAndPackages"}]
       11 SETTABLEKS                       R1 R8 K4 ["limit"]
       13 SETTABLEKS                       R2 R8 K5 ["cursor"]
       15 SETTABLEKS                       R3 R8 K6 ["separateModelsAndPackages"]
       17 CALL                             R7 1 1
       18 CONCAT                           R5 R6 R7
       19 RETURN                           R5 1

PROTO_12:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 1 0
       13 GETIMPORT                        R2 K8 [Enum.CreatorType.Group]
       15 GETTABLEKS                       R2 R2 K9 ["Value"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+7]
       19 GETUPVAL                         R2 0
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K10 ["format"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1
       25 GETIMPORT                        R2 K12 [Enum.CreatorType.User]
       27 GETTABLEKS                       R2 R2 K9 ["Value"]
       29 JUMPIFNOTEQ                      R1 R2 ; [+7]
       31 GETUPVAL                         R2 1
       32 MOVE                             R4 R0
       33 NAMECALL                         R2 R2 K10 ["format"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1
       37 GETIMPORT                        R2 K14 [error]
       39 LOADK                            R3 K15 ["Unknown creatorType '%s'"]
       40 MOVE                             R5 R1
       41 NAMECALL                         R3 R3 K10 ["format"]
       43 CALL                             R3 2 -1
       44 CALL                             R2 -1 0
       45 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 LOADK                            R1 K0 ["%s/%s"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"itemType", "itemId"}]
        5 SETTABLEKS                       R0 R5 K1 ["itemType"]
        7 SETTABLEKS                       R1 R5 K2 ["itemId"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_21:
        0 DUPTABLE                         R5 K3 [{"limit", "cursor", "groupId"}]
        1 SETTABLEKS                       R3 R5 K0 ["limit"]
        3 SETTABLEKS                       R2 R5 K1 ["cursor"]
        5 SETTABLEKS                       R4 R5 K2 ["groupId"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 SETTABLEKS                       R0 R5 K4 ["bundleType"]
       10 JUMP                             ; [+2]
       11 SETTABLEKS                       R0 R5 K5 ["assetType"]
       13 GETUPVAL                         R7 0
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K6 ["makeQueryString"]
       17 MOVE                             R9 R5
       18 CALL                             R8 1 1
       19 CONCAT                           R6 R7 R8
       20 RETURN                           R6 1

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        5 DUPTABLE                         R5 K2 [{"bundleType"}]
        6 SETTABLEKS                       R0 R5 K1 ["bundleType"]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
       15 DUPTABLE                         R5 K4 [{"assetType"}]
       16 SETTABLEKS                       R0 R5 K3 ["assetType"]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K4 [{"assetIds", "format", "size"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 LOADK                            R5 K5 ["Png"]
        8 SETTABLEKS                       R5 R4 K2 ["format"]
       10 LOADK                            R5 K6 ["150x150"]
       11 SETTABLEKS                       R5 R4 K3 ["size"]
       13 CALL                             R3 1 1
       14 CONCAT                           R1 R2 R3
       15 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"assetId", "assetType"}]
        5 SETTABLEKS                       R0 R5 K1 ["assetId"]
        7 SETTABLEKS                       R1 R5 K2 ["assetType"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_30:
        0 GETIMPORT                        R2 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R5 K3 ["true"]
        6 JUMP                             ; [+1]
        7 LOADK                            R5 K4 ["false"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_31:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_32:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s/insert/asset/%d"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"pluginIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["pluginIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 2
        6 RETURN                           R0 1

PROTO_35:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["https://apis.%screator-home-api/v1/groups?surface=%s"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["DOMAIN"]
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_DELIVERY_URL"]
        3 LOADK                            R3 K1 ["v1/asset/?id=%d&permissionContext=ignoreUniverse"]
        4 CONCAT                           R1 R2 R3
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+18]
        2 FASTCALL1                        TONUMBER R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [tonumber]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 LOADK                            R2 K2 ["rbxassetid://%d"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["format"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K5 [tostring]
       18 CALL                             R2 1 1
       19 RETURN                           R2 1
       20 LOADK                            R1 K2 ["rbxassetid://%d"]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K3 ["format"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"id"}]
        5 SETTABLEKS                       R0 R4 K1 ["id"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_39:
        0 ORK                              R1 R1 K0 [50]
        1 ORK                              R2 R2 K1 [""]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 NAMECALL                         R5 R5 K0 ["format"]
        4 CALL                             R5 2 1
        5 MOVE                             R3 R5
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        9 DUPTABLE                         R5 K3 [{"assetVersionNumber"}]
       10 SETTABLEKS                       R1 R5 K2 ["assetVersionNumber"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R9 R9 K0 ["makeQueryString"]
        4 DUPTABLE                         R10 K3 [{"id", "assetName"}]
        5 SETTABLEKS                       R0 R10 K1 ["id"]
        7 SETTABLEKS                       R3 R10 K2 ["assetName"]
        9 CALL                             R9 1 1
       10 MOVE                             R6 R9
       11 LOADK                            R7 K4 ["#"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K0 ["makeQueryString"]
       15 DUPTABLE                         R9 K7 [{"assetTypeId", "isPackage"}]
       16 SETTABLEKS                       R1 R9 K5 ["assetTypeId"]
       18 SETTABLEKS                       R2 R9 K6 ["isPackage"]
       20 CALL                             R8 1 1
       21 CONCAT                           R4 R5 R8
       22 RETURN                           R4 1

PROTO_46:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+2]
        3 LOADK                            R4 K0 ["CreatorContextAsset"]
        4 JUMP                             ; [+1]
        5 LOADK                            R4 K1 ["Asset"]
        6 OR                               R3 R3 R4
        7 LOADK                            R5 K2 ["rbxthumb://type=%s&id=%d&w=%d&h=%d"]
        8 MOVE                             R7 R3
        9 FASTCALL1                        TONUMBER R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K5 [tonumber]
       13 CALL                             R9 1 1
       14 ORK                              R8 R9 K3 [0]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R2
       17 NAMECALL                         R5 R5 K6 ["format"]
       19 CALL                             R5 5 -1
       20 RETURN                           R5 -1

PROTO_47:
        0 LOADK                            R3 K0 ["rbxthumb://type=%s&id=%d&w=%d&h=%d"]
        1 MOVE                             R5 R0
        2 FASTCALL1                        TONUMBER R1 ; [+3]
        3 MOVE                             R8 R1
        4 GETIMPORT                        R7 K3 [tonumber]
        6 CALL                             R7 1 1
        7 ORK                              R6 R7 K1 [0]
        8 MOVE                             R7 R2
        9 MOVE                             R8 R2
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 5 -1
       13 RETURN                           R3 -1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["APIS_URL"]
        3 LOADK                            R3 K1 ["search-api/omni-search?"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["makeQueryString"]
        7 DUPTABLE                         R5 K7 [{"searchQuery", "sessionId", "pageType", "verticalType"}]
        8 SETTABLEKS                       R0 R5 K3 ["searchQuery"]
       10 GETUPVAL                         R6 1
       11 LOADB                            R8 0
       12 NAMECALL                         R6 R6 K8 ["GenerateGUID"]
       14 CALL                             R6 2 1
       15 SETTABLEKS                       R6 R5 K4 ["sessionId"]
       17 LOADK                            R6 K9 ["all"]
       18 SETTABLEKS                       R6 R5 K5 ["pageType"]
       20 LOADK                            R6 K10 ["user"]
       21 SETTABLEKS                       R6 R5 K6 ["verticalType"]
       23 CALL                             R4 1 1
       24 CONCAT                           R1 R2 R4
       25 RETURN                           R1 1

PROTO_49:
        0 ORK                              R1 R1 K0 [100]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        5 DUPTABLE                         R5 K6 [{"userId", "width", "height", "format"}]
        6 SETTABLEKS                       R0 R5 K2 ["userId"]
        8 SETTABLEKS                       R1 R5 K3 ["width"]
       10 SETTABLEKS                       R1 R5 K4 ["height"]
       12 LOADK                            R6 K7 ["png"]
       13 SETTABLEKS                       R6 R5 K5 ["format"]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 RETURN                           R2 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["/favorites/assets/%d/count"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 -1
        6 NAMECALL                         R1 R1 K1 ["format"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_60:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_63:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_65:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_66:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_67:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_69:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_70:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R2 1
        6 RETURN                           R2 1
        7 GETIMPORT                        R2 K3 [Enum.AssetType.Plugin]
        9 GETTABLEKS                       R2 R2 K4 ["Value"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+7]
       13 GETUPVAL                         R2 2
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R2 K5 ["format"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
       19 GETUPVAL                         R2 3
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K5 ["format"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_71:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_72:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_73:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 GETTABLEKS                       R8 R8 K0 ["makeQueryString"]
        4 DUPTABLE                         R9 K7 [{"assetid", "type", "name", "description", "isPublic", "format"}]
        5 SETTABLEKS                       R0 R9 K1 ["assetid"]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R11 R1
        9 GETIMPORT                        R10 K9 [tostring]
       11 CALL                             R10 1 1
       12 SETTABLEKS                       R10 R9 K2 ["type"]
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R11 R2
       16 GETIMPORT                        R10 K9 [tostring]
       18 CALL                             R10 1 1
       19 SETTABLEKS                       R10 R9 K3 ["name"]
       21 FASTCALL1                        TOSTRING R3 ; [+3]
       22 MOVE                             R11 R3
       23 GETIMPORT                        R10 K9 [tostring]
       25 CALL                             R10 1 1
       26 SETTABLEKS                       R10 R9 K4 ["description"]
       28 JUMPIFNOT                        R4 ; [+2]
       29 LOADK                            R10 K10 ["True"]
       30 JUMP                             ; [+1]
       31 LOADK                            R10 K11 ["False"]
       32 SETTABLEKS                       R10 R9 K5 ["isPublic"]
       34 SETTABLEKS                       R5 R9 K6 ["format"]
       36 CALL                             R8 1 1
       37 CONCAT                           R6 R7 R8
       38 RETURN                           R6 1

PROTO_74:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R6 R0 K0 ["Name"]
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 2 1
        6 MOVE                             R2 R4
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["makeQueryString"]
       10 NEWTABLE                         R4 2 0
       12 LOADK                            R5 K3 ["Upload"]
       13 SETTABLEKS                       R5 R4 K4 ["requestModel.actionType"]
       15 LOADK                            R5 K5 ["Group"]
       16 SETTABLEKS                       R5 R4 K6 ["requestModel.agentType"]
       18 CALL                             R3 1 1
       19 CONCAT                           R1 R2 R3
       20 RETURN                           R1 1

PROTO_75:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["makeQueryString"]
        4 DUPTABLE                         R6 K4 [{"cat", "limit", "prefix"}]
        5 SETTABLEKS                       R0 R6 K1 ["cat"]
        7 SETTABLEKS                       R2 R6 K2 ["limit"]
        9 SETTABLEKS                       R1 R6 K3 ["prefix"]
       11 CALL                             R5 1 1
       12 CONCAT                           R3 R4 R5
       13 RETURN                           R3 1

PROTO_76:
        0 GETIMPORT                        R5 K2 [string.format]
        2 LOADK                            R6 K3 ["%s/home/%s/configuration?"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R8 R0 K4 ["Name"]
        6 CALL                             R5 3 1
        7 MOVE                             R3 R5
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K5 ["makeQueryString"]
       11 DUPTABLE                         R5 K8 [{"locale", "placeId"}]
       12 SETTABLEKS                       R1 R5 K6 ["locale"]
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 SETTABLEKS                       R6 R5 K7 ["placeId"]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1

PROTO_77:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R6 R6 K0 ["makeQueryString"]
        4 DUPTABLE                         R7 K5 [{"assetId", "assetType", "assetSubTypes", "marketplaceType"}]
        5 SETTABLEKS                       R0 R7 K1 ["assetId"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R8 R1 K6 ["Name"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R8
       12 SETTABLEKS                       R8 R7 K2 ["assetType"]
       14 SETTABLEKS                       R2 R7 K3 ["assetSubTypes"]
       16 SETTABLEKS                       R3 R7 K4 ["marketplaceType"]
       18 CALL                             R6 1 1
       19 CONCAT                           R4 R5 R6
       20 RETURN                           R4 1

PROTO_78:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s/v1/asset-quotas?%s"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K4 ["PUBLISH_URL"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K5 ["makeQueryString"]
        9 DUPTABLE                         R6 K8 [{"assetType", "resourceType"}]
       10 GETTABLEKS                       R7 R0 K9 ["Name"]
       12 SETTABLEKS                       R7 R6 K6 ["assetType"]
       14 SETTABLEKS                       R1 R6 K7 ["resourceType"]
       16 CALL                             R5 1 -1
       17 CALL                             R2 -1 -1
       18 RETURN                           R2 -1

PROTO_79:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_80:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_81:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getCreatorDashboardCatalogConfigUrlExtension"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 JUMPIFNOT                        R2 ; [+5]
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CONCAT                           R4 R5 R6
       16 ORK                              R3 R4 K2 [""]
       17 RETURN                           R3 1
       18 LOADK                            R1 K2 [""]
       19 RETURN                           R1 1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 GETUPVAL                         R3 1
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K1 ["format"]
       14 CALL                             R2 2 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 JUMPIFNOT                        R1 ; [+6]
       18 JUMPIFNOT                        R2 ; [+5]
       19 MOVE                             R5 R1
       20 MOVE                             R6 R2
       21 CONCAT                           R4 R5 R6
       22 ORK                              R3 R4 K2 [""]
       23 RETURN                           R3 1
       24 LOADK                            R3 K2 [""]
       25 RETURN                           R3 1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R0 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 JUMPIFNOT                        R0 ; [+6]
       14 JUMPIFNOT                        R1 ; [+5]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 CONCAT                           R3 R4 R5
       18 ORK                              R2 R3 K1 [""]
       19 RETURN                           R2 1
       20 LOADK                            R2 K1 [""]
       21 RETURN                           R2 1

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getCreatorDashboardBaseUrl"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K2 ["/creations"]
        7 CONCAT                           R2 R3 R4
        8 ORK                              R1 R2 K1 [""]
        9 RETURN                           R1 1
       10 LOADK                            R1 K1 [""]
       11 RETURN                           R1 1

PROTO_87:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+20]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R2 1
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K1 ["format"]
       12 CALL                             R2 2 1
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIFNOT                        R1 ; [+6]
       16 JUMPIFNOT                        R2 ; [+5]
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 CONCAT                           R4 R5 R6
       20 ORK                              R3 R4 K2 [""]
       21 RETURN                           R3 1
       22 LOADK                            R1 K2 [""]
       23 RETURN                           R1 1

PROTO_88:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+10]
        7 JUMPIFNOT                        R0 ; [+9]
        8 MOVE                             R4 R1
        9 LOADK                            R5 K2 ["/creations/store/%d/configure"]
       10 MOVE                             R7 R0
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 2 1
       14 CONCAT                           R3 R4 R5
       15 ORK                              R2 R3 K1 [""]
       16 RETURN                           R2 1
       17 LOADK                            R1 K1 [""]
       18 RETURN                           R1 1

PROTO_89:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_90:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["AssetInfo"]
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"action"}]
        5 SETTABLEKS                       R0 R4 K1 ["action"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_93:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R1 1
        3 NEWTABLE                         R2 8 0
        5 GETIMPORT                        R3 K3 [Enum.AssetType.Model]
        7 LOADK                            R4 K4 ["models"]
        8 SETTABLE                         R4 R2 R3
        9 GETIMPORT                        R3 K6 [Enum.AssetType.Plugin]
       11 LOADK                            R4 K7 ["plugins"]
       12 SETTABLE                         R4 R2 R3
       13 GETIMPORT                        R3 K9 [Enum.AssetType.Audio]
       15 LOADK                            R4 K10 ["audio"]
       16 SETTABLE                         R4 R2 R3
       17 GETIMPORT                        R3 K12 [Enum.AssetType.FontFamily]
       19 LOADK                            R4 K13 ["fonts"]
       20 SETTABLE                         R4 R2 R3
       21 GETIMPORT                        R3 K15 [Enum.AssetType.Decal]
       23 LOADK                            R4 K16 ["decals"]
       24 SETTABLE                         R4 R2 R3
       25 GETIMPORT                        R3 K18 [Enum.AssetType.MeshPart]
       27 LOADK                            R4 K19 ["meshparts"]
       28 SETTABLE                         R4 R2 R3
       29 GETIMPORT                        R3 K21 [Enum.AssetType.Video]
       31 LOADK                            R4 K22 ["videos"]
       32 SETTABLE                         R4 R2 R3
       33 MOVE                             R4 R1
       34 GETTABLE                         R5 R2 R0
       35 CONCAT                           R3 R4 R5
       36 RETURN                           R3 1

PROTO_94:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [game]
       13 LOADK                            R4 K8 ["HttpService"]
       14 NAMECALL                         R2 R2 K9 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K7 [game]
       19 LOADK                            R5 K10 ["DisableSalesPageForAvatarCreations2"]
       20 NAMECALL                         R3 R3 K11 ["GetFastFlag"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K7 [game]
       25 LOADK                            R6 K12 ["UpdateAssetUploadResultBundleConfigureLink2"]
       26 NAMECALL                         R4 R4 K11 ["GetFastFlag"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K7 [game]
       31 LOADK                            R7 K13 ["ChangeAvatarAssetCreatorDashboardLink"]
       32 NAMECALL                         R5 R5 K11 ["GetFastFlag"]
       34 CALL                             R5 2 1
       35 GETIMPORT                        R6 K15 [require]
       37 GETTABLEKS                       R7 R0 K4 ["Src"]
       39 GETTABLEKS                       R7 R7 K5 ["Util"]
       41 GETTABLEKS                       R7 R7 K16 ["SharedFlags"]
       43 GETTABLEKS                       R7 R7 K17 ["getFFlagToolboxEnableAssetRows"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K15 [require]
       48 GETTABLEKS                       R8 R0 K4 ["Src"]
       50 GETTABLEKS                       R8 R8 K5 ["Util"]
       52 GETTABLEKS                       R8 R8 K16 ["SharedFlags"]
       54 GETTABLEKS                       R8 R8 K18 ["getFFlagToolboxCodeUnderstandingSummary"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K7 [game]
       59 LOADK                            R10 K19 ["ToolboxVideoTestUseLocalAudioFile"]
       60 NAMECALL                         R8 R8 K11 ["GetFastFlag"]
       62 CALL                             R8 2 1
       63 GETIMPORT                        R9 K15 [require]
       65 GETTABLEKS                       R10 R1 K16 ["SharedFlags"]
       67 GETTABLEKS                       R10 R10 K20 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K15 [require]
       72 GETTABLEKS                       R11 R0 K4 ["Src"]
       74 GETTABLEKS                       R11 R11 K5 ["Util"]
       76 GETTABLEKS                       R11 R11 K16 ["SharedFlags"]
       78 GETTABLEKS                       R11 R11 K21 ["getFFlagToolboxAssetConfigOnboardingLink"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K15 [require]
       83 GETTABLEKS                       R12 R1 K16 ["SharedFlags"]
       85 GETTABLEKS                       R12 R12 K22 ["getFFlagToolboxCreatorContextThumbnail"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K15 [require]
       90 GETTABLEKS                       R13 R0 K4 ["Src"]
       92 GETTABLEKS                       R13 R13 K23 ["Flags"]
       94 GETTABLEKS                       R13 R13 K24 ["getFFlagCheckAvatarAssetPrivacy"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K15 [require]
       99 GETTABLEKS                       R14 R0 K4 ["Src"]
      101 GETTABLEKS                       R14 R14 K5 ["Util"]
      103 GETTABLEKS                       R14 R14 K16 ["SharedFlags"]
      105 GETTABLEKS                       R14 R14 K25 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R0 K26 ["Packages"]
      110 GETIMPORT                        R15 K15 [require]
      112 GETTABLEKS                       R16 R14 K27 ["Framework"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K15 [require]
      117 GETTABLEKS                       R17 R14 K28 ["Dash"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K15 [require]
      122 GETTABLEKS                       R18 R14 K29 ["LuauPolyfill"]
      124 CALL                             R17 1 1
      125 GETTABLEKS                       R18 R17 K30 ["Set"]
      127 GETTABLEKS                       R19 R17 K31 ["Object"]
      129 GETTABLEKS                       R20 R17 K32 ["Array"]
      131 GETIMPORT                        R21 K15 [require]
      133 GETTABLEKS                       R22 R0 K4 ["Src"]
      135 GETTABLEKS                       R22 R22 K33 ["Types"]
      137 GETTABLEKS                       R22 R22 K34 ["AssetQuotaTypes"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K15 [require]
      142 GETTABLEKS                       R23 R0 K4 ["Src"]
      144 GETTABLEKS                       R23 R23 K33 ["Types"]
      146 GETTABLEKS                       R23 R23 K35 ["AssetSubTypes"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K15 [require]
      151 GETTABLEKS                       R24 R0 K4 ["Src"]
      153 GETTABLEKS                       R24 R24 K33 ["Types"]
      155 GETTABLEKS                       R24 R24 K36 ["HomeTypes"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R25 R0 K4 ["Src"]
      162 GETTABLEKS                       R25 R25 K33 ["Types"]
      164 GETTABLEKS                       R25 R25 K37 ["Category"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K15 [require]
      169 GETTABLEKS                       R26 R0 K38 ["Libs"]
      171 GETTABLEKS                       R26 R26 K39 ["Http"]
      173 GETTABLEKS                       R26 R26 K40 ["Url"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R27 R0 K4 ["Src"]
      180 GETTABLEKS                       R27 R27 K5 ["Util"]
      182 GETTABLEKS                       R27 R27 K41 ["ToolboxUtilities"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R28 R1 K42 ["FiatUtil"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K15 [require]
      192 GETTABLEKS                       R29 R1 K43 ["getPlaceId"]
      194 CALL                             R28 1 1
      195 GETIMPORT                        R29 K15 [require]
      197 GETTABLEKS                       R30 R1 K44 ["wrapStrictTable"]
      199 CALL                             R29 1 1
      200 NEWTABLE                         R30 128 0
      202 GETTABLEKS                       R32 R25 K45 ["CREATE_URL"]
      204 LOADK                            R33 K46 ["store/"]
      205 CONCAT                           R31 R32 R33
      206 GETTABLEKS                       R33 R25 K47 ["ITEM_CONFIGURATION_URL"]
      208 LOADK                            R34 K48 ["v1/permissions/item-types?"]
      209 CONCAT                           R32 R33 R34
      210 GETTABLEKS                       R34 R25 K49 ["APIS_URL"]
      212 LOADK                            R35 K50 ["assets/user-auth/v1/assets/%d"]
      213 CONCAT                           R33 R34 R35
      214 GETTABLEKS                       R35 R25 K51 ["BASE_URL"]
      216 LOADK                            R36 K52 ["IDE/Toolbox/Items?"]
      217 CONCAT                           R34 R35 R36
      218 GETTABLEKS                       R36 R25 K53 ["DEVELOP_URL"]
      220 LOADK                            R37 K54 ["v1/toolbox/items?"]
      221 CONCAT                           R35 R36 R37
      222 GETTABLEKS                       R37 R25 K47 ["ITEM_CONFIGURATION_URL"]
      224 LOADK                            R38 K55 ["v1/creations/get-assets?"]
      225 CONCAT                           R36 R37 R38
      226 GETTABLEKS                       R38 R25 K56 ["USERS_URL"]
      228 LOADK                            R39 K57 ["/v1/users/%d"]
      229 CONCAT                           R37 R38 R39
      230 GETTABLEKS                       R39 R25 K58 ["GROUP_URL"]
      232 LOADK                            R40 K59 ["v0/groups/%d"]
      233 CONCAT                           R38 R39 R40
      234 GETTABLEKS                       R40 R25 K60 ["PUBLISH_URL"]
      236 LOADK                            R41 K61 ["v1/assets/upload"]
      237 CONCAT                           R39 R40 R41
      238 GETTABLEKS                       R41 R25 K60 ["PUBLISH_URL"]
      240 LOADK                            R42 K62 ["v1/assets/%d/thumbnail"]
      241 CONCAT                           R40 R41 R42
      242 GETTABLEKS                       R42 R25 K53 ["DEVELOP_URL"]
      244 LOADK                            R43 K63 ["v1/assets/%d"]
      245 CONCAT                           R41 R42 R43
      246 GETTABLEKS                       R43 R25 K47 ["ITEM_CONFIGURATION_URL"]
      248 LOADK                            R44 K64 ["v1/assets/%d/release"]
      249 CONCAT                           R42 R43 R44
      250 GETTABLEKS                       R44 R25 K47 ["ITEM_CONFIGURATION_URL"]
      252 LOADK                            R45 K65 ["v1/assets/%d/update-price"]
      253 CONCAT                           R43 R44 R45
      254 GETTABLEKS                       R45 R25 K66 ["THUMBNAIL_URL"]
      256 LOADK                            R46 K67 ["v1/assets?"]
      257 CONCAT                           R44 R45 R46
      258 GETTABLEKS                       R46 R25 K47 ["ITEM_CONFIGURATION_URL"]
      260 LOADK                            R47 K68 ["v1/items/by-creator?"]
      261 CONCAT                           R45 R46 R47
      262 GETTABLEKS                       R47 R25 K47 ["ITEM_CONFIGURATION_URL"]
      264 LOADK                            R48 K69 ["v1/items?"]
      265 CONCAT                           R46 R47 R48
      266 GETTABLEKS                       R48 R25 K47 ["ITEM_CONFIGURATION_URL"]
      268 LOADK                            R49 K70 ["v1/items/upload-fee?"]
      269 CONCAT                           R47 R48 R49
      270 GETTABLEKS                       R49 R25 K47 ["ITEM_CONFIGURATION_URL"]
      272 LOADK                            R50 K71 ["v1/bundles/metadata"]
      273 CONCAT                           R48 R49 R50
      274 GETTABLEKS                       R50 R25 K47 ["ITEM_CONFIGURATION_URL"]
      276 LOADK                            R51 K72 ["v1/bundles/create-context"]
      277 CONCAT                           R49 R50 R51
      278 GETTABLEKS                       R51 R25 K47 ["ITEM_CONFIGURATION_URL"]
      280 LOADK                            R52 K73 ["v1/bundles"]
      281 CONCAT                           R50 R51 R52
      282 GETTABLEKS                       R52 R25 K47 ["ITEM_CONFIGURATION_URL"]
      284 LOADK                            R53 K74 ["v1/bundles/status"]
      285 CONCAT                           R51 R52 R53
      286 GETTABLEKS                       R53 R25 K49 ["APIS_URL"]
      288 LOADK                            R54 K75 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      289 CONCAT                           R52 R53 R54
      290 GETTABLEKS                       R54 R25 K49 ["APIS_URL"]
      292 LOADK                            R55 K76 ["resource-settings/v1/bundles"]
      293 CONCAT                           R53 R54 R55
      294 GETTABLEKS                       R55 R25 K49 ["APIS_URL"]
      296 LOADK                            R56 K77 ["resource-settings/v1/avatar-assets"]
      297 CONCAT                           R54 R55 R56
      298 GETTABLEKS                       R56 R25 K51 ["BASE_URL"]
      300 LOADK                            R57 K78 ["voting/vote?assetId=%s&vote=%s"]
      301 CONCAT                           R55 R56 R57
      302 GETTABLEKS                       R57 R25 K49 ["APIS_URL"]
      304 LOADK                            R58 K79 ["voting-api/vote/asset/%s?vote=%s"]
      305 CONCAT                           R56 R57 R58
      306 GETTABLEKS                       R58 R25 K49 ["APIS_URL"]
      308 LOADK                            R59 K80 ["voting-api/vote/asset/%s"]
      309 CONCAT                           R57 R58 R59
      310 GETTABLEKS                       R59 R25 K51 ["BASE_URL"]
      312 LOADK                            R60 K81 ["IDE/Toolbox/InsertAsset?"]
      313 CONCAT                           R58 R59 R60
      314 GETTABLEKS                       R60 R25 K53 ["DEVELOP_URL"]
      316 LOADK                            R61 K82 ["v1/user/groups/canmanage"]
      317 CONCAT                           R59 R60 R61
      318 GETTABLEKS                       R61 R25 K49 ["APIS_URL"]
      320 LOADK                            R62 K83 ["orgs/v2/groups/permissions/createassets"]
      321 CONCAT                           R60 R61 R62
      322 GETTABLEKS                       R62 R25 K49 ["APIS_URL"]
      324 LOADK                            R63 K84 ["studio-plugin-api/v1/plugins?"]
      325 CONCAT                           R61 R62 R63
      326 GETTABLEKS                       R63 R25 K51 ["BASE_URL"]
      328 LOADK                            R64 K85 ["asset/?"]
      329 CONCAT                           R62 R63 R64
      330 GETTABLEKS                       R64 R25 K86 ["GAME_ASSET_URL"]
      332 LOADK                            R65 K85 ["asset/?"]
      333 CONCAT                           R63 R64 R65
      334 GETTABLEKS                       R65 R25 K86 ["GAME_ASSET_URL"]
      336 LOADK                            R66 K87 ["asset-thumbnail/image?"]
      337 CONCAT                           R64 R65 R66
      338 GETTABLEKS                       R66 R25 K51 ["BASE_URL"]
      340 LOADK                            R67 K88 ["headshot-thumbnail/image?"]
      341 CONCAT                           R65 R66 R67
      342 GETTABLEKS                       R67 R25 K89 ["CATALOG_URL"]
      344 LOADK                            R68 K90 ["v1%s"]
      345 CONCAT                           R66 R67 R68
      346 GETTABLEKS                       R68 R25 K53 ["DEVELOP_URL"]
      348 LOADK                            R69 K91 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      349 CONCAT                           R67 R68 R69
      350 GETTABLEKS                       R69 R25 K53 ["DEVELOP_URL"]
      352 LOADK                            R70 K92 ["v1/assets/%s/saved-versions?limit=%s"]
      353 CONCAT                           R68 R69 R70
      354 GETTABLEKS                       R70 R25 K53 ["DEVELOP_URL"]
      356 LOADK                            R71 K93 ["v1/assets/%s/saved-versions?cursor=%s"]
      357 CONCAT                           R69 R70 R71
      358 GETTABLEKS                       R71 R25 K53 ["DEVELOP_URL"]
      360 LOADK                            R72 K94 ["v1/assets/%s/revert-version?"]
      361 CONCAT                           R70 R71 R72
      362 GETTABLEKS                       R72 R25 K53 ["DEVELOP_URL"]
      364 LOADK                            R73 K67 ["v1/assets?"]
      365 CONCAT                           R71 R72 R73
      366 GETTABLEKS                       R73 R25 K49 ["APIS_URL"]
      368 LOADK                            R74 K95 ["packages-api/v1/packages/assets/versions/notes/get"]
      369 CONCAT                           R72 R73 R74
      370 GETTABLEKS                       R74 R25 K49 ["APIS_URL"]
      372 LOADK                            R75 K96 ["packages-api/v1/packages/assets/%s/versions/notes"]
      373 CONCAT                           R73 R74 R75
      374 GETTABLEKS                       R75 R25 K49 ["APIS_URL"]
      376 LOADK                            R76 K97 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      377 CONCAT                           R74 R75 R76
      378 GETTABLEKS                       R76 R25 K49 ["APIS_URL"]
      380 LOADK                            R77 K98 ["assets/user-auth/v1/operations/%s"]
      381 CONCAT                           R75 R76 R77
      382 GETTABLEKS                       R77 R25 K49 ["APIS_URL"]
      384 LOADK                            R78 K99 ["assets/user-auth/v1/assets"]
      385 CONCAT                           R76 R77 R78
      386 GETTABLEKS                       R78 R25 K49 ["APIS_URL"]
      388 LOADK                            R79 K100 ["assets/user-auth/v1/assets/%s"]
      389 CONCAT                           R77 R78 R79
      390 GETTABLEKS                       R79 R25 K49 ["APIS_URL"]
      392 LOADK                            R80 K100 ["assets/user-auth/v1/assets/%s"]
      393 CONCAT                           R78 R79 R80
      394 GETTABLEKS                       R80 R25 K53 ["DEVELOP_URL"]
      396 LOADK                            R81 K101 ["v1/assets/%s?"]
      397 CONCAT                           R79 R80 R81
      398 GETTABLEKS                       R81 R25 K102 ["DATA_URL"]
      400 LOADK                            R82 K103 ["Data/Upload.ashx?"]
      401 CONCAT                           R80 R81 R82
      402 GETTABLEKS                       R82 R25 K58 ["GROUP_URL"]
      404 LOADK                            R83 K104 ["v2/users/%%20%%20%s/groups/roles"]
      405 CONCAT                           R81 R82 R83
      406 GETTABLEKS                       R83 R25 K53 ["DEVELOP_URL"]
      408 LOADK                            R84 K105 ["v1/user/is-verified-creator"]
      409 CONCAT                           R82 R83 R84
      410 GETTABLEKS                       R84 R25 K58 ["GROUP_URL"]
      412 LOADK                            R85 K106 ["v1/groups/%s/roles"]
      413 CONCAT                           R83 R84 R85
      414 GETTABLEKS                       R85 R25 K107 ["FRIENDS_URL"]
      416 LOADK                            R86 K108 ["v1/users/%d/friends"]
      417 CONCAT                           R84 R85 R86
      418 GETTABLEKS                       R86 R25 K51 ["BASE_URL"]
      420 LOADK                            R87 K109 ["upgrades/robux"]
      421 CONCAT                           R85 R86 R87
      422 GETTABLEKS                       R87 R25 K110 ["ECONOMY_URL"]
      424 LOADK                            R88 K111 ["v1/users/%d/currency"]
      425 CONCAT                           R86 R87 R88
      426 GETTABLEKS                       R88 R25 K53 ["DEVELOP_URL"]
      428 LOADK                            R89 K112 ["v1/user/%d/canmanage/%d"]
      429 CONCAT                           R87 R88 R89
      430 GETTABLEKS                       R89 R25 K110 ["ECONOMY_URL"]
      432 LOADK                            R90 K113 ["/v1/purchases/products/%d"]
      433 CONCAT                           R88 R89 R90
      434 GETTABLEKS                       R90 R25 K49 ["APIS_URL"]
      436 LOADK                            R91 K114 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      437 CONCAT                           R89 R90 R91
      438 GETTABLEKS                       R91 R25 K49 ["APIS_URL"]
      440 LOADK                            R92 K115 ["marketplace-fiat-service/v1/product/purchase"]
      441 CONCAT                           R90 R91 R92
      442 GETTABLEKS                       R92 R25 K49 ["APIS_URL"]
      444 LOADK                            R93 K116 ["marketplace-fiat-service/v1/purchaser/status"]
      445 CONCAT                           R91 R92 R93
      446 MOVE                             R93 R10
      447 CALL                             R93 0 1
      448 JUMPIFNOT                        R93 ; [+5]
      449 GETTABLEKS                       R93 R25 K49 ["APIS_URL"]
      451 LOADK                            R94 K117 ["marketplace-fiat-service/v1/seller/status"]
      452 CONCAT                           R92 R93 R94
      453 JUMP                             ; [+1]
      454 LOADNIL                          R92
      455 JUMPIFNOT                        R5 ; [+2]
      456 LOADK                            R93 K118 ["/creations/catalog/%d/configure"]
      457 JUMP                             ; [+1]
      458 LOADK                            R93 K119 ["/creations?activeTab=TShirt"]
      459 JUMPIFNOT                        R4 ; [+2]
      460 LOADK                            R94 K120 ["/creations/bundle/%d/configure"]
      461 JUMP                             ; [+1]
      462 LOADNIL                          R94
      463 GETTABLEKS                       R96 R25 K49 ["APIS_URL"]
      465 LOADK                            R97 K121 ["packages-api/v1/packages/assets/versions/metadata/get"]
      466 CONCAT                           R95 R96 R97
      467 GETTABLEKS                       R97 R25 K49 ["APIS_URL"]
      469 LOADK                            R98 K122 ["asset-permissions-api/v1/assets/%s/permissions"]
      470 CONCAT                           R96 R97 R98
      471 GETTABLEKS                       R98 R25 K49 ["APIS_URL"]
      473 LOADK                            R99 K123 ["asset-permissions-api/v1/assets/check-actions"]
      474 CONCAT                           R97 R98 R99
      475 GETTABLEKS                       R99 R25 K49 ["APIS_URL"]
      477 LOADK                            R100 K124 ["asset-permissions-api/v1/assets/check-permissions"]
      478 CONCAT                           R98 R99 R100
      479 GETTABLEKS                       R100 R25 K49 ["APIS_URL"]
      481 LOADK                            R101 K125 ["asset-permissions-api/v1/assets/permissions"]
      482 CONCAT                           R99 R100 R101
      483 GETTABLEKS                       R101 R25 K49 ["APIS_URL"]
      485 LOADK                            R102 K126 ["toolbox-service/v1"]
      486 CONCAT                           R100 R101 R102
      487 GETTABLEKS                       R102 R25 K49 ["APIS_URL"]
      489 LOADK                            R103 K127 ["toolbox-service/v1/%s?"]
      490 CONCAT                           R101 R102 R103
      491 GETTABLEKS                       R103 R25 K49 ["APIS_URL"]
      493 LOADK                            R104 K128 ["toolbox-service/v1/items/details?"]
      494 CONCAT                           R102 R103 R104
      495 GETTABLEKS                       R104 R25 K49 ["APIS_URL"]
      497 LOADK                            R105 K129 ["toolbox-service/v1/creations/group/%d/%s?"]
      498 CONCAT                           R103 R104 R105
      499 GETTABLEKS                       R105 R25 K49 ["APIS_URL"]
      501 LOADK                            R106 K130 ["toolbox-service/v1/creations/user/%d/%s?"]
      502 CONCAT                           R104 R105 R106
      503 MOVE                             R106 R100
      504 LOADK                            R107 K131 ["/voting/vote?"]
      505 CONCAT                           R105 R106 R107
      506 GETTABLEKS                       R107 R25 K47 ["ITEM_CONFIGURATION_URL"]
      508 LOADK                            R108 K132 ["v1/asset-types/%s/agents?"]
      509 CONCAT                           R106 R107 R108
      510 GETTABLEKS                       R108 R25 K49 ["APIS_URL"]
      512 LOADK                            R109 K133 ["autocomplete-studio/v2/suggest?"]
      513 CONCAT                           R107 R108 R109
      514 GETTABLEKS                       R109 R25 K49 ["APIS_URL"]
      516 LOADK                            R110 K134 ["marketplace-publishing-requirements-api/v1/requirements?"]
      517 CONCAT                           R108 R109 R110
      518 JUMPIFNOT                        R7 ; [+5]
      519 GETTABLEKS                       R110 R25 K49 ["APIS_URL"]
      521 LOADK                            R111 K135 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      522 CONCAT                           R109 R110 R111
      523 JUMP                             ; [+1]
      524 LOADNIL                          R109
      525 GETTABLEKS                       R111 R25 K49 ["APIS_URL"]
      527 LOADK                            R112 K136 ["user/cloud/v2/creator-store-products/"]
      528 CONCAT                           R110 R111 R112
      529 MOVE                             R112 R110
      530 LOADK                            R113 K137 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      531 CONCAT                           R111 R112 R113
      532 GETTABLEKS                       R113 R25 K60 ["PUBLISH_URL"]
      534 LOADK                            R114 K138 ["v1/assets/%d/media"]
      535 CONCAT                           R112 R113 R114
      536 GETTABLEKS                       R114 R25 K60 ["PUBLISH_URL"]
      538 LOADK                            R115 K139 ["v1/assets/%d/media/%d"]
      539 CONCAT                           R113 R114 R115
      540 GETTABLEKS                       R115 R25 K60 ["PUBLISH_URL"]
      542 LOADK                            R116 K140 ["v1/assets/%d/media/order"]
      543 CONCAT                           R114 R115 R116
      544 GETTABLEKS                       R116 R25 K60 ["PUBLISH_URL"]
      546 LOADK                            R117 K138 ["v1/assets/%d/media"]
      547 CONCAT                           R115 R116 R117
      548 GETTABLEKS                       R117 R25 K53 ["DEVELOP_URL"]
      550 LOADK                            R118 K141 ["v1/assets/%d/latest-saved-version"]
      551 CONCAT                           R116 R117 R118
      552 GETTABLEKS                       R118 R25 K53 ["DEVELOP_URL"]
      554 LOADK                            R119 K142 ["v1/universes/%d"]
      555 CONCAT                           R117 R118 R119
      556 GETTABLEKS                       R119 R25 K47 ["ITEM_CONFIGURATION_URL"]
      558 LOADK                            R120 K143 ["v1/permissions/groups?"]
      559 CONCAT                           R118 R119 R120
      560 GETTABLEKS                       R120 R25 K49 ["APIS_URL"]
      562 LOADK                            R121 K144 ["asset-permissions-api/v1/assets/access-properties"]
      563 CONCAT                           R119 R120 R121
      564 DUPCLOSURE                       R120 K145 [PROTO_0]
      565 CAPTURE                          VAL R102
      566 CAPTURE                          VAL R25
      567 SETTABLEKS                       R120 R30 K146 ["constructGetItemDetails"]
      569 DUPCLOSURE                       R120 K147 [PROTO_1]
      570 CAPTURE                          VAL R34
      571 CAPTURE                          VAL R25
      572 SETTABLEKS                       R120 R30 K148 ["constructGetAssetsUrl"]
      574 GETTABLEKS                       R120 R18 K149 ["new"]
      576 NEWTABLE                         R121 0 4
      578 GETTABLEKS                       R122 R24 K150 ["MUSIC"]
      580 GETTABLEKS                       R122 R122 K151 ["name"]
      582 GETTABLEKS                       R123 R24 K152 ["SOUND_EFFECTS"]
      584 GETTABLEKS                       R123 R123 K151 ["name"]
      586 GETTABLEKS                       R124 R24 K153 ["UNKNOWN_AUDIO"]
      588 GETTABLEKS                       R124 R124 K151 ["name"]
      590 GETTABLEKS                       R125 R24 K154 ["FREE_FONTS"]
      592 GETTABLEKS                       R125 R125 K151 ["name"]
      594 SETLIST                          R121 R122 4 [1]
      596 CALL                             R120 1 1
      597 DUPCLOSURE                       R121 K155 [PROTO_2]
      598 CAPTURE                          VAL R120
      599 SETTABLEKS                       R121 R30 K156 ["usesMarketplaceRoute"]
      601 DUPCLOSURE                       R121 K157 [PROTO_3]
      602 CAPTURE                          VAL R100
      603 SETTABLEKS                       R121 R30 K158 ["constructCreateSaveUrl"]
      605 DUPCLOSURE                       R121 K159 [PROTO_4]
      606 CAPTURE                          VAL R100
      607 SETTABLEKS                       R121 R30 K160 ["constructDeleteSaveUrl"]
      609 DUPCLOSURE                       R121 K161 [PROTO_5]
      610 CAPTURE                          VAL R100
      611 SETTABLEKS                       R121 R30 K162 ["constructGetSaveUrl"]
      613 DUPCLOSURE                       R121 K163 [PROTO_6]
      614 CAPTURE                          VAL R19
      615 CAPTURE                          VAL R16
      616 CAPTURE                          VAL R20
      617 CAPTURE                          VAL R28
      618 CAPTURE                          VAL R24
      619 CAPTURE                          VAL R100
      620 CAPTURE                          VAL R30
      621 CAPTURE                          VAL R25
      622 CAPTURE                          VAL R6
      623 SETTABLEKS                       R121 R30 K164 ["constructGetToolboxItemsUrl"]
      625 DUPCLOSURE                       R121 K165 [PROTO_7]
      626 CAPTURE                          VAL R35
      627 CAPTURE                          VAL R25
      628 SETTABLEKS                       R121 R30 K166 ["getDevelopAssetUrl"]
      630 DUPCLOSURE                       R121 K167 [PROTO_8]
      631 CAPTURE                          VAL R33
      632 SETTABLEKS                       R121 R30 K168 ["constructGetAssetByIdUrl"]
      634 DUPCLOSURE                       R121 K169 [PROTO_9]
      635 CAPTURE                          VAL R32
      636 CAPTURE                          VAL R25
      637 SETTABLEKS                       R121 R30 K170 ["constructGetAllowedItemTypesUrl"]
      639 DUPCLOSURE                       R121 K171 [PROTO_10]
      640 CAPTURE                          VAL R103
      641 CAPTURE                          VAL R25
      642 SETTABLEKS                       R121 R30 K172 ["constructGetAssetGroupCreationsUrl"]
      644 DUPCLOSURE                       R121 K173 [PROTO_11]
      645 CAPTURE                          VAL R104
      646 CAPTURE                          VAL R25
      647 SETTABLEKS                       R121 R30 K174 ["constructGetAssetCreationsUrlToolboxService"]
      649 DUPCLOSURE                       R121 K175 [PROTO_12]
      650 CAPTURE                          VAL R38
      651 CAPTURE                          VAL R37
      652 SETTABLEKS                       R121 R30 K176 ["constructGetCreatorInfoUrl"]
      654 DUPCLOSURE                       R121 K177 [PROTO_13]
      655 CAPTURE                          VAL R48
      656 SETTABLEKS                       R121 R30 K178 ["constructGetBundleMetadataUrl"]
      658 DUPCLOSURE                       R121 K179 [PROTO_14]
      659 CAPTURE                          VAL R49
      660 SETTABLEKS                       R121 R30 K180 ["constructPostBundleCreationContextUrl"]
      662 DUPCLOSURE                       R121 K181 [PROTO_15]
      663 CAPTURE                          VAL R50
      664 SETTABLEKS                       R121 R30 K182 ["constructPostCreateBundleUrl"]
      666 DUPCLOSURE                       R121 K183 [PROTO_16]
      667 CAPTURE                          VAL R51
      668 SETTABLEKS                       R121 R30 K184 ["constructGetBundleCreationStatusUrl"]
      670 DUPCLOSURE                       R121 K185 [PROTO_17]
      671 CAPTURE                          VAL R52
      672 SETTABLEKS                       R121 R30 K186 ["constructGetDefaultCreateBundleDataSharingUrl"]
      674 DUPCLOSURE                       R121 K187 [PROTO_18]
      675 CAPTURE                          VAL R53
      676 SETTABLEKS                       R121 R30 K188 ["constructPostCreateBundleDataSharingUrl"]
      678 DUPCLOSURE                       R121 K189 [PROTO_19]
      679 CAPTURE                          VAL R54
      680 SETTABLEKS                       R121 R30 K190 ["constructPostCreateAvatarAssetDataSharingUrl"]
      682 DUPCLOSURE                       R121 K191 [PROTO_20]
      683 CAPTURE                          VAL R46
      684 CAPTURE                          VAL R25
      685 SETTABLEKS                       R121 R30 K192 ["constructGetItemConfigurationDetailsUrl"]
      687 DUPCLOSURE                       R121 K193 [PROTO_21]
      688 CAPTURE                          VAL R45
      689 CAPTURE                          VAL R25
      690 SETTABLEKS                       R121 R30 K194 ["constructGetItemsByCreatorUrl"]
      692 DUPCLOSURE                       R121 K195 [PROTO_22]
      693 CAPTURE                          VAL R47
      694 CAPTURE                          VAL R25
      695 SETTABLEKS                       R121 R30 K196 ["constructGetItemUploadFeeUrl"]
      697 DUPCLOSURE                       R121 K197 [PROTO_23]
      698 CAPTURE                          VAL R39
      699 SETTABLEKS                       R121 R30 K198 ["constructUploadCatalogItemUrl"]
      701 DUPCLOSURE                       R121 K199 [PROTO_24]
      702 CAPTURE                          VAL R40
      703 SETTABLEKS                       R121 R30 K200 ["constructUploadAssetThumbnailUrl"]
      705 DUPCLOSURE                       R121 K201 [PROTO_25]
      706 CAPTURE                          VAL R44
      707 CAPTURE                          VAL R25
      708 SETTABLEKS                       R121 R30 K202 ["contuctGetThumbnailStatusUrl"]
      710 DUPCLOSURE                       R121 K203 [PROTO_26]
      711 CAPTURE                          VAL R42
      712 SETTABLEKS                       R121 R30 K204 ["constructConfigureSalesUrl"]
      714 DUPCLOSURE                       R121 K205 [PROTO_27]
      715 CAPTURE                          VAL R43
      716 SETTABLEKS                       R121 R30 K206 ["constructUpdateSalesUrl"]
      718 DUPCLOSURE                       R121 K207 [PROTO_28]
      719 CAPTURE                          VAL R41
      720 SETTABLEKS                       R121 R30 K208 ["constructConfigureCatalogItemUrl"]
      722 DUPCLOSURE                       R121 K209 [PROTO_29]
      723 CAPTURE                          VAL R105
      724 CAPTURE                          VAL R25
      725 SETTABLEKS                       R121 R30 K210 ["constructGetVoteUrl"]
      727 DUPCLOSURE                       R121 K211 [PROTO_30]
      728 CAPTURE                          VAL R56
      729 SETTABLEKS                       R121 R30 K212 ["constructPostVoteUrl"]
      731 DUPCLOSURE                       R121 K213 [PROTO_31]
      732 CAPTURE                          VAL R57
      733 SETTABLEKS                       R121 R30 K214 ["constructPostUnvoteUrl"]
      735 DUPCLOSURE                       R121 K215 [PROTO_32]
      736 CAPTURE                          VAL R100
      737 SETTABLEKS                       R121 R30 K216 ["constructInsertAssetUrl"]
      739 DUPCLOSURE                       R121 K217 [PROTO_33]
      740 CAPTURE                          VAL R61
      741 CAPTURE                          VAL R25
      742 SETTABLEKS                       R121 R30 K218 ["constructGetPluginInfoUrl"]
      744 DUPCLOSURE                       R121 K219 [PROTO_34]
      745 CAPTURE                          VAL R13
      746 CAPTURE                          VAL R60
      747 CAPTURE                          VAL R59
      748 SETTABLEKS                       R121 R30 K220 ["constructGetManageableGroupsUrl"]
      750 DUPCLOSURE                       R121 K221 [PROTO_35]
      751 CAPTURE                          VAL R25
      752 SETTABLEKS                       R121 R30 K222 ["constructGetGroupsForSurfaceUrl"]
      754 DUPCLOSURE                       R121 K223 [PROTO_36]
      755 CAPTURE                          VAL R25
      756 SETTABLEKS                       R121 R30 K224 ["constructAssetIdUserContextString"]
      758 DUPCLOSURE                       R121 K225 [PROTO_37]
      759 CAPTURE                          VAL R8
      760 SETTABLEKS                       R121 R30 K226 ["constructAssetIdString"]
      762 DUPCLOSURE                       R121 K227 [PROTO_38]
      763 CAPTURE                          VAL R62
      764 CAPTURE                          VAL R25
      765 SETTABLEKS                       R121 R30 K228 ["constructAssetIdUrl"]
      767 DUPCLOSURE                       R121 K229 [PROTO_39]
      768 CAPTURE                          VAL R67
      769 SETTABLEKS                       R121 R30 K230 ["constructAssetSavedVersionString"]
      771 DUPCLOSURE                       R121 K231 [PROTO_40]
      772 CAPTURE                          VAL R73
      773 SETTABLEKS                       R121 R30 K232 ["constructAssetSavedVersionWithNotesString"]
      775 DUPCLOSURE                       R121 K233 [PROTO_41]
      776 CAPTURE                          VAL R72
      777 SETTABLEKS                       R121 R30 K234 ["constructGetPackageVersionDescriptionString"]
      779 DUPCLOSURE                       R121 K235 [PROTO_42]
      780 CAPTURE                          VAL R74
      781 SETTABLEKS                       R121 R30 K236 ["constructSetPackageVersionDescriptionString"]
      783 DUPCLOSURE                       R121 K237 [PROTO_43]
      784 CAPTURE                          VAL R70
      785 CAPTURE                          VAL R25
      786 SETTABLEKS                       R121 R30 K238 ["constructRevertAssetVersionString"]
      788 DUPCLOSURE                       R121 K239 [PROTO_44]
      789 CAPTURE                          VAL R71
      790 CAPTURE                          VAL R25
      791 SETTABLEKS                       R121 R30 K240 ["constructGetDevelopAssetMetadata"]
      793 DUPCLOSURE                       R121 K241 [PROTO_45]
      794 CAPTURE                          VAL R63
      795 CAPTURE                          VAL R25
      796 SETTABLEKS                       R121 R30 K242 ["constructAssetGameAssetIdUrl"]
      798 DUPCLOSURE                       R121 K243 [PROTO_46]
      799 CAPTURE                          VAL R11
      800 SETTABLEKS                       R121 R30 K244 ["constructAssetThumbnailUrl"]
      802 DUPCLOSURE                       R121 K245 [PROTO_47]
      803 SETTABLEKS                       R121 R30 K246 ["constructRBXThumbUrl"]
      805 DUPCLOSURE                       R121 K247 [PROTO_48]
      806 CAPTURE                          VAL R25
      807 CAPTURE                          VAL R2
      808 SETTABLEKS                       R121 R30 K248 ["constructUserSearchUrl"]
      810 DUPCLOSURE                       R121 K249 [PROTO_49]
      811 CAPTURE                          VAL R65
      812 CAPTURE                          VAL R25
      813 SETTABLEKS                       R121 R30 K250 ["constructUserThumbnailUrl"]
      815 DUPCLOSURE                       R121 K251 [PROTO_50]
      816 CAPTURE                          VAL R66
      817 SETTABLEKS                       R121 R30 K252 ["constructFavoriteCountsUrl"]
      819 DUPCLOSURE                       R121 K253 [PROTO_51]
      820 CAPTURE                          VAL R66
      821 SETTABLEKS                       R121 R30 K254 ["constructGetFavoritedUrl"]
      823 DUPCLOSURE                       R121 K255 [PROTO_52]
      824 CAPTURE                          VAL R66
      825 SETTABLEKS                       R121 R30 K256 ["constructPostFavoriteUrl"]
      827 DUPCLOSURE                       R121 K257 [PROTO_53]
      828 CAPTURE                          VAL R66
      829 SETTABLEKS                       R121 R30 K258 ["constructDeleteFavoriteUrl"]
      831 DUPCLOSURE                       R121 K259 [PROTO_54]
      832 CAPTURE                          VAL R79
      833 SETTABLEKS                       R121 R30 K260 ["constructPatchAssetUrl"]
      835 DUPCLOSURE                       R121 K261 [PROTO_55]
      836 CAPTURE                          VAL R75
      837 SETTABLEKS                       R121 R30 K262 ["constructOperationUrl"]
      839 DUPCLOSURE                       R121 K263 [PROTO_56]
      840 CAPTURE                          VAL R76
      841 SETTABLEKS                       R121 R30 K264 ["constructPostUploadAnimationUrl"]
      843 DUPCLOSURE                       R121 K265 [PROTO_57]
      844 CAPTURE                          VAL R78
      845 SETTABLEKS                       R121 R30 K266 ["constructValidateAnimationUrl"]
      847 DUPCLOSURE                       R121 K267 [PROTO_58]
      848 CAPTURE                          VAL R77
      849 SETTABLEKS                       R121 R30 K268 ["constructPostOverwriteAnimationUrl"]
      851 DUPCLOSURE                       R121 K269 [PROTO_59]
      852 CAPTURE                          VAL R81
      853 SETTABLEKS                       R121 R30 K270 ["constructGetMyGroupUrl"]
      855 DUPCLOSURE                       R121 K271 [PROTO_60]
      856 CAPTURE                          VAL R82
      857 SETTABLEKS                       R121 R30 K272 ["constructIsVerifiedCreatorUrl"]
      859 DUPCLOSURE                       R121 K273 [PROTO_61]
      860 CAPTURE                          VAL R84
      861 SETTABLEKS                       R121 R30 K274 ["constructGetUserFriendsUrl"]
      863 DUPCLOSURE                       R121 K275 [PROTO_62]
      864 CAPTURE                          VAL R96
      865 SETTABLEKS                       R121 R30 K276 ["constructAssetPermissionsUrl"]
      867 DUPCLOSURE                       R121 K277 [PROTO_63]
      868 CAPTURE                          VAL R99
      869 SETTABLEKS                       R121 R30 K278 ["constructAssetBatchGrantPermissionsUrl"]
      871 DUPCLOSURE                       R121 K279 [PROTO_64]
      872 CAPTURE                          VAL R97
      873 SETTABLEKS                       R121 R30 K280 ["constructAssetCheckPermissionsUrl"]
      875 DUPCLOSURE                       R121 K281 [PROTO_65]
      876 CAPTURE                          VAL R85
      877 SETTABLEKS                       R121 R30 K282 ["getRobuxPurchaseUrl"]
      879 DUPCLOSURE                       R121 K283 [PROTO_66]
      880 CAPTURE                          VAL R95
      881 SETTABLEKS                       R121 R30 K284 ["constructPostPackageMetadata"]
      883 DUPCLOSURE                       R121 K285 [PROTO_67]
      884 CAPTURE                          VAL R86
      885 SETTABLEKS                       R121 R30 K286 ["constructGetRobuxBalanceUrl"]
      887 DUPCLOSURE                       R121 K287 [PROTO_68]
      888 CAPTURE                          VAL R83
      889 SETTABLEKS                       R121 R30 K288 ["constructGetGroupRoleInfoUrl"]
      891 DUPCLOSURE                       R121 K289 [PROTO_69]
      892 CAPTURE                          VAL R98
      893 SETTABLEKS                       R121 R30 K290 ["constructAssetCheckPermissionsBatchUrl"]
      895 DUPCLOSURE                       R121 K291 [PROTO_70]
      896 CAPTURE                          VAL R9
      897 CAPTURE                          VAL R90
      898 CAPTURE                          VAL R89
      899 CAPTURE                          VAL R88
      900 SETTABLEKS                       R121 R30 K292 ["constructAssetPurchaseUrl"]
      902 DUPCLOSURE                       R121 K293 [PROTO_71]
      903 CAPTURE                          VAL R91
      904 SETTABLEKS                       R121 R30 K294 ["constructPurchaserStatusUrl"]
      906 MOVE                             R121 R10
      907 CALL                             R121 0 1
      908 JUMPIFNOT                        R121 ; [+4]
      909 DUPCLOSURE                       R121 K295 [PROTO_72]
      910 CAPTURE                          VAL R92
      911 SETTABLEKS                       R121 R30 K296 ["constructSellerStatusUrl"]
      913 DUPCLOSURE                       R121 K297 [PROTO_73]
      914 CAPTURE                          VAL R80
      915 CAPTURE                          VAL R25
      916 SETTABLEKS                       R121 R30 K298 ["constructUploadCatalogItemFormatUrl"]
      918 DUPCLOSURE                       R121 K299 [PROTO_74]
      919 CAPTURE                          VAL R106
      920 CAPTURE                          VAL R25
      921 SETTABLEKS                       R121 R30 K300 ["constructAssetTypeAgentsUrl"]
      923 DUPCLOSURE                       R121 K301 [PROTO_75]
      924 CAPTURE                          VAL R107
      925 CAPTURE                          VAL R25
      926 SETTABLEKS                       R121 R30 K302 ["constructToolboxAutocompleteUrl"]
      928 DUPCLOSURE                       R121 K303 [PROTO_76]
      929 CAPTURE                          VAL R100
      930 CAPTURE                          VAL R25
      931 CAPTURE                          VAL R28
      932 SETTABLEKS                       R121 R30 K304 ["constructGetHomeConfigurationUrl"]
      934 DUPCLOSURE                       R121 K305 [PROTO_77]
      935 CAPTURE                          VAL R108
      936 CAPTURE                          VAL R25
      937 SETTABLEKS                       R121 R30 K306 ["constructPublishingRequirementsUrl"]
      939 DUPCLOSURE                       R121 K307 [PROTO_78]
      940 CAPTURE                          VAL R25
      941 SETTABLEKS                       R121 R30 K308 ["getCreatorMarketplaceQuotas"]
      943 DUPCLOSURE                       R121 K309 [PROTO_79]
      944 CAPTURE                          VAL R112
      945 SETTABLEKS                       R121 R30 K310 ["constructGetAssetMediaIdsUrl"]
      947 DUPCLOSURE                       R121 K311 [PROTO_80]
      948 CAPTURE                          VAL R113
      949 SETTABLEKS                       R121 R30 K312 ["constructDeleteAssetMediaUrl"]
      951 DUPCLOSURE                       R121 K313 [PROTO_81]
      952 CAPTURE                          VAL R114
      953 SETTABLEKS                       R121 R30 K314 ["constructPostSetAssetMediaOrder"]
      955 DUPCLOSURE                       R121 K315 [PROTO_82]
      956 CAPTURE                          VAL R115
      957 SETTABLEKS                       R121 R30 K316 ["constructPostUploadAssetMedia"]
      959 JUMPIFNOT                        R3 ; [+4]
      960 DUPCLOSURE                       R121 K317 [PROTO_83]
      961 CAPTURE                          VAL R26
      962 SETTABLEKS                       R121 R30 K318 ["constructCreatorDashboardAssetConfigUrl"]
      964 JUMPIFNOT                        R5 ; [+6]
      965 DUPCLOSURE                       R121 K319 [PROTO_84]
      966 CAPTURE                          VAL R26
      967 CAPTURE                          VAL R93
      968 SETTABLEKS                       R121 R30 K320 ["constructCreatorDashboardConfigAvatarAssetUrl"]
      970 JUMP                             ; [+5]
      971 DUPCLOSURE                       R121 K321 [PROTO_85]
      972 CAPTURE                          VAL R26
      973 CAPTURE                          VAL R93
      974 SETTABLEKS                       R121 R30 K322 ["constructCreatorDashboardAvatarAssetUrl"]
      976 DUPCLOSURE                       R121 K323 [PROTO_86]
      977 CAPTURE                          VAL R26
      978 SETTABLEKS                       R121 R30 K324 ["constructCreatorDashboardCreationsPageUrl"]
      980 JUMPIFNOT                        R4 ; [+5]
      981 DUPCLOSURE                       R121 K325 [PROTO_87]
      982 CAPTURE                          VAL R26
      983 CAPTURE                          VAL R94
      984 SETTABLEKS                       R121 R30 K326 ["constructCreatorDashboardBundleConfigureUrl"]
      986 DUPCLOSURE                       R121 K327 [PROTO_88]
      987 CAPTURE                          VAL R26
      988 SETTABLEKS                       R121 R30 K328 ["constructCreatorStoreConfigurationUrl"]
      990 DUPCLOSURE                       R121 K329 [PROTO_89]
      991 CAPTURE                          VAL R117
      992 SETTABLEKS                       R121 R30 K330 ["constructGetUniverseInfo"]
      994 MOVE                             R121 R7
      995 CALL                             R121 0 1
      996 JUMPIFNOT                        R121 ; [+4]
      997 DUPCLOSURE                       R121 K331 [PROTO_90]
      998 CAPTURE                          VAL R109
      999 SETTABLEKS                       R121 R30 K332 ["constructCodeUnderstandingSummaryUrl"]
     1001 DUPCLOSURE                       R121 K333 [PROTO_91]
     1002 CAPTURE                          VAL R111
     1003 CAPTURE                          VAL R27
     1004 SETTABLEKS                       R121 R30 K334 ["constructGetFiatProductUrl"]
     1006 DUPCLOSURE                       R121 K335 [PROTO_92]
     1007 CAPTURE                          VAL R118
     1008 CAPTURE                          VAL R25
     1009 SETTABLEKS                       R121 R30 K336 ["constructAllowedGroupsForActionUrl"]
     1011 DUPCLOSURE                       R121 K337 [PROTO_93]
     1012 CAPTURE                          VAL R31
     1013 SETTABLEKS                       R121 R30 K338 ["constructCreatorStoreUrl"]
     1015 MOVE                             R121 R12
     1016 CALL                             R121 0 1
     1017 JUMPIFNOT                        R121 ; [+4]
     1018 DUPCLOSURE                       R121 K339 [PROTO_94]
     1019 CAPTURE                          VAL R119
     1020 SETTABLEKS                       R121 R30 K340 ["constructBatchAssetAccessPropertiesUrl"]
     1022 MOVE                             R121 R29
     1023 MOVE                             R122 R30
     1024 CALL                             R121 1 1
     1025 RETURN                           R121 1
