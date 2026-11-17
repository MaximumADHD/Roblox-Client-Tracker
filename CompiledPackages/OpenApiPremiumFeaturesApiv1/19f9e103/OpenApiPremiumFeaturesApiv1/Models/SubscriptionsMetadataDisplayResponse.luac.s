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
       24 GETTABLEKS                       R3 R0 K7 ["expiration"]
       26 JUMPIFEQKNIL                     R3 ; [+26]
       28 GETTABLEKS                       R4 R0 K7 ["expiration"]
       30 FASTCALL1                        TYPEOF R4 ; [+2]
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       36 LOADK                            R5 K9 ["%*\"expiration\" > Expected string, got %*"]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R9 R0 K7 ["expiration"]
       40 FASTCALL1                        TYPEOF R9 ; [+2]
       41 GETIMPORT                        R8 K1 [typeof]
       43 CALL                             R8 1 1
       44 NAMECALL                         R5 R5 K4 ["format"]
       46 CALL                             R5 3 1
       47 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K6 [table.insert]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R0 K10 ["computerSubscriptionRenewal"]
       55 JUMPIFEQKNIL                     R3 ; [+26]
       57 GETTABLEKS                       R4 R0 K10 ["computerSubscriptionRenewal"]
       59 FASTCALL1                        TYPEOF R4 ; [+2]
       60 GETIMPORT                        R3 K1 [typeof]
       62 CALL                             R3 1 1
       63 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       65 LOADK                            R5 K11 ["%*\"computerSubscriptionRenewal\" > Expected string, got %*"]
       66 MOVE                             R7 R2
       67 GETTABLEKS                       R9 R0 K10 ["computerSubscriptionRenewal"]
       69 FASTCALL1                        TYPEOF R9 ; [+2]
       70 GETIMPORT                        R8 K1 [typeof]
       72 CALL                             R8 1 1
       73 NAMECALL                         R5 R5 K4 ["format"]
       75 CALL                             R5 3 1
       76 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       78 MOVE                             R4 R1
       79 GETIMPORT                        R3 K6 [table.insert]
       81 CALL                             R3 2 0
       82 GETTABLEKS                       R3 R0 K12 ["appleSubscriptionRenewal"]
       84 JUMPIFEQKNIL                     R3 ; [+26]
       86 GETTABLEKS                       R4 R0 K12 ["appleSubscriptionRenewal"]
       88 FASTCALL1                        TYPEOF R4 ; [+2]
       89 GETIMPORT                        R3 K1 [typeof]
       91 CALL                             R3 1 1
       92 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
       94 LOADK                            R5 K13 ["%*\"appleSubscriptionRenewal\" > Expected string, got %*"]
       95 MOVE                             R7 R2
       96 GETTABLEKS                       R9 R0 K12 ["appleSubscriptionRenewal"]
       98 FASTCALL1                        TYPEOF R9 ; [+2]
       99 GETIMPORT                        R8 K1 [typeof]
      101 CALL                             R8 1 1
      102 NAMECALL                         R5 R5 K4 ["format"]
      104 CALL                             R5 3 1
      105 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      107 MOVE                             R4 R1
      108 GETIMPORT                        R3 K6 [table.insert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K14 ["googleSubscriptionRenewal"]
      113 JUMPIFEQKNIL                     R3 ; [+26]
      115 GETTABLEKS                       R4 R0 K14 ["googleSubscriptionRenewal"]
      117 FASTCALL1                        TYPEOF R4 ; [+2]
      118 GETIMPORT                        R3 K1 [typeof]
      120 CALL                             R3 1 1
      121 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      123 LOADK                            R5 K15 ["%*\"googleSubscriptionRenewal\" > Expected string, got %*"]
      124 MOVE                             R7 R2
      125 GETTABLEKS                       R9 R0 K14 ["googleSubscriptionRenewal"]
      127 FASTCALL1                        TYPEOF R9 ; [+2]
      128 GETIMPORT                        R8 K1 [typeof]
      130 CALL                             R8 1 1
      131 NAMECALL                         R5 R5 K4 ["format"]
      133 CALL                             R5 3 1
      134 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      136 MOVE                             R4 R1
      137 GETIMPORT                        R3 K6 [table.insert]
      139 CALL                             R3 2 0
      140 GETTABLEKS                       R3 R0 K16 ["numRobuxText"]
      142 JUMPIFEQKNIL                     R3 ; [+26]
      144 GETTABLEKS                       R4 R0 K16 ["numRobuxText"]
      146 FASTCALL1                        TYPEOF R4 ; [+2]
      147 GETIMPORT                        R3 K1 [typeof]
      149 CALL                             R3 1 1
      150 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      152 LOADK                            R5 K17 ["%*\"numRobuxText\" > Expected string, got %*"]
      153 MOVE                             R7 R2
      154 GETTABLEKS                       R9 R0 K16 ["numRobuxText"]
      156 FASTCALL1                        TYPEOF R9 ; [+2]
      157 GETIMPORT                        R8 K1 [typeof]
      159 CALL                             R8 1 1
      160 NAMECALL                         R5 R5 K4 ["format"]
      162 CALL                             R5 3 1
      163 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      165 MOVE                             R4 R1
      166 GETIMPORT                        R3 K6 [table.insert]
      168 CALL                             R3 2 0
      169 GETTABLEKS                       R3 R0 K18 ["membershipName"]
      171 JUMPIFEQKNIL                     R3 ; [+26]
      173 GETTABLEKS                       R4 R0 K18 ["membershipName"]
      175 FASTCALL1                        TYPEOF R4 ; [+2]
      176 GETIMPORT                        R3 K1 [typeof]
      178 CALL                             R3 1 1
      179 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      181 LOADK                            R5 K19 ["%*\"membershipName\" > Expected string, got %*"]
      182 MOVE                             R7 R2
      183 GETTABLEKS                       R9 R0 K18 ["membershipName"]
      185 FASTCALL1                        TYPEOF R9 ; [+2]
      186 GETIMPORT                        R8 K1 [typeof]
      188 CALL                             R8 1 1
      189 NAMECALL                         R5 R5 K4 ["format"]
      191 CALL                             R5 3 1
      192 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      194 MOVE                             R4 R1
      195 GETIMPORT                        R3 K6 [table.insert]
      197 CALL                             R3 2 0
      198 GETTABLEKS                       R3 R0 K20 ["membershipDuration"]
      200 JUMPIFEQKNIL                     R3 ; [+26]
      202 GETTABLEKS                       R4 R0 K20 ["membershipDuration"]
      204 FASTCALL1                        TYPEOF R4 ; [+2]
      205 GETIMPORT                        R3 K1 [typeof]
      207 CALL                             R3 1 1
      208 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      210 LOADK                            R5 K21 ["%*\"membershipDuration\" > Expected string, got %*"]
      211 MOVE                             R7 R2
      212 GETTABLEKS                       R9 R0 K20 ["membershipDuration"]
      214 FASTCALL1                        TYPEOF R9 ; [+2]
      215 GETIMPORT                        R8 K1 [typeof]
      217 CALL                             R8 1 1
      218 NAMECALL                         R5 R5 K4 ["format"]
      220 CALL                             R5 3 1
      221 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      223 MOVE                             R4 R1
      224 GETIMPORT                        R3 K6 [table.insert]
      226 CALL                             R3 2 0
      227 GETTABLEKS                       R3 R0 K22 ["premiumFeatureId"]
      229 JUMPIFEQKNIL                     R3 ; [+26]
      231 GETTABLEKS                       R4 R0 K22 ["premiumFeatureId"]
      233 FASTCALL1                        TYPEOF R4 ; [+2]
      234 GETIMPORT                        R3 K1 [typeof]
      236 CALL                             R3 1 1
      237 JUMPIFEQKS                       R3 K23 ["number"] ; [+18]
      239 LOADK                            R5 K24 ["%*\"premiumFeatureId\" > Expected number, got %*"]
      240 MOVE                             R7 R2
      241 GETTABLEKS                       R9 R0 K22 ["premiumFeatureId"]
      243 FASTCALL1                        TYPEOF R9 ; [+2]
      244 GETIMPORT                        R8 K1 [typeof]
      246 CALL                             R8 1 1
      247 NAMECALL                         R5 R5 K4 ["format"]
      249 CALL                             R5 3 1
      250 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      252 MOVE                             R4 R1
      253 GETIMPORT                        R3 K6 [table.insert]
      255 CALL                             R3 2 0
      256 GETTABLEKS                       R3 R0 K25 ["stipendFrequency"]
      258 JUMPIFEQKNIL                     R3 ; [+26]
      260 GETTABLEKS                       R4 R0 K25 ["stipendFrequency"]
      262 FASTCALL1                        TYPEOF R4 ; [+2]
      263 GETIMPORT                        R3 K1 [typeof]
      265 CALL                             R3 1 1
      266 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      268 LOADK                            R5 K26 ["%*\"stipendFrequency\" > Expected string, got %*"]
      269 MOVE                             R7 R2
      270 GETTABLEKS                       R9 R0 K25 ["stipendFrequency"]
      272 FASTCALL1                        TYPEOF R9 ; [+2]
      273 GETIMPORT                        R8 K1 [typeof]
      275 CALL                             R8 1 1
      276 NAMECALL                         R5 R5 K4 ["format"]
      278 CALL                             R5 3 1
      279 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      281 MOVE                             R4 R1
      282 GETIMPORT                        R3 K6 [table.insert]
      284 CALL                             R3 2 0
      285 GETTABLEKS                       R3 R0 K27 ["appleCancellationDirectionsUrl"]
      287 JUMPIFEQKNIL                     R3 ; [+26]
      289 GETTABLEKS                       R4 R0 K27 ["appleCancellationDirectionsUrl"]
      291 FASTCALL1                        TYPEOF R4 ; [+2]
      292 GETIMPORT                        R3 K1 [typeof]
      294 CALL                             R3 1 1
      295 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      297 LOADK                            R5 K28 ["%*\"appleCancellationDirectionsUrl\" > Expected string, got %*"]
      298 MOVE                             R7 R2
      299 GETTABLEKS                       R9 R0 K27 ["appleCancellationDirectionsUrl"]
      301 FASTCALL1                        TYPEOF R9 ; [+2]
      302 GETIMPORT                        R8 K1 [typeof]
      304 CALL                             R8 1 1
      305 NAMECALL                         R5 R5 K4 ["format"]
      307 CALL                             R5 3 1
      308 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      310 MOVE                             R4 R1
      311 GETIMPORT                        R3 K6 [table.insert]
      313 CALL                             R3 2 0
      314 GETTABLEKS                       R3 R0 K29 ["googleCancellationDirectionsUrl"]
      316 JUMPIFEQKNIL                     R3 ; [+26]
      318 GETTABLEKS                       R4 R0 K29 ["googleCancellationDirectionsUrl"]
      320 FASTCALL1                        TYPEOF R4 ; [+2]
      321 GETIMPORT                        R3 K1 [typeof]
      323 CALL                             R3 1 1
      324 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      326 LOADK                            R5 K30 ["%*\"googleCancellationDirectionsUrl\" > Expected string, got %*"]
      327 MOVE                             R7 R2
      328 GETTABLEKS                       R9 R0 K29 ["googleCancellationDirectionsUrl"]
      330 FASTCALL1                        TYPEOF R9 ; [+2]
      331 GETIMPORT                        R8 K1 [typeof]
      333 CALL                             R8 1 1
      334 NAMECALL                         R5 R5 K4 ["format"]
      336 CALL                             R5 3 1
      337 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      339 MOVE                             R4 R1
      340 GETIMPORT                        R3 K6 [table.insert]
      342 CALL                             R3 2 0
      343 GETTABLEKS                       R3 R0 K31 ["robuxEarnedFromSales"]
      345 JUMPIFEQKNIL                     R3 ; [+26]
      347 GETTABLEKS                       R4 R0 K31 ["robuxEarnedFromSales"]
      349 FASTCALL1                        TYPEOF R4 ; [+2]
      350 GETIMPORT                        R3 K1 [typeof]
      352 CALL                             R3 1 1
      353 JUMPIFEQKS                       R3 K23 ["number"] ; [+18]
      355 LOADK                            R5 K32 ["%*\"robuxEarnedFromSales\" > Expected number, got %*"]
      356 MOVE                             R7 R2
      357 GETTABLEKS                       R9 R0 K31 ["robuxEarnedFromSales"]
      359 FASTCALL1                        TYPEOF R9 ; [+2]
      360 GETIMPORT                        R8 K1 [typeof]
      362 CALL                             R8 1 1
      363 NAMECALL                         R5 R5 K4 ["format"]
      365 CALL                             R5 3 1
      366 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      368 MOVE                             R4 R1
      369 GETIMPORT                        R3 K6 [table.insert]
      371 CALL                             R3 2 0
      372 GETTABLEKS                       R3 R0 K33 ["salesEarningsVisible"]
      374 JUMPIFEQKNIL                     R3 ; [+26]
      376 GETTABLEKS                       R4 R0 K33 ["salesEarningsVisible"]
      378 FASTCALL1                        TYPEOF R4 ; [+2]
      379 GETIMPORT                        R3 K1 [typeof]
      381 CALL                             R3 1 1
      382 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      384 LOADK                            R5 K35 ["%*\"salesEarningsVisible\" > Expected boolean, got %*"]
      385 MOVE                             R7 R2
      386 GETTABLEKS                       R9 R0 K33 ["salesEarningsVisible"]
      388 FASTCALL1                        TYPEOF R9 ; [+2]
      389 GETIMPORT                        R8 K1 [typeof]
      391 CALL                             R8 1 1
      392 NAMECALL                         R5 R5 K4 ["format"]
      394 CALL                             R5 3 1
      395 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      397 MOVE                             R4 R1
      398 GETIMPORT                        R3 K6 [table.insert]
      400 CALL                             R3 2 0
      401 GETTABLEKS                       R3 R0 K36 ["robuxEarningsVisible"]
      403 JUMPIFEQKNIL                     R3 ; [+26]
      405 GETTABLEKS                       R4 R0 K36 ["robuxEarningsVisible"]
      407 FASTCALL1                        TYPEOF R4 ; [+2]
      408 GETIMPORT                        R3 K1 [typeof]
      410 CALL                             R3 1 1
      411 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      413 LOADK                            R5 K37 ["%*\"robuxEarningsVisible\" > Expected boolean, got %*"]
      414 MOVE                             R7 R2
      415 GETTABLEKS                       R9 R0 K36 ["robuxEarningsVisible"]
      417 FASTCALL1                        TYPEOF R9 ; [+2]
      418 GETIMPORT                        R8 K1 [typeof]
      420 CALL                             R8 1 1
      421 NAMECALL                         R5 R5 K4 ["format"]
      423 CALL                             R5 3 1
      424 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      426 MOVE                             R4 R1
      427 GETIMPORT                        R3 K6 [table.insert]
      429 CALL                             R3 2 0
      430 GETTABLEKS                       R3 R0 K38 ["userIsSubscribedToAccountProduct"]
      432 JUMPIFEQKNIL                     R3 ; [+26]
      434 GETTABLEKS                       R4 R0 K38 ["userIsSubscribedToAccountProduct"]
      436 FASTCALL1                        TYPEOF R4 ; [+2]
      437 GETIMPORT                        R3 K1 [typeof]
      439 CALL                             R3 1 1
      440 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      442 LOADK                            R5 K39 ["%*\"userIsSubscribedToAccountProduct\" > Expected boolean, got %*"]
      443 MOVE                             R7 R2
      444 GETTABLEKS                       R9 R0 K38 ["userIsSubscribedToAccountProduct"]
      446 FASTCALL1                        TYPEOF R9 ; [+2]
      447 GETIMPORT                        R8 K1 [typeof]
      449 CALL                             R8 1 1
      450 NAMECALL                         R5 R5 K4 ["format"]
      452 CALL                             R5 3 1
      453 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      455 MOVE                             R4 R1
      456 GETIMPORT                        R3 K6 [table.insert]
      458 CALL                             R3 2 0
      459 GETTABLEKS                       R3 R0 K40 ["userIsInPromotionNoCancelWindow"]
      461 JUMPIFEQKNIL                     R3 ; [+26]
      463 GETTABLEKS                       R4 R0 K40 ["userIsInPromotionNoCancelWindow"]
      465 FASTCALL1                        TYPEOF R4 ; [+2]
      466 GETIMPORT                        R3 K1 [typeof]
      468 CALL                             R3 1 1
      469 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      471 LOADK                            R5 K41 ["%*\"userIsInPromotionNoCancelWindow\" > Expected boolean, got %*"]
      472 MOVE                             R7 R2
      473 GETTABLEKS                       R9 R0 K40 ["userIsInPromotionNoCancelWindow"]
      475 FASTCALL1                        TYPEOF R9 ; [+2]
      476 GETIMPORT                        R8 K1 [typeof]
      478 CALL                             R8 1 1
      479 NAMECALL                         R5 R5 K4 ["format"]
      481 CALL                             R5 3 1
      482 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      484 MOVE                             R4 R1
      485 GETIMPORT                        R3 K6 [table.insert]
      487 CALL                             R3 2 0
      488 GETTABLEKS                       R3 R0 K42 ["promotionNoCancelTerm"]
      490 JUMPIFEQKNIL                     R3 ; [+26]
      492 GETTABLEKS                       R4 R0 K42 ["promotionNoCancelTerm"]
      494 FASTCALL1                        TYPEOF R4 ; [+2]
      495 GETIMPORT                        R3 K1 [typeof]
      497 CALL                             R3 1 1
      498 JUMPIFEQKS                       R3 K23 ["number"] ; [+18]
      500 LOADK                            R5 K43 ["%*\"promotionNoCancelTerm\" > Expected number, got %*"]
      501 MOVE                             R7 R2
      502 GETTABLEKS                       R9 R0 K42 ["promotionNoCancelTerm"]
      504 FASTCALL1                        TYPEOF R9 ; [+2]
      505 GETIMPORT                        R8 K1 [typeof]
      507 CALL                             R8 1 1
      508 NAMECALL                         R5 R5 K4 ["format"]
      510 CALL                             R5 3 1
      511 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      513 MOVE                             R4 R1
      514 GETIMPORT                        R3 K6 [table.insert]
      516 CALL                             R3 2 0
      517 GETTABLEKS                       R3 R0 K44 ["userRenewalIsProcessing"]
      519 JUMPIFEQKNIL                     R3 ; [+26]
      521 GETTABLEKS                       R4 R0 K44 ["userRenewalIsProcessing"]
      523 FASTCALL1                        TYPEOF R4 ; [+2]
      524 GETIMPORT                        R3 K1 [typeof]
      526 CALL                             R3 1 1
      527 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      529 LOADK                            R5 K45 ["%*\"userRenewalIsProcessing\" > Expected boolean, got %*"]
      530 MOVE                             R7 R2
      531 GETTABLEKS                       R9 R0 K44 ["userRenewalIsProcessing"]
      533 FASTCALL1                        TYPEOF R9 ; [+2]
      534 GETIMPORT                        R8 K1 [typeof]
      536 CALL                             R8 1 1
      537 NAMECALL                         R5 R5 K4 ["format"]
      539 CALL                             R5 3 1
      540 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      542 MOVE                             R4 R1
      543 GETIMPORT                        R3 K6 [table.insert]
      545 CALL                             R3 2 0
      546 GETTABLEKS                       R3 R0 K46 ["userHasMultipleActiveSubscriptions"]
      548 JUMPIFEQKNIL                     R3 ; [+26]
      550 GETTABLEKS                       R4 R0 K46 ["userHasMultipleActiveSubscriptions"]
      552 FASTCALL1                        TYPEOF R4 ; [+2]
      553 GETIMPORT                        R3 K1 [typeof]
      555 CALL                             R3 1 1
      556 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      558 LOADK                            R5 K47 ["%*\"userHasMultipleActiveSubscriptions\" > Expected boolean, got %*"]
      559 MOVE                             R7 R2
      560 GETTABLEKS                       R9 R0 K46 ["userHasMultipleActiveSubscriptions"]
      562 FASTCALL1                        TYPEOF R9 ; [+2]
      563 GETIMPORT                        R8 K1 [typeof]
      565 CALL                             R8 1 1
      566 NAMECALL                         R5 R5 K4 ["format"]
      568 CALL                             R5 3 1
      569 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      571 MOVE                             R4 R1
      572 GETIMPORT                        R3 K6 [table.insert]
      574 CALL                             R3 2 0
      575 GETTABLEKS                       R3 R0 K48 ["userHasComputerSubscription"]
      577 JUMPIFEQKNIL                     R3 ; [+26]
      579 GETTABLEKS                       R4 R0 K48 ["userHasComputerSubscription"]
      581 FASTCALL1                        TYPEOF R4 ; [+2]
      582 GETIMPORT                        R3 K1 [typeof]
      584 CALL                             R3 1 1
      585 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      587 LOADK                            R5 K49 ["%*\"userHasComputerSubscription\" > Expected boolean, got %*"]
      588 MOVE                             R7 R2
      589 GETTABLEKS                       R9 R0 K48 ["userHasComputerSubscription"]
      591 FASTCALL1                        TYPEOF R9 ; [+2]
      592 GETIMPORT                        R8 K1 [typeof]
      594 CALL                             R8 1 1
      595 NAMECALL                         R5 R5 K4 ["format"]
      597 CALL                             R5 3 1
      598 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      600 MOVE                             R4 R1
      601 GETIMPORT                        R3 K6 [table.insert]
      603 CALL                             R3 2 0
      604 GETTABLEKS                       R3 R0 K50 ["userHasAppleAppStoreSubscription"]
      606 JUMPIFEQKNIL                     R3 ; [+26]
      608 GETTABLEKS                       R4 R0 K50 ["userHasAppleAppStoreSubscription"]
      610 FASTCALL1                        TYPEOF R4 ; [+2]
      611 GETIMPORT                        R3 K1 [typeof]
      613 CALL                             R3 1 1
      614 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      616 LOADK                            R5 K51 ["%*\"userHasAppleAppStoreSubscription\" > Expected boolean, got %*"]
      617 MOVE                             R7 R2
      618 GETTABLEKS                       R9 R0 K50 ["userHasAppleAppStoreSubscription"]
      620 FASTCALL1                        TYPEOF R9 ; [+2]
      621 GETIMPORT                        R8 K1 [typeof]
      623 CALL                             R8 1 1
      624 NAMECALL                         R5 R5 K4 ["format"]
      626 CALL                             R5 3 1
      627 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      629 MOVE                             R4 R1
      630 GETIMPORT                        R3 K6 [table.insert]
      632 CALL                             R3 2 0
      633 GETTABLEKS                       R3 R0 K52 ["userHasGooglePlayStoreSubscription"]
      635 JUMPIFEQKNIL                     R3 ; [+26]
      637 GETTABLEKS                       R4 R0 K52 ["userHasGooglePlayStoreSubscription"]
      639 FASTCALL1                        TYPEOF R4 ; [+2]
      640 GETIMPORT                        R3 K1 [typeof]
      642 CALL                             R3 1 1
      643 JUMPIFEQKS                       R3 K34 ["boolean"] ; [+18]
      645 LOADK                            R5 K53 ["%*\"userHasGooglePlayStoreSubscription\" > Expected boolean, got %*"]
      646 MOVE                             R7 R2
      647 GETTABLEKS                       R9 R0 K52 ["userHasGooglePlayStoreSubscription"]
      649 FASTCALL1                        TYPEOF R9 ; [+2]
      650 GETIMPORT                        R8 K1 [typeof]
      652 CALL                             R8 1 1
      653 NAMECALL                         R5 R5 K4 ["format"]
      655 CALL                             R5 3 1
      656 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      658 MOVE                             R4 R1
      659 GETIMPORT                        R3 K6 [table.insert]
      661 CALL                             R3 2 0
      662 GETTABLEKS                       R3 R0 K54 ["robloxSupportUrl"]
      664 JUMPIFEQKNIL                     R3 ; [+26]
      666 GETTABLEKS                       R4 R0 K54 ["robloxSupportUrl"]
      668 FASTCALL1                        TYPEOF R4 ; [+2]
      669 GETIMPORT                        R3 K1 [typeof]
      671 CALL                             R3 1 1
      672 JUMPIFEQKS                       R3 K8 ["string"] ; [+18]
      674 LOADK                            R5 K55 ["%*\"robloxSupportUrl\" > Expected string, got %*"]
      675 MOVE                             R7 R2
      676 GETTABLEKS                       R9 R0 K54 ["robloxSupportUrl"]
      678 FASTCALL1                        TYPEOF R9 ; [+2]
      679 GETIMPORT                        R8 K1 [typeof]
      681 CALL                             R8 1 1
      682 NAMECALL                         R5 R5 K4 ["format"]
      684 CALL                             R5 3 1
      685 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
      687 MOVE                             R4 R1
      688 GETIMPORT                        R3 K6 [table.insert]
      690 CALL                             R3 2 0
      691 RETURN                           R0 1

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
