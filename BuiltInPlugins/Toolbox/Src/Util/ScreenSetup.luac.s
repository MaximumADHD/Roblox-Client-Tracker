PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["isCatalogAsset"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+6]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K1 ["isUGCBundleType"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K2 ["Catalog"]
       19 RETURN                           R1 1
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K3 ["Marketplace"]
       23 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R3
        3 JUMP                             ; [+19]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["isCatalogAsset"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 JUMPIF                           R4 ; [+6]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["isUGCBundleType"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 JUMPIFNOT                        R4 ; [+4]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K2 ["Catalog"]
       19 JUMP                             ; [+3]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K3 ["Marketplace"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Util"]
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
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R10 R0 K3 ["Src"]
       40 GETTABLEKS                       R9 R10 K14 ["Flags"]
       42 GETTABLEKS                       R8 R9 K15 ["getFFlagEnableUploadingShoes"]
       44 CALL                             R7 1 1
       45 MOVE                             R8 R2
       46 NEWTABLE                         R9 0 11
       48 LOADK                            R10 K16 ["SHOW_SALES_TAB"]
       49 LOADK                            R11 K17 ["SHOW_VERSIONS_TAB"]
       50 LOADK                            R12 K18 ["SHOW_OWNERSHIP"]
       51 LOADK                            R13 K19 ["SHOW_GENRE"]
       52 LOADK                            R14 K20 ["SHOW_COPY"]
       53 LOADK                            R15 K21 ["SHOW_COMMENT"]
       54 LOADK                            R16 K22 ["SHOW_ASSET_TYPE"]
       55 LOADK                            R17 K23 ["SHOW_OVERRIDE_BUTTON"]
       56 LOADK                            R18 K24 ["SHOW_SALE"]
       57 LOADK                            R19 K25 ["SHOW_PRICE"]
       58 LOADK                            R20 K26 ["SHOW_PERMISSIONS_TAB"]
       59 SETLIST                          R9 R10 11 [1]
       61 CALL                             R8 1 1
       62 SETTABLEKS                       R8 R5 K27 ["keys"]
       64 DUPTABLE                         R8 K30 [{"Marketplace", "Catalog"}]
       65 NEWTABLE                         R9 0 0
       67 SETTABLEKS                       R9 R8 K28 ["Marketplace"]
       69 NEWTABLE                         R9 0 0
       71 SETTABLEKS                       R9 R8 K29 ["Catalog"]
       73 GETTABLEKS                       R9 R5 K27 ["keys"]
       75 NEWTABLE                         R10 4 0
       77 GETTABLEKS                       R12 R3 K31 ["FLOW_TYPE"]
       79 GETTABLEKS                       R11 R12 K32 ["DOWNLOAD_FLOW"]
       81 NEWTABLE                         R12 2 0
       83 GETTABLEKS                       R13 R8 K28 ["Marketplace"]
       85 NEWTABLE                         R14 8 0
       87 GETTABLEKS                       R15 R9 K21 ["SHOW_COMMENT"]
       89 LOADB                            R16 0
       90 SETTABLE                         R16 R14 R15
       91 GETTABLEKS                       R15 R9 K20 ["SHOW_COPY"]
       93 LOADB                            R16 0
       94 SETTABLE                         R16 R14 R15
       95 GETTABLEKS                       R15 R9 K19 ["SHOW_GENRE"]
       97 LOADB                            R16 0
       98 SETTABLE                         R16 R14 R15
       99 GETTABLEKS                       R15 R9 K23 ["SHOW_OVERRIDE_BUTTON"]
      101 LOADB                            R16 0
      102 SETTABLE                         R16 R14 R15
      103 GETTABLEKS                       R15 R9 K18 ["SHOW_OWNERSHIP"]
      105 LOADB                            R16 0
      106 SETTABLE                         R16 R14 R15
      107 GETTABLEKS                       R15 R9 K25 ["SHOW_PRICE"]
      109 LOADB                            R16 0
      110 SETTABLE                         R16 R14 R15
      111 GETTABLEKS                       R15 R9 K24 ["SHOW_SALE"]
      113 LOADB                            R16 0
      114 SETTABLE                         R16 R14 R15
      115 GETTABLEKS                       R15 R9 K17 ["SHOW_VERSIONS_TAB"]
      117 LOADB                            R16 0
      118 SETTABLE                         R16 R14 R15
      119 SETTABLE                         R14 R12 R13
      120 GETTABLEKS                       R13 R8 K29 ["Catalog"]
      122 NEWTABLE                         R14 8 0
      124 GETTABLEKS                       R15 R9 K21 ["SHOW_COMMENT"]
      126 LOADB                            R16 0
      127 SETTABLE                         R16 R14 R15
      128 GETTABLEKS                       R15 R9 K20 ["SHOW_COPY"]
      130 LOADB                            R16 0
      131 SETTABLE                         R16 R14 R15
      132 GETTABLEKS                       R15 R9 K19 ["SHOW_GENRE"]
      134 LOADB                            R16 0
      135 SETTABLE                         R16 R14 R15
      136 GETTABLEKS                       R15 R9 K23 ["SHOW_OVERRIDE_BUTTON"]
      138 LOADB                            R16 0
      139 SETTABLE                         R16 R14 R15
      140 GETTABLEKS                       R15 R9 K18 ["SHOW_OWNERSHIP"]
      142 LOADB                            R16 0
      143 SETTABLE                         R16 R14 R15
      144 GETTABLEKS                       R15 R9 K25 ["SHOW_PRICE"]
      146 LOADB                            R16 0
      147 SETTABLE                         R16 R14 R15
      148 GETTABLEKS                       R15 R9 K24 ["SHOW_SALE"]
      150 LOADB                            R16 0
      151 SETTABLE                         R16 R14 R15
      152 GETTABLEKS                       R15 R9 K17 ["SHOW_VERSIONS_TAB"]
      154 LOADB                            R16 0
      155 SETTABLE                         R16 R14 R15
      156 SETTABLE                         R14 R12 R13
      157 SETTABLE                         R12 R10 R11
      158 GETTABLEKS                       R12 R3 K31 ["FLOW_TYPE"]
      160 GETTABLEKS                       R11 R12 K33 ["EDIT_FLOW"]
      162 NEWTABLE                         R12 2 0
      164 GETTABLEKS                       R13 R8 K28 ["Marketplace"]
      166 NEWTABLE                         R14 8 0
      168 GETTABLEKS                       R15 R9 K21 ["SHOW_COMMENT"]
      170 NOT                              R16 R6
      171 SETTABLE                         R16 R14 R15
      172 GETTABLEKS                       R15 R9 K20 ["SHOW_COPY"]
      174 LOADB                            R16 1
      175 SETTABLE                         R16 R14 R15
      176 GETTABLEKS                       R15 R9 K19 ["SHOW_GENRE"]
      178 LOADB                            R16 1
      179 SETTABLE                         R16 R14 R15
      180 GETTABLEKS                       R15 R9 K18 ["SHOW_OWNERSHIP"]
      182 LOADB                            R16 1
      183 SETTABLE                         R16 R14 R15
      184 GETTABLEKS                       R15 R9 K25 ["SHOW_PRICE"]
      186 LOADB                            R16 0
      187 SETTABLE                         R16 R14 R15
      188 GETTABLEKS                       R15 R9 K24 ["SHOW_SALE"]
      190 LOADB                            R16 0
      191 SETTABLE                         R16 R14 R15
      192 GETTABLEKS                       R15 R9 K17 ["SHOW_VERSIONS_TAB"]
      194 LOADB                            R16 1
      195 SETTABLE                         R16 R14 R15
      196 SETTABLE                         R14 R12 R13
      197 GETTABLEKS                       R13 R8 K29 ["Catalog"]
      199 NEWTABLE                         R14 4 0
      201 GETTABLEKS                       R15 R9 K22 ["SHOW_ASSET_TYPE"]
      203 LOADB                            R16 1
      204 SETTABLE                         R16 R14 R15
      205 GETTABLEKS                       R15 R9 K18 ["SHOW_OWNERSHIP"]
      207 LOADB                            R16 1
      208 SETTABLE                         R16 R14 R15
      209 GETTABLEKS                       R15 R9 K16 ["SHOW_SALES_TAB"]
      211 LOADB                            R16 1
      212 SETTABLE                         R16 R14 R15
      213 SETTABLE                         R14 R12 R13
      214 SETTABLE                         R12 R10 R11
      215 GETTABLEKS                       R12 R3 K31 ["FLOW_TYPE"]
      217 GETTABLEKS                       R11 R12 K34 ["UPLOAD_FLOW"]
      219 NEWTABLE                         R12 2 0
      221 GETTABLEKS                       R13 R8 K28 ["Marketplace"]
      223 NEWTABLE                         R14 8 0
      225 GETTABLEKS                       R15 R9 K21 ["SHOW_COMMENT"]
      227 NOT                              R16 R6
      228 SETTABLE                         R16 R14 R15
      229 GETTABLEKS                       R15 R9 K20 ["SHOW_COPY"]
      231 LOADB                            R16 1
      232 SETTABLE                         R16 R14 R15
      233 GETTABLEKS                       R15 R9 K19 ["SHOW_GENRE"]
      235 LOADB                            R16 1
      236 SETTABLE                         R16 R14 R15
      237 GETTABLEKS                       R15 R9 K23 ["SHOW_OVERRIDE_BUTTON"]
      239 LOADB                            R16 1
      240 SETTABLE                         R16 R14 R15
      241 GETTABLEKS                       R15 R9 K18 ["SHOW_OWNERSHIP"]
      243 LOADB                            R16 1
      244 SETTABLE                         R16 R14 R15
      245 GETTABLEKS                       R15 R9 K25 ["SHOW_PRICE"]
      247 LOADB                            R16 0
      248 SETTABLE                         R16 R14 R15
      249 GETTABLEKS                       R15 R9 K24 ["SHOW_SALE"]
      251 LOADB                            R16 0
      252 SETTABLE                         R16 R14 R15
      253 GETTABLEKS                       R15 R9 K17 ["SHOW_VERSIONS_TAB"]
      255 LOADB                            R16 0
      256 SETTABLE                         R16 R14 R15
      257 SETTABLE                         R14 R12 R13
      258 GETTABLEKS                       R13 R8 K29 ["Catalog"]
      260 NEWTABLE                         R14 2 0
      262 GETTABLEKS                       R15 R9 K22 ["SHOW_ASSET_TYPE"]
      264 LOADB                            R16 1
      265 SETTABLE                         R16 R14 R15
      266 GETTABLEKS                       R15 R9 K18 ["SHOW_OWNERSHIP"]
      268 LOADB                            R16 1
      269 SETTABLE                         R16 R14 R15
      270 SETTABLE                         R14 R12 R13
      271 SETTABLE                         R12 R10 R11
      272 NEWTABLE                         R11 4 0
      274 GETIMPORT                        R12 K38 [Enum.AssetType.Plugin]
      276 NEWTABLE                         R13 2 0
      278 GETTABLEKS                       R15 R3 K31 ["FLOW_TYPE"]
      280 GETTABLEKS                       R14 R15 K34 ["UPLOAD_FLOW"]
      282 NEWTABLE                         R15 8 0
      284 GETTABLEKS                       R16 R9 K22 ["SHOW_ASSET_TYPE"]
      286 LOADB                            R17 1
      287 SETTABLE                         R17 R15 R16
      288 GETTABLEKS                       R16 R9 K21 ["SHOW_COMMENT"]
      290 LOADB                            R17 0
      291 SETTABLE                         R17 R15 R16
      292 GETTABLEKS                       R16 R9 K20 ["SHOW_COPY"]
      294 LOADB                            R17 1
      295 SETTABLE                         R17 R15 R16
      296 GETTABLEKS                       R16 R9 K19 ["SHOW_GENRE"]
      298 LOADB                            R17 0
      299 SETTABLE                         R17 R15 R16
      300 GETTABLEKS                       R16 R9 K23 ["SHOW_OVERRIDE_BUTTON"]
      302 LOADB                            R17 1
      303 SETTABLE                         R17 R15 R16
      304 GETTABLEKS                       R16 R9 K25 ["SHOW_PRICE"]
      306 LOADB                            R17 0
      307 SETTABLE                         R17 R15 R16
      308 SETTABLE                         R15 R13 R14
      309 GETTABLEKS                       R15 R3 K31 ["FLOW_TYPE"]
      311 GETTABLEKS                       R14 R15 K33 ["EDIT_FLOW"]
      313 NEWTABLE                         R15 8 0
      315 GETTABLEKS                       R16 R9 K22 ["SHOW_ASSET_TYPE"]
      317 LOADB                            R17 1
      318 SETTABLE                         R17 R15 R16
      319 GETTABLEKS                       R16 R9 K21 ["SHOW_COMMENT"]
      321 LOADB                            R17 0
      322 SETTABLE                         R17 R15 R16
      323 GETTABLEKS                       R16 R9 K20 ["SHOW_COPY"]
      325 LOADB                            R17 1
      326 SETTABLE                         R17 R15 R16
      327 GETTABLEKS                       R16 R9 K19 ["SHOW_GENRE"]
      329 LOADB                            R17 0
      330 SETTABLE                         R17 R15 R16
      331 GETTABLEKS                       R16 R9 K18 ["SHOW_OWNERSHIP"]
      333 LOADB                            R17 1
      334 SETTABLE                         R17 R15 R16
      335 GETTABLEKS                       R16 R9 K25 ["SHOW_PRICE"]
      337 LOADB                            R17 0
      338 SETTABLE                         R17 R15 R16
      339 GETTABLEKS                       R16 R9 K24 ["SHOW_SALE"]
      341 LOADB                            R17 0
      342 SETTABLE                         R17 R15 R16
      343 GETTABLEKS                       R16 R9 K17 ["SHOW_VERSIONS_TAB"]
      345 LOADB                            R17 1
      346 SETTABLE                         R17 R15 R16
      347 SETTABLE                         R15 R13 R14
      348 SETTABLE                         R13 R11 R12
      349 GETIMPORT                        R12 K40 [Enum.AssetType.Model]
      351 NEWTABLE                         R13 1 0
      353 GETTABLEKS                       R15 R3 K31 ["FLOW_TYPE"]
      355 GETTABLEKS                       R14 R15 K34 ["UPLOAD_FLOW"]
      357 NEWTABLE                         R15 1 0
      359 GETTABLEKS                       R16 R9 K23 ["SHOW_OVERRIDE_BUTTON"]
      361 LOADB                            R17 1
      362 SETTABLE                         R17 R15 R16
      363 SETTABLE                         R15 R13 R14
      364 SETTABLE                         R13 R11 R12
      365 GETIMPORT                        R12 K42 [Enum.AssetType.Animation]
      367 NEWTABLE                         R13 1 0
      369 GETTABLEKS                       R15 R3 K31 ["FLOW_TYPE"]
      371 GETTABLEKS                       R14 R15 K34 ["UPLOAD_FLOW"]
      373 NEWTABLE                         R15 16 0
      375 GETTABLEKS                       R16 R9 K23 ["SHOW_OVERRIDE_BUTTON"]
      377 LOADB                            R17 1
      378 SETTABLE                         R17 R15 R16
      379 GETTABLEKS                       R16 R9 K21 ["SHOW_COMMENT"]
      381 LOADB                            R17 0
      382 SETTABLE                         R17 R15 R16
      383 GETTABLEKS                       R16 R9 K20 ["SHOW_COPY"]
      385 LOADB                            R17 0
      386 SETTABLE                         R17 R15 R16
      387 GETTABLEKS                       R16 R9 K19 ["SHOW_GENRE"]
      389 LOADB                            R17 0
      390 SETTABLE                         R17 R15 R16
      391 GETTABLEKS                       R16 R9 K18 ["SHOW_OWNERSHIP"]
      393 LOADB                            R17 1
      394 SETTABLE                         R17 R15 R16
      395 GETTABLEKS                       R16 R9 K25 ["SHOW_PRICE"]
      397 LOADB                            R17 0
      398 SETTABLE                         R17 R15 R16
      399 GETTABLEKS                       R16 R9 K24 ["SHOW_SALE"]
      401 LOADB                            R17 0
      402 SETTABLE                         R17 R15 R16
      403 GETTABLEKS                       R16 R9 K17 ["SHOW_VERSIONS_TAB"]
      405 LOADB                            R17 0
      406 SETTABLE                         R17 R15 R16
      407 GETTABLEKS                       R16 R9 K16 ["SHOW_SALES_TAB"]
      409 LOADB                            R17 0
      410 SETTABLE                         R17 R15 R16
      411 SETTABLE                         R15 R13 R14
      412 SETTABLE                         R13 R11 R12
      413 GETTABLEKS                       R13 R3 K43 ["UGCBundleTypes"]
      415 GETTABLEKS                       R12 R13 K44 ["Body"]
      417 NEWTABLE                         R13 1 0
      419 GETTABLEKS                       R15 R3 K31 ["FLOW_TYPE"]
      421 GETTABLEKS                       R14 R15 K34 ["UPLOAD_FLOW"]
      423 NEWTABLE                         R15 2 0
      425 GETTABLEKS                       R16 R9 K22 ["SHOW_ASSET_TYPE"]
      427 LOADB                            R17 0
      428 SETTABLE                         R17 R15 R16
      429 GETTABLEKS                       R16 R9 K18 ["SHOW_OWNERSHIP"]
      431 LOADB                            R17 0
      432 SETTABLE                         R17 R15 R16
      433 SETTABLE                         R15 R13 R14
      434 SETTABLE                         R13 R11 R12
      435 GETTABLEKS                       R13 R3 K43 ["UGCBundleTypes"]
      437 GETTABLEKS                       R12 R13 K45 ["DynamicHead"]
      439 NEWTABLE                         R13 1 0
      441 GETTABLEKS                       R15 R3 K31 ["FLOW_TYPE"]
      443 GETTABLEKS                       R14 R15 K34 ["UPLOAD_FLOW"]
      445 NEWTABLE                         R15 2 0
      447 GETTABLEKS                       R16 R9 K22 ["SHOW_ASSET_TYPE"]
      449 LOADB                            R17 0
      450 SETTABLE                         R17 R15 R16
      451 GETTABLEKS                       R16 R9 K18 ["SHOW_OWNERSHIP"]
      453 LOADB                            R17 0
      454 SETTABLE                         R17 R15 R16
      455 SETTABLE                         R15 R13 R14
      456 SETTABLE                         R13 R11 R12
      457 MOVE                             R12 R7
      458 CALL                             R12 0 1
      459 JUMPIFNOT                        R12 ; [+22]
      460 GETTABLEKS                       R13 R3 K43 ["UGCBundleTypes"]
      462 GETTABLEKS                       R12 R13 K46 ["Shoes"]
      464 NEWTABLE                         R13 1 0
      466 GETTABLEKS                       R15 R3 K31 ["FLOW_TYPE"]
      468 GETTABLEKS                       R14 R15 K34 ["UPLOAD_FLOW"]
      470 NEWTABLE                         R15 2 0
      472 GETTABLEKS                       R16 R9 K22 ["SHOW_ASSET_TYPE"]
      474 LOADB                            R17 0
      475 SETTABLE                         R17 R15 R16
      476 GETTABLEKS                       R16 R9 K18 ["SHOW_OWNERSHIP"]
      478 LOADB                            R17 0
      479 SETTABLE                         R17 R15 R16
      480 SETTABLE                         R15 R13 R14
      481 SETTABLE                         R13 R11 R12
      482 DUPCLOSURE                       R12 K47 [PROTO_0]
      483 CAPTURE                          VAL R4
      484 CAPTURE                          VAL R8
      485 DUPCLOSURE                       R13 K48 [PROTO_1]
      486 CAPTURE                          VAL R4
      487 CAPTURE                          VAL R8
      488 CAPTURE                          VAL R10
      489 CAPTURE                          VAL R11
      490 SETTABLEKS                       R13 R5 K49 ["queryParam"]
      492 RETURN                           R5 1
