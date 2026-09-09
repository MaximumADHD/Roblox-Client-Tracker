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
        8 GETUPVAL                         R4 0
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+13]
       11 JUMPIFNOT                        R2 ; [+12]
       12 MOVE                             R4 R2
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 FASTCALL1                        TOSTRING R8 ; [+3]
       17 MOVE                             R10 R8
       18 GETIMPORT                        R9 K3 [tostring]
       20 CALL                             R9 1 1
       21 SETTABLE                         R9 R3 R7
       22 FORGLOOP                         R4 2 ; [-7]
       24 GETUPVAL                         R5 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K4 ["makeQueryString"]
       28 MOVE                             R7 R3
       29 CALL                             R6 1 1
       30 CONCAT                           R4 R5 R6
       31 RETURN                           R4 1

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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_47:
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

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["/favorites/assets/%d/count"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 -1
        6 NAMECALL                         R1 R1 K1 ["format"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_67:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_68:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_69:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_70:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_74:
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

PROTO_75:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_76:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_84:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_85:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_86:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_94:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["AssetInfo"]
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_95:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_96:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"action"}]
        5 SETTABLEKS                       R0 R4 K1 ["action"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_97:
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

PROTO_98:
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
      103 GETTABLEKS                       R14 R14 K25 ["getFFlagCheckAvatarAssetPrivacy"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K15 [require]
      108 GETTABLEKS                       R15 R0 K4 ["Src"]
      110 GETTABLEKS                       R15 R15 K18 ["Flags"]
      112 GETTABLEKS                       R15 R15 K26 ["getFFlagToolboxDynamicUploadFee"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K15 [require]
      117 GETTABLEKS                       R16 R0 K4 ["Src"]
      119 GETTABLEKS                       R16 R16 K18 ["Flags"]
      121 GETTABLEKS                       R16 R16 K27 ["getFFlagEnableUpdateAvatarItem"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K15 [require]
      126 GETTABLEKS                       R17 R0 K4 ["Src"]
      128 GETTABLEKS                       R17 R17 K5 ["Util"]
      130 GETTABLEKS                       R17 R17 K16 ["SharedFlags"]
      132 GETTABLEKS                       R17 R17 K28 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
      134 CALL                             R16 1 1
      135 GETTABLEKS                       R17 R0 K29 ["Packages"]
      137 GETIMPORT                        R18 K15 [require]
      139 GETTABLEKS                       R19 R17 K30 ["Framework"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K15 [require]
      144 GETTABLEKS                       R20 R17 K31 ["Dash"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K15 [require]
      149 GETTABLEKS                       R21 R17 K32 ["LuauPolyfill"]
      151 CALL                             R20 1 1
      152 GETTABLEKS                       R21 R20 K33 ["Set"]
      154 GETTABLEKS                       R22 R20 K34 ["Object"]
      156 GETTABLEKS                       R23 R20 K35 ["Array"]
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R25 R0 K4 ["Src"]
      162 GETTABLEKS                       R25 R25 K36 ["Types"]
      164 GETTABLEKS                       R25 R25 K37 ["AssetQuotaTypes"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K15 [require]
      169 GETTABLEKS                       R26 R0 K4 ["Src"]
      171 GETTABLEKS                       R26 R26 K36 ["Types"]
      173 GETTABLEKS                       R26 R26 K38 ["AssetSubTypes"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R27 R0 K4 ["Src"]
      180 GETTABLEKS                       R27 R27 K36 ["Types"]
      182 GETTABLEKS                       R27 R27 K39 ["HomeTypes"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R28 R0 K4 ["Src"]
      189 GETTABLEKS                       R28 R28 K36 ["Types"]
      191 GETTABLEKS                       R28 R28 K40 ["Category"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K15 [require]
      196 GETTABLEKS                       R29 R0 K41 ["Libs"]
      198 GETTABLEKS                       R29 R29 K42 ["Http"]
      200 GETTABLEKS                       R29 R29 K43 ["Url"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K15 [require]
      205 GETTABLEKS                       R30 R0 K4 ["Src"]
      207 GETTABLEKS                       R30 R30 K5 ["Util"]
      209 GETTABLEKS                       R30 R30 K44 ["ToolboxUtilities"]
      211 CALL                             R29 1 1
      212 GETIMPORT                        R30 K15 [require]
      214 GETTABLEKS                       R31 R1 K45 ["FiatUtil"]
      216 CALL                             R30 1 1
      217 GETIMPORT                        R31 K15 [require]
      219 GETTABLEKS                       R32 R1 K46 ["getPlaceId"]
      221 CALL                             R31 1 1
      222 GETIMPORT                        R32 K15 [require]
      224 GETTABLEKS                       R33 R1 K47 ["wrapStrictTable"]
      226 CALL                             R32 1 1
      227 NEWTABLE                         R33 128 0
      229 GETTABLEKS                       R35 R28 K48 ["CREATE_URL"]
      231 LOADK                            R36 K49 ["store/"]
      232 CONCAT                           R34 R35 R36
      233 GETTABLEKS                       R36 R28 K50 ["ITEM_CONFIGURATION_URL"]
      235 LOADK                            R37 K51 ["v1/permissions/item-types?"]
      236 CONCAT                           R35 R36 R37
      237 GETTABLEKS                       R37 R28 K52 ["APIS_URL"]
      239 LOADK                            R38 K53 ["assets/user-auth/v1/assets/%d"]
      240 CONCAT                           R36 R37 R38
      241 GETTABLEKS                       R38 R28 K54 ["BASE_URL"]
      243 LOADK                            R39 K55 ["IDE/Toolbox/Items?"]
      244 CONCAT                           R37 R38 R39
      245 GETTABLEKS                       R39 R28 K56 ["DEVELOP_URL"]
      247 LOADK                            R40 K57 ["v1/toolbox/items?"]
      248 CONCAT                           R38 R39 R40
      249 GETTABLEKS                       R40 R28 K50 ["ITEM_CONFIGURATION_URL"]
      251 LOADK                            R41 K58 ["v1/creations/get-assets?"]
      252 CONCAT                           R39 R40 R41
      253 GETTABLEKS                       R41 R28 K59 ["USERS_URL"]
      255 LOADK                            R42 K60 ["/v1/users/%d"]
      256 CONCAT                           R40 R41 R42
      257 GETTABLEKS                       R42 R28 K61 ["GROUP_URL"]
      259 LOADK                            R43 K62 ["v0/groups/%d"]
      260 CONCAT                           R41 R42 R43
      261 GETTABLEKS                       R43 R28 K63 ["PUBLISH_URL"]
      263 LOADK                            R44 K64 ["v1/assets/upload"]
      264 CONCAT                           R42 R43 R44
      265 GETTABLEKS                       R44 R28 K63 ["PUBLISH_URL"]
      267 LOADK                            R45 K65 ["v1/assets/%d/thumbnail"]
      268 CONCAT                           R43 R44 R45
      269 GETTABLEKS                       R45 R28 K56 ["DEVELOP_URL"]
      271 LOADK                            R46 K66 ["v1/assets/%d"]
      272 CONCAT                           R44 R45 R46
      273 GETTABLEKS                       R46 R28 K50 ["ITEM_CONFIGURATION_URL"]
      275 LOADK                            R47 K67 ["v1/assets/%d/release"]
      276 CONCAT                           R45 R46 R47
      277 GETTABLEKS                       R47 R28 K50 ["ITEM_CONFIGURATION_URL"]
      279 LOADK                            R48 K68 ["v1/assets/%d/update-price"]
      280 CONCAT                           R46 R47 R48
      281 GETTABLEKS                       R48 R28 K69 ["THUMBNAIL_URL"]
      283 LOADK                            R49 K70 ["v1/assets?"]
      284 CONCAT                           R47 R48 R49
      285 GETTABLEKS                       R49 R28 K50 ["ITEM_CONFIGURATION_URL"]
      287 LOADK                            R50 K71 ["v1/items/by-creator?"]
      288 CONCAT                           R48 R49 R50
      289 GETTABLEKS                       R50 R28 K50 ["ITEM_CONFIGURATION_URL"]
      291 LOADK                            R51 K72 ["v1/items?"]
      292 CONCAT                           R49 R50 R51
      293 GETTABLEKS                       R51 R28 K50 ["ITEM_CONFIGURATION_URL"]
      295 LOADK                            R52 K73 ["v1/items/upload-fee?"]
      296 CONCAT                           R50 R51 R52
      297 GETTABLEKS                       R52 R28 K50 ["ITEM_CONFIGURATION_URL"]
      299 LOADK                            R53 K74 ["v1/preferences/publishing"]
      300 CONCAT                           R51 R52 R53
      301 GETTABLEKS                       R53 R28 K50 ["ITEM_CONFIGURATION_URL"]
      303 LOADK                            R54 K75 ["v1/collectibles/publishing-fees/preview?"]
      304 CONCAT                           R52 R53 R54
      305 MOVE                             R54 R14
      306 CALL                             R54 0 1
      307 JUMPIFNOT                        R54 ; [+5]
      308 GETTABLEKS                       R54 R28 K50 ["ITEM_CONFIGURATION_URL"]
      310 LOADK                            R55 K76 ["v1/permissions/action-allowed-for-item-type?"]
      311 CONCAT                           R53 R54 R55
      312 JUMP                             ; [+1]
      313 LOADNIL                          R53
      314 GETTABLEKS                       R55 R28 K50 ["ITEM_CONFIGURATION_URL"]
      316 LOADK                            R56 K77 ["v1/bundles/metadata"]
      317 CONCAT                           R54 R55 R56
      318 GETTABLEKS                       R56 R28 K50 ["ITEM_CONFIGURATION_URL"]
      320 LOADK                            R57 K78 ["v1/bundles/create-context"]
      321 CONCAT                           R55 R56 R57
      322 MOVE                             R57 R15
      323 CALL                             R57 0 1
      324 JUMPIFNOT                        R57 ; [+5]
      325 GETTABLEKS                       R57 R28 K50 ["ITEM_CONFIGURATION_URL"]
      327 LOADK                            R58 K79 ["v1/avatar-item-updates/create-context"]
      328 CONCAT                           R56 R57 R58
      329 JUMP                             ; [+1]
      330 LOADNIL                          R56
      331 GETTABLEKS                       R58 R28 K50 ["ITEM_CONFIGURATION_URL"]
      333 LOADK                            R59 K80 ["v1/bundles"]
      334 CONCAT                           R57 R58 R59
      335 GETTABLEKS                       R59 R28 K50 ["ITEM_CONFIGURATION_URL"]
      337 LOADK                            R60 K81 ["v1/bundles/status"]
      338 CONCAT                           R58 R59 R60
      339 GETTABLEKS                       R60 R28 K52 ["APIS_URL"]
      341 LOADK                            R61 K82 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      342 CONCAT                           R59 R60 R61
      343 GETTABLEKS                       R61 R28 K52 ["APIS_URL"]
      345 LOADK                            R62 K83 ["resource-settings/v1/bundles"]
      346 CONCAT                           R60 R61 R62
      347 GETTABLEKS                       R62 R28 K52 ["APIS_URL"]
      349 LOADK                            R63 K84 ["resource-settings/v1/avatar-assets"]
      350 CONCAT                           R61 R62 R63
      351 GETTABLEKS                       R63 R28 K54 ["BASE_URL"]
      353 LOADK                            R64 K85 ["voting/vote?assetId=%s&vote=%s"]
      354 CONCAT                           R62 R63 R64
      355 GETTABLEKS                       R64 R28 K52 ["APIS_URL"]
      357 LOADK                            R65 K86 ["voting-api/vote/asset/%s?vote=%s"]
      358 CONCAT                           R63 R64 R65
      359 GETTABLEKS                       R65 R28 K52 ["APIS_URL"]
      361 LOADK                            R66 K87 ["voting-api/vote/asset/%s"]
      362 CONCAT                           R64 R65 R66
      363 GETTABLEKS                       R66 R28 K54 ["BASE_URL"]
      365 LOADK                            R67 K88 ["IDE/Toolbox/InsertAsset?"]
      366 CONCAT                           R65 R66 R67
      367 GETTABLEKS                       R67 R28 K56 ["DEVELOP_URL"]
      369 LOADK                            R68 K89 ["v1/user/groups/canmanage"]
      370 CONCAT                           R66 R67 R68
      371 GETTABLEKS                       R68 R28 K52 ["APIS_URL"]
      373 LOADK                            R69 K90 ["orgs/v2/groups/permissions/createassets"]
      374 CONCAT                           R67 R68 R69
      375 GETTABLEKS                       R69 R28 K52 ["APIS_URL"]
      377 LOADK                            R70 K91 ["studio-plugin-api/v1/plugins?"]
      378 CONCAT                           R68 R69 R70
      379 GETTABLEKS                       R70 R28 K54 ["BASE_URL"]
      381 LOADK                            R71 K92 ["asset/?"]
      382 CONCAT                           R69 R70 R71
      383 GETTABLEKS                       R71 R28 K93 ["GAME_ASSET_URL"]
      385 LOADK                            R72 K92 ["asset/?"]
      386 CONCAT                           R70 R71 R72
      387 GETTABLEKS                       R72 R28 K93 ["GAME_ASSET_URL"]
      389 LOADK                            R73 K94 ["asset-thumbnail/image?"]
      390 CONCAT                           R71 R72 R73
      391 GETTABLEKS                       R73 R28 K54 ["BASE_URL"]
      393 LOADK                            R74 K95 ["headshot-thumbnail/image?"]
      394 CONCAT                           R72 R73 R74
      395 GETTABLEKS                       R74 R28 K96 ["CATALOG_URL"]
      397 LOADK                            R75 K97 ["v1%s"]
      398 CONCAT                           R73 R74 R75
      399 GETTABLEKS                       R75 R28 K56 ["DEVELOP_URL"]
      401 LOADK                            R76 K98 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      402 CONCAT                           R74 R75 R76
      403 GETTABLEKS                       R76 R28 K56 ["DEVELOP_URL"]
      405 LOADK                            R77 K99 ["v1/assets/%s/saved-versions?limit=%s"]
      406 CONCAT                           R75 R76 R77
      407 GETTABLEKS                       R77 R28 K56 ["DEVELOP_URL"]
      409 LOADK                            R78 K100 ["v1/assets/%s/saved-versions?cursor=%s"]
      410 CONCAT                           R76 R77 R78
      411 GETTABLEKS                       R78 R28 K56 ["DEVELOP_URL"]
      413 LOADK                            R79 K101 ["v1/assets/%s/revert-version?"]
      414 CONCAT                           R77 R78 R79
      415 GETTABLEKS                       R79 R28 K56 ["DEVELOP_URL"]
      417 LOADK                            R80 K70 ["v1/assets?"]
      418 CONCAT                           R78 R79 R80
      419 GETTABLEKS                       R80 R28 K52 ["APIS_URL"]
      421 LOADK                            R81 K102 ["packages-api/v1/packages/assets/versions/notes/get"]
      422 CONCAT                           R79 R80 R81
      423 GETTABLEKS                       R81 R28 K52 ["APIS_URL"]
      425 LOADK                            R82 K103 ["packages-api/v1/packages/assets/%s/versions/notes"]
      426 CONCAT                           R80 R81 R82
      427 GETTABLEKS                       R82 R28 K52 ["APIS_URL"]
      429 LOADK                            R83 K104 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      430 CONCAT                           R81 R82 R83
      431 GETTABLEKS                       R83 R28 K52 ["APIS_URL"]
      433 LOADK                            R84 K105 ["assets/user-auth/v1/operations/%s"]
      434 CONCAT                           R82 R83 R84
      435 GETTABLEKS                       R84 R28 K52 ["APIS_URL"]
      437 LOADK                            R85 K106 ["assets/user-auth/v1/assets"]
      438 CONCAT                           R83 R84 R85
      439 GETTABLEKS                       R85 R28 K52 ["APIS_URL"]
      441 LOADK                            R86 K107 ["assets/user-auth/v1/assets/%s"]
      442 CONCAT                           R84 R85 R86
      443 GETTABLEKS                       R86 R28 K52 ["APIS_URL"]
      445 LOADK                            R87 K107 ["assets/user-auth/v1/assets/%s"]
      446 CONCAT                           R85 R86 R87
      447 GETTABLEKS                       R87 R28 K56 ["DEVELOP_URL"]
      449 LOADK                            R88 K108 ["v1/assets/%s?"]
      450 CONCAT                           R86 R87 R88
      451 GETTABLEKS                       R88 R28 K109 ["DATA_URL"]
      453 LOADK                            R89 K110 ["Data/Upload.ashx?"]
      454 CONCAT                           R87 R88 R89
      455 GETTABLEKS                       R89 R28 K61 ["GROUP_URL"]
      457 LOADK                            R90 K111 ["v2/users/%%20%%20%s/groups/roles"]
      458 CONCAT                           R88 R89 R90
      459 GETTABLEKS                       R90 R28 K56 ["DEVELOP_URL"]
      461 LOADK                            R91 K112 ["v1/user/is-verified-creator"]
      462 CONCAT                           R89 R90 R91
      463 GETTABLEKS                       R91 R28 K61 ["GROUP_URL"]
      465 LOADK                            R92 K113 ["v1/groups/%s/roles"]
      466 CONCAT                           R90 R91 R92
      467 GETTABLEKS                       R92 R28 K114 ["FRIENDS_URL"]
      469 LOADK                            R93 K115 ["v1/users/%d/friends"]
      470 CONCAT                           R91 R92 R93
      471 GETTABLEKS                       R93 R28 K54 ["BASE_URL"]
      473 LOADK                            R94 K116 ["upgrades/robux"]
      474 CONCAT                           R92 R93 R94
      475 GETTABLEKS                       R94 R28 K117 ["ECONOMY_URL"]
      477 LOADK                            R95 K118 ["v1/users/%d/currency"]
      478 CONCAT                           R93 R94 R95
      479 GETTABLEKS                       R95 R28 K56 ["DEVELOP_URL"]
      481 LOADK                            R96 K119 ["v1/user/%d/canmanage/%d"]
      482 CONCAT                           R94 R95 R96
      483 GETTABLEKS                       R96 R28 K117 ["ECONOMY_URL"]
      485 LOADK                            R97 K120 ["/v1/purchases/products/%d"]
      486 CONCAT                           R95 R96 R97
      487 GETTABLEKS                       R97 R28 K52 ["APIS_URL"]
      489 LOADK                            R98 K121 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      490 CONCAT                           R96 R97 R98
      491 GETTABLEKS                       R98 R28 K52 ["APIS_URL"]
      493 LOADK                            R99 K122 ["marketplace-fiat-service/v1/product/purchase"]
      494 CONCAT                           R97 R98 R99
      495 GETTABLEKS                       R99 R28 K52 ["APIS_URL"]
      497 LOADK                            R100 K123 ["marketplace-fiat-service/v1/purchaser/status"]
      498 CONCAT                           R98 R99 R100
      499 MOVE                             R100 R11
      500 CALL                             R100 0 1
      501 JUMPIFNOT                        R100 ; [+5]
      502 GETTABLEKS                       R100 R28 K52 ["APIS_URL"]
      504 LOADK                            R101 K124 ["marketplace-fiat-service/v1/seller/status"]
      505 CONCAT                           R99 R100 R101
      506 JUMP                             ; [+1]
      507 LOADNIL                          R99
      508 JUMPIFNOT                        R5 ; [+2]
      509 LOADK                            R100 K125 ["/creations/catalog/%d/configure"]
      510 JUMP                             ; [+1]
      511 LOADK                            R100 K126 ["/creations?activeTab=TShirt"]
      512 JUMPIFNOT                        R4 ; [+2]
      513 LOADK                            R101 K127 ["/creations/bundle/%d/configure"]
      514 JUMP                             ; [+1]
      515 LOADNIL                          R101
      516 GETTABLEKS                       R103 R28 K52 ["APIS_URL"]
      518 LOADK                            R104 K128 ["packages-api/v1/packages/assets/versions/metadata/get"]
      519 CONCAT                           R102 R103 R104
      520 GETTABLEKS                       R104 R28 K52 ["APIS_URL"]
      522 LOADK                            R105 K129 ["asset-permissions-api/v1/assets/%s/permissions"]
      523 CONCAT                           R103 R104 R105
      524 GETTABLEKS                       R105 R28 K52 ["APIS_URL"]
      526 LOADK                            R106 K130 ["asset-permissions-api/v1/assets/check-actions"]
      527 CONCAT                           R104 R105 R106
      528 GETTABLEKS                       R106 R28 K52 ["APIS_URL"]
      530 LOADK                            R107 K131 ["asset-permissions-api/v1/assets/check-permissions"]
      531 CONCAT                           R105 R106 R107
      532 GETTABLEKS                       R107 R28 K52 ["APIS_URL"]
      534 LOADK                            R108 K132 ["asset-permissions-api/v1/assets/permissions"]
      535 CONCAT                           R106 R107 R108
      536 GETTABLEKS                       R108 R28 K52 ["APIS_URL"]
      538 LOADK                            R109 K133 ["toolbox-service/v1"]
      539 CONCAT                           R107 R108 R109
      540 GETTABLEKS                       R109 R28 K52 ["APIS_URL"]
      542 LOADK                            R110 K134 ["toolbox-service/v1/%s?"]
      543 CONCAT                           R108 R109 R110
      544 GETTABLEKS                       R110 R28 K52 ["APIS_URL"]
      546 LOADK                            R111 K135 ["toolbox-service/v1/items/details?"]
      547 CONCAT                           R109 R110 R111
      548 GETTABLEKS                       R111 R28 K52 ["APIS_URL"]
      550 LOADK                            R112 K136 ["toolbox-service/v1/creations/group/%d/%s?"]
      551 CONCAT                           R110 R111 R112
      552 GETTABLEKS                       R112 R28 K52 ["APIS_URL"]
      554 LOADK                            R113 K137 ["toolbox-service/v1/creations/user/%d/%s?"]
      555 CONCAT                           R111 R112 R113
      556 MOVE                             R113 R107
      557 LOADK                            R114 K138 ["/voting/vote?"]
      558 CONCAT                           R112 R113 R114
      559 GETTABLEKS                       R114 R28 K50 ["ITEM_CONFIGURATION_URL"]
      561 LOADK                            R115 K139 ["v1/asset-types/%s/agents?"]
      562 CONCAT                           R113 R114 R115
      563 GETTABLEKS                       R115 R28 K52 ["APIS_URL"]
      565 LOADK                            R116 K140 ["autocomplete-studio/v2/suggest?"]
      566 CONCAT                           R114 R115 R116
      567 GETTABLEKS                       R116 R28 K52 ["APIS_URL"]
      569 LOADK                            R117 K141 ["marketplace-publishing-requirements-api/v1/requirements?"]
      570 CONCAT                           R115 R116 R117
      571 JUMPIFNOT                        R8 ; [+5]
      572 GETTABLEKS                       R117 R28 K52 ["APIS_URL"]
      574 LOADK                            R118 K142 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      575 CONCAT                           R116 R117 R118
      576 JUMP                             ; [+1]
      577 LOADNIL                          R116
      578 GETTABLEKS                       R118 R28 K52 ["APIS_URL"]
      580 LOADK                            R119 K143 ["user/cloud/v2/creator-store-products/"]
      581 CONCAT                           R117 R118 R119
      582 MOVE                             R119 R117
      583 LOADK                            R120 K144 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      584 CONCAT                           R118 R119 R120
      585 GETTABLEKS                       R120 R28 K63 ["PUBLISH_URL"]
      587 LOADK                            R121 K145 ["v1/assets/%d/media"]
      588 CONCAT                           R119 R120 R121
      589 GETTABLEKS                       R121 R28 K63 ["PUBLISH_URL"]
      591 LOADK                            R122 K146 ["v1/assets/%d/media/%d"]
      592 CONCAT                           R120 R121 R122
      593 GETTABLEKS                       R122 R28 K63 ["PUBLISH_URL"]
      595 LOADK                            R123 K147 ["v1/assets/%d/media/order"]
      596 CONCAT                           R121 R122 R123
      597 GETTABLEKS                       R123 R28 K63 ["PUBLISH_URL"]
      599 LOADK                            R124 K145 ["v1/assets/%d/media"]
      600 CONCAT                           R122 R123 R124
      601 GETTABLEKS                       R124 R28 K56 ["DEVELOP_URL"]
      603 LOADK                            R125 K148 ["v1/assets/%d/latest-saved-version"]
      604 CONCAT                           R123 R124 R125
      605 GETTABLEKS                       R125 R28 K56 ["DEVELOP_URL"]
      607 LOADK                            R126 K149 ["v1/universes/%d"]
      608 CONCAT                           R124 R125 R126
      609 GETTABLEKS                       R126 R28 K50 ["ITEM_CONFIGURATION_URL"]
      611 LOADK                            R127 K150 ["v1/permissions/groups?"]
      612 CONCAT                           R125 R126 R127
      613 GETTABLEKS                       R127 R28 K52 ["APIS_URL"]
      615 LOADK                            R128 K151 ["asset-permissions-api/v1/assets/access-properties"]
      616 CONCAT                           R126 R127 R128
      617 DUPCLOSURE                       R127 K152 [PROTO_0]
      618 CAPTURE                          VAL R109
      619 CAPTURE                          VAL R28
      620 SETTABLEKS                       R127 R33 K153 ["constructGetItemDetails"]
      622 DUPCLOSURE                       R127 K154 [PROTO_1]
      623 CAPTURE                          VAL R37
      624 CAPTURE                          VAL R28
      625 SETTABLEKS                       R127 R33 K155 ["constructGetAssetsUrl"]
      627 GETTABLEKS                       R127 R21 K156 ["new"]
      629 NEWTABLE                         R128 0 4
      631 GETTABLEKS                       R129 R27 K157 ["MUSIC"]
      633 GETTABLEKS                       R129 R129 K158 ["name"]
      635 GETTABLEKS                       R130 R27 K159 ["SOUND_EFFECTS"]
      637 GETTABLEKS                       R130 R130 K158 ["name"]
      639 GETTABLEKS                       R131 R27 K160 ["UNKNOWN_AUDIO"]
      641 GETTABLEKS                       R131 R131 K158 ["name"]
      643 GETTABLEKS                       R132 R27 K161 ["FREE_FONTS"]
      645 GETTABLEKS                       R132 R132 K158 ["name"]
      647 SETLIST                          R128 R129 4 [1]
      649 CALL                             R127 1 1
      650 DUPCLOSURE                       R128 K162 [PROTO_2]
      651 CAPTURE                          VAL R127
      652 SETTABLEKS                       R128 R33 K163 ["usesMarketplaceRoute"]
      654 DUPCLOSURE                       R128 K164 [PROTO_3]
      655 CAPTURE                          VAL R107
      656 SETTABLEKS                       R128 R33 K165 ["constructCreateSaveUrl"]
      658 DUPCLOSURE                       R128 K166 [PROTO_4]
      659 CAPTURE                          VAL R107
      660 SETTABLEKS                       R128 R33 K167 ["constructDeleteSaveUrl"]
      662 DUPCLOSURE                       R128 K168 [PROTO_5]
      663 CAPTURE                          VAL R107
      664 SETTABLEKS                       R128 R33 K169 ["constructGetSaveUrl"]
      666 DUPCLOSURE                       R128 K170 [PROTO_6]
      667 CAPTURE                          VAL R22
      668 CAPTURE                          VAL R19
      669 CAPTURE                          VAL R23
      670 CAPTURE                          VAL R31
      671 CAPTURE                          VAL R27
      672 CAPTURE                          VAL R107
      673 CAPTURE                          VAL R33
      674 CAPTURE                          VAL R28
      675 CAPTURE                          VAL R6
      676 SETTABLEKS                       R128 R33 K171 ["constructGetToolboxItemsUrl"]
      678 DUPCLOSURE                       R128 K172 [PROTO_7]
      679 CAPTURE                          VAL R38
      680 CAPTURE                          VAL R28
      681 SETTABLEKS                       R128 R33 K173 ["getDevelopAssetUrl"]
      683 DUPCLOSURE                       R128 K174 [PROTO_8]
      684 CAPTURE                          VAL R36
      685 SETTABLEKS                       R128 R33 K175 ["constructGetAssetByIdUrl"]
      687 DUPCLOSURE                       R128 K176 [PROTO_9]
      688 CAPTURE                          VAL R35
      689 CAPTURE                          VAL R28
      690 SETTABLEKS                       R128 R33 K177 ["constructGetAllowedItemTypesUrl"]
      692 DUPCLOSURE                       R128 K178 [PROTO_10]
      693 CAPTURE                          VAL R110
      694 CAPTURE                          VAL R28
      695 SETTABLEKS                       R128 R33 K179 ["constructGetAssetGroupCreationsUrl"]
      697 DUPCLOSURE                       R128 K180 [PROTO_11]
      698 CAPTURE                          VAL R111
      699 CAPTURE                          VAL R28
      700 SETTABLEKS                       R128 R33 K181 ["constructGetAssetCreationsUrlToolboxService"]
      702 DUPCLOSURE                       R128 K182 [PROTO_12]
      703 CAPTURE                          VAL R41
      704 CAPTURE                          VAL R40
      705 SETTABLEKS                       R128 R33 K183 ["constructGetCreatorInfoUrl"]
      707 DUPCLOSURE                       R128 K184 [PROTO_13]
      708 CAPTURE                          VAL R54
      709 SETTABLEKS                       R128 R33 K185 ["constructGetBundleMetadataUrl"]
      711 DUPCLOSURE                       R128 K186 [PROTO_14]
      712 CAPTURE                          VAL R55
      713 SETTABLEKS                       R128 R33 K187 ["constructPostBundleCreationContextUrl"]
      715 DUPCLOSURE                       R128 K188 [PROTO_15]
      716 CAPTURE                          VAL R57
      717 SETTABLEKS                       R128 R33 K189 ["constructPostCreateBundleUrl"]
      719 DUPCLOSURE                       R128 K190 [PROTO_16]
      720 CAPTURE                          VAL R58
      721 SETTABLEKS                       R128 R33 K191 ["constructGetBundleCreationStatusUrl"]
      723 DUPCLOSURE                       R128 K192 [PROTO_17]
      724 CAPTURE                          VAL R59
      725 SETTABLEKS                       R128 R33 K193 ["constructGetDefaultCreateBundleDataSharingUrl"]
      727 DUPCLOSURE                       R128 K194 [PROTO_18]
      728 CAPTURE                          VAL R60
      729 SETTABLEKS                       R128 R33 K195 ["constructPostCreateBundleDataSharingUrl"]
      731 DUPCLOSURE                       R128 K196 [PROTO_19]
      732 CAPTURE                          VAL R61
      733 SETTABLEKS                       R128 R33 K197 ["constructPostCreateAvatarAssetDataSharingUrl"]
      735 DUPCLOSURE                       R128 K198 [PROTO_20]
      736 CAPTURE                          VAL R49
      737 CAPTURE                          VAL R28
      738 SETTABLEKS                       R128 R33 K199 ["constructGetItemConfigurationDetailsUrl"]
      740 DUPCLOSURE                       R128 K200 [PROTO_21]
      741 CAPTURE                          VAL R56
      742 SETTABLEKS                       R128 R33 K201 ["constructPostAvatarItemUpdateContextUrl"]
      744 DUPCLOSURE                       R128 K202 [PROTO_22]
      745 CAPTURE                          VAL R48
      746 CAPTURE                          VAL R28
      747 SETTABLEKS                       R128 R33 K203 ["constructGetItemsByCreatorUrl"]
      749 DUPCLOSURE                       R128 K204 [PROTO_23]
      750 CAPTURE                          VAL R14
      751 CAPTURE                          VAL R50
      752 CAPTURE                          VAL R28
      753 SETTABLEKS                       R128 R33 K205 ["constructGetItemUploadFeeUrl"]
      755 MOVE                             R128 R7
      756 CALL                             R128 0 1
      757 JUMPIFNOT                        R128 ; [+10]
      758 DUPCLOSURE                       R128 K206 [PROTO_24]
      759 CAPTURE                          VAL R51
      760 CAPTURE                          VAL R28
      761 SETTABLEKS                       R128 R33 K207 ["constructGetPublishingPreferencesUrl"]
      763 DUPCLOSURE                       R128 K208 [PROTO_25]
      764 CAPTURE                          VAL R52
      765 CAPTURE                          VAL R28
      766 SETTABLEKS                       R128 R33 K209 ["constructGetPublishingFeePreviewUrl"]
      768 MOVE                             R128 R14
      769 CALL                             R128 0 1
      770 JUMPIFNOT                        R128 ; [+5]
      771 DUPCLOSURE                       R128 K210 [PROTO_26]
      772 CAPTURE                          VAL R53
      773 CAPTURE                          VAL R28
      774 SETTABLEKS                       R128 R33 K211 ["constructGetMetadataPermissionsUrl"]
      776 DUPCLOSURE                       R128 K212 [PROTO_27]
      777 CAPTURE                          VAL R42
      778 SETTABLEKS                       R128 R33 K213 ["constructUploadCatalogItemUrl"]
      780 DUPCLOSURE                       R128 K214 [PROTO_28]
      781 CAPTURE                          VAL R43
      782 SETTABLEKS                       R128 R33 K215 ["constructUploadAssetThumbnailUrl"]
      784 DUPCLOSURE                       R128 K216 [PROTO_29]
      785 CAPTURE                          VAL R47
      786 CAPTURE                          VAL R28
      787 SETTABLEKS                       R128 R33 K217 ["contuctGetThumbnailStatusUrl"]
      789 DUPCLOSURE                       R128 K218 [PROTO_30]
      790 CAPTURE                          VAL R45
      791 SETTABLEKS                       R128 R33 K219 ["constructConfigureSalesUrl"]
      793 DUPCLOSURE                       R128 K220 [PROTO_31]
      794 CAPTURE                          VAL R46
      795 SETTABLEKS                       R128 R33 K221 ["constructUpdateSalesUrl"]
      797 DUPCLOSURE                       R128 K222 [PROTO_32]
      798 CAPTURE                          VAL R44
      799 SETTABLEKS                       R128 R33 K223 ["constructConfigureCatalogItemUrl"]
      801 DUPCLOSURE                       R128 K224 [PROTO_33]
      802 CAPTURE                          VAL R112
      803 CAPTURE                          VAL R28
      804 SETTABLEKS                       R128 R33 K225 ["constructGetVoteUrl"]
      806 DUPCLOSURE                       R128 K226 [PROTO_34]
      807 CAPTURE                          VAL R63
      808 SETTABLEKS                       R128 R33 K227 ["constructPostVoteUrl"]
      810 DUPCLOSURE                       R128 K228 [PROTO_35]
      811 CAPTURE                          VAL R64
      812 SETTABLEKS                       R128 R33 K229 ["constructPostUnvoteUrl"]
      814 DUPCLOSURE                       R128 K230 [PROTO_36]
      815 CAPTURE                          VAL R107
      816 SETTABLEKS                       R128 R33 K231 ["constructInsertAssetUrl"]
      818 DUPCLOSURE                       R128 K232 [PROTO_37]
      819 CAPTURE                          VAL R68
      820 CAPTURE                          VAL R28
      821 SETTABLEKS                       R128 R33 K233 ["constructGetPluginInfoUrl"]
      823 DUPCLOSURE                       R128 K234 [PROTO_38]
      824 CAPTURE                          VAL R16
      825 CAPTURE                          VAL R67
      826 CAPTURE                          VAL R66
      827 SETTABLEKS                       R128 R33 K235 ["constructGetManageableGroupsUrl"]
      829 DUPCLOSURE                       R128 K236 [PROTO_39]
      830 CAPTURE                          VAL R28
      831 SETTABLEKS                       R128 R33 K237 ["constructGetGroupsForSurfaceUrl"]
      833 DUPCLOSURE                       R128 K238 [PROTO_40]
      834 CAPTURE                          VAL R28
      835 SETTABLEKS                       R128 R33 K239 ["constructAssetIdUserContextString"]
      837 DUPCLOSURE                       R128 K240 [PROTO_41]
      838 CAPTURE                          VAL R9
      839 SETTABLEKS                       R128 R33 K241 ["constructAssetIdString"]
      841 DUPCLOSURE                       R128 K242 [PROTO_42]
      842 CAPTURE                          VAL R69
      843 CAPTURE                          VAL R28
      844 SETTABLEKS                       R128 R33 K243 ["constructAssetIdUrl"]
      846 DUPCLOSURE                       R128 K244 [PROTO_43]
      847 CAPTURE                          VAL R74
      848 SETTABLEKS                       R128 R33 K245 ["constructAssetSavedVersionString"]
      850 DUPCLOSURE                       R128 K246 [PROTO_44]
      851 CAPTURE                          VAL R80
      852 SETTABLEKS                       R128 R33 K247 ["constructAssetSavedVersionWithNotesString"]
      854 DUPCLOSURE                       R128 K248 [PROTO_45]
      855 CAPTURE                          VAL R79
      856 SETTABLEKS                       R128 R33 K249 ["constructGetPackageVersionDescriptionString"]
      858 DUPCLOSURE                       R128 K250 [PROTO_46]
      859 CAPTURE                          VAL R81
      860 SETTABLEKS                       R128 R33 K251 ["constructSetPackageVersionDescriptionString"]
      862 DUPCLOSURE                       R128 K252 [PROTO_47]
      863 CAPTURE                          VAL R77
      864 CAPTURE                          VAL R28
      865 SETTABLEKS                       R128 R33 K253 ["constructRevertAssetVersionString"]
      867 DUPCLOSURE                       R128 K254 [PROTO_48]
      868 CAPTURE                          VAL R78
      869 CAPTURE                          VAL R28
      870 SETTABLEKS                       R128 R33 K255 ["constructGetDevelopAssetMetadata"]
      872 DUPCLOSURE                       R128 K256 [PROTO_49]
      873 CAPTURE                          VAL R70
      874 CAPTURE                          VAL R28
      875 SETTABLEKS                       R128 R33 K257 ["constructAssetGameAssetIdUrl"]
      877 DUPCLOSURE                       R128 K258 [PROTO_50]
      878 CAPTURE                          VAL R12
      879 SETTABLEKS                       R128 R33 K259 ["constructAssetThumbnailUrl"]
      881 DUPCLOSURE                       R128 K260 [PROTO_51]
      882 SETTABLEKS                       R128 R33 K261 ["constructRBXThumbUrl"]
      884 DUPCLOSURE                       R128 K262 [PROTO_52]
      885 CAPTURE                          VAL R28
      886 CAPTURE                          VAL R2
      887 SETTABLEKS                       R128 R33 K263 ["constructUserSearchUrl"]
      889 DUPCLOSURE                       R128 K264 [PROTO_53]
      890 CAPTURE                          VAL R72
      891 CAPTURE                          VAL R28
      892 SETTABLEKS                       R128 R33 K265 ["constructUserThumbnailUrl"]
      894 DUPCLOSURE                       R128 K266 [PROTO_54]
      895 CAPTURE                          VAL R73
      896 SETTABLEKS                       R128 R33 K267 ["constructFavoriteCountsUrl"]
      898 DUPCLOSURE                       R128 K268 [PROTO_55]
      899 CAPTURE                          VAL R73
      900 SETTABLEKS                       R128 R33 K269 ["constructGetFavoritedUrl"]
      902 DUPCLOSURE                       R128 K270 [PROTO_56]
      903 CAPTURE                          VAL R73
      904 SETTABLEKS                       R128 R33 K271 ["constructPostFavoriteUrl"]
      906 DUPCLOSURE                       R128 K272 [PROTO_57]
      907 CAPTURE                          VAL R73
      908 SETTABLEKS                       R128 R33 K273 ["constructDeleteFavoriteUrl"]
      910 DUPCLOSURE                       R128 K274 [PROTO_58]
      911 CAPTURE                          VAL R86
      912 SETTABLEKS                       R128 R33 K275 ["constructPatchAssetUrl"]
      914 DUPCLOSURE                       R128 K276 [PROTO_59]
      915 CAPTURE                          VAL R82
      916 SETTABLEKS                       R128 R33 K277 ["constructOperationUrl"]
      918 DUPCLOSURE                       R128 K278 [PROTO_60]
      919 CAPTURE                          VAL R83
      920 SETTABLEKS                       R128 R33 K279 ["constructPostUploadAnimationUrl"]
      922 DUPCLOSURE                       R128 K280 [PROTO_61]
      923 CAPTURE                          VAL R85
      924 SETTABLEKS                       R128 R33 K281 ["constructValidateAnimationUrl"]
      926 DUPCLOSURE                       R128 K282 [PROTO_62]
      927 CAPTURE                          VAL R84
      928 SETTABLEKS                       R128 R33 K283 ["constructPostOverwriteAnimationUrl"]
      930 DUPCLOSURE                       R128 K284 [PROTO_63]
      931 CAPTURE                          VAL R88
      932 SETTABLEKS                       R128 R33 K285 ["constructGetMyGroupUrl"]
      934 DUPCLOSURE                       R128 K286 [PROTO_64]
      935 CAPTURE                          VAL R89
      936 SETTABLEKS                       R128 R33 K287 ["constructIsVerifiedCreatorUrl"]
      938 DUPCLOSURE                       R128 K288 [PROTO_65]
      939 CAPTURE                          VAL R91
      940 SETTABLEKS                       R128 R33 K289 ["constructGetUserFriendsUrl"]
      942 DUPCLOSURE                       R128 K290 [PROTO_66]
      943 CAPTURE                          VAL R103
      944 SETTABLEKS                       R128 R33 K291 ["constructAssetPermissionsUrl"]
      946 DUPCLOSURE                       R128 K292 [PROTO_67]
      947 CAPTURE                          VAL R106
      948 SETTABLEKS                       R128 R33 K293 ["constructAssetBatchGrantPermissionsUrl"]
      950 DUPCLOSURE                       R128 K294 [PROTO_68]
      951 CAPTURE                          VAL R104
      952 SETTABLEKS                       R128 R33 K295 ["constructAssetCheckPermissionsUrl"]
      954 DUPCLOSURE                       R128 K296 [PROTO_69]
      955 CAPTURE                          VAL R92
      956 SETTABLEKS                       R128 R33 K297 ["getRobuxPurchaseUrl"]
      958 DUPCLOSURE                       R128 K298 [PROTO_70]
      959 CAPTURE                          VAL R102
      960 SETTABLEKS                       R128 R33 K299 ["constructPostPackageMetadata"]
      962 DUPCLOSURE                       R128 K300 [PROTO_71]
      963 CAPTURE                          VAL R93
      964 SETTABLEKS                       R128 R33 K301 ["constructGetRobuxBalanceUrl"]
      966 DUPCLOSURE                       R128 K302 [PROTO_72]
      967 CAPTURE                          VAL R90
      968 SETTABLEKS                       R128 R33 K303 ["constructGetGroupRoleInfoUrl"]
      970 DUPCLOSURE                       R128 K304 [PROTO_73]
      971 CAPTURE                          VAL R105
      972 SETTABLEKS                       R128 R33 K305 ["constructAssetCheckPermissionsBatchUrl"]
      974 DUPCLOSURE                       R128 K306 [PROTO_74]
      975 CAPTURE                          VAL R10
      976 CAPTURE                          VAL R97
      977 CAPTURE                          VAL R96
      978 CAPTURE                          VAL R95
      979 SETTABLEKS                       R128 R33 K307 ["constructAssetPurchaseUrl"]
      981 DUPCLOSURE                       R128 K308 [PROTO_75]
      982 CAPTURE                          VAL R98
      983 SETTABLEKS                       R128 R33 K309 ["constructPurchaserStatusUrl"]
      985 MOVE                             R128 R11
      986 CALL                             R128 0 1
      987 JUMPIFNOT                        R128 ; [+4]
      988 DUPCLOSURE                       R128 K310 [PROTO_76]
      989 CAPTURE                          VAL R99
      990 SETTABLEKS                       R128 R33 K311 ["constructSellerStatusUrl"]
      992 DUPCLOSURE                       R128 K312 [PROTO_77]
      993 CAPTURE                          VAL R87
      994 CAPTURE                          VAL R28
      995 SETTABLEKS                       R128 R33 K313 ["constructUploadCatalogItemFormatUrl"]
      997 DUPCLOSURE                       R128 K314 [PROTO_78]
      998 CAPTURE                          VAL R113
      999 CAPTURE                          VAL R28
     1000 SETTABLEKS                       R128 R33 K315 ["constructAssetTypeAgentsUrl"]
     1002 DUPCLOSURE                       R128 K316 [PROTO_79]
     1003 CAPTURE                          VAL R114
     1004 CAPTURE                          VAL R28
     1005 SETTABLEKS                       R128 R33 K317 ["constructToolboxAutocompleteUrl"]
     1007 DUPCLOSURE                       R128 K318 [PROTO_80]
     1008 CAPTURE                          VAL R107
     1009 CAPTURE                          VAL R28
     1010 CAPTURE                          VAL R31
     1011 SETTABLEKS                       R128 R33 K319 ["constructGetHomeConfigurationUrl"]
     1013 DUPCLOSURE                       R128 K320 [PROTO_81]
     1014 CAPTURE                          VAL R115
     1015 CAPTURE                          VAL R28
     1016 SETTABLEKS                       R128 R33 K321 ["constructPublishingRequirementsUrl"]
     1018 DUPCLOSURE                       R128 K322 [PROTO_82]
     1019 CAPTURE                          VAL R28
     1020 SETTABLEKS                       R128 R33 K323 ["getCreatorMarketplaceQuotas"]
     1022 DUPCLOSURE                       R128 K324 [PROTO_83]
     1023 CAPTURE                          VAL R119
     1024 SETTABLEKS                       R128 R33 K325 ["constructGetAssetMediaIdsUrl"]
     1026 DUPCLOSURE                       R128 K326 [PROTO_84]
     1027 CAPTURE                          VAL R120
     1028 SETTABLEKS                       R128 R33 K327 ["constructDeleteAssetMediaUrl"]
     1030 DUPCLOSURE                       R128 K328 [PROTO_85]
     1031 CAPTURE                          VAL R121
     1032 SETTABLEKS                       R128 R33 K329 ["constructPostSetAssetMediaOrder"]
     1034 DUPCLOSURE                       R128 K330 [PROTO_86]
     1035 CAPTURE                          VAL R122
     1036 SETTABLEKS                       R128 R33 K331 ["constructPostUploadAssetMedia"]
     1038 JUMPIFNOT                        R3 ; [+4]
     1039 DUPCLOSURE                       R128 K332 [PROTO_87]
     1040 CAPTURE                          VAL R29
     1041 SETTABLEKS                       R128 R33 K333 ["constructCreatorDashboardAssetConfigUrl"]
     1043 JUMPIFNOT                        R5 ; [+6]
     1044 DUPCLOSURE                       R128 K334 [PROTO_88]
     1045 CAPTURE                          VAL R29
     1046 CAPTURE                          VAL R100
     1047 SETTABLEKS                       R128 R33 K335 ["constructCreatorDashboardConfigAvatarAssetUrl"]
     1049 JUMP                             ; [+5]
     1050 DUPCLOSURE                       R128 K336 [PROTO_89]
     1051 CAPTURE                          VAL R29
     1052 CAPTURE                          VAL R100
     1053 SETTABLEKS                       R128 R33 K337 ["constructCreatorDashboardAvatarAssetUrl"]
     1055 DUPCLOSURE                       R128 K338 [PROTO_90]
     1056 CAPTURE                          VAL R29
     1057 SETTABLEKS                       R128 R33 K339 ["constructCreatorDashboardCreationsPageUrl"]
     1059 JUMPIFNOT                        R4 ; [+5]
     1060 DUPCLOSURE                       R128 K340 [PROTO_91]
     1061 CAPTURE                          VAL R29
     1062 CAPTURE                          VAL R101
     1063 SETTABLEKS                       R128 R33 K341 ["constructCreatorDashboardBundleConfigureUrl"]
     1065 DUPCLOSURE                       R128 K342 [PROTO_92]
     1066 CAPTURE                          VAL R29
     1067 SETTABLEKS                       R128 R33 K343 ["constructCreatorStoreConfigurationUrl"]
     1069 DUPCLOSURE                       R128 K344 [PROTO_93]
     1070 CAPTURE                          VAL R124
     1071 SETTABLEKS                       R128 R33 K345 ["constructGetUniverseInfo"]
     1073 MOVE                             R128 R8
     1074 CALL                             R128 0 1
     1075 JUMPIFNOT                        R128 ; [+4]
     1076 DUPCLOSURE                       R128 K346 [PROTO_94]
     1077 CAPTURE                          VAL R116
     1078 SETTABLEKS                       R128 R33 K347 ["constructCodeUnderstandingSummaryUrl"]
     1080 DUPCLOSURE                       R128 K348 [PROTO_95]
     1081 CAPTURE                          VAL R118
     1082 CAPTURE                          VAL R30
     1083 SETTABLEKS                       R128 R33 K349 ["constructGetFiatProductUrl"]
     1085 DUPCLOSURE                       R128 K350 [PROTO_96]
     1086 CAPTURE                          VAL R125
     1087 CAPTURE                          VAL R28
     1088 SETTABLEKS                       R128 R33 K351 ["constructAllowedGroupsForActionUrl"]
     1090 DUPCLOSURE                       R128 K352 [PROTO_97]
     1091 CAPTURE                          VAL R34
     1092 SETTABLEKS                       R128 R33 K353 ["constructCreatorStoreUrl"]
     1094 MOVE                             R128 R13
     1095 CALL                             R128 0 1
     1096 JUMPIFNOT                        R128 ; [+4]
     1097 DUPCLOSURE                       R128 K354 [PROTO_98]
     1098 CAPTURE                          VAL R126
     1099 SETTABLEKS                       R128 R33 K355 ["constructBatchAssetAccessPropertiesUrl"]
     1101 MOVE                             R128 R32
     1102 MOVE                             R129 R33
     1103 CALL                             R128 1 1
     1104 RETURN                           R128 1
