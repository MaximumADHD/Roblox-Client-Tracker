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

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"itemType", "itemId"}]
        5 SETTABLEKS                       R0 R5 K1 ["itemType"]
        7 SETTABLEKS                       R1 R5 K2 ["itemId"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

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
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K6 ["makeQueryString"]
       17 MOVE                             R9 R5
       18 CALL                             R8 1 1
       19 CONCAT                           R6 R7 R8
       20 RETURN                           R6 1

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_26:
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
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"assetId", "assetType"}]
        5 SETTABLEKS                       R0 R5 K1 ["assetId"]
        7 SETTABLEKS                       R1 R5 K2 ["assetType"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_31:
        0 GETIMPORT                        R2 K2 [string.format]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R5 K3 ["true"]
        6 JUMP                             ; [+1]
        7 LOADK                            R5 K4 ["false"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_32:
        0 GETIMPORT                        R1 K2 [string.format]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_33:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%s/insert/asset/%d"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"pluginIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["pluginIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 2
        6 RETURN                           R0 1

PROTO_36:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["https://apis.%screator-home-api/v1/groups?surface=%s"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K4 ["DOMAIN"]
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R2 R4 K0 ["ASSET_DELIVERY_URL"]
        3 LOADK                            R3 K1 ["v1/asset/?id=%d&permissionContext=ignoreUniverse"]
        4 CONCAT                           R1 R2 R3
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R1 K2 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"id"}]
        5 SETTABLEKS                       R0 R4 K1 ["id"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_40:
        0 ORK                              R1 R1 K0 [50]
        1 ORK                              R2 R2 K1 [""]
        2 GETUPVAL                         R3 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 4 -1
        9 RETURN                           R3 -1

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
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["makeQueryString"]
        9 DUPTABLE                         R5 K3 [{"assetVersionNumber"}]
       10 SETTABLEKS                       R1 R5 K2 ["assetVersionNumber"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_45:
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

PROTO_49:
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

PROTO_71:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_72:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_84:
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

PROTO_85:
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

PROTO_86:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getCreatorDashboardBaseUrl"]
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

PROTO_88:
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
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
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
       96 GETTABLEKS                       R13 R14 K23 ["getFFlagToolboxCreatorContextThumbnail"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K15 [require]
      101 GETTABLEKS                       R16 R0 K4 ["Src"]
      103 GETTABLEKS                       R15 R16 K24 ["Flags"]
      105 GETTABLEKS                       R14 R15 K25 ["getFFlagCheckAvatarAssetPrivacy"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K15 [require]
      110 GETTABLEKS                       R18 R0 K4 ["Src"]
      112 GETTABLEKS                       R17 R18 K5 ["Util"]
      114 GETTABLEKS                       R16 R17 K16 ["SharedFlags"]
      116 GETTABLEKS                       R15 R16 K26 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
      118 CALL                             R14 1 1
      119 GETTABLEKS                       R15 R0 K27 ["Packages"]
      121 GETIMPORT                        R16 K15 [require]
      123 GETTABLEKS                       R17 R15 K28 ["Framework"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K15 [require]
      128 GETTABLEKS                       R18 R15 K29 ["Dash"]
      130 CALL                             R17 1 1
      131 GETIMPORT                        R18 K15 [require]
      133 GETTABLEKS                       R19 R15 K30 ["LuauPolyfill"]
      135 CALL                             R18 1 1
      136 GETTABLEKS                       R19 R18 K31 ["Set"]
      138 GETTABLEKS                       R20 R18 K32 ["Object"]
      140 GETTABLEKS                       R21 R18 K33 ["Array"]
      142 GETIMPORT                        R22 K15 [require]
      144 GETTABLEKS                       R25 R0 K4 ["Src"]
      146 GETTABLEKS                       R24 R25 K34 ["Types"]
      148 GETTABLEKS                       R23 R24 K35 ["AssetQuotaTypes"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K15 [require]
      153 GETTABLEKS                       R26 R0 K4 ["Src"]
      155 GETTABLEKS                       R25 R26 K34 ["Types"]
      157 GETTABLEKS                       R24 R25 K36 ["AssetSubTypes"]
      159 CALL                             R23 1 1
      160 GETIMPORT                        R24 K15 [require]
      162 GETTABLEKS                       R27 R0 K4 ["Src"]
      164 GETTABLEKS                       R26 R27 K34 ["Types"]
      166 GETTABLEKS                       R25 R26 K37 ["HomeTypes"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K15 [require]
      171 GETTABLEKS                       R28 R0 K4 ["Src"]
      173 GETTABLEKS                       R27 R28 K34 ["Types"]
      175 GETTABLEKS                       R26 R27 K38 ["Category"]
      177 CALL                             R25 1 1
      178 GETIMPORT                        R26 K15 [require]
      180 GETTABLEKS                       R29 R0 K39 ["Libs"]
      182 GETTABLEKS                       R28 R29 K40 ["Http"]
      184 GETTABLEKS                       R27 R28 K41 ["Url"]
      186 CALL                             R26 1 1
      187 GETIMPORT                        R27 K15 [require]
      189 GETTABLEKS                       R30 R0 K4 ["Src"]
      191 GETTABLEKS                       R29 R30 K5 ["Util"]
      193 GETTABLEKS                       R28 R29 K42 ["ToolboxUtilities"]
      195 CALL                             R27 1 1
      196 GETIMPORT                        R28 K15 [require]
      198 GETTABLEKS                       R29 R1 K43 ["FiatUtil"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K15 [require]
      203 GETTABLEKS                       R30 R1 K44 ["getPlaceId"]
      205 CALL                             R29 1 1
      206 GETIMPORT                        R30 K15 [require]
      208 GETTABLEKS                       R31 R1 K45 ["wrapStrictTable"]
      210 CALL                             R30 1 1
      211 NEWTABLE                         R31 128 0
      213 GETTABLEKS                       R33 R26 K46 ["CREATE_URL"]
      215 LOADK                            R34 K47 ["store/"]
      216 CONCAT                           R32 R33 R34
      217 GETTABLEKS                       R34 R26 K48 ["ITEM_CONFIGURATION_URL"]
      219 LOADK                            R35 K49 ["v1/permissions/item-types?"]
      220 CONCAT                           R33 R34 R35
      221 GETTABLEKS                       R35 R26 K50 ["APIS_URL"]
      223 LOADK                            R36 K51 ["assets/user-auth/v1/assets/%d"]
      224 CONCAT                           R34 R35 R36
      225 GETTABLEKS                       R36 R26 K52 ["BASE_URL"]
      227 LOADK                            R37 K53 ["IDE/Toolbox/Items?"]
      228 CONCAT                           R35 R36 R37
      229 GETTABLEKS                       R37 R26 K54 ["DEVELOP_URL"]
      231 LOADK                            R38 K55 ["v1/toolbox/items?"]
      232 CONCAT                           R36 R37 R38
      233 GETTABLEKS                       R38 R26 K48 ["ITEM_CONFIGURATION_URL"]
      235 LOADK                            R39 K56 ["v1/creations/get-assets?"]
      236 CONCAT                           R37 R38 R39
      237 GETTABLEKS                       R39 R26 K57 ["USERS_URL"]
      239 LOADK                            R40 K58 ["/v1/users/%d"]
      240 CONCAT                           R38 R39 R40
      241 GETTABLEKS                       R40 R26 K59 ["GROUP_URL"]
      243 LOADK                            R41 K60 ["v0/groups/%d"]
      244 CONCAT                           R39 R40 R41
      245 GETTABLEKS                       R41 R26 K61 ["PUBLISH_URL"]
      247 LOADK                            R42 K62 ["v1/assets/upload"]
      248 CONCAT                           R40 R41 R42
      249 GETTABLEKS                       R42 R26 K61 ["PUBLISH_URL"]
      251 LOADK                            R43 K63 ["v1/assets/%d/thumbnail"]
      252 CONCAT                           R41 R42 R43
      253 GETTABLEKS                       R43 R26 K54 ["DEVELOP_URL"]
      255 LOADK                            R44 K64 ["v1/assets/%d"]
      256 CONCAT                           R42 R43 R44
      257 GETTABLEKS                       R44 R26 K48 ["ITEM_CONFIGURATION_URL"]
      259 LOADK                            R45 K65 ["v1/assets/%d/release"]
      260 CONCAT                           R43 R44 R45
      261 GETTABLEKS                       R45 R26 K48 ["ITEM_CONFIGURATION_URL"]
      263 LOADK                            R46 K66 ["v1/assets/%d/update-price"]
      264 CONCAT                           R44 R45 R46
      265 GETTABLEKS                       R46 R26 K67 ["THUMBNAIL_URL"]
      267 LOADK                            R47 K68 ["v1/assets?"]
      268 CONCAT                           R45 R46 R47
      269 MOVE                             R47 R6
      270 CALL                             R47 0 1
      271 JUMPIFNOT                        R47 ; [+5]
      272 GETTABLEKS                       R47 R26 K48 ["ITEM_CONFIGURATION_URL"]
      274 LOADK                            R48 K69 ["v1/collectibles/check-item-upload-access?"]
      275 CONCAT                           R46 R47 R48
      276 JUMP                             ; [+1]
      277 LOADNIL                          R46
      278 GETTABLEKS                       R48 R26 K48 ["ITEM_CONFIGURATION_URL"]
      280 LOADK                            R49 K70 ["v1/items/by-creator?"]
      281 CONCAT                           R47 R48 R49
      282 GETTABLEKS                       R49 R26 K48 ["ITEM_CONFIGURATION_URL"]
      284 LOADK                            R50 K71 ["v1/items?"]
      285 CONCAT                           R48 R49 R50
      286 GETTABLEKS                       R50 R26 K48 ["ITEM_CONFIGURATION_URL"]
      288 LOADK                            R51 K72 ["v1/items/upload-fee?"]
      289 CONCAT                           R49 R50 R51
      290 GETTABLEKS                       R51 R26 K48 ["ITEM_CONFIGURATION_URL"]
      292 LOADK                            R52 K73 ["v1/bundles/metadata"]
      293 CONCAT                           R50 R51 R52
      294 GETTABLEKS                       R52 R26 K48 ["ITEM_CONFIGURATION_URL"]
      296 LOADK                            R53 K74 ["v1/bundles/create-context"]
      297 CONCAT                           R51 R52 R53
      298 GETTABLEKS                       R53 R26 K48 ["ITEM_CONFIGURATION_URL"]
      300 LOADK                            R54 K75 ["v1/bundles"]
      301 CONCAT                           R52 R53 R54
      302 GETTABLEKS                       R54 R26 K48 ["ITEM_CONFIGURATION_URL"]
      304 LOADK                            R55 K76 ["v1/bundles/status"]
      305 CONCAT                           R53 R54 R55
      306 GETTABLEKS                       R55 R26 K50 ["APIS_URL"]
      308 LOADK                            R56 K77 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      309 CONCAT                           R54 R55 R56
      310 GETTABLEKS                       R56 R26 K50 ["APIS_URL"]
      312 LOADK                            R57 K78 ["resource-settings/v1/bundles"]
      313 CONCAT                           R55 R56 R57
      314 GETTABLEKS                       R57 R26 K50 ["APIS_URL"]
      316 LOADK                            R58 K79 ["resource-settings/v1/avatar-assets"]
      317 CONCAT                           R56 R57 R58
      318 GETTABLEKS                       R58 R26 K52 ["BASE_URL"]
      320 LOADK                            R59 K80 ["voting/vote?assetId=%s&vote=%s"]
      321 CONCAT                           R57 R58 R59
      322 GETTABLEKS                       R59 R26 K50 ["APIS_URL"]
      324 LOADK                            R60 K81 ["voting-api/vote/asset/%s?vote=%s"]
      325 CONCAT                           R58 R59 R60
      326 GETTABLEKS                       R60 R26 K50 ["APIS_URL"]
      328 LOADK                            R61 K82 ["voting-api/vote/asset/%s"]
      329 CONCAT                           R59 R60 R61
      330 GETTABLEKS                       R61 R26 K52 ["BASE_URL"]
      332 LOADK                            R62 K83 ["IDE/Toolbox/InsertAsset?"]
      333 CONCAT                           R60 R61 R62
      334 GETTABLEKS                       R62 R26 K54 ["DEVELOP_URL"]
      336 LOADK                            R63 K84 ["v1/user/groups/canmanage"]
      337 CONCAT                           R61 R62 R63
      338 GETTABLEKS                       R63 R26 K50 ["APIS_URL"]
      340 LOADK                            R64 K85 ["orgs/v2/groups/permissions/createassets"]
      341 CONCAT                           R62 R63 R64
      342 GETTABLEKS                       R64 R26 K50 ["APIS_URL"]
      344 LOADK                            R65 K86 ["studio-plugin-api/v1/plugins?"]
      345 CONCAT                           R63 R64 R65
      346 GETTABLEKS                       R65 R26 K52 ["BASE_URL"]
      348 LOADK                            R66 K87 ["asset/?"]
      349 CONCAT                           R64 R65 R66
      350 GETTABLEKS                       R66 R26 K88 ["GAME_ASSET_URL"]
      352 LOADK                            R67 K87 ["asset/?"]
      353 CONCAT                           R65 R66 R67
      354 GETTABLEKS                       R67 R26 K88 ["GAME_ASSET_URL"]
      356 LOADK                            R68 K89 ["asset-thumbnail/image?"]
      357 CONCAT                           R66 R67 R68
      358 GETTABLEKS                       R68 R26 K52 ["BASE_URL"]
      360 LOADK                            R69 K90 ["headshot-thumbnail/image?"]
      361 CONCAT                           R67 R68 R69
      362 GETTABLEKS                       R69 R26 K91 ["CATALOG_URL"]
      364 LOADK                            R70 K92 ["v1%s"]
      365 CONCAT                           R68 R69 R70
      366 GETTABLEKS                       R70 R26 K54 ["DEVELOP_URL"]
      368 LOADK                            R71 K93 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      369 CONCAT                           R69 R70 R71
      370 GETTABLEKS                       R71 R26 K54 ["DEVELOP_URL"]
      372 LOADK                            R72 K94 ["v1/assets/%s/saved-versions?limit=%s"]
      373 CONCAT                           R70 R71 R72
      374 GETTABLEKS                       R72 R26 K54 ["DEVELOP_URL"]
      376 LOADK                            R73 K95 ["v1/assets/%s/saved-versions?cursor=%s"]
      377 CONCAT                           R71 R72 R73
      378 GETTABLEKS                       R73 R26 K54 ["DEVELOP_URL"]
      380 LOADK                            R74 K96 ["v1/assets/%s/revert-version?"]
      381 CONCAT                           R72 R73 R74
      382 GETTABLEKS                       R74 R26 K54 ["DEVELOP_URL"]
      384 LOADK                            R75 K68 ["v1/assets?"]
      385 CONCAT                           R73 R74 R75
      386 GETTABLEKS                       R75 R26 K50 ["APIS_URL"]
      388 LOADK                            R76 K97 ["packages-api/v1/packages/assets/versions/notes/get"]
      389 CONCAT                           R74 R75 R76
      390 GETTABLEKS                       R76 R26 K50 ["APIS_URL"]
      392 LOADK                            R77 K98 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      393 CONCAT                           R75 R76 R77
      394 GETTABLEKS                       R77 R26 K50 ["APIS_URL"]
      396 LOADK                            R78 K99 ["assets/user-auth/v1/operations/%s"]
      397 CONCAT                           R76 R77 R78
      398 GETTABLEKS                       R78 R26 K50 ["APIS_URL"]
      400 LOADK                            R79 K100 ["assets/user-auth/v1/assets"]
      401 CONCAT                           R77 R78 R79
      402 GETTABLEKS                       R79 R26 K50 ["APIS_URL"]
      404 LOADK                            R80 K101 ["assets/user-auth/v1/assets/%s"]
      405 CONCAT                           R78 R79 R80
      406 GETTABLEKS                       R80 R26 K50 ["APIS_URL"]
      408 LOADK                            R81 K101 ["assets/user-auth/v1/assets/%s"]
      409 CONCAT                           R79 R80 R81
      410 GETTABLEKS                       R81 R26 K54 ["DEVELOP_URL"]
      412 LOADK                            R82 K102 ["v1/assets/%s?"]
      413 CONCAT                           R80 R81 R82
      414 GETTABLEKS                       R82 R26 K103 ["DATA_URL"]
      416 LOADK                            R83 K104 ["Data/Upload.ashx?"]
      417 CONCAT                           R81 R82 R83
      418 GETTABLEKS                       R83 R26 K59 ["GROUP_URL"]
      420 LOADK                            R84 K105 ["v2/users/%%20%%20%s/groups/roles"]
      421 CONCAT                           R82 R83 R84
      422 GETTABLEKS                       R84 R26 K54 ["DEVELOP_URL"]
      424 LOADK                            R85 K106 ["v1/user/is-verified-creator"]
      425 CONCAT                           R83 R84 R85
      426 GETTABLEKS                       R85 R26 K59 ["GROUP_URL"]
      428 LOADK                            R86 K107 ["v1/groups/%s/roles"]
      429 CONCAT                           R84 R85 R86
      430 GETTABLEKS                       R86 R26 K108 ["FRIENDS_URL"]
      432 LOADK                            R87 K109 ["v1/users/%d/friends"]
      433 CONCAT                           R85 R86 R87
      434 GETTABLEKS                       R87 R26 K52 ["BASE_URL"]
      436 LOADK                            R88 K110 ["upgrades/robux"]
      437 CONCAT                           R86 R87 R88
      438 GETTABLEKS                       R88 R26 K111 ["ECONOMY_URL"]
      440 LOADK                            R89 K112 ["v1/users/%d/currency"]
      441 CONCAT                           R87 R88 R89
      442 GETTABLEKS                       R89 R26 K54 ["DEVELOP_URL"]
      444 LOADK                            R90 K113 ["v1/user/%d/canmanage/%d"]
      445 CONCAT                           R88 R89 R90
      446 GETTABLEKS                       R90 R26 K111 ["ECONOMY_URL"]
      448 LOADK                            R91 K114 ["/v1/purchases/products/%d"]
      449 CONCAT                           R89 R90 R91
      450 GETTABLEKS                       R91 R26 K50 ["APIS_URL"]
      452 LOADK                            R92 K115 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      453 CONCAT                           R90 R91 R92
      454 GETTABLEKS                       R92 R26 K50 ["APIS_URL"]
      456 LOADK                            R93 K116 ["marketplace-fiat-service/v1/product/purchase"]
      457 CONCAT                           R91 R92 R93
      458 GETTABLEKS                       R93 R26 K50 ["APIS_URL"]
      460 LOADK                            R94 K117 ["marketplace-fiat-service/v1/purchaser/status"]
      461 CONCAT                           R92 R93 R94
      462 MOVE                             R94 R11
      463 CALL                             R94 0 1
      464 JUMPIFNOT                        R94 ; [+5]
      465 GETTABLEKS                       R94 R26 K50 ["APIS_URL"]
      467 LOADK                            R95 K118 ["marketplace-fiat-service/v1/seller/status"]
      468 CONCAT                           R93 R94 R95
      469 JUMP                             ; [+1]
      470 LOADNIL                          R93
      471 JUMPIFNOT                        R5 ; [+2]
      472 LOADK                            R94 K119 ["/creations/catalog/%d/configure"]
      473 JUMP                             ; [+1]
      474 LOADK                            R94 K120 ["/creations?activeTab=TShirt"]
      475 JUMPIFNOT                        R4 ; [+2]
      476 LOADK                            R95 K121 ["/creations/bundle/%d/configure"]
      477 JUMP                             ; [+1]
      478 LOADNIL                          R95
      479 GETTABLEKS                       R97 R26 K50 ["APIS_URL"]
      481 LOADK                            R98 K122 ["packages-api/v1/packages/assets/versions/metadata/get"]
      482 CONCAT                           R96 R97 R98
      483 GETTABLEKS                       R98 R26 K50 ["APIS_URL"]
      485 LOADK                            R99 K123 ["asset-permissions-api/v1/assets/%s/permissions"]
      486 CONCAT                           R97 R98 R99
      487 GETTABLEKS                       R99 R26 K50 ["APIS_URL"]
      489 LOADK                            R100 K124 ["asset-permissions-api/v1/assets/check-actions"]
      490 CONCAT                           R98 R99 R100
      491 GETTABLEKS                       R100 R26 K50 ["APIS_URL"]
      493 LOADK                            R101 K125 ["asset-permissions-api/v1/assets/check-permissions"]
      494 CONCAT                           R99 R100 R101
      495 GETTABLEKS                       R101 R26 K50 ["APIS_URL"]
      497 LOADK                            R102 K126 ["asset-permissions-api/v1/assets/permissions"]
      498 CONCAT                           R100 R101 R102
      499 GETTABLEKS                       R102 R26 K50 ["APIS_URL"]
      501 LOADK                            R103 K127 ["toolbox-service/v1"]
      502 CONCAT                           R101 R102 R103
      503 GETTABLEKS                       R103 R26 K50 ["APIS_URL"]
      505 LOADK                            R104 K128 ["toolbox-service/v1/%s?"]
      506 CONCAT                           R102 R103 R104
      507 GETTABLEKS                       R104 R26 K50 ["APIS_URL"]
      509 LOADK                            R105 K129 ["toolbox-service/v1/items/details?"]
      510 CONCAT                           R103 R104 R105
      511 GETTABLEKS                       R105 R26 K50 ["APIS_URL"]
      513 LOADK                            R106 K130 ["toolbox-service/v1/creations/group/%d/%s?"]
      514 CONCAT                           R104 R105 R106
      515 GETTABLEKS                       R106 R26 K50 ["APIS_URL"]
      517 LOADK                            R107 K131 ["toolbox-service/v1/creations/user/%d/%s?"]
      518 CONCAT                           R105 R106 R107
      519 MOVE                             R107 R101
      520 LOADK                            R108 K132 ["/voting/vote?"]
      521 CONCAT                           R106 R107 R108
      522 GETTABLEKS                       R108 R26 K48 ["ITEM_CONFIGURATION_URL"]
      524 LOADK                            R109 K133 ["v1/asset-types/%s/agents?"]
      525 CONCAT                           R107 R108 R109
      526 GETTABLEKS                       R109 R26 K50 ["APIS_URL"]
      528 LOADK                            R110 K134 ["autocomplete-studio/v2/suggest?"]
      529 CONCAT                           R108 R109 R110
      530 GETTABLEKS                       R110 R26 K50 ["APIS_URL"]
      532 LOADK                            R111 K135 ["marketplace-publishing-requirements-api/v1/requirements?"]
      533 CONCAT                           R109 R110 R111
      534 JUMPIFNOT                        R8 ; [+5]
      535 GETTABLEKS                       R111 R26 K50 ["APIS_URL"]
      537 LOADK                            R112 K136 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      538 CONCAT                           R110 R111 R112
      539 JUMP                             ; [+1]
      540 LOADNIL                          R110
      541 GETTABLEKS                       R112 R26 K50 ["APIS_URL"]
      543 LOADK                            R113 K137 ["user/cloud/v2/creator-store-products/"]
      544 CONCAT                           R111 R112 R113
      545 MOVE                             R113 R111
      546 LOADK                            R114 K138 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      547 CONCAT                           R112 R113 R114
      548 GETTABLEKS                       R114 R26 K61 ["PUBLISH_URL"]
      550 LOADK                            R115 K139 ["v1/assets/%d/media"]
      551 CONCAT                           R113 R114 R115
      552 GETTABLEKS                       R115 R26 K61 ["PUBLISH_URL"]
      554 LOADK                            R116 K140 ["v1/assets/%d/media/%d"]
      555 CONCAT                           R114 R115 R116
      556 GETTABLEKS                       R116 R26 K61 ["PUBLISH_URL"]
      558 LOADK                            R117 K141 ["v1/assets/%d/media/order"]
      559 CONCAT                           R115 R116 R117
      560 GETTABLEKS                       R117 R26 K61 ["PUBLISH_URL"]
      562 LOADK                            R118 K139 ["v1/assets/%d/media"]
      563 CONCAT                           R116 R117 R118
      564 GETTABLEKS                       R118 R26 K54 ["DEVELOP_URL"]
      566 LOADK                            R119 K142 ["v1/assets/%d/latest-saved-version"]
      567 CONCAT                           R117 R118 R119
      568 GETTABLEKS                       R119 R26 K54 ["DEVELOP_URL"]
      570 LOADK                            R120 K143 ["v1/universes/%d"]
      571 CONCAT                           R118 R119 R120
      572 GETTABLEKS                       R120 R26 K48 ["ITEM_CONFIGURATION_URL"]
      574 LOADK                            R121 K144 ["v1/permissions/groups?"]
      575 CONCAT                           R119 R120 R121
      576 GETTABLEKS                       R121 R26 K50 ["APIS_URL"]
      578 LOADK                            R122 K145 ["asset-permissions-api/v1/assets/access-properties"]
      579 CONCAT                           R120 R121 R122
      580 GETIMPORT                        R121 K15 [require]
      582 GETTABLEKS                       R124 R0 K4 ["Src"]
      584 GETTABLEKS                       R123 R124 K24 ["Flags"]
      586 GETTABLEKS                       R122 R123 K146 ["getFFlagEnableUploadingGroupBundles"]
      588 CALL                             R121 1 1
      589 DUPCLOSURE                       R122 K147 [PROTO_0]
      590 CAPTURE                          VAL R103
      591 CAPTURE                          VAL R26
      592 SETTABLEKS                       R122 R31 K148 ["constructGetItemDetails"]
      594 DUPCLOSURE                       R122 K149 [PROTO_1]
      595 CAPTURE                          VAL R35
      596 CAPTURE                          VAL R26
      597 SETTABLEKS                       R122 R31 K150 ["constructGetAssetsUrl"]
      599 GETTABLEKS                       R122 R19 K151 ["new"]
      601 NEWTABLE                         R123 0 4
      603 GETTABLEKS                       R125 R25 K152 ["MUSIC"]
      605 GETTABLEKS                       R124 R125 K153 ["name"]
      607 GETTABLEKS                       R126 R25 K154 ["SOUND_EFFECTS"]
      609 GETTABLEKS                       R125 R126 K153 ["name"]
      611 GETTABLEKS                       R127 R25 K155 ["UNKNOWN_AUDIO"]
      613 GETTABLEKS                       R126 R127 K153 ["name"]
      615 GETTABLEKS                       R128 R25 K156 ["FREE_FONTS"]
      617 GETTABLEKS                       R127 R128 K153 ["name"]
      619 SETLIST                          R123 R124 4 [1]
      621 CALL                             R122 1 1
      622 DUPCLOSURE                       R123 K157 [PROTO_2]
      623 CAPTURE                          VAL R122
      624 SETTABLEKS                       R123 R31 K158 ["usesMarketplaceRoute"]
      626 DUPCLOSURE                       R123 K159 [PROTO_3]
      627 CAPTURE                          VAL R101
      628 SETTABLEKS                       R123 R31 K160 ["constructCreateSaveUrl"]
      630 DUPCLOSURE                       R123 K161 [PROTO_4]
      631 CAPTURE                          VAL R101
      632 SETTABLEKS                       R123 R31 K162 ["constructDeleteSaveUrl"]
      634 DUPCLOSURE                       R123 K163 [PROTO_5]
      635 CAPTURE                          VAL R101
      636 SETTABLEKS                       R123 R31 K164 ["constructGetSaveUrl"]
      638 DUPCLOSURE                       R123 K165 [PROTO_6]
      639 CAPTURE                          VAL R20
      640 CAPTURE                          VAL R17
      641 CAPTURE                          VAL R21
      642 CAPTURE                          VAL R29
      643 CAPTURE                          VAL R25
      644 CAPTURE                          VAL R101
      645 CAPTURE                          VAL R31
      646 CAPTURE                          VAL R26
      647 CAPTURE                          VAL R7
      648 SETTABLEKS                       R123 R31 K166 ["constructGetToolboxItemsUrl"]
      650 DUPCLOSURE                       R123 K167 [PROTO_7]
      651 CAPTURE                          VAL R36
      652 CAPTURE                          VAL R26
      653 SETTABLEKS                       R123 R31 K168 ["getDevelopAssetUrl"]
      655 DUPCLOSURE                       R123 K169 [PROTO_8]
      656 CAPTURE                          VAL R34
      657 SETTABLEKS                       R123 R31 K170 ["constructGetAssetByIdUrl"]
      659 DUPCLOSURE                       R123 K171 [PROTO_9]
      660 CAPTURE                          VAL R33
      661 CAPTURE                          VAL R26
      662 SETTABLEKS                       R123 R31 K172 ["constructGetAllowedItemTypesUrl"]
      664 DUPCLOSURE                       R123 K173 [PROTO_10]
      665 CAPTURE                          VAL R104
      666 CAPTURE                          VAL R26
      667 SETTABLEKS                       R123 R31 K174 ["constructGetAssetGroupCreationsUrl"]
      669 DUPCLOSURE                       R123 K175 [PROTO_11]
      670 CAPTURE                          VAL R105
      671 CAPTURE                          VAL R26
      672 SETTABLEKS                       R123 R31 K176 ["constructGetAssetCreationsUrlToolboxService"]
      674 DUPCLOSURE                       R123 K177 [PROTO_12]
      675 CAPTURE                          VAL R39
      676 CAPTURE                          VAL R38
      677 SETTABLEKS                       R123 R31 K178 ["constructGetCreatorInfoUrl"]
      679 DUPCLOSURE                       R123 K179 [PROTO_13]
      680 CAPTURE                          VAL R50
      681 SETTABLEKS                       R123 R31 K180 ["constructGetBundleMetadataUrl"]
      683 DUPCLOSURE                       R123 K181 [PROTO_14]
      684 CAPTURE                          VAL R51
      685 SETTABLEKS                       R123 R31 K182 ["constructPostBundleCreationContextUrl"]
      687 DUPCLOSURE                       R123 K183 [PROTO_15]
      688 CAPTURE                          VAL R52
      689 SETTABLEKS                       R123 R31 K184 ["constructPostCreateBundleUrl"]
      691 DUPCLOSURE                       R123 K185 [PROTO_16]
      692 CAPTURE                          VAL R53
      693 SETTABLEKS                       R123 R31 K186 ["constructGetBundleCreationStatusUrl"]
      695 DUPCLOSURE                       R123 K187 [PROTO_17]
      696 CAPTURE                          VAL R54
      697 SETTABLEKS                       R123 R31 K188 ["constructGetDefaultCreateBundleDataSharingUrl"]
      699 DUPCLOSURE                       R123 K189 [PROTO_18]
      700 CAPTURE                          VAL R55
      701 SETTABLEKS                       R123 R31 K190 ["constructPostCreateBundleDataSharingUrl"]
      703 DUPCLOSURE                       R123 K191 [PROTO_19]
      704 CAPTURE                          VAL R56
      705 SETTABLEKS                       R123 R31 K192 ["constructPostCreateAvatarAssetDataSharingUrl"]
      707 MOVE                             R123 R6
      708 CALL                             R123 0 1
      709 JUMPIFNOT                        R123 ; [+5]
      710 DUPCLOSURE                       R123 K193 [PROTO_20]
      711 CAPTURE                          VAL R46
      712 CAPTURE                          VAL R26
      713 SETTABLEKS                       R123 R31 K194 ["constructUploadPermissionStatusUrl"]
      715 DUPCLOSURE                       R123 K195 [PROTO_21]
      716 CAPTURE                          VAL R48
      717 CAPTURE                          VAL R26
      718 SETTABLEKS                       R123 R31 K196 ["constructGetItemConfigurationDetailsUrl"]
      720 DUPCLOSURE                       R123 K197 [PROTO_22]
      721 CAPTURE                          VAL R47
      722 CAPTURE                          VAL R26
      723 SETTABLEKS                       R123 R31 K198 ["constructGetItemsByCreatorUrl"]
      725 DUPCLOSURE                       R123 K199 [PROTO_23]
      726 CAPTURE                          VAL R49
      727 CAPTURE                          VAL R26
      728 SETTABLEKS                       R123 R31 K200 ["constructGetItemUploadFeeUrl"]
      730 DUPCLOSURE                       R123 K201 [PROTO_24]
      731 CAPTURE                          VAL R40
      732 SETTABLEKS                       R123 R31 K202 ["constructUploadCatalogItemUrl"]
      734 DUPCLOSURE                       R123 K203 [PROTO_25]
      735 CAPTURE                          VAL R41
      736 SETTABLEKS                       R123 R31 K204 ["constructUploadAssetThumbnailUrl"]
      738 DUPCLOSURE                       R123 K205 [PROTO_26]
      739 CAPTURE                          VAL R45
      740 CAPTURE                          VAL R26
      741 SETTABLEKS                       R123 R31 K206 ["contuctGetThumbnailStatusUrl"]
      743 DUPCLOSURE                       R123 K207 [PROTO_27]
      744 CAPTURE                          VAL R43
      745 SETTABLEKS                       R123 R31 K208 ["constructConfigureSalesUrl"]
      747 DUPCLOSURE                       R123 K209 [PROTO_28]
      748 CAPTURE                          VAL R44
      749 SETTABLEKS                       R123 R31 K210 ["constructUpdateSalesUrl"]
      751 DUPCLOSURE                       R123 K211 [PROTO_29]
      752 CAPTURE                          VAL R42
      753 SETTABLEKS                       R123 R31 K212 ["constructConfigureCatalogItemUrl"]
      755 DUPCLOSURE                       R123 K213 [PROTO_30]
      756 CAPTURE                          VAL R106
      757 CAPTURE                          VAL R26
      758 SETTABLEKS                       R123 R31 K214 ["constructGetVoteUrl"]
      760 DUPCLOSURE                       R123 K215 [PROTO_31]
      761 CAPTURE                          VAL R58
      762 SETTABLEKS                       R123 R31 K216 ["constructPostVoteUrl"]
      764 DUPCLOSURE                       R123 K217 [PROTO_32]
      765 CAPTURE                          VAL R59
      766 SETTABLEKS                       R123 R31 K218 ["constructPostUnvoteUrl"]
      768 DUPCLOSURE                       R123 K219 [PROTO_33]
      769 CAPTURE                          VAL R101
      770 SETTABLEKS                       R123 R31 K220 ["constructInsertAssetUrl"]
      772 DUPCLOSURE                       R123 K221 [PROTO_34]
      773 CAPTURE                          VAL R63
      774 CAPTURE                          VAL R26
      775 SETTABLEKS                       R123 R31 K222 ["constructGetPluginInfoUrl"]
      777 DUPCLOSURE                       R123 K223 [PROTO_35]
      778 CAPTURE                          VAL R14
      779 CAPTURE                          VAL R62
      780 CAPTURE                          VAL R61
      781 SETTABLEKS                       R123 R31 K224 ["constructGetManageableGroupsUrl"]
      783 DUPCLOSURE                       R123 K225 [PROTO_36]
      784 CAPTURE                          VAL R26
      785 SETTABLEKS                       R123 R31 K226 ["constructGetGroupsForSurfaceUrl"]
      787 DUPCLOSURE                       R123 K227 [PROTO_37]
      788 CAPTURE                          VAL R26
      789 SETTABLEKS                       R123 R31 K228 ["constructAssetIdUserContextString"]
      791 DUPCLOSURE                       R123 K229 [PROTO_38]
      792 CAPTURE                          VAL R9
      793 SETTABLEKS                       R123 R31 K230 ["constructAssetIdString"]
      795 DUPCLOSURE                       R123 K231 [PROTO_39]
      796 CAPTURE                          VAL R64
      797 CAPTURE                          VAL R26
      798 SETTABLEKS                       R123 R31 K232 ["constructAssetIdUrl"]
      800 DUPCLOSURE                       R123 K233 [PROTO_40]
      801 CAPTURE                          VAL R69
      802 SETTABLEKS                       R123 R31 K234 ["constructAssetSavedVersionString"]
      804 DUPCLOSURE                       R123 K235 [PROTO_41]
      805 CAPTURE                          VAL R74
      806 SETTABLEKS                       R123 R31 K236 ["constructGetPackageVersionDescriptionString"]
      808 DUPCLOSURE                       R123 K237 [PROTO_42]
      809 CAPTURE                          VAL R75
      810 SETTABLEKS                       R123 R31 K238 ["constructSetPackageVersionDescriptionString"]
      812 DUPCLOSURE                       R123 K239 [PROTO_43]
      813 CAPTURE                          VAL R72
      814 CAPTURE                          VAL R26
      815 SETTABLEKS                       R123 R31 K240 ["constructRevertAssetVersionString"]
      817 DUPCLOSURE                       R123 K241 [PROTO_44]
      818 CAPTURE                          VAL R73
      819 CAPTURE                          VAL R26
      820 SETTABLEKS                       R123 R31 K242 ["constructGetDevelopAssetMetadata"]
      822 DUPCLOSURE                       R123 K243 [PROTO_45]
      823 CAPTURE                          VAL R65
      824 CAPTURE                          VAL R26
      825 SETTABLEKS                       R123 R31 K244 ["constructAssetGameAssetIdUrl"]
      827 DUPCLOSURE                       R123 K245 [PROTO_46]
      828 CAPTURE                          VAL R12
      829 SETTABLEKS                       R123 R31 K246 ["constructAssetThumbnailUrl"]
      831 DUPCLOSURE                       R123 K247 [PROTO_47]
      832 SETTABLEKS                       R123 R31 K248 ["constructRBXThumbUrl"]
      834 DUPCLOSURE                       R123 K249 [PROTO_48]
      835 CAPTURE                          VAL R26
      836 CAPTURE                          VAL R2
      837 SETTABLEKS                       R123 R31 K250 ["constructUserSearchUrl"]
      839 DUPCLOSURE                       R123 K251 [PROTO_49]
      840 CAPTURE                          VAL R67
      841 CAPTURE                          VAL R26
      842 SETTABLEKS                       R123 R31 K252 ["constructUserThumbnailUrl"]
      844 DUPCLOSURE                       R123 K253 [PROTO_50]
      845 CAPTURE                          VAL R68
      846 SETTABLEKS                       R123 R31 K254 ["constructFavoriteCountsUrl"]
      848 DUPCLOSURE                       R123 K255 [PROTO_51]
      849 CAPTURE                          VAL R68
      850 SETTABLEKS                       R123 R31 K256 ["constructGetFavoritedUrl"]
      852 DUPCLOSURE                       R123 K257 [PROTO_52]
      853 CAPTURE                          VAL R68
      854 SETTABLEKS                       R123 R31 K258 ["constructPostFavoriteUrl"]
      856 DUPCLOSURE                       R123 K259 [PROTO_53]
      857 CAPTURE                          VAL R68
      858 SETTABLEKS                       R123 R31 K260 ["constructDeleteFavoriteUrl"]
      860 DUPCLOSURE                       R123 K261 [PROTO_54]
      861 CAPTURE                          VAL R80
      862 SETTABLEKS                       R123 R31 K262 ["constructPatchAssetUrl"]
      864 DUPCLOSURE                       R123 K263 [PROTO_55]
      865 CAPTURE                          VAL R76
      866 SETTABLEKS                       R123 R31 K264 ["constructOperationUrl"]
      868 DUPCLOSURE                       R123 K265 [PROTO_56]
      869 CAPTURE                          VAL R77
      870 SETTABLEKS                       R123 R31 K266 ["constructPostUploadAnimationUrl"]
      872 DUPCLOSURE                       R123 K267 [PROTO_57]
      873 CAPTURE                          VAL R79
      874 SETTABLEKS                       R123 R31 K268 ["constructValidateAnimationUrl"]
      876 DUPCLOSURE                       R123 K269 [PROTO_58]
      877 CAPTURE                          VAL R78
      878 SETTABLEKS                       R123 R31 K270 ["constructPostOverwriteAnimationUrl"]
      880 DUPCLOSURE                       R123 K271 [PROTO_59]
      881 CAPTURE                          VAL R82
      882 SETTABLEKS                       R123 R31 K272 ["constructGetMyGroupUrl"]
      884 DUPCLOSURE                       R123 K273 [PROTO_60]
      885 CAPTURE                          VAL R83
      886 SETTABLEKS                       R123 R31 K274 ["constructIsVerifiedCreatorUrl"]
      888 DUPCLOSURE                       R123 K275 [PROTO_61]
      889 CAPTURE                          VAL R85
      890 SETTABLEKS                       R123 R31 K276 ["constructGetUserFriendsUrl"]
      892 DUPCLOSURE                       R123 K277 [PROTO_62]
      893 CAPTURE                          VAL R97
      894 SETTABLEKS                       R123 R31 K278 ["constructAssetPermissionsUrl"]
      896 DUPCLOSURE                       R123 K279 [PROTO_63]
      897 CAPTURE                          VAL R100
      898 SETTABLEKS                       R123 R31 K280 ["constructAssetBatchGrantPermissionsUrl"]
      900 DUPCLOSURE                       R123 K281 [PROTO_64]
      901 CAPTURE                          VAL R98
      902 SETTABLEKS                       R123 R31 K282 ["constructAssetCheckPermissionsUrl"]
      904 DUPCLOSURE                       R123 K283 [PROTO_65]
      905 CAPTURE                          VAL R86
      906 SETTABLEKS                       R123 R31 K284 ["getRobuxPurchaseUrl"]
      908 DUPCLOSURE                       R123 K285 [PROTO_66]
      909 CAPTURE                          VAL R96
      910 SETTABLEKS                       R123 R31 K286 ["constructPostPackageMetadata"]
      912 DUPCLOSURE                       R123 K287 [PROTO_67]
      913 CAPTURE                          VAL R87
      914 SETTABLEKS                       R123 R31 K288 ["constructGetRobuxBalanceUrl"]
      916 DUPCLOSURE                       R123 K289 [PROTO_68]
      917 CAPTURE                          VAL R84
      918 SETTABLEKS                       R123 R31 K290 ["constructGetGroupRoleInfoUrl"]
      920 DUPCLOSURE                       R123 K291 [PROTO_69]
      921 CAPTURE                          VAL R99
      922 SETTABLEKS                       R123 R31 K292 ["constructAssetCheckPermissionsBatchUrl"]
      924 DUPCLOSURE                       R123 K293 [PROTO_70]
      925 CAPTURE                          VAL R10
      926 CAPTURE                          VAL R91
      927 CAPTURE                          VAL R90
      928 CAPTURE                          VAL R89
      929 SETTABLEKS                       R123 R31 K294 ["constructAssetPurchaseUrl"]
      931 DUPCLOSURE                       R123 K295 [PROTO_71]
      932 CAPTURE                          VAL R92
      933 SETTABLEKS                       R123 R31 K296 ["constructPurchaserStatusUrl"]
      935 MOVE                             R123 R11
      936 CALL                             R123 0 1
      937 JUMPIFNOT                        R123 ; [+4]
      938 DUPCLOSURE                       R123 K297 [PROTO_72]
      939 CAPTURE                          VAL R93
      940 SETTABLEKS                       R123 R31 K298 ["constructSellerStatusUrl"]
      942 DUPCLOSURE                       R123 K299 [PROTO_73]
      943 CAPTURE                          VAL R81
      944 CAPTURE                          VAL R26
      945 SETTABLEKS                       R123 R31 K300 ["constructUploadCatalogItemFormatUrl"]
      947 DUPCLOSURE                       R123 K301 [PROTO_74]
      948 CAPTURE                          VAL R107
      949 CAPTURE                          VAL R26
      950 SETTABLEKS                       R123 R31 K302 ["constructAssetTypeAgentsUrl"]
      952 DUPCLOSURE                       R123 K303 [PROTO_75]
      953 CAPTURE                          VAL R108
      954 CAPTURE                          VAL R26
      955 SETTABLEKS                       R123 R31 K304 ["constructToolboxAutocompleteUrl"]
      957 DUPCLOSURE                       R123 K305 [PROTO_76]
      958 CAPTURE                          VAL R101
      959 CAPTURE                          VAL R26
      960 CAPTURE                          VAL R29
      961 SETTABLEKS                       R123 R31 K306 ["constructGetHomeConfigurationUrl"]
      963 DUPCLOSURE                       R123 K307 [PROTO_77]
      964 CAPTURE                          VAL R109
      965 CAPTURE                          VAL R26
      966 SETTABLEKS                       R123 R31 K308 ["constructPublishingRequirementsUrl"]
      968 DUPCLOSURE                       R123 K309 [PROTO_78]
      969 CAPTURE                          VAL R26
      970 SETTABLEKS                       R123 R31 K310 ["getCreatorMarketplaceQuotas"]
      972 DUPCLOSURE                       R123 K311 [PROTO_79]
      973 CAPTURE                          VAL R113
      974 SETTABLEKS                       R123 R31 K312 ["constructGetAssetMediaIdsUrl"]
      976 DUPCLOSURE                       R123 K313 [PROTO_80]
      977 CAPTURE                          VAL R114
      978 SETTABLEKS                       R123 R31 K314 ["constructDeleteAssetMediaUrl"]
      980 DUPCLOSURE                       R123 K315 [PROTO_81]
      981 CAPTURE                          VAL R115
      982 SETTABLEKS                       R123 R31 K316 ["constructPostSetAssetMediaOrder"]
      984 DUPCLOSURE                       R123 K317 [PROTO_82]
      985 CAPTURE                          VAL R116
      986 SETTABLEKS                       R123 R31 K318 ["constructPostUploadAssetMedia"]
      988 JUMPIFNOT                        R3 ; [+4]
      989 DUPCLOSURE                       R123 K319 [PROTO_83]
      990 CAPTURE                          VAL R27
      991 SETTABLEKS                       R123 R31 K320 ["constructCreatorDashboardAssetConfigUrl"]
      993 JUMPIFNOT                        R5 ; [+6]
      994 DUPCLOSURE                       R123 K321 [PROTO_84]
      995 CAPTURE                          VAL R27
      996 CAPTURE                          VAL R94
      997 SETTABLEKS                       R123 R31 K322 ["constructCreatorDashboardConfigAvatarAssetUrl"]
      999 JUMP                             ; [+5]
     1000 DUPCLOSURE                       R123 K323 [PROTO_85]
     1001 CAPTURE                          VAL R27
     1002 CAPTURE                          VAL R94
     1003 SETTABLEKS                       R123 R31 K324 ["constructCreatorDashboardAvatarAssetUrl"]
     1005 DUPCLOSURE                       R123 K325 [PROTO_86]
     1006 CAPTURE                          VAL R27
     1007 SETTABLEKS                       R123 R31 K326 ["constructCreatorDashboardCreationsPageUrl"]
     1009 JUMPIFNOT                        R4 ; [+5]
     1010 DUPCLOSURE                       R123 K327 [PROTO_87]
     1011 CAPTURE                          VAL R27
     1012 CAPTURE                          VAL R95
     1013 SETTABLEKS                       R123 R31 K328 ["constructCreatorDashboardBundleConfigureUrl"]
     1015 DUPCLOSURE                       R123 K329 [PROTO_88]
     1016 CAPTURE                          VAL R27
     1017 SETTABLEKS                       R123 R31 K330 ["constructCreatorStoreConfigurationUrl"]
     1019 DUPCLOSURE                       R123 K331 [PROTO_89]
     1020 CAPTURE                          VAL R118
     1021 SETTABLEKS                       R123 R31 K332 ["constructGetUniverseInfo"]
     1023 MOVE                             R123 R8
     1024 CALL                             R123 0 1
     1025 JUMPIFNOT                        R123 ; [+4]
     1026 DUPCLOSURE                       R123 K333 [PROTO_90]
     1027 CAPTURE                          VAL R110
     1028 SETTABLEKS                       R123 R31 K334 ["constructCodeUnderstandingSummaryUrl"]
     1030 DUPCLOSURE                       R123 K335 [PROTO_91]
     1031 CAPTURE                          VAL R112
     1032 CAPTURE                          VAL R28
     1033 SETTABLEKS                       R123 R31 K336 ["constructGetFiatProductUrl"]
     1035 MOVE                             R123 R121
     1036 CALL                             R123 0 1
     1037 JUMPIFNOT                        R123 ; [+5]
     1038 DUPCLOSURE                       R123 K337 [PROTO_92]
     1039 CAPTURE                          VAL R119
     1040 CAPTURE                          VAL R26
     1041 SETTABLEKS                       R123 R31 K338 ["constructAllowedGroupsForActionUrl"]
     1043 DUPCLOSURE                       R123 K339 [PROTO_93]
     1044 CAPTURE                          VAL R32
     1045 SETTABLEKS                       R123 R31 K340 ["constructCreatorStoreUrl"]
     1047 MOVE                             R123 R13
     1048 CALL                             R123 0 1
     1049 JUMPIFNOT                        R123 ; [+4]
     1050 DUPCLOSURE                       R123 K341 [PROTO_94]
     1051 CAPTURE                          VAL R120
     1052 SETTABLEKS                       R123 R31 K342 ["constructBatchAssetAccessPropertiesUrl"]
     1054 MOVE                             R123 R30
     1055 MOVE                             R124 R31
     1056 CALL                             R123 1 1
     1057 RETURN                           R123 1
