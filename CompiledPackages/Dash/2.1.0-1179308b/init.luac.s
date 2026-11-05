MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Types"]
        7 CALL                             R0 1 1
        8 NEWTABLE                         R1 128 0
       10 GETIMPORT                        R2 K1 [require]
       12 GETIMPORT                        R3 K3 [script]
       14 GETTABLEKS                       R3 R3 K5 ["all"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K5 ["all"]
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K6 ["append"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K6 ["append"]
       28 GETIMPORT                        R2 K1 [require]
       30 GETIMPORT                        R3 K3 [script]
       32 GETTABLEKS                       R3 R3 K7 ["assertEqual"]
       34 CALL                             R2 1 1
       35 SETTABLEKS                       R2 R1 K7 ["assertEqual"]
       37 GETIMPORT                        R2 K1 [require]
       39 GETIMPORT                        R3 K3 [script]
       41 GETTABLEKS                       R3 R3 K8 ["assign"]
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R1 K8 ["assign"]
       46 GETIMPORT                        R2 K1 [require]
       48 GETIMPORT                        R3 K3 [script]
       50 GETTABLEKS                       R3 R3 K9 ["chain"]
       52 CALL                             R2 1 1
       53 SETTABLEKS                       R2 R1 K9 ["chain"]
       55 GETIMPORT                        R2 K1 [require]
       57 GETIMPORT                        R3 K3 [script]
       59 GETTABLEKS                       R3 R3 K10 ["class"]
       61 CALL                             R2 1 1
       62 SETTABLEKS                       R2 R1 K10 ["class"]
       64 GETIMPORT                        R2 K1 [require]
       66 GETIMPORT                        R3 K3 [script]
       68 GETTABLEKS                       R3 R3 K11 ["collect"]
       70 CALL                             R2 1 1
       71 SETTABLEKS                       R2 R1 K11 ["collect"]
       73 GETIMPORT                        R2 K1 [require]
       75 GETIMPORT                        R3 K3 [script]
       77 GETTABLEKS                       R3 R3 K12 ["collectArray"]
       79 CALL                             R2 1 1
       80 SETTABLEKS                       R2 R1 K12 ["collectArray"]
       82 GETIMPORT                        R2 K1 [require]
       84 GETIMPORT                        R3 K3 [script]
       86 GETTABLEKS                       R3 R3 K13 ["collectSet"]
       88 CALL                             R2 1 1
       89 SETTABLEKS                       R2 R1 K13 ["collectSet"]
       91 GETIMPORT                        R2 K1 [require]
       93 GETIMPORT                        R3 K3 [script]
       95 GETTABLEKS                       R3 R3 K14 ["compose"]
       97 CALL                             R2 1 1
       98 SETTABLEKS                       R2 R1 K14 ["compose"]
      100 GETIMPORT                        R2 K1 [require]
      102 GETIMPORT                        R3 K3 [script]
      104 GETTABLEKS                       R3 R3 K15 ["copy"]
      106 CALL                             R2 1 1
      107 SETTABLEKS                       R2 R1 K15 ["copy"]
      109 GETIMPORT                        R2 K1 [require]
      111 GETIMPORT                        R3 K3 [script]
      113 GETTABLEKS                       R3 R3 K16 ["count"]
      115 CALL                             R2 1 1
      116 SETTABLEKS                       R2 R1 K16 ["count"]
      118 GETIMPORT                        R2 K1 [require]
      120 GETIMPORT                        R3 K3 [script]
      122 GETTABLEKS                       R3 R3 K17 ["cycles"]
      124 CALL                             R2 1 1
      125 SETTABLEKS                       R2 R1 K17 ["cycles"]
      127 GETIMPORT                        R2 K1 [require]
      129 GETIMPORT                        R3 K3 [script]
      131 GETTABLEKS                       R3 R3 K18 ["endsWith"]
      133 CALL                             R2 1 1
      134 SETTABLEKS                       R2 R1 K18 ["endsWith"]
      136 GETIMPORT                        R2 K1 [require]
      138 GETIMPORT                        R3 K3 [script]
      140 GETTABLEKS                       R3 R3 K19 ["Error"]
      142 CALL                             R2 1 1
      143 SETTABLEKS                       R2 R1 K19 ["Error"]
      145 GETIMPORT                        R2 K1 [require]
      147 GETIMPORT                        R3 K3 [script]
      149 GETTABLEKS                       R3 R3 K20 ["filter"]
      151 CALL                             R2 1 1
      152 SETTABLEKS                       R2 R1 K20 ["filter"]
      154 GETIMPORT                        R2 K1 [require]
      156 GETIMPORT                        R3 K3 [script]
      158 GETTABLEKS                       R3 R3 K21 ["find"]
      160 CALL                             R2 1 1
      161 SETTABLEKS                       R2 R1 K21 ["find"]
      163 GETIMPORT                        R2 K1 [require]
      165 GETIMPORT                        R3 K3 [script]
      167 GETTABLEKS                       R3 R3 K22 ["findIndex"]
      169 CALL                             R2 1 1
      170 SETTABLEKS                       R2 R1 K22 ["findIndex"]
      172 GETIMPORT                        R2 K1 [require]
      174 GETIMPORT                        R3 K3 [script]
      176 GETTABLEKS                       R3 R3 K23 ["flat"]
      178 CALL                             R2 1 1
      179 SETTABLEKS                       R2 R1 K23 ["flat"]
      181 GETIMPORT                        R2 K1 [require]
      183 GETIMPORT                        R3 K3 [script]
      185 GETTABLEKS                       R3 R3 K24 ["forEach"]
      187 CALL                             R2 1 1
      188 SETTABLEKS                       R2 R1 K24 ["forEach"]
      190 GETIMPORT                        R2 K1 [require]
      192 GETIMPORT                        R3 K3 [script]
      194 GETTABLEKS                       R3 R3 K25 ["forEachArgs"]
      196 CALL                             R2 1 1
      197 SETTABLEKS                       R2 R1 K25 ["forEachArgs"]
      199 GETIMPORT                        R2 K1 [require]
      201 GETIMPORT                        R3 K3 [script]
      203 GETTABLEKS                       R3 R3 K26 ["format"]
      205 CALL                             R2 1 1
      206 SETTABLEKS                       R2 R1 K26 ["format"]
      208 GETIMPORT                        R2 K1 [require]
      210 GETIMPORT                        R3 K3 [script]
      212 GETTABLEKS                       R3 R3 K27 ["formatValue"]
      214 CALL                             R2 1 1
      215 SETTABLEKS                       R2 R1 K27 ["formatValue"]
      217 GETIMPORT                        R2 K1 [require]
      219 GETIMPORT                        R3 K3 [script]
      221 GETTABLEKS                       R3 R3 K28 ["freeze"]
      223 CALL                             R2 1 1
      224 SETTABLEKS                       R2 R1 K28 ["freeze"]
      226 GETIMPORT                        R2 K1 [require]
      228 GETIMPORT                        R3 K3 [script]
      230 GETTABLEKS                       R3 R3 K29 ["frequencies"]
      232 CALL                             R2 1 1
      233 SETTABLEKS                       R2 R1 K29 ["frequencies"]
      235 GETIMPORT                        R2 K1 [require]
      237 GETIMPORT                        R3 K3 [script]
      239 GETTABLEKS                       R3 R3 K30 ["getOrSet"]
      241 CALL                             R2 1 1
      242 SETTABLEKS                       R2 R1 K30 ["getOrSet"]
      244 GETIMPORT                        R2 K1 [require]
      246 GETIMPORT                        R3 K3 [script]
      248 GETTABLEKS                       R3 R3 K31 ["groupBy"]
      250 CALL                             R2 1 1
      251 SETTABLEKS                       R2 R1 K31 ["groupBy"]
      253 GETIMPORT                        R2 K1 [require]
      255 GETIMPORT                        R3 K3 [script]
      257 GETTABLEKS                       R3 R3 K32 ["identity"]
      259 CALL                             R2 1 1
      260 SETTABLEKS                       R2 R1 K32 ["identity"]
      262 GETIMPORT                        R2 K1 [require]
      264 GETIMPORT                        R3 K3 [script]
      266 GETTABLEKS                       R3 R3 K33 ["includes"]
      268 CALL                             R2 1 1
      269 SETTABLEKS                       R2 R1 K33 ["includes"]
      271 GETIMPORT                        R2 K1 [require]
      273 GETIMPORT                        R3 K3 [script]
      275 GETTABLEKS                       R3 R3 K34 ["isCallable"]
      277 CALL                             R2 1 1
      278 SETTABLEKS                       R2 R1 K34 ["isCallable"]
      280 GETIMPORT                        R2 K1 [require]
      282 GETIMPORT                        R3 K3 [script]
      284 GETTABLEKS                       R3 R3 K35 ["isLowercase"]
      286 CALL                             R2 1 1
      287 SETTABLEKS                       R2 R1 K35 ["isLowercase"]
      289 GETIMPORT                        R2 K1 [require]
      291 GETIMPORT                        R3 K3 [script]
      293 GETTABLEKS                       R3 R3 K36 ["isUppercase"]
      295 CALL                             R2 1 1
      296 SETTABLEKS                       R2 R1 K36 ["isUppercase"]
      298 GETIMPORT                        R2 K1 [require]
      300 GETIMPORT                        R3 K3 [script]
      302 GETTABLEKS                       R3 R3 K37 ["iterable"]
      304 CALL                             R2 1 1
      305 SETTABLEKS                       R2 R1 K37 ["iterable"]
      307 GETIMPORT                        R2 K1 [require]
      309 GETIMPORT                        R3 K3 [script]
      311 GETTABLEKS                       R3 R3 K38 ["iterator"]
      313 CALL                             R2 1 1
      314 SETTABLEKS                       R2 R1 K38 ["iterator"]
      316 GETIMPORT                        R2 K1 [require]
      318 GETIMPORT                        R3 K3 [script]
      320 GETTABLEKS                       R3 R3 K39 ["join"]
      322 CALL                             R2 1 1
      323 SETTABLEKS                       R2 R1 K39 ["join"]
      325 GETIMPORT                        R2 K1 [require]
      327 GETIMPORT                        R3 K3 [script]
      329 GETTABLEKS                       R3 R3 K40 ["joinDeep"]
      331 CALL                             R2 1 1
      332 SETTABLEKS                       R2 R1 K40 ["joinDeep"]
      334 GETIMPORT                        R2 K1 [require]
      336 GETIMPORT                        R3 K3 [script]
      338 GETTABLEKS                       R3 R3 K41 ["keyBy"]
      340 CALL                             R2 1 1
      341 SETTABLEKS                       R2 R1 K41 ["keyBy"]
      343 GETIMPORT                        R2 K1 [require]
      345 GETIMPORT                        R3 K3 [script]
      347 GETTABLEKS                       R3 R3 K42 ["keys"]
      349 CALL                             R2 1 1
      350 SETTABLEKS                       R2 R1 K42 ["keys"]
      352 GETIMPORT                        R2 K1 [require]
      354 GETIMPORT                        R3 K3 [script]
      356 GETTABLEKS                       R3 R3 K43 ["last"]
      358 CALL                             R2 1 1
      359 SETTABLEKS                       R2 R1 K43 ["last"]
      361 GETIMPORT                        R2 K1 [require]
      363 GETIMPORT                        R3 K3 [script]
      365 GETTABLEKS                       R3 R3 K44 ["leftPad"]
      367 CALL                             R2 1 1
      368 SETTABLEKS                       R2 R1 K44 ["leftPad"]
      370 GETIMPORT                        R2 K1 [require]
      372 GETIMPORT                        R3 K3 [script]
      374 GETTABLEKS                       R3 R3 K45 ["map"]
      376 CALL                             R2 1 1
      377 SETTABLEKS                       R2 R1 K45 ["map"]
      379 GETIMPORT                        R2 K1 [require]
      381 GETIMPORT                        R3 K3 [script]
      383 GETTABLEKS                       R3 R3 K46 ["mapFirst"]
      385 CALL                             R2 1 1
      386 SETTABLEKS                       R2 R1 K46 ["mapFirst"]
      388 GETIMPORT                        R2 K1 [require]
      390 GETIMPORT                        R3 K3 [script]
      392 GETTABLEKS                       R3 R3 K47 ["mapLast"]
      394 CALL                             R2 1 1
      395 SETTABLEKS                       R2 R1 K47 ["mapLast"]
      397 GETIMPORT                        R2 K1 [require]
      399 GETIMPORT                        R3 K3 [script]
      401 GETTABLEKS                       R3 R3 K48 ["mapOne"]
      403 CALL                             R2 1 1
      404 SETTABLEKS                       R2 R1 K48 ["mapOne"]
      406 GETIMPORT                        R2 K1 [require]
      408 GETIMPORT                        R3 K3 [script]
      410 GETTABLEKS                       R3 R3 K49 ["max"]
      412 CALL                             R2 1 1
      413 SETTABLEKS                       R2 R1 K49 ["max"]
      415 GETIMPORT                        R2 K1 [require]
      417 GETIMPORT                        R3 K3 [script]
      419 GETTABLEKS                       R3 R3 K50 ["memoize"]
      421 CALL                             R2 1 1
      422 SETTABLEKS                       R2 R1 K50 ["memoize"]
      424 GETIMPORT                        R2 K1 [require]
      426 GETIMPORT                        R3 K3 [script]
      428 GETTABLEKS                       R3 R3 K51 ["min"]
      430 CALL                             R2 1 1
      431 SETTABLEKS                       R2 R1 K51 ["min"]
      433 GETIMPORT                        R2 K1 [require]
      435 GETIMPORT                        R3 K3 [script]
      437 GETTABLEKS                       R3 R3 K52 ["None"]
      439 CALL                             R2 1 1
      440 SETTABLEKS                       R2 R1 K52 ["None"]
      442 GETIMPORT                        R2 K1 [require]
      444 GETIMPORT                        R3 K3 [script]
      446 GETTABLEKS                       R3 R3 K53 ["noop"]
      448 CALL                             R2 1 1
      449 SETTABLEKS                       R2 R1 K53 ["noop"]
      451 GETIMPORT                        R2 K1 [require]
      453 GETIMPORT                        R3 K3 [script]
      455 GETTABLEKS                       R3 R3 K54 ["omit"]
      457 CALL                             R2 1 1
      458 SETTABLEKS                       R2 R1 K54 ["omit"]
      460 GETIMPORT                        R2 K1 [require]
      462 GETIMPORT                        R3 K3 [script]
      464 GETTABLEKS                       R3 R3 K55 ["pick"]
      466 CALL                             R2 1 1
      467 SETTABLEKS                       R2 R1 K55 ["pick"]
      469 GETIMPORT                        R2 K1 [require]
      471 GETIMPORT                        R3 K3 [script]
      473 GETTABLEKS                       R3 R3 K56 ["pretty"]
      475 CALL                             R2 1 1
      476 SETTABLEKS                       R2 R1 K56 ["pretty"]
      478 GETIMPORT                        R2 K1 [require]
      480 GETIMPORT                        R3 K3 [script]
      482 GETTABLEKS                       R3 R3 K57 ["product"]
      484 CALL                             R2 1 1
      485 SETTABLEKS                       R2 R1 K57 ["product"]
      487 GETIMPORT                        R2 K1 [require]
      489 GETIMPORT                        R3 K3 [script]
      491 GETTABLEKS                       R3 R3 K58 ["reduce"]
      493 CALL                             R2 1 1
      494 SETTABLEKS                       R2 R1 K58 ["reduce"]
      496 GETIMPORT                        R2 K1 [require]
      498 GETIMPORT                        R3 K3 [script]
      500 GETTABLEKS                       R3 R3 K59 ["reverse"]
      502 CALL                             R2 1 1
      503 SETTABLEKS                       R2 R1 K59 ["reverse"]
      505 GETIMPORT                        R2 K1 [require]
      507 GETIMPORT                        R3 K3 [script]
      509 GETTABLEKS                       R3 R3 K60 ["rightPad"]
      511 CALL                             R2 1 1
      512 SETTABLEKS                       R2 R1 K60 ["rightPad"]
      514 GETIMPORT                        R2 K1 [require]
      516 GETIMPORT                        R3 K3 [script]
      518 GETTABLEKS                       R3 R3 K61 ["shallowEqual"]
      520 CALL                             R2 1 1
      521 SETTABLEKS                       R2 R1 K61 ["shallowEqual"]
      523 GETIMPORT                        R2 K1 [require]
      525 GETIMPORT                        R3 K3 [script]
      527 GETTABLEKS                       R3 R3 K62 ["slice"]
      529 CALL                             R2 1 1
      530 SETTABLEKS                       R2 R1 K62 ["slice"]
      532 GETIMPORT                        R2 K1 [require]
      534 GETIMPORT                        R3 K3 [script]
      536 GETTABLEKS                       R3 R3 K63 ["some"]
      538 CALL                             R2 1 1
      539 SETTABLEKS                       R2 R1 K63 ["some"]
      541 GETIMPORT                        R2 K1 [require]
      543 GETIMPORT                        R3 K3 [script]
      545 GETTABLEKS                       R3 R3 K64 ["splitOn"]
      547 CALL                             R2 1 1
      548 SETTABLEKS                       R2 R1 K64 ["splitOn"]
      550 GETIMPORT                        R2 K1 [require]
      552 GETIMPORT                        R3 K3 [script]
      554 GETTABLEKS                       R3 R3 K65 ["startsWith"]
      556 CALL                             R2 1 1
      557 SETTABLEKS                       R2 R1 K65 ["startsWith"]
      559 GETIMPORT                        R2 K1 [require]
      561 GETIMPORT                        R3 K3 [script]
      563 GETTABLEKS                       R3 R3 K66 ["sum"]
      565 CALL                             R2 1 1
      566 SETTABLEKS                       R2 R1 K66 ["sum"]
      568 GETIMPORT                        R2 K1 [require]
      570 GETIMPORT                        R3 K3 [script]
      572 GETTABLEKS                       R3 R3 K67 ["Symbol"]
      574 CALL                             R2 1 1
      575 SETTABLEKS                       R2 R1 K67 ["Symbol"]
      577 GETIMPORT                        R2 K1 [require]
      579 GETIMPORT                        R3 K3 [script]
      581 GETTABLEKS                       R3 R3 K68 ["trim"]
      583 CALL                             R2 1 1
      584 SETTABLEKS                       R2 R1 K68 ["trim"]
      586 GETIMPORT                        R2 K1 [require]
      588 GETIMPORT                        R3 K3 [script]
      590 GETTABLEKS                       R3 R3 K4 ["Types"]
      592 CALL                             R2 1 1
      593 SETTABLEKS                       R2 R1 K4 ["Types"]
      595 GETIMPORT                        R2 K1 [require]
      597 GETIMPORT                        R3 K3 [script]
      599 GETTABLEKS                       R3 R3 K69 ["values"]
      601 CALL                             R2 1 1
      602 SETTABLEKS                       R2 R1 K69 ["values"]
      604 GETIMPORT                        R2 K1 [require]
      606 GETIMPORT                        R3 K3 [script]
      608 GETTABLEKS                       R3 R3 K70 ["zip"]
      610 CALL                             R2 1 1
      611 SETTABLEKS                       R2 R1 K70 ["zip"]
      613 GETTABLEKS                       R2 R1 K28 ["freeze"]
      615 LOADK                            R3 K71 ["Dash"]
      616 MOVE                             R4 R1
      617 LOADB                            R5 1
      618 CALL                             R2 3 -1
      619 RETURN                           R2 -1
