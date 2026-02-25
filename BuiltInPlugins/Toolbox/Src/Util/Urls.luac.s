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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["makeQueryString"]
        4 DUPTABLE                         R5 K3 [{"prefix", "numberOfResults"}]
        5 SETTABLEKS                       R0 R5 K1 ["prefix"]
        7 SETTABLEKS                       R1 R5 K2 ["numberOfResults"]
        9 CALL                             R4 1 1
       10 CONCAT                           R2 R3 R4
       11 RETURN                           R2 1

PROTO_75:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_76:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"itemIds"}]
        5 GETIMPORT                        R5 K5 [string.format]
        7 LOADK                            R6 K6 ["AssetId:%d"]
        8 MOVE                             R7 R0
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["itemIds"]
       12 CALL                             R3 1 1
       13 CONCAT                           R1 R2 R3
       14 RETURN                           R1 1

PROTO_77:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_78:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
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

PROTO_94:
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
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_98:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["makeQueryString"]
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
      144 GETIMPORT                        R18 K15 [require]
      146 GETTABLEKS                       R21 R0 K4 ["Src"]
      148 GETTABLEKS                       R20 R21 K25 ["Flags"]
      150 GETTABLEKS                       R19 R20 K30 ["getFFlagRemoveItemTags"]
      152 CALL                             R18 1 1
      153 GETTABLEKS                       R19 R0 K31 ["Packages"]
      155 GETIMPORT                        R20 K15 [require]
      157 GETTABLEKS                       R21 R19 K32 ["Framework"]
      159 CALL                             R20 1 1
      160 GETIMPORT                        R21 K15 [require]
      162 GETTABLEKS                       R22 R19 K33 ["Dash"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K15 [require]
      167 GETTABLEKS                       R23 R19 K34 ["LuauPolyfill"]
      169 CALL                             R22 1 1
      170 GETTABLEKS                       R23 R22 K35 ["Set"]
      172 GETTABLEKS                       R24 R22 K36 ["Object"]
      174 GETTABLEKS                       R25 R22 K37 ["Array"]
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R29 R0 K4 ["Src"]
      180 GETTABLEKS                       R28 R29 K38 ["Types"]
      182 GETTABLEKS                       R27 R28 K39 ["AssetQuotaTypes"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R30 R0 K4 ["Src"]
      189 GETTABLEKS                       R29 R30 K38 ["Types"]
      191 GETTABLEKS                       R28 R29 K40 ["AssetSubTypes"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K15 [require]
      196 GETTABLEKS                       R31 R0 K4 ["Src"]
      198 GETTABLEKS                       R30 R31 K38 ["Types"]
      200 GETTABLEKS                       R29 R30 K41 ["HomeTypes"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K15 [require]
      205 GETTABLEKS                       R32 R0 K4 ["Src"]
      207 GETTABLEKS                       R31 R32 K38 ["Types"]
      209 GETTABLEKS                       R30 R31 K42 ["Category"]
      211 CALL                             R29 1 1
      212 GETIMPORT                        R30 K15 [require]
      214 GETTABLEKS                       R33 R0 K43 ["Libs"]
      216 GETTABLEKS                       R32 R33 K44 ["Http"]
      218 GETTABLEKS                       R31 R32 K45 ["Url"]
      220 CALL                             R30 1 1
      221 GETIMPORT                        R31 K15 [require]
      223 GETTABLEKS                       R34 R0 K4 ["Src"]
      225 GETTABLEKS                       R33 R34 K5 ["Util"]
      227 GETTABLEKS                       R32 R33 K46 ["ToolboxUtilities"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K15 [require]
      232 GETTABLEKS                       R33 R1 K47 ["FiatUtil"]
      234 CALL                             R32 1 1
      235 GETIMPORT                        R33 K15 [require]
      237 GETTABLEKS                       R34 R1 K48 ["getPlaceId"]
      239 CALL                             R33 1 1
      240 GETIMPORT                        R34 K15 [require]
      242 GETTABLEKS                       R35 R1 K49 ["wrapStrictTable"]
      244 CALL                             R34 1 1
      245 NEWTABLE                         R35 128 0
      247 GETTABLEKS                       R37 R30 K50 ["CREATE_URL"]
      249 LOADK                            R38 K51 ["store/"]
      250 CONCAT                           R36 R37 R38
      251 GETTABLEKS                       R38 R30 K52 ["ITEM_CONFIGURATION_URL"]
      253 LOADK                            R39 K53 ["v1/permissions/item-types?"]
      254 CONCAT                           R37 R38 R39
      255 MOVE                             R39 R15
      256 CALL                             R39 0 1
      257 JUMPIFNOT                        R39 ; [+5]
      258 GETTABLEKS                       R39 R30 K54 ["APIS_URL"]
      260 LOADK                            R40 K55 ["assets/user-auth/v1/assets/%d"]
      261 CONCAT                           R38 R39 R40
      262 JUMP                             ; [+1]
      263 LOADNIL                          R38
      264 GETTABLEKS                       R40 R30 K56 ["BASE_URL"]
      266 LOADK                            R41 K57 ["IDE/Toolbox/Items?"]
      267 CONCAT                           R39 R40 R41
      268 GETTABLEKS                       R41 R30 K58 ["DEVELOP_URL"]
      270 LOADK                            R42 K59 ["v1/toolbox/items?"]
      271 CONCAT                           R40 R41 R42
      272 GETTABLEKS                       R42 R30 K52 ["ITEM_CONFIGURATION_URL"]
      274 LOADK                            R43 K60 ["v1/creations/get-assets?"]
      275 CONCAT                           R41 R42 R43
      276 MOVE                             R43 R17
      277 CALL                             R43 0 1
      278 JUMPIFNOT                        R43 ; [+2]
      279 LOADNIL                          R42
      280 JUMP                             ; [+4]
      281 GETTABLEKS                       R43 R30 K52 ["ITEM_CONFIGURATION_URL"]
      283 LOADK                            R44 K61 ["v1/creations/get-asset-details"]
      284 CONCAT                           R42 R43 R44
      285 GETTABLEKS                       R44 R30 K62 ["USERS_URL"]
      287 LOADK                            R45 K63 ["/v1/users/%d"]
      288 CONCAT                           R43 R44 R45
      289 GETTABLEKS                       R45 R30 K64 ["GROUP_URL"]
      291 LOADK                            R46 K65 ["v0/groups/%d"]
      292 CONCAT                           R44 R45 R46
      293 GETTABLEKS                       R46 R30 K66 ["PUBLISH_URL"]
      295 LOADK                            R47 K67 ["v1/assets/upload"]
      296 CONCAT                           R45 R46 R47
      297 GETTABLEKS                       R47 R30 K66 ["PUBLISH_URL"]
      299 LOADK                            R48 K68 ["v1/assets/%d/thumbnail"]
      300 CONCAT                           R46 R47 R48
      301 GETTABLEKS                       R48 R30 K58 ["DEVELOP_URL"]
      303 LOADK                            R49 K69 ["v1/assets/%d"]
      304 CONCAT                           R47 R48 R49
      305 GETTABLEKS                       R49 R30 K52 ["ITEM_CONFIGURATION_URL"]
      307 LOADK                            R50 K70 ["v1/assets/%d/release"]
      308 CONCAT                           R48 R49 R50
      309 GETTABLEKS                       R50 R30 K52 ["ITEM_CONFIGURATION_URL"]
      311 LOADK                            R51 K71 ["v1/assets/%d/update-price"]
      312 CONCAT                           R49 R50 R51
      313 GETTABLEKS                       R51 R30 K72 ["THUMBNAIL_URL"]
      315 LOADK                            R52 K73 ["v1/assets?"]
      316 CONCAT                           R50 R51 R52
      317 MOVE                             R52 R6
      318 CALL                             R52 0 1
      319 JUMPIFNOT                        R52 ; [+5]
      320 GETTABLEKS                       R52 R30 K52 ["ITEM_CONFIGURATION_URL"]
      322 LOADK                            R53 K74 ["v1/collectibles/check-item-upload-access?"]
      323 CONCAT                           R51 R52 R53
      324 JUMP                             ; [+1]
      325 LOADNIL                          R51
      326 GETTABLEKS                       R53 R30 K52 ["ITEM_CONFIGURATION_URL"]
      328 LOADK                            R54 K75 ["v1/items/by-creator?"]
      329 CONCAT                           R52 R53 R54
      330 MOVE                             R54 R17
      331 CALL                             R54 0 1
      332 JUMPIFNOT                        R54 ; [+5]
      333 GETTABLEKS                       R54 R30 K52 ["ITEM_CONFIGURATION_URL"]
      335 LOADK                            R55 K76 ["v1/items?"]
      336 CONCAT                           R53 R54 R55
      337 JUMP                             ; [+1]
      338 LOADNIL                          R53
      339 GETTABLEKS                       R55 R30 K52 ["ITEM_CONFIGURATION_URL"]
      341 LOADK                            R56 K77 ["v1/items/upload-fee?"]
      342 CONCAT                           R54 R55 R56
      343 GETTABLEKS                       R56 R30 K52 ["ITEM_CONFIGURATION_URL"]
      345 LOADK                            R57 K78 ["v1/bundles/metadata"]
      346 CONCAT                           R55 R56 R57
      347 GETTABLEKS                       R57 R30 K52 ["ITEM_CONFIGURATION_URL"]
      349 LOADK                            R58 K79 ["v1/bundles/create-context"]
      350 CONCAT                           R56 R57 R58
      351 GETTABLEKS                       R58 R30 K52 ["ITEM_CONFIGURATION_URL"]
      353 LOADK                            R59 K80 ["v1/bundles"]
      354 CONCAT                           R57 R58 R59
      355 GETTABLEKS                       R59 R30 K52 ["ITEM_CONFIGURATION_URL"]
      357 LOADK                            R60 K81 ["v1/bundles/status"]
      358 CONCAT                           R58 R59 R60
      359 GETTABLEKS                       R60 R30 K54 ["APIS_URL"]
      361 LOADK                            R61 K82 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      362 CONCAT                           R59 R60 R61
      363 GETTABLEKS                       R61 R30 K54 ["APIS_URL"]
      365 LOADK                            R62 K83 ["resource-settings/v1/bundles"]
      366 CONCAT                           R60 R61 R62
      367 GETTABLEKS                       R62 R30 K54 ["APIS_URL"]
      369 LOADK                            R63 K84 ["resource-settings/v1/avatar-assets"]
      370 CONCAT                           R61 R62 R63
      371 GETTABLEKS                       R63 R30 K56 ["BASE_URL"]
      373 LOADK                            R64 K85 ["voting/vote?assetId=%s&vote=%s"]
      374 CONCAT                           R62 R63 R64
      375 GETTABLEKS                       R64 R30 K54 ["APIS_URL"]
      377 LOADK                            R65 K86 ["voting-api/vote/asset/%s?vote=%s"]
      378 CONCAT                           R63 R64 R65
      379 GETTABLEKS                       R65 R30 K54 ["APIS_URL"]
      381 LOADK                            R66 K87 ["voting-api/vote/asset/%s"]
      382 CONCAT                           R64 R65 R66
      383 GETTABLEKS                       R66 R30 K56 ["BASE_URL"]
      385 LOADK                            R67 K88 ["IDE/Toolbox/InsertAsset?"]
      386 CONCAT                           R65 R66 R67
      387 GETTABLEKS                       R67 R30 K58 ["DEVELOP_URL"]
      389 LOADK                            R68 K89 ["v1/user/groups/canmanage"]
      390 CONCAT                           R66 R67 R68
      391 GETTABLEKS                       R68 R30 K54 ["APIS_URL"]
      393 LOADK                            R69 K90 ["orgs/v2/groups/permissions/createassets"]
      394 CONCAT                           R67 R68 R69
      395 GETTABLEKS                       R69 R30 K54 ["APIS_URL"]
      397 LOADK                            R70 K91 ["studio-plugin-api/v1/plugins?"]
      398 CONCAT                           R68 R69 R70
      399 GETTABLEKS                       R70 R30 K56 ["BASE_URL"]
      401 LOADK                            R71 K92 ["asset/?"]
      402 CONCAT                           R69 R70 R71
      403 GETTABLEKS                       R71 R30 K93 ["GAME_ASSET_URL"]
      405 LOADK                            R72 K92 ["asset/?"]
      406 CONCAT                           R70 R71 R72
      407 GETTABLEKS                       R72 R30 K93 ["GAME_ASSET_URL"]
      409 LOADK                            R73 K94 ["asset-thumbnail/image?"]
      410 CONCAT                           R71 R72 R73
      411 GETTABLEKS                       R73 R30 K56 ["BASE_URL"]
      413 LOADK                            R74 K95 ["headshot-thumbnail/image?"]
      414 CONCAT                           R72 R73 R74
      415 GETTABLEKS                       R74 R30 K96 ["CATALOG_URL"]
      417 LOADK                            R75 K97 ["v1%s"]
      418 CONCAT                           R73 R74 R75
      419 GETTABLEKS                       R75 R30 K58 ["DEVELOP_URL"]
      421 LOADK                            R76 K98 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      422 CONCAT                           R74 R75 R76
      423 GETTABLEKS                       R76 R30 K58 ["DEVELOP_URL"]
      425 LOADK                            R77 K99 ["v1/assets/%s/saved-versions?limit=%s"]
      426 CONCAT                           R75 R76 R77
      427 GETTABLEKS                       R77 R30 K58 ["DEVELOP_URL"]
      429 LOADK                            R78 K100 ["v1/assets/%s/saved-versions?cursor=%s"]
      430 CONCAT                           R76 R77 R78
      431 GETTABLEKS                       R78 R30 K58 ["DEVELOP_URL"]
      433 LOADK                            R79 K101 ["v1/assets/%s/revert-version?"]
      434 CONCAT                           R77 R78 R79
      435 GETTABLEKS                       R79 R30 K58 ["DEVELOP_URL"]
      437 LOADK                            R80 K73 ["v1/assets?"]
      438 CONCAT                           R78 R79 R80
      439 GETTABLEKS                       R80 R30 K54 ["APIS_URL"]
      441 LOADK                            R81 K102 ["packages-api/v1/packages/assets/versions/notes/get"]
      442 CONCAT                           R79 R80 R81
      443 GETTABLEKS                       R81 R30 K54 ["APIS_URL"]
      445 LOADK                            R82 K103 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      446 CONCAT                           R80 R81 R82
      447 GETTABLEKS                       R82 R30 K54 ["APIS_URL"]
      449 LOADK                            R83 K104 ["assets/user-auth/v1/operations/%s"]
      450 CONCAT                           R81 R82 R83
      451 GETTABLEKS                       R83 R30 K54 ["APIS_URL"]
      453 LOADK                            R84 K105 ["assets/user-auth/v1/assets"]
      454 CONCAT                           R82 R83 R84
      455 GETTABLEKS                       R84 R30 K54 ["APIS_URL"]
      457 LOADK                            R85 K106 ["assets/user-auth/v1/assets/%s"]
      458 CONCAT                           R83 R84 R85
      459 GETTABLEKS                       R85 R30 K54 ["APIS_URL"]
      461 LOADK                            R86 K106 ["assets/user-auth/v1/assets/%s"]
      462 CONCAT                           R84 R85 R86
      463 GETTABLEKS                       R86 R30 K58 ["DEVELOP_URL"]
      465 LOADK                            R87 K107 ["v1/assets/%s?"]
      466 CONCAT                           R85 R86 R87
      467 GETTABLEKS                       R87 R30 K108 ["DATA_URL"]
      469 LOADK                            R88 K109 ["Data/Upload.ashx?"]
      470 CONCAT                           R86 R87 R88
      471 GETTABLEKS                       R88 R30 K64 ["GROUP_URL"]
      473 LOADK                            R89 K110 ["v2/users/%%20%%20%s/groups/roles"]
      474 CONCAT                           R87 R88 R89
      475 GETTABLEKS                       R89 R30 K58 ["DEVELOP_URL"]
      477 LOADK                            R90 K111 ["v1/user/is-verified-creator"]
      478 CONCAT                           R88 R89 R90
      479 GETTABLEKS                       R90 R30 K64 ["GROUP_URL"]
      481 LOADK                            R91 K112 ["v1/groups/%s/roles"]
      482 CONCAT                           R89 R90 R91
      483 GETTABLEKS                       R91 R30 K113 ["FRIENDS_URL"]
      485 LOADK                            R92 K114 ["v1/users/%d/friends"]
      486 CONCAT                           R90 R91 R92
      487 GETTABLEKS                       R92 R30 K56 ["BASE_URL"]
      489 LOADK                            R93 K115 ["upgrades/robux"]
      490 CONCAT                           R91 R92 R93
      491 GETTABLEKS                       R93 R30 K116 ["ECONOMY_URL"]
      493 LOADK                            R94 K117 ["v1/users/%d/currency"]
      494 CONCAT                           R92 R93 R94
      495 GETTABLEKS                       R94 R30 K58 ["DEVELOP_URL"]
      497 LOADK                            R95 K118 ["v1/user/%d/canmanage/%d"]
      498 CONCAT                           R93 R94 R95
      499 GETTABLEKS                       R95 R30 K116 ["ECONOMY_URL"]
      501 LOADK                            R96 K119 ["/v1/purchases/products/%d"]
      502 CONCAT                           R94 R95 R96
      503 GETTABLEKS                       R96 R30 K54 ["APIS_URL"]
      505 LOADK                            R97 K120 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      506 CONCAT                           R95 R96 R97
      507 GETTABLEKS                       R97 R30 K54 ["APIS_URL"]
      509 LOADK                            R98 K121 ["marketplace-fiat-service/v1/product/purchase"]
      510 CONCAT                           R96 R97 R98
      511 GETTABLEKS                       R98 R30 K54 ["APIS_URL"]
      513 LOADK                            R99 K122 ["marketplace-fiat-service/v1/purchaser/status"]
      514 CONCAT                           R97 R98 R99
      515 MOVE                             R99 R11
      516 CALL                             R99 0 1
      517 JUMPIFNOT                        R99 ; [+5]
      518 GETTABLEKS                       R99 R30 K54 ["APIS_URL"]
      520 LOADK                            R100 K123 ["marketplace-fiat-service/v1/seller/status"]
      521 CONCAT                           R98 R99 R100
      522 JUMP                             ; [+1]
      523 LOADNIL                          R98
      524 JUMPIFNOT                        R5 ; [+2]
      525 LOADK                            R99 K124 ["/creations/catalog/%d/configure"]
      526 JUMP                             ; [+1]
      527 LOADK                            R99 K125 ["/creations?activeTab=TShirt"]
      528 JUMPIFNOT                        R4 ; [+2]
      529 LOADK                            R100 K126 ["/creations/bundle/%d/configure"]
      530 JUMP                             ; [+1]
      531 LOADNIL                          R100
      532 MOVE                             R102 R12
      533 CALL                             R102 0 1
      534 JUMPIFNOT                        R102 ; [+2]
      535 LOADK                            R101 K127 ["/creations"]
      536 JUMP                             ; [+1]
      537 LOADNIL                          R101
      538 GETTABLEKS                       R103 R30 K54 ["APIS_URL"]
      540 LOADK                            R104 K128 ["packages-api/v1/packages/assets/versions/metadata/get"]
      541 CONCAT                           R102 R103 R104
      542 GETTABLEKS                       R104 R30 K54 ["APIS_URL"]
      544 LOADK                            R105 K129 ["asset-permissions-api/v1/assets/%s/permissions"]
      545 CONCAT                           R103 R104 R105
      546 GETTABLEKS                       R105 R30 K54 ["APIS_URL"]
      548 LOADK                            R106 K130 ["asset-permissions-api/v1/assets/check-actions"]
      549 CONCAT                           R104 R105 R106
      550 GETTABLEKS                       R106 R30 K54 ["APIS_URL"]
      552 LOADK                            R107 K131 ["asset-permissions-api/v1/assets/check-permissions"]
      553 CONCAT                           R105 R106 R107
      554 GETTABLEKS                       R107 R30 K54 ["APIS_URL"]
      556 LOADK                            R108 K132 ["asset-permissions-api/v1/assets/permissions"]
      557 CONCAT                           R106 R107 R108
      558 MOVE                             R108 R18
      559 CALL                             R108 0 1
      560 JUMPIFNOT                        R108 ; [+2]
      561 LOADNIL                          R107
      562 JUMP                             ; [+4]
      563 GETTABLEKS                       R108 R30 K52 ["ITEM_CONFIGURATION_URL"]
      565 LOADK                            R109 K133 ["v1/tags/prefix-search?"]
      566 CONCAT                           R107 R108 R109
      567 MOVE                             R109 R18
      568 CALL                             R109 0 1
      569 JUMPIFNOT                        R109 ; [+2]
      570 LOADNIL                          R108
      571 JUMP                             ; [+4]
      572 GETTABLEKS                       R109 R30 K52 ["ITEM_CONFIGURATION_URL"]
      574 LOADK                            R110 K134 ["v1/item-tags/metadata"]
      575 CONCAT                           R108 R109 R110
      576 MOVE                             R110 R18
      577 CALL                             R110 0 1
      578 JUMPIFNOT                        R110 ; [+2]
      579 LOADNIL                          R109
      580 JUMP                             ; [+4]
      581 GETTABLEKS                       R110 R30 K52 ["ITEM_CONFIGURATION_URL"]
      583 LOADK                            R111 K135 ["v1/item-tags?"]
      584 CONCAT                           R109 R110 R111
      585 MOVE                             R111 R18
      586 CALL                             R111 0 1
      587 JUMPIFNOT                        R111 ; [+2]
      588 LOADNIL                          R110
      589 JUMP                             ; [+4]
      590 GETTABLEKS                       R111 R30 K52 ["ITEM_CONFIGURATION_URL"]
      592 LOADK                            R112 K136 ["v1/item-tags"]
      593 CONCAT                           R110 R111 R112
      594 MOVE                             R112 R18
      595 CALL                             R112 0 1
      596 JUMPIFNOT                        R112 ; [+2]
      597 LOADNIL                          R111
      598 JUMP                             ; [+4]
      599 GETTABLEKS                       R112 R30 K52 ["ITEM_CONFIGURATION_URL"]
      601 LOADK                            R113 K137 ["v1/item-tags/%s"]
      602 CONCAT                           R111 R112 R113
      603 GETTABLEKS                       R113 R30 K54 ["APIS_URL"]
      605 LOADK                            R114 K138 ["toolbox-service/v1"]
      606 CONCAT                           R112 R113 R114
      607 GETTABLEKS                       R114 R30 K54 ["APIS_URL"]
      609 LOADK                            R115 K139 ["toolbox-service/v1/%s?"]
      610 CONCAT                           R113 R114 R115
      611 GETTABLEKS                       R115 R30 K54 ["APIS_URL"]
      613 LOADK                            R116 K140 ["toolbox-service/v1/items/details?"]
      614 CONCAT                           R114 R115 R116
      615 GETTABLEKS                       R116 R30 K54 ["APIS_URL"]
      617 LOADK                            R117 K141 ["toolbox-service/v1/creations/group/%d/%s?"]
      618 CONCAT                           R115 R116 R117
      619 GETTABLEKS                       R117 R30 K54 ["APIS_URL"]
      621 LOADK                            R118 K142 ["toolbox-service/v1/creations/user/%d/%s?"]
      622 CONCAT                           R116 R117 R118
      623 MOVE                             R118 R112
      624 LOADK                            R119 K143 ["/voting/vote?"]
      625 CONCAT                           R117 R118 R119
      626 GETTABLEKS                       R119 R30 K52 ["ITEM_CONFIGURATION_URL"]
      628 LOADK                            R120 K144 ["v1/asset-types/%s/agents?"]
      629 CONCAT                           R118 R119 R120
      630 GETTABLEKS                       R120 R30 K54 ["APIS_URL"]
      632 LOADK                            R121 K145 ["autocomplete-studio/v2/suggest?"]
      633 CONCAT                           R119 R120 R121
      634 GETTABLEKS                       R121 R30 K54 ["APIS_URL"]
      636 LOADK                            R122 K146 ["marketplace-publishing-requirements-api/v1/requirements?"]
      637 CONCAT                           R120 R121 R122
      638 JUMPIFNOT                        R8 ; [+5]
      639 GETTABLEKS                       R122 R30 K54 ["APIS_URL"]
      641 LOADK                            R123 K147 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      642 CONCAT                           R121 R122 R123
      643 JUMP                             ; [+1]
      644 LOADNIL                          R121
      645 GETTABLEKS                       R123 R30 K54 ["APIS_URL"]
      647 LOADK                            R124 K148 ["user/cloud/v2/creator-store-products/"]
      648 CONCAT                           R122 R123 R124
      649 MOVE                             R124 R122
      650 LOADK                            R125 K149 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      651 CONCAT                           R123 R124 R125
      652 GETTABLEKS                       R125 R30 K66 ["PUBLISH_URL"]
      654 LOADK                            R126 K150 ["v1/assets/%d/media"]
      655 CONCAT                           R124 R125 R126
      656 GETTABLEKS                       R126 R30 K66 ["PUBLISH_URL"]
      658 LOADK                            R127 K151 ["v1/assets/%d/media/%d"]
      659 CONCAT                           R125 R126 R127
      660 GETTABLEKS                       R127 R30 K66 ["PUBLISH_URL"]
      662 LOADK                            R128 K152 ["v1/assets/%d/media/order"]
      663 CONCAT                           R126 R127 R128
      664 GETTABLEKS                       R128 R30 K66 ["PUBLISH_URL"]
      666 LOADK                            R129 K150 ["v1/assets/%d/media"]
      667 CONCAT                           R127 R128 R129
      668 GETTABLEKS                       R129 R30 K58 ["DEVELOP_URL"]
      670 LOADK                            R130 K153 ["v1/assets/%d/latest-saved-version"]
      671 CONCAT                           R128 R129 R130
      672 GETTABLEKS                       R130 R30 K58 ["DEVELOP_URL"]
      674 LOADK                            R131 K154 ["v1/universes/%d"]
      675 CONCAT                           R129 R130 R131
      676 GETTABLEKS                       R131 R30 K52 ["ITEM_CONFIGURATION_URL"]
      678 LOADK                            R132 K155 ["v1/permissions/groups?"]
      679 CONCAT                           R130 R131 R132
      680 GETTABLEKS                       R132 R30 K54 ["APIS_URL"]
      682 LOADK                            R133 K156 ["asset-permissions-api/v1/assets/access-properties"]
      683 CONCAT                           R131 R132 R133
      684 GETIMPORT                        R132 K15 [require]
      686 GETTABLEKS                       R135 R0 K4 ["Src"]
      688 GETTABLEKS                       R134 R135 K25 ["Flags"]
      690 GETTABLEKS                       R133 R134 K157 ["getFFlagEnableUploadingGroupBundles"]
      692 CALL                             R132 1 1
      693 DUPCLOSURE                       R133 K158 [PROTO_0]
      694 CAPTURE                          VAL R114
      695 CAPTURE                          VAL R30
      696 SETTABLEKS                       R133 R35 K159 ["constructGetItemDetails"]
      698 DUPCLOSURE                       R133 K160 [PROTO_1]
      699 CAPTURE                          VAL R39
      700 CAPTURE                          VAL R30
      701 SETTABLEKS                       R133 R35 K161 ["constructGetAssetsUrl"]
      703 GETTABLEKS                       R133 R23 K162 ["new"]
      705 NEWTABLE                         R134 0 4
      707 GETTABLEKS                       R136 R29 K163 ["MUSIC"]
      709 GETTABLEKS                       R135 R136 K164 ["name"]
      711 GETTABLEKS                       R137 R29 K165 ["SOUND_EFFECTS"]
      713 GETTABLEKS                       R136 R137 K164 ["name"]
      715 GETTABLEKS                       R138 R29 K166 ["UNKNOWN_AUDIO"]
      717 GETTABLEKS                       R137 R138 K164 ["name"]
      719 GETTABLEKS                       R139 R29 K167 ["FREE_FONTS"]
      721 GETTABLEKS                       R138 R139 K164 ["name"]
      723 SETLIST                          R134 R135 4 [1]
      725 CALL                             R133 1 1
      726 DUPCLOSURE                       R134 K168 [PROTO_2]
      727 CAPTURE                          VAL R133
      728 SETTABLEKS                       R134 R35 K169 ["usesMarketplaceRoute"]
      730 DUPCLOSURE                       R134 K170 [PROTO_3]
      731 CAPTURE                          VAL R112
      732 SETTABLEKS                       R134 R35 K171 ["constructCreateSaveUrl"]
      734 DUPCLOSURE                       R134 K172 [PROTO_4]
      735 CAPTURE                          VAL R112
      736 SETTABLEKS                       R134 R35 K173 ["constructDeleteSaveUrl"]
      738 DUPCLOSURE                       R134 K174 [PROTO_5]
      739 CAPTURE                          VAL R112
      740 SETTABLEKS                       R134 R35 K175 ["constructGetSaveUrl"]
      742 DUPCLOSURE                       R134 K176 [PROTO_6]
      743 CAPTURE                          VAL R24
      744 CAPTURE                          VAL R21
      745 CAPTURE                          VAL R25
      746 CAPTURE                          VAL R33
      747 CAPTURE                          VAL R29
      748 CAPTURE                          VAL R112
      749 CAPTURE                          VAL R35
      750 CAPTURE                          VAL R30
      751 CAPTURE                          VAL R7
      752 SETTABLEKS                       R134 R35 K177 ["constructGetToolboxItemsUrl"]
      754 DUPCLOSURE                       R134 K178 [PROTO_7]
      755 CAPTURE                          VAL R40
      756 CAPTURE                          VAL R30
      757 SETTABLEKS                       R134 R35 K179 ["getDevelopAssetUrl"]
      759 MOVE                             R134 R15
      760 CALL                             R134 0 1
      761 JUMPIFNOT                        R134 ; [+4]
      762 DUPCLOSURE                       R134 K180 [PROTO_8]
      763 CAPTURE                          VAL R38
      764 SETTABLEKS                       R134 R35 K181 ["constructGetAssetByIdUrl"]
      766 DUPCLOSURE                       R134 K182 [PROTO_9]
      767 CAPTURE                          VAL R37
      768 CAPTURE                          VAL R30
      769 SETTABLEKS                       R134 R35 K183 ["constructGetAllowedItemTypesUrl"]
      771 DUPCLOSURE                       R134 K184 [PROTO_10]
      772 CAPTURE                          VAL R115
      773 CAPTURE                          VAL R30
      774 SETTABLEKS                       R134 R35 K185 ["constructGetAssetGroupCreationsUrl"]
      776 DUPCLOSURE                       R134 K186 [PROTO_11]
      777 CAPTURE                          VAL R116
      778 CAPTURE                          VAL R30
      779 SETTABLEKS                       R134 R35 K187 ["constructGetAssetCreationsUrlToolboxService"]
      781 MOVE                             R134 R17
      782 CALL                             R134 0 1
      783 JUMPIF                           R134 ; [+4]
      784 DUPCLOSURE                       R134 K188 [PROTO_12]
      785 CAPTURE                          VAL R42
      786 SETTABLEKS                       R134 R35 K189 ["constructGetAssetCreationDetailsUrl"]
      788 DUPCLOSURE                       R134 K190 [PROTO_13]
      789 CAPTURE                          VAL R44
      790 CAPTURE                          VAL R43
      791 SETTABLEKS                       R134 R35 K191 ["constructGetCreatorInfoUrl"]
      793 DUPCLOSURE                       R134 K192 [PROTO_14]
      794 CAPTURE                          VAL R55
      795 SETTABLEKS                       R134 R35 K193 ["constructGetBundleMetadataUrl"]
      797 DUPCLOSURE                       R134 K194 [PROTO_15]
      798 CAPTURE                          VAL R56
      799 SETTABLEKS                       R134 R35 K195 ["constructPostBundleCreationContextUrl"]
      801 DUPCLOSURE                       R134 K196 [PROTO_16]
      802 CAPTURE                          VAL R57
      803 SETTABLEKS                       R134 R35 K197 ["constructPostCreateBundleUrl"]
      805 DUPCLOSURE                       R134 K198 [PROTO_17]
      806 CAPTURE                          VAL R58
      807 SETTABLEKS                       R134 R35 K199 ["constructGetBundleCreationStatusUrl"]
      809 DUPCLOSURE                       R134 K200 [PROTO_18]
      810 CAPTURE                          VAL R59
      811 SETTABLEKS                       R134 R35 K201 ["constructGetDefaultCreateBundleDataSharingUrl"]
      813 DUPCLOSURE                       R134 K202 [PROTO_19]
      814 CAPTURE                          VAL R60
      815 SETTABLEKS                       R134 R35 K203 ["constructPostCreateBundleDataSharingUrl"]
      817 DUPCLOSURE                       R134 K204 [PROTO_20]
      818 CAPTURE                          VAL R61
      819 SETTABLEKS                       R134 R35 K205 ["constructPostCreateAvatarAssetDataSharingUrl"]
      821 MOVE                             R134 R6
      822 CALL                             R134 0 1
      823 JUMPIFNOT                        R134 ; [+5]
      824 DUPCLOSURE                       R134 K206 [PROTO_21]
      825 CAPTURE                          VAL R51
      826 CAPTURE                          VAL R30
      827 SETTABLEKS                       R134 R35 K207 ["constructUploadPermissionStatusUrl"]
      829 MOVE                             R134 R17
      830 CALL                             R134 0 1
      831 JUMPIFNOT                        R134 ; [+5]
      832 DUPCLOSURE                       R134 K208 [PROTO_22]
      833 CAPTURE                          VAL R53
      834 CAPTURE                          VAL R30
      835 SETTABLEKS                       R134 R35 K209 ["constructGetItemConfigurationDetailsUrl"]
      837 DUPCLOSURE                       R134 K210 [PROTO_23]
      838 CAPTURE                          VAL R52
      839 CAPTURE                          VAL R30
      840 SETTABLEKS                       R134 R35 K211 ["constructGetItemsByCreatorUrl"]
      842 DUPCLOSURE                       R134 K212 [PROTO_24]
      843 CAPTURE                          VAL R54
      844 CAPTURE                          VAL R30
      845 SETTABLEKS                       R134 R35 K213 ["constructGetItemUploadFeeUrl"]
      847 DUPCLOSURE                       R134 K214 [PROTO_25]
      848 CAPTURE                          VAL R45
      849 SETTABLEKS                       R134 R35 K215 ["constructUploadCatalogItemUrl"]
      851 DUPCLOSURE                       R134 K216 [PROTO_26]
      852 CAPTURE                          VAL R46
      853 SETTABLEKS                       R134 R35 K217 ["constructUploadAssetThumbnailUrl"]
      855 DUPCLOSURE                       R134 K218 [PROTO_27]
      856 CAPTURE                          VAL R50
      857 CAPTURE                          VAL R30
      858 SETTABLEKS                       R134 R35 K219 ["contuctGetThumbnailStatusUrl"]
      860 DUPCLOSURE                       R134 K220 [PROTO_28]
      861 CAPTURE                          VAL R48
      862 SETTABLEKS                       R134 R35 K221 ["constructConfigureSalesUrl"]
      864 DUPCLOSURE                       R134 K222 [PROTO_29]
      865 CAPTURE                          VAL R49
      866 SETTABLEKS                       R134 R35 K223 ["constructUpdateSalesUrl"]
      868 DUPCLOSURE                       R134 K224 [PROTO_30]
      869 CAPTURE                          VAL R47
      870 SETTABLEKS                       R134 R35 K225 ["constructConfigureCatalogItemUrl"]
      872 DUPCLOSURE                       R134 K226 [PROTO_31]
      873 CAPTURE                          VAL R117
      874 CAPTURE                          VAL R30
      875 SETTABLEKS                       R134 R35 K227 ["constructGetVoteUrl"]
      877 DUPCLOSURE                       R134 K228 [PROTO_32]
      878 CAPTURE                          VAL R63
      879 SETTABLEKS                       R134 R35 K229 ["constructPostVoteUrl"]
      881 DUPCLOSURE                       R134 K230 [PROTO_33]
      882 CAPTURE                          VAL R64
      883 SETTABLEKS                       R134 R35 K231 ["constructPostUnvoteUrl"]
      885 DUPCLOSURE                       R134 K232 [PROTO_34]
      886 CAPTURE                          VAL R112
      887 SETTABLEKS                       R134 R35 K233 ["constructInsertAssetUrl"]
      889 DUPCLOSURE                       R134 K234 [PROTO_35]
      890 CAPTURE                          VAL R68
      891 CAPTURE                          VAL R30
      892 SETTABLEKS                       R134 R35 K235 ["constructGetPluginInfoUrl"]
      894 DUPCLOSURE                       R134 K236 [PROTO_36]
      895 CAPTURE                          VAL R16
      896 CAPTURE                          VAL R67
      897 CAPTURE                          VAL R66
      898 SETTABLEKS                       R134 R35 K237 ["constructGetManageableGroupsUrl"]
      900 DUPCLOSURE                       R134 K238 [PROTO_37]
      901 CAPTURE                          VAL R30
      902 SETTABLEKS                       R134 R35 K239 ["constructGetGroupsForSurfaceUrl"]
      904 DUPCLOSURE                       R134 K240 [PROTO_38]
      905 CAPTURE                          VAL R30
      906 SETTABLEKS                       R134 R35 K241 ["constructAssetIdUserContextString"]
      908 DUPCLOSURE                       R134 K242 [PROTO_39]
      909 CAPTURE                          VAL R9
      910 SETTABLEKS                       R134 R35 K243 ["constructAssetIdString"]
      912 DUPCLOSURE                       R134 K244 [PROTO_40]
      913 CAPTURE                          VAL R69
      914 CAPTURE                          VAL R30
      915 SETTABLEKS                       R134 R35 K245 ["constructAssetIdUrl"]
      917 DUPCLOSURE                       R134 K246 [PROTO_41]
      918 CAPTURE                          VAL R74
      919 SETTABLEKS                       R134 R35 K247 ["constructAssetSavedVersionString"]
      921 DUPCLOSURE                       R134 K248 [PROTO_42]
      922 CAPTURE                          VAL R79
      923 SETTABLEKS                       R134 R35 K249 ["constructGetPackageVersionDescriptionString"]
      925 DUPCLOSURE                       R134 K250 [PROTO_43]
      926 CAPTURE                          VAL R80
      927 SETTABLEKS                       R134 R35 K251 ["constructSetPackageVersionDescriptionString"]
      929 DUPCLOSURE                       R134 K252 [PROTO_44]
      930 CAPTURE                          VAL R77
      931 CAPTURE                          VAL R30
      932 SETTABLEKS                       R134 R35 K253 ["constructRevertAssetVersionString"]
      934 DUPCLOSURE                       R134 K254 [PROTO_45]
      935 CAPTURE                          VAL R78
      936 CAPTURE                          VAL R30
      937 SETTABLEKS                       R134 R35 K255 ["constructGetDevelopAssetMetadata"]
      939 DUPCLOSURE                       R134 K256 [PROTO_46]
      940 CAPTURE                          VAL R70
      941 CAPTURE                          VAL R30
      942 SETTABLEKS                       R134 R35 K257 ["constructAssetGameAssetIdUrl"]
      944 DUPCLOSURE                       R134 K258 [PROTO_47]
      945 CAPTURE                          VAL R13
      946 SETTABLEKS                       R134 R35 K259 ["constructAssetThumbnailUrl"]
      948 DUPCLOSURE                       R134 K260 [PROTO_48]
      949 SETTABLEKS                       R134 R35 K261 ["constructRBXThumbUrl"]
      951 DUPCLOSURE                       R134 K262 [PROTO_49]
      952 CAPTURE                          VAL R30
      953 CAPTURE                          VAL R2
      954 SETTABLEKS                       R134 R35 K263 ["constructUserSearchUrl"]
      956 DUPCLOSURE                       R134 K264 [PROTO_50]
      957 CAPTURE                          VAL R72
      958 CAPTURE                          VAL R30
      959 SETTABLEKS                       R134 R35 K265 ["constructUserThumbnailUrl"]
      961 DUPCLOSURE                       R134 K266 [PROTO_51]
      962 CAPTURE                          VAL R73
      963 SETTABLEKS                       R134 R35 K267 ["constructFavoriteCountsUrl"]
      965 DUPCLOSURE                       R134 K268 [PROTO_52]
      966 CAPTURE                          VAL R73
      967 SETTABLEKS                       R134 R35 K269 ["constructGetFavoritedUrl"]
      969 DUPCLOSURE                       R134 K270 [PROTO_53]
      970 CAPTURE                          VAL R73
      971 SETTABLEKS                       R134 R35 K271 ["constructPostFavoriteUrl"]
      973 DUPCLOSURE                       R134 K272 [PROTO_54]
      974 CAPTURE                          VAL R73
      975 SETTABLEKS                       R134 R35 K273 ["constructDeleteFavoriteUrl"]
      977 DUPCLOSURE                       R134 K274 [PROTO_55]
      978 CAPTURE                          VAL R85
      979 SETTABLEKS                       R134 R35 K275 ["constructPatchAssetUrl"]
      981 DUPCLOSURE                       R134 K276 [PROTO_56]
      982 CAPTURE                          VAL R81
      983 SETTABLEKS                       R134 R35 K277 ["constructOperationUrl"]
      985 DUPCLOSURE                       R134 K278 [PROTO_57]
      986 CAPTURE                          VAL R82
      987 SETTABLEKS                       R134 R35 K279 ["constructPostUploadAnimationUrl"]
      989 DUPCLOSURE                       R134 K280 [PROTO_58]
      990 CAPTURE                          VAL R84
      991 SETTABLEKS                       R134 R35 K281 ["constructValidateAnimationUrl"]
      993 DUPCLOSURE                       R134 K282 [PROTO_59]
      994 CAPTURE                          VAL R83
      995 SETTABLEKS                       R134 R35 K283 ["constructPostOverwriteAnimationUrl"]
      997 DUPCLOSURE                       R134 K284 [PROTO_60]
      998 CAPTURE                          VAL R87
      999 SETTABLEKS                       R134 R35 K285 ["constructGetMyGroupUrl"]
     1001 DUPCLOSURE                       R134 K286 [PROTO_61]
     1002 CAPTURE                          VAL R88
     1003 SETTABLEKS                       R134 R35 K287 ["constructIsVerifiedCreatorUrl"]
     1005 DUPCLOSURE                       R134 K288 [PROTO_62]
     1006 CAPTURE                          VAL R90
     1007 SETTABLEKS                       R134 R35 K289 ["constructGetUserFriendsUrl"]
     1009 DUPCLOSURE                       R134 K290 [PROTO_63]
     1010 CAPTURE                          VAL R103
     1011 SETTABLEKS                       R134 R35 K291 ["constructAssetPermissionsUrl"]
     1013 DUPCLOSURE                       R134 K292 [PROTO_64]
     1014 CAPTURE                          VAL R106
     1015 SETTABLEKS                       R134 R35 K293 ["constructAssetBatchGrantPermissionsUrl"]
     1017 DUPCLOSURE                       R134 K294 [PROTO_65]
     1018 CAPTURE                          VAL R104
     1019 SETTABLEKS                       R134 R35 K295 ["constructAssetCheckPermissionsUrl"]
     1021 DUPCLOSURE                       R134 K296 [PROTO_66]
     1022 CAPTURE                          VAL R91
     1023 SETTABLEKS                       R134 R35 K297 ["getRobuxPurchaseUrl"]
     1025 DUPCLOSURE                       R134 K298 [PROTO_67]
     1026 CAPTURE                          VAL R102
     1027 SETTABLEKS                       R134 R35 K299 ["constructPostPackageMetadata"]
     1029 DUPCLOSURE                       R134 K300 [PROTO_68]
     1030 CAPTURE                          VAL R92
     1031 SETTABLEKS                       R134 R35 K301 ["constructGetRobuxBalanceUrl"]
     1033 DUPCLOSURE                       R134 K302 [PROTO_69]
     1034 CAPTURE                          VAL R89
     1035 SETTABLEKS                       R134 R35 K303 ["constructGetGroupRoleInfoUrl"]
     1037 DUPCLOSURE                       R134 K304 [PROTO_70]
     1038 CAPTURE                          VAL R105
     1039 SETTABLEKS                       R134 R35 K305 ["constructAssetCheckPermissionsBatchUrl"]
     1041 DUPCLOSURE                       R134 K306 [PROTO_71]
     1042 CAPTURE                          VAL R10
     1043 CAPTURE                          VAL R96
     1044 CAPTURE                          VAL R95
     1045 CAPTURE                          VAL R94
     1046 SETTABLEKS                       R134 R35 K307 ["constructAssetPurchaseUrl"]
     1048 DUPCLOSURE                       R134 K308 [PROTO_72]
     1049 CAPTURE                          VAL R97
     1050 SETTABLEKS                       R134 R35 K309 ["constructPurchaserStatusUrl"]
     1052 MOVE                             R134 R11
     1053 CALL                             R134 0 1
     1054 JUMPIFNOT                        R134 ; [+4]
     1055 DUPCLOSURE                       R134 K310 [PROTO_73]
     1056 CAPTURE                          VAL R98
     1057 SETTABLEKS                       R134 R35 K311 ["constructSellerStatusUrl"]
     1059 MOVE                             R134 R18
     1060 CALL                             R134 0 1
     1061 JUMPIF                           R134 ; [+22]
     1062 DUPCLOSURE                       R134 K312 [PROTO_74]
     1063 CAPTURE                          VAL R107
     1064 CAPTURE                          VAL R30
     1065 SETTABLEKS                       R134 R35 K313 ["constructGetTagsPrefixSearchUrl"]
     1067 DUPCLOSURE                       R134 K314 [PROTO_75]
     1068 CAPTURE                          VAL R108
     1069 SETTABLEKS                       R134 R35 K315 ["constructGetTagsMetadataUrl"]
     1071 DUPCLOSURE                       R134 K316 [PROTO_76]
     1072 CAPTURE                          VAL R109
     1073 CAPTURE                          VAL R30
     1074 SETTABLEKS                       R134 R35 K317 ["constructGetAssetItemTagsUrl"]
     1076 DUPCLOSURE                       R134 K318 [PROTO_77]
     1077 CAPTURE                          VAL R110
     1078 SETTABLEKS                       R134 R35 K319 ["constructAddAssetTagUrl"]
     1080 DUPCLOSURE                       R134 K320 [PROTO_78]
     1081 CAPTURE                          VAL R111
     1082 SETTABLEKS                       R134 R35 K321 ["constructDeleteAssetItemTagUrl"]
     1084 DUPCLOSURE                       R134 K322 [PROTO_79]
     1085 CAPTURE                          VAL R86
     1086 CAPTURE                          VAL R30
     1087 SETTABLEKS                       R134 R35 K323 ["constructUploadCatalogItemFormatUrl"]
     1089 DUPCLOSURE                       R134 K324 [PROTO_80]
     1090 CAPTURE                          VAL R118
     1091 CAPTURE                          VAL R30
     1092 SETTABLEKS                       R134 R35 K325 ["constructAssetTypeAgentsUrl"]
     1094 DUPCLOSURE                       R134 K326 [PROTO_81]
     1095 CAPTURE                          VAL R119
     1096 CAPTURE                          VAL R30
     1097 SETTABLEKS                       R134 R35 K327 ["constructToolboxAutocompleteUrl"]
     1099 DUPCLOSURE                       R134 K328 [PROTO_82]
     1100 CAPTURE                          VAL R112
     1101 CAPTURE                          VAL R30
     1102 CAPTURE                          VAL R33
     1103 SETTABLEKS                       R134 R35 K329 ["constructGetHomeConfigurationUrl"]
     1105 DUPCLOSURE                       R134 K330 [PROTO_83]
     1106 CAPTURE                          VAL R120
     1107 CAPTURE                          VAL R30
     1108 SETTABLEKS                       R134 R35 K331 ["constructPublishingRequirementsUrl"]
     1110 DUPCLOSURE                       R134 K332 [PROTO_84]
     1111 CAPTURE                          VAL R30
     1112 SETTABLEKS                       R134 R35 K333 ["getCreatorMarketplaceQuotas"]
     1114 DUPCLOSURE                       R134 K334 [PROTO_85]
     1115 CAPTURE                          VAL R124
     1116 SETTABLEKS                       R134 R35 K335 ["constructGetAssetMediaIdsUrl"]
     1118 DUPCLOSURE                       R134 K336 [PROTO_86]
     1119 CAPTURE                          VAL R125
     1120 SETTABLEKS                       R134 R35 K337 ["constructDeleteAssetMediaUrl"]
     1122 DUPCLOSURE                       R134 K338 [PROTO_87]
     1123 CAPTURE                          VAL R126
     1124 SETTABLEKS                       R134 R35 K339 ["constructPostSetAssetMediaOrder"]
     1126 DUPCLOSURE                       R134 K340 [PROTO_88]
     1127 CAPTURE                          VAL R127
     1128 SETTABLEKS                       R134 R35 K341 ["constructPostUploadAssetMedia"]
     1130 JUMPIFNOT                        R3 ; [+4]
     1131 DUPCLOSURE                       R134 K342 [PROTO_89]
     1132 CAPTURE                          VAL R31
     1133 SETTABLEKS                       R134 R35 K343 ["constructCreatorDashboardAssetConfigUrl"]
     1135 JUMPIFNOT                        R5 ; [+6]
     1136 DUPCLOSURE                       R134 K344 [PROTO_90]
     1137 CAPTURE                          VAL R31
     1138 CAPTURE                          VAL R99
     1139 SETTABLEKS                       R134 R35 K345 ["constructCreatorDashboardConfigAvatarAssetUrl"]
     1141 JUMP                             ; [+5]
     1142 DUPCLOSURE                       R134 K346 [PROTO_91]
     1143 CAPTURE                          VAL R31
     1144 CAPTURE                          VAL R99
     1145 SETTABLEKS                       R134 R35 K347 ["constructCreatorDashboardAvatarAssetUrl"]
     1147 MOVE                             R134 R12
     1148 CALL                             R134 0 1
     1149 JUMPIFNOT                        R134 ; [+5]
     1150 DUPCLOSURE                       R134 K348 [PROTO_92]
     1151 CAPTURE                          VAL R31
     1152 CAPTURE                          VAL R101
     1153 SETTABLEKS                       R134 R35 K349 ["constructCreatorDashboardCreationsPageUrl"]
     1155 JUMPIFNOT                        R4 ; [+5]
     1156 DUPCLOSURE                       R134 K350 [PROTO_93]
     1157 CAPTURE                          VAL R31
     1158 CAPTURE                          VAL R100
     1159 SETTABLEKS                       R134 R35 K351 ["constructCreatorDashboardBundleConfigureUrl"]
     1161 DUPCLOSURE                       R134 K352 [PROTO_94]
     1162 CAPTURE                          VAL R31
     1163 SETTABLEKS                       R134 R35 K353 ["constructCreatorStoreConfigurationUrl"]
     1165 DUPCLOSURE                       R134 K354 [PROTO_95]
     1166 CAPTURE                          VAL R129
     1167 SETTABLEKS                       R134 R35 K355 ["constructGetUniverseInfo"]
     1169 MOVE                             R134 R8
     1170 CALL                             R134 0 1
     1171 JUMPIFNOT                        R134 ; [+4]
     1172 DUPCLOSURE                       R134 K356 [PROTO_96]
     1173 CAPTURE                          VAL R121
     1174 SETTABLEKS                       R134 R35 K357 ["constructCodeUnderstandingSummaryUrl"]
     1176 DUPCLOSURE                       R134 K358 [PROTO_97]
     1177 CAPTURE                          VAL R123
     1178 CAPTURE                          VAL R32
     1179 SETTABLEKS                       R134 R35 K359 ["constructGetFiatProductUrl"]
     1181 MOVE                             R134 R132
     1182 CALL                             R134 0 1
     1183 JUMPIFNOT                        R134 ; [+5]
     1184 DUPCLOSURE                       R134 K360 [PROTO_98]
     1185 CAPTURE                          VAL R130
     1186 CAPTURE                          VAL R30
     1187 SETTABLEKS                       R134 R35 K361 ["constructAllowedGroupsForActionUrl"]
     1189 DUPCLOSURE                       R134 K362 [PROTO_99]
     1190 CAPTURE                          VAL R36
     1191 SETTABLEKS                       R134 R35 K363 ["constructCreatorStoreUrl"]
     1193 MOVE                             R134 R14
     1194 CALL                             R134 0 1
     1195 JUMPIFNOT                        R134 ; [+4]
     1196 DUPCLOSURE                       R134 K364 [PROTO_100]
     1197 CAPTURE                          VAL R131
     1198 SETTABLEKS                       R134 R35 K365 ["constructBatchAssetAccessPropertiesUrl"]
     1200 MOVE                             R134 R34
     1201 MOVE                             R135 R35
     1202 CALL                             R134 1 1
     1203 RETURN                           R134 1
