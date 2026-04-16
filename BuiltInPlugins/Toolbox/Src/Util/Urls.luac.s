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
      117 GETTABLEKS                       R19 R0 K4 ["Src"]
      119 GETTABLEKS                       R18 R19 K5 ["Util"]
      121 GETTABLEKS                       R17 R18 K16 ["SharedFlags"]
      123 GETTABLEKS                       R16 R17 K27 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
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
      151 GETTABLEKS                       R26 R0 K4 ["Src"]
      153 GETTABLEKS                       R25 R26 K35 ["Types"]
      155 GETTABLEKS                       R24 R25 K36 ["AssetQuotaTypes"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R27 R0 K4 ["Src"]
      162 GETTABLEKS                       R26 R27 K35 ["Types"]
      164 GETTABLEKS                       R25 R26 K37 ["AssetSubTypes"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K15 [require]
      169 GETTABLEKS                       R28 R0 K4 ["Src"]
      171 GETTABLEKS                       R27 R28 K35 ["Types"]
      173 GETTABLEKS                       R26 R27 K38 ["HomeTypes"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R29 R0 K4 ["Src"]
      180 GETTABLEKS                       R28 R29 K35 ["Types"]
      182 GETTABLEKS                       R27 R28 K39 ["Category"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R30 R0 K40 ["Libs"]
      189 GETTABLEKS                       R29 R30 K41 ["Http"]
      191 GETTABLEKS                       R28 R29 K42 ["Url"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K15 [require]
      196 GETTABLEKS                       R31 R0 K4 ["Src"]
      198 GETTABLEKS                       R30 R31 K5 ["Util"]
      200 GETTABLEKS                       R29 R30 K43 ["ToolboxUtilities"]
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
      254 LOADK                            R43 K63 ["v1/assets/upload"]
      255 CONCAT                           R41 R42 R43
      256 GETTABLEKS                       R43 R27 K62 ["PUBLISH_URL"]
      258 LOADK                            R44 K64 ["v1/assets/%d/thumbnail"]
      259 CONCAT                           R42 R43 R44
      260 GETTABLEKS                       R44 R27 K55 ["DEVELOP_URL"]
      262 LOADK                            R45 K65 ["v1/assets/%d"]
      263 CONCAT                           R43 R44 R45
      264 GETTABLEKS                       R45 R27 K49 ["ITEM_CONFIGURATION_URL"]
      266 LOADK                            R46 K66 ["v1/assets/%d/release"]
      267 CONCAT                           R44 R45 R46
      268 GETTABLEKS                       R46 R27 K49 ["ITEM_CONFIGURATION_URL"]
      270 LOADK                            R47 K67 ["v1/assets/%d/update-price"]
      271 CONCAT                           R45 R46 R47
      272 GETTABLEKS                       R47 R27 K68 ["THUMBNAIL_URL"]
      274 LOADK                            R48 K69 ["v1/assets?"]
      275 CONCAT                           R46 R47 R48
      276 MOVE                             R48 R6
      277 CALL                             R48 0 1
      278 JUMPIFNOT                        R48 ; [+5]
      279 GETTABLEKS                       R48 R27 K49 ["ITEM_CONFIGURATION_URL"]
      281 LOADK                            R49 K70 ["v1/collectibles/check-item-upload-access?"]
      282 CONCAT                           R47 R48 R49
      283 JUMP                             ; [+1]
      284 LOADNIL                          R47
      285 GETTABLEKS                       R49 R27 K49 ["ITEM_CONFIGURATION_URL"]
      287 LOADK                            R50 K71 ["v1/items/by-creator?"]
      288 CONCAT                           R48 R49 R50
      289 GETTABLEKS                       R50 R27 K49 ["ITEM_CONFIGURATION_URL"]
      291 LOADK                            R51 K72 ["v1/items?"]
      292 CONCAT                           R49 R50 R51
      293 GETTABLEKS                       R51 R27 K49 ["ITEM_CONFIGURATION_URL"]
      295 LOADK                            R52 K73 ["v1/items/upload-fee?"]
      296 CONCAT                           R50 R51 R52
      297 GETTABLEKS                       R52 R27 K49 ["ITEM_CONFIGURATION_URL"]
      299 LOADK                            R53 K74 ["v1/bundles/metadata"]
      300 CONCAT                           R51 R52 R53
      301 GETTABLEKS                       R53 R27 K49 ["ITEM_CONFIGURATION_URL"]
      303 LOADK                            R54 K75 ["v1/bundles/create-context"]
      304 CONCAT                           R52 R53 R54
      305 GETTABLEKS                       R54 R27 K49 ["ITEM_CONFIGURATION_URL"]
      307 LOADK                            R55 K76 ["v1/bundles"]
      308 CONCAT                           R53 R54 R55
      309 GETTABLEKS                       R55 R27 K49 ["ITEM_CONFIGURATION_URL"]
      311 LOADK                            R56 K77 ["v1/bundles/status"]
      312 CONCAT                           R54 R55 R56
      313 GETTABLEKS                       R56 R27 K51 ["APIS_URL"]
      315 LOADK                            R57 K78 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      316 CONCAT                           R55 R56 R57
      317 GETTABLEKS                       R57 R27 K51 ["APIS_URL"]
      319 LOADK                            R58 K79 ["resource-settings/v1/bundles"]
      320 CONCAT                           R56 R57 R58
      321 GETTABLEKS                       R58 R27 K51 ["APIS_URL"]
      323 LOADK                            R59 K80 ["resource-settings/v1/avatar-assets"]
      324 CONCAT                           R57 R58 R59
      325 GETTABLEKS                       R59 R27 K53 ["BASE_URL"]
      327 LOADK                            R60 K81 ["voting/vote?assetId=%s&vote=%s"]
      328 CONCAT                           R58 R59 R60
      329 GETTABLEKS                       R60 R27 K51 ["APIS_URL"]
      331 LOADK                            R61 K82 ["voting-api/vote/asset/%s?vote=%s"]
      332 CONCAT                           R59 R60 R61
      333 GETTABLEKS                       R61 R27 K51 ["APIS_URL"]
      335 LOADK                            R62 K83 ["voting-api/vote/asset/%s"]
      336 CONCAT                           R60 R61 R62
      337 GETTABLEKS                       R62 R27 K53 ["BASE_URL"]
      339 LOADK                            R63 K84 ["IDE/Toolbox/InsertAsset?"]
      340 CONCAT                           R61 R62 R63
      341 GETTABLEKS                       R63 R27 K55 ["DEVELOP_URL"]
      343 LOADK                            R64 K85 ["v1/user/groups/canmanage"]
      344 CONCAT                           R62 R63 R64
      345 GETTABLEKS                       R64 R27 K51 ["APIS_URL"]
      347 LOADK                            R65 K86 ["orgs/v2/groups/permissions/createassets"]
      348 CONCAT                           R63 R64 R65
      349 GETTABLEKS                       R65 R27 K51 ["APIS_URL"]
      351 LOADK                            R66 K87 ["studio-plugin-api/v1/plugins?"]
      352 CONCAT                           R64 R65 R66
      353 GETTABLEKS                       R66 R27 K53 ["BASE_URL"]
      355 LOADK                            R67 K88 ["asset/?"]
      356 CONCAT                           R65 R66 R67
      357 GETTABLEKS                       R67 R27 K89 ["GAME_ASSET_URL"]
      359 LOADK                            R68 K88 ["asset/?"]
      360 CONCAT                           R66 R67 R68
      361 GETTABLEKS                       R68 R27 K89 ["GAME_ASSET_URL"]
      363 LOADK                            R69 K90 ["asset-thumbnail/image?"]
      364 CONCAT                           R67 R68 R69
      365 GETTABLEKS                       R69 R27 K53 ["BASE_URL"]
      367 LOADK                            R70 K91 ["headshot-thumbnail/image?"]
      368 CONCAT                           R68 R69 R70
      369 GETTABLEKS                       R70 R27 K92 ["CATALOG_URL"]
      371 LOADK                            R71 K93 ["v1%s"]
      372 CONCAT                           R69 R70 R71
      373 GETTABLEKS                       R71 R27 K55 ["DEVELOP_URL"]
      375 LOADK                            R72 K94 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      376 CONCAT                           R70 R71 R72
      377 GETTABLEKS                       R72 R27 K55 ["DEVELOP_URL"]
      379 LOADK                            R73 K95 ["v1/assets/%s/saved-versions?limit=%s"]
      380 CONCAT                           R71 R72 R73
      381 GETTABLEKS                       R73 R27 K55 ["DEVELOP_URL"]
      383 LOADK                            R74 K96 ["v1/assets/%s/saved-versions?cursor=%s"]
      384 CONCAT                           R72 R73 R74
      385 GETTABLEKS                       R74 R27 K55 ["DEVELOP_URL"]
      387 LOADK                            R75 K97 ["v1/assets/%s/revert-version?"]
      388 CONCAT                           R73 R74 R75
      389 GETTABLEKS                       R75 R27 K55 ["DEVELOP_URL"]
      391 LOADK                            R76 K69 ["v1/assets?"]
      392 CONCAT                           R74 R75 R76
      393 GETTABLEKS                       R76 R27 K51 ["APIS_URL"]
      395 LOADK                            R77 K98 ["packages-api/v1/packages/assets/versions/notes/get"]
      396 CONCAT                           R75 R76 R77
      397 GETTABLEKS                       R77 R27 K51 ["APIS_URL"]
      399 LOADK                            R78 K99 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      400 CONCAT                           R76 R77 R78
      401 GETTABLEKS                       R78 R27 K51 ["APIS_URL"]
      403 LOADK                            R79 K100 ["assets/user-auth/v1/operations/%s"]
      404 CONCAT                           R77 R78 R79
      405 GETTABLEKS                       R79 R27 K51 ["APIS_URL"]
      407 LOADK                            R80 K101 ["assets/user-auth/v1/assets"]
      408 CONCAT                           R78 R79 R80
      409 GETTABLEKS                       R80 R27 K51 ["APIS_URL"]
      411 LOADK                            R81 K102 ["assets/user-auth/v1/assets/%s"]
      412 CONCAT                           R79 R80 R81
      413 GETTABLEKS                       R81 R27 K51 ["APIS_URL"]
      415 LOADK                            R82 K102 ["assets/user-auth/v1/assets/%s"]
      416 CONCAT                           R80 R81 R82
      417 GETTABLEKS                       R82 R27 K55 ["DEVELOP_URL"]
      419 LOADK                            R83 K103 ["v1/assets/%s?"]
      420 CONCAT                           R81 R82 R83
      421 GETTABLEKS                       R83 R27 K104 ["DATA_URL"]
      423 LOADK                            R84 K105 ["Data/Upload.ashx?"]
      424 CONCAT                           R82 R83 R84
      425 GETTABLEKS                       R84 R27 K60 ["GROUP_URL"]
      427 LOADK                            R85 K106 ["v2/users/%%20%%20%s/groups/roles"]
      428 CONCAT                           R83 R84 R85
      429 GETTABLEKS                       R85 R27 K55 ["DEVELOP_URL"]
      431 LOADK                            R86 K107 ["v1/user/is-verified-creator"]
      432 CONCAT                           R84 R85 R86
      433 GETTABLEKS                       R86 R27 K60 ["GROUP_URL"]
      435 LOADK                            R87 K108 ["v1/groups/%s/roles"]
      436 CONCAT                           R85 R86 R87
      437 GETTABLEKS                       R87 R27 K109 ["FRIENDS_URL"]
      439 LOADK                            R88 K110 ["v1/users/%d/friends"]
      440 CONCAT                           R86 R87 R88
      441 GETTABLEKS                       R88 R27 K53 ["BASE_URL"]
      443 LOADK                            R89 K111 ["upgrades/robux"]
      444 CONCAT                           R87 R88 R89
      445 GETTABLEKS                       R89 R27 K112 ["ECONOMY_URL"]
      447 LOADK                            R90 K113 ["v1/users/%d/currency"]
      448 CONCAT                           R88 R89 R90
      449 GETTABLEKS                       R90 R27 K55 ["DEVELOP_URL"]
      451 LOADK                            R91 K114 ["v1/user/%d/canmanage/%d"]
      452 CONCAT                           R89 R90 R91
      453 GETTABLEKS                       R91 R27 K112 ["ECONOMY_URL"]
      455 LOADK                            R92 K115 ["/v1/purchases/products/%d"]
      456 CONCAT                           R90 R91 R92
      457 GETTABLEKS                       R92 R27 K51 ["APIS_URL"]
      459 LOADK                            R93 K116 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      460 CONCAT                           R91 R92 R93
      461 GETTABLEKS                       R93 R27 K51 ["APIS_URL"]
      463 LOADK                            R94 K117 ["marketplace-fiat-service/v1/product/purchase"]
      464 CONCAT                           R92 R93 R94
      465 GETTABLEKS                       R94 R27 K51 ["APIS_URL"]
      467 LOADK                            R95 K118 ["marketplace-fiat-service/v1/purchaser/status"]
      468 CONCAT                           R93 R94 R95
      469 MOVE                             R95 R11
      470 CALL                             R95 0 1
      471 JUMPIFNOT                        R95 ; [+5]
      472 GETTABLEKS                       R95 R27 K51 ["APIS_URL"]
      474 LOADK                            R96 K119 ["marketplace-fiat-service/v1/seller/status"]
      475 CONCAT                           R94 R95 R96
      476 JUMP                             ; [+1]
      477 LOADNIL                          R94
      478 JUMPIFNOT                        R5 ; [+2]
      479 LOADK                            R95 K120 ["/creations/catalog/%d/configure"]
      480 JUMP                             ; [+1]
      481 LOADK                            R95 K121 ["/creations?activeTab=TShirt"]
      482 JUMPIFNOT                        R4 ; [+2]
      483 LOADK                            R96 K122 ["/creations/bundle/%d/configure"]
      484 JUMP                             ; [+1]
      485 LOADNIL                          R96
      486 MOVE                             R98 R12
      487 CALL                             R98 0 1
      488 JUMPIFNOT                        R98 ; [+2]
      489 LOADK                            R97 K123 ["/creations"]
      490 JUMP                             ; [+1]
      491 LOADNIL                          R97
      492 GETTABLEKS                       R99 R27 K51 ["APIS_URL"]
      494 LOADK                            R100 K124 ["packages-api/v1/packages/assets/versions/metadata/get"]
      495 CONCAT                           R98 R99 R100
      496 GETTABLEKS                       R100 R27 K51 ["APIS_URL"]
      498 LOADK                            R101 K125 ["asset-permissions-api/v1/assets/%s/permissions"]
      499 CONCAT                           R99 R100 R101
      500 GETTABLEKS                       R101 R27 K51 ["APIS_URL"]
      502 LOADK                            R102 K126 ["asset-permissions-api/v1/assets/check-actions"]
      503 CONCAT                           R100 R101 R102
      504 GETTABLEKS                       R102 R27 K51 ["APIS_URL"]
      506 LOADK                            R103 K127 ["asset-permissions-api/v1/assets/check-permissions"]
      507 CONCAT                           R101 R102 R103
      508 GETTABLEKS                       R103 R27 K51 ["APIS_URL"]
      510 LOADK                            R104 K128 ["asset-permissions-api/v1/assets/permissions"]
      511 CONCAT                           R102 R103 R104
      512 GETTABLEKS                       R104 R27 K51 ["APIS_URL"]
      514 LOADK                            R105 K129 ["toolbox-service/v1"]
      515 CONCAT                           R103 R104 R105
      516 GETTABLEKS                       R105 R27 K51 ["APIS_URL"]
      518 LOADK                            R106 K130 ["toolbox-service/v1/%s?"]
      519 CONCAT                           R104 R105 R106
      520 GETTABLEKS                       R106 R27 K51 ["APIS_URL"]
      522 LOADK                            R107 K131 ["toolbox-service/v1/items/details?"]
      523 CONCAT                           R105 R106 R107
      524 GETTABLEKS                       R107 R27 K51 ["APIS_URL"]
      526 LOADK                            R108 K132 ["toolbox-service/v1/creations/group/%d/%s?"]
      527 CONCAT                           R106 R107 R108
      528 GETTABLEKS                       R108 R27 K51 ["APIS_URL"]
      530 LOADK                            R109 K133 ["toolbox-service/v1/creations/user/%d/%s?"]
      531 CONCAT                           R107 R108 R109
      532 MOVE                             R109 R103
      533 LOADK                            R110 K134 ["/voting/vote?"]
      534 CONCAT                           R108 R109 R110
      535 GETTABLEKS                       R110 R27 K49 ["ITEM_CONFIGURATION_URL"]
      537 LOADK                            R111 K135 ["v1/asset-types/%s/agents?"]
      538 CONCAT                           R109 R110 R111
      539 GETTABLEKS                       R111 R27 K51 ["APIS_URL"]
      541 LOADK                            R112 K136 ["autocomplete-studio/v2/suggest?"]
      542 CONCAT                           R110 R111 R112
      543 GETTABLEKS                       R112 R27 K51 ["APIS_URL"]
      545 LOADK                            R113 K137 ["marketplace-publishing-requirements-api/v1/requirements?"]
      546 CONCAT                           R111 R112 R113
      547 JUMPIFNOT                        R8 ; [+5]
      548 GETTABLEKS                       R113 R27 K51 ["APIS_URL"]
      550 LOADK                            R114 K138 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      551 CONCAT                           R112 R113 R114
      552 JUMP                             ; [+1]
      553 LOADNIL                          R112
      554 GETTABLEKS                       R114 R27 K51 ["APIS_URL"]
      556 LOADK                            R115 K139 ["user/cloud/v2/creator-store-products/"]
      557 CONCAT                           R113 R114 R115
      558 MOVE                             R115 R113
      559 LOADK                            R116 K140 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      560 CONCAT                           R114 R115 R116
      561 GETTABLEKS                       R116 R27 K62 ["PUBLISH_URL"]
      563 LOADK                            R117 K141 ["v1/assets/%d/media"]
      564 CONCAT                           R115 R116 R117
      565 GETTABLEKS                       R117 R27 K62 ["PUBLISH_URL"]
      567 LOADK                            R118 K142 ["v1/assets/%d/media/%d"]
      568 CONCAT                           R116 R117 R118
      569 GETTABLEKS                       R118 R27 K62 ["PUBLISH_URL"]
      571 LOADK                            R119 K143 ["v1/assets/%d/media/order"]
      572 CONCAT                           R117 R118 R119
      573 GETTABLEKS                       R119 R27 K62 ["PUBLISH_URL"]
      575 LOADK                            R120 K141 ["v1/assets/%d/media"]
      576 CONCAT                           R118 R119 R120
      577 GETTABLEKS                       R120 R27 K55 ["DEVELOP_URL"]
      579 LOADK                            R121 K144 ["v1/assets/%d/latest-saved-version"]
      580 CONCAT                           R119 R120 R121
      581 GETTABLEKS                       R121 R27 K55 ["DEVELOP_URL"]
      583 LOADK                            R122 K145 ["v1/universes/%d"]
      584 CONCAT                           R120 R121 R122
      585 GETTABLEKS                       R122 R27 K49 ["ITEM_CONFIGURATION_URL"]
      587 LOADK                            R123 K146 ["v1/permissions/groups?"]
      588 CONCAT                           R121 R122 R123
      589 GETTABLEKS                       R123 R27 K51 ["APIS_URL"]
      591 LOADK                            R124 K147 ["asset-permissions-api/v1/assets/access-properties"]
      592 CONCAT                           R122 R123 R124
      593 GETIMPORT                        R123 K15 [require]
      595 GETTABLEKS                       R126 R0 K4 ["Src"]
      597 GETTABLEKS                       R125 R126 K25 ["Flags"]
      599 GETTABLEKS                       R124 R125 K148 ["getFFlagEnableUploadingGroupBundles"]
      601 CALL                             R123 1 1
      602 DUPCLOSURE                       R124 K149 [PROTO_0]
      603 CAPTURE                          VAL R105
      604 CAPTURE                          VAL R27
      605 SETTABLEKS                       R124 R32 K150 ["constructGetItemDetails"]
      607 DUPCLOSURE                       R124 K151 [PROTO_1]
      608 CAPTURE                          VAL R36
      609 CAPTURE                          VAL R27
      610 SETTABLEKS                       R124 R32 K152 ["constructGetAssetsUrl"]
      612 GETTABLEKS                       R124 R20 K153 ["new"]
      614 NEWTABLE                         R125 0 4
      616 GETTABLEKS                       R127 R26 K154 ["MUSIC"]
      618 GETTABLEKS                       R126 R127 K155 ["name"]
      620 GETTABLEKS                       R128 R26 K156 ["SOUND_EFFECTS"]
      622 GETTABLEKS                       R127 R128 K155 ["name"]
      624 GETTABLEKS                       R129 R26 K157 ["UNKNOWN_AUDIO"]
      626 GETTABLEKS                       R128 R129 K155 ["name"]
      628 GETTABLEKS                       R130 R26 K158 ["FREE_FONTS"]
      630 GETTABLEKS                       R129 R130 K155 ["name"]
      632 SETLIST                          R125 R126 4 [1]
      634 CALL                             R124 1 1
      635 DUPCLOSURE                       R125 K159 [PROTO_2]
      636 CAPTURE                          VAL R124
      637 SETTABLEKS                       R125 R32 K160 ["usesMarketplaceRoute"]
      639 DUPCLOSURE                       R125 K161 [PROTO_3]
      640 CAPTURE                          VAL R103
      641 SETTABLEKS                       R125 R32 K162 ["constructCreateSaveUrl"]
      643 DUPCLOSURE                       R125 K163 [PROTO_4]
      644 CAPTURE                          VAL R103
      645 SETTABLEKS                       R125 R32 K164 ["constructDeleteSaveUrl"]
      647 DUPCLOSURE                       R125 K165 [PROTO_5]
      648 CAPTURE                          VAL R103
      649 SETTABLEKS                       R125 R32 K166 ["constructGetSaveUrl"]
      651 DUPCLOSURE                       R125 K167 [PROTO_6]
      652 CAPTURE                          VAL R21
      653 CAPTURE                          VAL R18
      654 CAPTURE                          VAL R22
      655 CAPTURE                          VAL R30
      656 CAPTURE                          VAL R26
      657 CAPTURE                          VAL R103
      658 CAPTURE                          VAL R32
      659 CAPTURE                          VAL R27
      660 CAPTURE                          VAL R7
      661 SETTABLEKS                       R125 R32 K168 ["constructGetToolboxItemsUrl"]
      663 DUPCLOSURE                       R125 K169 [PROTO_7]
      664 CAPTURE                          VAL R37
      665 CAPTURE                          VAL R27
      666 SETTABLEKS                       R125 R32 K170 ["getDevelopAssetUrl"]
      668 DUPCLOSURE                       R125 K171 [PROTO_8]
      669 CAPTURE                          VAL R35
      670 SETTABLEKS                       R125 R32 K172 ["constructGetAssetByIdUrl"]
      672 DUPCLOSURE                       R125 K173 [PROTO_9]
      673 CAPTURE                          VAL R34
      674 CAPTURE                          VAL R27
      675 SETTABLEKS                       R125 R32 K174 ["constructGetAllowedItemTypesUrl"]
      677 DUPCLOSURE                       R125 K175 [PROTO_10]
      678 CAPTURE                          VAL R106
      679 CAPTURE                          VAL R27
      680 SETTABLEKS                       R125 R32 K176 ["constructGetAssetGroupCreationsUrl"]
      682 DUPCLOSURE                       R125 K177 [PROTO_11]
      683 CAPTURE                          VAL R107
      684 CAPTURE                          VAL R27
      685 SETTABLEKS                       R125 R32 K178 ["constructGetAssetCreationsUrlToolboxService"]
      687 DUPCLOSURE                       R125 K179 [PROTO_12]
      688 CAPTURE                          VAL R40
      689 CAPTURE                          VAL R39
      690 SETTABLEKS                       R125 R32 K180 ["constructGetCreatorInfoUrl"]
      692 DUPCLOSURE                       R125 K181 [PROTO_13]
      693 CAPTURE                          VAL R51
      694 SETTABLEKS                       R125 R32 K182 ["constructGetBundleMetadataUrl"]
      696 DUPCLOSURE                       R125 K183 [PROTO_14]
      697 CAPTURE                          VAL R52
      698 SETTABLEKS                       R125 R32 K184 ["constructPostBundleCreationContextUrl"]
      700 DUPCLOSURE                       R125 K185 [PROTO_15]
      701 CAPTURE                          VAL R53
      702 SETTABLEKS                       R125 R32 K186 ["constructPostCreateBundleUrl"]
      704 DUPCLOSURE                       R125 K187 [PROTO_16]
      705 CAPTURE                          VAL R54
      706 SETTABLEKS                       R125 R32 K188 ["constructGetBundleCreationStatusUrl"]
      708 DUPCLOSURE                       R125 K189 [PROTO_17]
      709 CAPTURE                          VAL R55
      710 SETTABLEKS                       R125 R32 K190 ["constructGetDefaultCreateBundleDataSharingUrl"]
      712 DUPCLOSURE                       R125 K191 [PROTO_18]
      713 CAPTURE                          VAL R56
      714 SETTABLEKS                       R125 R32 K192 ["constructPostCreateBundleDataSharingUrl"]
      716 DUPCLOSURE                       R125 K193 [PROTO_19]
      717 CAPTURE                          VAL R57
      718 SETTABLEKS                       R125 R32 K194 ["constructPostCreateAvatarAssetDataSharingUrl"]
      720 MOVE                             R125 R6
      721 CALL                             R125 0 1
      722 JUMPIFNOT                        R125 ; [+5]
      723 DUPCLOSURE                       R125 K195 [PROTO_20]
      724 CAPTURE                          VAL R47
      725 CAPTURE                          VAL R27
      726 SETTABLEKS                       R125 R32 K196 ["constructUploadPermissionStatusUrl"]
      728 DUPCLOSURE                       R125 K197 [PROTO_21]
      729 CAPTURE                          VAL R49
      730 CAPTURE                          VAL R27
      731 SETTABLEKS                       R125 R32 K198 ["constructGetItemConfigurationDetailsUrl"]
      733 DUPCLOSURE                       R125 K199 [PROTO_22]
      734 CAPTURE                          VAL R48
      735 CAPTURE                          VAL R27
      736 SETTABLEKS                       R125 R32 K200 ["constructGetItemsByCreatorUrl"]
      738 DUPCLOSURE                       R125 K201 [PROTO_23]
      739 CAPTURE                          VAL R50
      740 CAPTURE                          VAL R27
      741 SETTABLEKS                       R125 R32 K202 ["constructGetItemUploadFeeUrl"]
      743 DUPCLOSURE                       R125 K203 [PROTO_24]
      744 CAPTURE                          VAL R41
      745 SETTABLEKS                       R125 R32 K204 ["constructUploadCatalogItemUrl"]
      747 DUPCLOSURE                       R125 K205 [PROTO_25]
      748 CAPTURE                          VAL R42
      749 SETTABLEKS                       R125 R32 K206 ["constructUploadAssetThumbnailUrl"]
      751 DUPCLOSURE                       R125 K207 [PROTO_26]
      752 CAPTURE                          VAL R46
      753 CAPTURE                          VAL R27
      754 SETTABLEKS                       R125 R32 K208 ["contuctGetThumbnailStatusUrl"]
      756 DUPCLOSURE                       R125 K209 [PROTO_27]
      757 CAPTURE                          VAL R44
      758 SETTABLEKS                       R125 R32 K210 ["constructConfigureSalesUrl"]
      760 DUPCLOSURE                       R125 K211 [PROTO_28]
      761 CAPTURE                          VAL R45
      762 SETTABLEKS                       R125 R32 K212 ["constructUpdateSalesUrl"]
      764 DUPCLOSURE                       R125 K213 [PROTO_29]
      765 CAPTURE                          VAL R43
      766 SETTABLEKS                       R125 R32 K214 ["constructConfigureCatalogItemUrl"]
      768 DUPCLOSURE                       R125 K215 [PROTO_30]
      769 CAPTURE                          VAL R108
      770 CAPTURE                          VAL R27
      771 SETTABLEKS                       R125 R32 K216 ["constructGetVoteUrl"]
      773 DUPCLOSURE                       R125 K217 [PROTO_31]
      774 CAPTURE                          VAL R59
      775 SETTABLEKS                       R125 R32 K218 ["constructPostVoteUrl"]
      777 DUPCLOSURE                       R125 K219 [PROTO_32]
      778 CAPTURE                          VAL R60
      779 SETTABLEKS                       R125 R32 K220 ["constructPostUnvoteUrl"]
      781 DUPCLOSURE                       R125 K221 [PROTO_33]
      782 CAPTURE                          VAL R103
      783 SETTABLEKS                       R125 R32 K222 ["constructInsertAssetUrl"]
      785 DUPCLOSURE                       R125 K223 [PROTO_34]
      786 CAPTURE                          VAL R64
      787 CAPTURE                          VAL R27
      788 SETTABLEKS                       R125 R32 K224 ["constructGetPluginInfoUrl"]
      790 DUPCLOSURE                       R125 K225 [PROTO_35]
      791 CAPTURE                          VAL R15
      792 CAPTURE                          VAL R63
      793 CAPTURE                          VAL R62
      794 SETTABLEKS                       R125 R32 K226 ["constructGetManageableGroupsUrl"]
      796 DUPCLOSURE                       R125 K227 [PROTO_36]
      797 CAPTURE                          VAL R27
      798 SETTABLEKS                       R125 R32 K228 ["constructGetGroupsForSurfaceUrl"]
      800 DUPCLOSURE                       R125 K229 [PROTO_37]
      801 CAPTURE                          VAL R27
      802 SETTABLEKS                       R125 R32 K230 ["constructAssetIdUserContextString"]
      804 DUPCLOSURE                       R125 K231 [PROTO_38]
      805 CAPTURE                          VAL R9
      806 SETTABLEKS                       R125 R32 K232 ["constructAssetIdString"]
      808 DUPCLOSURE                       R125 K233 [PROTO_39]
      809 CAPTURE                          VAL R65
      810 CAPTURE                          VAL R27
      811 SETTABLEKS                       R125 R32 K234 ["constructAssetIdUrl"]
      813 DUPCLOSURE                       R125 K235 [PROTO_40]
      814 CAPTURE                          VAL R70
      815 SETTABLEKS                       R125 R32 K236 ["constructAssetSavedVersionString"]
      817 DUPCLOSURE                       R125 K237 [PROTO_41]
      818 CAPTURE                          VAL R75
      819 SETTABLEKS                       R125 R32 K238 ["constructGetPackageVersionDescriptionString"]
      821 DUPCLOSURE                       R125 K239 [PROTO_42]
      822 CAPTURE                          VAL R76
      823 SETTABLEKS                       R125 R32 K240 ["constructSetPackageVersionDescriptionString"]
      825 DUPCLOSURE                       R125 K241 [PROTO_43]
      826 CAPTURE                          VAL R73
      827 CAPTURE                          VAL R27
      828 SETTABLEKS                       R125 R32 K242 ["constructRevertAssetVersionString"]
      830 DUPCLOSURE                       R125 K243 [PROTO_44]
      831 CAPTURE                          VAL R74
      832 CAPTURE                          VAL R27
      833 SETTABLEKS                       R125 R32 K244 ["constructGetDevelopAssetMetadata"]
      835 DUPCLOSURE                       R125 K245 [PROTO_45]
      836 CAPTURE                          VAL R66
      837 CAPTURE                          VAL R27
      838 SETTABLEKS                       R125 R32 K246 ["constructAssetGameAssetIdUrl"]
      840 DUPCLOSURE                       R125 K247 [PROTO_46]
      841 CAPTURE                          VAL R13
      842 SETTABLEKS                       R125 R32 K248 ["constructAssetThumbnailUrl"]
      844 DUPCLOSURE                       R125 K249 [PROTO_47]
      845 SETTABLEKS                       R125 R32 K250 ["constructRBXThumbUrl"]
      847 DUPCLOSURE                       R125 K251 [PROTO_48]
      848 CAPTURE                          VAL R27
      849 CAPTURE                          VAL R2
      850 SETTABLEKS                       R125 R32 K252 ["constructUserSearchUrl"]
      852 DUPCLOSURE                       R125 K253 [PROTO_49]
      853 CAPTURE                          VAL R68
      854 CAPTURE                          VAL R27
      855 SETTABLEKS                       R125 R32 K254 ["constructUserThumbnailUrl"]
      857 DUPCLOSURE                       R125 K255 [PROTO_50]
      858 CAPTURE                          VAL R69
      859 SETTABLEKS                       R125 R32 K256 ["constructFavoriteCountsUrl"]
      861 DUPCLOSURE                       R125 K257 [PROTO_51]
      862 CAPTURE                          VAL R69
      863 SETTABLEKS                       R125 R32 K258 ["constructGetFavoritedUrl"]
      865 DUPCLOSURE                       R125 K259 [PROTO_52]
      866 CAPTURE                          VAL R69
      867 SETTABLEKS                       R125 R32 K260 ["constructPostFavoriteUrl"]
      869 DUPCLOSURE                       R125 K261 [PROTO_53]
      870 CAPTURE                          VAL R69
      871 SETTABLEKS                       R125 R32 K262 ["constructDeleteFavoriteUrl"]
      873 DUPCLOSURE                       R125 K263 [PROTO_54]
      874 CAPTURE                          VAL R81
      875 SETTABLEKS                       R125 R32 K264 ["constructPatchAssetUrl"]
      877 DUPCLOSURE                       R125 K265 [PROTO_55]
      878 CAPTURE                          VAL R77
      879 SETTABLEKS                       R125 R32 K266 ["constructOperationUrl"]
      881 DUPCLOSURE                       R125 K267 [PROTO_56]
      882 CAPTURE                          VAL R78
      883 SETTABLEKS                       R125 R32 K268 ["constructPostUploadAnimationUrl"]
      885 DUPCLOSURE                       R125 K269 [PROTO_57]
      886 CAPTURE                          VAL R80
      887 SETTABLEKS                       R125 R32 K270 ["constructValidateAnimationUrl"]
      889 DUPCLOSURE                       R125 K271 [PROTO_58]
      890 CAPTURE                          VAL R79
      891 SETTABLEKS                       R125 R32 K272 ["constructPostOverwriteAnimationUrl"]
      893 DUPCLOSURE                       R125 K273 [PROTO_59]
      894 CAPTURE                          VAL R83
      895 SETTABLEKS                       R125 R32 K274 ["constructGetMyGroupUrl"]
      897 DUPCLOSURE                       R125 K275 [PROTO_60]
      898 CAPTURE                          VAL R84
      899 SETTABLEKS                       R125 R32 K276 ["constructIsVerifiedCreatorUrl"]
      901 DUPCLOSURE                       R125 K277 [PROTO_61]
      902 CAPTURE                          VAL R86
      903 SETTABLEKS                       R125 R32 K278 ["constructGetUserFriendsUrl"]
      905 DUPCLOSURE                       R125 K279 [PROTO_62]
      906 CAPTURE                          VAL R99
      907 SETTABLEKS                       R125 R32 K280 ["constructAssetPermissionsUrl"]
      909 DUPCLOSURE                       R125 K281 [PROTO_63]
      910 CAPTURE                          VAL R102
      911 SETTABLEKS                       R125 R32 K282 ["constructAssetBatchGrantPermissionsUrl"]
      913 DUPCLOSURE                       R125 K283 [PROTO_64]
      914 CAPTURE                          VAL R100
      915 SETTABLEKS                       R125 R32 K284 ["constructAssetCheckPermissionsUrl"]
      917 DUPCLOSURE                       R125 K285 [PROTO_65]
      918 CAPTURE                          VAL R87
      919 SETTABLEKS                       R125 R32 K286 ["getRobuxPurchaseUrl"]
      921 DUPCLOSURE                       R125 K287 [PROTO_66]
      922 CAPTURE                          VAL R98
      923 SETTABLEKS                       R125 R32 K288 ["constructPostPackageMetadata"]
      925 DUPCLOSURE                       R125 K289 [PROTO_67]
      926 CAPTURE                          VAL R88
      927 SETTABLEKS                       R125 R32 K290 ["constructGetRobuxBalanceUrl"]
      929 DUPCLOSURE                       R125 K291 [PROTO_68]
      930 CAPTURE                          VAL R85
      931 SETTABLEKS                       R125 R32 K292 ["constructGetGroupRoleInfoUrl"]
      933 DUPCLOSURE                       R125 K293 [PROTO_69]
      934 CAPTURE                          VAL R101
      935 SETTABLEKS                       R125 R32 K294 ["constructAssetCheckPermissionsBatchUrl"]
      937 DUPCLOSURE                       R125 K295 [PROTO_70]
      938 CAPTURE                          VAL R10
      939 CAPTURE                          VAL R92
      940 CAPTURE                          VAL R91
      941 CAPTURE                          VAL R90
      942 SETTABLEKS                       R125 R32 K296 ["constructAssetPurchaseUrl"]
      944 DUPCLOSURE                       R125 K297 [PROTO_71]
      945 CAPTURE                          VAL R93
      946 SETTABLEKS                       R125 R32 K298 ["constructPurchaserStatusUrl"]
      948 MOVE                             R125 R11
      949 CALL                             R125 0 1
      950 JUMPIFNOT                        R125 ; [+4]
      951 DUPCLOSURE                       R125 K299 [PROTO_72]
      952 CAPTURE                          VAL R94
      953 SETTABLEKS                       R125 R32 K300 ["constructSellerStatusUrl"]
      955 DUPCLOSURE                       R125 K301 [PROTO_73]
      956 CAPTURE                          VAL R82
      957 CAPTURE                          VAL R27
      958 SETTABLEKS                       R125 R32 K302 ["constructUploadCatalogItemFormatUrl"]
      960 DUPCLOSURE                       R125 K303 [PROTO_74]
      961 CAPTURE                          VAL R109
      962 CAPTURE                          VAL R27
      963 SETTABLEKS                       R125 R32 K304 ["constructAssetTypeAgentsUrl"]
      965 DUPCLOSURE                       R125 K305 [PROTO_75]
      966 CAPTURE                          VAL R110
      967 CAPTURE                          VAL R27
      968 SETTABLEKS                       R125 R32 K306 ["constructToolboxAutocompleteUrl"]
      970 DUPCLOSURE                       R125 K307 [PROTO_76]
      971 CAPTURE                          VAL R103
      972 CAPTURE                          VAL R27
      973 CAPTURE                          VAL R30
      974 SETTABLEKS                       R125 R32 K308 ["constructGetHomeConfigurationUrl"]
      976 DUPCLOSURE                       R125 K309 [PROTO_77]
      977 CAPTURE                          VAL R111
      978 CAPTURE                          VAL R27
      979 SETTABLEKS                       R125 R32 K310 ["constructPublishingRequirementsUrl"]
      981 DUPCLOSURE                       R125 K311 [PROTO_78]
      982 CAPTURE                          VAL R27
      983 SETTABLEKS                       R125 R32 K312 ["getCreatorMarketplaceQuotas"]
      985 DUPCLOSURE                       R125 K313 [PROTO_79]
      986 CAPTURE                          VAL R115
      987 SETTABLEKS                       R125 R32 K314 ["constructGetAssetMediaIdsUrl"]
      989 DUPCLOSURE                       R125 K315 [PROTO_80]
      990 CAPTURE                          VAL R116
      991 SETTABLEKS                       R125 R32 K316 ["constructDeleteAssetMediaUrl"]
      993 DUPCLOSURE                       R125 K317 [PROTO_81]
      994 CAPTURE                          VAL R117
      995 SETTABLEKS                       R125 R32 K318 ["constructPostSetAssetMediaOrder"]
      997 DUPCLOSURE                       R125 K319 [PROTO_82]
      998 CAPTURE                          VAL R118
      999 SETTABLEKS                       R125 R32 K320 ["constructPostUploadAssetMedia"]
     1001 JUMPIFNOT                        R3 ; [+4]
     1002 DUPCLOSURE                       R125 K321 [PROTO_83]
     1003 CAPTURE                          VAL R28
     1004 SETTABLEKS                       R125 R32 K322 ["constructCreatorDashboardAssetConfigUrl"]
     1006 JUMPIFNOT                        R5 ; [+6]
     1007 DUPCLOSURE                       R125 K323 [PROTO_84]
     1008 CAPTURE                          VAL R28
     1009 CAPTURE                          VAL R95
     1010 SETTABLEKS                       R125 R32 K324 ["constructCreatorDashboardConfigAvatarAssetUrl"]
     1012 JUMP                             ; [+5]
     1013 DUPCLOSURE                       R125 K325 [PROTO_85]
     1014 CAPTURE                          VAL R28
     1015 CAPTURE                          VAL R95
     1016 SETTABLEKS                       R125 R32 K326 ["constructCreatorDashboardAvatarAssetUrl"]
     1018 MOVE                             R125 R12
     1019 CALL                             R125 0 1
     1020 JUMPIFNOT                        R125 ; [+5]
     1021 DUPCLOSURE                       R125 K327 [PROTO_86]
     1022 CAPTURE                          VAL R28
     1023 CAPTURE                          VAL R97
     1024 SETTABLEKS                       R125 R32 K328 ["constructCreatorDashboardCreationsPageUrl"]
     1026 JUMPIFNOT                        R4 ; [+5]
     1027 DUPCLOSURE                       R125 K329 [PROTO_87]
     1028 CAPTURE                          VAL R28
     1029 CAPTURE                          VAL R96
     1030 SETTABLEKS                       R125 R32 K330 ["constructCreatorDashboardBundleConfigureUrl"]
     1032 DUPCLOSURE                       R125 K331 [PROTO_88]
     1033 CAPTURE                          VAL R28
     1034 SETTABLEKS                       R125 R32 K332 ["constructCreatorStoreConfigurationUrl"]
     1036 DUPCLOSURE                       R125 K333 [PROTO_89]
     1037 CAPTURE                          VAL R120
     1038 SETTABLEKS                       R125 R32 K334 ["constructGetUniverseInfo"]
     1040 MOVE                             R125 R8
     1041 CALL                             R125 0 1
     1042 JUMPIFNOT                        R125 ; [+4]
     1043 DUPCLOSURE                       R125 K335 [PROTO_90]
     1044 CAPTURE                          VAL R112
     1045 SETTABLEKS                       R125 R32 K336 ["constructCodeUnderstandingSummaryUrl"]
     1047 DUPCLOSURE                       R125 K337 [PROTO_91]
     1048 CAPTURE                          VAL R114
     1049 CAPTURE                          VAL R29
     1050 SETTABLEKS                       R125 R32 K338 ["constructGetFiatProductUrl"]
     1052 MOVE                             R125 R123
     1053 CALL                             R125 0 1
     1054 JUMPIFNOT                        R125 ; [+5]
     1055 DUPCLOSURE                       R125 K339 [PROTO_92]
     1056 CAPTURE                          VAL R121
     1057 CAPTURE                          VAL R27
     1058 SETTABLEKS                       R125 R32 K340 ["constructAllowedGroupsForActionUrl"]
     1060 DUPCLOSURE                       R125 K341 [PROTO_93]
     1061 CAPTURE                          VAL R33
     1062 SETTABLEKS                       R125 R32 K342 ["constructCreatorStoreUrl"]
     1064 MOVE                             R125 R14
     1065 CALL                             R125 0 1
     1066 JUMPIFNOT                        R125 ; [+4]
     1067 DUPCLOSURE                       R125 K343 [PROTO_94]
     1068 CAPTURE                          VAL R122
     1069 SETTABLEKS                       R125 R32 K344 ["constructBatchAssetAccessPropertiesUrl"]
     1071 MOVE                             R125 R31
     1072 MOVE                             R126 R32
     1073 CALL                             R125 1 1
     1074 RETURN                           R125 1
