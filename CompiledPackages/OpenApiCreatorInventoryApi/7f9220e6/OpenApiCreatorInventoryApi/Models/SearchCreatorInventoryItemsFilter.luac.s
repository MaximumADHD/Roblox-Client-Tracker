PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected table, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K6 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETTABLEKS                       R3 R0 K7 ["assetTypes"]
       27 JUMPIFEQKNIL                     R3 ; [+77]
       29 GETTABLEKS                       R4 R0 K7 ["assetTypes"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
       37 LOADK                            R6 K8 ["%*\"assetTypes\" > Expected table, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["assetTypes"]
       41 FASTCALL1                        TYPEOF R10 ; [+2]
       42 GETIMPORT                        R9 K1 [typeof]
       44 CALL                             R9 1 1
       45 NAMECALL                         R6 R6 K4 ["format"]
       47 CALL                             R6 3 1
       48 MOVE                             R5 R6
       49 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K6 [table.insert]
       54 CALL                             R3 2 0
       55 JUMP                             ; [+49]
       56 GETTABLEKS                       R3 R0 K7 ["assetTypes"]
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 FASTCALL1                        TYPEOF R6 ; [+3]
       62 MOVE                             R9 R6
       63 GETIMPORT                        R8 K1 [typeof]
       65 CALL                             R8 1 1
       66 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
       68 LOADK                            R11 K10 ["%*\"assetTypes\" > Expected index of type number, got %* as %*"]
       69 MOVE                             R13 R2
       70 MOVE                             R14 R6
       71 FASTCALL1                        TYPEOF R6 ; [+3]
       72 MOVE                             R16 R6
       73 GETIMPORT                        R15 K1 [typeof]
       75 CALL                             R15 1 1
       76 NAMECALL                         R11 R11 K4 ["format"]
       78 CALL                             R11 4 1
       79 MOVE                             R10 R11
       80 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       82 MOVE                             R9 R1
       83 GETIMPORT                        R8 K6 [table.insert]
       85 CALL                             R8 2 0
       86 JUMP                             ; [+16]
       87 GETTABLEKS                       R8 R0 K7 ["assetTypes"]
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
       92 MOVE                             R10 R7
       93 MOVE                             R11 R1
       94 LOADK                            R13 K12 ["%*\"assetTypes\" > [%*] > "]
       95 MOVE                             R15 R2
       96 MOVE                             R16 R6
       97 NAMECALL                         R13 R13 K4 ["format"]
       99 CALL                             R13 3 1
      100 MOVE                             R12 R13
      101 CALL                             R9 3 1
      102 SETTABLE                         R9 R8 R6
      103 FORGLOOP                         R3 2 ; [-43]
      105 GETTABLEKS                       R3 R0 K13 ["userIds"]
      107 JUMPIFEQKNIL                     R3 ; [+86]
      109 GETTABLEKS                       R4 R0 K13 ["userIds"]
      111 FASTCALL1                        TYPEOF R4 ; [+2]
      112 GETIMPORT                        R3 K1 [typeof]
      114 CALL                             R3 1 1
      115 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      117 LOADK                            R6 K14 ["%*\"userIds\" > Expected table, got %*"]
      118 MOVE                             R8 R2
      119 GETTABLEKS                       R10 R0 K13 ["userIds"]
      121 FASTCALL1                        TYPEOF R10 ; [+2]
      122 GETIMPORT                        R9 K1 [typeof]
      124 CALL                             R9 1 1
      125 NAMECALL                         R6 R6 K4 ["format"]
      127 CALL                             R6 3 1
      128 MOVE                             R5 R6
      129 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      131 MOVE                             R4 R1
      132 GETIMPORT                        R3 K6 [table.insert]
      134 CALL                             R3 2 0
      135 JUMP                             ; [+58]
      136 GETTABLEKS                       R3 R0 K13 ["userIds"]
      138 LOADNIL                          R4
      139 LOADNIL                          R5
      140 FORGPREP                         R3
      141 FASTCALL1                        TYPEOF R6 ; [+3]
      142 MOVE                             R9 R6
      143 GETIMPORT                        R8 K1 [typeof]
      145 CALL                             R8 1 1
      146 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
      148 LOADK                            R11 K15 ["%*\"userIds\" > Expected index of type number, got %* as %*"]
      149 MOVE                             R13 R2
      150 MOVE                             R14 R6
      151 FASTCALL1                        TYPEOF R6 ; [+3]
      152 MOVE                             R16 R6
      153 GETIMPORT                        R15 K1 [typeof]
      155 CALL                             R15 1 1
      156 NAMECALL                         R11 R11 K4 ["format"]
      158 CALL                             R11 4 1
      159 MOVE                             R10 R11
      160 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      162 MOVE                             R9 R1
      163 GETIMPORT                        R8 K6 [table.insert]
      165 CALL                             R8 2 0
      166 JUMP                             ; [+25]
      167 FASTCALL1                        TYPEOF R7 ; [+3]
      168 MOVE                             R9 R7
      169 GETIMPORT                        R8 K1 [typeof]
      171 CALL                             R8 1 1
      172 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      174 LOADK                            R11 K16 ["%*\"userIds\" > [%*] > Expected number, got %*"]
      175 MOVE                             R13 R2
      176 MOVE                             R14 R6
      177 FASTCALL1                        TYPEOF R7 ; [+3]
      178 MOVE                             R16 R7
      179 GETIMPORT                        R15 K1 [typeof]
      181 CALL                             R15 1 1
      182 NAMECALL                         R11 R11 K4 ["format"]
      184 CALL                             R11 4 1
      185 MOVE                             R10 R11
      186 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      188 MOVE                             R9 R1
      189 GETIMPORT                        R8 K6 [table.insert]
      191 CALL                             R8 2 0
      192 FORGLOOP                         R3 2 ; [-52]
      194 GETTABLEKS                       R3 R0 K17 ["groupIds"]
      196 JUMPIFEQKNIL                     R3 ; [+86]
      198 GETTABLEKS                       R4 R0 K17 ["groupIds"]
      200 FASTCALL1                        TYPEOF R4 ; [+2]
      201 GETIMPORT                        R3 K1 [typeof]
      203 CALL                             R3 1 1
      204 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      206 LOADK                            R6 K18 ["%*\"groupIds\" > Expected table, got %*"]
      207 MOVE                             R8 R2
      208 GETTABLEKS                       R10 R0 K17 ["groupIds"]
      210 FASTCALL1                        TYPEOF R10 ; [+2]
      211 GETIMPORT                        R9 K1 [typeof]
      213 CALL                             R9 1 1
      214 NAMECALL                         R6 R6 K4 ["format"]
      216 CALL                             R6 3 1
      217 MOVE                             R5 R6
      218 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      220 MOVE                             R4 R1
      221 GETIMPORT                        R3 K6 [table.insert]
      223 CALL                             R3 2 0
      224 JUMP                             ; [+58]
      225 GETTABLEKS                       R3 R0 K17 ["groupIds"]
      227 LOADNIL                          R4
      228 LOADNIL                          R5
      229 FORGPREP                         R3
      230 FASTCALL1                        TYPEOF R6 ; [+3]
      231 MOVE                             R9 R6
      232 GETIMPORT                        R8 K1 [typeof]
      234 CALL                             R8 1 1
      235 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
      237 LOADK                            R11 K19 ["%*\"groupIds\" > Expected index of type number, got %* as %*"]
      238 MOVE                             R13 R2
      239 MOVE                             R14 R6
      240 FASTCALL1                        TYPEOF R6 ; [+3]
      241 MOVE                             R16 R6
      242 GETIMPORT                        R15 K1 [typeof]
      244 CALL                             R15 1 1
      245 NAMECALL                         R11 R11 K4 ["format"]
      247 CALL                             R11 4 1
      248 MOVE                             R10 R11
      249 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      251 MOVE                             R9 R1
      252 GETIMPORT                        R8 K6 [table.insert]
      254 CALL                             R8 2 0
      255 JUMP                             ; [+25]
      256 FASTCALL1                        TYPEOF R7 ; [+3]
      257 MOVE                             R9 R7
      258 GETIMPORT                        R8 K1 [typeof]
      260 CALL                             R8 1 1
      261 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      263 LOADK                            R11 K20 ["%*\"groupIds\" > [%*] > Expected number, got %*"]
      264 MOVE                             R13 R2
      265 MOVE                             R14 R6
      266 FASTCALL1                        TYPEOF R7 ; [+3]
      267 MOVE                             R16 R7
      268 GETIMPORT                        R15 K1 [typeof]
      270 CALL                             R15 1 1
      271 NAMECALL                         R11 R11 K4 ["format"]
      273 CALL                             R11 4 1
      274 MOVE                             R10 R11
      275 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      277 MOVE                             R9 R1
      278 GETIMPORT                        R8 K6 [table.insert]
      280 CALL                             R8 2 0
      281 FORGLOOP                         R3 2 ; [-52]
      283 GETTABLEKS                       R3 R0 K21 ["universeIds"]
      285 JUMPIFEQKNIL                     R3 ; [+86]
      287 GETTABLEKS                       R4 R0 K21 ["universeIds"]
      289 FASTCALL1                        TYPEOF R4 ; [+2]
      290 GETIMPORT                        R3 K1 [typeof]
      292 CALL                             R3 1 1
      293 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      295 LOADK                            R6 K22 ["%*\"universeIds\" > Expected table, got %*"]
      296 MOVE                             R8 R2
      297 GETTABLEKS                       R10 R0 K21 ["universeIds"]
      299 FASTCALL1                        TYPEOF R10 ; [+2]
      300 GETIMPORT                        R9 K1 [typeof]
      302 CALL                             R9 1 1
      303 NAMECALL                         R6 R6 K4 ["format"]
      305 CALL                             R6 3 1
      306 MOVE                             R5 R6
      307 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      309 MOVE                             R4 R1
      310 GETIMPORT                        R3 K6 [table.insert]
      312 CALL                             R3 2 0
      313 JUMP                             ; [+58]
      314 GETTABLEKS                       R3 R0 K21 ["universeIds"]
      316 LOADNIL                          R4
      317 LOADNIL                          R5
      318 FORGPREP                         R3
      319 FASTCALL1                        TYPEOF R6 ; [+3]
      320 MOVE                             R9 R6
      321 GETIMPORT                        R8 K1 [typeof]
      323 CALL                             R8 1 1
      324 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
      326 LOADK                            R11 K23 ["%*\"universeIds\" > Expected index of type number, got %* as %*"]
      327 MOVE                             R13 R2
      328 MOVE                             R14 R6
      329 FASTCALL1                        TYPEOF R6 ; [+3]
      330 MOVE                             R16 R6
      331 GETIMPORT                        R15 K1 [typeof]
      333 CALL                             R15 1 1
      334 NAMECALL                         R11 R11 K4 ["format"]
      336 CALL                             R11 4 1
      337 MOVE                             R10 R11
      338 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      340 MOVE                             R9 R1
      341 GETIMPORT                        R8 K6 [table.insert]
      343 CALL                             R8 2 0
      344 JUMP                             ; [+25]
      345 FASTCALL1                        TYPEOF R7 ; [+3]
      346 MOVE                             R9 R7
      347 GETIMPORT                        R8 K1 [typeof]
      349 CALL                             R8 1 1
      350 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      352 LOADK                            R11 K24 ["%*\"universeIds\" > [%*] > Expected number, got %*"]
      353 MOVE                             R13 R2
      354 MOVE                             R14 R6
      355 FASTCALL1                        TYPEOF R7 ; [+3]
      356 MOVE                             R16 R7
      357 GETIMPORT                        R15 K1 [typeof]
      359 CALL                             R15 1 1
      360 NAMECALL                         R11 R11 K4 ["format"]
      362 CALL                             R11 4 1
      363 MOVE                             R10 R11
      364 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      366 MOVE                             R9 R1
      367 GETIMPORT                        R8 K6 [table.insert]
      369 CALL                             R8 2 0
      370 FORGLOOP                         R3 2 ; [-52]
      372 GETTABLEKS                       R3 R0 K25 ["includeFolders"]
      374 JUMPIFEQKNIL                     R3 ; [+27]
      376 GETTABLEKS                       R4 R0 K25 ["includeFolders"]
      378 FASTCALL1                        TYPEOF R4 ; [+2]
      379 GETIMPORT                        R3 K1 [typeof]
      381 CALL                             R3 1 1
      382 JUMPIFEQKS                       R3 K26 ["boolean"] ; [+19]
      384 LOADK                            R6 K27 ["%*\"includeFolders\" > Expected boolean, got %*"]
      385 MOVE                             R8 R2
      386 GETTABLEKS                       R10 R0 K25 ["includeFolders"]
      388 FASTCALL1                        TYPEOF R10 ; [+2]
      389 GETIMPORT                        R9 K1 [typeof]
      391 CALL                             R9 1 1
      392 NAMECALL                         R6 R6 K4 ["format"]
      394 CALL                             R6 3 1
      395 MOVE                             R5 R6
      396 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      398 MOVE                             R4 R1
      399 GETIMPORT                        R3 K6 [table.insert]
      401 CALL                             R3 2 0
      402 GETTABLEKS                       R3 R0 K28 ["sources"]
      404 JUMPIFEQKNIL                     R3 ; [+77]
      406 GETTABLEKS                       R4 R0 K28 ["sources"]
      408 FASTCALL1                        TYPEOF R4 ; [+2]
      409 GETIMPORT                        R3 K1 [typeof]
      411 CALL                             R3 1 1
      412 JUMPIFEQKS                       R3 K2 ["table"] ; [+20]
      414 LOADK                            R6 K29 ["%*\"sources\" > Expected table, got %*"]
      415 MOVE                             R8 R2
      416 GETTABLEKS                       R10 R0 K28 ["sources"]
      418 FASTCALL1                        TYPEOF R10 ; [+2]
      419 GETIMPORT                        R9 K1 [typeof]
      421 CALL                             R9 1 1
      422 NAMECALL                         R6 R6 K4 ["format"]
      424 CALL                             R6 3 1
      425 MOVE                             R5 R6
      426 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      428 MOVE                             R4 R1
      429 GETIMPORT                        R3 K6 [table.insert]
      431 CALL                             R3 2 0
      432 RETURN                           R0 1
      433 GETTABLEKS                       R3 R0 K28 ["sources"]
      435 LOADNIL                          R4
      436 LOADNIL                          R5
      437 FORGPREP                         R3
      438 FASTCALL1                        TYPEOF R6 ; [+3]
      439 MOVE                             R9 R6
      440 GETIMPORT                        R8 K1 [typeof]
      442 CALL                             R8 1 1
      443 JUMPIFEQKS                       R8 K9 ["number"] ; [+20]
      445 LOADK                            R11 K30 ["%*\"sources\" > Expected index of type number, got %* as %*"]
      446 MOVE                             R13 R2
      447 MOVE                             R14 R6
      448 FASTCALL1                        TYPEOF R6 ; [+3]
      449 MOVE                             R16 R6
      450 GETIMPORT                        R15 K1 [typeof]
      452 CALL                             R15 1 1
      453 NAMECALL                         R11 R11 K4 ["format"]
      455 CALL                             R11 4 1
      456 MOVE                             R10 R11
      457 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      459 MOVE                             R9 R1
      460 GETIMPORT                        R8 K6 [table.insert]
      462 CALL                             R8 2 0
      463 JUMP                             ; [+16]
      464 GETTABLEKS                       R8 R0 K28 ["sources"]
      466 GETUPVAL                         R9 1
      467 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
      469 MOVE                             R10 R7
      470 MOVE                             R11 R1
      471 LOADK                            R13 K31 ["%*\"sources\" > [%*] > "]
      472 MOVE                             R15 R2
      473 MOVE                             R16 R6
      474 NAMECALL                         R13 R13 K4 ["format"]
      476 CALL                             R13 3 1
      477 MOVE                             R12 R13
      478 CALL                             R9 3 1
      479 SETTABLE                         R9 R8 R6
      480 FORGLOOP                         R3 2 ; [-43]
      482 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["assetTypes"]
        6 JUMPIFEQKNIL                     R2 ; [+23]
        8 GETIMPORT                        R2 K2 [table.clone]
       10 GETTABLEKS                       R3 R1 K3 ["assetTypes"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K3 ["assetTypes"]
       15 GETTABLEKS                       R2 R1 K3 ["assetTypes"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K3 ["assetTypes"]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       25 MOVE                             R9 R6
       26 CALL                             R8 1 1
       27 SETTABLE                         R8 R7 R5
       28 FORGLOOP                         R2 2 ; [-9]
       30 GETTABLEKS                       R2 R1 K5 ["sources"]
       32 JUMPIFEQKNIL                     R2 ; [+23]
       34 GETIMPORT                        R2 K2 [table.clone]
       36 GETTABLEKS                       R3 R1 K5 ["sources"]
       38 CALL                             R2 1 1
       39 SETTABLEKS                       R2 R1 K5 ["sources"]
       41 GETTABLEKS                       R2 R1 K5 ["sources"]
       43 LOADNIL                          R3
       44 LOADNIL                          R4
       45 FORGPREP                         R2
       46 GETTABLEKS                       R7 R1 K5 ["sources"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K4 ["toRequest"]
       51 MOVE                             R9 R6
       52 CALL                             R8 1 1
       53 SETTABLE                         R8 R7 R5
       54 FORGLOOP                         R2 2 ; [-9]
       56 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Models"]
       18 GETTABLEKS                       R4 R4 K9 ["AssetType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Models"]
       25 GETTABLEKS                       R5 R5 K10 ["SourceType"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K11 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 GETIMPORT                        R7 K15 [table.freeze]
       36 DUPTABLE                         R8 K18 [{"fromResponse", "toRequest"}]
       37 SETTABLEKS                       R5 R8 K16 ["fromResponse"]
       39 SETTABLEKS                       R6 R8 K17 ["toRequest"]
       41 CALL                             R7 1 1
       42 RETURN                           R7 1
