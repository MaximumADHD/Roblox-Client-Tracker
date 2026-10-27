PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+18]
        7 LOADK                            R5 K3 ["%*Expected table, got %*"]
        8 MOVE                             R7 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R9 R0
       11 GETIMPORT                        R8 K1 [typeof]
       13 CALL                             R8 1 1
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K6 [table.insert]
       22 CALL                             R3 2 0
       23 RETURN                           R0 1
       24 GETTABLEKS                       R3 R0 K7 ["assetTypes"]
       26 JUMPIFEQKNIL                     R3 ; [+74]
       28 GETTABLEKS                       R4 R0 K7 ["assetTypes"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
       36 LOADK                            R5 K8 ["%*\"assetTypes\" > Expected table, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["assetTypes"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 JUMP                             ; [+47]
       54 GETTABLEKS                       R3 R0 K7 ["assetTypes"]
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 FORGPREP                         R3
       59 FASTCALL1                        TYPEOF R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K1 [typeof]
       63 CALL                             R8 1 1
       64 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
       66 LOADK                            R10 K10 ["%*\"assetTypes\" > Expected index of type number, got %* as %*"]
       67 MOVE                             R12 R2
       68 MOVE                             R13 R6
       69 FASTCALL1                        TYPEOF R6 ; [+3]
       70 MOVE                             R15 R6
       71 GETIMPORT                        R14 K1 [typeof]
       73 CALL                             R14 1 1
       74 NAMECALL                         R10 R10 K4 ["format"]
       76 CALL                             R10 4 1
       77 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       79 MOVE                             R9 R1
       80 GETIMPORT                        R8 K6 [table.insert]
       82 CALL                             R8 2 0
       83 JUMP                             ; [+15]
       84 GETTABLEKS                       R8 R0 K7 ["assetTypes"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
       89 MOVE                             R10 R7
       90 MOVE                             R11 R1
       91 LOADK                            R12 K12 ["%*\"assetTypes\" > [%*] > "]
       92 MOVE                             R14 R2
       93 MOVE                             R15 R6
       94 NAMECALL                         R12 R12 K4 ["format"]
       96 CALL                             R12 3 1
       97 CALL                             R9 3 1
       98 SETTABLE                         R9 R8 R6
       99 FORGLOOP                         R3 2 ; [-41]
      101 GETTABLEKS                       R3 R0 K13 ["userIds"]
      103 JUMPIFEQKNIL                     R3 ; [+83]
      105 GETTABLEKS                       R4 R0 K13 ["userIds"]
      107 FASTCALL1                        TYPEOF R4 ; [+2]
      108 GETIMPORT                        R3 K1 [typeof]
      110 CALL                             R3 1 1
      111 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      113 LOADK                            R5 K14 ["%*\"userIds\" > Expected table, got %*"]
      114 MOVE                             R7 R2
      115 GETTABLEKS                       R9 R0 K13 ["userIds"]
      117 FASTCALL1                        TYPEOF R9 ; [+2]
      118 GETIMPORT                        R8 K1 [typeof]
      120 CALL                             R8 1 1
      121 NAMECALL                         R5 R5 K4 ["format"]
      123 CALL                             R5 3 1
      124 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      126 MOVE                             R4 R1
      127 GETIMPORT                        R3 K6 [table.insert]
      129 CALL                             R3 2 0
      130 JUMP                             ; [+56]
      131 GETTABLEKS                       R3 R0 K13 ["userIds"]
      133 LOADNIL                          R4
      134 LOADNIL                          R5
      135 FORGPREP                         R3
      136 FASTCALL1                        TYPEOF R6 ; [+3]
      137 MOVE                             R9 R6
      138 GETIMPORT                        R8 K1 [typeof]
      140 CALL                             R8 1 1
      141 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      143 LOADK                            R10 K15 ["%*\"userIds\" > Expected index of type number, got %* as %*"]
      144 MOVE                             R12 R2
      145 MOVE                             R13 R6
      146 FASTCALL1                        TYPEOF R6 ; [+3]
      147 MOVE                             R15 R6
      148 GETIMPORT                        R14 K1 [typeof]
      150 CALL                             R14 1 1
      151 NAMECALL                         R10 R10 K4 ["format"]
      153 CALL                             R10 4 1
      154 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      156 MOVE                             R9 R1
      157 GETIMPORT                        R8 K6 [table.insert]
      159 CALL                             R8 2 0
      160 JUMP                             ; [+24]
      161 FASTCALL1                        TYPEOF R7 ; [+3]
      162 MOVE                             R9 R7
      163 GETIMPORT                        R8 K1 [typeof]
      165 CALL                             R8 1 1
      166 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      168 LOADK                            R10 K16 ["%*\"userIds\" > [%*] > Expected number, got %*"]
      169 MOVE                             R12 R2
      170 MOVE                             R13 R6
      171 FASTCALL1                        TYPEOF R7 ; [+3]
      172 MOVE                             R15 R7
      173 GETIMPORT                        R14 K1 [typeof]
      175 CALL                             R14 1 1
      176 NAMECALL                         R10 R10 K4 ["format"]
      178 CALL                             R10 4 1
      179 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      181 MOVE                             R9 R1
      182 GETIMPORT                        R8 K6 [table.insert]
      184 CALL                             R8 2 0
      185 FORGLOOP                         R3 2 ; [-50]
      187 GETTABLEKS                       R3 R0 K17 ["groupIds"]
      189 JUMPIFEQKNIL                     R3 ; [+83]
      191 GETTABLEKS                       R4 R0 K17 ["groupIds"]
      193 FASTCALL1                        TYPEOF R4 ; [+2]
      194 GETIMPORT                        R3 K1 [typeof]
      196 CALL                             R3 1 1
      197 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      199 LOADK                            R5 K18 ["%*\"groupIds\" > Expected table, got %*"]
      200 MOVE                             R7 R2
      201 GETTABLEKS                       R9 R0 K17 ["groupIds"]
      203 FASTCALL1                        TYPEOF R9 ; [+2]
      204 GETIMPORT                        R8 K1 [typeof]
      206 CALL                             R8 1 1
      207 NAMECALL                         R5 R5 K4 ["format"]
      209 CALL                             R5 3 1
      210 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      212 MOVE                             R4 R1
      213 GETIMPORT                        R3 K6 [table.insert]
      215 CALL                             R3 2 0
      216 JUMP                             ; [+56]
      217 GETTABLEKS                       R3 R0 K17 ["groupIds"]
      219 LOADNIL                          R4
      220 LOADNIL                          R5
      221 FORGPREP                         R3
      222 FASTCALL1                        TYPEOF R6 ; [+3]
      223 MOVE                             R9 R6
      224 GETIMPORT                        R8 K1 [typeof]
      226 CALL                             R8 1 1
      227 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      229 LOADK                            R10 K19 ["%*\"groupIds\" > Expected index of type number, got %* as %*"]
      230 MOVE                             R12 R2
      231 MOVE                             R13 R6
      232 FASTCALL1                        TYPEOF R6 ; [+3]
      233 MOVE                             R15 R6
      234 GETIMPORT                        R14 K1 [typeof]
      236 CALL                             R14 1 1
      237 NAMECALL                         R10 R10 K4 ["format"]
      239 CALL                             R10 4 1
      240 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      242 MOVE                             R9 R1
      243 GETIMPORT                        R8 K6 [table.insert]
      245 CALL                             R8 2 0
      246 JUMP                             ; [+24]
      247 FASTCALL1                        TYPEOF R7 ; [+3]
      248 MOVE                             R9 R7
      249 GETIMPORT                        R8 K1 [typeof]
      251 CALL                             R8 1 1
      252 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      254 LOADK                            R10 K20 ["%*\"groupIds\" > [%*] > Expected number, got %*"]
      255 MOVE                             R12 R2
      256 MOVE                             R13 R6
      257 FASTCALL1                        TYPEOF R7 ; [+3]
      258 MOVE                             R15 R7
      259 GETIMPORT                        R14 K1 [typeof]
      261 CALL                             R14 1 1
      262 NAMECALL                         R10 R10 K4 ["format"]
      264 CALL                             R10 4 1
      265 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      267 MOVE                             R9 R1
      268 GETIMPORT                        R8 K6 [table.insert]
      270 CALL                             R8 2 0
      271 FORGLOOP                         R3 2 ; [-50]
      273 GETTABLEKS                       R3 R0 K21 ["universeIds"]
      275 JUMPIFEQKNIL                     R3 ; [+83]
      277 GETTABLEKS                       R4 R0 K21 ["universeIds"]
      279 FASTCALL1                        TYPEOF R4 ; [+2]
      280 GETIMPORT                        R3 K1 [typeof]
      282 CALL                             R3 1 1
      283 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      285 LOADK                            R5 K22 ["%*\"universeIds\" > Expected table, got %*"]
      286 MOVE                             R7 R2
      287 GETTABLEKS                       R9 R0 K21 ["universeIds"]
      289 FASTCALL1                        TYPEOF R9 ; [+2]
      290 GETIMPORT                        R8 K1 [typeof]
      292 CALL                             R8 1 1
      293 NAMECALL                         R5 R5 K4 ["format"]
      295 CALL                             R5 3 1
      296 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      298 MOVE                             R4 R1
      299 GETIMPORT                        R3 K6 [table.insert]
      301 CALL                             R3 2 0
      302 JUMP                             ; [+56]
      303 GETTABLEKS                       R3 R0 K21 ["universeIds"]
      305 LOADNIL                          R4
      306 LOADNIL                          R5
      307 FORGPREP                         R3
      308 FASTCALL1                        TYPEOF R6 ; [+3]
      309 MOVE                             R9 R6
      310 GETIMPORT                        R8 K1 [typeof]
      312 CALL                             R8 1 1
      313 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      315 LOADK                            R10 K23 ["%*\"universeIds\" > Expected index of type number, got %* as %*"]
      316 MOVE                             R12 R2
      317 MOVE                             R13 R6
      318 FASTCALL1                        TYPEOF R6 ; [+3]
      319 MOVE                             R15 R6
      320 GETIMPORT                        R14 K1 [typeof]
      322 CALL                             R14 1 1
      323 NAMECALL                         R10 R10 K4 ["format"]
      325 CALL                             R10 4 1
      326 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      328 MOVE                             R9 R1
      329 GETIMPORT                        R8 K6 [table.insert]
      331 CALL                             R8 2 0
      332 JUMP                             ; [+24]
      333 FASTCALL1                        TYPEOF R7 ; [+3]
      334 MOVE                             R9 R7
      335 GETIMPORT                        R8 K1 [typeof]
      337 CALL                             R8 1 1
      338 JUMPIFEQKS                       R8 K9 ["number"] ; [+18]
      340 LOADK                            R10 K24 ["%*\"universeIds\" > [%*] > Expected number, got %*"]
      341 MOVE                             R12 R2
      342 MOVE                             R13 R6
      343 FASTCALL1                        TYPEOF R7 ; [+3]
      344 MOVE                             R15 R7
      345 GETIMPORT                        R14 K1 [typeof]
      347 CALL                             R14 1 1
      348 NAMECALL                         R10 R10 K4 ["format"]
      350 CALL                             R10 4 1
      351 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      353 MOVE                             R9 R1
      354 GETIMPORT                        R8 K6 [table.insert]
      356 CALL                             R8 2 0
      357 FORGLOOP                         R3 2 ; [-50]
      359 GETTABLEKS                       R3 R0 K25 ["includeFolders"]
      361 JUMPIFEQKNIL                     R3 ; [+26]
      363 GETTABLEKS                       R4 R0 K25 ["includeFolders"]
      365 FASTCALL1                        TYPEOF R4 ; [+2]
      366 GETIMPORT                        R3 K1 [typeof]
      368 CALL                             R3 1 1
      369 JUMPIFEQKS                       R3 K26 ["boolean"] ; [+18]
      371 LOADK                            R5 K27 ["%*\"includeFolders\" > Expected boolean, got %*"]
      372 MOVE                             R7 R2
      373 GETTABLEKS                       R9 R0 K25 ["includeFolders"]
      375 FASTCALL1                        TYPEOF R9 ; [+2]
      376 GETIMPORT                        R8 K1 [typeof]
      378 CALL                             R8 1 1
      379 NAMECALL                         R5 R5 K4 ["format"]
      381 CALL                             R5 3 1
      382 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      384 MOVE                             R4 R1
      385 GETIMPORT                        R3 K6 [table.insert]
      387 CALL                             R3 2 0
      388 GETTABLEKS                       R3 R0 K28 ["sources"]
      390 JUMPIFEQKNIL                     R3 ; [+74]
      392 GETTABLEKS                       R4 R0 K28 ["sources"]
      394 FASTCALL1                        TYPEOF R4 ; [+2]
      395 GETIMPORT                        R3 K1 [typeof]
      397 CALL                             R3 1 1
      398 JUMPIFEQKS                       R3 K2 ["table"] ; [+19]
      400 LOADK                            R5 K29 ["%*\"sources\" > Expected table, got %*"]
      401 MOVE                             R7 R2
      402 GETTABLEKS                       R9 R0 K28 ["sources"]
      404 FASTCALL1                        TYPEOF R9 ; [+2]
      405 GETIMPORT                        R8 K1 [typeof]
      407 CALL                             R8 1 1
      408 NAMECALL                         R5 R5 K4 ["format"]
      410 CALL                             R5 3 1
      411 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      413 MOVE                             R4 R1
      414 GETIMPORT                        R3 K6 [table.insert]
      416 CALL                             R3 2 0
      417 RETURN                           R0 1
      418 GETTABLEKS                       R3 R0 K28 ["sources"]
      420 LOADNIL                          R4
      421 LOADNIL                          R5
      422 FORGPREP                         R3
      423 FASTCALL1                        TYPEOF R6 ; [+3]
      424 MOVE                             R9 R6
      425 GETIMPORT                        R8 K1 [typeof]
      427 CALL                             R8 1 1
      428 JUMPIFEQKS                       R8 K9 ["number"] ; [+19]
      430 LOADK                            R10 K30 ["%*\"sources\" > Expected index of type number, got %* as %*"]
      431 MOVE                             R12 R2
      432 MOVE                             R13 R6
      433 FASTCALL1                        TYPEOF R6 ; [+3]
      434 MOVE                             R15 R6
      435 GETIMPORT                        R14 K1 [typeof]
      437 CALL                             R14 1 1
      438 NAMECALL                         R10 R10 K4 ["format"]
      440 CALL                             R10 4 1
      441 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      443 MOVE                             R9 R1
      444 GETIMPORT                        R8 K6 [table.insert]
      446 CALL                             R8 2 0
      447 JUMP                             ; [+15]
      448 GETTABLEKS                       R8 R0 K28 ["sources"]
      450 GETUPVAL                         R9 1
      451 GETTABLEKS                       R9 R9 K11 ["fromResponse"]
      453 MOVE                             R10 R7
      454 MOVE                             R11 R1
      455 LOADK                            R12 K31 ["%*\"sources\" > [%*] > "]
      456 MOVE                             R14 R2
      457 MOVE                             R15 R6
      458 NAMECALL                         R12 R12 K4 ["format"]
      460 CALL                             R12 3 1
      461 CALL                             R9 3 1
      462 SETTABLE                         R9 R8 R6
      463 FORGLOOP                         R3 2 ; [-41]
      465 RETURN                           R0 1

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
