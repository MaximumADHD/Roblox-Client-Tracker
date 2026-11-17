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
        0 GETIMPORT                        R6 K2 [string.format]
        2 GETUPVAL                         R7 0
        3 MOVE                             R8 R4
        4 MOVE                             R9 R0
        5 CALL                             R6 3 1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K3 ["makeQueryString"]
        9 DUPTABLE                         R8 K6 [{"limit", "cursor"}]
       10 SETTABLEKS                       R1 R8 K4 ["limit"]
       12 SETTABLEKS                       R2 R8 K5 ["cursor"]
       14 CALL                             R7 1 1
       15 CONCAT                           R5 R6 R7
       16 RETURN                           R5 1

PROTO_11:
        0 GETIMPORT                        R6 K2 [string.format]
        2 GETUPVAL                         R7 0
        3 MOVE                             R8 R4
        4 MOVE                             R9 R0
        5 CALL                             R6 3 1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K3 ["makeQueryString"]
        9 DUPTABLE                         R8 K7 [{"limit", "cursor", "separateModelsAndPackages"}]
       10 SETTABLEKS                       R1 R8 K4 ["limit"]
       12 SETTABLEKS                       R2 R8 K5 ["cursor"]
       14 SETTABLEKS                       R3 R8 K6 ["separateModelsAndPackages"]
       16 CALL                             R7 1 1
       17 CONCAT                           R5 R6 R7
       18 RETURN                           R5 1

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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_22:
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

PROTO_23:
        0 NEWTABLE                         R3 2 0
        2 JUMPIFNOT                        R1 ; [+3]
        3 SETTABLEKS                       R0 R3 K0 ["bundleType"]
        5 JUMP                             ; [+2]
        6 SETTABLEKS                       R0 R3 K1 ["assetType"]
        8 JUMPIFNOT                        R2 ; [+12]
        9 MOVE                             R4 R2
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 FASTCALL1                        TOSTRING R8 ; [+3]
       14 MOVE                             R10 R8
       15 GETIMPORT                        R9 K3 [tostring]
       17 CALL                             R9 1 1
       18 SETTABLE                         R9 R3 R7
       19 FORGLOOP                         R4 2 ; [-7]
       21 GETUPVAL                         R5 0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K4 ["makeQueryString"]
       25 MOVE                             R7 R3
       26 CALL                             R6 1 1
       27 CONCAT                           R4 R5 R6
       28 RETURN                           R4 1

PROTO_24:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K0 ["?"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        9 DUPTABLE                         R5 K3 [{"groupId"}]
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K5 [tostring]
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K2 ["groupId"]
       17 CALL                             R4 1 1
       18 CONCAT                           R1 R2 R4
       19 RETURN                           R1 1

PROTO_25:
        0 DUPTABLE                         R1 K5 [{[1], ["quantity"] = "0", ["publishingType"] = "NonLimited"}]
        1 SETTABLEKS                       R0 R1 K0 ["assetType"]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K6 ["makeQueryString"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1

PROTO_26:
        0 DUPTABLE                         R2 K2 [{[1] = "1"}]
        1 JUMPIFNOT                        R1 ; [+3]
        2 SETTABLEKS                       R0 R2 K3 ["bundleType"]
        4 JUMP                             ; [+2]
        5 SETTABLEKS                       R0 R2 K4 ["assetType"]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K5 ["makeQueryString"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 CONCAT                           R3 R4 R5
       14 RETURN                           R3 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K6 [{["assetIds"], ["format"] = "Png", ["size"] = "150x150"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"assetId", "assetType"}]
        5 SETTABLEKS                       R0 R5 K1 ["assetId"]
        7 SETTABLEKS                       R1 R5 K2 ["assetType"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_34:
        0 GETIMPORT                        R2 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R5 K3 ["true"]
        6 JUMP                             ; [+1]
        7 LOADK                            R5 K4 ["false"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_35:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_36:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s/insert/asset/%d"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"pluginIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["pluginIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 2
        6 RETURN                           R0 1

PROTO_39:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["https://apis.%screator-home-api/v1/groups?surface=%s"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["DOMAIN"]
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_DELIVERY_URL"]
        3 LOADK                            R3 K1 ["v1/asset/?id=%d&permissionContext=ignoreUniverse"]
        4 CONCAT                           R1 R2 R3
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"id"}]
        5 SETTABLEKS                       R0 R4 K1 ["id"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_43:
        0 ORK                              R1 R1 K0 [50]
        1 ORK                              R2 R2 K1 [""]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 NAMECALL                         R4 R4 K0 ["format"]
        4 CALL                             R4 2 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["makeQueryString"]
        8 DUPTABLE                         R6 K4 [{"maxPageSize", "pageToken"}]
        9 SETTABLEKS                       R1 R6 K2 ["maxPageSize"]
       11 SETTABLEKS                       R2 R6 K3 ["pageToken"]
       13 CALL                             R5 1 1
       14 CONCAT                           R3 R4 R5
       15 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_48:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["format"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        8 DUPTABLE                         R5 K3 [{"assetVersionNumber"}]
        9 SETTABLEKS                       R1 R5 K2 ["assetVersionNumber"]
       11 CALL                             R4 1 1
       12 CONCAT                           R2 R3 R4
       13 RETURN                           R2 1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_51:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R6 R6 K0 ["makeQueryString"]
        4 DUPTABLE                         R7 K3 [{"id", "assetName"}]
        5 SETTABLEKS                       R0 R7 K1 ["id"]
        7 SETTABLEKS                       R3 R7 K2 ["assetName"]
        9 CALL                             R6 1 1
       10 LOADK                            R7 K4 ["#"]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K0 ["makeQueryString"]
       14 DUPTABLE                         R9 K7 [{"assetTypeId", "isPackage"}]
       15 SETTABLEKS                       R1 R9 K5 ["assetTypeId"]
       17 SETTABLEKS                       R2 R9 K6 ["isPackage"]
       19 CALL                             R8 1 1
       20 CONCAT                           R4 R5 R8
       21 RETURN                           R4 1

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["APIS_URL"]
        3 LOADK                            R3 K1 ["search-api/omni-search?"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["makeQueryString"]
        7 DUPTABLE                         R5 K9 [{["searchQuery"], ["sessionId"], ["pageType"] = "all", ["verticalType"] = "user"}]
        8 SETTABLEKS                       R0 R5 K3 ["searchQuery"]
       10 GETUPVAL                         R6 1
       11 LOADB                            R8 0
       12 NAMECALL                         R6 R6 K10 ["GenerateGUID"]
       14 CALL                             R6 2 1
       15 SETTABLEKS                       R6 R5 K4 ["sessionId"]
       17 CALL                             R4 1 1
       18 CONCAT                           R1 R2 R4
       19 RETURN                           R1 1

PROTO_55:
        0 ORK                              R1 R1 K0 [100]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        5 DUPTABLE                         R5 K7 [{["userId"], ["width"], ["height"], ["format"] = "png"}]
        6 SETTABLEKS                       R0 R5 K2 ["userId"]
        8 SETTABLEKS                       R1 R5 K3 ["width"]
       10 SETTABLEKS                       R1 R5 K4 ["height"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["/favorites/assets/%d/count"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 -1
        6 NAMECALL                         R1 R1 K1 ["format"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_59:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_62:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_71:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_72:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_73:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_76:
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

PROTO_77:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_78:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["Name"]
        3 NAMECALL                         R2 R2 K1 ["format"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["makeQueryString"]
        9 NEWTABLE                         R4 2 0
       11 LOADK                            R5 K3 ["Upload"]
       12 SETTABLEKS                       R5 R4 K4 ["requestModel.actionType"]
       14 LOADK                            R5 K5 ["Group"]
       15 SETTABLEKS                       R5 R4 K6 ["requestModel.agentType"]
       17 CALL                             R3 1 1
       18 CONCAT                           R1 R2 R3
       19 RETURN                           R1 1

PROTO_81:
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

PROTO_82:
        0 GETIMPORT                        R3 K2 [string.format]
        2 LOADK                            R4 K3 ["%s/home/%s/configuration?"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R0 K4 ["Name"]
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K5 ["makeQueryString"]
       10 DUPTABLE                         R5 K8 [{"locale", "placeId"}]
       11 SETTABLEKS                       R1 R5 K6 ["locale"]
       13 GETUPVAL                         R6 2
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K7 ["placeId"]
       17 CALL                             R4 1 1
       18 CONCAT                           R2 R3 R4
       19 RETURN                           R2 1

PROTO_83:
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

PROTO_84:
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

PROTO_85:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_86:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_87:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_88:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
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

PROTO_94:
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

PROTO_95:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_96:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["AssetInfo"]
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_97:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_98:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"action"}]
        5 SETTABLEKS                       R0 R4 K1 ["action"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_99:
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

PROTO_100:
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
       50 GETTABLEKS                       R8 R8 K18 ["Flags"]
       52 GETTABLEKS                       R8 R8 K19 ["getFFlagToolboxPublishOnApproval"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K15 [require]
       57 GETTABLEKS                       R9 R0 K4 ["Src"]
       59 GETTABLEKS                       R9 R9 K5 ["Util"]
       61 GETTABLEKS                       R9 R9 K16 ["SharedFlags"]
       63 GETTABLEKS                       R9 R9 K20 ["getFFlagToolboxCodeUnderstandingSummary"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K7 [game]
       68 LOADK                            R11 K21 ["ToolboxVideoTestUseLocalAudioFile"]
       69 NAMECALL                         R9 R9 K11 ["GetFastFlag"]
       71 CALL                             R9 2 1
       72 GETIMPORT                        R10 K15 [require]
       74 GETTABLEKS                       R11 R1 K16 ["SharedFlags"]
       76 GETTABLEKS                       R11 R11 K22 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K15 [require]
       81 GETTABLEKS                       R12 R0 K4 ["Src"]
       83 GETTABLEKS                       R12 R12 K5 ["Util"]
       85 GETTABLEKS                       R12 R12 K16 ["SharedFlags"]
       87 GETTABLEKS                       R12 R12 K23 ["getFFlagToolboxAssetConfigOnboardingLink"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K15 [require]
       92 GETTABLEKS                       R13 R1 K16 ["SharedFlags"]
       94 GETTABLEKS                       R13 R13 K24 ["getFFlagToolboxCreatorContextThumbnail"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K15 [require]
       99 GETTABLEKS                       R14 R0 K4 ["Src"]
      101 GETTABLEKS                       R14 R14 K18 ["Flags"]
      103 GETTABLEKS                       R14 R14 K25 ["getFFlagEnableUpdateAvatarItem"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K15 [require]
      108 GETTABLEKS                       R15 R0 K4 ["Src"]
      110 GETTABLEKS                       R15 R15 K18 ["Flags"]
      112 GETTABLEKS                       R15 R15 K26 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K15 [require]
      117 GETTABLEKS                       R16 R0 K4 ["Src"]
      119 GETTABLEKS                       R16 R16 K5 ["Util"]
      121 GETTABLEKS                       R16 R16 K16 ["SharedFlags"]
      123 GETTABLEKS                       R16 R16 K27 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
      125 CALL                             R15 1 1
      126 GETTABLEKS                       R16 R0 K28 ["Packages"]
      128 GETIMPORT                        R17 K15 [require]
      130 GETTABLEKS                       R18 R16 K29 ["Framework"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K15 [require]
      135 GETTABLEKS                       R19 R16 K30 ["Dash"]
      137 CALL                             R18 1 1
      138 GETIMPORT                        R19 K15 [require]
      140 GETTABLEKS                       R20 R16 K31 ["LuauPolyfill"]
      142 CALL                             R19 1 1
      143 GETTABLEKS                       R20 R19 K32 ["Set"]
      145 GETTABLEKS                       R21 R19 K33 ["Object"]
      147 GETTABLEKS                       R22 R19 K34 ["Array"]
      149 GETIMPORT                        R23 K15 [require]
      151 GETTABLEKS                       R24 R0 K4 ["Src"]
      153 GETTABLEKS                       R24 R24 K35 ["Types"]
      155 GETTABLEKS                       R24 R24 K36 ["AssetQuotaTypes"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R25 R0 K4 ["Src"]
      162 GETTABLEKS                       R25 R25 K35 ["Types"]
      164 GETTABLEKS                       R25 R25 K37 ["AssetSubTypes"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K15 [require]
      169 GETTABLEKS                       R26 R0 K4 ["Src"]
      171 GETTABLEKS                       R26 R26 K35 ["Types"]
      173 GETTABLEKS                       R26 R26 K38 ["HomeTypes"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R27 R0 K4 ["Src"]
      180 GETTABLEKS                       R27 R27 K35 ["Types"]
      182 GETTABLEKS                       R27 R27 K39 ["Category"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R28 R0 K40 ["Libs"]
      189 GETTABLEKS                       R28 R28 K41 ["Http"]
      191 GETTABLEKS                       R28 R28 K42 ["Url"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K15 [require]
      196 GETTABLEKS                       R29 R0 K4 ["Src"]
      198 GETTABLEKS                       R29 R29 K5 ["Util"]
      200 GETTABLEKS                       R29 R29 K43 ["ToolboxUtilities"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K15 [require]
      205 GETTABLEKS                       R30 R1 K44 ["FiatUtil"]
      207 CALL                             R29 1 1
      208 GETIMPORT                        R30 K15 [require]
      210 GETTABLEKS                       R31 R1 K45 ["getPlaceId"]
      212 CALL                             R30 1 1
      213 GETIMPORT                        R31 K15 [require]
      215 GETTABLEKS                       R32 R1 K46 ["wrapStrictTable"]
      217 CALL                             R31 1 1
      218 NEWTABLE                         R32 128 0
      220 GETTABLEKS                       R34 R27 K47 ["CREATE_URL"]
      222 LOADK                            R35 K48 ["store/"]
      223 CONCAT                           R33 R34 R35
      224 GETTABLEKS                       R35 R27 K49 ["ITEM_CONFIGURATION_URL"]
      226 LOADK                            R36 K50 ["v1/permissions/item-types?"]
      227 CONCAT                           R34 R35 R36
      228 GETTABLEKS                       R36 R27 K51 ["APIS_URL"]
      230 LOADK                            R37 K52 ["assets/user-auth/v1/assets/%d"]
      231 CONCAT                           R35 R36 R37
      232 GETTABLEKS                       R37 R27 K53 ["BASE_URL"]
      234 LOADK                            R38 K54 ["IDE/Toolbox/Items?"]
      235 CONCAT                           R36 R37 R38
      236 GETTABLEKS                       R38 R27 K55 ["DEVELOP_URL"]
      238 LOADK                            R39 K56 ["v1/toolbox/items?"]
      239 CONCAT                           R37 R38 R39
      240 GETTABLEKS                       R39 R27 K49 ["ITEM_CONFIGURATION_URL"]
      242 LOADK                            R40 K57 ["v1/creations/get-assets?"]
      243 CONCAT                           R38 R39 R40
      244 GETTABLEKS                       R40 R27 K58 ["USERS_URL"]
      246 LOADK                            R41 K59 ["/v1/users/%d"]
      247 CONCAT                           R39 R40 R41
      248 GETTABLEKS                       R41 R27 K60 ["GROUP_URL"]
      250 LOADK                            R42 K61 ["v0/groups/%d"]
      251 CONCAT                           R40 R41 R42
      252 GETTABLEKS                       R42 R27 K62 ["PUBLISH_URL"]
      254 LOADK                            R43 K63 ["v1/assets/%d/thumbnail"]
      255 CONCAT                           R41 R42 R43
      256 GETTABLEKS                       R43 R27 K55 ["DEVELOP_URL"]
      258 LOADK                            R44 K64 ["v1/assets/%d"]
      259 CONCAT                           R42 R43 R44
      260 GETTABLEKS                       R44 R27 K49 ["ITEM_CONFIGURATION_URL"]
      262 LOADK                            R45 K65 ["v1/assets/%d/release"]
      263 CONCAT                           R43 R44 R45
      264 GETTABLEKS                       R45 R27 K49 ["ITEM_CONFIGURATION_URL"]
      266 LOADK                            R46 K66 ["v1/assets/%d/update-price"]
      267 CONCAT                           R44 R45 R46
      268 GETTABLEKS                       R46 R27 K67 ["THUMBNAIL_URL"]
      270 LOADK                            R47 K68 ["v1/assets?"]
      271 CONCAT                           R45 R46 R47
      272 GETTABLEKS                       R47 R27 K49 ["ITEM_CONFIGURATION_URL"]
      274 LOADK                            R48 K69 ["v1/items/by-creator?"]
      275 CONCAT                           R46 R47 R48
      276 GETTABLEKS                       R48 R27 K49 ["ITEM_CONFIGURATION_URL"]
      278 LOADK                            R49 K70 ["v1/items?"]
      279 CONCAT                           R47 R48 R49
      280 GETTABLEKS                       R49 R27 K49 ["ITEM_CONFIGURATION_URL"]
      282 LOADK                            R50 K71 ["v1/items/upload-fee?"]
      283 CONCAT                           R48 R49 R50
      284 GETTABLEKS                       R50 R27 K49 ["ITEM_CONFIGURATION_URL"]
      286 LOADK                            R51 K72 ["v1/preferences/publishing"]
      287 CONCAT                           R49 R50 R51
      288 GETTABLEKS                       R51 R27 K49 ["ITEM_CONFIGURATION_URL"]
      290 LOADK                            R52 K73 ["v1/collectibles/publishing-fees/preview?"]
      291 CONCAT                           R50 R51 R52
      292 GETTABLEKS                       R52 R27 K49 ["ITEM_CONFIGURATION_URL"]
      294 LOADK                            R53 K74 ["v1/permissions/action-allowed-for-item-type?"]
      295 CONCAT                           R51 R52 R53
      296 GETTABLEKS                       R53 R27 K49 ["ITEM_CONFIGURATION_URL"]
      298 LOADK                            R54 K75 ["v1/bundles/metadata"]
      299 CONCAT                           R52 R53 R54
      300 GETTABLEKS                       R54 R27 K49 ["ITEM_CONFIGURATION_URL"]
      302 LOADK                            R55 K76 ["v1/bundles/create-context"]
      303 CONCAT                           R53 R54 R55
      304 MOVE                             R55 R13
      305 CALL                             R55 0 1
      306 JUMPIFNOT                        R55 ; [+5]
      307 GETTABLEKS                       R55 R27 K49 ["ITEM_CONFIGURATION_URL"]
      309 LOADK                            R56 K77 ["v1/avatar-item-updates/create-context"]
      310 CONCAT                           R54 R55 R56
      311 JUMP                             ; [+1]
      312 LOADNIL                          R54
      313 GETTABLEKS                       R56 R27 K49 ["ITEM_CONFIGURATION_URL"]
      315 LOADK                            R57 K78 ["v1/bundles"]
      316 CONCAT                           R55 R56 R57
      317 GETTABLEKS                       R57 R27 K49 ["ITEM_CONFIGURATION_URL"]
      319 LOADK                            R58 K79 ["v1/bundles/status"]
      320 CONCAT                           R56 R57 R58
      321 GETTABLEKS                       R58 R27 K51 ["APIS_URL"]
      323 LOADK                            R59 K80 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      324 CONCAT                           R57 R58 R59
      325 GETTABLEKS                       R59 R27 K51 ["APIS_URL"]
      327 LOADK                            R60 K81 ["resource-settings/v1/bundles"]
      328 CONCAT                           R58 R59 R60
      329 GETTABLEKS                       R60 R27 K51 ["APIS_URL"]
      331 LOADK                            R61 K82 ["resource-settings/v1/avatar-assets"]
      332 CONCAT                           R59 R60 R61
      333 GETTABLEKS                       R61 R27 K53 ["BASE_URL"]
      335 LOADK                            R62 K83 ["voting/vote?assetId=%s&vote=%s"]
      336 CONCAT                           R60 R61 R62
      337 GETTABLEKS                       R62 R27 K51 ["APIS_URL"]
      339 LOADK                            R63 K84 ["voting-api/vote/asset/%s?vote=%s"]
      340 CONCAT                           R61 R62 R63
      341 GETTABLEKS                       R63 R27 K51 ["APIS_URL"]
      343 LOADK                            R64 K85 ["voting-api/vote/asset/%s"]
      344 CONCAT                           R62 R63 R64
      345 GETTABLEKS                       R64 R27 K53 ["BASE_URL"]
      347 LOADK                            R65 K86 ["IDE/Toolbox/InsertAsset?"]
      348 CONCAT                           R63 R64 R65
      349 GETTABLEKS                       R65 R27 K55 ["DEVELOP_URL"]
      351 LOADK                            R66 K87 ["v1/user/groups/canmanage"]
      352 CONCAT                           R64 R65 R66
      353 GETTABLEKS                       R66 R27 K51 ["APIS_URL"]
      355 LOADK                            R67 K88 ["orgs/v2/groups/permissions/createassets"]
      356 CONCAT                           R65 R66 R67
      357 GETTABLEKS                       R67 R27 K51 ["APIS_URL"]
      359 LOADK                            R68 K89 ["studio-plugin-api/v1/plugins?"]
      360 CONCAT                           R66 R67 R68
      361 GETTABLEKS                       R68 R27 K53 ["BASE_URL"]
      363 LOADK                            R69 K90 ["asset/?"]
      364 CONCAT                           R67 R68 R69
      365 GETTABLEKS                       R69 R27 K91 ["GAME_ASSET_URL"]
      367 LOADK                            R70 K90 ["asset/?"]
      368 CONCAT                           R68 R69 R70
      369 GETTABLEKS                       R70 R27 K91 ["GAME_ASSET_URL"]
      371 LOADK                            R71 K92 ["asset-thumbnail/image?"]
      372 CONCAT                           R69 R70 R71
      373 GETTABLEKS                       R71 R27 K53 ["BASE_URL"]
      375 LOADK                            R72 K93 ["headshot-thumbnail/image?"]
      376 CONCAT                           R70 R71 R72
      377 GETTABLEKS                       R72 R27 K94 ["CATALOG_URL"]
      379 LOADK                            R73 K95 ["v1%s"]
      380 CONCAT                           R71 R72 R73
      381 GETTABLEKS                       R73 R27 K55 ["DEVELOP_URL"]
      383 LOADK                            R74 K96 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      384 CONCAT                           R72 R73 R74
      385 GETTABLEKS                       R74 R27 K55 ["DEVELOP_URL"]
      387 LOADK                            R75 K97 ["v1/assets/%s/saved-versions?limit=%s"]
      388 CONCAT                           R73 R74 R75
      389 GETTABLEKS                       R75 R27 K55 ["DEVELOP_URL"]
      391 LOADK                            R76 K98 ["v1/assets/%s/saved-versions?cursor=%s"]
      392 CONCAT                           R74 R75 R76
      393 GETTABLEKS                       R76 R27 K55 ["DEVELOP_URL"]
      395 LOADK                            R77 K99 ["v1/assets/%s/revert-version?"]
      396 CONCAT                           R75 R76 R77
      397 GETTABLEKS                       R77 R27 K55 ["DEVELOP_URL"]
      399 LOADK                            R78 K68 ["v1/assets?"]
      400 CONCAT                           R76 R77 R78
      401 GETTABLEKS                       R78 R27 K51 ["APIS_URL"]
      403 LOADK                            R79 K100 ["packages-api/v1/packages/assets/versions/notes/get"]
      404 CONCAT                           R77 R78 R79
      405 GETTABLEKS                       R79 R27 K51 ["APIS_URL"]
      407 LOADK                            R80 K101 ["packages-api/v1/packages/assets/%s/versions/notes"]
      408 CONCAT                           R78 R79 R80
      409 GETTABLEKS                       R80 R27 K51 ["APIS_URL"]
      411 LOADK                            R81 K102 ["assets/user-auth/v1/assets/%s/versions?"]
      412 CONCAT                           R79 R80 R81
      413 GETTABLEKS                       R81 R27 K51 ["APIS_URL"]
      415 LOADK                            R82 K103 ["assets/user-auth/v1/assets/%s/versions:rollback"]
      416 CONCAT                           R80 R81 R82
      417 GETTABLEKS                       R82 R27 K51 ["APIS_URL"]
      419 LOADK                            R83 K104 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      420 CONCAT                           R81 R82 R83
      421 GETTABLEKS                       R83 R27 K51 ["APIS_URL"]
      423 LOADK                            R84 K105 ["assets/user-auth/v1/operations/%s"]
      424 CONCAT                           R82 R83 R84
      425 GETTABLEKS                       R84 R27 K51 ["APIS_URL"]
      427 LOADK                            R85 K106 ["assets/user-auth/v1/assets"]
      428 CONCAT                           R83 R84 R85
      429 GETTABLEKS                       R85 R27 K51 ["APIS_URL"]
      431 LOADK                            R86 K107 ["assets/user-auth/v1/assets/%s"]
      432 CONCAT                           R84 R85 R86
      433 GETTABLEKS                       R86 R27 K51 ["APIS_URL"]
      435 LOADK                            R87 K107 ["assets/user-auth/v1/assets/%s"]
      436 CONCAT                           R85 R86 R87
      437 GETTABLEKS                       R87 R27 K55 ["DEVELOP_URL"]
      439 LOADK                            R88 K108 ["v1/assets/%s?"]
      440 CONCAT                           R86 R87 R88
      441 GETTABLEKS                       R88 R27 K60 ["GROUP_URL"]
      443 LOADK                            R89 K109 ["v2/users/%%20%%20%s/groups/roles"]
      444 CONCAT                           R87 R88 R89
      445 GETTABLEKS                       R89 R27 K55 ["DEVELOP_URL"]
      447 LOADK                            R90 K110 ["v1/user/is-verified-creator"]
      448 CONCAT                           R88 R89 R90
      449 GETTABLEKS                       R90 R27 K60 ["GROUP_URL"]
      451 LOADK                            R91 K111 ["v1/groups/%s/roles"]
      452 CONCAT                           R89 R90 R91
      453 GETTABLEKS                       R91 R27 K112 ["FRIENDS_URL"]
      455 LOADK                            R92 K113 ["v1/users/%d/friends"]
      456 CONCAT                           R90 R91 R92
      457 GETTABLEKS                       R92 R27 K53 ["BASE_URL"]
      459 LOADK                            R93 K114 ["upgrades/robux"]
      460 CONCAT                           R91 R92 R93
      461 GETTABLEKS                       R93 R27 K115 ["ECONOMY_URL"]
      463 LOADK                            R94 K116 ["v1/users/%d/currency"]
      464 CONCAT                           R92 R93 R94
      465 GETTABLEKS                       R94 R27 K55 ["DEVELOP_URL"]
      467 LOADK                            R95 K117 ["v1/user/%d/canmanage/%d"]
      468 CONCAT                           R93 R94 R95
      469 GETTABLEKS                       R95 R27 K115 ["ECONOMY_URL"]
      471 LOADK                            R96 K118 ["/v1/purchases/products/%d"]
      472 CONCAT                           R94 R95 R96
      473 GETTABLEKS                       R96 R27 K51 ["APIS_URL"]
      475 LOADK                            R97 K119 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      476 CONCAT                           R95 R96 R97
      477 GETTABLEKS                       R97 R27 K51 ["APIS_URL"]
      479 LOADK                            R98 K120 ["marketplace-fiat-service/v1/product/purchase"]
      480 CONCAT                           R96 R97 R98
      481 GETTABLEKS                       R98 R27 K51 ["APIS_URL"]
      483 LOADK                            R99 K121 ["marketplace-fiat-service/v1/purchaser/status"]
      484 CONCAT                           R97 R98 R99
      485 MOVE                             R99 R11
      486 CALL                             R99 0 1
      487 JUMPIFNOT                        R99 ; [+5]
      488 GETTABLEKS                       R99 R27 K51 ["APIS_URL"]
      490 LOADK                            R100 K122 ["marketplace-fiat-service/v1/seller/status"]
      491 CONCAT                           R98 R99 R100
      492 JUMP                             ; [+1]
      493 LOADNIL                          R98
      494 JUMPIFNOT                        R5 ; [+2]
      495 LOADK                            R99 K123 ["/creations/catalog/%d/configure"]
      496 JUMP                             ; [+1]
      497 LOADK                            R99 K124 ["/creations?activeTab=TShirt"]
      498 JUMPIFNOT                        R4 ; [+2]
      499 LOADK                            R100 K125 ["/creations/bundle/%d/configure"]
      500 JUMP                             ; [+1]
      501 LOADNIL                          R100
      502 GETTABLEKS                       R102 R27 K51 ["APIS_URL"]
      504 LOADK                            R103 K126 ["packages-api/v1/packages/assets/versions/metadata/get"]
      505 CONCAT                           R101 R102 R103
      506 GETTABLEKS                       R103 R27 K51 ["APIS_URL"]
      508 LOADK                            R104 K127 ["asset-permissions-api/v1/assets/%s/permissions"]
      509 CONCAT                           R102 R103 R104
      510 GETTABLEKS                       R104 R27 K51 ["APIS_URL"]
      512 LOADK                            R105 K128 ["asset-permissions-api/v1/assets/check-actions"]
      513 CONCAT                           R103 R104 R105
      514 GETTABLEKS                       R105 R27 K51 ["APIS_URL"]
      516 LOADK                            R106 K129 ["asset-permissions-api/v1/assets/check-permissions"]
      517 CONCAT                           R104 R105 R106
      518 GETTABLEKS                       R106 R27 K51 ["APIS_URL"]
      520 LOADK                            R107 K130 ["asset-permissions-api/v1/assets/permissions"]
      521 CONCAT                           R105 R106 R107
      522 GETTABLEKS                       R107 R27 K51 ["APIS_URL"]
      524 LOADK                            R108 K131 ["toolbox-service/v1"]
      525 CONCAT                           R106 R107 R108
      526 GETTABLEKS                       R108 R27 K51 ["APIS_URL"]
      528 LOADK                            R109 K132 ["toolbox-service/v1/%s?"]
      529 CONCAT                           R107 R108 R109
      530 GETTABLEKS                       R109 R27 K51 ["APIS_URL"]
      532 LOADK                            R110 K133 ["toolbox-service/v1/items/details?"]
      533 CONCAT                           R108 R109 R110
      534 GETTABLEKS                       R110 R27 K51 ["APIS_URL"]
      536 LOADK                            R111 K134 ["toolbox-service/v1/creations/group/%d/%s?"]
      537 CONCAT                           R109 R110 R111
      538 GETTABLEKS                       R111 R27 K51 ["APIS_URL"]
      540 LOADK                            R112 K135 ["toolbox-service/v1/creations/user/%d/%s?"]
      541 CONCAT                           R110 R111 R112
      542 MOVE                             R112 R106
      543 LOADK                            R113 K136 ["/voting/vote?"]
      544 CONCAT                           R111 R112 R113
      545 GETTABLEKS                       R113 R27 K49 ["ITEM_CONFIGURATION_URL"]
      547 LOADK                            R114 K137 ["v1/asset-types/%s/agents?"]
      548 CONCAT                           R112 R113 R114
      549 GETTABLEKS                       R114 R27 K51 ["APIS_URL"]
      551 LOADK                            R115 K138 ["autocomplete-studio/v2/suggest?"]
      552 CONCAT                           R113 R114 R115
      553 GETTABLEKS                       R115 R27 K51 ["APIS_URL"]
      555 LOADK                            R116 K139 ["marketplace-publishing-requirements-api/v1/requirements?"]
      556 CONCAT                           R114 R115 R116
      557 JUMPIFNOT                        R8 ; [+5]
      558 GETTABLEKS                       R116 R27 K51 ["APIS_URL"]
      560 LOADK                            R117 K140 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      561 CONCAT                           R115 R116 R117
      562 JUMP                             ; [+1]
      563 LOADNIL                          R115
      564 GETTABLEKS                       R117 R27 K51 ["APIS_URL"]
      566 LOADK                            R118 K141 ["user/cloud/v2/creator-store-products/"]
      567 CONCAT                           R116 R117 R118
      568 MOVE                             R118 R116
      569 LOADK                            R119 K142 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      570 CONCAT                           R117 R118 R119
      571 GETTABLEKS                       R119 R27 K62 ["PUBLISH_URL"]
      573 LOADK                            R120 K143 ["v1/assets/%d/media"]
      574 CONCAT                           R118 R119 R120
      575 GETTABLEKS                       R120 R27 K62 ["PUBLISH_URL"]
      577 LOADK                            R121 K144 ["v1/assets/%d/media/%d"]
      578 CONCAT                           R119 R120 R121
      579 GETTABLEKS                       R121 R27 K62 ["PUBLISH_URL"]
      581 LOADK                            R122 K145 ["v1/assets/%d/media/order"]
      582 CONCAT                           R120 R121 R122
      583 GETTABLEKS                       R122 R27 K62 ["PUBLISH_URL"]
      585 LOADK                            R123 K143 ["v1/assets/%d/media"]
      586 CONCAT                           R121 R122 R123
      587 GETTABLEKS                       R123 R27 K55 ["DEVELOP_URL"]
      589 LOADK                            R124 K146 ["v1/assets/%d/latest-saved-version"]
      590 CONCAT                           R122 R123 R124
      591 GETTABLEKS                       R124 R27 K55 ["DEVELOP_URL"]
      593 LOADK                            R125 K147 ["v1/universes/%d"]
      594 CONCAT                           R123 R124 R125
      595 GETTABLEKS                       R125 R27 K49 ["ITEM_CONFIGURATION_URL"]
      597 LOADK                            R126 K148 ["v1/permissions/groups?"]
      598 CONCAT                           R124 R125 R126
      599 GETTABLEKS                       R126 R27 K51 ["APIS_URL"]
      601 LOADK                            R127 K149 ["asset-permissions-api/v1/assets/access-properties"]
      602 CONCAT                           R125 R126 R127
      603 DUPCLOSURE                       R126 K150 [PROTO_0]
      604 CAPTURE                          VAL R108
      605 CAPTURE                          VAL R27
      606 SETTABLEKS                       R126 R32 K151 ["constructGetItemDetails"]
      608 DUPCLOSURE                       R126 K152 [PROTO_1]
      609 CAPTURE                          VAL R36
      610 CAPTURE                          VAL R27
      611 SETTABLEKS                       R126 R32 K153 ["constructGetAssetsUrl"]
      613 GETTABLEKS                       R126 R20 K154 ["new"]
      615 NEWTABLE                         R127 0 4
      617 GETTABLEKS                       R128 R26 K155 ["MUSIC"]
      619 GETTABLEKS                       R128 R128 K156 ["name"]
      621 GETTABLEKS                       R129 R26 K157 ["SOUND_EFFECTS"]
      623 GETTABLEKS                       R129 R129 K156 ["name"]
      625 GETTABLEKS                       R130 R26 K158 ["UNKNOWN_AUDIO"]
      627 GETTABLEKS                       R130 R130 K156 ["name"]
      629 GETTABLEKS                       R131 R26 K159 ["FREE_FONTS"]
      631 GETTABLEKS                       R131 R131 K156 ["name"]
      633 SETLIST                          R127 R128 4 [1]
      635 CALL                             R126 1 1
      636 DUPCLOSURE                       R127 K160 [PROTO_2]
      637 CAPTURE                          VAL R126
      638 SETTABLEKS                       R127 R32 K161 ["usesMarketplaceRoute"]
      640 DUPCLOSURE                       R127 K162 [PROTO_3]
      641 CAPTURE                          VAL R106
      642 SETTABLEKS                       R127 R32 K163 ["constructCreateSaveUrl"]
      644 DUPCLOSURE                       R127 K164 [PROTO_4]
      645 CAPTURE                          VAL R106
      646 SETTABLEKS                       R127 R32 K165 ["constructDeleteSaveUrl"]
      648 DUPCLOSURE                       R127 K166 [PROTO_5]
      649 CAPTURE                          VAL R106
      650 SETTABLEKS                       R127 R32 K167 ["constructGetSaveUrl"]
      652 DUPCLOSURE                       R127 K168 [PROTO_6]
      653 CAPTURE                          VAL R21
      654 CAPTURE                          VAL R18
      655 CAPTURE                          VAL R22
      656 CAPTURE                          VAL R30
      657 CAPTURE                          VAL R26
      658 CAPTURE                          VAL R106
      659 CAPTURE                          VAL R32
      660 CAPTURE                          VAL R27
      661 CAPTURE                          VAL R6
      662 SETTABLEKS                       R127 R32 K169 ["constructGetToolboxItemsUrl"]
      664 DUPCLOSURE                       R127 K170 [PROTO_7]
      665 CAPTURE                          VAL R37
      666 CAPTURE                          VAL R27
      667 SETTABLEKS                       R127 R32 K171 ["getDevelopAssetUrl"]
      669 DUPCLOSURE                       R127 K172 [PROTO_8]
      670 CAPTURE                          VAL R35
      671 SETTABLEKS                       R127 R32 K173 ["constructGetAssetByIdUrl"]
      673 DUPCLOSURE                       R127 K174 [PROTO_9]
      674 CAPTURE                          VAL R34
      675 CAPTURE                          VAL R27
      676 SETTABLEKS                       R127 R32 K175 ["constructGetAllowedItemTypesUrl"]
      678 DUPCLOSURE                       R127 K176 [PROTO_10]
      679 CAPTURE                          VAL R109
      680 CAPTURE                          VAL R27
      681 SETTABLEKS                       R127 R32 K177 ["constructGetAssetGroupCreationsUrl"]
      683 DUPCLOSURE                       R127 K178 [PROTO_11]
      684 CAPTURE                          VAL R110
      685 CAPTURE                          VAL R27
      686 SETTABLEKS                       R127 R32 K179 ["constructGetAssetCreationsUrlToolboxService"]
      688 DUPCLOSURE                       R127 K180 [PROTO_12]
      689 CAPTURE                          VAL R40
      690 CAPTURE                          VAL R39
      691 SETTABLEKS                       R127 R32 K181 ["constructGetCreatorInfoUrl"]
      693 DUPCLOSURE                       R127 K182 [PROTO_13]
      694 CAPTURE                          VAL R52
      695 SETTABLEKS                       R127 R32 K183 ["constructGetBundleMetadataUrl"]
      697 DUPCLOSURE                       R127 K184 [PROTO_14]
      698 CAPTURE                          VAL R53
      699 SETTABLEKS                       R127 R32 K185 ["constructPostBundleCreationContextUrl"]
      701 DUPCLOSURE                       R127 K186 [PROTO_15]
      702 CAPTURE                          VAL R55
      703 SETTABLEKS                       R127 R32 K187 ["constructPostCreateBundleUrl"]
      705 DUPCLOSURE                       R127 K188 [PROTO_16]
      706 CAPTURE                          VAL R56
      707 SETTABLEKS                       R127 R32 K189 ["constructGetBundleCreationStatusUrl"]
      709 DUPCLOSURE                       R127 K190 [PROTO_17]
      710 CAPTURE                          VAL R57
      711 SETTABLEKS                       R127 R32 K191 ["constructGetDefaultCreateBundleDataSharingUrl"]
      713 DUPCLOSURE                       R127 K192 [PROTO_18]
      714 CAPTURE                          VAL R58
      715 SETTABLEKS                       R127 R32 K193 ["constructPostCreateBundleDataSharingUrl"]
      717 DUPCLOSURE                       R127 K194 [PROTO_19]
      718 CAPTURE                          VAL R59
      719 SETTABLEKS                       R127 R32 K195 ["constructPostCreateAvatarAssetDataSharingUrl"]
      721 DUPCLOSURE                       R127 K196 [PROTO_20]
      722 CAPTURE                          VAL R47
      723 CAPTURE                          VAL R27
      724 SETTABLEKS                       R127 R32 K197 ["constructGetItemConfigurationDetailsUrl"]
      726 DUPCLOSURE                       R127 K198 [PROTO_21]
      727 CAPTURE                          VAL R54
      728 SETTABLEKS                       R127 R32 K199 ["constructPostAvatarItemUpdateContextUrl"]
      730 DUPCLOSURE                       R127 K200 [PROTO_22]
      731 CAPTURE                          VAL R46
      732 CAPTURE                          VAL R27
      733 SETTABLEKS                       R127 R32 K201 ["constructGetItemsByCreatorUrl"]
      735 DUPCLOSURE                       R127 K202 [PROTO_23]
      736 CAPTURE                          VAL R48
      737 CAPTURE                          VAL R27
      738 SETTABLEKS                       R127 R32 K203 ["constructGetItemUploadFeeUrl"]
      740 MOVE                             R127 R7
      741 CALL                             R127 0 1
      742 JUMPIFNOT                        R127 ; [+10]
      743 DUPCLOSURE                       R127 K204 [PROTO_24]
      744 CAPTURE                          VAL R49
      745 CAPTURE                          VAL R27
      746 SETTABLEKS                       R127 R32 K205 ["constructGetPublishingPreferencesUrl"]
      748 DUPCLOSURE                       R127 K206 [PROTO_25]
      749 CAPTURE                          VAL R50
      750 CAPTURE                          VAL R27
      751 SETTABLEKS                       R127 R32 K207 ["constructGetPublishingFeePreviewUrl"]
      753 DUPCLOSURE                       R127 K208 [PROTO_26]
      754 CAPTURE                          VAL R51
      755 CAPTURE                          VAL R27
      756 SETTABLEKS                       R127 R32 K209 ["constructGetMetadataPermissionsUrl"]
      758 MOVE                             R127 R14
      759 CALL                             R127 0 1
      760 JUMPIF                           R127 ; [+8]
      761 GETTABLEKS                       R128 R27 K62 ["PUBLISH_URL"]
      763 LOADK                            R129 K210 ["v1/assets/upload"]
      764 CONCAT                           R127 R128 R129
      765 DUPCLOSURE                       R128 K211 [PROTO_27]
      766 CAPTURE                          VAL R127
      767 SETTABLEKS                       R128 R32 K212 ["constructUploadCatalogItemUrl"]
      769 DUPCLOSURE                       R127 K213 [PROTO_28]
      770 CAPTURE                          VAL R41
      771 SETTABLEKS                       R127 R32 K214 ["constructUploadAssetThumbnailUrl"]
      773 DUPCLOSURE                       R127 K215 [PROTO_29]
      774 CAPTURE                          VAL R45
      775 CAPTURE                          VAL R27
      776 SETTABLEKS                       R127 R32 K216 ["contuctGetThumbnailStatusUrl"]
      778 DUPCLOSURE                       R127 K217 [PROTO_30]
      779 CAPTURE                          VAL R43
      780 SETTABLEKS                       R127 R32 K218 ["constructConfigureSalesUrl"]
      782 DUPCLOSURE                       R127 K219 [PROTO_31]
      783 CAPTURE                          VAL R44
      784 SETTABLEKS                       R127 R32 K220 ["constructUpdateSalesUrl"]
      786 DUPCLOSURE                       R127 K221 [PROTO_32]
      787 CAPTURE                          VAL R42
      788 SETTABLEKS                       R127 R32 K222 ["constructConfigureCatalogItemUrl"]
      790 DUPCLOSURE                       R127 K223 [PROTO_33]
      791 CAPTURE                          VAL R111
      792 CAPTURE                          VAL R27
      793 SETTABLEKS                       R127 R32 K224 ["constructGetVoteUrl"]
      795 DUPCLOSURE                       R127 K225 [PROTO_34]
      796 CAPTURE                          VAL R61
      797 SETTABLEKS                       R127 R32 K226 ["constructPostVoteUrl"]
      799 DUPCLOSURE                       R127 K227 [PROTO_35]
      800 CAPTURE                          VAL R62
      801 SETTABLEKS                       R127 R32 K228 ["constructPostUnvoteUrl"]
      803 DUPCLOSURE                       R127 K229 [PROTO_36]
      804 CAPTURE                          VAL R106
      805 SETTABLEKS                       R127 R32 K230 ["constructInsertAssetUrl"]
      807 DUPCLOSURE                       R127 K231 [PROTO_37]
      808 CAPTURE                          VAL R66
      809 CAPTURE                          VAL R27
      810 SETTABLEKS                       R127 R32 K232 ["constructGetPluginInfoUrl"]
      812 DUPCLOSURE                       R127 K233 [PROTO_38]
      813 CAPTURE                          VAL R15
      814 CAPTURE                          VAL R65
      815 CAPTURE                          VAL R64
      816 SETTABLEKS                       R127 R32 K234 ["constructGetManageableGroupsUrl"]
      818 DUPCLOSURE                       R127 K235 [PROTO_39]
      819 CAPTURE                          VAL R27
      820 SETTABLEKS                       R127 R32 K236 ["constructGetGroupsForSurfaceUrl"]
      822 DUPCLOSURE                       R127 K237 [PROTO_40]
      823 CAPTURE                          VAL R27
      824 SETTABLEKS                       R127 R32 K238 ["constructAssetIdUserContextString"]
      826 DUPCLOSURE                       R127 K239 [PROTO_41]
      827 CAPTURE                          VAL R9
      828 SETTABLEKS                       R127 R32 K240 ["constructAssetIdString"]
      830 DUPCLOSURE                       R127 K241 [PROTO_42]
      831 CAPTURE                          VAL R67
      832 CAPTURE                          VAL R27
      833 SETTABLEKS                       R127 R32 K242 ["constructAssetIdUrl"]
      835 DUPCLOSURE                       R127 K243 [PROTO_43]
      836 CAPTURE                          VAL R72
      837 SETTABLEKS                       R127 R32 K244 ["constructAssetSavedVersionString"]
      839 DUPCLOSURE                       R127 K245 [PROTO_44]
      840 CAPTURE                          VAL R78
      841 SETTABLEKS                       R127 R32 K246 ["constructAssetSavedVersionWithNotesString"]
      843 DUPCLOSURE                       R127 K247 [PROTO_45]
      844 CAPTURE                          VAL R79
      845 CAPTURE                          VAL R27
      846 SETTABLEKS                       R127 R32 K248 ["constructAssetVersionHistoryOpenCloudString"]
      848 DUPCLOSURE                       R127 K249 [PROTO_46]
      849 CAPTURE                          VAL R77
      850 SETTABLEKS                       R127 R32 K250 ["constructGetPackageVersionDescriptionString"]
      852 DUPCLOSURE                       R127 K251 [PROTO_47]
      853 CAPTURE                          VAL R81
      854 SETTABLEKS                       R127 R32 K252 ["constructSetPackageVersionDescriptionString"]
      856 DUPCLOSURE                       R127 K253 [PROTO_48]
      857 CAPTURE                          VAL R75
      858 CAPTURE                          VAL R27
      859 SETTABLEKS                       R127 R32 K254 ["constructRevertAssetVersionString"]
      861 DUPCLOSURE                       R127 K255 [PROTO_49]
      862 CAPTURE                          VAL R80
      863 SETTABLEKS                       R127 R32 K256 ["constructRollbackAssetVersionOpenCloudString"]
      865 DUPCLOSURE                       R127 K257 [PROTO_50]
      866 CAPTURE                          VAL R76
      867 CAPTURE                          VAL R27
      868 SETTABLEKS                       R127 R32 K258 ["constructGetDevelopAssetMetadata"]
      870 DUPCLOSURE                       R127 K259 [PROTO_51]
      871 CAPTURE                          VAL R68
      872 CAPTURE                          VAL R27
      873 SETTABLEKS                       R127 R32 K260 ["constructAssetGameAssetIdUrl"]
      875 DUPCLOSURE                       R127 K261 [PROTO_52]
      876 CAPTURE                          VAL R12
      877 SETTABLEKS                       R127 R32 K262 ["constructAssetThumbnailUrl"]
      879 DUPCLOSURE                       R127 K263 [PROTO_53]
      880 SETTABLEKS                       R127 R32 K264 ["constructRBXThumbUrl"]
      882 DUPCLOSURE                       R127 K265 [PROTO_54]
      883 CAPTURE                          VAL R27
      884 CAPTURE                          VAL R2
      885 SETTABLEKS                       R127 R32 K266 ["constructUserSearchUrl"]
      887 DUPCLOSURE                       R127 K267 [PROTO_55]
      888 CAPTURE                          VAL R70
      889 CAPTURE                          VAL R27
      890 SETTABLEKS                       R127 R32 K268 ["constructUserThumbnailUrl"]
      892 DUPCLOSURE                       R127 K269 [PROTO_56]
      893 CAPTURE                          VAL R71
      894 SETTABLEKS                       R127 R32 K270 ["constructFavoriteCountsUrl"]
      896 DUPCLOSURE                       R127 K271 [PROTO_57]
      897 CAPTURE                          VAL R71
      898 SETTABLEKS                       R127 R32 K272 ["constructGetFavoritedUrl"]
      900 DUPCLOSURE                       R127 K273 [PROTO_58]
      901 CAPTURE                          VAL R71
      902 SETTABLEKS                       R127 R32 K274 ["constructPostFavoriteUrl"]
      904 DUPCLOSURE                       R127 K275 [PROTO_59]
      905 CAPTURE                          VAL R71
      906 SETTABLEKS                       R127 R32 K276 ["constructDeleteFavoriteUrl"]
      908 DUPCLOSURE                       R127 K277 [PROTO_60]
      909 CAPTURE                          VAL R86
      910 SETTABLEKS                       R127 R32 K278 ["constructPatchAssetUrl"]
      912 DUPCLOSURE                       R127 K279 [PROTO_61]
      913 CAPTURE                          VAL R82
      914 SETTABLEKS                       R127 R32 K280 ["constructOperationUrl"]
      916 DUPCLOSURE                       R127 K281 [PROTO_62]
      917 CAPTURE                          VAL R83
      918 SETTABLEKS                       R127 R32 K282 ["constructPostUploadAnimationUrl"]
      920 DUPCLOSURE                       R127 K283 [PROTO_63]
      921 CAPTURE                          VAL R85
      922 SETTABLEKS                       R127 R32 K284 ["constructValidateAnimationUrl"]
      924 DUPCLOSURE                       R127 K285 [PROTO_64]
      925 CAPTURE                          VAL R84
      926 SETTABLEKS                       R127 R32 K286 ["constructPostOverwriteAnimationUrl"]
      928 DUPCLOSURE                       R127 K287 [PROTO_65]
      929 CAPTURE                          VAL R87
      930 SETTABLEKS                       R127 R32 K288 ["constructGetMyGroupUrl"]
      932 DUPCLOSURE                       R127 K289 [PROTO_66]
      933 CAPTURE                          VAL R88
      934 SETTABLEKS                       R127 R32 K290 ["constructIsVerifiedCreatorUrl"]
      936 DUPCLOSURE                       R127 K291 [PROTO_67]
      937 CAPTURE                          VAL R90
      938 SETTABLEKS                       R127 R32 K292 ["constructGetUserFriendsUrl"]
      940 DUPCLOSURE                       R127 K293 [PROTO_68]
      941 CAPTURE                          VAL R102
      942 SETTABLEKS                       R127 R32 K294 ["constructAssetPermissionsUrl"]
      944 DUPCLOSURE                       R127 K295 [PROTO_69]
      945 CAPTURE                          VAL R105
      946 SETTABLEKS                       R127 R32 K296 ["constructAssetBatchGrantPermissionsUrl"]
      948 DUPCLOSURE                       R127 K297 [PROTO_70]
      949 CAPTURE                          VAL R103
      950 SETTABLEKS                       R127 R32 K298 ["constructAssetCheckPermissionsUrl"]
      952 DUPCLOSURE                       R127 K299 [PROTO_71]
      953 CAPTURE                          VAL R91
      954 SETTABLEKS                       R127 R32 K300 ["getRobuxPurchaseUrl"]
      956 DUPCLOSURE                       R127 K301 [PROTO_72]
      957 CAPTURE                          VAL R101
      958 SETTABLEKS                       R127 R32 K302 ["constructPostPackageMetadata"]
      960 DUPCLOSURE                       R127 K303 [PROTO_73]
      961 CAPTURE                          VAL R92
      962 SETTABLEKS                       R127 R32 K304 ["constructGetRobuxBalanceUrl"]
      964 DUPCLOSURE                       R127 K305 [PROTO_74]
      965 CAPTURE                          VAL R89
      966 SETTABLEKS                       R127 R32 K306 ["constructGetGroupRoleInfoUrl"]
      968 DUPCLOSURE                       R127 K307 [PROTO_75]
      969 CAPTURE                          VAL R104
      970 SETTABLEKS                       R127 R32 K308 ["constructAssetCheckPermissionsBatchUrl"]
      972 DUPCLOSURE                       R127 K309 [PROTO_76]
      973 CAPTURE                          VAL R10
      974 CAPTURE                          VAL R96
      975 CAPTURE                          VAL R95
      976 CAPTURE                          VAL R94
      977 SETTABLEKS                       R127 R32 K310 ["constructAssetPurchaseUrl"]
      979 DUPCLOSURE                       R127 K311 [PROTO_77]
      980 CAPTURE                          VAL R97
      981 SETTABLEKS                       R127 R32 K312 ["constructPurchaserStatusUrl"]
      983 MOVE                             R127 R11
      984 CALL                             R127 0 1
      985 JUMPIFNOT                        R127 ; [+4]
      986 DUPCLOSURE                       R127 K313 [PROTO_78]
      987 CAPTURE                          VAL R98
      988 SETTABLEKS                       R127 R32 K314 ["constructSellerStatusUrl"]
      990 MOVE                             R127 R14
      991 CALL                             R127 0 1
      992 JUMPIF                           R127 ; [+9]
      993 GETTABLEKS                       R128 R27 K315 ["DATA_URL"]
      995 LOADK                            R129 K316 ["Data/Upload.ashx?"]
      996 CONCAT                           R127 R128 R129
      997 DUPCLOSURE                       R128 K317 [PROTO_79]
      998 CAPTURE                          VAL R127
      999 CAPTURE                          VAL R27
     1000 SETTABLEKS                       R128 R32 K318 ["constructUploadCatalogItemFormatUrl"]
     1002 DUPCLOSURE                       R127 K319 [PROTO_80]
     1003 CAPTURE                          VAL R112
     1004 CAPTURE                          VAL R27
     1005 SETTABLEKS                       R127 R32 K320 ["constructAssetTypeAgentsUrl"]
     1007 DUPCLOSURE                       R127 K321 [PROTO_81]
     1008 CAPTURE                          VAL R113
     1009 CAPTURE                          VAL R27
     1010 SETTABLEKS                       R127 R32 K322 ["constructToolboxAutocompleteUrl"]
     1012 DUPCLOSURE                       R127 K323 [PROTO_82]
     1013 CAPTURE                          VAL R106
     1014 CAPTURE                          VAL R27
     1015 CAPTURE                          VAL R30
     1016 SETTABLEKS                       R127 R32 K324 ["constructGetHomeConfigurationUrl"]
     1018 DUPCLOSURE                       R127 K325 [PROTO_83]
     1019 CAPTURE                          VAL R114
     1020 CAPTURE                          VAL R27
     1021 SETTABLEKS                       R127 R32 K326 ["constructPublishingRequirementsUrl"]
     1023 DUPCLOSURE                       R127 K327 [PROTO_84]
     1024 CAPTURE                          VAL R27
     1025 SETTABLEKS                       R127 R32 K328 ["getCreatorMarketplaceQuotas"]
     1027 DUPCLOSURE                       R127 K329 [PROTO_85]
     1028 CAPTURE                          VAL R118
     1029 SETTABLEKS                       R127 R32 K330 ["constructGetAssetMediaIdsUrl"]
     1031 DUPCLOSURE                       R127 K331 [PROTO_86]
     1032 CAPTURE                          VAL R119
     1033 SETTABLEKS                       R127 R32 K332 ["constructDeleteAssetMediaUrl"]
     1035 DUPCLOSURE                       R127 K333 [PROTO_87]
     1036 CAPTURE                          VAL R120
     1037 SETTABLEKS                       R127 R32 K334 ["constructPostSetAssetMediaOrder"]
     1039 DUPCLOSURE                       R127 K335 [PROTO_88]
     1040 CAPTURE                          VAL R121
     1041 SETTABLEKS                       R127 R32 K336 ["constructPostUploadAssetMedia"]
     1043 JUMPIFNOT                        R3 ; [+4]
     1044 DUPCLOSURE                       R127 K337 [PROTO_89]
     1045 CAPTURE                          VAL R28
     1046 SETTABLEKS                       R127 R32 K338 ["constructCreatorDashboardAssetConfigUrl"]
     1048 JUMPIFNOT                        R5 ; [+6]
     1049 DUPCLOSURE                       R127 K339 [PROTO_90]
     1050 CAPTURE                          VAL R28
     1051 CAPTURE                          VAL R99
     1052 SETTABLEKS                       R127 R32 K340 ["constructCreatorDashboardConfigAvatarAssetUrl"]
     1054 JUMP                             ; [+5]
     1055 DUPCLOSURE                       R127 K341 [PROTO_91]
     1056 CAPTURE                          VAL R28
     1057 CAPTURE                          VAL R99
     1058 SETTABLEKS                       R127 R32 K342 ["constructCreatorDashboardAvatarAssetUrl"]
     1060 DUPCLOSURE                       R127 K343 [PROTO_92]
     1061 CAPTURE                          VAL R28
     1062 SETTABLEKS                       R127 R32 K344 ["constructCreatorDashboardCreationsPageUrl"]
     1064 JUMPIFNOT                        R4 ; [+5]
     1065 DUPCLOSURE                       R127 K345 [PROTO_93]
     1066 CAPTURE                          VAL R28
     1067 CAPTURE                          VAL R100
     1068 SETTABLEKS                       R127 R32 K346 ["constructCreatorDashboardBundleConfigureUrl"]
     1070 DUPCLOSURE                       R127 K347 [PROTO_94]
     1071 CAPTURE                          VAL R28
     1072 SETTABLEKS                       R127 R32 K348 ["constructCreatorStoreConfigurationUrl"]
     1074 DUPCLOSURE                       R127 K349 [PROTO_95]
     1075 CAPTURE                          VAL R123
     1076 SETTABLEKS                       R127 R32 K350 ["constructGetUniverseInfo"]
     1078 MOVE                             R127 R8
     1079 CALL                             R127 0 1
     1080 JUMPIFNOT                        R127 ; [+4]
     1081 DUPCLOSURE                       R127 K351 [PROTO_96]
     1082 CAPTURE                          VAL R115
     1083 SETTABLEKS                       R127 R32 K352 ["constructCodeUnderstandingSummaryUrl"]
     1085 DUPCLOSURE                       R127 K353 [PROTO_97]
     1086 CAPTURE                          VAL R117
     1087 CAPTURE                          VAL R29
     1088 SETTABLEKS                       R127 R32 K354 ["constructGetFiatProductUrl"]
     1090 DUPCLOSURE                       R127 K355 [PROTO_98]
     1091 CAPTURE                          VAL R124
     1092 CAPTURE                          VAL R27
     1093 SETTABLEKS                       R127 R32 K356 ["constructAllowedGroupsForActionUrl"]
     1095 DUPCLOSURE                       R127 K357 [PROTO_99]
     1096 CAPTURE                          VAL R33
     1097 SETTABLEKS                       R127 R32 K358 ["constructCreatorStoreUrl"]
     1099 DUPCLOSURE                       R127 K359 [PROTO_100]
     1100 CAPTURE                          VAL R125
     1101 SETTABLEKS                       R127 R32 K360 ["constructBatchAssetAccessPropertiesUrl"]
     1103 MOVE                             R127 R31
     1104 MOVE                             R128 R32
     1105 CALL                             R127 1 1
     1106 RETURN                           R127 1
