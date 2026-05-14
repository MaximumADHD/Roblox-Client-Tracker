PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["isCatalogAsset"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+6]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["isUGCBundleType"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K2 ["Catalog"]
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K3 ["Marketplace"]
       23 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R3
        3 JUMP                             ; [+19]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["isCatalogAsset"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 JUMPIF                           R4 ; [+6]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["isUGCBundleType"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 JUMPIFNOT                        R4 ; [+4]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["Catalog"]
       19 JUMP                             ; [+3]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K3 ["Marketplace"]
       23 JUMPIFNOTEQKNIL                  R3 ; [+3]
       25 LOADB                            R4 0
       26 RETURN                           R4 1
       27 GETUPVAL                         R8 2
       28 GETTABLE                         R7 R8 R0
       29 GETTABLE                         R6 R7 R3
       30 GETTABLE                         R5 R6 R2
       31 ORK                              R4 R5 K4 [False]
       32 GETUPVAL                         R6 3
       33 GETTABLE                         R5 R6 R1
       34 JUMPIF                           R5 ; [+1]
       35 RETURN                           R4 1
       36 GETUPVAL                         R7 3
       37 GETTABLE                         R6 R7 R1
       38 GETTABLE                         R5 R6 R0
       39 JUMPIF                           R5 ; [+1]
       40 RETURN                           R4 1
       41 GETUPVAL                         R8 3
       42 GETTABLE                         R7 R8 R1
       43 GETTABLE                         R6 R7 R0
       44 GETTABLE                         R5 R6 R2
       45 JUMPIFNOTEQKNIL                  R5 ; [+2]
       47 RETURN                           R4 1
       48 GETUPVAL                         R8 3
       49 GETTABLE                         R7 R8 R1
       50 GETTABLE                         R6 R7 R0
       51 GETTABLE                         R5 R6 R2
       52 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["convertArrayToTable"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["AssetConfigConstants"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["AssetConfigUtil"]
       27 CALL                             R4 1 1
       28 NEWTABLE                         R5 2 0
       30 GETIMPORT                        R6 K11 [game]
       32 LOADK                            R8 K12 ["IsAssetCommentDisabled"]
       33 NAMECALL                         R6 R6 K13 ["GetFastFlag"]
       35 CALL                             R6 2 1
       36 MOVE                             R7 R2
       37 NEWTABLE                         R8 0 11
       39 LOADK                            R9 K14 ["SHOW_SALES_TAB"]
       40 LOADK                            R10 K15 ["SHOW_VERSIONS_TAB"]
       41 LOADK                            R11 K16 ["SHOW_OWNERSHIP"]
       42 LOADK                            R12 K17 ["SHOW_GENRE"]
       43 LOADK                            R13 K18 ["SHOW_COPY"]
       44 LOADK                            R14 K19 ["SHOW_COMMENT"]
       45 LOADK                            R15 K20 ["SHOW_ASSET_TYPE"]
       46 LOADK                            R16 K21 ["SHOW_OVERRIDE_BUTTON"]
       47 LOADK                            R17 K22 ["SHOW_SALE"]
       48 LOADK                            R18 K23 ["SHOW_PRICE"]
       49 LOADK                            R19 K24 ["SHOW_PERMISSIONS_TAB"]
       50 SETLIST                          R8 R9 11 [1]
       52 CALL                             R7 1 1
       53 SETTABLEKS                       R7 R5 K25 ["keys"]
       55 DUPTABLE                         R7 K28 [{"Marketplace", "Catalog"}]
       56 NEWTABLE                         R8 0 0
       58 SETTABLEKS                       R8 R7 K26 ["Marketplace"]
       60 NEWTABLE                         R8 0 0
       62 SETTABLEKS                       R8 R7 K27 ["Catalog"]
       64 GETTABLEKS                       R8 R5 K25 ["keys"]
       66 NEWTABLE                         R9 4 0
       68 GETTABLEKS                       R10 R3 K29 ["FLOW_TYPE"]
       70 GETTABLEKS                       R10 R10 K30 ["DOWNLOAD_FLOW"]
       72 NEWTABLE                         R11 2 0
       74 GETTABLEKS                       R12 R7 K26 ["Marketplace"]
       76 NEWTABLE                         R13 8 0
       78 GETTABLEKS                       R14 R8 K19 ["SHOW_COMMENT"]
       80 LOADB                            R15 0
       81 SETTABLE                         R15 R13 R14
       82 GETTABLEKS                       R14 R8 K18 ["SHOW_COPY"]
       84 LOADB                            R15 0
       85 SETTABLE                         R15 R13 R14
       86 GETTABLEKS                       R14 R8 K17 ["SHOW_GENRE"]
       88 LOADB                            R15 0
       89 SETTABLE                         R15 R13 R14
       90 GETTABLEKS                       R14 R8 K21 ["SHOW_OVERRIDE_BUTTON"]
       92 LOADB                            R15 0
       93 SETTABLE                         R15 R13 R14
       94 GETTABLEKS                       R14 R8 K16 ["SHOW_OWNERSHIP"]
       96 LOADB                            R15 0
       97 SETTABLE                         R15 R13 R14
       98 GETTABLEKS                       R14 R8 K23 ["SHOW_PRICE"]
      100 LOADB                            R15 0
      101 SETTABLE                         R15 R13 R14
      102 GETTABLEKS                       R14 R8 K22 ["SHOW_SALE"]
      104 LOADB                            R15 0
      105 SETTABLE                         R15 R13 R14
      106 GETTABLEKS                       R14 R8 K15 ["SHOW_VERSIONS_TAB"]
      108 LOADB                            R15 0
      109 SETTABLE                         R15 R13 R14
      110 SETTABLE                         R13 R11 R12
      111 GETTABLEKS                       R12 R7 K27 ["Catalog"]
      113 NEWTABLE                         R13 8 0
      115 GETTABLEKS                       R14 R8 K19 ["SHOW_COMMENT"]
      117 LOADB                            R15 0
      118 SETTABLE                         R15 R13 R14
      119 GETTABLEKS                       R14 R8 K18 ["SHOW_COPY"]
      121 LOADB                            R15 0
      122 SETTABLE                         R15 R13 R14
      123 GETTABLEKS                       R14 R8 K17 ["SHOW_GENRE"]
      125 LOADB                            R15 0
      126 SETTABLE                         R15 R13 R14
      127 GETTABLEKS                       R14 R8 K21 ["SHOW_OVERRIDE_BUTTON"]
      129 LOADB                            R15 0
      130 SETTABLE                         R15 R13 R14
      131 GETTABLEKS                       R14 R8 K16 ["SHOW_OWNERSHIP"]
      133 LOADB                            R15 0
      134 SETTABLE                         R15 R13 R14
      135 GETTABLEKS                       R14 R8 K23 ["SHOW_PRICE"]
      137 LOADB                            R15 0
      138 SETTABLE                         R15 R13 R14
      139 GETTABLEKS                       R14 R8 K22 ["SHOW_SALE"]
      141 LOADB                            R15 0
      142 SETTABLE                         R15 R13 R14
      143 GETTABLEKS                       R14 R8 K15 ["SHOW_VERSIONS_TAB"]
      145 LOADB                            R15 0
      146 SETTABLE                         R15 R13 R14
      147 SETTABLE                         R13 R11 R12
      148 SETTABLE                         R11 R9 R10
      149 GETTABLEKS                       R10 R3 K29 ["FLOW_TYPE"]
      151 GETTABLEKS                       R10 R10 K31 ["EDIT_FLOW"]
      153 NEWTABLE                         R11 2 0
      155 GETTABLEKS                       R12 R7 K26 ["Marketplace"]
      157 NEWTABLE                         R13 8 0
      159 GETTABLEKS                       R14 R8 K19 ["SHOW_COMMENT"]
      161 NOT                              R15 R6
      162 SETTABLE                         R15 R13 R14
      163 GETTABLEKS                       R14 R8 K18 ["SHOW_COPY"]
      165 LOADB                            R15 1
      166 SETTABLE                         R15 R13 R14
      167 GETTABLEKS                       R14 R8 K17 ["SHOW_GENRE"]
      169 LOADB                            R15 1
      170 SETTABLE                         R15 R13 R14
      171 GETTABLEKS                       R14 R8 K16 ["SHOW_OWNERSHIP"]
      173 LOADB                            R15 1
      174 SETTABLE                         R15 R13 R14
      175 GETTABLEKS                       R14 R8 K23 ["SHOW_PRICE"]
      177 LOADB                            R15 0
      178 SETTABLE                         R15 R13 R14
      179 GETTABLEKS                       R14 R8 K22 ["SHOW_SALE"]
      181 LOADB                            R15 0
      182 SETTABLE                         R15 R13 R14
      183 GETTABLEKS                       R14 R8 K15 ["SHOW_VERSIONS_TAB"]
      185 LOADB                            R15 1
      186 SETTABLE                         R15 R13 R14
      187 SETTABLE                         R13 R11 R12
      188 GETTABLEKS                       R12 R7 K27 ["Catalog"]
      190 NEWTABLE                         R13 4 0
      192 GETTABLEKS                       R14 R8 K20 ["SHOW_ASSET_TYPE"]
      194 LOADB                            R15 1
      195 SETTABLE                         R15 R13 R14
      196 GETTABLEKS                       R14 R8 K16 ["SHOW_OWNERSHIP"]
      198 LOADB                            R15 1
      199 SETTABLE                         R15 R13 R14
      200 GETTABLEKS                       R14 R8 K14 ["SHOW_SALES_TAB"]
      202 LOADB                            R15 1
      203 SETTABLE                         R15 R13 R14
      204 SETTABLE                         R13 R11 R12
      205 SETTABLE                         R11 R9 R10
      206 GETTABLEKS                       R10 R3 K29 ["FLOW_TYPE"]
      208 GETTABLEKS                       R10 R10 K32 ["UPLOAD_FLOW"]
      210 NEWTABLE                         R11 2 0
      212 GETTABLEKS                       R12 R7 K26 ["Marketplace"]
      214 NEWTABLE                         R13 8 0
      216 GETTABLEKS                       R14 R8 K19 ["SHOW_COMMENT"]
      218 NOT                              R15 R6
      219 SETTABLE                         R15 R13 R14
      220 GETTABLEKS                       R14 R8 K18 ["SHOW_COPY"]
      222 LOADB                            R15 1
      223 SETTABLE                         R15 R13 R14
      224 GETTABLEKS                       R14 R8 K17 ["SHOW_GENRE"]
      226 LOADB                            R15 1
      227 SETTABLE                         R15 R13 R14
      228 GETTABLEKS                       R14 R8 K21 ["SHOW_OVERRIDE_BUTTON"]
      230 LOADB                            R15 1
      231 SETTABLE                         R15 R13 R14
      232 GETTABLEKS                       R14 R8 K16 ["SHOW_OWNERSHIP"]
      234 LOADB                            R15 1
      235 SETTABLE                         R15 R13 R14
      236 GETTABLEKS                       R14 R8 K23 ["SHOW_PRICE"]
      238 LOADB                            R15 0
      239 SETTABLE                         R15 R13 R14
      240 GETTABLEKS                       R14 R8 K22 ["SHOW_SALE"]
      242 LOADB                            R15 0
      243 SETTABLE                         R15 R13 R14
      244 GETTABLEKS                       R14 R8 K15 ["SHOW_VERSIONS_TAB"]
      246 LOADB                            R15 0
      247 SETTABLE                         R15 R13 R14
      248 SETTABLE                         R13 R11 R12
      249 GETTABLEKS                       R12 R7 K27 ["Catalog"]
      251 NEWTABLE                         R13 2 0
      253 GETTABLEKS                       R14 R8 K20 ["SHOW_ASSET_TYPE"]
      255 LOADB                            R15 1
      256 SETTABLE                         R15 R13 R14
      257 GETTABLEKS                       R14 R8 K16 ["SHOW_OWNERSHIP"]
      259 LOADB                            R15 1
      260 SETTABLE                         R15 R13 R14
      261 SETTABLE                         R13 R11 R12
      262 SETTABLE                         R11 R9 R10
      263 NEWTABLE                         R10 4 0
      265 GETIMPORT                        R11 K36 [Enum.AssetType.Plugin]
      267 NEWTABLE                         R12 2 0
      269 GETTABLEKS                       R13 R3 K29 ["FLOW_TYPE"]
      271 GETTABLEKS                       R13 R13 K32 ["UPLOAD_FLOW"]
      273 NEWTABLE                         R14 8 0
      275 GETTABLEKS                       R15 R8 K20 ["SHOW_ASSET_TYPE"]
      277 LOADB                            R16 1
      278 SETTABLE                         R16 R14 R15
      279 GETTABLEKS                       R15 R8 K19 ["SHOW_COMMENT"]
      281 LOADB                            R16 0
      282 SETTABLE                         R16 R14 R15
      283 GETTABLEKS                       R15 R8 K18 ["SHOW_COPY"]
      285 LOADB                            R16 1
      286 SETTABLE                         R16 R14 R15
      287 GETTABLEKS                       R15 R8 K17 ["SHOW_GENRE"]
      289 LOADB                            R16 0
      290 SETTABLE                         R16 R14 R15
      291 GETTABLEKS                       R15 R8 K21 ["SHOW_OVERRIDE_BUTTON"]
      293 LOADB                            R16 1
      294 SETTABLE                         R16 R14 R15
      295 GETTABLEKS                       R15 R8 K23 ["SHOW_PRICE"]
      297 LOADB                            R16 0
      298 SETTABLE                         R16 R14 R15
      299 SETTABLE                         R14 R12 R13
      300 GETTABLEKS                       R13 R3 K29 ["FLOW_TYPE"]
      302 GETTABLEKS                       R13 R13 K31 ["EDIT_FLOW"]
      304 NEWTABLE                         R14 8 0
      306 GETTABLEKS                       R15 R8 K20 ["SHOW_ASSET_TYPE"]
      308 LOADB                            R16 1
      309 SETTABLE                         R16 R14 R15
      310 GETTABLEKS                       R15 R8 K19 ["SHOW_COMMENT"]
      312 LOADB                            R16 0
      313 SETTABLE                         R16 R14 R15
      314 GETTABLEKS                       R15 R8 K18 ["SHOW_COPY"]
      316 LOADB                            R16 1
      317 SETTABLE                         R16 R14 R15
      318 GETTABLEKS                       R15 R8 K17 ["SHOW_GENRE"]
      320 LOADB                            R16 0
      321 SETTABLE                         R16 R14 R15
      322 GETTABLEKS                       R15 R8 K16 ["SHOW_OWNERSHIP"]
      324 LOADB                            R16 1
      325 SETTABLE                         R16 R14 R15
      326 GETTABLEKS                       R15 R8 K23 ["SHOW_PRICE"]
      328 LOADB                            R16 0
      329 SETTABLE                         R16 R14 R15
      330 GETTABLEKS                       R15 R8 K22 ["SHOW_SALE"]
      332 LOADB                            R16 0
      333 SETTABLE                         R16 R14 R15
      334 GETTABLEKS                       R15 R8 K15 ["SHOW_VERSIONS_TAB"]
      336 LOADB                            R16 1
      337 SETTABLE                         R16 R14 R15
      338 SETTABLE                         R14 R12 R13
      339 SETTABLE                         R12 R10 R11
      340 GETIMPORT                        R11 K38 [Enum.AssetType.Model]
      342 NEWTABLE                         R12 1 0
      344 GETTABLEKS                       R13 R3 K29 ["FLOW_TYPE"]
      346 GETTABLEKS                       R13 R13 K32 ["UPLOAD_FLOW"]
      348 NEWTABLE                         R14 1 0
      350 GETTABLEKS                       R15 R8 K21 ["SHOW_OVERRIDE_BUTTON"]
      352 LOADB                            R16 1
      353 SETTABLE                         R16 R14 R15
      354 SETTABLE                         R14 R12 R13
      355 SETTABLE                         R12 R10 R11
      356 GETIMPORT                        R11 K40 [Enum.AssetType.Animation]
      358 NEWTABLE                         R12 1 0
      360 GETTABLEKS                       R13 R3 K29 ["FLOW_TYPE"]
      362 GETTABLEKS                       R13 R13 K32 ["UPLOAD_FLOW"]
      364 NEWTABLE                         R14 16 0
      366 GETTABLEKS                       R15 R8 K21 ["SHOW_OVERRIDE_BUTTON"]
      368 LOADB                            R16 1
      369 SETTABLE                         R16 R14 R15
      370 GETTABLEKS                       R15 R8 K19 ["SHOW_COMMENT"]
      372 LOADB                            R16 0
      373 SETTABLE                         R16 R14 R15
      374 GETTABLEKS                       R15 R8 K18 ["SHOW_COPY"]
      376 LOADB                            R16 0
      377 SETTABLE                         R16 R14 R15
      378 GETTABLEKS                       R15 R8 K17 ["SHOW_GENRE"]
      380 LOADB                            R16 0
      381 SETTABLE                         R16 R14 R15
      382 GETTABLEKS                       R15 R8 K16 ["SHOW_OWNERSHIP"]
      384 LOADB                            R16 1
      385 SETTABLE                         R16 R14 R15
      386 GETTABLEKS                       R15 R8 K23 ["SHOW_PRICE"]
      388 LOADB                            R16 0
      389 SETTABLE                         R16 R14 R15
      390 GETTABLEKS                       R15 R8 K22 ["SHOW_SALE"]
      392 LOADB                            R16 0
      393 SETTABLE                         R16 R14 R15
      394 GETTABLEKS                       R15 R8 K15 ["SHOW_VERSIONS_TAB"]
      396 LOADB                            R16 0
      397 SETTABLE                         R16 R14 R15
      398 GETTABLEKS                       R15 R8 K14 ["SHOW_SALES_TAB"]
      400 LOADB                            R16 0
      401 SETTABLE                         R16 R14 R15
      402 SETTABLE                         R14 R12 R13
      403 SETTABLE                         R12 R10 R11
      404 GETTABLEKS                       R11 R3 K41 ["UGCBundleTypes"]
      406 GETTABLEKS                       R11 R11 K42 ["Body"]
      408 NEWTABLE                         R12 1 0
      410 GETTABLEKS                       R13 R3 K29 ["FLOW_TYPE"]
      412 GETTABLEKS                       R13 R13 K32 ["UPLOAD_FLOW"]
      414 NEWTABLE                         R14 2 0
      416 GETTABLEKS                       R15 R8 K20 ["SHOW_ASSET_TYPE"]
      418 LOADB                            R16 0
      419 SETTABLE                         R16 R14 R15
      420 GETTABLEKS                       R15 R8 K16 ["SHOW_OWNERSHIP"]
      422 LOADB                            R16 0
      423 SETTABLE                         R16 R14 R15
      424 SETTABLE                         R14 R12 R13
      425 SETTABLE                         R12 R10 R11
      426 GETTABLEKS                       R11 R3 K41 ["UGCBundleTypes"]
      428 GETTABLEKS                       R11 R11 K43 ["DynamicHead"]
      430 NEWTABLE                         R12 1 0
      432 GETTABLEKS                       R13 R3 K29 ["FLOW_TYPE"]
      434 GETTABLEKS                       R13 R13 K32 ["UPLOAD_FLOW"]
      436 NEWTABLE                         R14 2 0
      438 GETTABLEKS                       R15 R8 K20 ["SHOW_ASSET_TYPE"]
      440 LOADB                            R16 0
      441 SETTABLE                         R16 R14 R15
      442 GETTABLEKS                       R15 R8 K16 ["SHOW_OWNERSHIP"]
      444 LOADB                            R16 0
      445 SETTABLE                         R16 R14 R15
      446 SETTABLE                         R14 R12 R13
      447 SETTABLE                         R12 R10 R11
      448 GETTABLEKS                       R11 R3 K41 ["UGCBundleTypes"]
      450 GETTABLEKS                       R11 R11 K44 ["Shoes"]
      452 NEWTABLE                         R12 1 0
      454 GETTABLEKS                       R13 R3 K29 ["FLOW_TYPE"]
      456 GETTABLEKS                       R13 R13 K32 ["UPLOAD_FLOW"]
      458 NEWTABLE                         R14 2 0
      460 GETTABLEKS                       R15 R8 K20 ["SHOW_ASSET_TYPE"]
      462 LOADB                            R16 0
      463 SETTABLE                         R16 R14 R15
      464 GETTABLEKS                       R15 R8 K16 ["SHOW_OWNERSHIP"]
      466 LOADB                            R16 0
      467 SETTABLE                         R16 R14 R15
      468 SETTABLE                         R14 R12 R13
      469 SETTABLE                         R12 R10 R11
      470 DUPCLOSURE                       R11 K45 [PROTO_0]
      471 CAPTURE                          VAL R4
      472 CAPTURE                          VAL R7
      473 DUPCLOSURE                       R12 K46 [PROTO_1]
      474 CAPTURE                          VAL R4
      475 CAPTURE                          VAL R7
      476 CAPTURE                          VAL R9
      477 CAPTURE                          VAL R10
      478 SETTABLEKS                       R12 R5 K47 ["queryParam"]
      480 RETURN                           R5 1
