MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["strict"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R2 K3 [script]
       10 GETTABLEKS                       R1 R2 K5 ["Parent"]
       12 MOVE                             R2 R0
       13 NEWTABLE                         R3 64 0
       15 GETIMPORT                        R4 K1 [require]
       17 GETIMPORT                        R6 K3 [script]
       19 GETTABLEKS                       R5 R6 K6 ["Action"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K6 ["Action"]
       24 GETIMPORT                        R4 K1 [require]
       26 GETIMPORT                        R6 K3 [script]
       28 GETTABLEKS                       R5 R6 K7 ["AssetRenderUtil"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K7 ["AssetRenderUtil"]
       33 GETIMPORT                        R4 K1 [require]
       35 GETIMPORT                        R6 K3 [script]
       37 GETTABLEKS                       R5 R6 K8 ["DoubleClickDetector"]
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K8 ["DoubleClickDetector"]
       42 GETIMPORT                        R4 K1 [require]
       44 GETIMPORT                        R6 K3 [script]
       46 GETTABLEKS                       R5 R6 K9 ["counter"]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K9 ["counter"]
       51 GETIMPORT                        R4 K1 [require]
       53 GETIMPORT                        R6 K3 [script]
       55 GETTABLEKS                       R5 R6 K10 ["CrossPluginCommunication"]
       57 CALL                             R4 1 1
       58 SETTABLEKS                       R4 R3 K10 ["CrossPluginCommunication"]
       60 GETIMPORT                        R4 K1 [require]
       62 GETIMPORT                        R6 K3 [script]
       64 GETTABLEKS                       R5 R6 K11 ["Embed"]
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K11 ["Embed"]
       69 GETIMPORT                        R4 K1 [require]
       71 GETIMPORT                        R6 K3 [script]
       73 GETTABLEKS                       R5 R6 K12 ["deepEqual"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K12 ["deepEqual"]
       78 GETIMPORT                        R4 K1 [require]
       80 GETIMPORT                        R6 K3 [script]
       82 GETTABLEKS                       R5 R6 K13 ["deepJoin"]
       84 CALL                             R4 1 1
       85 SETTABLEKS                       R4 R3 K13 ["deepJoin"]
       87 GETIMPORT                        R4 K1 [require]
       89 GETIMPORT                        R6 K3 [script]
       91 GETTABLEKS                       R5 R6 K14 ["deepCopy"]
       93 CALL                             R4 1 1
       94 SETTABLEKS                       R4 R3 K14 ["deepCopy"]
       96 GETIMPORT                        R4 K1 [require]
       98 GETIMPORT                        R6 K3 [script]
      100 GETTABLEKS                       R5 R6 K15 ["DialogAction"]
      102 CALL                             R4 1 1
      103 SETTABLEKS                       R4 R3 K15 ["DialogAction"]
      105 GETIMPORT                        R4 K1 [require]
      107 GETIMPORT                        R6 K3 [script]
      109 GETTABLEKS                       R5 R6 K16 ["getDeepFolder"]
      111 CALL                             R4 1 1
      112 SETTABLEKS                       R4 R3 K16 ["getDeepFolder"]
      114 GETIMPORT                        R4 K1 [require]
      116 GETIMPORT                        R6 K3 [script]
      118 GETTABLEKS                       R5 R6 K17 ["getRobloxLinksFromString"]
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K17 ["getRobloxLinksFromString"]
      123 GETIMPORT                        R4 K1 [require]
      125 GETIMPORT                        R6 K3 [script]
      127 GETTABLEKS                       R5 R6 K18 ["GetTextSize"]
      129 CALL                             R4 1 1
      130 SETTABLEKS                       R4 R3 K18 ["GetTextSize"]
      132 GETIMPORT                        R4 K1 [require]
      134 GETIMPORT                        R6 K3 [script]
      136 GETTABLEKS                       R5 R6 K19 ["ColorStringValidators"]
      138 CALL                             R4 1 1
      139 SETTABLEKS                       R4 R3 K19 ["ColorStringValidators"]
      141 GETTABLEKS                       R5 R1 K5 ["Parent"]
      143 LOADK                            R7 K20 ["FitFrame"]
      144 NAMECALL                         R5 R5 K21 ["FindFirstChild"]
      146 CALL                             R5 2 1
      147 JUMPIFNOT                        R5 ; [+8]
      148 GETIMPORT                        R4 K1 [require]
      150 GETTABLEKS                       R6 R1 K5 ["Parent"]
      152 GETTABLEKS                       R5 R6 K20 ["FitFrame"]
      154 CALL                             R4 1 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R4
      157 SETTABLEKS                       R4 R3 K20 ["FitFrame"]
      159 GETIMPORT                        R4 K1 [require]
      161 GETIMPORT                        R6 K3 [script]
      163 GETTABLEKS                       R5 R6 K22 ["ellipsizeMiddle"]
      165 CALL                             R4 1 1
      166 SETTABLEKS                       R4 R3 K22 ["ellipsizeMiddle"]
      168 GETIMPORT                        R4 K1 [require]
      170 GETIMPORT                        R6 K3 [script]
      172 GETTABLEKS                       R5 R6 K23 ["enumerate"]
      174 CALL                             R4 1 1
      175 SETTABLEKS                       R4 R3 K23 ["enumerate"]
      177 GETIMPORT                        R4 K1 [require]
      179 GETIMPORT                        R6 K3 [script]
      181 GETTABLEKS                       R5 R6 K24 ["formatDuration"]
      183 CALL                             R4 1 1
      184 SETTABLEKS                       R4 R3 K24 ["formatDuration"]
      186 GETIMPORT                        R4 K1 [require]
      188 GETIMPORT                        R6 K3 [script]
      190 GETTABLEKS                       R5 R6 K25 ["formatLocalDateTime"]
      192 CALL                             R4 1 1
      193 SETTABLEKS                       R4 R3 K25 ["formatLocalDateTime"]
      195 GETIMPORT                        R4 K1 [require]
      197 GETIMPORT                        R6 K3 [script]
      199 GETTABLEKS                       R5 R6 K26 ["formatVoteNumber"]
      201 CALL                             R4 1 1
      202 SETTABLEKS                       R4 R3 K26 ["formatVoteNumber"]
      204 GETIMPORT                        R4 K1 [require]
      206 GETIMPORT                        R6 K3 [script]
      208 GETTABLEKS                       R5 R6 K27 ["Flags"]
      210 CALL                             R4 1 1
      211 SETTABLEKS                       R4 R3 K27 ["Flags"]
      213 GETIMPORT                        R4 K1 [require]
      215 GETIMPORT                        R6 K3 [script]
      217 GETTABLEKS                       R5 R6 K28 ["Immutable"]
      219 CALL                             R4 1 1
      220 SETTABLEKS                       R4 R3 K28 ["Immutable"]
      222 GETIMPORT                        R4 K1 [require]
      224 GETIMPORT                        R6 K3 [script]
      226 GETTABLEKS                       R5 R6 K29 ["isInputMainPress"]
      228 CALL                             R4 1 1
      229 SETTABLEKS                       R4 R3 K29 ["isInputMainPress"]
      231 GETIMPORT                        R4 K1 [require]
      233 GETIMPORT                        R6 K3 [script]
      235 GETTABLEKS                       R5 R6 K30 ["LayoutOrderIterator"]
      237 CALL                             R4 1 1
      238 SETTABLEKS                       R4 R3 K30 ["LayoutOrderIterator"]
      240 GETIMPORT                        R4 K1 [require]
      242 GETIMPORT                        R6 K3 [script]
      244 GETTABLEKS                       R5 R6 K31 ["Math"]
      246 CALL                             R4 1 1
      247 SETTABLEKS                       R4 R3 K31 ["Math"]
      249 GETIMPORT                        R4 K1 [require]
      251 GETIMPORT                        R6 K3 [script]
      253 GETTABLEKS                       R5 R6 K32 ["openVideoFromUrl"]
      255 CALL                             R4 1 1
      256 SETTABLEKS                       R4 R3 K32 ["openVideoFromUrl"]
      258 GETIMPORT                        R4 K1 [require]
      260 GETIMPORT                        R6 K3 [script]
      262 GETTABLEKS                       R5 R6 K33 ["pollUntil"]
      264 CALL                             R4 1 1
      265 SETTABLEKS                       R4 R3 K33 ["pollUntil"]
      267 GETIMPORT                        R4 K1 [require]
      269 GETIMPORT                        R6 K3 [script]
      271 GETTABLEKS                       R5 R6 K34 ["Promise"]
      273 CALL                             R4 1 1
      274 SETTABLEKS                       R4 R3 K34 ["Promise"]
      276 GETIMPORT                        R4 K1 [require]
      278 GETIMPORT                        R6 K3 [script]
      280 GETTABLEKS                       R5 R6 K35 ["RoundingBehaviour"]
      282 CALL                             R4 1 1
      283 SETTABLEKS                       R4 R3 K35 ["RoundingBehaviour"]
      285 GETIMPORT                        R4 K1 [require]
      287 GETIMPORT                        R6 K3 [script]
      289 GETTABLEKS                       R5 R6 K36 ["Signal"]
      291 CALL                             R4 1 1
      292 SETTABLEKS                       R4 R3 K36 ["Signal"]
      294 GETIMPORT                        R4 K1 [require]
      296 GETIMPORT                        R6 K3 [script]
      298 GETTABLEKS                       R5 R6 K37 ["Symbol"]
      300 CALL                             R4 1 1
      301 SETTABLEKS                       R4 R3 K37 ["Symbol"]
      303 GETIMPORT                        R4 K1 [require]
      305 GETIMPORT                        R6 K3 [script]
      307 GETTABLEKS                       R5 R6 K38 ["ThunkWithArgsMiddleware"]
      309 CALL                             R4 1 1
      310 SETTABLEKS                       R4 R3 K38 ["ThunkWithArgsMiddleware"]
      312 SETTABLEKS                       R0 R3 K4 ["strict"]
      314 GETIMPORT                        R4 K1 [require]
      316 GETIMPORT                        R6 K3 [script]
      318 GETTABLEKS                       R5 R6 K39 ["tableCache"]
      320 CALL                             R4 1 1
      321 SETTABLEKS                       R4 R3 K39 ["tableCache"]
      323 GETIMPORT                        R4 K1 [require]
      325 GETIMPORT                        R6 K3 [script]
      327 GETTABLEKS                       R5 R6 K40 ["levenshteinDistance"]
      329 CALL                             R4 1 1
      330 SETTABLEKS                       R4 R3 K40 ["levenshteinDistance"]
      332 GETIMPORT                        R4 K1 [require]
      334 GETIMPORT                        R6 K3 [script]
      336 GETTABLEKS                       R5 R6 K41 ["isCli"]
      338 CALL                             R4 1 1
      339 SETTABLEKS                       R4 R3 K41 ["isCli"]
      341 GETIMPORT                        R4 K1 [require]
      343 GETIMPORT                        R7 K3 [script]
      345 GETTABLEKS                       R6 R7 K42 ["Markdown"]
      347 GETTABLEKS                       R5 R6 K43 ["MarkdownParser"]
      349 CALL                             R4 1 1
      350 SETTABLEKS                       R4 R3 K43 ["MarkdownParser"]
      352 GETIMPORT                        R4 K1 [require]
      354 GETIMPORT                        R6 K3 [script]
      356 GETTABLEKS                       R5 R6 K44 ["EditTree"]
      358 CALL                             R4 1 1
      359 SETTABLEKS                       R4 R3 K44 ["EditTree"]
      361 GETIMPORT                        R4 K1 [require]
      363 GETIMPORT                        R6 K3 [script]
      365 GETTABLEKS                       R5 R6 K45 ["prioritize"]
      367 CALL                             R4 1 1
      368 SETTABLEKS                       R4 R3 K45 ["prioritize"]
      370 GETIMPORT                        R4 K1 [require]
      372 GETIMPORT                        R6 K3 [script]
      374 GETTABLEKS                       R5 R6 K46 ["React"]
      376 CALL                             R4 1 1
      377 SETTABLEKS                       R4 R3 K46 ["React"]
      379 GETIMPORT                        R4 K1 [require]
      381 GETIMPORT                        R6 K3 [script]
      383 GETTABLEKS                       R5 R6 K47 ["sendResultToKibana"]
      385 CALL                             R4 1 1
      386 SETTABLEKS                       R4 R3 K47 ["sendResultToKibana"]
      388 GETIMPORT                        R4 K1 [require]
      390 GETIMPORT                        R6 K3 [script]
      392 GETTABLEKS                       R5 R6 K48 ["Spritesheet"]
      394 CALL                             R4 1 1
      395 SETTABLEKS                       R4 R3 K48 ["Spritesheet"]
      397 GETIMPORT                        R4 K1 [require]
      399 GETIMPORT                        R6 K3 [script]
      401 GETTABLEKS                       R5 R6 K49 ["StyleModifier"]
      403 CALL                             R4 1 1
      404 SETTABLEKS                       R4 R3 K49 ["StyleModifier"]
      406 GETIMPORT                        R4 K1 [require]
      408 GETIMPORT                        R6 K3 [script]
      410 GETTABLEKS                       R5 R6 K50 ["StyleValue"]
      412 CALL                             R4 1 1
      413 SETTABLEKS                       R4 R3 K50 ["StyleValue"]
      415 GETIMPORT                        R4 K1 [require]
      417 GETIMPORT                        R6 K3 [script]
      419 GETTABLEKS                       R5 R6 K51 ["createFolderDataLookup"]
      421 CALL                             R4 1 1
      422 SETTABLEKS                       R4 R3 K51 ["createFolderDataLookup"]
      424 GETIMPORT                        R4 K1 [require]
      426 GETIMPORT                        R6 K3 [script]
      428 GETTABLEKS                       R5 R6 K52 ["Typecheck"]
      430 CALL                             R4 1 1
      431 SETTABLEKS                       R4 R3 K52 ["Typecheck"]
      433 GETIMPORT                        R4 K1 [require]
      435 GETIMPORT                        R6 K3 [script]
      437 GETTABLEKS                       R5 R6 K53 ["isRoact17"]
      439 CALL                             R4 1 1
      440 SETTABLEKS                       R4 R3 K53 ["isRoact17"]
      442 GETIMPORT                        R4 K1 [require]
      444 GETIMPORT                        R6 K3 [script]
      446 GETTABLEKS                       R5 R6 K54 ["StudioUri"]
      448 CALL                             R4 1 1
      449 SETTABLEKS                       R4 R3 K54 ["StudioUri"]
      451 CALL                             R2 1 -1
      452 RETURN                           R2 -1
