PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["SearchCreatorInventory"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 CALL                             R5 5 -1
        9 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["PostAsyncFullUrl"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 DUPTABLE                         R4 K2 [{"toolArgs", "handlerArgs"}]
        1 SETTABLEKS                       R0 R4 K0 ["toolArgs"]
        3 GETTABLEKS                       R5 R1 K1 ["handlerArgs"]
        5 SETTABLEKS                       R5 R4 K1 ["handlerArgs"]
        7 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createFreshGuestContext"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 LOADNIL                          R7
        6 MOVE                             R8 R1
        7 MOVE                             R9 R2
        8 MOVE                             R10 R3
        9 CALL                             R4 6 -1
       10 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getWidgetUpdateFunctions"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AssetSearchTool"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toolArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        5 GETTABLEKS                       R1 R1 K2 ["sendMessage"]
        7 GETTABLEKS                       R2 R0 K3 ["isFree"]
        9 JUMPIFEQKB                       R2 FALSE ; [+22]
       11 JUMPIFNOT                        R1 ; [+46]
       12 MOVE                             R2 R1
       13 DUPTABLE                         R3 K6 [{"text", "hidden"}]
       14 LOADK                            R5 K7 ["Please insert asset %* (\"%*\") using insert_asset. Asset type: %*."]
       15 GETTABLEKS                       R7 R0 K8 ["assetId"]
       17 GETTABLEKS                       R8 R0 K9 ["name"]
       19 GETTABLEKS                       R9 R0 K10 ["assetType"]
       21 NAMECALL                         R5 R5 K11 ["format"]
       23 CALL                             R5 4 1
       24 MOVE                             R4 R5
       25 SETTABLEKS                       R4 R3 K4 ["text"]
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K5 ["hidden"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K0 ["toolArgs"]
       35 GETTABLEKS                       R2 R2 K12 ["environment"]
       37 JUMPIFNOT                        R2 ; [+20]
       38 GETTABLEKS                       R3 R2 K13 ["http"]
       40 JUMPIFNOT                        R3 ; [+17]
       41 GETTABLEKS                       R3 R2 K13 ["http"]
       43 GETTABLEKS                       R3 R3 K14 ["openUrl"]
       45 JUMPIFNOT                        R3 ; [+12]
       46 GETTABLEKS                       R3 R2 K13 ["http"]
       48 GETTABLEKS                       R3 R3 K14 ["openUrl"]
       50 LOADK                            R5 K15 ["https://create.roblox.com/store/asset/%*"]
       51 GETTABLEKS                       R7 R0 K8 ["assetId"]
       53 NAMECALL                         R5 R5 K11 ["format"]
       55 CALL                             R5 2 1
       56 MOVE                             R4 R5
       57 CALL                             R3 1 0
       58 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R8 K1 [game]
        2 GETTABLEKS                       R8 R8 K2 ["GameId"]
        4 FASTCALL1                        TOSTRING R8 ; [+2]
        5 GETIMPORT                        R7 K4 [tostring]
        7 CALL                             R7 1 1
        8 MOVE                             R2 R7
        9 LOADK                            R3 K5 [":"]
       10 GETIMPORT                        R8 K1 [game]
       12 GETTABLEKS                       R8 R8 K6 ["CreatorId"]
       14 FASTCALL1                        TOSTRING R8 ; [+2]
       15 GETIMPORT                        R7 K4 [tostring]
       17 CALL                             R7 1 1
       18 MOVE                             R4 R7
       19 LOADK                            R5 K5 [":"]
       20 GETIMPORT                        R7 K1 [game]
       22 GETTABLEKS                       R7 R7 K7 ["CreatorType"]
       24 FASTCALL1                        TOSTRING R7 ; [+2]
       25 GETIMPORT                        R6 K4 [tostring]
       27 CALL                             R6 1 1
       28 CONCAT                           R1 R2 R6
       29 GETUPVAL                         R2 0
       30 JUMPIFNOT                        R2 ; [+17]
       31 GETUPVAL                         R2 1
       32 JUMPIFNOTEQ                      R2 R1 ; [+15]
       34 GETUPVAL                         R2 2
       35 LOADK                            R4 K8 ["[AssetSearchTool] discoverContext: returning cached context: %*"]
       36 GETUPVAL                         R6 3
       37 GETUPVAL                         R8 0
       38 NAMECALL                         R6 R6 K9 ["JSONEncode"]
       40 CALL                             R6 2 1
       41 NAMECALL                         R4 R4 K10 ["format"]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 0
       47 RETURN                           R2 1
       48 GETTABLEKS                       R3 R0 K11 ["getUserId"]
       50 CALL                             R3 0 -1
       51 FASTCALL                         TOSTRING ; [+2]
       52 GETIMPORT                        R2 K4 [tostring]
       54 CALL                             R2 -1 1
       55 GETIMPORT                        R3 K1 [game]
       57 GETTABLEKS                       R3 R3 K2 ["GameId"]
       59 GETIMPORT                        R4 K1 [game]
       61 GETTABLEKS                       R4 R4 K7 ["CreatorType"]
       63 GETIMPORT                        R5 K1 [game]
       65 GETTABLEKS                       R5 R5 K6 ["CreatorId"]
       67 GETUPVAL                         R6 2
       68 LOADK                            R8 K12 ["[AssetSearchTool] discoverContext: userId=%*, gameId=%*, creatorType=%*, creatorId=%*"]
       69 MOVE                             R10 R2
       70 MOVE                             R11 R3
       71 FASTCALL1                        TOSTRING R4 ; [+3]
       72 MOVE                             R13 R4
       73 GETIMPORT                        R12 K4 [tostring]
       75 CALL                             R12 1 1
       76 MOVE                             R13 R5
       77 NAMECALL                         R8 R8 K10 ["format"]
       79 CALL                             R8 5 1
       80 MOVE                             R7 R8
       81 CALL                             R6 1 0
       82 DUPTABLE                         R6 K16 [{"userId", "universeId", "groupId"}]
       83 SETTABLEKS                       R2 R6 K13 ["userId"]
       85 LOADN                            R8 0
       86 JUMPIFNOTLT                      R8 R3 ; [+7]
       88 FASTCALL1                        TOSTRING R3 ; [+3]
       89 MOVE                             R8 R3
       90 GETIMPORT                        R7 K4 [tostring]
       92 CALL                             R7 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R7
       95 SETTABLEKS                       R7 R6 K14 ["universeId"]
       97 GETIMPORT                        R8 K19 [Enum.CreatorType.Group]
       99 JUMPIFNOTEQ                      R4 R8 ; [+7]
      101 FASTCALL1                        TOSTRING R5 ; [+3]
      102 MOVE                             R8 R5
      103 GETIMPORT                        R7 K4 [tostring]
      105 CALL                             R7 1 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R7
      108 SETTABLEKS                       R7 R6 K15 ["groupId"]
      110 SETUPVAL                         R1 1
      111 SETUPVAL                         R6 0
      112 GETUPVAL                         R7 2
      113 LOADK                            R9 K20 ["[AssetSearchTool] discoverContext: resolved context: %*"]
      114 GETUPVAL                         R11 3
      115 MOVE                             R13 R6
      116 NAMECALL                         R11 R11 K9 ["JSONEncode"]
      118 CALL                             R11 2 1
      119 NAMECALL                         R9 R9 K10 ["format"]
      121 CALL                             R9 2 1
      122 MOVE                             R8 R9
      123 CALL                             R7 1 0
      124 RETURN                           R6 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postRbxApi"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R1 K6 [{"query", "maxPageSize", "sortCategory", "sortDirection", "searchView", "includeOnlyVerifiedCreators"}]
        1 GETTABLEKS                       R2 R0 K7 ["keyword"]
        3 SETTABLEKS                       R2 R1 K0 ["query"]
        5 GETTABLEKS                       R3 R0 K9 ["limit"]
        7 ORK                              R2 R3 K8 [10]
        8 SETTABLEKS                       R2 R1 K1 ["maxPageSize"]
       10 LOADK                            R2 K10 ["Relevance"]
       11 SETTABLEKS                       R2 R1 K2 ["sortCategory"]
       13 LOADK                            R2 K11 ["None"]
       14 SETTABLEKS                       R2 R1 K3 ["sortDirection"]
       16 LOADK                            R2 K12 ["Full"]
       17 SETTABLEKS                       R2 R1 K4 ["searchView"]
       19 GETTABLEKS                       R3 R0 K5 ["includeOnlyVerifiedCreators"]
       21 ORK                              R2 R3 K13 [False]
       22 SETTABLEKS                       R2 R1 K5 ["includeOnlyVerifiedCreators"]
       24 GETTABLEKS                       R3 R0 K15 ["searchCategoryType"]
       26 ORK                              R2 R3 K14 ["Model"]
       27 SETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       29 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       31 JUMPIFEQKNIL                     R2 ; [+5]
       33 GETTABLEKS                       R2 R0 K16 ["minPrice"]
       35 SETTABLEKS                       R2 R1 K17 ["minPriceCents"]
       37 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       39 JUMPIFEQKNIL                     R2 ; [+5]
       41 GETTABLEKS                       R2 R0 K18 ["maxPrice"]
       43 SETTABLEKS                       R2 R1 K19 ["maxPriceCents"]
       45 GETTABLEKS                       R2 R0 K20 ["facets"]
       47 JUMPIFEQKNIL                     R2 ; [+5]
       49 GETTABLEKS                       R2 R0 K20 ["facets"]
       51 SETTABLEKS                       R2 R1 K20 ["facets"]
       53 GETTABLEKS                       R2 R0 K21 ["tags"]
       55 JUMPIFEQKNIL                     R2 ; [+5]
       57 GETTABLEKS                       R2 R0 K21 ["tags"]
       59 SETTABLEKS                       R2 R1 K21 ["tags"]
       61 GETTABLEKS                       R2 R0 K22 ["isPackageFilter"]
       63 JUMPIFNOT                        R2 ; [+10]
       64 DUPTABLE                         R2 K24 [{"includedSubTypes"}]
       65 NEWTABLE                         R3 0 1
       67 LOADK                            R4 K25 ["Package"]
       68 SETLIST                          R3 R4 1 [1]
       70 SETTABLEKS                       R3 R2 K23 ["includedSubTypes"]
       72 SETTABLEKS                       R2 R1 K26 ["modelSearchFilters"]
       74 GETTABLEKS                       R2 R1 K15 ["searchCategoryType"]
       76 JUMPIFNOTEQKS                    R2 K27 ["Audio"] ; [+31]
       78 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       80 JUMPIFNOTEQKNIL                  R2 ; [+5]
       82 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
       84 JUMPIFEQKNIL                     R2 ; [+23]
       86 NEWTABLE                         R2 0 0
       88 SETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       90 GETTABLEKS                       R2 R0 K28 ["minDuration"]
       92 JUMPIFNOT                        R2 ; [+6]
       93 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
       95 GETTABLEKS                       R3 R0 K28 ["minDuration"]
       97 SETTABLEKS                       R3 R2 K31 ["minDurationSeconds"]
       99 GETTABLEKS                       R2 R0 K29 ["maxDuration"]
      101 JUMPIFNOT                        R2 ; [+6]
      102 GETTABLEKS                       R2 R1 K30 ["audioSearchFilters"]
      104 GETTABLEKS                       R3 R0 K29 ["maxDuration"]
      106 SETTABLEKS                       R3 R2 K32 ["maxDurationSeconds"]
      108 GETUPVAL                         R3 0
      109 GETTABLEKS                       R3 R3 K33 ["APIS_URL"]
      111 LOADK                            R4 K34 ["toolbox-service/v2/assets:search"]
      112 CONCAT                           R2 R3 R4
      113 GETUPVAL                         R3 1
      114 MOVE                             R5 R1
      115 NAMECALL                         R3 R3 K35 ["JSONEncode"]
      117 CALL                             R3 2 1
      118 GETUPVAL                         R4 2
      119 LOADK                            R6 K36 ["[AssetSearchTool] fetchCreatorStoreAssets: URL=%*"]
      120 MOVE                             R8 R2
      121 NAMECALL                         R6 R6 K37 ["format"]
      123 CALL                             R6 2 1
      124 MOVE                             R5 R6
      125 CALL                             R4 1 0
      126 GETUPVAL                         R4 2
      127 LOADK                            R6 K38 ["[AssetSearchTool] fetchCreatorStoreAssets: body=%*"]
      128 MOVE                             R8 R3
      129 NAMECALL                         R6 R6 K37 ["format"]
      131 CALL                             R6 2 1
      132 MOVE                             R5 R6
      133 CALL                             R4 1 0
      134 GETIMPORT                        R4 K40 [pcall]
      136 NEWCLOSURE                       R5 P0
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R3
      140 CALL                             R4 1 2
      141 JUMPIF                           R4 ; [+17]
      142 GETUPVAL                         R6 2
      143 LOADK                            R8 K41 ["[AssetSearchTool] fetchCreatorStoreAssets: FAILED error=%*"]
      144 FASTCALL1                        TOSTRING R5 ; [+3]
      145 MOVE                             R11 R5
      146 GETIMPORT                        R10 K43 [tostring]
      148 CALL                             R10 1 1
      149 NAMECALL                         R8 R8 K37 ["format"]
      151 CALL                             R8 2 1
      152 MOVE                             R7 R8
      153 CALL                             R6 1 0
      154 NEWTABLE                         R6 0 0
      156 NEWTABLE                         R7 0 0
      158 RETURN                           R6 2
      159 GETUPVAL                         R6 2
      160 LOADK                            R8 K44 ["[AssetSearchTool] fetchCreatorStoreAssets: SUCCESS bodyLen=%*"]
      161 LENGTH                           R10 R5
      162 NAMECALL                         R8 R8 K37 ["format"]
      164 CALL                             R8 2 1
      165 MOVE                             R7 R8
      166 CALL                             R6 1 0
      167 GETUPVAL                         R6 2
      168 LOADK                            R8 K45 ["[AssetSearchTool] fetchCreatorStoreAssets: preview=%*"]
      169 LOADN                            R12 1
      170 LOADN                            R13 44
      171 FASTCALL3                        STRING_SUB R5 R12 R13
      173 MOVE                             R11 R5
      174 GETIMPORT                        R10 K48 [string.sub]
      176 CALL                             R10 3 1
      177 NAMECALL                         R8 R8 K37 ["format"]
      179 CALL                             R8 2 1
      180 MOVE                             R7 R8
      181 CALL                             R6 1 0
      182 GETIMPORT                        R6 K40 [pcall]
      184 NEWCLOSURE                       R7 P1
      185 CAPTURE                          UPVAL U1
      186 CAPTURE                          VAL R5
      187 CALL                             R6 1 2
      188 JUMPIFNOT                        R6 ; [+1]
      189 JUMPIF                           R7 ; [+5]
      190 NEWTABLE                         R8 0 0
      192 NEWTABLE                         R9 0 0
      194 RETURN                           R8 2
      195 NEWTABLE                         R8 0 0
      197 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      199 JUMPIFNOT                        R9 ; [+9]
      200 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      202 GETTABLEKS                       R9 R9 K50 ["availableFacets"]
      204 JUMPIFNOT                        R9 ; [+4]
      205 GETTABLEKS                       R9 R7 K49 ["queryFacets"]
      207 GETTABLEKS                       R8 R9 K50 ["availableFacets"]
      209 NEWTABLE                         R9 0 0
      211 GETTABLEKS                       R10 R7 K51 ["creatorStoreAssets"]
      213 JUMPIF                           R10 ; [+2]
      214 NEWTABLE                         R10 0 0
      216 LOADNIL                          R11
      217 LOADNIL                          R12
      218 FORGPREP                         R10
      219 GETTABLEKS                       R15 R14 K52 ["asset"]
      221 GETTABLEKS                       R16 R14 K53 ["creator"]
      223 JUMPIF                           R16 ; [+2]
      224 NEWTABLE                         R16 0 0
      226 GETTABLEKS                       R17 R14 K54 ["creatorStoreProduct"]
      228 LOADNIL                          R18
      229 LOADN                            R19 0
      230 JUMPIFNOT                        R17 ; [+68]
      231 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      233 JUMPIFNOT                        R20 ; [+65]
      234 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      236 GETTABLEKS                       R20 R20 K56 ["quantity"]
      238 JUMPIFNOT                        R20 ; [+60]
      239 GETTABLEKS                       R20 R17 K55 ["purchasePrice"]
      241 GETTABLEKS                       R21 R20 K56 ["quantity"]
      243 GETTABLEKS                       R23 R21 K58 ["significand"]
      245 ORK                              R22 R23 K57 [0]
      246 GETTABLEKS                       R24 R21 K59 ["exponent"]
      248 ORK                              R23 R24 K57 [0]
      249 LOADN                            R24 0
      250 JUMPIFNOTLT                      R24 R22 ; [+48]
      252 LOADN                            R26 10
      253 POW                              R25 R26 R23
      254 MUL                              R24 R22 R25
      255 MULK                             R27 R24 K61 [100]
      256 ADDK                             R26 R27 K60 [0.5]
      257 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      258 GETIMPORT                        R25 K64 [math.floor]
      260 CALL                             R25 1 1
      261 MOVE                             R19 R25
      262 GETTABLEKS                       R26 R20 K66 ["currencyCode"]
      264 ORK                              R25 R26 K65 ["USD"]
      265 JUMPIFNOTEQKS                    R25 K65 ["USD"] ; [+8]
      267 GETIMPORT                        R26 K67 [string.format]
      269 LOADK                            R27 K68 ["$%.2f"]
      270 MOVE                             R28 R24
      271 CALL                             R26 2 1
      272 MOVE                             R18 R26
      273 JUMP                             ; [+25]
      274 JUMPIFNOTEQKS                    R25 K69 ["GBP"] ; [+8]
      276 GETIMPORT                        R26 K67 [string.format]
      278 LOADK                            R27 K70 ["£%.2f"]
      279 MOVE                             R28 R24
      280 CALL                             R26 2 1
      281 MOVE                             R18 R26
      282 JUMP                             ; [+16]
      283 JUMPIFNOTEQKS                    R25 K71 ["EUR"] ; [+8]
      285 GETIMPORT                        R26 K67 [string.format]
      287 LOADK                            R27 K72 ["€%.2f"]
      288 MOVE                             R28 R24
      289 CALL                             R26 2 1
      290 MOVE                             R18 R26
      291 JUMP                             ; [+7]
      292 GETIMPORT                        R26 K67 [string.format]
      294 LOADK                            R27 K73 ["%s %.2f"]
      295 MOVE                             R28 R25
      296 MOVE                             R29 R24
      297 CALL                             R26 3 1
      298 MOVE                             R18 R26
      299 GETUPVAL                         R20 2
      300 LOADK                            R22 K74 ["[AssetSearchTool] fetchCreatorStoreAssets: asset %* \"%*\" priceCents=%* priceLabel=%*"]
      301 JUMPIFNOT                        R15 ; [+3]
      302 GETTABLEKS                       R24 R15 K75 ["id"]
      304 JUMPIF                           R24 ; [+1]
      305 LOADK                            R24 K76 ["?"]
      306 JUMPIFNOT                        R15 ; [+3]
      307 GETTABLEKS                       R25 R15 K77 ["name"]
      309 JUMPIF                           R25 ; [+1]
      310 LOADK                            R25 K76 ["?"]
      311 MOVE                             R26 R19
      312 ORK                              R27 R18 K78 ["free"]
      313 NAMECALL                         R22 R22 K37 ["format"]
      315 CALL                             R22 5 1
      316 MOVE                             R21 R22
      317 CALL                             R20 1 0
      318 JUMPIFNOT                        R15 ; [+3]
      319 GETTABLEKS                       R20 R15 K79 ["subTypes"]
      321 JUMPIF                           R20 ; [+2]
      322 NEWTABLE                         R20 0 0
      324 GETUPVAL                         R21 4
      325 GETTABLEKS                       R21 R21 K80 ["isPackageAsset"]
      327 LOADNIL                          R22
      328 MOVE                             R23 R20
      329 CALL                             R21 2 1
      330 JUMPIFNOT                        R21 ; [+2]
      331 LOADK                            R22 K25 ["Package"]
      332 JUMP                             ; [+7]
      333 GETUPVAL                         R24 5
      334 MOVE                             R25 R15
      335 JUMPIFNOT                        R25 ; [+2]
      336 GETTABLEKS                       R25 R15 K81 ["assetTypeId"]
      338 GETTABLE                         R23 R24 R25
      339 ORK                              R22 R23 K14 ["Model"]
      340 DUPTABLE                         R25 K84 [{"Asset", "Creator"}]
      341 DUPTABLE                         R26 K93 [{"Id", "Name", "Description", "TypeId", "TypeName", "Price", "PriceLabel", "SubTypes"}]
      342 MOVE                             R27 R15
      343 JUMPIFNOT                        R27 ; [+2]
      344 GETTABLEKS                       R27 R15 K75 ["id"]
      346 SETTABLEKS                       R27 R26 K85 ["Id"]
      348 JUMPIFNOT                        R15 ; [+3]
      349 GETTABLEKS                       R27 R15 K77 ["name"]
      351 JUMPIF                           R27 ; [+1]
      352 LOADK                            R27 K94 ["Unknown"]
      353 SETTABLEKS                       R27 R26 K86 ["Name"]
      355 JUMPIFNOT                        R15 ; [+3]
      356 GETTABLEKS                       R27 R15 K95 ["description"]
      358 JUMPIF                           R27 ; [+1]
      359 LOADNIL                          R27
      360 SETTABLEKS                       R27 R26 K87 ["Description"]
      362 JUMPIFNOT                        R15 ; [+3]
      363 GETTABLEKS                       R27 R15 K81 ["assetTypeId"]
      365 JUMPIF                           R27 ; [+1]
      366 LOADN                            R27 10
      367 SETTABLEKS                       R27 R26 K88 ["TypeId"]
      369 SETTABLEKS                       R22 R26 K89 ["TypeName"]
      371 SETTABLEKS                       R19 R26 K90 ["Price"]
      373 SETTABLEKS                       R18 R26 K91 ["PriceLabel"]
      375 SETTABLEKS                       R20 R26 K92 ["SubTypes"]
      377 SETTABLEKS                       R26 R25 K82 ["Asset"]
      379 DUPTABLE                         R26 K97 [{"Name", "Id", "IsVerifiedCreator"}]
      380 GETTABLEKS                       R28 R16 K77 ["name"]
      382 ORK                              R27 R28 K94 ["Unknown"]
      383 SETTABLEKS                       R27 R26 K86 ["Name"]
      385 GETTABLEKS                       R27 R16 K98 ["userId"]
      387 SETTABLEKS                       R27 R26 K85 ["Id"]
      389 GETTABLEKS                       R28 R16 K99 ["verified"]
      391 ORK                              R27 R28 K13 [False]
      392 SETTABLEKS                       R27 R26 K96 ["IsVerifiedCreator"]
      394 SETTABLEKS                       R26 R25 K83 ["Creator"]
      396 FASTCALL2                        TABLE_INSERT R9 R25 ; [+4]
      398 MOVE                             R24 R9
      399 GETIMPORT                        R23 K102 [table.insert]
      401 CALL                             R23 2 0
      402 FORGLOOP                         R10 2 ; [-184]
      404 GETUPVAL                         R10 2
      405 LOADK                            R12 K103 ["[AssetSearchTool] fetchCreatorStoreAssets: parsed %* results, %* available facets"]
      406 LENGTH                           R14 R9
      407 LENGTH                           R15 R8
      408 NAMECALL                         R12 R12 K37 ["format"]
      410 CALL                             R12 3 1
      411 MOVE                             R11 R12
      412 CALL                             R10 1 0
      413 MOVE                             R10 R9
      414 MOVE                             R11 R8
      415 RETURN                           R10 2

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["[AssetSearchTool] parseMarketplace: bodyLen=%* preview=%*"]
        2 LENGTH                           R5 R0
        3 LOADN                            R8 1
        4 LOADN                            R9 200
        5 FASTCALL3                        STRING_SUB R0 R8 R9
        7 MOVE                             R7 R0
        8 GETIMPORT                        R6 K3 [string.sub]
       10 CALL                             R6 3 1
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 3 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K6 [pcall]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CALL                             R1 1 2
       22 JUMPIFNOT                        R1 ; [+1]
       23 JUMPIF                           R2 ; [+17]
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K7 ["[AssetSearchTool] parseMarketplace: JSON parse FAILED: parseOk=%*"]
       26 FASTCALL1                        TOSTRING R1 ; [+3]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K9 [tostring]
       30 CALL                             R7 1 1
       31 NAMECALL                         R5 R5 K4 ["format"]
       33 CALL                             R5 2 1
       34 MOVE                             R4 R5
       35 CALL                             R3 1 0
       36 NEWTABLE                         R3 0 0
       38 NEWTABLE                         R4 0 0
       40 RETURN                           R3 2
       41 GETTABLEKS                       R3 R2 K10 ["success"]
       43 JUMPIFNOTEQKB                    R3 FALSE ; [+16]
       45 GETUPVAL                         R3 0
       46 LOADK                            R5 K11 ["[AssetSearchTool] parseMarketplace: error: %*"]
       47 GETTABLEKS                       R8 R2 K13 ["error"]
       49 ORK                              R7 R8 K12 ["unknown"]
       50 NAMECALL                         R5 R5 K4 ["format"]
       52 CALL                             R5 2 1
       53 MOVE                             R4 R5
       54 CALL                             R3 1 0
       55 NEWTABLE                         R3 0 0
       57 NEWTABLE                         R4 0 0
       59 RETURN                           R3 2
       60 GETTABLEKS                       R3 R2 K14 ["AvailableFacets"]
       62 JUMPIF                           R3 ; [+2]
       63 NEWTABLE                         R3 0 0
       65 NEWTABLE                         R4 0 0
       67 GETTABLEKS                       R5 R2 K15 ["Results"]
       69 JUMPIF                           R5 ; [+5]
       70 GETTABLEKS                       R5 R2 K16 ["data"]
       72 JUMPIF                           R5 ; [+2]
       73 NEWTABLE                         R5 0 0
       75 GETUPVAL                         R6 0
       76 LOADK                            R8 K17 ["[AssetSearchTool] parseMarketplace: found %* raw items (Results=%*, data=%*)"]
       77 LENGTH                           R10 R5
       78 GETTABLEKS                       R12 R2 K15 ["Results"]
       80 JUMPIFNOT                        R12 ; [+4]
       81 GETTABLEKS                       R12 R2 K15 ["Results"]
       83 LENGTH                           R11 R12
       84 JUMPIF                           R11 ; [+1]
       85 LOADK                            R11 K18 ["nil"]
       86 GETTABLEKS                       R13 R2 K16 ["data"]
       88 JUMPIFNOT                        R13 ; [+4]
       89 GETTABLEKS                       R13 R2 K16 ["data"]
       91 LENGTH                           R12 R13
       92 JUMPIF                           R12 ; [+1]
       93 LOADK                            R12 K18 ["nil"]
       94 NAMECALL                         R8 R8 K4 ["format"]
       96 CALL                             R8 4 1
       97 MOVE                             R7 R8
       98 CALL                             R6 1 0
       99 MOVE                             R6 R5
      100 LOADNIL                          R7
      101 LOADNIL                          R8
      102 FORGPREP                         R6
      103 GETTABLEKS                       R11 R10 K19 ["Asset"]
      105 JUMPIF                           R11 ; [+4]
      106 GETTABLEKS                       R11 R10 K20 ["asset"]
      108 JUMPIF                           R11 ; [+1]
      109 MOVE                             R11 R10
      110 GETTABLEKS                       R12 R10 K21 ["Creator"]
      112 JUMPIF                           R12 ; [+5]
      113 GETTABLEKS                       R12 R10 K22 ["creator"]
      115 JUMPIF                           R12 ; [+2]
      116 NEWTABLE                         R12 0 0
      118 JUMPIFNOT                        R11 ; [+65]
      119 GETTABLEKS                       R13 R11 K23 ["Id"]
      121 JUMPIFNOT                        R13 ; [+62]
      122 GETTABLEKS                       R14 R11 K25 ["TypeName"]
      124 ORK                              R13 R14 K24 ["Unknown"]
      125 DUPTABLE                         R16 K36 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree"}]
      126 GETTABLEKS                       R18 R11 K23 ["Id"]
      128 FASTCALL1                        TOSTRING R18 ; [+2]
      129 GETIMPORT                        R17 K9 [tostring]
      131 CALL                             R17 1 1
      132 SETTABLEKS                       R17 R16 K26 ["assetId"]
      134 GETTABLEKS                       R18 R11 K37 ["Name"]
      136 ORK                              R17 R18 K24 ["Unknown"]
      137 SETTABLEKS                       R17 R16 K27 ["name"]
      139 GETTABLEKS                       R17 R11 K38 ["Description"]
      141 SETTABLEKS                       R17 R16 K28 ["description"]
      143 SETTABLEKS                       R13 R16 K29 ["assetType"]
      145 LOADK                            R17 K39 ["creator_store"]
      146 SETTABLEKS                       R17 R16 K30 ["source"]
      148 LOADNIL                          R17
      149 SETTABLEKS                       R17 R16 K31 ["location"]
      151 GETTABLEKS                       R17 R12 K37 ["Name"]
      153 JUMPIF                           R17 ; [+4]
      154 GETTABLEKS                       R17 R12 K27 ["name"]
      156 JUMPIF                           R17 ; [+1]
      157 LOADNIL                          R17
      158 SETTABLEKS                       R17 R16 K32 ["creatorName"]
      160 GETTABLEKS                       R18 R11 K41 ["Price"]
      162 ORK                              R17 R18 K40 [0]
      163 SETTABLEKS                       R17 R16 K33 ["priceCents"]
      165 GETTABLEKS                       R17 R11 K42 ["PriceLabel"]
      167 SETTABLEKS                       R17 R16 K34 ["priceLabel"]
      169 GETTABLEKS                       R19 R11 K41 ["Price"]
      171 ORK                              R18 R19 K40 [0]
      172 JUMPIFEQKN                       R18 K40 [0] ; [+2]
      174 LOADB                            R17 0 +1
      175 LOADB                            R17 1
      176 SETTABLEKS                       R17 R16 K35 ["isFree"]
      178 FASTCALL2                        TABLE_INSERT R4 R16 ; [+4]
      180 MOVE                             R15 R4
      181 GETIMPORT                        R14 K45 [table.insert]
      183 CALL                             R14 2 0
      184 FORGLOOP                         R6 2 ; [-82]
      186 MOVE                             R6 R4
      187 MOVE                             R7 R3
      188 RETURN                           R6 2

PROTO_13:
        0 JUMPIF                           R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 LOADK                            R3 K0 ["[AssetSearchTool] parseInventory: nil response"]
        3 CALL                             R2 1 0
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K1 ["success"]
        9 JUMPIFNOTEQKB                    R2 FALSE ; [+14]
       11 GETUPVAL                         R2 0
       12 LOADK                            R4 K2 ["[AssetSearchTool] parseInventory: error: %*"]
       13 GETTABLEKS                       R7 R0 K4 ["error"]
       15 ORK                              R6 R7 K3 ["unknown"]
       16 NAMECALL                         R4 R4 K5 ["format"]
       18 CALL                             R4 2 1
       19 MOVE                             R3 R4
       20 CALL                             R2 1 0
       21 NEWTABLE                         R2 0 0
       23 RETURN                           R2 1
       24 NEWTABLE                         R2 0 0
       26 GETTABLEKS                       R3 R0 K6 ["items"]
       28 JUMPIF                           R3 ; [+5]
       29 GETTABLEKS                       R3 R0 K7 ["creatorInventoryItems"]
       31 JUMPIF                           R3 ; [+2]
       32 NEWTABLE                         R3 0 0
       34 GETUPVAL                         R4 0
       35 LOADK                            R6 K8 ["[AssetSearchTool] parseInventory: found %* raw items"]
       36 LENGTH                           R8 R3
       37 NAMECALL                         R6 R6 K5 ["format"]
       39 CALL                             R6 2 1
       40 MOVE                             R5 R6
       41 CALL                             R4 1 0
       42 MOVE                             R4 R3
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 FORGPREP                         R4
       46 GETTABLEKS                       R10 R8 K9 ["assetItem"]
       48 OR                               R9 R10 R8
       49 GETTABLEKS                       R11 R9 K10 ["asset"]
       51 OR                               R10 R11 R9
       52 JUMPIFNOT                        R10 ; [+98]
       53 GETTABLEKS                       R11 R10 K11 ["assetId"]
       55 JUMPIF                           R11 ; [+3]
       56 GETTABLEKS                       R11 R10 K12 ["id"]
       58 JUMPIFNOT                        R11 ; [+92]
       59 GETTABLEKS                       R12 R10 K11 ["assetId"]
       61 JUMPIF                           R12 ; [+2]
       62 GETTABLEKS                       R12 R10 K12 ["id"]
       64 FASTCALL1                        TOSTRING R12 ; [+2]
       65 GETIMPORT                        R11 K14 [tostring]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R10 K15 ["assetType"]
       70 JUMPIF                           R12 ; [+4]
       71 GETTABLEKS                       R12 R10 K16 ["type"]
       73 JUMPIF                           R12 ; [+1]
       74 LOADK                            R12 K17 ["Unknown"]
       75 GETUPVAL                         R15 1
       76 GETTABLE                         R14 R15 R12
       77 OR                               R13 R14 R12
       78 LOADB                            R14 1
       79 GETTABLEKS                       R15 R9 K18 ["isPackage"]
       81 JUMPIFEQKB                       R15 TRUE ; [+11]
       83 GETUPVAL                         R14 2
       84 GETTABLEKS                       R14 R14 K19 ["isPackageAsset"]
       86 LOADNIL                          R15
       87 GETTABLEKS                       R16 R10 K20 ["assetSubTypes"]
       89 JUMPIF                           R16 ; [+2]
       90 GETTABLEKS                       R16 R10 K21 ["subTypes"]
       92 CALL                             R14 2 1
       93 JUMPIFNOT                        R14 ; [+1]
       94 LOADK                            R13 K22 ["Package"]
       95 GETUPVAL                         R15 0
       96 LOADK                            R17 K23 ["[AssetSearchTool] parseInventory item: id=%* name=\"%*\" type=%* isPackage=%*"]
       97 MOVE                             R19 R11
       98 GETTABLEKS                       R20 R10 K24 ["displayName"]
      100 JUMPIF                           R20 ; [+2]
      101 GETTABLEKS                       R20 R10 K25 ["name"]
      103 MOVE                             R21 R13
      104 FASTCALL1                        TOSTRING R14 ; [+3]
      105 MOVE                             R23 R14
      106 GETIMPORT                        R22 K14 [tostring]
      108 CALL                             R22 1 1
      109 NAMECALL                         R17 R17 K5 ["format"]
      111 CALL                             R17 5 1
      112 MOVE                             R16 R17
      113 CALL                             R15 1 0
      114 DUPTABLE                         R17 K32 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "priceCents", "isFree"}]
      115 SETTABLEKS                       R11 R17 K11 ["assetId"]
      117 GETTABLEKS                       R18 R10 K24 ["displayName"]
      119 JUMPIF                           R18 ; [+4]
      120 GETTABLEKS                       R18 R10 K25 ["name"]
      122 JUMPIF                           R18 ; [+1]
      123 LOADK                            R18 K17 ["Unknown"]
      124 SETTABLEKS                       R18 R17 K25 ["name"]
      126 LOADNIL                          R18
      127 SETTABLEKS                       R18 R17 K26 ["description"]
      129 SETTABLEKS                       R13 R17 K15 ["assetType"]
      131 LOADK                            R18 K33 ["inventory"]
      132 SETTABLEKS                       R18 R17 K27 ["source"]
      134 SETTABLEKS                       R1 R17 K28 ["location"]
      136 LOADNIL                          R18
      137 SETTABLEKS                       R18 R17 K29 ["creatorName"]
      139 LOADN                            R18 0
      140 SETTABLEKS                       R18 R17 K30 ["priceCents"]
      142 LOADB                            R18 1
      143 SETTABLEKS                       R18 R17 K31 ["isFree"]
      145 FASTCALL2                        TABLE_INSERT R2 R17 ; [+4]
      147 MOVE                             R16 R2
      148 GETIMPORT                        R15 K36 [table.insert]
      150 CALL                             R15 2 0
      151 FORGLOOP                         R4 2 ; [-106]
      153 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K11 [{"keyword", "searchCategoryType", "limit", "facets", "tags", "isPackageFilter", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["keyword"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["searchCategoryType"]
        8 GETUPVAL                         R2 3
        9 SETTABLEKS                       R2 R1 K2 ["limit"]
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K3 ["facets"]
       14 SETTABLEKS                       R2 R1 K3 ["facets"]
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K4 ["tags"]
       19 SETTABLEKS                       R2 R1 K4 ["tags"]
       21 GETUPVAL                         R3 5
       22 JUMPIFEQKS                       R3 K12 ["Package"] ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K5 ["isPackageFilter"]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K6 ["includeOnlyVerifiedCreators"]
       31 SETTABLEKS                       R2 R1 K6 ["includeOnlyVerifiedCreators"]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K7 ["minPrice"]
       36 SETTABLEKS                       R2 R1 K7 ["minPrice"]
       38 GETUPVAL                         R2 4
       39 GETTABLEKS                       R2 R2 K8 ["maxPrice"]
       41 SETTABLEKS                       R2 R1 K8 ["maxPrice"]
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K9 ["minDuration"]
       46 SETTABLEKS                       R2 R1 K9 ["minDuration"]
       48 GETUPVAL                         R2 4
       49 GETTABLEKS                       R2 R2 K10 ["maxDuration"]
       51 SETTABLEKS                       R2 R1 K10 ["maxDuration"]
       53 CALL                             R0 1 -1
       54 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["makeRequest"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 JUMPIFNOTEQKS                    R0 K0 ["creator_store"] ; [+65]
        2 LOADNIL                          R6
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R8 0
        5 GETTABLE                         R7 R8 R2
        6 JUMPIFNOT                        R7 ; [+2]
        7 GETUPVAL                         R7 0
        8 GETTABLE                         R6 R7 R2
        9 MOVE                             R7 R5
       10 JUMPIF                           R7 ; [+2]
       11 NEWTABLE                         R7 0 0
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 GETIMPORT                        R11 K2 [pcall]
       18 NEWCLOSURE                       R12 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          REF R6
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R7
       24 CAPTURE                          VAL R2
       25 CALL                             R11 1 3
       26 MOVE                             R8 R11
       27 MOVE                             R9 R12
       28 MOVE                             R10 R13
       29 JUMPIF                           R8 ; [+18]
       30 GETUPVAL                         R11 2
       31 LOADK                            R13 K3 ["[AssetSearchTool] fetchCreatorStoreAssets threw: %*"]
       32 FASTCALL1                        TOSTRING R9 ; [+3]
       33 MOVE                             R16 R9
       34 GETIMPORT                        R15 K5 [tostring]
       36 CALL                             R15 1 1
       37 NAMECALL                         R13 R13 K6 ["format"]
       39 CALL                             R13 2 1
       40 MOVE                             R12 R13
       41 CALL                             R11 1 0
       42 NEWTABLE                         R11 0 0
       44 NEWTABLE                         R12 0 0
       46 CLOSEUPVALS                      R6
       47 RETURN                           R11 2
       48 GETUPVAL                         R11 3
       49 DUPTABLE                         R13 K10 [{"Results", "TotalResults", "AvailableFacets"}]
       50 SETTABLEKS                       R9 R13 K7 ["Results"]
       52 LENGTH                           R14 R9
       53 SETTABLEKS                       R14 R13 K8 ["TotalResults"]
       55 SETTABLEKS                       R10 R13 K9 ["AvailableFacets"]
       57 NAMECALL                         R11 R11 K11 ["JSONEncode"]
       59 CALL                             R11 2 1
       60 GETUPVAL                         R12 4
       61 MOVE                             R13 R11
       62 CALL                             R12 1 -1
       63 CLOSEUPVALS                      R6
       64 RETURN                           R12 -1
       65 CLOSEUPVALS                      R6
       66 GETUPVAL                         R7 5
       67 GETTABLE                         R6 R7 R0
       68 JUMPIF                           R6 ; [+5]
       69 NEWTABLE                         R7 0 0
       71 NEWTABLE                         R8 0 0
       73 RETURN                           R7 2
       74 LOADNIL                          R7
       75 JUMPIFNOTEQKS                    R0 K12 ["user"] ; [+4]
       77 GETTABLEKS                       R7 R4 K13 ["userId"]
       79 JUMP                             ; [+9]
       80 JUMPIFNOTEQKS                    R0 K14 ["group"] ; [+4]
       82 GETTABLEKS                       R7 R4 K15 ["groupId"]
       84 JUMP                             ; [+4]
       85 JUMPIFNOTEQKS                    R0 K16 ["universe"] ; [+3]
       87 GETTABLEKS                       R7 R4 K17 ["universeId"]
       89 JUMPIF                           R7 ; [+5]
       90 NEWTABLE                         R8 0 0
       92 NEWTABLE                         R9 0 0
       94 RETURN                           R8 2
       95 LOADNIL                          R8
       96 JUMPIFNOT                        R2 ; [+5]
       97 GETUPVAL                         R10 6
       98 GETTABLE                         R9 R10 R2
       99 JUMPIFNOT                        R9 ; [+2]
      100 GETUPVAL                         R9 6
      101 GETTABLE                         R8 R9 R2
      102 DUPTABLE                         R9 K20 [{"Type", "Id"}]
      103 GETUPVAL                         R11 7
      104 GETTABLE                         R10 R11 R6
      105 SETTABLEKS                       R10 R9 K18 ["Type"]
      107 FASTCALL1                        TONUMBER R7 ; [+3]
      108 MOVE                             R11 R7
      109 GETIMPORT                        R10 K22 [tonumber]
      111 CALL                             R10 1 1
      112 SETTABLEKS                       R10 R9 K19 ["Id"]
      114 GETUPVAL                         R10 8
      115 GETTABLEKS                       R10 R10 K23 ["searchCreatorInventory"]
      117 GETUPVAL                         R11 3
      118 MOVE                             R13 R1
      119 NAMECALL                         R11 R11 K24 ["UrlEncode"]
      121 CALL                             R11 2 1
      122 ORK                              R12 R8 K25 ["Model"]
      123 MOVE                             R13 R9
      124 MOVE                             R14 R3
      125 LOADK                            R15 K26 [""]
      126 CALL                             R10 5 1
      127 GETUPVAL                         R11 2
      128 LOADK                            R13 K27 ["[AssetSearchTool] searchInventory: URL=%*"]
      129 GETTABLEKS                       R15 R10 K28 ["getUrl"]
      131 CALL                             R15 0 1
      132 NAMECALL                         R13 R13 K6 ["format"]
      134 CALL                             R13 2 1
      135 MOVE                             R12 R13
      136 CALL                             R11 1 0
      137 GETIMPORT                        R11 K2 [pcall]
      139 NEWCLOSURE                       R12 P1
      140 CAPTURE                          VAL R10
      141 CALL                             R11 1 2
      142 JUMPIF                           R11 ; [+17]
      143 GETUPVAL                         R13 2
      144 LOADK                            R15 K29 ["[AssetSearchTool] searchInventory: request FAILED: %*"]
      145 FASTCALL1                        TOSTRING R12 ; [+3]
      146 MOVE                             R18 R12
      147 GETIMPORT                        R17 K5 [tostring]
      149 CALL                             R17 1 1
      150 NAMECALL                         R15 R15 K6 ["format"]
      152 CALL                             R15 2 1
      153 MOVE                             R14 R15
      154 CALL                             R13 1 0
      155 NEWTABLE                         R13 0 0
      157 NEWTABLE                         R14 0 0
      159 RETURN                           R13 2
      160 GETUPVAL                         R13 2
      161 LOADK                            R14 K30 ["[AssetSearchTool] searchInventory: SUCCESS"]
      162 CALL                             R13 1 0
      163 GETUPVAL                         R13 9
      164 GETTABLEKS                       R14 R12 K31 ["responseBody"]
      166 MOVE                             R15 R0
      167 CALL                             R13 2 1
      168 JUMPIFNOTEQKS                    R2 K32 ["Package"] ; [+21]
      170 NEWTABLE                         R14 0 0
      172 MOVE                             R15 R13
      173 LOADNIL                          R16
      174 LOADNIL                          R17
      175 FORGPREP                         R15
      176 GETTABLEKS                       R20 R19 K33 ["assetType"]
      178 JUMPIFNOTEQKS                    R20 K32 ["Package"] ; [+8]
      180 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      182 MOVE                             R21 R14
      183 MOVE                             R22 R19
      184 GETIMPORT                        R20 K36 [table.insert]
      186 CALL                             R20 2 0
      187 FORGLOOP                         R15 2 ; [-12]
      189 MOVE                             R13 R14
      190 MOVE                             R14 R13
      191 NEWTABLE                         R15 0 0
      193 RETURN                           R14 2

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["minPriceCents"]
        2 GETTABLEKS                       R2 R0 K1 ["maxPriceCents"]
        4 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
        6 JUMPIFNOTEQKS                    R3 K3 ["free"] ; [+3]
        8 LOADN                            R2 0
        9 RETURN                           R1 2
       10 GETTABLEKS                       R3 R0 K2 ["priceFilter"]
       12 JUMPIFNOTEQKS                    R3 K4 ["paid"] ; [+2]
       14 ORK                              R1 R1 K5 [1]
       15 RETURN                           R1 2

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K4 [{"type", "mode", "query"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K5 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K6 ["Modes"]
       13 GETTABLEKS                       R4 R4 K7 ["Searching"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K8 [{"type", "mode", "query", "searchId", "resultCount", "results", "expanded"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K9 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K10 ["Modes"]
       13 GETTABLEKS                       R4 R4 K11 ["Results"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 LOADB                            R6 0
       22 NAMECALL                         R4 R4 K12 ["GenerateGUID"]
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K4 ["searchId"]
       27 LOADN                            R4 0
       28 SETTABLEKS                       R4 R3 K5 ["resultCount"]
       30 NEWTABLE                         R4 0 0
       32 SETTABLEKS                       R4 R3 K6 ["results"]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K7 ["expanded"]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateWidget"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K9 [{"type", "mode", "query", "searchId", "resultCount", "results", "expanded", "onItemClicked"}]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K10 ["Type"]
        8 SETTABLEKS                       R4 R3 K1 ["type"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K11 ["Modes"]
       13 GETTABLEKS                       R4 R4 K12 ["Results"]
       15 SETTABLEKS                       R4 R3 K2 ["mode"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K3 ["query"]
       20 GETUPVAL                         R4 3
       21 SETTABLEKS                       R4 R3 K4 ["searchId"]
       23 GETUPVAL                         R5 4
       24 LENGTH                           R4 R5
       25 SETTABLEKS                       R4 R3 K5 ["resultCount"]
       27 GETUPVAL                         R4 5
       28 SETTABLEKS                       R4 R3 K6 ["results"]
       30 LOADB                            R4 1
       31 SETTABLEKS                       R4 R3 K7 ["expanded"]
       33 GETUPVAL                         R4 6
       34 SETTABLEKS                       R4 R3 K8 ["onItemClicked"]
       36 CALL                             R1 2 0
       37 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R4 R1 K1 ["query"]
        2 ORK                              R3 R4 K0 [""]
        3 GETTABLEKS                       R5 R1 K3 ["scope"]
        5 ORK                              R4 R5 K2 ["auto"]
        6 GETTABLEKS                       R7 R1 K5 ["maxResults"]
        8 ORK                              R6 R7 K4 [5]
        9 LOADN                            R7 1
       10 LOADN                            R8 20
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R5 K8 [math.clamp]
       14 CALL                             R5 3 1
       15 GETTABLEKS                       R6 R0 K9 ["toolArgs"]
       17 GETTABLEKS                       R6 R6 K10 ["environment"]
       19 GETUPVAL                         R7 0
       20 LOADK                            R9 K11 ["[AssetSearchTool] === SEARCH START === query=\"%*\" scope=%* maxResults=%* assetType=%*"]
       21 MOVE                             R11 R3
       22 MOVE                             R12 R4
       23 MOVE                             R13 R5
       24 GETTABLEKS                       R15 R1 K13 ["assetType"]
       26 ORK                              R14 R15 K12 ["nil"]
       27 NAMECALL                         R9 R9 K14 ["format"]
       29 CALL                             R9 5 1
       30 MOVE                             R8 R9
       31 CALL                             R7 1 0
       32 GETUPVAL                         R8 1
       33 GETTABLE                         R7 R8 R4
       34 JUMPIF                           R7 ; [+24]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       37 LOADK                            R10 K16 ["error"]
       38 SETTABLEKS                       R10 R9 K15 ["status"]
       40 LOADK                            R11 K19 ["Invalid scope: \"%*\". Must be one of: auto, creator_store, user, group, universe"]
       41 MOVE                             R13 R4
       42 NAMECALL                         R11 R11 K14 ["format"]
       44 CALL                             R11 2 1
       45 MOVE                             R10 R11
       46 SETTABLEKS                       R10 R9 K16 ["error"]
       48 NEWTABLE                         R10 0 1
       50 LOADK                            R11 K20 ["Use one of the valid scope values: auto, creator_store, user, group, universe"]
       51 SETLIST                          R10 R11 1 [1]
       53 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
       55 NAMECALL                         R7 R7 K21 ["JSONEncode"]
       57 CALL                             R7 2 -1
       58 RETURN                           R7 -1
       59 GETTABLEKS                       R7 R1 K22 ["includeSources"]
       61 JUMPIFNOT                        R7 ; [+22]
       62 GETTABLEKS                       R7 R1 K23 ["excludeSources"]
       64 JUMPIFNOT                        R7 ; [+19]
       65 GETUPVAL                         R7 2
       66 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       67 LOADK                            R10 K16 ["error"]
       68 SETTABLEKS                       R10 R9 K15 ["status"]
       70 LOADK                            R10 K24 ["Cannot provide both includeSources and excludeSources"]
       71 SETTABLEKS                       R10 R9 K16 ["error"]
       73 NEWTABLE                         R10 0 1
       75 LOADK                            R11 K25 ["Use either includeSources OR excludeSources, not both"]
       76 SETLIST                          R10 R11 1 [1]
       78 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
       80 NAMECALL                         R7 R7 K21 ["JSONEncode"]
       82 CALL                             R7 2 -1
       83 RETURN                           R7 -1
       84 JUMPIFEQKS                       R4 K2 ["auto"] ; [+31]
       86 GETTABLEKS                       R7 R1 K22 ["includeSources"]
       88 JUMPIF                           R7 ; [+3]
       89 GETTABLEKS                       R7 R1 K23 ["excludeSources"]
       91 JUMPIFNOT                        R7 ; [+24]
       92 GETUPVAL                         R7 2
       93 DUPTABLE                         R9 K18 [{"status", "error", "nextSteps"}]
       94 LOADK                            R10 K16 ["error"]
       95 SETTABLEKS                       R10 R9 K15 ["status"]
       97 LOADK                            R11 K26 ["includeSources and excludeSources only apply when scope is \"auto\", but scope is \"%*\""]
       98 MOVE                             R13 R4
       99 NAMECALL                         R11 R11 K14 ["format"]
      101 CALL                             R11 2 1
      102 MOVE                             R10 R11
      103 SETTABLEKS                       R10 R9 K16 ["error"]
      105 NEWTABLE                         R10 0 1
      107 LOADK                            R11 K27 ["Remove includeSources/excludeSources, or change scope to 'auto'"]
      108 SETLIST                          R10 R11 1 [1]
      110 SETTABLEKS                       R10 R9 K17 ["nextSteps"]
      112 NAMECALL                         R7 R7 K21 ["JSONEncode"]
      114 CALL                             R7 2 -1
      115 RETURN                           R7 -1
      116 GETUPVAL                         R7 3
      117 GETTABLEKS                       R7 R7 K28 ["getWidgetUpdateFunctions"]
      119 MOVE                             R8 R0
      120 LOADK                            R9 K29 ["AssetSearchTool"]
      121 CALL                             R7 2 1
      122 GETTABLEKS                       R8 R7 K30 ["updateWidget"]
      124 NEWCLOSURE                       R9 P0
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R3
      128 CALL                             R8 1 0
      129 NEWCLOSURE                       R8 P1
      130 CAPTURE                          VAL R7
      131 CAPTURE                          UPVAL U4
      132 CAPTURE                          UPVAL U5
      133 CAPTURE                          VAL R3
      134 CAPTURE                          UPVAL U2
      135 GETUPVAL                         R9 0
      136 LOADK                            R10 K31 ["[AssetSearchTool] Discovering context..."]
      137 CALL                             R9 1 0
      138 GETIMPORT                        R9 K33 [pcall]
      140 NEWCLOSURE                       R10 P2
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          VAL R6
      143 CALL                             R9 1 2
      144 JUMPIF                           R9 ; [+39]
      145 GETUPVAL                         R11 0
      146 LOADK                            R13 K34 ["[AssetSearchTool] discoverContext threw: %*"]
      147 FASTCALL1                        TOSTRING R10 ; [+3]
      148 MOVE                             R16 R10
      149 GETIMPORT                        R15 K36 [tostring]
      151 CALL                             R15 1 1
      152 NAMECALL                         R13 R13 K14 ["format"]
      154 CALL                             R13 2 1
      155 MOVE                             R12 R13
      156 CALL                             R11 1 0
      157 GETTABLEKS                       R11 R7 K30 ["updateWidget"]
      159 NEWCLOSURE                       R12 P3
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          VAL R3
      163 CAPTURE                          UPVAL U2
      164 CALL                             R11 1 0
      165 GETUPVAL                         R11 2
      166 DUPTABLE                         R13 K18 [{"status", "error", "nextSteps"}]
      167 LOADK                            R14 K16 ["error"]
      168 SETTABLEKS                       R14 R13 K15 ["status"]
      170 LOADK                            R14 K37 ["Failed to discover Studio context"]
      171 SETTABLEKS                       R14 R13 K16 ["error"]
      173 NEWTABLE                         R14 0 1
      175 LOADK                            R15 K38 ["Retry the search. If this persists, the Studio session may need to be restarted"]
      176 SETLIST                          R14 R15 1 [1]
      178 SETTABLEKS                       R14 R13 K17 ["nextSteps"]
      180 NAMECALL                         R11 R11 K21 ["JSONEncode"]
      182 CALL                             R11 2 -1
      183 RETURN                           R11 -1
      184 GETUPVAL                         R11 0
      185 LOADK                            R13 K39 ["[AssetSearchTool] Context: userId=%* universeId=%* groupId=%*"]
      186 GETTABLEKS                       R15 R10 K40 ["userId"]
      188 GETTABLEKS                       R17 R10 K41 ["universeId"]
      190 ORK                              R16 R17 K12 ["nil"]
      191 GETTABLEKS                       R18 R10 K42 ["groupId"]
      193 ORK                              R17 R18 K12 ["nil"]
      194 NAMECALL                         R13 R13 K14 ["format"]
      196 CALL                             R13 4 1
      197 MOVE                             R12 R13
      198 CALL                             R11 1 0
      199 NEWTABLE                         R11 0 0
      201 NEWTABLE                         R12 0 0
      203 NEWTABLE                         R13 0 0
      205 NEWTABLE                         R14 0 0
      207 JUMPIFNOTEQKS                    R4 K2 ["auto"] ; [+233]
      209 NEWTABLE                         R15 0 4
      211 LOADK                            R16 K43 ["user"]
      212 LOADK                            R17 K44 ["group"]
      213 LOADK                            R18 K45 ["universe"]
      214 LOADK                            R19 K46 ["creator_store"]
      215 SETLIST                          R15 R16 4 [1]
      217 GETTABLEKS                       R16 R1 K22 ["includeSources"]
      219 JUMPIFNOT                        R16 ; [+17]
      220 NEWTABLE                         R15 0 0
      222 GETTABLEKS                       R16 R1 K22 ["includeSources"]
      224 LOADNIL                          R17
      225 LOADNIL                          R18
      226 FORGPREP                         R16
      227 FASTCALL2                        TABLE_INSERT R15 R20 ; [+5]
      229 MOVE                             R22 R15
      230 MOVE                             R23 R20
      231 GETIMPORT                        R21 K49 [table.insert]
      233 CALL                             R21 2 0
      234 FORGLOOP                         R16 2 ; [-8]
      236 JUMP                             ; [+32]
      237 GETTABLEKS                       R16 R1 K23 ["excludeSources"]
      239 JUMPIFNOT                        R16 ; [+29]
      240 NEWTABLE                         R16 0 0
      242 GETTABLEKS                       R17 R1 K23 ["excludeSources"]
      244 LOADNIL                          R18
      245 LOADNIL                          R19
      246 FORGPREP                         R17
      247 LOADB                            R22 1
      248 SETTABLE                         R22 R16 R21
      249 FORGLOOP                         R17 2 ; [-3]
      251 NEWTABLE                         R17 0 0
      253 MOVE                             R18 R15
      254 LOADNIL                          R19
      255 LOADNIL                          R20
      256 FORGPREP                         R18
      257 GETTABLE                         R23 R16 R22
      258 JUMPIF                           R23 ; [+7]
      259 FASTCALL2                        TABLE_INSERT R17 R22 ; [+5]
      261 MOVE                             R24 R17
      262 MOVE                             R25 R22
      263 GETIMPORT                        R23 K49 [table.insert]
      265 CALL                             R23 2 0
      266 FORGLOOP                         R18 2 ; [-10]
      268 MOVE                             R15 R17
      269 GETUPVAL                         R16 0
      270 LOADK                            R18 K50 ["[AssetSearchTool] Auto waterfall sourceOrder: %*"]
      271 GETIMPORT                        R20 K52 [table.concat]
      273 MOVE                             R21 R15
      274 LOADK                            R22 K53 [", "]
      275 CALL                             R20 2 1
      276 NAMECALL                         R18 R18 K14 ["format"]
      278 CALL                             R18 2 1
      279 MOVE                             R17 R18
      280 CALL                             R16 1 0
      281 NEWTABLE                         R16 0 0
      283 GETTABLEKS                       R19 R1 K54 ["minPriceCents"]
      285 GETTABLEKS                       R20 R1 K55 ["maxPriceCents"]
      287 GETTABLEKS                       R21 R1 K56 ["priceFilter"]
      289 JUMPIFNOTEQKS                    R21 K57 ["free"] ; [+3]
      291 LOADN                            R20 0
      292 JUMP                             ; [+5]
      293 GETTABLEKS                       R21 R1 K56 ["priceFilter"]
      295 JUMPIFNOTEQKS                    R21 K58 ["paid"] ; [+2]
      297 ORK                              R19 R19 K59 [1]
      298 MOVE                             R17 R19
      299 MOVE                             R18 R20
      300 MOVE                             R19 R15
      301 LOADNIL                          R20
      302 LOADNIL                          R21
      303 FORGPREP                         R19
      304 LENGTH                           R24 R11
      305 JUMPIFNOTLE                      R5 R24 ; [+10]
      307 GETUPVAL                         R24 0
      308 LOADK                            R26 K60 ["[AssetSearchTool] Waterfall: reached maxResults=%*, stopping"]
      309 MOVE                             R28 R5
      310 NAMECALL                         R26 R26 K14 ["format"]
      312 CALL                             R26 2 1
      313 MOVE                             R25 R26
      314 CALL                             R24 1 0
      315 JUMP                             ; [+305]
      316 JUMPIFNOTEQKS                    R23 K44 ["group"] ; [+11]
      318 GETTABLEKS                       R24 R10 K42 ["groupId"]
      320 JUMPIF                           R24 ; [+7]
      321 GETUPVAL                         R24 0
      322 LOADK                            R25 K61 ["[AssetSearchTool] Waterfall: skipping \"group\" (no groupId)"]
      323 CALL                             R24 1 0
      324 LOADK                            R24 K62 ["game is not group-owned; only the owning group's inventory is searchable"]
      325 SETTABLEKS                       R24 R14 K44 ["group"]
      327 JUMP                             ; [+110]
      328 JUMPIFNOTEQKS                    R23 K45 ["universe"] ; [+11]
      330 GETTABLEKS                       R24 R10 K41 ["universeId"]
      332 JUMPIF                           R24 ; [+7]
      333 GETUPVAL                         R24 0
      334 LOADK                            R25 K63 ["[AssetSearchTool] Waterfall: skipping \"universe\" (no universeId)"]
      335 CALL                             R24 1 0
      336 LOADK                            R24 K64 ["game is not published"]
      337 SETTABLEKS                       R24 R14 K45 ["universe"]
      339 JUMP                             ; [+98]
      340 LENGTH                           R25 R11
      341 SUB                              R24 R5 R25
      342 MOVE                             R25 R24
      343 GETTABLEKS                       R26 R1 K13 ["assetType"]
      345 JUMPIFNOTEQKS                    R26 K65 ["Package"] ; [+4]
      347 JUMPIFEQKS                       R23 K46 ["creator_store"] ; [+2]
      349 MULK                             R25 R24 K4 [5]
      350 GETUPVAL                         R26 0
      351 LOADK                            R28 K66 ["[AssetSearchTool] Waterfall: querying source=\"%*\" remaining=%* requestLimit=%*"]
      352 MOVE                             R30 R23
      353 MOVE                             R31 R24
      354 MOVE                             R32 R25
      355 NAMECALL                         R28 R28 K14 ["format"]
      357 CALL                             R28 4 1
      358 MOVE                             R27 R28
      359 CALL                             R26 1 0
      360 GETUPVAL                         R26 7
      361 MOVE                             R27 R23
      362 MOVE                             R28 R3
      363 GETTABLEKS                       R29 R1 K13 ["assetType"]
      365 MOVE                             R30 R25
      366 MOVE                             R31 R10
      367 DUPTABLE                         R32 K74 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      368 GETTABLEKS                       R33 R1 K67 ["facets"]
      370 SETTABLEKS                       R33 R32 K67 ["facets"]
      372 GETTABLEKS                       R33 R1 K68 ["tags"]
      374 SETTABLEKS                       R33 R32 K68 ["tags"]
      376 GETTABLEKS                       R33 R1 K75 ["verifiedCreatorsOnly"]
      378 SETTABLEKS                       R33 R32 K69 ["includeOnlyVerifiedCreators"]
      380 SETTABLEKS                       R17 R32 K70 ["minPrice"]
      382 SETTABLEKS                       R18 R32 K71 ["maxPrice"]
      384 GETTABLEKS                       R33 R1 K76 ["audioMinDuration"]
      386 SETTABLEKS                       R33 R32 K72 ["minDuration"]
      388 GETTABLEKS                       R33 R1 K77 ["audioMaxDuration"]
      390 SETTABLEKS                       R33 R32 K73 ["maxDuration"]
      392 CALL                             R26 6 2
      393 GETUPVAL                         R28 0
      394 LOADK                            R30 K78 ["[AssetSearchTool] Waterfall: source=\"%*\" returned %* results"]
      395 MOVE                             R32 R23
      396 LENGTH                           R33 R26
      397 NAMECALL                         R30 R30 K14 ["format"]
      399 CALL                             R30 3 1
      400 MOVE                             R29 R30
      401 CALL                             R28 1 0
      402 LENGTH                           R28 R27
      403 LOADN                            R29 0
      404 JUMPIFNOTLT                      R29 R28 ; [+2]
      406 MOVE                             R12 R27
      407 MOVE                             R28 R26
      408 LOADNIL                          R29
      409 LOADNIL                          R30
      410 FORGPREP                         R28
      411 LENGTH                           R33 R11
      412 JUMPIFLE                         R5 R33 ; [+18]
      414 GETTABLEKS                       R34 R32 K79 ["assetId"]
      416 GETTABLE                         R33 R16 R34
      417 JUMPIF                           R33 ; [+11]
      418 GETTABLEKS                       R33 R32 K79 ["assetId"]
      420 LOADB                            R34 1
      421 SETTABLE                         R34 R16 R33
      422 FASTCALL2                        TABLE_INSERT R11 R32 ; [+5]
      424 MOVE                             R34 R11
      425 MOVE                             R35 R32
      426 GETIMPORT                        R33 K49 [table.insert]
      428 CALL                             R33 2 0
      429 FORGLOOP                         R28 2 ; [-19]
      431 FASTCALL2                        TABLE_INSERT R13 R23 ; [+5]
      433 MOVE                             R29 R13
      434 MOVE                             R30 R23
      435 GETIMPORT                        R28 K49 [table.insert]
      437 CALL                             R28 2 0
      438 FORGLOOP                         R19 2 ; [-135]
      440 JUMP                             ; [+180]
      441 JUMPIFNOTEQKS                    R4 K44 ["group"] ; [+33]
      443 GETTABLEKS                       R15 R10 K42 ["groupId"]
      445 JUMPIF                           R15 ; [+29]
      446 GETTABLEKS                       R15 R7 K30 ["updateWidget"]
      448 NEWCLOSURE                       R16 P3
      449 CAPTURE                          UPVAL U4
      450 CAPTURE                          UPVAL U5
      451 CAPTURE                          VAL R3
      452 CAPTURE                          UPVAL U2
      453 CALL                             R15 1 0
      454 GETUPVAL                         R15 2
      455 DUPTABLE                         R17 K18 [{"status", "error", "nextSteps"}]
      456 LOADK                            R18 K16 ["error"]
      457 SETTABLEKS                       R18 R17 K15 ["status"]
      459 LOADK                            R18 K80 ["scope='group' is unavailable because this game is not group-owned. Only the owning group's inventory is searchable via this tool."]
      460 SETTABLEKS                       R18 R17 K16 ["error"]
      462 NEWTABLE                         R18 0 2
      464 LOADK                            R19 K81 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      465 LOADK                            R20 K82 ["If the user needs group assets, they can browse their groups in the Asset Manager panel."]
      466 SETLIST                          R18 R19 2 [1]
      468 SETTABLEKS                       R18 R17 K17 ["nextSteps"]
      470 NAMECALL                         R15 R15 K21 ["JSONEncode"]
      472 CALL                             R15 2 -1
      473 CLOSEUPVALS                      R11
      474 RETURN                           R15 -1
      475 JUMPIFNOTEQKS                    R4 K45 ["universe"] ; [+33]
      477 GETTABLEKS                       R15 R10 K41 ["universeId"]
      479 JUMPIF                           R15 ; [+29]
      480 GETTABLEKS                       R15 R7 K30 ["updateWidget"]
      482 NEWCLOSURE                       R16 P3
      483 CAPTURE                          UPVAL U4
      484 CAPTURE                          UPVAL U5
      485 CAPTURE                          VAL R3
      486 CAPTURE                          UPVAL U2
      487 CALL                             R15 1 0
      488 GETUPVAL                         R15 2
      489 DUPTABLE                         R17 K18 [{"status", "error", "nextSteps"}]
      490 LOADK                            R18 K16 ["error"]
      491 SETTABLEKS                       R18 R17 K15 ["status"]
      493 LOADK                            R18 K83 ["scope='universe' is unavailable because this game is not yet published (no universe ID)."]
      494 SETTABLEKS                       R18 R17 K16 ["error"]
      496 NEWTABLE                         R18 0 2
      498 LOADK                            R19 K81 ["Use scope='auto' or scope='user' to search the user's personal inventory and Creator Store instead."]
      499 LOADK                            R20 K84 ["The game must be published to Roblox before its universe inventory becomes searchable."]
      500 SETLIST                          R18 R19 2 [1]
      502 SETTABLEKS                       R18 R17 K17 ["nextSteps"]
      504 NAMECALL                         R15 R15 K21 ["JSONEncode"]
      506 CALL                             R15 2 -1
      507 CLOSEUPVALS                      R11
      508 RETURN                           R15 -1
      509 GETUPVAL                         R15 0
      510 LOADK                            R17 K85 ["[AssetSearchTool] Explicit scope=\"%*\""]
      511 MOVE                             R19 R4
      512 NAMECALL                         R17 R17 K14 ["format"]
      514 CALL                             R17 2 1
      515 MOVE                             R16 R17
      516 CALL                             R15 1 0
      517 FASTCALL2                        TABLE_INSERT R13 R4 ; [+5]
      519 MOVE                             R16 R13
      520 MOVE                             R17 R4
      521 GETIMPORT                        R15 K49 [table.insert]
      523 CALL                             R15 2 0
      524 JUMPIFNOTEQKS                    R4 K46 ["creator_store"] ; [+66]
      526 GETTABLEKS                       R17 R1 K54 ["minPriceCents"]
      528 GETTABLEKS                       R18 R1 K55 ["maxPriceCents"]
      530 GETTABLEKS                       R19 R1 K56 ["priceFilter"]
      532 JUMPIFNOTEQKS                    R19 K57 ["free"] ; [+3]
      534 LOADN                            R18 0
      535 JUMP                             ; [+5]
      536 GETTABLEKS                       R19 R1 K56 ["priceFilter"]
      538 JUMPIFNOTEQKS                    R19 K58 ["paid"] ; [+2]
      540 ORK                              R17 R17 K59 [1]
      541 MOVE                             R15 R17
      542 MOVE                             R16 R18
      543 GETUPVAL                         R17 7
      544 LOADK                            R18 K46 ["creator_store"]
      545 MOVE                             R19 R3
      546 GETTABLEKS                       R20 R1 K13 ["assetType"]
      548 MOVE                             R21 R5
      549 MOVE                             R22 R10
      550 DUPTABLE                         R23 K74 [{"facets", "tags", "includeOnlyVerifiedCreators", "minPrice", "maxPrice", "minDuration", "maxDuration"}]
      551 GETTABLEKS                       R24 R1 K67 ["facets"]
      553 SETTABLEKS                       R24 R23 K67 ["facets"]
      555 GETTABLEKS                       R24 R1 K68 ["tags"]
      557 SETTABLEKS                       R24 R23 K68 ["tags"]
      559 GETTABLEKS                       R24 R1 K75 ["verifiedCreatorsOnly"]
      561 SETTABLEKS                       R24 R23 K69 ["includeOnlyVerifiedCreators"]
      563 SETTABLEKS                       R15 R23 K70 ["minPrice"]
      565 SETTABLEKS                       R16 R23 K71 ["maxPrice"]
      567 GETTABLEKS                       R24 R1 K76 ["audioMinDuration"]
      569 SETTABLEKS                       R24 R23 K72 ["minDuration"]
      571 GETTABLEKS                       R24 R1 K77 ["audioMaxDuration"]
      573 SETTABLEKS                       R24 R23 K73 ["maxDuration"]
      575 CALL                             R17 6 2
      576 MOVE                             R11 R17
      577 LENGTH                           R19 R18
      578 LOADN                            R20 0
      579 JUMPIFNOTLT                      R20 R19 ; [+2]
      581 MOVE                             R12 R18
      582 GETUPVAL                         R19 0
      583 LOADK                            R21 K86 ["[AssetSearchTool] Explicit creator_store: parsed %* results"]
      584 LENGTH                           R23 R11
      585 NAMECALL                         R21 R21 K14 ["format"]
      587 CALL                             R21 2 1
      588 MOVE                             R20 R21
      589 CALL                             R19 1 0
      590 JUMP                             ; [+30]
      591 GETTABLEKS                       R16 R1 K13 ["assetType"]
      593 JUMPIFNOTEQKS                    R16 K65 ["Package"] ; [+3]
      595 MULK                             R15 R5 K4 [5]
      596 JUMP                             ; [+1]
      597 MOVE                             R15 R5
      598 GETUPVAL                         R16 7
      599 MOVE                             R17 R4
      600 MOVE                             R18 R3
      601 GETTABLEKS                       R19 R1 K13 ["assetType"]
      603 MOVE                             R20 R15
      604 MOVE                             R21 R10
      605 CALL                             R16 5 2
      606 MOVE                             R11 R16
      607 LENGTH                           R18 R17
      608 LOADN                            R19 0
      609 JUMPIFNOTLT                      R19 R18 ; [+2]
      611 MOVE                             R12 R17
      612 GETUPVAL                         R18 0
      613 LOADK                            R20 K87 ["[AssetSearchTool] Explicit %*: got %* results"]
      614 MOVE                             R22 R4
      615 LENGTH                           R23 R11
      616 NAMECALL                         R20 R20 K14 ["format"]
      618 CALL                             R20 3 1
      619 MOVE                             R19 R20
      620 CALL                             R18 1 0
      621 GETUPVAL                         R15 0
      622 LOADK                            R17 K88 ["[AssetSearchTool] Total: %* results from sources: %*"]
      623 LENGTH                           R19 R11
      624 GETIMPORT                        R20 K52 [table.concat]
      626 MOVE                             R21 R13
      627 LOADK                            R22 K53 [", "]
      628 CALL                             R20 2 1
      629 NAMECALL                         R17 R17 K14 ["format"]
      631 CALL                             R17 3 1
      632 MOVE                             R16 R17
      633 CALL                             R15 1 0
      634 NEWTABLE                         R15 0 0
      636 NEWTABLE                         R16 0 0
      638 MOVE                             R17 R11
      639 LOADNIL                          R18
      640 LOADNIL                          R19
      641 FORGPREP                         R17
      642 GETTABLEKS                       R23 R21 K79 ["assetId"]
      644 GETTABLE                         R22 R15 R23
      645 JUMPIF                           R22 ; [+14]
      646 GETTABLEKS                       R22 R21 K79 ["assetId"]
      648 LOADB                            R23 1
      649 SETTABLE                         R23 R15 R22
      650 FASTCALL2                        TABLE_INSERT R16 R21 ; [+5]
      652 MOVE                             R23 R16
      653 MOVE                             R24 R21
      654 GETIMPORT                        R22 K49 [table.insert]
      656 CALL                             R22 2 0
      657 LENGTH                           R22 R16
      658 JUMPIFLE                         R5 R22 ; [+3]
      660 FORGLOOP                         R17 2 ; [-19]
      662 MOVE                             R11 R16
      663 GETUPVAL                         R17 2
      664 LOADB                            R19 0
      665 NAMECALL                         R17 R17 K89 ["GenerateGUID"]
      667 CALL                             R17 2 1
      668 NEWTABLE                         R18 0 0
      670 MOVE                             R19 R11
      671 LOADNIL                          R20
      672 LOADNIL                          R21
      673 FORGPREP                         R19
      674 DUPTABLE                         R26 K96 [{"assetId", "name", "assetType", "source", "location", "priceCents", "priceLabel", "isFree"}]
      675 GETTABLEKS                       R27 R23 K79 ["assetId"]
      677 SETTABLEKS                       R27 R26 K79 ["assetId"]
      679 GETTABLEKS                       R27 R23 K90 ["name"]
      681 SETTABLEKS                       R27 R26 K90 ["name"]
      683 GETTABLEKS                       R27 R23 K13 ["assetType"]
      685 SETTABLEKS                       R27 R26 K13 ["assetType"]
      687 GETTABLEKS                       R27 R23 K91 ["source"]
      689 SETTABLEKS                       R27 R26 K91 ["source"]
      691 GETTABLEKS                       R27 R23 K92 ["location"]
      693 SETTABLEKS                       R27 R26 K92 ["location"]
      695 GETTABLEKS                       R27 R23 K93 ["priceCents"]
      697 SETTABLEKS                       R27 R26 K93 ["priceCents"]
      699 GETTABLEKS                       R27 R23 K94 ["priceLabel"]
      701 SETTABLEKS                       R27 R26 K94 ["priceLabel"]
      703 GETTABLEKS                       R27 R23 K95 ["isFree"]
      705 SETTABLEKS                       R27 R26 K95 ["isFree"]
      707 FASTCALL2                        TABLE_INSERT R18 R26 ; [+4]
      709 MOVE                             R25 R18
      710 GETIMPORT                        R24 K49 [table.insert]
      712 CALL                             R24 2 0
      713 FORGLOOP                         R19 2 ; [-40]
      715 NEWCLOSURE                       R19 P4
      716 CAPTURE                          VAL R0
      717 GETTABLEKS                       R20 R7 K30 ["updateWidget"]
      719 NEWCLOSURE                       R21 P5
      720 CAPTURE                          UPVAL U4
      721 CAPTURE                          UPVAL U5
      722 CAPTURE                          VAL R3
      723 CAPTURE                          VAL R17
      724 CAPTURE                          REF R11
      725 CAPTURE                          VAL R18
      726 CAPTURE                          VAL R19
      727 CALL                             R20 1 0
      728 NEWTABLE                         R20 0 0
      730 MOVE                             R21 R11
      731 LOADNIL                          R22
      732 LOADNIL                          R23
      733 FORGPREP                         R21
      734 DUPTABLE                         R28 K101 [{"assetId", "name", "description", "assetType", "source", "location", "creatorName", "priceCents", "priceLabel", "isFree", "thumbnailUrl", "creatorStoreUrl"}]
      735 GETTABLEKS                       R29 R25 K79 ["assetId"]
      737 SETTABLEKS                       R29 R28 K79 ["assetId"]
      739 GETTABLEKS                       R29 R25 K90 ["name"]
      741 SETTABLEKS                       R29 R28 K90 ["name"]
      743 GETTABLEKS                       R29 R25 K97 ["description"]
      745 SETTABLEKS                       R29 R28 K97 ["description"]
      747 GETTABLEKS                       R29 R25 K13 ["assetType"]
      749 SETTABLEKS                       R29 R28 K13 ["assetType"]
      751 GETTABLEKS                       R29 R25 K91 ["source"]
      753 SETTABLEKS                       R29 R28 K91 ["source"]
      755 GETTABLEKS                       R29 R25 K92 ["location"]
      757 SETTABLEKS                       R29 R28 K92 ["location"]
      759 GETTABLEKS                       R29 R25 K98 ["creatorName"]
      761 SETTABLEKS                       R29 R28 K98 ["creatorName"]
      763 GETTABLEKS                       R29 R25 K93 ["priceCents"]
      765 SETTABLEKS                       R29 R28 K93 ["priceCents"]
      767 GETTABLEKS                       R29 R25 K94 ["priceLabel"]
      769 SETTABLEKS                       R29 R28 K94 ["priceLabel"]
      771 GETTABLEKS                       R29 R25 K95 ["isFree"]
      773 SETTABLEKS                       R29 R28 K95 ["isFree"]
      775 LOADK                            R30 K102 ["%*v1/assets?assetIds=%*&returnPolicy=PlaceHolder&size=150x150&format=Png"]
      776 GETUPVAL                         R32 8
      777 GETTABLEKS                       R32 R32 K103 ["THUMBNAILS_URL"]
      779 GETTABLEKS                       R33 R25 K79 ["assetId"]
      781 NAMECALL                         R30 R30 K14 ["format"]
      783 CALL                             R30 3 1
      784 MOVE                             R29 R30
      785 SETTABLEKS                       R29 R28 K99 ["thumbnailUrl"]
      787 GETTABLEKS                       R30 R25 K91 ["source"]
      789 JUMPIFNOTEQKS                    R30 K46 ["creator_store"] ; [+12]
      791 LOADK                            R30 K104 ["%*store/asset/%*"]
      792 GETUPVAL                         R32 8
      793 GETTABLEKS                       R32 R32 K105 ["CREATOR_HUB_URL"]
      795 GETTABLEKS                       R33 R25 K79 ["assetId"]
      797 NAMECALL                         R30 R30 K14 ["format"]
      799 CALL                             R30 3 1
      800 MOVE                             R29 R30
      801 JUMP                             ; [+1]
      802 LOADNIL                          R29
      803 SETTABLEKS                       R29 R28 K100 ["creatorStoreUrl"]
      805 FASTCALL2                        TABLE_INSERT R20 R28 ; [+4]
      807 MOVE                             R27 R20
      808 GETIMPORT                        R26 K49 [table.insert]
      810 CALL                             R26 2 0
      811 FORGLOOP                         R21 2 ; [-78]
      813 GETUPVAL                         R21 0
      814 LOADK                            R23 K106 ["[AssetSearchTool] === SEARCH COMPLETE === resultCount=%* sources=%*"]
      815 LENGTH                           R25 R11
      816 GETIMPORT                        R26 K52 [table.concat]
      818 MOVE                             R27 R13
      819 LOADK                            R28 K107 [","]
      820 CALL                             R26 2 1
      821 NAMECALL                         R23 R23 K14 ["format"]
      823 CALL                             R23 3 1
      824 MOVE                             R22 R23
      825 CALL                             R21 1 0
      826 MOVE                             R21 R20
      827 LOADNIL                          R22
      828 LOADNIL                          R23
      829 FORGPREP                         R21
      830 GETUPVAL                         R26 0
      831 LOADK                            R28 K108 ["[AssetSearchTool]   result[%*]: id=%* name=\"%*\" type=%* source=%* location=%*"]
      832 MOVE                             R30 R24
      833 GETTABLEKS                       R31 R25 K79 ["assetId"]
      835 GETTABLEKS                       R32 R25 K90 ["name"]
      837 GETTABLEKS                       R33 R25 K13 ["assetType"]
      839 GETTABLEKS                       R34 R25 K91 ["source"]
      841 GETTABLEKS                       R36 R25 K92 ["location"]
      843 ORK                              R35 R36 K12 ["nil"]
      844 NAMECALL                         R28 R28 K14 ["format"]
      846 CALL                             R28 7 1
      847 MOVE                             R27 R28
      848 CALL                             R26 1 0
      849 FORGLOOP                         R21 2 ; [-20]
      851 GETUPVAL                         R21 2
      852 DUPTABLE                         R23 K115 [{"status", "searchId", "query", "scope", "searchSources", "skippedSources", "resultCount", "availableFacets", "results", "nextSteps"}]
      853 LOADK                            R24 K116 ["success"]
      854 SETTABLEKS                       R24 R23 K15 ["status"]
      856 SETTABLEKS                       R17 R23 K109 ["searchId"]
      858 SETTABLEKS                       R3 R23 K1 ["query"]
      860 SETTABLEKS                       R4 R23 K3 ["scope"]
      862 SETTABLEKS                       R13 R23 K110 ["searchSources"]
      864 GETIMPORT                        R25 K118 [next]
      866 MOVE                             R26 R14
      867 CALL                             R25 1 1
      868 JUMPIFNOT                        R25 ; [+2]
      869 MOVE                             R24 R14
      870 JUMP                             ; [+1]
      871 LOADNIL                          R24
      872 SETTABLEKS                       R24 R23 K111 ["skippedSources"]
      874 LENGTH                           R24 R11
      875 SETTABLEKS                       R24 R23 K112 ["resultCount"]
      877 LENGTH                           R25 R12
      878 LOADN                            R26 0
      879 JUMPIFNOTLT                      R26 R25 ; [+3]
      881 MOVE                             R24 R12
      882 JUMP                             ; [+1]
      883 LOADNIL                          R24
      884 SETTABLEKS                       R24 R23 K113 ["availableFacets"]
      886 SETTABLEKS                       R20 R23 K114 ["results"]
      888 NEWTABLE                         R24 0 4
      890 LOADK                            R25 K119 ["Review the results and choose the best asset for the user's request. Prefer inventory results (source='inventory') as these are already owned and always insertable."]
      891 LOADK                            R26 K120 ["For free/owned assets: call insert_asset with assetId, assetType, and assetName from the chosen result to insert it."]
      892 LOADK                            R27 K121 ["For paid assets (isFree=false): show the user the creatorStoreUrl link and priceLabel so they can purchase it. Do not attempt to insert paid assets — they will fail."]
      893 LOADK                            R28 K122 ["Some Creator Store assets may be restricted or moderated and fail to insert. If insert_asset fails, try the next result from the list rather than retrying the same asset."]
      894 SETLIST                          R24 R25 4 [1]
      896 SETTABLEKS                       R24 R23 K17 ["nextSteps"]
      898 NAMECALL                         R21 R21 K21 ["JSONEncode"]
      900 CALL                             R21 2 -1
      901 CLOSEUPVALS                      R11
      902 RETURN                           R21 -1

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["Results"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["createFreshGuestContext"]
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R3
       16 LOADNIL                          R7
       17 LOADB                            R8 0
       18 LOADNIL                          R9
       19 MOVE                             R10 R0
       20 CALL                             R4 6 1
       21 MOVE                             R2 R4
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R1 K4 ["onItemClicked"]
       26 RETURN                           R0 0

PROTO_25:
        0 LOADK                            R0 K0 ["Search for models, audio, packages, and other assets"]
        1 RETURN                           R0 1

PROTO_26:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["AssetSearch"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"query"}]
        7 SETTABLEKS                       R0 R2 K4 ["query"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_27:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["AssetSearch"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Type"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["createToolHandler"]
       18 MOVE                             R2 R0
       19 LOADNIL                          R3
       20 GETUPVAL                         R4 4
       21 GETUPVAL                         R5 5
       22 CALL                             R1 4 1
       23 GETUPVAL                         R2 6
       24 GETTABLEKS                       R2 R2 K3 ["define"]
       26 CALL                             R2 0 1
       27 GETUPVAL                         R4 7
       28 GETTABLEKS                       R4 R4 K4 ["AssetSearch"]
       30 NAMECALL                         R2 R2 K5 ["setName"]
       32 CALL                             R2 2 1
       33 GETUPVAL                         R4 7
       34 GETTABLEKS                       R4 R4 K6 ["replaceTokens"]
       36 LOADK                            R5 K7 ["Searches for assets across Creator Store (public marketplace) and Creator Inventory (user/group/universe).\nUse this tool to find assets by keyword before inserting them with {ToolNames.AssetInsert}.\nReturns a list of matching assets with metadata (name, type, source, price).\n\nScope controls where to search:\n- 'auto' (default): waterfalls through user inventory → group → universe → Creator Store. Best for general requests.\n- 'creator_store': searches only the marketplace. Use this when the user wants marketplace assets, paid assets, or when using price/creator filters.\n- 'user'/'group'/'universe': searches a specific inventory only.\n\nWhen to use price filters: If the user asks for paid/premium assets or specifies a price range, set scope='creator_store' and use priceFilter, minPriceCents, and/or maxPriceCents. These filters only apply to Creator Store searches.\nWhen to use asset type: If the user asks for a specific asset type (audio, decals, meshes, packages, etc.), set assetType to filter results. Packages are stored as Models with a Package subtype — set assetType='Package' to find them (do not search for the word \"package\" as a query).\nInventory results (source='inventory') are always insertable. Creator Store results may occasionally be restricted — if insert fails, try the next result.\nEach result includes a thumbnailUrl (Roblox Thumbnails API). Fetch it to get JSON with data[0].imageUrl pointing to a CDN image of the asset — useful for visually comparing assets before inserting.\n"]
       37 CALL                             R4 1 -1
       38 NAMECALL                         R2 R2 K8 ["setDescription"]
       40 CALL                             R2 -1 1
       41 LOADK                            R4 K9 ["query"]
       42 DUPTABLE                         R5 K12 [{"type", "description"}]
       43 LOADK                            R6 K13 ["string"]
       44 SETTABLEKS                       R6 R5 K10 ["type"]
       46 LOADK                            R6 K14 ["Search term. Can be empty when filtering by assetType alone (e.g. to list all packages). Supports multi-term search with '+' (e.g. 'red+car') and exact phrase with quotes (e.g. '\"red+car\"')."]
       47 SETTABLEKS                       R6 R5 K11 ["description"]
       49 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
       51 CALL                             R2 3 1
       52 LOADK                            R4 K16 ["scope"]
       53 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
       54 LOADK                            R6 K13 ["string"]
       55 SETTABLEKS                       R6 R5 K10 ["type"]
       57 NEWTABLE                         R6 0 5
       59 LOADK                            R7 K19 ["auto"]
       60 LOADK                            R8 K20 ["creator_store"]
       61 LOADK                            R9 K21 ["user"]
       62 LOADK                            R10 K22 ["group"]
       63 LOADK                            R11 K23 ["universe"]
       64 SETLIST                          R6 R7 5 [1]
       66 SETTABLEKS                       R6 R5 K17 ["enum"]
       68 LOADK                            R6 K24 ["Where to search. 'auto' (default) waterfalls through all available sources. Use explicit scope to target a single source."]
       69 SETTABLEKS                       R6 R5 K11 ["description"]
       71 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
       73 CALL                             R2 3 1
       74 LOADK                            R4 K25 ["includeSources"]
       75 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
       76 LOADK                            R6 K28 ["array"]
       77 SETTABLEKS                       R6 R5 K10 ["type"]
       79 DUPTABLE                         R6 K29 [{"type", "enum"}]
       80 LOADK                            R7 K13 ["string"]
       81 SETTABLEKS                       R7 R6 K10 ["type"]
       83 NEWTABLE                         R7 0 4
       85 LOADK                            R8 K21 ["user"]
       86 LOADK                            R9 K22 ["group"]
       87 LOADK                            R10 K23 ["universe"]
       88 LOADK                            R11 K20 ["creator_store"]
       89 SETLIST                          R7 R8 4 [1]
       91 SETTABLEKS                       R7 R6 K17 ["enum"]
       93 SETTABLEKS                       R6 R5 K26 ["items"]
       95 LOADK                            R6 K30 ["With scope='auto': only search these sources (e.g. ['user', 'creator_store'])."]
       96 SETTABLEKS                       R6 R5 K11 ["description"]
       98 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      100 CALL                             R2 3 1
      101 LOADK                            R4 K31 ["excludeSources"]
      102 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      103 LOADK                            R6 K28 ["array"]
      104 SETTABLEKS                       R6 R5 K10 ["type"]
      106 DUPTABLE                         R6 K29 [{"type", "enum"}]
      107 LOADK                            R7 K13 ["string"]
      108 SETTABLEKS                       R7 R6 K10 ["type"]
      110 NEWTABLE                         R7 0 4
      112 LOADK                            R8 K21 ["user"]
      113 LOADK                            R9 K22 ["group"]
      114 LOADK                            R10 K23 ["universe"]
      115 LOADK                            R11 K20 ["creator_store"]
      116 SETLIST                          R7 R8 4 [1]
      118 SETTABLEKS                       R7 R6 K17 ["enum"]
      120 SETTABLEKS                       R6 R5 K26 ["items"]
      122 LOADK                            R6 K32 ["With scope='auto': skip these sources from the waterfall."]
      123 SETTABLEKS                       R6 R5 K11 ["description"]
      125 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      127 CALL                             R2 3 1
      128 LOADK                            R4 K33 ["assetType"]
      129 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
      130 LOADK                            R6 K13 ["string"]
      131 SETTABLEKS                       R6 R5 K10 ["type"]
      133 NEWTABLE                         R6 0 6
      135 LOADK                            R7 K34 ["Model"]
      136 LOADK                            R8 K35 ["Audio"]
      137 LOADK                            R9 K36 ["MeshPart"]
      138 LOADK                            R10 K37 ["Decal"]
      139 LOADK                            R11 K38 ["Video"]
      140 LOADK                            R12 K39 ["Package"]
      141 SETLIST                          R6 R7 6 [1]
      143 SETTABLEKS                       R6 R5 K17 ["enum"]
      145 LOADK                            R6 K40 ["Filter by asset type. Use 'Package' when the user asks about packages — packages are Models with a Package subtype, so a keyword search for 'package' won't find them."]
      146 SETTABLEKS                       R6 R5 K11 ["description"]
      148 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      150 CALL                             R2 3 1
      151 LOADK                            R4 K41 ["maxResults"]
      152 DUPTABLE                         R5 K12 [{"type", "description"}]
      153 LOADK                            R6 K42 ["number"]
      154 SETTABLEKS                       R6 R5 K10 ["type"]
      156 LOADK                            R6 K43 ["Number of results to return (1-20, default 5)."]
      157 SETTABLEKS                       R6 R5 K11 ["description"]
      159 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      161 CALL                             R2 3 1
      162 LOADK                            R4 K44 ["priceFilter"]
      163 DUPTABLE                         R5 K18 [{"type", "enum", "description"}]
      164 LOADK                            R6 K13 ["string"]
      165 SETTABLEKS                       R6 R5 K10 ["type"]
      167 NEWTABLE                         R6 0 3
      169 LOADK                            R7 K45 ["free"]
      170 LOADK                            R8 K46 ["paid"]
      171 LOADK                            R9 K47 ["all"]
      172 SETLIST                          R6 R7 3 [1]
      174 SETTABLEKS                       R6 R5 K17 ["enum"]
      176 LOADK                            R6 K48 ["Price filter. Requires scope='creator_store'. 'free' returns only free assets, 'paid' returns only paid assets, 'all' (default) returns both."]
      177 SETTABLEKS                       R6 R5 K11 ["description"]
      179 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      181 CALL                             R2 3 1
      182 LOADK                            R4 K49 ["minPriceCents"]
      183 DUPTABLE                         R5 K12 [{"type", "description"}]
      184 LOADK                            R6 K42 ["number"]
      185 SETTABLEKS                       R6 R5 K10 ["type"]
      187 LOADK                            R6 K50 ["Minimum price in cents. Requires scope='creator_store'. Use with maxPriceCents for a price range (e.g. minPriceCents=100, maxPriceCents=5000)."]
      188 SETTABLEKS                       R6 R5 K11 ["description"]
      190 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      192 CALL                             R2 3 1
      193 LOADK                            R4 K51 ["maxPriceCents"]
      194 DUPTABLE                         R5 K12 [{"type", "description"}]
      195 LOADK                            R6 K42 ["number"]
      196 SETTABLEKS                       R6 R5 K10 ["type"]
      198 LOADK                            R6 K52 ["Maximum price in cents. Requires scope='creator_store'. Use with minPriceCents for a price range."]
      199 SETTABLEKS                       R6 R5 K11 ["description"]
      201 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      203 CALL                             R2 3 1
      204 LOADK                            R4 K53 ["verifiedCreatorsOnly"]
      205 DUPTABLE                         R5 K12 [{"type", "description"}]
      206 LOADK                            R6 K54 ["boolean"]
      207 SETTABLEKS                       R6 R5 K10 ["type"]
      209 LOADK                            R6 K55 ["Only return results from verified creators (Creator Store only)."]
      210 SETTABLEKS                       R6 R5 K11 ["description"]
      212 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      214 CALL                             R2 3 1
      215 LOADK                            R4 K56 ["audioMinDuration"]
      216 DUPTABLE                         R5 K12 [{"type", "description"}]
      217 LOADK                            R6 K42 ["number"]
      218 SETTABLEKS                       R6 R5 K10 ["type"]
      220 LOADK                            R6 K57 ["Minimum audio duration in seconds (only when assetType='Audio')."]
      221 SETTABLEKS                       R6 R5 K11 ["description"]
      223 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      225 CALL                             R2 3 1
      226 LOADK                            R4 K58 ["audioMaxDuration"]
      227 DUPTABLE                         R5 K12 [{"type", "description"}]
      228 LOADK                            R6 K42 ["number"]
      229 SETTABLEKS                       R6 R5 K10 ["type"]
      231 LOADK                            R6 K59 ["Maximum audio duration in seconds (only when assetType='Audio')."]
      232 SETTABLEKS                       R6 R5 K11 ["description"]
      234 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      236 CALL                             R2 3 1
      237 LOADK                            R4 K60 ["facets"]
      238 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      239 LOADK                            R6 K28 ["array"]
      240 SETTABLEKS                       R6 R5 K10 ["type"]
      242 DUPTABLE                         R6 K61 [{"type"}]
      243 LOADK                            R7 K13 ["string"]
      244 SETTABLEKS                       R7 R6 K10 ["type"]
      246 SETTABLEKS                       R6 R5 K26 ["items"]
      248 LOADK                            R6 K62 ["Additional keywords to refine the search (Creator Store only, ignored for inventory scopes). Facets narrow results by related concepts — e.g. for a 'lion' search: 'mane', 'safari', 'realistic', 'animated'. Available facets depend on the query."]
      249 SETTABLEKS                       R6 R5 K11 ["description"]
      251 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      253 CALL                             R2 3 1
      254 LOADK                            R4 K63 ["tags"]
      255 DUPTABLE                         R5 K27 [{"type", "items", "description"}]
      256 LOADK                            R6 K28 ["array"]
      257 SETTABLEKS                       R6 R5 K10 ["type"]
      259 DUPTABLE                         R6 K61 [{"type"}]
      260 LOADK                            R7 K13 ["string"]
      261 SETTABLEKS                       R7 R6 K10 ["type"]
      263 SETTABLEKS                       R6 R5 K26 ["items"]
      265 LOADK                            R6 K64 ["Tags to filter by (Creator Store only, ignored for inventory scopes). Tags are category labels like 'Vehicle', 'Airplane', 'Fantasy'."]
      266 SETTABLEKS                       R6 R5 K11 ["description"]
      268 NAMECALL                         R2 R2 K15 ["addOptionalArgument"]
      270 CALL                             R2 3 1
      271 MOVE                             R4 R1
      272 NAMECALL                         R2 R2 K65 ["setHandler"]
      274 CALL                             R2 2 1
      275 DUPTABLE                         R4 K71 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      276 LOADK                            R5 K72 ["Search Asset"]
      277 SETTABLEKS                       R5 R4 K66 ["title"]
      279 LOADB                            R5 1
      280 SETTABLEKS                       R5 R4 K67 ["readOnlyHint"]
      282 LOADB                            R5 0
      283 SETTABLEKS                       R5 R4 K68 ["destructiveHint"]
      285 LOADB                            R5 1
      286 SETTABLEKS                       R5 R4 K69 ["idempotentHint"]
      288 LOADB                            R5 1
      289 SETTABLEKS                       R5 R4 K70 ["openWorldHint"]
      291 NAMECALL                         R2 R2 K73 ["setAnnotations"]
      293 CALL                             R2 2 1
      294 NAMECALL                         R2 R2 K74 ["build"]
      296 CALL                             R2 1 1
      297 DUPTABLE                         R3 K78 [{"command", "getDescription", "mapToToolCall"}]
      298 LOADK                            R4 K79 ["search_asset"]
      299 SETTABLEKS                       R4 R3 K75 ["command"]
      301 DUPCLOSURE                       R4 K80 [PROTO_25]
      302 SETTABLEKS                       R4 R3 K76 ["getDescription"]
      304 DUPCLOSURE                       R4 K81 [PROTO_26]
      305 CAPTURE                          UPVAL U7
      306 SETTABLEKS                       R4 R3 K77 ["mapToToolCall"]
      308 DUPTABLE                         R4 K83 [{"transformInitialContent"}]
      309 DUPCLOSURE                       R5 K84 [PROTO_27]
      310 CAPTURE                          UPVAL U2
      311 SETTABLEKS                       R5 R4 K82 ["transformInitialContent"]
      313 DUPTABLE                         R5 K90 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction"}]
      314 SETTABLEKS                       R2 R5 K85 ["definition"]
      316 NEWTABLE                         R6 0 1
      318 MOVE                             R7 R3
      319 SETLIST                          R6 R7 1 [1]
      321 SETTABLEKS                       R6 R5 K86 ["slashCommands"]
      323 NEWTABLE                         R6 0 1
      325 GETUPVAL                         R7 2
      326 SETLIST                          R6 R7 1 [1]
      328 SETTABLEKS                       R6 R5 K87 ["contentWidgets"]
      330 SETTABLEKS                       R4 R5 K88 ["streamTransform"]
      332 DUPCLOSURE                       R6 K91 [PROTO_28]
      333 CAPTURE                          UPVAL U8
      334 SETTABLEKS                       R6 R5 K89 ["displayNameFunction"]
      336 RETURN                           R5 1

PROTO_30:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Serializer"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Resources"]
       39 GETTABLEKS                       R6 R6 K14 ["Localization"]
       41 GETTABLEKS                       R6 R6 K15 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K18 [game]
       51 LOADK                            R9 K19 ["HttpRbxApiService"]
       52 NAMECALL                         R7 R7 K20 ["GetService"]
       54 CALL                             R7 2 1
       55 GETIMPORT                        R8 K18 [game]
       57 LOADK                            R10 K21 ["HttpService"]
       58 NAMECALL                         R8 R8 K20 ["GetService"]
       60 CALL                             R8 2 1
       61 GETIMPORT                        R9 K1 [script]
       63 LOADK                            R11 K22 ["AssetManagement"]
       64 NAMECALL                         R9 R9 K3 ["FindFirstAncestor"]
       66 CALL                             R9 2 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K6 ["Parent"]
       71 GETTABLEKS                       R11 R11 K23 ["Networking"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R10 K24 ["RobloxAPI"]
       76 GETTABLEKS                       R11 R11 K25 ["Url"]
       78 GETTABLEKS                       R11 R11 K26 ["new"]
       80 CALL                             R11 0 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R9 K27 ["AssetManagementConstants"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K5 [require]
       88 GETTABLEKS                       R14 R9 K28 ["AssetManagementGuestUtils"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K5 [require]
       93 GETTABLEKS                       R15 R9 K29 ["AssetManagementUrls"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R9 K30 ["AssetManagementUtils"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K5 [require]
      103 GETTABLEKS                       R17 R9 K31 ["AssetSearchContentWidget"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K5 [require]
      108 GETTABLEKS                       R18 R0 K32 ["Flags"]
      110 GETTABLEKS                       R18 R18 K33 ["FFlagAssistantMultipleChatPersistence"]
      112 CALL                             R17 1 1
      113 GETTABLEKS                       R18 R2 K9 ["Util"]
      115 GETTABLEKS                       R18 R18 K34 ["ToolBuilder"]
      117 GETTABLEKS                       R19 R4 K35 ["ToolNames"]
      119 GETTABLEKS                       R20 R12 K36 ["INVENTORY_ASSET_TYPE_MAP"]
      121 GETTABLEKS                       R21 R12 K37 ["INVENTORY_TYPE_NORMALIZE"]
      123 GETTABLEKS                       R22 R12 K38 ["CREATOR_STORE_CATEGORY_MAP"]
      125 GETTABLEKS                       R23 R12 K39 ["ASSET_TYPE_ID_TO_NAME"]
      127 DUPTABLE                         R24 K42 [{"searchCreatorInventory", "postRbxApi"}]
      128 DUPCLOSURE                       R25 K43 [PROTO_0]
      129 CAPTURE                          VAL R14
      130 SETTABLEKS                       R25 R24 K40 ["searchCreatorInventory"]
      132 DUPCLOSURE                       R25 K44 [PROTO_1]
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R25 R24 K41 ["postRbxApi"]
      136 GETTABLEKS                       R25 R15 K45 ["debugPrint"]
      138 DUPTABLE                         R26 K51 [{"auto", "creator_store", "user", "group", "universe"}]
      139 LOADB                            R27 1
      140 SETTABLEKS                       R27 R26 K46 ["auto"]
      142 LOADB                            R27 1
      143 SETTABLEKS                       R27 R26 K47 ["creator_store"]
      145 LOADB                            R27 1
      146 SETTABLEKS                       R27 R26 K48 ["user"]
      148 LOADB                            R27 1
      149 SETTABLEKS                       R27 R26 K49 ["group"]
      151 LOADB                            R27 1
      152 SETTABLEKS                       R27 R26 K50 ["universe"]
      154 DUPTABLE                         R27 K52 [{"user", "group", "universe"}]
      155 LOADK                            R28 K53 ["userids"]
      156 SETTABLEKS                       R28 R27 K48 ["user"]
      158 LOADK                            R28 K54 ["groupids"]
      159 SETTABLEKS                       R28 R27 K49 ["group"]
      161 LOADK                            R28 K55 ["universeids"]
      162 SETTABLEKS                       R28 R27 K50 ["universe"]
      164 DUPTABLE                         R28 K56 [{"userids", "groupids", "universeids"}]
      165 LOADK                            R29 K57 ["User"]
      166 SETTABLEKS                       R29 R28 K53 ["userids"]
      168 LOADK                            R29 K58 ["Group"]
      169 SETTABLEKS                       R29 R28 K54 ["groupids"]
      171 LOADK                            R29 K59 ["Universe"]
      172 SETTABLEKS                       R29 R28 K55 ["universeids"]
      174 LOADNIL                          R29
      175 LOADNIL                          R30
      176 DUPCLOSURE                       R31 K60 [PROTO_2]
      177 DUPCLOSURE                       R32 K61 [PROTO_3]
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R31
      180 DUPCLOSURE                       R33 K62 [PROTO_4]
      181 CAPTURE                          VAL R13
      182 DUPCLOSURE                       R34 K63 [PROTO_6]
      183 NEWCLOSURE                       R35 P6
      184 CAPTURE                          REF R29
      185 CAPTURE                          REF R30
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R8
      188 DUPCLOSURE                       R36 K64 [PROTO_10]
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R25
      192 CAPTURE                          VAL R24
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R23
      195 DUPCLOSURE                       R37 K65 [PROTO_12]
      196 CAPTURE                          VAL R25
      197 CAPTURE                          VAL R8
      198 DUPCLOSURE                       R38 K66 [PROTO_13]
      199 CAPTURE                          VAL R25
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R15
      202 DUPCLOSURE                       R39 K67 [PROTO_16]
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R36
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R37
      208 CAPTURE                          VAL R27
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R38
      213 DUPCLOSURE                       R40 K68 [PROTO_17]
      214 DUPCLOSURE                       R41 K69 [PROTO_23]
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R26
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R1
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R35
      222 CAPTURE                          VAL R39
      223 CAPTURE                          VAL R11
      224 DUPCLOSURE                       R42 K70 [PROTO_29]
      225 CAPTURE                          VAL R17
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R41
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R19
      233 CAPTURE                          VAL R5
      234 DUPTABLE                         R43 K74 [{"setupGuest", "_testing", "_deps"}]
      235 SETTABLEKS                       R42 R43 K71 ["setupGuest"]
      237 DUPTABLE                         R44 K76 [{"resetCachedContext"}]
      238 NEWCLOSURE                       R45 P14
      239 CAPTURE                          REF R29
      240 CAPTURE                          REF R30
      241 SETTABLEKS                       R45 R44 K75 ["resetCachedContext"]
      243 SETTABLEKS                       R44 R43 K72 ["_testing"]
      245 SETTABLEKS                       R24 R43 K73 ["_deps"]
      247 CLOSEUPVALS                      R29
      248 RETURN                           R43 1
