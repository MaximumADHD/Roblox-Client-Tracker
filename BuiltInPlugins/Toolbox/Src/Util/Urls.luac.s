PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
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
        1 GETUPVAL                         R10 1
        2 GETTABLEKS                       R9 R10 K0 ["makeQueryString"]
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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["assign"]
        7 NEWTABLE                         R4 0 0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["omit"]
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
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R7 R8 K8 ["join"]
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
       77 GETUPVAL                         R5 4
       78 GETTABLEKS                       R4 R5 K19 ["getCategoryByName"]
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
       95 GETUPVAL                         R9 4
       96 GETTABLEKS                       R8 R9 K26 ["ToolboxAssetTypeToEngine"]
       98 GETTABLEKS                       R9 R4 K27 ["assetType"]
      100 GETTABLE                         R7 R8 R9
      101 GETTABLEKS                       R6 R7 K28 ["Value"]
      103 GETIMPORT                        R7 K24 [string.format]
      105 LOADK                            R8 K29 ["%s/home/%s/section/%s/assets"]
      106 GETUPVAL                         R9 5
      107 MOVE                             R10 R6
      108 GETTABLEKS                       R11 R0 K4 ["sectionName"]
      110 CALL                             R7 4 1
      111 MOVE                             R5 R7
      112 JUMP                             ; [+113]
      113 GETUPVAL                         R7 6
      114 GETTABLEKS                       R6 R7 K30 ["usesMarketplaceRoute"]
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
      129 GETUPVAL                         R8 4
      130 GETTABLEKS                       R7 R8 K33 ["API_NAMES"]
      132 GETTABLE                         R6 R7 R1
      133 GETUPVAL                         R9 4
      134 GETTABLEKS                       R8 R9 K34 ["getTabForCategoryName"]
      136 GETTABLEKS                       R9 R4 K31 ["name"]
      138 CALL                             R8 1 1
      139 GETUPVAL                         R10 4
      140 GETTABLEKS                       R9 R10 K35 ["CREATIONS"]
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
      157 GETUPVAL                         R11 4
      158 GETTABLEKS                       R10 R11 K38 ["OwnershipType"]
      160 GETTABLEKS                       R9 R10 K39 ["MY"]
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
      175 GETUPVAL                         R11 4
      176 GETTABLEKS                       R10 R11 K38 ["OwnershipType"]
      178 GETTABLEKS                       R9 R10 K41 ["GROUP"]
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
      203 GETUPVAL                         R11 4
      204 GETTABLEKS                       R10 R11 K38 ["OwnershipType"]
      206 GETTABLEKS                       R9 R10 K44 ["RECENT"]
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
      239 GETUPVAL                         R7 7
      240 GETTABLEKS                       R6 R7 K50 ["makeQueryString"]
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
        1 GETUPVAL                         R11 1
        2 GETTABLEKS                       R10 R11 K0 ["makeQueryString"]
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
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
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
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K3 ["makeQueryString"]
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
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K3 ["makeQueryString"]
       10 DUPTABLE                         R8 K7 [{"limit", "cursor", "separateModelsAndPackages"}]
       11 SETTABLEKS                       R1 R8 K4 ["limit"]
       13 SETTABLEKS                       R2 R8 K5 ["cursor"]
       15 SETTABLEKS                       R3 R8 K6 ["separateModelsAndPackages"]
       17 CALL                             R7 1 1
       18 CONCAT                           R5 R6 R7
       19 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
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
       13 GETIMPORT                        R3 K8 [Enum.CreatorType.Group]
       15 GETTABLEKS                       R2 R3 K9 ["Value"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+7]
       19 GETUPVAL                         R2 0
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K10 ["format"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1
       25 GETIMPORT                        R3 K12 [Enum.CreatorType.User]
       27 GETTABLEKS                       R2 R3 K9 ["Value"]
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_17:
        0 LOADK                            R1 K0 ["%s/%s"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R0 ; [+16]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
        6 DUPTABLE                         R5 K2 [{"targetType"}]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R7 R1
        9 GETIMPORT                        R6 K4 [tostring]
       11 CALL                             R6 1 1
       12 SETTABLEKS                       R6 R5 K1 ["targetType"]
       14 CALL                             R4 1 1
       15 CONCAT                           R2 R3 R4
       16 RETURN                           R2 1
       17 GETUPVAL                         R3 0
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
       21 DUPTABLE                         R5 K6 [{"groupId", "targetType"}]
       22 FASTCALL1                        TOSTRING R0 ; [+3]
       23 MOVE                             R7 R0
       24 GETIMPORT                        R6 K4 [tostring]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K5 ["groupId"]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R7 R1
       31 GETIMPORT                        R6 K4 [tostring]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K1 ["targetType"]
       36 CALL                             R4 1 1
       37 CONCAT                           R2 R3 R4
       38 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"itemType", "itemId"}]
        5 SETTABLEKS                       R0 R5 K1 ["itemType"]
        7 SETTABLEKS                       R1 R5 K2 ["itemId"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_23:
        0 DUPTABLE                         R5 K3 [{"limit", "cursor", "groupId"}]
        1 SETTABLEKS                       R3 R5 K0 ["limit"]
        3 SETTABLEKS                       R2 R5 K1 ["cursor"]
        5 SETTABLEKS                       R4 R5 K2 ["groupId"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 SETTABLEKS                       R0 R5 K4 ["bundleType"]
       10 JUMP                             ; [+2]
       11 SETTABLEKS                       R0 R5 K5 ["assetType"]
       13 GETUPVAL                         R7 0
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K6 ["makeQueryString"]
       17 MOVE                             R9 R5
       18 CALL                             R8 1 1
       19 CONCAT                           R6 R7 R8
       20 RETURN                           R6 1

PROTO_24:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
        5 DUPTABLE                         R5 K2 [{"bundleType"}]
        6 SETTABLEKS                       R0 R5 K1 ["bundleType"]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 RETURN                           R2 1
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
       15 DUPTABLE                         R5 K4 [{"assetType"}]
       16 SETTABLEKS                       R0 R5 K3 ["assetType"]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K4 [{"assetIds", "format", "size"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 LOADK                            R5 K5 ["Png"]
        8 SETTABLEKS                       R5 R4 K2 ["format"]
       10 LOADK                            R5 K6 ["150x150"]
       11 SETTABLEKS                       R5 R4 K3 ["size"]
       13 CALL                             R3 1 1
       14 CONCAT                           R1 R2 R3
       15 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"assetId", "assetType"}]
        5 SETTABLEKS                       R0 R5 K1 ["assetId"]
        7 SETTABLEKS                       R1 R5 K2 ["assetType"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_32:
        0 GETIMPORT                        R2 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R5 K3 ["true"]
        6 JUMP                             ; [+1]
        7 LOADK                            R5 K4 ["false"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_33:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_34:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s/insert/asset/%d"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"pluginIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["pluginIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 2
        6 RETURN                           R0 1

PROTO_37:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["https://apis.%screator-home-api/v1/groups?surface=%s"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K4 ["DOMAIN"]
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R2 R4 K0 ["ASSET_DELIVERY_URL"]
        3 LOADK                            R3 K1 ["v1/asset/?id=%d&permissionContext=ignoreUniverse"]
        4 CONCAT                           R1 R2 R3
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"id"}]
        5 SETTABLEKS                       R0 R4 K1 ["id"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_41:
        0 ORK                              R1 R1 K0 [50]
        1 ORK                              R2 R2 K1 [""]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_44:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 NAMECALL                         R5 R5 K0 ["format"]
        4 CALL                             R5 2 1
        5 MOVE                             R3 R5
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["makeQueryString"]
        9 DUPTABLE                         R5 K3 [{"assetVersionNumber"}]
       10 SETTABLEKS                       R1 R5 K2 ["assetVersionNumber"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_46:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R10 1
        2 GETTABLEKS                       R9 R10 K0 ["makeQueryString"]
        4 DUPTABLE                         R10 K3 [{"id", "assetName"}]
        5 SETTABLEKS                       R0 R10 K1 ["id"]
        7 SETTABLEKS                       R3 R10 K2 ["assetName"]
        9 CALL                             R9 1 1
       10 MOVE                             R6 R9
       11 LOADK                            R7 K4 ["#"]
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R8 R9 K0 ["makeQueryString"]
       15 DUPTABLE                         R9 K7 [{"assetTypeId", "isPackage"}]
       16 SETTABLEKS                       R1 R9 K5 ["assetTypeId"]
       18 SETTABLEKS                       R2 R9 K6 ["isPackage"]
       20 CALL                             R8 1 1
       21 CONCAT                           R4 R5 R8
       22 RETURN                           R4 1

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["APIS_URL"]
        3 LOADK                            R3 K1 ["search-api/omni-search?"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["makeQueryString"]
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

PROTO_50:
        0 ORK                              R1 R1 K0 [100]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K1 ["makeQueryString"]
        5 DUPTABLE                         R5 K6 [{"userId", "width", "height", "format"}]
        6 SETTABLEKS                       R0 R5 K2 ["userId"]
        8 SETTABLEKS                       R1 R5 K3 ["width"]
       10 SETTABLEKS                       R1 R5 K4 ["height"]
       12 LOADK                            R6 K7 ["png"]
       13 SETTABLEKS                       R6 R5 K5 ["format"]
       15 CALL                             R4 1 1
       16 CONCAT                           R2 R3 R4
       17 RETURN                           R2 1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["/favorites/assets/%d/count"]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 -1
        6 NAMECALL                         R1 R1 K1 ["format"]
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

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
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["/favorites/users/%d/assets/%d/favorite"]
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 NAMECALL                         R4 R4 K1 ["format"]
        6 CALL                             R4 3 -1
        7 NAMECALL                         R2 R2 K1 ["format"]
        9 CALL                             R2 -1 -1
       10 RETURN                           R2 -1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_70:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_71:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 GETUPVAL                         R2 1
        6 RETURN                           R2 1
        7 GETIMPORT                        R3 K3 [Enum.AssetType.Plugin]
        9 GETTABLEKS                       R2 R3 K4 ["Value"]
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

PROTO_72:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_74:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R8 R9 K0 ["makeQueryString"]
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

PROTO_75:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R6 R0 K0 ["Name"]
        3 NAMECALL                         R4 R4 K1 ["format"]
        5 CALL                             R4 2 1
        6 MOVE                             R2 R4
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["makeQueryString"]
       10 NEWTABLE                         R4 2 0
       12 LOADK                            R5 K3 ["Upload"]
       13 SETTABLEKS                       R5 R4 K4 ["requestModel.actionType"]
       15 LOADK                            R5 K5 ["Group"]
       16 SETTABLEKS                       R5 R4 K6 ["requestModel.agentType"]
       18 CALL                             R3 1 1
       19 CONCAT                           R1 R2 R3
       20 RETURN                           R1 1

PROTO_76:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["makeQueryString"]
        4 DUPTABLE                         R6 K4 [{"cat", "limit", "prefix"}]
        5 SETTABLEKS                       R0 R6 K1 ["cat"]
        7 SETTABLEKS                       R2 R6 K2 ["limit"]
        9 SETTABLEKS                       R1 R6 K3 ["prefix"]
       11 CALL                             R5 1 1
       12 CONCAT                           R3 R4 R5
       13 RETURN                           R3 1

PROTO_77:
        0 GETIMPORT                        R5 K2 [string.format]
        2 LOADK                            R6 K3 ["%s/home/%s/configuration?"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R8 R0 K4 ["Name"]
        6 CALL                             R5 3 1
        7 MOVE                             R3 R5
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K5 ["makeQueryString"]
       11 DUPTABLE                         R5 K8 [{"locale", "placeId"}]
       12 SETTABLEKS                       R1 R5 K6 ["locale"]
       14 GETUPVAL                         R6 2
       15 CALL                             R6 0 1
       16 SETTABLEKS                       R6 R5 K7 ["placeId"]
       18 CALL                             R4 1 1
       19 CONCAT                           R2 R3 R4
       20 RETURN                           R2 1

PROTO_78:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["makeQueryString"]
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

PROTO_79:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s/v1/asset-quotas?%s"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K4 ["PUBLISH_URL"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K5 ["makeQueryString"]
        9 DUPTABLE                         R6 K8 [{"assetType", "resourceType"}]
       10 GETTABLEKS                       R7 R0 K9 ["Name"]
       12 SETTABLEKS                       R7 R6 K6 ["assetType"]
       14 SETTABLEKS                       R1 R6 K7 ["resourceType"]
       16 CALL                             R5 1 -1
       17 CALL                             R2 -1 -1
       18 RETURN                           R2 -1

PROTO_80:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_81:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["format"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_82:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_84:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getCreatorDashboardBaseUrl"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["getCreatorDashboardCatalogConfigUrlExtension"]
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

PROTO_85:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getCreatorDashboardBaseUrl"]
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

PROTO_86:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["getCreatorDashboardBaseUrl"]
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

PROTO_87:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getCreatorDashboardBaseUrl"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 JUMPIFNOT                        R1 ; [+5]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CONCAT                           R3 R4 R5
       10 ORK                              R2 R3 K1 [""]
       11 RETURN                           R2 1
       12 LOADK                            R2 K1 [""]
       13 RETURN                           R2 1

PROTO_88:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+20]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getCreatorDashboardBaseUrl"]
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

PROTO_89:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["getCreatorDashboardBaseUrl"]
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

PROTO_90:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_91:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["AssetInfo"]
        3 NAMECALL                         R1 R1 K1 ["format"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"action"}]
        5 SETTABLEKS                       R0 R4 K1 ["action"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_94:
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

PROTO_95:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
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
       37 GETTABLEKS                       R10 R0 K4 ["Src"]
       39 GETTABLEKS                       R9 R10 K5 ["Util"]
       41 GETTABLEKS                       R8 R9 K16 ["SharedFlags"]
       43 GETTABLEKS                       R7 R8 K17 ["getFFlagEnableUGCForAllChecks"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K15 [require]
       48 GETTABLEKS                       R11 R0 K4 ["Src"]
       50 GETTABLEKS                       R10 R11 K5 ["Util"]
       52 GETTABLEKS                       R9 R10 K16 ["SharedFlags"]
       54 GETTABLEKS                       R8 R9 K18 ["getFFlagToolboxEnableAssetRows"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K15 [require]
       59 GETTABLEKS                       R12 R0 K4 ["Src"]
       61 GETTABLEKS                       R11 R12 K5 ["Util"]
       63 GETTABLEKS                       R10 R11 K16 ["SharedFlags"]
       65 GETTABLEKS                       R9 R10 K19 ["getFFlagToolboxCodeUnderstandingSummary"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K7 [game]
       70 LOADK                            R11 K20 ["ToolboxVideoTestUseLocalAudioFile"]
       71 NAMECALL                         R9 R9 K11 ["GetFastFlag"]
       73 CALL                             R9 2 1
       74 GETIMPORT                        R10 K15 [require]
       76 GETTABLEKS                       R12 R1 K16 ["SharedFlags"]
       78 GETTABLEKS                       R11 R12 K21 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K15 [require]
       83 GETTABLEKS                       R15 R0 K4 ["Src"]
       85 GETTABLEKS                       R14 R15 K5 ["Util"]
       87 GETTABLEKS                       R13 R14 K16 ["SharedFlags"]
       89 GETTABLEKS                       R12 R13 K22 ["getFFlagToolboxAssetConfigOnboardingLink"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K15 [require]
       94 GETTABLEKS                       R14 R1 K16 ["SharedFlags"]
       96 GETTABLEKS                       R13 R14 K23 ["getFFlagEnableUnknownErrorCreatorDashboardMessage"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K15 [require]
      101 GETTABLEKS                       R15 R1 K16 ["SharedFlags"]
      103 GETTABLEKS                       R14 R15 K24 ["getFFlagToolboxCreatorContextThumbnail"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K15 [require]
      108 GETTABLEKS                       R17 R0 K4 ["Src"]
      110 GETTABLEKS                       R16 R17 K25 ["Flags"]
      112 GETTABLEKS                       R15 R16 K26 ["getFFlagCheckAvatarAssetPrivacy"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K15 [require]
      117 GETTABLEKS                       R18 R0 K4 ["Src"]
      119 GETTABLEKS                       R17 R18 K25 ["Flags"]
      121 GETTABLEKS                       R16 R17 K27 ["getFFlagPrivacyCheckAssetType"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K15 [require]
      126 GETTABLEKS                       R20 R0 K4 ["Src"]
      128 GETTABLEKS                       R19 R20 K5 ["Util"]
      130 GETTABLEKS                       R18 R19 K16 ["SharedFlags"]
      132 GETTABLEKS                       R17 R18 K28 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K15 [require]
      137 GETTABLEKS                       R20 R0 K4 ["Src"]
      139 GETTABLEKS                       R19 R20 K25 ["Flags"]
      141 GETTABLEKS                       R18 R19 K29 ["getFFlagRemoveGetAssetDetails"]
      143 CALL                             R17 1 1
      144 GETTABLEKS                       R18 R0 K30 ["Packages"]
      146 GETIMPORT                        R19 K15 [require]
      148 GETTABLEKS                       R20 R18 K31 ["Framework"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K15 [require]
      153 GETTABLEKS                       R21 R18 K32 ["Dash"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K15 [require]
      158 GETTABLEKS                       R22 R18 K33 ["LuauPolyfill"]
      160 CALL                             R21 1 1
      161 GETTABLEKS                       R22 R21 K34 ["Set"]
      163 GETTABLEKS                       R23 R21 K35 ["Object"]
      165 GETTABLEKS                       R24 R21 K36 ["Array"]
      167 GETIMPORT                        R25 K15 [require]
      169 GETTABLEKS                       R28 R0 K4 ["Src"]
      171 GETTABLEKS                       R27 R28 K37 ["Types"]
      173 GETTABLEKS                       R26 R27 K38 ["AssetQuotaTypes"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R29 R0 K4 ["Src"]
      180 GETTABLEKS                       R28 R29 K37 ["Types"]
      182 GETTABLEKS                       R27 R28 K39 ["AssetSubTypes"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R30 R0 K4 ["Src"]
      189 GETTABLEKS                       R29 R30 K37 ["Types"]
      191 GETTABLEKS                       R28 R29 K40 ["HomeTypes"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K15 [require]
      196 GETTABLEKS                       R31 R0 K4 ["Src"]
      198 GETTABLEKS                       R30 R31 K37 ["Types"]
      200 GETTABLEKS                       R29 R30 K41 ["Category"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K15 [require]
      205 GETTABLEKS                       R32 R0 K42 ["Libs"]
      207 GETTABLEKS                       R31 R32 K43 ["Http"]
      209 GETTABLEKS                       R30 R31 K44 ["Url"]
      211 CALL                             R29 1 1
      212 GETIMPORT                        R30 K15 [require]
      214 GETTABLEKS                       R33 R0 K4 ["Src"]
      216 GETTABLEKS                       R32 R33 K5 ["Util"]
      218 GETTABLEKS                       R31 R32 K45 ["ToolboxUtilities"]
      220 CALL                             R30 1 1
      221 GETIMPORT                        R31 K15 [require]
      223 GETTABLEKS                       R32 R1 K46 ["FiatUtil"]
      225 CALL                             R31 1 1
      226 GETIMPORT                        R32 K15 [require]
      228 GETTABLEKS                       R33 R1 K47 ["getPlaceId"]
      230 CALL                             R32 1 1
      231 GETIMPORT                        R33 K15 [require]
      233 GETTABLEKS                       R34 R1 K48 ["wrapStrictTable"]
      235 CALL                             R33 1 1
      236 NEWTABLE                         R34 128 0
      238 GETTABLEKS                       R36 R29 K49 ["CREATE_URL"]
      240 LOADK                            R37 K50 ["store/"]
      241 CONCAT                           R35 R36 R37
      242 GETTABLEKS                       R37 R29 K51 ["ITEM_CONFIGURATION_URL"]
      244 LOADK                            R38 K52 ["v1/permissions/item-types?"]
      245 CONCAT                           R36 R37 R38
      246 MOVE                             R38 R15
      247 CALL                             R38 0 1
      248 JUMPIFNOT                        R38 ; [+5]
      249 GETTABLEKS                       R38 R29 K53 ["APIS_URL"]
      251 LOADK                            R39 K54 ["assets/user-auth/v1/assets/%d"]
      252 CONCAT                           R37 R38 R39
      253 JUMP                             ; [+1]
      254 LOADNIL                          R37
      255 GETTABLEKS                       R39 R29 K55 ["BASE_URL"]
      257 LOADK                            R40 K56 ["IDE/Toolbox/Items?"]
      258 CONCAT                           R38 R39 R40
      259 GETTABLEKS                       R40 R29 K57 ["DEVELOP_URL"]
      261 LOADK                            R41 K58 ["v1/toolbox/items?"]
      262 CONCAT                           R39 R40 R41
      263 GETTABLEKS                       R41 R29 K51 ["ITEM_CONFIGURATION_URL"]
      265 LOADK                            R42 K59 ["v1/creations/get-assets?"]
      266 CONCAT                           R40 R41 R42
      267 MOVE                             R42 R17
      268 CALL                             R42 0 1
      269 JUMPIFNOT                        R42 ; [+2]
      270 LOADNIL                          R41
      271 JUMP                             ; [+4]
      272 GETTABLEKS                       R42 R29 K51 ["ITEM_CONFIGURATION_URL"]
      274 LOADK                            R43 K60 ["v1/creations/get-asset-details"]
      275 CONCAT                           R41 R42 R43
      276 GETTABLEKS                       R43 R29 K61 ["USERS_URL"]
      278 LOADK                            R44 K62 ["/v1/users/%d"]
      279 CONCAT                           R42 R43 R44
      280 GETTABLEKS                       R44 R29 K63 ["GROUP_URL"]
      282 LOADK                            R45 K64 ["v0/groups/%d"]
      283 CONCAT                           R43 R44 R45
      284 GETTABLEKS                       R45 R29 K65 ["PUBLISH_URL"]
      286 LOADK                            R46 K66 ["v1/assets/upload"]
      287 CONCAT                           R44 R45 R46
      288 GETTABLEKS                       R46 R29 K65 ["PUBLISH_URL"]
      290 LOADK                            R47 K67 ["v1/assets/%d/thumbnail"]
      291 CONCAT                           R45 R46 R47
      292 GETTABLEKS                       R47 R29 K57 ["DEVELOP_URL"]
      294 LOADK                            R48 K68 ["v1/assets/%d"]
      295 CONCAT                           R46 R47 R48
      296 GETTABLEKS                       R48 R29 K51 ["ITEM_CONFIGURATION_URL"]
      298 LOADK                            R49 K69 ["v1/assets/%d/release"]
      299 CONCAT                           R47 R48 R49
      300 GETTABLEKS                       R49 R29 K51 ["ITEM_CONFIGURATION_URL"]
      302 LOADK                            R50 K70 ["v1/assets/%d/update-price"]
      303 CONCAT                           R48 R49 R50
      304 GETTABLEKS                       R50 R29 K71 ["THUMBNAIL_URL"]
      306 LOADK                            R51 K72 ["v1/assets?"]
      307 CONCAT                           R49 R50 R51
      308 MOVE                             R51 R6
      309 CALL                             R51 0 1
      310 JUMPIFNOT                        R51 ; [+5]
      311 GETTABLEKS                       R51 R29 K51 ["ITEM_CONFIGURATION_URL"]
      313 LOADK                            R52 K73 ["v1/collectibles/check-item-upload-access?"]
      314 CONCAT                           R50 R51 R52
      315 JUMP                             ; [+1]
      316 LOADNIL                          R50
      317 GETTABLEKS                       R52 R29 K51 ["ITEM_CONFIGURATION_URL"]
      319 LOADK                            R53 K74 ["v1/items/by-creator?"]
      320 CONCAT                           R51 R52 R53
      321 MOVE                             R53 R17
      322 CALL                             R53 0 1
      323 JUMPIFNOT                        R53 ; [+5]
      324 GETTABLEKS                       R53 R29 K51 ["ITEM_CONFIGURATION_URL"]
      326 LOADK                            R54 K75 ["v1/items?"]
      327 CONCAT                           R52 R53 R54
      328 JUMP                             ; [+1]
      329 LOADNIL                          R52
      330 GETTABLEKS                       R54 R29 K51 ["ITEM_CONFIGURATION_URL"]
      332 LOADK                            R55 K76 ["v1/items/upload-fee?"]
      333 CONCAT                           R53 R54 R55
      334 GETTABLEKS                       R55 R29 K51 ["ITEM_CONFIGURATION_URL"]
      336 LOADK                            R56 K77 ["v1/bundles/metadata"]
      337 CONCAT                           R54 R55 R56
      338 GETTABLEKS                       R56 R29 K51 ["ITEM_CONFIGURATION_URL"]
      340 LOADK                            R57 K78 ["v1/bundles/create-context"]
      341 CONCAT                           R55 R56 R57
      342 GETTABLEKS                       R57 R29 K51 ["ITEM_CONFIGURATION_URL"]
      344 LOADK                            R58 K79 ["v1/bundles"]
      345 CONCAT                           R56 R57 R58
      346 GETTABLEKS                       R58 R29 K51 ["ITEM_CONFIGURATION_URL"]
      348 LOADK                            R59 K80 ["v1/bundles/status"]
      349 CONCAT                           R57 R58 R59
      350 GETTABLEKS                       R59 R29 K53 ["APIS_URL"]
      352 LOADK                            R60 K81 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      353 CONCAT                           R58 R59 R60
      354 GETTABLEKS                       R60 R29 K53 ["APIS_URL"]
      356 LOADK                            R61 K82 ["resource-settings/v1/bundles"]
      357 CONCAT                           R59 R60 R61
      358 GETTABLEKS                       R61 R29 K53 ["APIS_URL"]
      360 LOADK                            R62 K83 ["resource-settings/v1/avatar-assets"]
      361 CONCAT                           R60 R61 R62
      362 GETTABLEKS                       R62 R29 K55 ["BASE_URL"]
      364 LOADK                            R63 K84 ["voting/vote?assetId=%s&vote=%s"]
      365 CONCAT                           R61 R62 R63
      366 GETTABLEKS                       R63 R29 K53 ["APIS_URL"]
      368 LOADK                            R64 K85 ["voting-api/vote/asset/%s?vote=%s"]
      369 CONCAT                           R62 R63 R64
      370 GETTABLEKS                       R64 R29 K53 ["APIS_URL"]
      372 LOADK                            R65 K86 ["voting-api/vote/asset/%s"]
      373 CONCAT                           R63 R64 R65
      374 GETTABLEKS                       R65 R29 K55 ["BASE_URL"]
      376 LOADK                            R66 K87 ["IDE/Toolbox/InsertAsset?"]
      377 CONCAT                           R64 R65 R66
      378 GETTABLEKS                       R66 R29 K57 ["DEVELOP_URL"]
      380 LOADK                            R67 K88 ["v1/user/groups/canmanage"]
      381 CONCAT                           R65 R66 R67
      382 GETTABLEKS                       R67 R29 K53 ["APIS_URL"]
      384 LOADK                            R68 K89 ["orgs/v2/groups/permissions/createassets"]
      385 CONCAT                           R66 R67 R68
      386 GETTABLEKS                       R68 R29 K53 ["APIS_URL"]
      388 LOADK                            R69 K90 ["studio-plugin-api/v1/plugins?"]
      389 CONCAT                           R67 R68 R69
      390 GETTABLEKS                       R69 R29 K55 ["BASE_URL"]
      392 LOADK                            R70 K91 ["asset/?"]
      393 CONCAT                           R68 R69 R70
      394 GETTABLEKS                       R70 R29 K92 ["GAME_ASSET_URL"]
      396 LOADK                            R71 K91 ["asset/?"]
      397 CONCAT                           R69 R70 R71
      398 GETTABLEKS                       R71 R29 K92 ["GAME_ASSET_URL"]
      400 LOADK                            R72 K93 ["asset-thumbnail/image?"]
      401 CONCAT                           R70 R71 R72
      402 GETTABLEKS                       R72 R29 K55 ["BASE_URL"]
      404 LOADK                            R73 K94 ["headshot-thumbnail/image?"]
      405 CONCAT                           R71 R72 R73
      406 GETTABLEKS                       R73 R29 K95 ["CATALOG_URL"]
      408 LOADK                            R74 K96 ["v1%s"]
      409 CONCAT                           R72 R73 R74
      410 GETTABLEKS                       R74 R29 K57 ["DEVELOP_URL"]
      412 LOADK                            R75 K97 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      413 CONCAT                           R73 R74 R75
      414 GETTABLEKS                       R75 R29 K57 ["DEVELOP_URL"]
      416 LOADK                            R76 K98 ["v1/assets/%s/saved-versions?limit=%s"]
      417 CONCAT                           R74 R75 R76
      418 GETTABLEKS                       R76 R29 K57 ["DEVELOP_URL"]
      420 LOADK                            R77 K99 ["v1/assets/%s/saved-versions?cursor=%s"]
      421 CONCAT                           R75 R76 R77
      422 GETTABLEKS                       R77 R29 K57 ["DEVELOP_URL"]
      424 LOADK                            R78 K100 ["v1/assets/%s/revert-version?"]
      425 CONCAT                           R76 R77 R78
      426 GETTABLEKS                       R78 R29 K57 ["DEVELOP_URL"]
      428 LOADK                            R79 K72 ["v1/assets?"]
      429 CONCAT                           R77 R78 R79
      430 GETTABLEKS                       R79 R29 K53 ["APIS_URL"]
      432 LOADK                            R80 K101 ["packages-api/v1/packages/assets/versions/notes/get"]
      433 CONCAT                           R78 R79 R80
      434 GETTABLEKS                       R80 R29 K53 ["APIS_URL"]
      436 LOADK                            R81 K102 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      437 CONCAT                           R79 R80 R81
      438 GETTABLEKS                       R81 R29 K53 ["APIS_URL"]
      440 LOADK                            R82 K103 ["assets/user-auth/v1/operations/%s"]
      441 CONCAT                           R80 R81 R82
      442 GETTABLEKS                       R82 R29 K53 ["APIS_URL"]
      444 LOADK                            R83 K104 ["assets/user-auth/v1/assets"]
      445 CONCAT                           R81 R82 R83
      446 GETTABLEKS                       R83 R29 K53 ["APIS_URL"]
      448 LOADK                            R84 K105 ["assets/user-auth/v1/assets/%s"]
      449 CONCAT                           R82 R83 R84
      450 GETTABLEKS                       R84 R29 K53 ["APIS_URL"]
      452 LOADK                            R85 K105 ["assets/user-auth/v1/assets/%s"]
      453 CONCAT                           R83 R84 R85
      454 GETTABLEKS                       R85 R29 K57 ["DEVELOP_URL"]
      456 LOADK                            R86 K106 ["v1/assets/%s?"]
      457 CONCAT                           R84 R85 R86
      458 GETTABLEKS                       R86 R29 K107 ["DATA_URL"]
      460 LOADK                            R87 K108 ["Data/Upload.ashx?"]
      461 CONCAT                           R85 R86 R87
      462 GETTABLEKS                       R87 R29 K63 ["GROUP_URL"]
      464 LOADK                            R88 K109 ["v2/users/%%20%%20%s/groups/roles"]
      465 CONCAT                           R86 R87 R88
      466 GETTABLEKS                       R88 R29 K57 ["DEVELOP_URL"]
      468 LOADK                            R89 K110 ["v1/user/is-verified-creator"]
      469 CONCAT                           R87 R88 R89
      470 GETTABLEKS                       R89 R29 K63 ["GROUP_URL"]
      472 LOADK                            R90 K111 ["v1/groups/%s/roles"]
      473 CONCAT                           R88 R89 R90
      474 GETTABLEKS                       R90 R29 K112 ["FRIENDS_URL"]
      476 LOADK                            R91 K113 ["v1/users/%d/friends"]
      477 CONCAT                           R89 R90 R91
      478 GETTABLEKS                       R91 R29 K55 ["BASE_URL"]
      480 LOADK                            R92 K114 ["upgrades/robux"]
      481 CONCAT                           R90 R91 R92
      482 GETTABLEKS                       R92 R29 K115 ["ECONOMY_URL"]
      484 LOADK                            R93 K116 ["v1/users/%d/currency"]
      485 CONCAT                           R91 R92 R93
      486 GETTABLEKS                       R93 R29 K57 ["DEVELOP_URL"]
      488 LOADK                            R94 K117 ["v1/user/%d/canmanage/%d"]
      489 CONCAT                           R92 R93 R94
      490 GETTABLEKS                       R94 R29 K115 ["ECONOMY_URL"]
      492 LOADK                            R95 K118 ["/v1/purchases/products/%d"]
      493 CONCAT                           R93 R94 R95
      494 GETTABLEKS                       R95 R29 K53 ["APIS_URL"]
      496 LOADK                            R96 K119 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      497 CONCAT                           R94 R95 R96
      498 GETTABLEKS                       R96 R29 K53 ["APIS_URL"]
      500 LOADK                            R97 K120 ["marketplace-fiat-service/v1/product/purchase"]
      501 CONCAT                           R95 R96 R97
      502 GETTABLEKS                       R97 R29 K53 ["APIS_URL"]
      504 LOADK                            R98 K121 ["marketplace-fiat-service/v1/purchaser/status"]
      505 CONCAT                           R96 R97 R98
      506 MOVE                             R98 R11
      507 CALL                             R98 0 1
      508 JUMPIFNOT                        R98 ; [+5]
      509 GETTABLEKS                       R98 R29 K53 ["APIS_URL"]
      511 LOADK                            R99 K122 ["marketplace-fiat-service/v1/seller/status"]
      512 CONCAT                           R97 R98 R99
      513 JUMP                             ; [+1]
      514 LOADNIL                          R97
      515 JUMPIFNOT                        R5 ; [+2]
      516 LOADK                            R98 K123 ["/creations/catalog/%d/configure"]
      517 JUMP                             ; [+1]
      518 LOADK                            R98 K124 ["/creations?activeTab=TShirt"]
      519 JUMPIFNOT                        R4 ; [+2]
      520 LOADK                            R99 K125 ["/creations/bundle/%d/configure"]
      521 JUMP                             ; [+1]
      522 LOADNIL                          R99
      523 MOVE                             R101 R12
      524 CALL                             R101 0 1
      525 JUMPIFNOT                        R101 ; [+2]
      526 LOADK                            R100 K126 ["/creations"]
      527 JUMP                             ; [+1]
      528 LOADNIL                          R100
      529 GETTABLEKS                       R102 R29 K53 ["APIS_URL"]
      531 LOADK                            R103 K127 ["packages-api/v1/packages/assets/versions/metadata/get"]
      532 CONCAT                           R101 R102 R103
      533 GETTABLEKS                       R103 R29 K53 ["APIS_URL"]
      535 LOADK                            R104 K128 ["asset-permissions-api/v1/assets/%s/permissions"]
      536 CONCAT                           R102 R103 R104
      537 GETTABLEKS                       R104 R29 K53 ["APIS_URL"]
      539 LOADK                            R105 K129 ["asset-permissions-api/v1/assets/check-actions"]
      540 CONCAT                           R103 R104 R105
      541 GETTABLEKS                       R105 R29 K53 ["APIS_URL"]
      543 LOADK                            R106 K130 ["asset-permissions-api/v1/assets/check-permissions"]
      544 CONCAT                           R104 R105 R106
      545 GETTABLEKS                       R106 R29 K53 ["APIS_URL"]
      547 LOADK                            R107 K131 ["asset-permissions-api/v1/assets/permissions"]
      548 CONCAT                           R105 R106 R107
      549 GETTABLEKS                       R107 R29 K53 ["APIS_URL"]
      551 LOADK                            R108 K132 ["toolbox-service/v1"]
      552 CONCAT                           R106 R107 R108
      553 GETTABLEKS                       R108 R29 K53 ["APIS_URL"]
      555 LOADK                            R109 K133 ["toolbox-service/v1/%s?"]
      556 CONCAT                           R107 R108 R109
      557 GETTABLEKS                       R109 R29 K53 ["APIS_URL"]
      559 LOADK                            R110 K134 ["toolbox-service/v1/items/details?"]
      560 CONCAT                           R108 R109 R110
      561 GETTABLEKS                       R110 R29 K53 ["APIS_URL"]
      563 LOADK                            R111 K135 ["toolbox-service/v1/creations/group/%d/%s?"]
      564 CONCAT                           R109 R110 R111
      565 GETTABLEKS                       R111 R29 K53 ["APIS_URL"]
      567 LOADK                            R112 K136 ["toolbox-service/v1/creations/user/%d/%s?"]
      568 CONCAT                           R110 R111 R112
      569 MOVE                             R112 R106
      570 LOADK                            R113 K137 ["/voting/vote?"]
      571 CONCAT                           R111 R112 R113
      572 GETTABLEKS                       R113 R29 K51 ["ITEM_CONFIGURATION_URL"]
      574 LOADK                            R114 K138 ["v1/asset-types/%s/agents?"]
      575 CONCAT                           R112 R113 R114
      576 GETTABLEKS                       R114 R29 K53 ["APIS_URL"]
      578 LOADK                            R115 K139 ["autocomplete-studio/v2/suggest?"]
      579 CONCAT                           R113 R114 R115
      580 GETTABLEKS                       R115 R29 K53 ["APIS_URL"]
      582 LOADK                            R116 K140 ["marketplace-publishing-requirements-api/v1/requirements?"]
      583 CONCAT                           R114 R115 R116
      584 JUMPIFNOT                        R8 ; [+5]
      585 GETTABLEKS                       R116 R29 K53 ["APIS_URL"]
      587 LOADK                            R117 K141 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      588 CONCAT                           R115 R116 R117
      589 JUMP                             ; [+1]
      590 LOADNIL                          R115
      591 GETTABLEKS                       R117 R29 K53 ["APIS_URL"]
      593 LOADK                            R118 K142 ["user/cloud/v2/creator-store-products/"]
      594 CONCAT                           R116 R117 R118
      595 MOVE                             R118 R116
      596 LOADK                            R119 K143 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      597 CONCAT                           R117 R118 R119
      598 GETTABLEKS                       R119 R29 K65 ["PUBLISH_URL"]
      600 LOADK                            R120 K144 ["v1/assets/%d/media"]
      601 CONCAT                           R118 R119 R120
      602 GETTABLEKS                       R120 R29 K65 ["PUBLISH_URL"]
      604 LOADK                            R121 K145 ["v1/assets/%d/media/%d"]
      605 CONCAT                           R119 R120 R121
      606 GETTABLEKS                       R121 R29 K65 ["PUBLISH_URL"]
      608 LOADK                            R122 K146 ["v1/assets/%d/media/order"]
      609 CONCAT                           R120 R121 R122
      610 GETTABLEKS                       R122 R29 K65 ["PUBLISH_URL"]
      612 LOADK                            R123 K144 ["v1/assets/%d/media"]
      613 CONCAT                           R121 R122 R123
      614 GETTABLEKS                       R123 R29 K57 ["DEVELOP_URL"]
      616 LOADK                            R124 K147 ["v1/assets/%d/latest-saved-version"]
      617 CONCAT                           R122 R123 R124
      618 GETTABLEKS                       R124 R29 K57 ["DEVELOP_URL"]
      620 LOADK                            R125 K148 ["v1/universes/%d"]
      621 CONCAT                           R123 R124 R125
      622 GETTABLEKS                       R125 R29 K51 ["ITEM_CONFIGURATION_URL"]
      624 LOADK                            R126 K149 ["v1/permissions/groups?"]
      625 CONCAT                           R124 R125 R126
      626 GETTABLEKS                       R126 R29 K53 ["APIS_URL"]
      628 LOADK                            R127 K150 ["asset-permissions-api/v1/assets/access-properties"]
      629 CONCAT                           R125 R126 R127
      630 GETIMPORT                        R126 K15 [require]
      632 GETTABLEKS                       R129 R0 K4 ["Src"]
      634 GETTABLEKS                       R128 R129 K25 ["Flags"]
      636 GETTABLEKS                       R127 R128 K151 ["getFFlagEnableUploadingGroupBundles"]
      638 CALL                             R126 1 1
      639 DUPCLOSURE                       R127 K152 [PROTO_0]
      640 CAPTURE                          VAL R108
      641 CAPTURE                          VAL R29
      642 SETTABLEKS                       R127 R34 K153 ["constructGetItemDetails"]
      644 DUPCLOSURE                       R127 K154 [PROTO_1]
      645 CAPTURE                          VAL R38
      646 CAPTURE                          VAL R29
      647 SETTABLEKS                       R127 R34 K155 ["constructGetAssetsUrl"]
      649 GETTABLEKS                       R127 R22 K156 ["new"]
      651 NEWTABLE                         R128 0 4
      653 GETTABLEKS                       R130 R28 K157 ["MUSIC"]
      655 GETTABLEKS                       R129 R130 K158 ["name"]
      657 GETTABLEKS                       R131 R28 K159 ["SOUND_EFFECTS"]
      659 GETTABLEKS                       R130 R131 K158 ["name"]
      661 GETTABLEKS                       R132 R28 K160 ["UNKNOWN_AUDIO"]
      663 GETTABLEKS                       R131 R132 K158 ["name"]
      665 GETTABLEKS                       R133 R28 K161 ["FREE_FONTS"]
      667 GETTABLEKS                       R132 R133 K158 ["name"]
      669 SETLIST                          R128 R129 4 [1]
      671 CALL                             R127 1 1
      672 DUPCLOSURE                       R128 K162 [PROTO_2]
      673 CAPTURE                          VAL R127
      674 SETTABLEKS                       R128 R34 K163 ["usesMarketplaceRoute"]
      676 DUPCLOSURE                       R128 K164 [PROTO_3]
      677 CAPTURE                          VAL R106
      678 SETTABLEKS                       R128 R34 K165 ["constructCreateSaveUrl"]
      680 DUPCLOSURE                       R128 K166 [PROTO_4]
      681 CAPTURE                          VAL R106
      682 SETTABLEKS                       R128 R34 K167 ["constructDeleteSaveUrl"]
      684 DUPCLOSURE                       R128 K168 [PROTO_5]
      685 CAPTURE                          VAL R106
      686 SETTABLEKS                       R128 R34 K169 ["constructGetSaveUrl"]
      688 DUPCLOSURE                       R128 K170 [PROTO_6]
      689 CAPTURE                          VAL R23
      690 CAPTURE                          VAL R20
      691 CAPTURE                          VAL R24
      692 CAPTURE                          VAL R32
      693 CAPTURE                          VAL R28
      694 CAPTURE                          VAL R106
      695 CAPTURE                          VAL R34
      696 CAPTURE                          VAL R29
      697 CAPTURE                          VAL R7
      698 SETTABLEKS                       R128 R34 K171 ["constructGetToolboxItemsUrl"]
      700 DUPCLOSURE                       R128 K172 [PROTO_7]
      701 CAPTURE                          VAL R39
      702 CAPTURE                          VAL R29
      703 SETTABLEKS                       R128 R34 K173 ["getDevelopAssetUrl"]
      705 MOVE                             R128 R15
      706 CALL                             R128 0 1
      707 JUMPIFNOT                        R128 ; [+4]
      708 DUPCLOSURE                       R128 K174 [PROTO_8]
      709 CAPTURE                          VAL R37
      710 SETTABLEKS                       R128 R34 K175 ["constructGetAssetByIdUrl"]
      712 DUPCLOSURE                       R128 K176 [PROTO_9]
      713 CAPTURE                          VAL R36
      714 CAPTURE                          VAL R29
      715 SETTABLEKS                       R128 R34 K177 ["constructGetAllowedItemTypesUrl"]
      717 DUPCLOSURE                       R128 K178 [PROTO_10]
      718 CAPTURE                          VAL R109
      719 CAPTURE                          VAL R29
      720 SETTABLEKS                       R128 R34 K179 ["constructGetAssetGroupCreationsUrl"]
      722 DUPCLOSURE                       R128 K180 [PROTO_11]
      723 CAPTURE                          VAL R110
      724 CAPTURE                          VAL R29
      725 SETTABLEKS                       R128 R34 K181 ["constructGetAssetCreationsUrlToolboxService"]
      727 MOVE                             R128 R17
      728 CALL                             R128 0 1
      729 JUMPIF                           R128 ; [+4]
      730 DUPCLOSURE                       R128 K182 [PROTO_12]
      731 CAPTURE                          VAL R41
      732 SETTABLEKS                       R128 R34 K183 ["constructGetAssetCreationDetailsUrl"]
      734 DUPCLOSURE                       R128 K184 [PROTO_13]
      735 CAPTURE                          VAL R43
      736 CAPTURE                          VAL R42
      737 SETTABLEKS                       R128 R34 K185 ["constructGetCreatorInfoUrl"]
      739 DUPCLOSURE                       R128 K186 [PROTO_14]
      740 CAPTURE                          VAL R54
      741 SETTABLEKS                       R128 R34 K187 ["constructGetBundleMetadataUrl"]
      743 DUPCLOSURE                       R128 K188 [PROTO_15]
      744 CAPTURE                          VAL R55
      745 SETTABLEKS                       R128 R34 K189 ["constructPostBundleCreationContextUrl"]
      747 DUPCLOSURE                       R128 K190 [PROTO_16]
      748 CAPTURE                          VAL R56
      749 SETTABLEKS                       R128 R34 K191 ["constructPostCreateBundleUrl"]
      751 DUPCLOSURE                       R128 K192 [PROTO_17]
      752 CAPTURE                          VAL R57
      753 SETTABLEKS                       R128 R34 K193 ["constructGetBundleCreationStatusUrl"]
      755 DUPCLOSURE                       R128 K194 [PROTO_18]
      756 CAPTURE                          VAL R58
      757 SETTABLEKS                       R128 R34 K195 ["constructGetDefaultCreateBundleDataSharingUrl"]
      759 DUPCLOSURE                       R128 K196 [PROTO_19]
      760 CAPTURE                          VAL R59
      761 SETTABLEKS                       R128 R34 K197 ["constructPostCreateBundleDataSharingUrl"]
      763 DUPCLOSURE                       R128 K198 [PROTO_20]
      764 CAPTURE                          VAL R60
      765 SETTABLEKS                       R128 R34 K199 ["constructPostCreateAvatarAssetDataSharingUrl"]
      767 MOVE                             R128 R6
      768 CALL                             R128 0 1
      769 JUMPIFNOT                        R128 ; [+5]
      770 DUPCLOSURE                       R128 K200 [PROTO_21]
      771 CAPTURE                          VAL R50
      772 CAPTURE                          VAL R29
      773 SETTABLEKS                       R128 R34 K201 ["constructUploadPermissionStatusUrl"]
      775 MOVE                             R128 R17
      776 CALL                             R128 0 1
      777 JUMPIFNOT                        R128 ; [+5]
      778 DUPCLOSURE                       R128 K202 [PROTO_22]
      779 CAPTURE                          VAL R52
      780 CAPTURE                          VAL R29
      781 SETTABLEKS                       R128 R34 K203 ["constructGetItemConfigurationDetailsUrl"]
      783 DUPCLOSURE                       R128 K204 [PROTO_23]
      784 CAPTURE                          VAL R51
      785 CAPTURE                          VAL R29
      786 SETTABLEKS                       R128 R34 K205 ["constructGetItemsByCreatorUrl"]
      788 DUPCLOSURE                       R128 K206 [PROTO_24]
      789 CAPTURE                          VAL R53
      790 CAPTURE                          VAL R29
      791 SETTABLEKS                       R128 R34 K207 ["constructGetItemUploadFeeUrl"]
      793 DUPCLOSURE                       R128 K208 [PROTO_25]
      794 CAPTURE                          VAL R44
      795 SETTABLEKS                       R128 R34 K209 ["constructUploadCatalogItemUrl"]
      797 DUPCLOSURE                       R128 K210 [PROTO_26]
      798 CAPTURE                          VAL R45
      799 SETTABLEKS                       R128 R34 K211 ["constructUploadAssetThumbnailUrl"]
      801 DUPCLOSURE                       R128 K212 [PROTO_27]
      802 CAPTURE                          VAL R49
      803 CAPTURE                          VAL R29
      804 SETTABLEKS                       R128 R34 K213 ["contuctGetThumbnailStatusUrl"]
      806 DUPCLOSURE                       R128 K214 [PROTO_28]
      807 CAPTURE                          VAL R47
      808 SETTABLEKS                       R128 R34 K215 ["constructConfigureSalesUrl"]
      810 DUPCLOSURE                       R128 K216 [PROTO_29]
      811 CAPTURE                          VAL R48
      812 SETTABLEKS                       R128 R34 K217 ["constructUpdateSalesUrl"]
      814 DUPCLOSURE                       R128 K218 [PROTO_30]
      815 CAPTURE                          VAL R46
      816 SETTABLEKS                       R128 R34 K219 ["constructConfigureCatalogItemUrl"]
      818 DUPCLOSURE                       R128 K220 [PROTO_31]
      819 CAPTURE                          VAL R111
      820 CAPTURE                          VAL R29
      821 SETTABLEKS                       R128 R34 K221 ["constructGetVoteUrl"]
      823 DUPCLOSURE                       R128 K222 [PROTO_32]
      824 CAPTURE                          VAL R62
      825 SETTABLEKS                       R128 R34 K223 ["constructPostVoteUrl"]
      827 DUPCLOSURE                       R128 K224 [PROTO_33]
      828 CAPTURE                          VAL R63
      829 SETTABLEKS                       R128 R34 K225 ["constructPostUnvoteUrl"]
      831 DUPCLOSURE                       R128 K226 [PROTO_34]
      832 CAPTURE                          VAL R106
      833 SETTABLEKS                       R128 R34 K227 ["constructInsertAssetUrl"]
      835 DUPCLOSURE                       R128 K228 [PROTO_35]
      836 CAPTURE                          VAL R67
      837 CAPTURE                          VAL R29
      838 SETTABLEKS                       R128 R34 K229 ["constructGetPluginInfoUrl"]
      840 DUPCLOSURE                       R128 K230 [PROTO_36]
      841 CAPTURE                          VAL R16
      842 CAPTURE                          VAL R66
      843 CAPTURE                          VAL R65
      844 SETTABLEKS                       R128 R34 K231 ["constructGetManageableGroupsUrl"]
      846 DUPCLOSURE                       R128 K232 [PROTO_37]
      847 CAPTURE                          VAL R29
      848 SETTABLEKS                       R128 R34 K233 ["constructGetGroupsForSurfaceUrl"]
      850 DUPCLOSURE                       R128 K234 [PROTO_38]
      851 CAPTURE                          VAL R29
      852 SETTABLEKS                       R128 R34 K235 ["constructAssetIdUserContextString"]
      854 DUPCLOSURE                       R128 K236 [PROTO_39]
      855 CAPTURE                          VAL R9
      856 SETTABLEKS                       R128 R34 K237 ["constructAssetIdString"]
      858 DUPCLOSURE                       R128 K238 [PROTO_40]
      859 CAPTURE                          VAL R68
      860 CAPTURE                          VAL R29
      861 SETTABLEKS                       R128 R34 K239 ["constructAssetIdUrl"]
      863 DUPCLOSURE                       R128 K240 [PROTO_41]
      864 CAPTURE                          VAL R73
      865 SETTABLEKS                       R128 R34 K241 ["constructAssetSavedVersionString"]
      867 DUPCLOSURE                       R128 K242 [PROTO_42]
      868 CAPTURE                          VAL R78
      869 SETTABLEKS                       R128 R34 K243 ["constructGetPackageVersionDescriptionString"]
      871 DUPCLOSURE                       R128 K244 [PROTO_43]
      872 CAPTURE                          VAL R79
      873 SETTABLEKS                       R128 R34 K245 ["constructSetPackageVersionDescriptionString"]
      875 DUPCLOSURE                       R128 K246 [PROTO_44]
      876 CAPTURE                          VAL R76
      877 CAPTURE                          VAL R29
      878 SETTABLEKS                       R128 R34 K247 ["constructRevertAssetVersionString"]
      880 DUPCLOSURE                       R128 K248 [PROTO_45]
      881 CAPTURE                          VAL R77
      882 CAPTURE                          VAL R29
      883 SETTABLEKS                       R128 R34 K249 ["constructGetDevelopAssetMetadata"]
      885 DUPCLOSURE                       R128 K250 [PROTO_46]
      886 CAPTURE                          VAL R69
      887 CAPTURE                          VAL R29
      888 SETTABLEKS                       R128 R34 K251 ["constructAssetGameAssetIdUrl"]
      890 DUPCLOSURE                       R128 K252 [PROTO_47]
      891 CAPTURE                          VAL R13
      892 SETTABLEKS                       R128 R34 K253 ["constructAssetThumbnailUrl"]
      894 DUPCLOSURE                       R128 K254 [PROTO_48]
      895 SETTABLEKS                       R128 R34 K255 ["constructRBXThumbUrl"]
      897 DUPCLOSURE                       R128 K256 [PROTO_49]
      898 CAPTURE                          VAL R29
      899 CAPTURE                          VAL R2
      900 SETTABLEKS                       R128 R34 K257 ["constructUserSearchUrl"]
      902 DUPCLOSURE                       R128 K258 [PROTO_50]
      903 CAPTURE                          VAL R71
      904 CAPTURE                          VAL R29
      905 SETTABLEKS                       R128 R34 K259 ["constructUserThumbnailUrl"]
      907 DUPCLOSURE                       R128 K260 [PROTO_51]
      908 CAPTURE                          VAL R72
      909 SETTABLEKS                       R128 R34 K261 ["constructFavoriteCountsUrl"]
      911 DUPCLOSURE                       R128 K262 [PROTO_52]
      912 CAPTURE                          VAL R72
      913 SETTABLEKS                       R128 R34 K263 ["constructGetFavoritedUrl"]
      915 DUPCLOSURE                       R128 K264 [PROTO_53]
      916 CAPTURE                          VAL R72
      917 SETTABLEKS                       R128 R34 K265 ["constructPostFavoriteUrl"]
      919 DUPCLOSURE                       R128 K266 [PROTO_54]
      920 CAPTURE                          VAL R72
      921 SETTABLEKS                       R128 R34 K267 ["constructDeleteFavoriteUrl"]
      923 DUPCLOSURE                       R128 K268 [PROTO_55]
      924 CAPTURE                          VAL R84
      925 SETTABLEKS                       R128 R34 K269 ["constructPatchAssetUrl"]
      927 DUPCLOSURE                       R128 K270 [PROTO_56]
      928 CAPTURE                          VAL R80
      929 SETTABLEKS                       R128 R34 K271 ["constructOperationUrl"]
      931 DUPCLOSURE                       R128 K272 [PROTO_57]
      932 CAPTURE                          VAL R81
      933 SETTABLEKS                       R128 R34 K273 ["constructPostUploadAnimationUrl"]
      935 DUPCLOSURE                       R128 K274 [PROTO_58]
      936 CAPTURE                          VAL R83
      937 SETTABLEKS                       R128 R34 K275 ["constructValidateAnimationUrl"]
      939 DUPCLOSURE                       R128 K276 [PROTO_59]
      940 CAPTURE                          VAL R82
      941 SETTABLEKS                       R128 R34 K277 ["constructPostOverwriteAnimationUrl"]
      943 DUPCLOSURE                       R128 K278 [PROTO_60]
      944 CAPTURE                          VAL R86
      945 SETTABLEKS                       R128 R34 K279 ["constructGetMyGroupUrl"]
      947 DUPCLOSURE                       R128 K280 [PROTO_61]
      948 CAPTURE                          VAL R87
      949 SETTABLEKS                       R128 R34 K281 ["constructIsVerifiedCreatorUrl"]
      951 DUPCLOSURE                       R128 K282 [PROTO_62]
      952 CAPTURE                          VAL R89
      953 SETTABLEKS                       R128 R34 K283 ["constructGetUserFriendsUrl"]
      955 DUPCLOSURE                       R128 K284 [PROTO_63]
      956 CAPTURE                          VAL R102
      957 SETTABLEKS                       R128 R34 K285 ["constructAssetPermissionsUrl"]
      959 DUPCLOSURE                       R128 K286 [PROTO_64]
      960 CAPTURE                          VAL R105
      961 SETTABLEKS                       R128 R34 K287 ["constructAssetBatchGrantPermissionsUrl"]
      963 DUPCLOSURE                       R128 K288 [PROTO_65]
      964 CAPTURE                          VAL R103
      965 SETTABLEKS                       R128 R34 K289 ["constructAssetCheckPermissionsUrl"]
      967 DUPCLOSURE                       R128 K290 [PROTO_66]
      968 CAPTURE                          VAL R90
      969 SETTABLEKS                       R128 R34 K291 ["getRobuxPurchaseUrl"]
      971 DUPCLOSURE                       R128 K292 [PROTO_67]
      972 CAPTURE                          VAL R101
      973 SETTABLEKS                       R128 R34 K293 ["constructPostPackageMetadata"]
      975 DUPCLOSURE                       R128 K294 [PROTO_68]
      976 CAPTURE                          VAL R91
      977 SETTABLEKS                       R128 R34 K295 ["constructGetRobuxBalanceUrl"]
      979 DUPCLOSURE                       R128 K296 [PROTO_69]
      980 CAPTURE                          VAL R88
      981 SETTABLEKS                       R128 R34 K297 ["constructGetGroupRoleInfoUrl"]
      983 DUPCLOSURE                       R128 K298 [PROTO_70]
      984 CAPTURE                          VAL R104
      985 SETTABLEKS                       R128 R34 K299 ["constructAssetCheckPermissionsBatchUrl"]
      987 DUPCLOSURE                       R128 K300 [PROTO_71]
      988 CAPTURE                          VAL R10
      989 CAPTURE                          VAL R95
      990 CAPTURE                          VAL R94
      991 CAPTURE                          VAL R93
      992 SETTABLEKS                       R128 R34 K301 ["constructAssetPurchaseUrl"]
      994 DUPCLOSURE                       R128 K302 [PROTO_72]
      995 CAPTURE                          VAL R96
      996 SETTABLEKS                       R128 R34 K303 ["constructPurchaserStatusUrl"]
      998 MOVE                             R128 R11
      999 CALL                             R128 0 1
     1000 JUMPIFNOT                        R128 ; [+4]
     1001 DUPCLOSURE                       R128 K304 [PROTO_73]
     1002 CAPTURE                          VAL R97
     1003 SETTABLEKS                       R128 R34 K305 ["constructSellerStatusUrl"]
     1005 DUPCLOSURE                       R128 K306 [PROTO_74]
     1006 CAPTURE                          VAL R85
     1007 CAPTURE                          VAL R29
     1008 SETTABLEKS                       R128 R34 K307 ["constructUploadCatalogItemFormatUrl"]
     1010 DUPCLOSURE                       R128 K308 [PROTO_75]
     1011 CAPTURE                          VAL R112
     1012 CAPTURE                          VAL R29
     1013 SETTABLEKS                       R128 R34 K309 ["constructAssetTypeAgentsUrl"]
     1015 DUPCLOSURE                       R128 K310 [PROTO_76]
     1016 CAPTURE                          VAL R113
     1017 CAPTURE                          VAL R29
     1018 SETTABLEKS                       R128 R34 K311 ["constructToolboxAutocompleteUrl"]
     1020 DUPCLOSURE                       R128 K312 [PROTO_77]
     1021 CAPTURE                          VAL R106
     1022 CAPTURE                          VAL R29
     1023 CAPTURE                          VAL R32
     1024 SETTABLEKS                       R128 R34 K313 ["constructGetHomeConfigurationUrl"]
     1026 DUPCLOSURE                       R128 K314 [PROTO_78]
     1027 CAPTURE                          VAL R114
     1028 CAPTURE                          VAL R29
     1029 SETTABLEKS                       R128 R34 K315 ["constructPublishingRequirementsUrl"]
     1031 DUPCLOSURE                       R128 K316 [PROTO_79]
     1032 CAPTURE                          VAL R29
     1033 SETTABLEKS                       R128 R34 K317 ["getCreatorMarketplaceQuotas"]
     1035 DUPCLOSURE                       R128 K318 [PROTO_80]
     1036 CAPTURE                          VAL R118
     1037 SETTABLEKS                       R128 R34 K319 ["constructGetAssetMediaIdsUrl"]
     1039 DUPCLOSURE                       R128 K320 [PROTO_81]
     1040 CAPTURE                          VAL R119
     1041 SETTABLEKS                       R128 R34 K321 ["constructDeleteAssetMediaUrl"]
     1043 DUPCLOSURE                       R128 K322 [PROTO_82]
     1044 CAPTURE                          VAL R120
     1045 SETTABLEKS                       R128 R34 K323 ["constructPostSetAssetMediaOrder"]
     1047 DUPCLOSURE                       R128 K324 [PROTO_83]
     1048 CAPTURE                          VAL R121
     1049 SETTABLEKS                       R128 R34 K325 ["constructPostUploadAssetMedia"]
     1051 JUMPIFNOT                        R3 ; [+4]
     1052 DUPCLOSURE                       R128 K326 [PROTO_84]
     1053 CAPTURE                          VAL R30
     1054 SETTABLEKS                       R128 R34 K327 ["constructCreatorDashboardAssetConfigUrl"]
     1056 JUMPIFNOT                        R5 ; [+6]
     1057 DUPCLOSURE                       R128 K328 [PROTO_85]
     1058 CAPTURE                          VAL R30
     1059 CAPTURE                          VAL R98
     1060 SETTABLEKS                       R128 R34 K329 ["constructCreatorDashboardConfigAvatarAssetUrl"]
     1062 JUMP                             ; [+5]
     1063 DUPCLOSURE                       R128 K330 [PROTO_86]
     1064 CAPTURE                          VAL R30
     1065 CAPTURE                          VAL R98
     1066 SETTABLEKS                       R128 R34 K331 ["constructCreatorDashboardAvatarAssetUrl"]
     1068 MOVE                             R128 R12
     1069 CALL                             R128 0 1
     1070 JUMPIFNOT                        R128 ; [+5]
     1071 DUPCLOSURE                       R128 K332 [PROTO_87]
     1072 CAPTURE                          VAL R30
     1073 CAPTURE                          VAL R100
     1074 SETTABLEKS                       R128 R34 K333 ["constructCreatorDashboardCreationsPageUrl"]
     1076 JUMPIFNOT                        R4 ; [+5]
     1077 DUPCLOSURE                       R128 K334 [PROTO_88]
     1078 CAPTURE                          VAL R30
     1079 CAPTURE                          VAL R99
     1080 SETTABLEKS                       R128 R34 K335 ["constructCreatorDashboardBundleConfigureUrl"]
     1082 DUPCLOSURE                       R128 K336 [PROTO_89]
     1083 CAPTURE                          VAL R30
     1084 SETTABLEKS                       R128 R34 K337 ["constructCreatorStoreConfigurationUrl"]
     1086 DUPCLOSURE                       R128 K338 [PROTO_90]
     1087 CAPTURE                          VAL R123
     1088 SETTABLEKS                       R128 R34 K339 ["constructGetUniverseInfo"]
     1090 MOVE                             R128 R8
     1091 CALL                             R128 0 1
     1092 JUMPIFNOT                        R128 ; [+4]
     1093 DUPCLOSURE                       R128 K340 [PROTO_91]
     1094 CAPTURE                          VAL R115
     1095 SETTABLEKS                       R128 R34 K341 ["constructCodeUnderstandingSummaryUrl"]
     1097 DUPCLOSURE                       R128 K342 [PROTO_92]
     1098 CAPTURE                          VAL R117
     1099 CAPTURE                          VAL R31
     1100 SETTABLEKS                       R128 R34 K343 ["constructGetFiatProductUrl"]
     1102 MOVE                             R128 R126
     1103 CALL                             R128 0 1
     1104 JUMPIFNOT                        R128 ; [+5]
     1105 DUPCLOSURE                       R128 K344 [PROTO_93]
     1106 CAPTURE                          VAL R124
     1107 CAPTURE                          VAL R29
     1108 SETTABLEKS                       R128 R34 K345 ["constructAllowedGroupsForActionUrl"]
     1110 DUPCLOSURE                       R128 K346 [PROTO_94]
     1111 CAPTURE                          VAL R35
     1112 SETTABLEKS                       R128 R34 K347 ["constructCreatorStoreUrl"]
     1114 MOVE                             R128 R14
     1115 CALL                             R128 0 1
     1116 JUMPIFNOT                        R128 ; [+4]
     1117 DUPCLOSURE                       R128 K348 [PROTO_95]
     1118 CAPTURE                          VAL R125
     1119 SETTABLEKS                       R128 R34 K349 ["constructBatchAssetAccessPropertiesUrl"]
     1121 MOVE                             R128 R33
     1122 MOVE                             R129 R34
     1123 CALL                             R128 1 1
     1124 RETURN                           R128 1
