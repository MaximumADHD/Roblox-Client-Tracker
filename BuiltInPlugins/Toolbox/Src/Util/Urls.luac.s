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

PROTO_23:
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K6 [{["assetIds"], ["format"] = "Png", ["size"] = "150x150"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["makeQueryString"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
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
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["DOMAIN"]
        6 MOVE                             R4 R0
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ASSET_DELIVERY_URL"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
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
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

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
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["makeQueryString"]
        9 DUPTABLE                         R5 K3 [{"assetVersionNumber"}]
       10 SETTABLEKS                       R1 R5 K2 ["assetVersionNumber"]
       12 CALL                             R4 1 1
       13 CONCAT                           R2 R3 R4
       14 RETURN                           R2 1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
        4 DUPTABLE                         R4 K2 [{"assetIds"}]
        5 SETTABLEKS                       R0 R4 K1 ["assetIds"]
        7 CALL                             R3 1 1
        8 CONCAT                           R1 R2 R3
        9 RETURN                           R1 1

PROTO_46:
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

PROTO_50:
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

PROTO_72:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_73:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_85:
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

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["convertAssetTypeToProductType"]
        4 GETTABLEKS                       R5 R1 K1 ["Value"]
        6 CALL                             R4 1 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["makeQueryString"]
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
      101 GETTABLEKS                       R14 R14 K23 ["Flags"]
      103 GETTABLEKS                       R14 R14 K25 ["getFFlagToolboxDynamicUploadFee"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K15 [require]
      108 GETTABLEKS                       R15 R0 K4 ["Src"]
      110 GETTABLEKS                       R15 R15 K5 ["Util"]
      112 GETTABLEKS                       R15 R15 K16 ["SharedFlags"]
      114 GETTABLEKS                       R15 R15 K26 ["getFFlagUseGroupsUserCanCreateAssetsForInsteadOfCanManage"]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R15 R0 K27 ["Packages"]
      119 GETIMPORT                        R16 K15 [require]
      121 GETTABLEKS                       R17 R15 K28 ["Framework"]
      123 CALL                             R16 1 1
      124 GETIMPORT                        R17 K15 [require]
      126 GETTABLEKS                       R18 R15 K29 ["Dash"]
      128 CALL                             R17 1 1
      129 GETIMPORT                        R18 K15 [require]
      131 GETTABLEKS                       R19 R15 K30 ["LuauPolyfill"]
      133 CALL                             R18 1 1
      134 GETTABLEKS                       R19 R18 K31 ["Set"]
      136 GETTABLEKS                       R20 R18 K32 ["Object"]
      138 GETTABLEKS                       R21 R18 K33 ["Array"]
      140 GETIMPORT                        R22 K15 [require]
      142 GETTABLEKS                       R23 R0 K4 ["Src"]
      144 GETTABLEKS                       R23 R23 K34 ["Types"]
      146 GETTABLEKS                       R23 R23 K35 ["AssetQuotaTypes"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K15 [require]
      151 GETTABLEKS                       R24 R0 K4 ["Src"]
      153 GETTABLEKS                       R24 R24 K34 ["Types"]
      155 GETTABLEKS                       R24 R24 K36 ["AssetSubTypes"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R25 R0 K4 ["Src"]
      162 GETTABLEKS                       R25 R25 K34 ["Types"]
      164 GETTABLEKS                       R25 R25 K37 ["HomeTypes"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K15 [require]
      169 GETTABLEKS                       R26 R0 K4 ["Src"]
      171 GETTABLEKS                       R26 R26 K34 ["Types"]
      173 GETTABLEKS                       R26 R26 K38 ["Category"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K15 [require]
      178 GETTABLEKS                       R27 R0 K39 ["Libs"]
      180 GETTABLEKS                       R27 R27 K40 ["Http"]
      182 GETTABLEKS                       R27 R27 K41 ["Url"]
      184 CALL                             R26 1 1
      185 GETIMPORT                        R27 K15 [require]
      187 GETTABLEKS                       R28 R0 K4 ["Src"]
      189 GETTABLEKS                       R28 R28 K5 ["Util"]
      191 GETTABLEKS                       R28 R28 K42 ["ToolboxUtilities"]
      193 CALL                             R27 1 1
      194 GETIMPORT                        R28 K15 [require]
      196 GETTABLEKS                       R29 R1 K43 ["FiatUtil"]
      198 CALL                             R28 1 1
      199 GETIMPORT                        R29 K15 [require]
      201 GETTABLEKS                       R30 R1 K44 ["getPlaceId"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K15 [require]
      206 GETTABLEKS                       R31 R1 K45 ["wrapStrictTable"]
      208 CALL                             R30 1 1
      209 NEWTABLE                         R31 128 0
      211 GETTABLEKS                       R33 R26 K46 ["CREATE_URL"]
      213 LOADK                            R34 K47 ["store/"]
      214 CONCAT                           R32 R33 R34
      215 GETTABLEKS                       R34 R26 K48 ["ITEM_CONFIGURATION_URL"]
      217 LOADK                            R35 K49 ["v1/permissions/item-types?"]
      218 CONCAT                           R33 R34 R35
      219 GETTABLEKS                       R35 R26 K50 ["APIS_URL"]
      221 LOADK                            R36 K51 ["assets/user-auth/v1/assets/%d"]
      222 CONCAT                           R34 R35 R36
      223 GETTABLEKS                       R36 R26 K52 ["BASE_URL"]
      225 LOADK                            R37 K53 ["IDE/Toolbox/Items?"]
      226 CONCAT                           R35 R36 R37
      227 GETTABLEKS                       R37 R26 K54 ["DEVELOP_URL"]
      229 LOADK                            R38 K55 ["v1/toolbox/items?"]
      230 CONCAT                           R36 R37 R38
      231 GETTABLEKS                       R38 R26 K48 ["ITEM_CONFIGURATION_URL"]
      233 LOADK                            R39 K56 ["v1/creations/get-assets?"]
      234 CONCAT                           R37 R38 R39
      235 GETTABLEKS                       R39 R26 K57 ["USERS_URL"]
      237 LOADK                            R40 K58 ["/v1/users/%d"]
      238 CONCAT                           R38 R39 R40
      239 GETTABLEKS                       R40 R26 K59 ["GROUP_URL"]
      241 LOADK                            R41 K60 ["v0/groups/%d"]
      242 CONCAT                           R39 R40 R41
      243 GETTABLEKS                       R41 R26 K61 ["PUBLISH_URL"]
      245 LOADK                            R42 K62 ["v1/assets/upload"]
      246 CONCAT                           R40 R41 R42
      247 GETTABLEKS                       R42 R26 K61 ["PUBLISH_URL"]
      249 LOADK                            R43 K63 ["v1/assets/%d/thumbnail"]
      250 CONCAT                           R41 R42 R43
      251 GETTABLEKS                       R43 R26 K54 ["DEVELOP_URL"]
      253 LOADK                            R44 K64 ["v1/assets/%d"]
      254 CONCAT                           R42 R43 R44
      255 GETTABLEKS                       R44 R26 K48 ["ITEM_CONFIGURATION_URL"]
      257 LOADK                            R45 K65 ["v1/assets/%d/release"]
      258 CONCAT                           R43 R44 R45
      259 GETTABLEKS                       R45 R26 K48 ["ITEM_CONFIGURATION_URL"]
      261 LOADK                            R46 K66 ["v1/assets/%d/update-price"]
      262 CONCAT                           R44 R45 R46
      263 GETTABLEKS                       R46 R26 K67 ["THUMBNAIL_URL"]
      265 LOADK                            R47 K68 ["v1/assets?"]
      266 CONCAT                           R45 R46 R47
      267 GETTABLEKS                       R47 R26 K48 ["ITEM_CONFIGURATION_URL"]
      269 LOADK                            R48 K69 ["v1/items/by-creator?"]
      270 CONCAT                           R46 R47 R48
      271 GETTABLEKS                       R48 R26 K48 ["ITEM_CONFIGURATION_URL"]
      273 LOADK                            R49 K70 ["v1/items?"]
      274 CONCAT                           R47 R48 R49
      275 GETTABLEKS                       R49 R26 K48 ["ITEM_CONFIGURATION_URL"]
      277 LOADK                            R50 K71 ["v1/items/upload-fee?"]
      278 CONCAT                           R48 R49 R50
      279 MOVE                             R50 R13
      280 CALL                             R50 0 1
      281 JUMPIFNOT                        R50 ; [+5]
      282 GETTABLEKS                       R50 R26 K48 ["ITEM_CONFIGURATION_URL"]
      284 LOADK                            R51 K72 ["v1/permissions/action-allowed-for-item-type?"]
      285 CONCAT                           R49 R50 R51
      286 JUMP                             ; [+1]
      287 LOADNIL                          R49
      288 GETTABLEKS                       R51 R26 K48 ["ITEM_CONFIGURATION_URL"]
      290 LOADK                            R52 K73 ["v1/bundles/metadata"]
      291 CONCAT                           R50 R51 R52
      292 GETTABLEKS                       R52 R26 K48 ["ITEM_CONFIGURATION_URL"]
      294 LOADK                            R53 K74 ["v1/bundles/create-context"]
      295 CONCAT                           R51 R52 R53
      296 GETTABLEKS                       R53 R26 K48 ["ITEM_CONFIGURATION_URL"]
      298 LOADK                            R54 K75 ["v1/bundles"]
      299 CONCAT                           R52 R53 R54
      300 GETTABLEKS                       R54 R26 K48 ["ITEM_CONFIGURATION_URL"]
      302 LOADK                            R55 K76 ["v1/bundles/status"]
      303 CONCAT                           R53 R54 R55
      304 GETTABLEKS                       R55 R26 K50 ["APIS_URL"]
      306 LOADK                            R56 K77 ["resource-settings/v1/preferences:batchGet?preferenceTypes=AvatarBundles"]
      307 CONCAT                           R54 R55 R56
      308 GETTABLEKS                       R56 R26 K50 ["APIS_URL"]
      310 LOADK                            R57 K78 ["resource-settings/v1/bundles"]
      311 CONCAT                           R55 R56 R57
      312 GETTABLEKS                       R57 R26 K50 ["APIS_URL"]
      314 LOADK                            R58 K79 ["resource-settings/v1/avatar-assets"]
      315 CONCAT                           R56 R57 R58
      316 GETTABLEKS                       R58 R26 K52 ["BASE_URL"]
      318 LOADK                            R59 K80 ["voting/vote?assetId=%s&vote=%s"]
      319 CONCAT                           R57 R58 R59
      320 GETTABLEKS                       R59 R26 K50 ["APIS_URL"]
      322 LOADK                            R60 K81 ["voting-api/vote/asset/%s?vote=%s"]
      323 CONCAT                           R58 R59 R60
      324 GETTABLEKS                       R60 R26 K50 ["APIS_URL"]
      326 LOADK                            R61 K82 ["voting-api/vote/asset/%s"]
      327 CONCAT                           R59 R60 R61
      328 GETTABLEKS                       R61 R26 K52 ["BASE_URL"]
      330 LOADK                            R62 K83 ["IDE/Toolbox/InsertAsset?"]
      331 CONCAT                           R60 R61 R62
      332 GETTABLEKS                       R62 R26 K54 ["DEVELOP_URL"]
      334 LOADK                            R63 K84 ["v1/user/groups/canmanage"]
      335 CONCAT                           R61 R62 R63
      336 GETTABLEKS                       R63 R26 K50 ["APIS_URL"]
      338 LOADK                            R64 K85 ["orgs/v2/groups/permissions/createassets"]
      339 CONCAT                           R62 R63 R64
      340 GETTABLEKS                       R64 R26 K50 ["APIS_URL"]
      342 LOADK                            R65 K86 ["studio-plugin-api/v1/plugins?"]
      343 CONCAT                           R63 R64 R65
      344 GETTABLEKS                       R65 R26 K52 ["BASE_URL"]
      346 LOADK                            R66 K87 ["asset/?"]
      347 CONCAT                           R64 R65 R66
      348 GETTABLEKS                       R66 R26 K88 ["GAME_ASSET_URL"]
      350 LOADK                            R67 K87 ["asset/?"]
      351 CONCAT                           R65 R66 R67
      352 GETTABLEKS                       R67 R26 K88 ["GAME_ASSET_URL"]
      354 LOADK                            R68 K89 ["asset-thumbnail/image?"]
      355 CONCAT                           R66 R67 R68
      356 GETTABLEKS                       R68 R26 K52 ["BASE_URL"]
      358 LOADK                            R69 K90 ["headshot-thumbnail/image?"]
      359 CONCAT                           R67 R68 R69
      360 GETTABLEKS                       R69 R26 K91 ["CATALOG_URL"]
      362 LOADK                            R70 K92 ["v1%s"]
      363 CONCAT                           R68 R69 R70
      364 GETTABLEKS                       R70 R26 K54 ["DEVELOP_URL"]
      366 LOADK                            R71 K93 ["v1/assets/%s/saved-versions?limit=%s&cursor=%s"]
      367 CONCAT                           R69 R70 R71
      368 GETTABLEKS                       R71 R26 K54 ["DEVELOP_URL"]
      370 LOADK                            R72 K94 ["v1/assets/%s/saved-versions?limit=%s"]
      371 CONCAT                           R70 R71 R72
      372 GETTABLEKS                       R72 R26 K54 ["DEVELOP_URL"]
      374 LOADK                            R73 K95 ["v1/assets/%s/saved-versions?cursor=%s"]
      375 CONCAT                           R71 R72 R73
      376 GETTABLEKS                       R73 R26 K54 ["DEVELOP_URL"]
      378 LOADK                            R74 K96 ["v1/assets/%s/revert-version?"]
      379 CONCAT                           R72 R73 R74
      380 GETTABLEKS                       R74 R26 K54 ["DEVELOP_URL"]
      382 LOADK                            R75 K68 ["v1/assets?"]
      383 CONCAT                           R73 R74 R75
      384 GETTABLEKS                       R75 R26 K50 ["APIS_URL"]
      386 LOADK                            R76 K97 ["packages-api/v1/packages/assets/versions/notes/get"]
      387 CONCAT                           R74 R75 R76
      388 GETTABLEKS                       R76 R26 K50 ["APIS_URL"]
      390 LOADK                            R77 K98 ["packages-api/v1/packages/assets/%s/versions/notes"]
      391 CONCAT                           R75 R76 R77
      392 GETTABLEKS                       R77 R26 K50 ["APIS_URL"]
      394 LOADK                            R78 K99 ["packages-api/v1/packages/version-note/%s/versions/%s"]
      395 CONCAT                           R76 R77 R78
      396 GETTABLEKS                       R78 R26 K50 ["APIS_URL"]
      398 LOADK                            R79 K100 ["assets/user-auth/v1/operations/%s"]
      399 CONCAT                           R77 R78 R79
      400 GETTABLEKS                       R79 R26 K50 ["APIS_URL"]
      402 LOADK                            R80 K101 ["assets/user-auth/v1/assets"]
      403 CONCAT                           R78 R79 R80
      404 GETTABLEKS                       R80 R26 K50 ["APIS_URL"]
      406 LOADK                            R81 K102 ["assets/user-auth/v1/assets/%s"]
      407 CONCAT                           R79 R80 R81
      408 GETTABLEKS                       R81 R26 K50 ["APIS_URL"]
      410 LOADK                            R82 K102 ["assets/user-auth/v1/assets/%s"]
      411 CONCAT                           R80 R81 R82
      412 GETTABLEKS                       R82 R26 K54 ["DEVELOP_URL"]
      414 LOADK                            R83 K103 ["v1/assets/%s?"]
      415 CONCAT                           R81 R82 R83
      416 GETTABLEKS                       R83 R26 K104 ["DATA_URL"]
      418 LOADK                            R84 K105 ["Data/Upload.ashx?"]
      419 CONCAT                           R82 R83 R84
      420 GETTABLEKS                       R84 R26 K59 ["GROUP_URL"]
      422 LOADK                            R85 K106 ["v2/users/%%20%%20%s/groups/roles"]
      423 CONCAT                           R83 R84 R85
      424 GETTABLEKS                       R85 R26 K54 ["DEVELOP_URL"]
      426 LOADK                            R86 K107 ["v1/user/is-verified-creator"]
      427 CONCAT                           R84 R85 R86
      428 GETTABLEKS                       R86 R26 K59 ["GROUP_URL"]
      430 LOADK                            R87 K108 ["v1/groups/%s/roles"]
      431 CONCAT                           R85 R86 R87
      432 GETTABLEKS                       R87 R26 K109 ["FRIENDS_URL"]
      434 LOADK                            R88 K110 ["v1/users/%d/friends"]
      435 CONCAT                           R86 R87 R88
      436 GETTABLEKS                       R88 R26 K52 ["BASE_URL"]
      438 LOADK                            R89 K111 ["upgrades/robux"]
      439 CONCAT                           R87 R88 R89
      440 GETTABLEKS                       R89 R26 K112 ["ECONOMY_URL"]
      442 LOADK                            R90 K113 ["v1/users/%d/currency"]
      443 CONCAT                           R88 R89 R90
      444 GETTABLEKS                       R90 R26 K54 ["DEVELOP_URL"]
      446 LOADK                            R91 K114 ["v1/user/%d/canmanage/%d"]
      447 CONCAT                           R89 R90 R91
      448 GETTABLEKS                       R91 R26 K112 ["ECONOMY_URL"]
      450 LOADK                            R92 K115 ["/v1/purchases/products/%d"]
      451 CONCAT                           R90 R91 R92
      452 GETTABLEKS                       R92 R26 K50 ["APIS_URL"]
      454 LOADK                            R93 K116 ["creator-marketplace-purchasing-service/v1/products/%d/purchase"]
      455 CONCAT                           R91 R92 R93
      456 GETTABLEKS                       R93 R26 K50 ["APIS_URL"]
      458 LOADK                            R94 K117 ["marketplace-fiat-service/v1/product/purchase"]
      459 CONCAT                           R92 R93 R94
      460 GETTABLEKS                       R94 R26 K50 ["APIS_URL"]
      462 LOADK                            R95 K118 ["marketplace-fiat-service/v1/purchaser/status"]
      463 CONCAT                           R93 R94 R95
      464 MOVE                             R95 R10
      465 CALL                             R95 0 1
      466 JUMPIFNOT                        R95 ; [+5]
      467 GETTABLEKS                       R95 R26 K50 ["APIS_URL"]
      469 LOADK                            R96 K119 ["marketplace-fiat-service/v1/seller/status"]
      470 CONCAT                           R94 R95 R96
      471 JUMP                             ; [+1]
      472 LOADNIL                          R94
      473 JUMPIFNOT                        R5 ; [+2]
      474 LOADK                            R95 K120 ["/creations/catalog/%d/configure"]
      475 JUMP                             ; [+1]
      476 LOADK                            R95 K121 ["/creations?activeTab=TShirt"]
      477 JUMPIFNOT                        R4 ; [+2]
      478 LOADK                            R96 K122 ["/creations/bundle/%d/configure"]
      479 JUMP                             ; [+1]
      480 LOADNIL                          R96
      481 GETTABLEKS                       R98 R26 K50 ["APIS_URL"]
      483 LOADK                            R99 K123 ["packages-api/v1/packages/assets/versions/metadata/get"]
      484 CONCAT                           R97 R98 R99
      485 GETTABLEKS                       R99 R26 K50 ["APIS_URL"]
      487 LOADK                            R100 K124 ["asset-permissions-api/v1/assets/%s/permissions"]
      488 CONCAT                           R98 R99 R100
      489 GETTABLEKS                       R100 R26 K50 ["APIS_URL"]
      491 LOADK                            R101 K125 ["asset-permissions-api/v1/assets/check-actions"]
      492 CONCAT                           R99 R100 R101
      493 GETTABLEKS                       R101 R26 K50 ["APIS_URL"]
      495 LOADK                            R102 K126 ["asset-permissions-api/v1/assets/check-permissions"]
      496 CONCAT                           R100 R101 R102
      497 GETTABLEKS                       R102 R26 K50 ["APIS_URL"]
      499 LOADK                            R103 K127 ["asset-permissions-api/v1/assets/permissions"]
      500 CONCAT                           R101 R102 R103
      501 GETTABLEKS                       R103 R26 K50 ["APIS_URL"]
      503 LOADK                            R104 K128 ["toolbox-service/v1"]
      504 CONCAT                           R102 R103 R104
      505 GETTABLEKS                       R104 R26 K50 ["APIS_URL"]
      507 LOADK                            R105 K129 ["toolbox-service/v1/%s?"]
      508 CONCAT                           R103 R104 R105
      509 GETTABLEKS                       R105 R26 K50 ["APIS_URL"]
      511 LOADK                            R106 K130 ["toolbox-service/v1/items/details?"]
      512 CONCAT                           R104 R105 R106
      513 GETTABLEKS                       R106 R26 K50 ["APIS_URL"]
      515 LOADK                            R107 K131 ["toolbox-service/v1/creations/group/%d/%s?"]
      516 CONCAT                           R105 R106 R107
      517 GETTABLEKS                       R107 R26 K50 ["APIS_URL"]
      519 LOADK                            R108 K132 ["toolbox-service/v1/creations/user/%d/%s?"]
      520 CONCAT                           R106 R107 R108
      521 MOVE                             R108 R102
      522 LOADK                            R109 K133 ["/voting/vote?"]
      523 CONCAT                           R107 R108 R109
      524 GETTABLEKS                       R109 R26 K48 ["ITEM_CONFIGURATION_URL"]
      526 LOADK                            R110 K134 ["v1/asset-types/%s/agents?"]
      527 CONCAT                           R108 R109 R110
      528 GETTABLEKS                       R110 R26 K50 ["APIS_URL"]
      530 LOADK                            R111 K135 ["autocomplete-studio/v2/suggest?"]
      531 CONCAT                           R109 R110 R111
      532 GETTABLEKS                       R111 R26 K50 ["APIS_URL"]
      534 LOADK                            R112 K136 ["marketplace-publishing-requirements-api/v1/requirements?"]
      535 CONCAT                           R110 R111 R112
      536 JUMPIFNOT                        R7 ; [+5]
      537 GETTABLEKS                       R112 R26 K50 ["APIS_URL"]
      539 LOADK                            R113 K137 ["asset-content-properties-service/v1/metadata/%d/%s/code-understanding-summaries"]
      540 CONCAT                           R111 R112 R113
      541 JUMP                             ; [+1]
      542 LOADNIL                          R111
      543 GETTABLEKS                       R113 R26 K50 ["APIS_URL"]
      545 LOADK                            R114 K138 ["user/cloud/v2/creator-store-products/"]
      546 CONCAT                           R112 R113 R114
      547 MOVE                             R114 R112
      548 LOADK                            R115 K139 ["PRODUCT_NAMESPACE_CREATOR_MARKETPLACE_ASSET-%s-%d"]
      549 CONCAT                           R113 R114 R115
      550 GETTABLEKS                       R115 R26 K61 ["PUBLISH_URL"]
      552 LOADK                            R116 K140 ["v1/assets/%d/media"]
      553 CONCAT                           R114 R115 R116
      554 GETTABLEKS                       R116 R26 K61 ["PUBLISH_URL"]
      556 LOADK                            R117 K141 ["v1/assets/%d/media/%d"]
      557 CONCAT                           R115 R116 R117
      558 GETTABLEKS                       R117 R26 K61 ["PUBLISH_URL"]
      560 LOADK                            R118 K142 ["v1/assets/%d/media/order"]
      561 CONCAT                           R116 R117 R118
      562 GETTABLEKS                       R118 R26 K61 ["PUBLISH_URL"]
      564 LOADK                            R119 K140 ["v1/assets/%d/media"]
      565 CONCAT                           R117 R118 R119
      566 GETTABLEKS                       R119 R26 K54 ["DEVELOP_URL"]
      568 LOADK                            R120 K143 ["v1/assets/%d/latest-saved-version"]
      569 CONCAT                           R118 R119 R120
      570 GETTABLEKS                       R120 R26 K54 ["DEVELOP_URL"]
      572 LOADK                            R121 K144 ["v1/universes/%d"]
      573 CONCAT                           R119 R120 R121
      574 GETTABLEKS                       R121 R26 K48 ["ITEM_CONFIGURATION_URL"]
      576 LOADK                            R122 K145 ["v1/permissions/groups?"]
      577 CONCAT                           R120 R121 R122
      578 GETTABLEKS                       R122 R26 K50 ["APIS_URL"]
      580 LOADK                            R123 K146 ["asset-permissions-api/v1/assets/access-properties"]
      581 CONCAT                           R121 R122 R123
      582 DUPCLOSURE                       R122 K147 [PROTO_0]
      583 CAPTURE                          VAL R104
      584 CAPTURE                          VAL R26
      585 SETTABLEKS                       R122 R31 K148 ["constructGetItemDetails"]
      587 DUPCLOSURE                       R122 K149 [PROTO_1]
      588 CAPTURE                          VAL R35
      589 CAPTURE                          VAL R26
      590 SETTABLEKS                       R122 R31 K150 ["constructGetAssetsUrl"]
      592 GETTABLEKS                       R122 R19 K151 ["new"]
      594 NEWTABLE                         R123 0 4
      596 GETTABLEKS                       R124 R25 K152 ["MUSIC"]
      598 GETTABLEKS                       R124 R124 K153 ["name"]
      600 GETTABLEKS                       R125 R25 K154 ["SOUND_EFFECTS"]
      602 GETTABLEKS                       R125 R125 K153 ["name"]
      604 GETTABLEKS                       R126 R25 K155 ["UNKNOWN_AUDIO"]
      606 GETTABLEKS                       R126 R126 K153 ["name"]
      608 GETTABLEKS                       R127 R25 K156 ["FREE_FONTS"]
      610 GETTABLEKS                       R127 R127 K153 ["name"]
      612 SETLIST                          R123 R124 4 [1]
      614 CALL                             R122 1 1
      615 DUPCLOSURE                       R123 K157 [PROTO_2]
      616 CAPTURE                          VAL R122
      617 SETTABLEKS                       R123 R31 K158 ["usesMarketplaceRoute"]
      619 DUPCLOSURE                       R123 K159 [PROTO_3]
      620 CAPTURE                          VAL R102
      621 SETTABLEKS                       R123 R31 K160 ["constructCreateSaveUrl"]
      623 DUPCLOSURE                       R123 K161 [PROTO_4]
      624 CAPTURE                          VAL R102
      625 SETTABLEKS                       R123 R31 K162 ["constructDeleteSaveUrl"]
      627 DUPCLOSURE                       R123 K163 [PROTO_5]
      628 CAPTURE                          VAL R102
      629 SETTABLEKS                       R123 R31 K164 ["constructGetSaveUrl"]
      631 DUPCLOSURE                       R123 K165 [PROTO_6]
      632 CAPTURE                          VAL R20
      633 CAPTURE                          VAL R17
      634 CAPTURE                          VAL R21
      635 CAPTURE                          VAL R29
      636 CAPTURE                          VAL R25
      637 CAPTURE                          VAL R102
      638 CAPTURE                          VAL R31
      639 CAPTURE                          VAL R26
      640 CAPTURE                          VAL R6
      641 SETTABLEKS                       R123 R31 K166 ["constructGetToolboxItemsUrl"]
      643 DUPCLOSURE                       R123 K167 [PROTO_7]
      644 CAPTURE                          VAL R36
      645 CAPTURE                          VAL R26
      646 SETTABLEKS                       R123 R31 K168 ["getDevelopAssetUrl"]
      648 DUPCLOSURE                       R123 K169 [PROTO_8]
      649 CAPTURE                          VAL R34
      650 SETTABLEKS                       R123 R31 K170 ["constructGetAssetByIdUrl"]
      652 DUPCLOSURE                       R123 K171 [PROTO_9]
      653 CAPTURE                          VAL R33
      654 CAPTURE                          VAL R26
      655 SETTABLEKS                       R123 R31 K172 ["constructGetAllowedItemTypesUrl"]
      657 DUPCLOSURE                       R123 K173 [PROTO_10]
      658 CAPTURE                          VAL R105
      659 CAPTURE                          VAL R26
      660 SETTABLEKS                       R123 R31 K174 ["constructGetAssetGroupCreationsUrl"]
      662 DUPCLOSURE                       R123 K175 [PROTO_11]
      663 CAPTURE                          VAL R106
      664 CAPTURE                          VAL R26
      665 SETTABLEKS                       R123 R31 K176 ["constructGetAssetCreationsUrlToolboxService"]
      667 DUPCLOSURE                       R123 K177 [PROTO_12]
      668 CAPTURE                          VAL R39
      669 CAPTURE                          VAL R38
      670 SETTABLEKS                       R123 R31 K178 ["constructGetCreatorInfoUrl"]
      672 DUPCLOSURE                       R123 K179 [PROTO_13]
      673 CAPTURE                          VAL R50
      674 SETTABLEKS                       R123 R31 K180 ["constructGetBundleMetadataUrl"]
      676 DUPCLOSURE                       R123 K181 [PROTO_14]
      677 CAPTURE                          VAL R51
      678 SETTABLEKS                       R123 R31 K182 ["constructPostBundleCreationContextUrl"]
      680 DUPCLOSURE                       R123 K183 [PROTO_15]
      681 CAPTURE                          VAL R52
      682 SETTABLEKS                       R123 R31 K184 ["constructPostCreateBundleUrl"]
      684 DUPCLOSURE                       R123 K185 [PROTO_16]
      685 CAPTURE                          VAL R53
      686 SETTABLEKS                       R123 R31 K186 ["constructGetBundleCreationStatusUrl"]
      688 DUPCLOSURE                       R123 K187 [PROTO_17]
      689 CAPTURE                          VAL R54
      690 SETTABLEKS                       R123 R31 K188 ["constructGetDefaultCreateBundleDataSharingUrl"]
      692 DUPCLOSURE                       R123 K189 [PROTO_18]
      693 CAPTURE                          VAL R55
      694 SETTABLEKS                       R123 R31 K190 ["constructPostCreateBundleDataSharingUrl"]
      696 DUPCLOSURE                       R123 K191 [PROTO_19]
      697 CAPTURE                          VAL R56
      698 SETTABLEKS                       R123 R31 K192 ["constructPostCreateAvatarAssetDataSharingUrl"]
      700 DUPCLOSURE                       R123 K193 [PROTO_20]
      701 CAPTURE                          VAL R47
      702 CAPTURE                          VAL R26
      703 SETTABLEKS                       R123 R31 K194 ["constructGetItemConfigurationDetailsUrl"]
      705 DUPCLOSURE                       R123 K195 [PROTO_21]
      706 CAPTURE                          VAL R46
      707 CAPTURE                          VAL R26
      708 SETTABLEKS                       R123 R31 K196 ["constructGetItemsByCreatorUrl"]
      710 DUPCLOSURE                       R123 K197 [PROTO_22]
      711 CAPTURE                          VAL R13
      712 CAPTURE                          VAL R48
      713 CAPTURE                          VAL R26
      714 SETTABLEKS                       R123 R31 K198 ["constructGetItemUploadFeeUrl"]
      716 MOVE                             R123 R13
      717 CALL                             R123 0 1
      718 JUMPIFNOT                        R123 ; [+5]
      719 DUPCLOSURE                       R123 K199 [PROTO_23]
      720 CAPTURE                          VAL R49
      721 CAPTURE                          VAL R26
      722 SETTABLEKS                       R123 R31 K200 ["constructGetMetadataPermissionsUrl"]
      724 DUPCLOSURE                       R123 K201 [PROTO_24]
      725 CAPTURE                          VAL R40
      726 SETTABLEKS                       R123 R31 K202 ["constructUploadCatalogItemUrl"]
      728 DUPCLOSURE                       R123 K203 [PROTO_25]
      729 CAPTURE                          VAL R41
      730 SETTABLEKS                       R123 R31 K204 ["constructUploadAssetThumbnailUrl"]
      732 DUPCLOSURE                       R123 K205 [PROTO_26]
      733 CAPTURE                          VAL R45
      734 CAPTURE                          VAL R26
      735 SETTABLEKS                       R123 R31 K206 ["contuctGetThumbnailStatusUrl"]
      737 DUPCLOSURE                       R123 K207 [PROTO_27]
      738 CAPTURE                          VAL R43
      739 SETTABLEKS                       R123 R31 K208 ["constructConfigureSalesUrl"]
      741 DUPCLOSURE                       R123 K209 [PROTO_28]
      742 CAPTURE                          VAL R44
      743 SETTABLEKS                       R123 R31 K210 ["constructUpdateSalesUrl"]
      745 DUPCLOSURE                       R123 K211 [PROTO_29]
      746 CAPTURE                          VAL R42
      747 SETTABLEKS                       R123 R31 K212 ["constructConfigureCatalogItemUrl"]
      749 DUPCLOSURE                       R123 K213 [PROTO_30]
      750 CAPTURE                          VAL R107
      751 CAPTURE                          VAL R26
      752 SETTABLEKS                       R123 R31 K214 ["constructGetVoteUrl"]
      754 DUPCLOSURE                       R123 K215 [PROTO_31]
      755 CAPTURE                          VAL R58
      756 SETTABLEKS                       R123 R31 K216 ["constructPostVoteUrl"]
      758 DUPCLOSURE                       R123 K217 [PROTO_32]
      759 CAPTURE                          VAL R59
      760 SETTABLEKS                       R123 R31 K218 ["constructPostUnvoteUrl"]
      762 DUPCLOSURE                       R123 K219 [PROTO_33]
      763 CAPTURE                          VAL R102
      764 SETTABLEKS                       R123 R31 K220 ["constructInsertAssetUrl"]
      766 DUPCLOSURE                       R123 K221 [PROTO_34]
      767 CAPTURE                          VAL R63
      768 CAPTURE                          VAL R26
      769 SETTABLEKS                       R123 R31 K222 ["constructGetPluginInfoUrl"]
      771 DUPCLOSURE                       R123 K223 [PROTO_35]
      772 CAPTURE                          VAL R14
      773 CAPTURE                          VAL R62
      774 CAPTURE                          VAL R61
      775 SETTABLEKS                       R123 R31 K224 ["constructGetManageableGroupsUrl"]
      777 DUPCLOSURE                       R123 K225 [PROTO_36]
      778 CAPTURE                          VAL R26
      779 SETTABLEKS                       R123 R31 K226 ["constructGetGroupsForSurfaceUrl"]
      781 DUPCLOSURE                       R123 K227 [PROTO_37]
      782 CAPTURE                          VAL R26
      783 SETTABLEKS                       R123 R31 K228 ["constructAssetIdUserContextString"]
      785 DUPCLOSURE                       R123 K229 [PROTO_38]
      786 CAPTURE                          VAL R8
      787 SETTABLEKS                       R123 R31 K230 ["constructAssetIdString"]
      789 DUPCLOSURE                       R123 K231 [PROTO_39]
      790 CAPTURE                          VAL R64
      791 CAPTURE                          VAL R26
      792 SETTABLEKS                       R123 R31 K232 ["constructAssetIdUrl"]
      794 DUPCLOSURE                       R123 K233 [PROTO_40]
      795 CAPTURE                          VAL R69
      796 SETTABLEKS                       R123 R31 K234 ["constructAssetSavedVersionString"]
      798 DUPCLOSURE                       R123 K235 [PROTO_41]
      799 CAPTURE                          VAL R75
      800 SETTABLEKS                       R123 R31 K236 ["constructAssetSavedVersionWithNotesString"]
      802 DUPCLOSURE                       R123 K237 [PROTO_42]
      803 CAPTURE                          VAL R74
      804 SETTABLEKS                       R123 R31 K238 ["constructGetPackageVersionDescriptionString"]
      806 DUPCLOSURE                       R123 K239 [PROTO_43]
      807 CAPTURE                          VAL R76
      808 SETTABLEKS                       R123 R31 K240 ["constructSetPackageVersionDescriptionString"]
      810 DUPCLOSURE                       R123 K241 [PROTO_44]
      811 CAPTURE                          VAL R72
      812 CAPTURE                          VAL R26
      813 SETTABLEKS                       R123 R31 K242 ["constructRevertAssetVersionString"]
      815 DUPCLOSURE                       R123 K243 [PROTO_45]
      816 CAPTURE                          VAL R73
      817 CAPTURE                          VAL R26
      818 SETTABLEKS                       R123 R31 K244 ["constructGetDevelopAssetMetadata"]
      820 DUPCLOSURE                       R123 K245 [PROTO_46]
      821 CAPTURE                          VAL R65
      822 CAPTURE                          VAL R26
      823 SETTABLEKS                       R123 R31 K246 ["constructAssetGameAssetIdUrl"]
      825 DUPCLOSURE                       R123 K247 [PROTO_47]
      826 CAPTURE                          VAL R11
      827 SETTABLEKS                       R123 R31 K248 ["constructAssetThumbnailUrl"]
      829 DUPCLOSURE                       R123 K249 [PROTO_48]
      830 SETTABLEKS                       R123 R31 K250 ["constructRBXThumbUrl"]
      832 DUPCLOSURE                       R123 K251 [PROTO_49]
      833 CAPTURE                          VAL R26
      834 CAPTURE                          VAL R2
      835 SETTABLEKS                       R123 R31 K252 ["constructUserSearchUrl"]
      837 DUPCLOSURE                       R123 K253 [PROTO_50]
      838 CAPTURE                          VAL R67
      839 CAPTURE                          VAL R26
      840 SETTABLEKS                       R123 R31 K254 ["constructUserThumbnailUrl"]
      842 DUPCLOSURE                       R123 K255 [PROTO_51]
      843 CAPTURE                          VAL R68
      844 SETTABLEKS                       R123 R31 K256 ["constructFavoriteCountsUrl"]
      846 DUPCLOSURE                       R123 K257 [PROTO_52]
      847 CAPTURE                          VAL R68
      848 SETTABLEKS                       R123 R31 K258 ["constructGetFavoritedUrl"]
      850 DUPCLOSURE                       R123 K259 [PROTO_53]
      851 CAPTURE                          VAL R68
      852 SETTABLEKS                       R123 R31 K260 ["constructPostFavoriteUrl"]
      854 DUPCLOSURE                       R123 K261 [PROTO_54]
      855 CAPTURE                          VAL R68
      856 SETTABLEKS                       R123 R31 K262 ["constructDeleteFavoriteUrl"]
      858 DUPCLOSURE                       R123 K263 [PROTO_55]
      859 CAPTURE                          VAL R81
      860 SETTABLEKS                       R123 R31 K264 ["constructPatchAssetUrl"]
      862 DUPCLOSURE                       R123 K265 [PROTO_56]
      863 CAPTURE                          VAL R77
      864 SETTABLEKS                       R123 R31 K266 ["constructOperationUrl"]
      866 DUPCLOSURE                       R123 K267 [PROTO_57]
      867 CAPTURE                          VAL R78
      868 SETTABLEKS                       R123 R31 K268 ["constructPostUploadAnimationUrl"]
      870 DUPCLOSURE                       R123 K269 [PROTO_58]
      871 CAPTURE                          VAL R80
      872 SETTABLEKS                       R123 R31 K270 ["constructValidateAnimationUrl"]
      874 DUPCLOSURE                       R123 K271 [PROTO_59]
      875 CAPTURE                          VAL R79
      876 SETTABLEKS                       R123 R31 K272 ["constructPostOverwriteAnimationUrl"]
      878 DUPCLOSURE                       R123 K273 [PROTO_60]
      879 CAPTURE                          VAL R83
      880 SETTABLEKS                       R123 R31 K274 ["constructGetMyGroupUrl"]
      882 DUPCLOSURE                       R123 K275 [PROTO_61]
      883 CAPTURE                          VAL R84
      884 SETTABLEKS                       R123 R31 K276 ["constructIsVerifiedCreatorUrl"]
      886 DUPCLOSURE                       R123 K277 [PROTO_62]
      887 CAPTURE                          VAL R86
      888 SETTABLEKS                       R123 R31 K278 ["constructGetUserFriendsUrl"]
      890 DUPCLOSURE                       R123 K279 [PROTO_63]
      891 CAPTURE                          VAL R98
      892 SETTABLEKS                       R123 R31 K280 ["constructAssetPermissionsUrl"]
      894 DUPCLOSURE                       R123 K281 [PROTO_64]
      895 CAPTURE                          VAL R101
      896 SETTABLEKS                       R123 R31 K282 ["constructAssetBatchGrantPermissionsUrl"]
      898 DUPCLOSURE                       R123 K283 [PROTO_65]
      899 CAPTURE                          VAL R99
      900 SETTABLEKS                       R123 R31 K284 ["constructAssetCheckPermissionsUrl"]
      902 DUPCLOSURE                       R123 K285 [PROTO_66]
      903 CAPTURE                          VAL R87
      904 SETTABLEKS                       R123 R31 K286 ["getRobuxPurchaseUrl"]
      906 DUPCLOSURE                       R123 K287 [PROTO_67]
      907 CAPTURE                          VAL R97
      908 SETTABLEKS                       R123 R31 K288 ["constructPostPackageMetadata"]
      910 DUPCLOSURE                       R123 K289 [PROTO_68]
      911 CAPTURE                          VAL R88
      912 SETTABLEKS                       R123 R31 K290 ["constructGetRobuxBalanceUrl"]
      914 DUPCLOSURE                       R123 K291 [PROTO_69]
      915 CAPTURE                          VAL R85
      916 SETTABLEKS                       R123 R31 K292 ["constructGetGroupRoleInfoUrl"]
      918 DUPCLOSURE                       R123 K293 [PROTO_70]
      919 CAPTURE                          VAL R100
      920 SETTABLEKS                       R123 R31 K294 ["constructAssetCheckPermissionsBatchUrl"]
      922 DUPCLOSURE                       R123 K295 [PROTO_71]
      923 CAPTURE                          VAL R9
      924 CAPTURE                          VAL R92
      925 CAPTURE                          VAL R91
      926 CAPTURE                          VAL R90
      927 SETTABLEKS                       R123 R31 K296 ["constructAssetPurchaseUrl"]
      929 DUPCLOSURE                       R123 K297 [PROTO_72]
      930 CAPTURE                          VAL R93
      931 SETTABLEKS                       R123 R31 K298 ["constructPurchaserStatusUrl"]
      933 MOVE                             R123 R10
      934 CALL                             R123 0 1
      935 JUMPIFNOT                        R123 ; [+4]
      936 DUPCLOSURE                       R123 K299 [PROTO_73]
      937 CAPTURE                          VAL R94
      938 SETTABLEKS                       R123 R31 K300 ["constructSellerStatusUrl"]
      940 DUPCLOSURE                       R123 K301 [PROTO_74]
      941 CAPTURE                          VAL R82
      942 CAPTURE                          VAL R26
      943 SETTABLEKS                       R123 R31 K302 ["constructUploadCatalogItemFormatUrl"]
      945 DUPCLOSURE                       R123 K303 [PROTO_75]
      946 CAPTURE                          VAL R108
      947 CAPTURE                          VAL R26
      948 SETTABLEKS                       R123 R31 K304 ["constructAssetTypeAgentsUrl"]
      950 DUPCLOSURE                       R123 K305 [PROTO_76]
      951 CAPTURE                          VAL R109
      952 CAPTURE                          VAL R26
      953 SETTABLEKS                       R123 R31 K306 ["constructToolboxAutocompleteUrl"]
      955 DUPCLOSURE                       R123 K307 [PROTO_77]
      956 CAPTURE                          VAL R102
      957 CAPTURE                          VAL R26
      958 CAPTURE                          VAL R29
      959 SETTABLEKS                       R123 R31 K308 ["constructGetHomeConfigurationUrl"]
      961 DUPCLOSURE                       R123 K309 [PROTO_78]
      962 CAPTURE                          VAL R110
      963 CAPTURE                          VAL R26
      964 SETTABLEKS                       R123 R31 K310 ["constructPublishingRequirementsUrl"]
      966 DUPCLOSURE                       R123 K311 [PROTO_79]
      967 CAPTURE                          VAL R26
      968 SETTABLEKS                       R123 R31 K312 ["getCreatorMarketplaceQuotas"]
      970 DUPCLOSURE                       R123 K313 [PROTO_80]
      971 CAPTURE                          VAL R114
      972 SETTABLEKS                       R123 R31 K314 ["constructGetAssetMediaIdsUrl"]
      974 DUPCLOSURE                       R123 K315 [PROTO_81]
      975 CAPTURE                          VAL R115
      976 SETTABLEKS                       R123 R31 K316 ["constructDeleteAssetMediaUrl"]
      978 DUPCLOSURE                       R123 K317 [PROTO_82]
      979 CAPTURE                          VAL R116
      980 SETTABLEKS                       R123 R31 K318 ["constructPostSetAssetMediaOrder"]
      982 DUPCLOSURE                       R123 K319 [PROTO_83]
      983 CAPTURE                          VAL R117
      984 SETTABLEKS                       R123 R31 K320 ["constructPostUploadAssetMedia"]
      986 JUMPIFNOT                        R3 ; [+4]
      987 DUPCLOSURE                       R123 K321 [PROTO_84]
      988 CAPTURE                          VAL R27
      989 SETTABLEKS                       R123 R31 K322 ["constructCreatorDashboardAssetConfigUrl"]
      991 JUMPIFNOT                        R5 ; [+6]
      992 DUPCLOSURE                       R123 K323 [PROTO_85]
      993 CAPTURE                          VAL R27
      994 CAPTURE                          VAL R95
      995 SETTABLEKS                       R123 R31 K324 ["constructCreatorDashboardConfigAvatarAssetUrl"]
      997 JUMP                             ; [+5]
      998 DUPCLOSURE                       R123 K325 [PROTO_86]
      999 CAPTURE                          VAL R27
     1000 CAPTURE                          VAL R95
     1001 SETTABLEKS                       R123 R31 K326 ["constructCreatorDashboardAvatarAssetUrl"]
     1003 DUPCLOSURE                       R123 K327 [PROTO_87]
     1004 CAPTURE                          VAL R27
     1005 SETTABLEKS                       R123 R31 K328 ["constructCreatorDashboardCreationsPageUrl"]
     1007 JUMPIFNOT                        R4 ; [+5]
     1008 DUPCLOSURE                       R123 K329 [PROTO_88]
     1009 CAPTURE                          VAL R27
     1010 CAPTURE                          VAL R96
     1011 SETTABLEKS                       R123 R31 K330 ["constructCreatorDashboardBundleConfigureUrl"]
     1013 DUPCLOSURE                       R123 K331 [PROTO_89]
     1014 CAPTURE                          VAL R27
     1015 SETTABLEKS                       R123 R31 K332 ["constructCreatorStoreConfigurationUrl"]
     1017 DUPCLOSURE                       R123 K333 [PROTO_90]
     1018 CAPTURE                          VAL R119
     1019 SETTABLEKS                       R123 R31 K334 ["constructGetUniverseInfo"]
     1021 MOVE                             R123 R7
     1022 CALL                             R123 0 1
     1023 JUMPIFNOT                        R123 ; [+4]
     1024 DUPCLOSURE                       R123 K335 [PROTO_91]
     1025 CAPTURE                          VAL R111
     1026 SETTABLEKS                       R123 R31 K336 ["constructCodeUnderstandingSummaryUrl"]
     1028 DUPCLOSURE                       R123 K337 [PROTO_92]
     1029 CAPTURE                          VAL R113
     1030 CAPTURE                          VAL R28
     1031 SETTABLEKS                       R123 R31 K338 ["constructGetFiatProductUrl"]
     1033 DUPCLOSURE                       R123 K339 [PROTO_93]
     1034 CAPTURE                          VAL R120
     1035 CAPTURE                          VAL R26
     1036 SETTABLEKS                       R123 R31 K340 ["constructAllowedGroupsForActionUrl"]
     1038 DUPCLOSURE                       R123 K341 [PROTO_94]
     1039 CAPTURE                          VAL R32
     1040 SETTABLEKS                       R123 R31 K342 ["constructCreatorStoreUrl"]
     1042 MOVE                             R123 R12
     1043 CALL                             R123 0 1
     1044 JUMPIFNOT                        R123 ; [+4]
     1045 DUPCLOSURE                       R123 K343 [PROTO_95]
     1046 CAPTURE                          VAL R121
     1047 SETTABLEKS                       R123 R31 K344 ["constructBatchAssetAccessPropertiesUrl"]
     1049 MOVE                             R123 R30
     1050 MOVE                             R124 R31
     1051 CALL                             R123 1 1
     1052 RETURN                           R123 1
