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
       25 GETTABLEKS                       R3 R0 K7 ["expiration"]
       27 JUMPIFEQKNIL                     R3 ; [+27]
       29 GETTABLEKS                       R4 R0 K7 ["expiration"]
       31 FASTCALL1                        TYPEOF R4 ; [+2]
       32 GETIMPORT                        R3 K1 [typeof]
       34 CALL                             R3 1 1
       35 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       37 LOADK                            R6 K9 ["%*\"expiration\" > Expected string, got %*"]
       38 MOVE                             R8 R2
       39 GETTABLEKS                       R10 R0 K7 ["expiration"]
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
       55 GETTABLEKS                       R3 R0 K10 ["computerSubscriptionRenewal"]
       57 JUMPIFEQKNIL                     R3 ; [+27]
       59 GETTABLEKS                       R4 R0 K10 ["computerSubscriptionRenewal"]
       61 FASTCALL1                        TYPEOF R4 ; [+2]
       62 GETIMPORT                        R3 K1 [typeof]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       67 LOADK                            R6 K11 ["%*\"computerSubscriptionRenewal\" > Expected string, got %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R10 R0 K10 ["computerSubscriptionRenewal"]
       71 FASTCALL1                        TYPEOF R10 ; [+2]
       72 GETIMPORT                        R9 K1 [typeof]
       74 CALL                             R9 1 1
       75 NAMECALL                         R6 R6 K4 ["format"]
       77 CALL                             R6 3 1
       78 MOVE                             R5 R6
       79 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       81 MOVE                             R4 R1
       82 GETIMPORT                        R3 K6 [table.insert]
       84 CALL                             R3 2 0
       85 GETTABLEKS                       R3 R0 K12 ["appleSubscriptionRenewal"]
       87 JUMPIFEQKNIL                     R3 ; [+27]
       89 GETTABLEKS                       R4 R0 K12 ["appleSubscriptionRenewal"]
       91 FASTCALL1                        TYPEOF R4 ; [+2]
       92 GETIMPORT                        R3 K1 [typeof]
       94 CALL                             R3 1 1
       95 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
       97 LOADK                            R6 K13 ["%*\"appleSubscriptionRenewal\" > Expected string, got %*"]
       98 MOVE                             R8 R2
       99 GETTABLEKS                       R10 R0 K12 ["appleSubscriptionRenewal"]
      101 FASTCALL1                        TYPEOF R10 ; [+2]
      102 GETIMPORT                        R9 K1 [typeof]
      104 CALL                             R9 1 1
      105 NAMECALL                         R6 R6 K4 ["format"]
      107 CALL                             R6 3 1
      108 MOVE                             R5 R6
      109 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      111 MOVE                             R4 R1
      112 GETIMPORT                        R3 K6 [table.insert]
      114 CALL                             R3 2 0
      115 GETTABLEKS                       R3 R0 K14 ["googleSubscriptionRenewal"]
      117 JUMPIFEQKNIL                     R3 ; [+27]
      119 GETTABLEKS                       R4 R0 K14 ["googleSubscriptionRenewal"]
      121 FASTCALL1                        TYPEOF R4 ; [+2]
      122 GETIMPORT                        R3 K1 [typeof]
      124 CALL                             R3 1 1
      125 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      127 LOADK                            R6 K15 ["%*\"googleSubscriptionRenewal\" > Expected string, got %*"]
      128 MOVE                             R8 R2
      129 GETTABLEKS                       R10 R0 K14 ["googleSubscriptionRenewal"]
      131 FASTCALL1                        TYPEOF R10 ; [+2]
      132 GETIMPORT                        R9 K1 [typeof]
      134 CALL                             R9 1 1
      135 NAMECALL                         R6 R6 K4 ["format"]
      137 CALL                             R6 3 1
      138 MOVE                             R5 R6
      139 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      141 MOVE                             R4 R1
      142 GETIMPORT                        R3 K6 [table.insert]
      144 CALL                             R3 2 0
      145 GETTABLEKS                       R3 R0 K16 ["numRobuxText"]
      147 JUMPIFEQKNIL                     R3 ; [+27]
      149 GETTABLEKS                       R4 R0 K16 ["numRobuxText"]
      151 FASTCALL1                        TYPEOF R4 ; [+2]
      152 GETIMPORT                        R3 K1 [typeof]
      154 CALL                             R3 1 1
      155 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      157 LOADK                            R6 K17 ["%*\"numRobuxText\" > Expected string, got %*"]
      158 MOVE                             R8 R2
      159 GETTABLEKS                       R10 R0 K16 ["numRobuxText"]
      161 FASTCALL1                        TYPEOF R10 ; [+2]
      162 GETIMPORT                        R9 K1 [typeof]
      164 CALL                             R9 1 1
      165 NAMECALL                         R6 R6 K4 ["format"]
      167 CALL                             R6 3 1
      168 MOVE                             R5 R6
      169 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      171 MOVE                             R4 R1
      172 GETIMPORT                        R3 K6 [table.insert]
      174 CALL                             R3 2 0
      175 GETTABLEKS                       R3 R0 K18 ["membershipName"]
      177 JUMPIFEQKNIL                     R3 ; [+27]
      179 GETTABLEKS                       R4 R0 K18 ["membershipName"]
      181 FASTCALL1                        TYPEOF R4 ; [+2]
      182 GETIMPORT                        R3 K1 [typeof]
      184 CALL                             R3 1 1
      185 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      187 LOADK                            R6 K19 ["%*\"membershipName\" > Expected string, got %*"]
      188 MOVE                             R8 R2
      189 GETTABLEKS                       R10 R0 K18 ["membershipName"]
      191 FASTCALL1                        TYPEOF R10 ; [+2]
      192 GETIMPORT                        R9 K1 [typeof]
      194 CALL                             R9 1 1
      195 NAMECALL                         R6 R6 K4 ["format"]
      197 CALL                             R6 3 1
      198 MOVE                             R5 R6
      199 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      201 MOVE                             R4 R1
      202 GETIMPORT                        R3 K6 [table.insert]
      204 CALL                             R3 2 0
      205 GETTABLEKS                       R3 R0 K20 ["membershipDuration"]
      207 JUMPIFEQKNIL                     R3 ; [+27]
      209 GETTABLEKS                       R4 R0 K20 ["membershipDuration"]
      211 FASTCALL1                        TYPEOF R4 ; [+2]
      212 GETIMPORT                        R3 K1 [typeof]
      214 CALL                             R3 1 1
      215 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      217 LOADK                            R6 K21 ["%*\"membershipDuration\" > Expected string, got %*"]
      218 MOVE                             R8 R2
      219 GETTABLEKS                       R10 R0 K20 ["membershipDuration"]
      221 FASTCALL1                        TYPEOF R10 ; [+2]
      222 GETIMPORT                        R9 K1 [typeof]
      224 CALL                             R9 1 1
      225 NAMECALL                         R6 R6 K4 ["format"]
      227 CALL                             R6 3 1
      228 MOVE                             R5 R6
      229 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      231 MOVE                             R4 R1
      232 GETIMPORT                        R3 K6 [table.insert]
      234 CALL                             R3 2 0
      235 GETTABLEKS                       R3 R0 K22 ["premiumFeatureId"]
      237 JUMPIFEQKNIL                     R3 ; [+27]
      239 GETTABLEKS                       R4 R0 K22 ["premiumFeatureId"]
      241 FASTCALL1                        TYPEOF R4 ; [+2]
      242 GETIMPORT                        R3 K1 [typeof]
      244 CALL                             R3 1 1
      245 JUMPIFEQKS                       R3 K23 ["number"] ; [+19]
      247 LOADK                            R6 K24 ["%*\"premiumFeatureId\" > Expected number, got %*"]
      248 MOVE                             R8 R2
      249 GETTABLEKS                       R10 R0 K22 ["premiumFeatureId"]
      251 FASTCALL1                        TYPEOF R10 ; [+2]
      252 GETIMPORT                        R9 K1 [typeof]
      254 CALL                             R9 1 1
      255 NAMECALL                         R6 R6 K4 ["format"]
      257 CALL                             R6 3 1
      258 MOVE                             R5 R6
      259 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      261 MOVE                             R4 R1
      262 GETIMPORT                        R3 K6 [table.insert]
      264 CALL                             R3 2 0
      265 GETTABLEKS                       R3 R0 K25 ["stipendFrequency"]
      267 JUMPIFEQKNIL                     R3 ; [+27]
      269 GETTABLEKS                       R4 R0 K25 ["stipendFrequency"]
      271 FASTCALL1                        TYPEOF R4 ; [+2]
      272 GETIMPORT                        R3 K1 [typeof]
      274 CALL                             R3 1 1
      275 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      277 LOADK                            R6 K26 ["%*\"stipendFrequency\" > Expected string, got %*"]
      278 MOVE                             R8 R2
      279 GETTABLEKS                       R10 R0 K25 ["stipendFrequency"]
      281 FASTCALL1                        TYPEOF R10 ; [+2]
      282 GETIMPORT                        R9 K1 [typeof]
      284 CALL                             R9 1 1
      285 NAMECALL                         R6 R6 K4 ["format"]
      287 CALL                             R6 3 1
      288 MOVE                             R5 R6
      289 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      291 MOVE                             R4 R1
      292 GETIMPORT                        R3 K6 [table.insert]
      294 CALL                             R3 2 0
      295 GETTABLEKS                       R3 R0 K27 ["appleCancellationDirectionsUrl"]
      297 JUMPIFEQKNIL                     R3 ; [+27]
      299 GETTABLEKS                       R4 R0 K27 ["appleCancellationDirectionsUrl"]
      301 FASTCALL1                        TYPEOF R4 ; [+2]
      302 GETIMPORT                        R3 K1 [typeof]
      304 CALL                             R3 1 1
      305 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      307 LOADK                            R6 K28 ["%*\"appleCancellationDirectionsUrl\" > Expected string, got %*"]
      308 MOVE                             R8 R2
      309 GETTABLEKS                       R10 R0 K27 ["appleCancellationDirectionsUrl"]
      311 FASTCALL1                        TYPEOF R10 ; [+2]
      312 GETIMPORT                        R9 K1 [typeof]
      314 CALL                             R9 1 1
      315 NAMECALL                         R6 R6 K4 ["format"]
      317 CALL                             R6 3 1
      318 MOVE                             R5 R6
      319 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      321 MOVE                             R4 R1
      322 GETIMPORT                        R3 K6 [table.insert]
      324 CALL                             R3 2 0
      325 GETTABLEKS                       R3 R0 K29 ["googleCancellationDirectionsUrl"]
      327 JUMPIFEQKNIL                     R3 ; [+27]
      329 GETTABLEKS                       R4 R0 K29 ["googleCancellationDirectionsUrl"]
      331 FASTCALL1                        TYPEOF R4 ; [+2]
      332 GETIMPORT                        R3 K1 [typeof]
      334 CALL                             R3 1 1
      335 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      337 LOADK                            R6 K30 ["%*\"googleCancellationDirectionsUrl\" > Expected string, got %*"]
      338 MOVE                             R8 R2
      339 GETTABLEKS                       R10 R0 K29 ["googleCancellationDirectionsUrl"]
      341 FASTCALL1                        TYPEOF R10 ; [+2]
      342 GETIMPORT                        R9 K1 [typeof]
      344 CALL                             R9 1 1
      345 NAMECALL                         R6 R6 K4 ["format"]
      347 CALL                             R6 3 1
      348 MOVE                             R5 R6
      349 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      351 MOVE                             R4 R1
      352 GETIMPORT                        R3 K6 [table.insert]
      354 CALL                             R3 2 0
      355 GETTABLEKS                       R3 R0 K31 ["robuxEarnedFromSales"]
      357 JUMPIFEQKNIL                     R3 ; [+27]
      359 GETTABLEKS                       R4 R0 K31 ["robuxEarnedFromSales"]
      361 FASTCALL1                        TYPEOF R4 ; [+2]
      362 GETIMPORT                        R3 K1 [typeof]
      364 CALL                             R3 1 1
      365 JUMPIFEQKS                       R3 K23 ["number"] ; [+19]
      367 LOADK                            R6 K32 ["%*\"robuxEarnedFromSales\" > Expected number, got %*"]
      368 MOVE                             R8 R2
      369 GETTABLEKS                       R10 R0 K31 ["robuxEarnedFromSales"]
      371 FASTCALL1                        TYPEOF R10 ; [+2]
      372 GETIMPORT                        R9 K1 [typeof]
      374 CALL                             R9 1 1
      375 NAMECALL                         R6 R6 K4 ["format"]
      377 CALL                             R6 3 1
      378 MOVE                             R5 R6
      379 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      381 MOVE                             R4 R1
      382 GETIMPORT                        R3 K6 [table.insert]
      384 CALL                             R3 2 0
      385 GETTABLEKS                       R3 R0 K33 ["salesEarningsVisible"]
      387 JUMPIFEQKNIL                     R3 ; [+27]
      389 GETTABLEKS                       R4 R0 K33 ["salesEarningsVisible"]
      391 FASTCALL1                        TYPEOF R4 ; [+2]
      392 GETIMPORT                        R3 K1 [typeof]
      394 CALL                             R3 1 1
      395 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      397 LOADK                            R6 K35 ["%*\"salesEarningsVisible\" > Expected boolean, got %*"]
      398 MOVE                             R8 R2
      399 GETTABLEKS                       R10 R0 K33 ["salesEarningsVisible"]
      401 FASTCALL1                        TYPEOF R10 ; [+2]
      402 GETIMPORT                        R9 K1 [typeof]
      404 CALL                             R9 1 1
      405 NAMECALL                         R6 R6 K4 ["format"]
      407 CALL                             R6 3 1
      408 MOVE                             R5 R6
      409 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      411 MOVE                             R4 R1
      412 GETIMPORT                        R3 K6 [table.insert]
      414 CALL                             R3 2 0
      415 GETTABLEKS                       R3 R0 K36 ["robuxEarningsVisible"]
      417 JUMPIFEQKNIL                     R3 ; [+27]
      419 GETTABLEKS                       R4 R0 K36 ["robuxEarningsVisible"]
      421 FASTCALL1                        TYPEOF R4 ; [+2]
      422 GETIMPORT                        R3 K1 [typeof]
      424 CALL                             R3 1 1
      425 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      427 LOADK                            R6 K37 ["%*\"robuxEarningsVisible\" > Expected boolean, got %*"]
      428 MOVE                             R8 R2
      429 GETTABLEKS                       R10 R0 K36 ["robuxEarningsVisible"]
      431 FASTCALL1                        TYPEOF R10 ; [+2]
      432 GETIMPORT                        R9 K1 [typeof]
      434 CALL                             R9 1 1
      435 NAMECALL                         R6 R6 K4 ["format"]
      437 CALL                             R6 3 1
      438 MOVE                             R5 R6
      439 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      441 MOVE                             R4 R1
      442 GETIMPORT                        R3 K6 [table.insert]
      444 CALL                             R3 2 0
      445 GETTABLEKS                       R3 R0 K38 ["userIsSubscribedToAccountProduct"]
      447 JUMPIFEQKNIL                     R3 ; [+27]
      449 GETTABLEKS                       R4 R0 K38 ["userIsSubscribedToAccountProduct"]
      451 FASTCALL1                        TYPEOF R4 ; [+2]
      452 GETIMPORT                        R3 K1 [typeof]
      454 CALL                             R3 1 1
      455 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      457 LOADK                            R6 K39 ["%*\"userIsSubscribedToAccountProduct\" > Expected boolean, got %*"]
      458 MOVE                             R8 R2
      459 GETTABLEKS                       R10 R0 K38 ["userIsSubscribedToAccountProduct"]
      461 FASTCALL1                        TYPEOF R10 ; [+2]
      462 GETIMPORT                        R9 K1 [typeof]
      464 CALL                             R9 1 1
      465 NAMECALL                         R6 R6 K4 ["format"]
      467 CALL                             R6 3 1
      468 MOVE                             R5 R6
      469 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      471 MOVE                             R4 R1
      472 GETIMPORT                        R3 K6 [table.insert]
      474 CALL                             R3 2 0
      475 GETTABLEKS                       R3 R0 K40 ["userIsInPromotionNoCancelWindow"]
      477 JUMPIFEQKNIL                     R3 ; [+27]
      479 GETTABLEKS                       R4 R0 K40 ["userIsInPromotionNoCancelWindow"]
      481 FASTCALL1                        TYPEOF R4 ; [+2]
      482 GETIMPORT                        R3 K1 [typeof]
      484 CALL                             R3 1 1
      485 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      487 LOADK                            R6 K41 ["%*\"userIsInPromotionNoCancelWindow\" > Expected boolean, got %*"]
      488 MOVE                             R8 R2
      489 GETTABLEKS                       R10 R0 K40 ["userIsInPromotionNoCancelWindow"]
      491 FASTCALL1                        TYPEOF R10 ; [+2]
      492 GETIMPORT                        R9 K1 [typeof]
      494 CALL                             R9 1 1
      495 NAMECALL                         R6 R6 K4 ["format"]
      497 CALL                             R6 3 1
      498 MOVE                             R5 R6
      499 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      501 MOVE                             R4 R1
      502 GETIMPORT                        R3 K6 [table.insert]
      504 CALL                             R3 2 0
      505 GETTABLEKS                       R3 R0 K42 ["promotionNoCancelTerm"]
      507 JUMPIFEQKNIL                     R3 ; [+27]
      509 GETTABLEKS                       R4 R0 K42 ["promotionNoCancelTerm"]
      511 FASTCALL1                        TYPEOF R4 ; [+2]
      512 GETIMPORT                        R3 K1 [typeof]
      514 CALL                             R3 1 1
      515 JUMPIFEQKS                       R3 K23 ["number"] ; [+19]
      517 LOADK                            R6 K43 ["%*\"promotionNoCancelTerm\" > Expected number, got %*"]
      518 MOVE                             R8 R2
      519 GETTABLEKS                       R10 R0 K42 ["promotionNoCancelTerm"]
      521 FASTCALL1                        TYPEOF R10 ; [+2]
      522 GETIMPORT                        R9 K1 [typeof]
      524 CALL                             R9 1 1
      525 NAMECALL                         R6 R6 K4 ["format"]
      527 CALL                             R6 3 1
      528 MOVE                             R5 R6
      529 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      531 MOVE                             R4 R1
      532 GETIMPORT                        R3 K6 [table.insert]
      534 CALL                             R3 2 0
      535 GETTABLEKS                       R3 R0 K44 ["userRenewalIsProcessing"]
      537 JUMPIFEQKNIL                     R3 ; [+27]
      539 GETTABLEKS                       R4 R0 K44 ["userRenewalIsProcessing"]
      541 FASTCALL1                        TYPEOF R4 ; [+2]
      542 GETIMPORT                        R3 K1 [typeof]
      544 CALL                             R3 1 1
      545 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      547 LOADK                            R6 K45 ["%*\"userRenewalIsProcessing\" > Expected boolean, got %*"]
      548 MOVE                             R8 R2
      549 GETTABLEKS                       R10 R0 K44 ["userRenewalIsProcessing"]
      551 FASTCALL1                        TYPEOF R10 ; [+2]
      552 GETIMPORT                        R9 K1 [typeof]
      554 CALL                             R9 1 1
      555 NAMECALL                         R6 R6 K4 ["format"]
      557 CALL                             R6 3 1
      558 MOVE                             R5 R6
      559 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      561 MOVE                             R4 R1
      562 GETIMPORT                        R3 K6 [table.insert]
      564 CALL                             R3 2 0
      565 GETTABLEKS                       R3 R0 K46 ["userHasMultipleActiveSubscriptions"]
      567 JUMPIFEQKNIL                     R3 ; [+27]
      569 GETTABLEKS                       R4 R0 K46 ["userHasMultipleActiveSubscriptions"]
      571 FASTCALL1                        TYPEOF R4 ; [+2]
      572 GETIMPORT                        R3 K1 [typeof]
      574 CALL                             R3 1 1
      575 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      577 LOADK                            R6 K47 ["%*\"userHasMultipleActiveSubscriptions\" > Expected boolean, got %*"]
      578 MOVE                             R8 R2
      579 GETTABLEKS                       R10 R0 K46 ["userHasMultipleActiveSubscriptions"]
      581 FASTCALL1                        TYPEOF R10 ; [+2]
      582 GETIMPORT                        R9 K1 [typeof]
      584 CALL                             R9 1 1
      585 NAMECALL                         R6 R6 K4 ["format"]
      587 CALL                             R6 3 1
      588 MOVE                             R5 R6
      589 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      591 MOVE                             R4 R1
      592 GETIMPORT                        R3 K6 [table.insert]
      594 CALL                             R3 2 0
      595 GETTABLEKS                       R3 R0 K48 ["userHasComputerSubscription"]
      597 JUMPIFEQKNIL                     R3 ; [+27]
      599 GETTABLEKS                       R4 R0 K48 ["userHasComputerSubscription"]
      601 FASTCALL1                        TYPEOF R4 ; [+2]
      602 GETIMPORT                        R3 K1 [typeof]
      604 CALL                             R3 1 1
      605 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      607 LOADK                            R6 K49 ["%*\"userHasComputerSubscription\" > Expected boolean, got %*"]
      608 MOVE                             R8 R2
      609 GETTABLEKS                       R10 R0 K48 ["userHasComputerSubscription"]
      611 FASTCALL1                        TYPEOF R10 ; [+2]
      612 GETIMPORT                        R9 K1 [typeof]
      614 CALL                             R9 1 1
      615 NAMECALL                         R6 R6 K4 ["format"]
      617 CALL                             R6 3 1
      618 MOVE                             R5 R6
      619 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      621 MOVE                             R4 R1
      622 GETIMPORT                        R3 K6 [table.insert]
      624 CALL                             R3 2 0
      625 GETTABLEKS                       R3 R0 K50 ["userHasAppleAppStoreSubscription"]
      627 JUMPIFEQKNIL                     R3 ; [+27]
      629 GETTABLEKS                       R4 R0 K50 ["userHasAppleAppStoreSubscription"]
      631 FASTCALL1                        TYPEOF R4 ; [+2]
      632 GETIMPORT                        R3 K1 [typeof]
      634 CALL                             R3 1 1
      635 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      637 LOADK                            R6 K51 ["%*\"userHasAppleAppStoreSubscription\" > Expected boolean, got %*"]
      638 MOVE                             R8 R2
      639 GETTABLEKS                       R10 R0 K50 ["userHasAppleAppStoreSubscription"]
      641 FASTCALL1                        TYPEOF R10 ; [+2]
      642 GETIMPORT                        R9 K1 [typeof]
      644 CALL                             R9 1 1
      645 NAMECALL                         R6 R6 K4 ["format"]
      647 CALL                             R6 3 1
      648 MOVE                             R5 R6
      649 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      651 MOVE                             R4 R1
      652 GETIMPORT                        R3 K6 [table.insert]
      654 CALL                             R3 2 0
      655 GETTABLEKS                       R3 R0 K52 ["userHasGooglePlayStoreSubscription"]
      657 JUMPIFEQKNIL                     R3 ; [+27]
      659 GETTABLEKS                       R4 R0 K52 ["userHasGooglePlayStoreSubscription"]
      661 FASTCALL1                        TYPEOF R4 ; [+2]
      662 GETIMPORT                        R3 K1 [typeof]
      664 CALL                             R3 1 1
      665 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+19]
      667 LOADK                            R6 K53 ["%*\"userHasGooglePlayStoreSubscription\" > Expected boolean, got %*"]
      668 MOVE                             R8 R2
      669 GETTABLEKS                       R10 R0 K52 ["userHasGooglePlayStoreSubscription"]
      671 FASTCALL1                        TYPEOF R10 ; [+2]
      672 GETIMPORT                        R9 K1 [typeof]
      674 CALL                             R9 1 1
      675 NAMECALL                         R6 R6 K4 ["format"]
      677 CALL                             R6 3 1
      678 MOVE                             R5 R6
      679 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      681 MOVE                             R4 R1
      682 GETIMPORT                        R3 K6 [table.insert]
      684 CALL                             R3 2 0
      685 GETTABLEKS                       R3 R0 K54 ["robloxSupportUrl"]
      687 JUMPIFEQKNIL                     R3 ; [+27]
      689 GETTABLEKS                       R4 R0 K54 ["robloxSupportUrl"]
      691 FASTCALL1                        TYPEOF R4 ; [+2]
      692 GETIMPORT                        R3 K1 [typeof]
      694 CALL                             R3 1 1
      695 JUMPIFEQKS                       R3 K8 ["string"] ; [+19]
      697 LOADK                            R6 K55 ["%*\"robloxSupportUrl\" > Expected string, got %*"]
      698 MOVE                             R8 R2
      699 GETTABLEKS                       R10 R0 K54 ["robloxSupportUrl"]
      701 FASTCALL1                        TYPEOF R10 ; [+2]
      702 GETIMPORT                        R9 K1 [typeof]
      704 CALL                             R9 1 1
      705 NAMECALL                         R6 R6 K4 ["format"]
      707 CALL                             R6 3 1
      708 MOVE                             R5 R6
      709 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      711 MOVE                             R4 R1
      712 GETIMPORT                        R3 K6 [table.insert]
      714 CALL                             R3 2 0
      715 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiPremiumFeaturesApiv1"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_1]
       16 GETIMPORT                        R5 K12 [table.freeze]
       18 DUPTABLE                         R6 K15 [{"fromResponse", "toRequest"}]
       19 SETTABLEKS                       R3 R6 K13 ["fromResponse"]
       21 SETTABLEKS                       R4 R6 K14 ["toRequest"]
       23 CALL                             R5 1 1
       24 RETURN                           R5 1
