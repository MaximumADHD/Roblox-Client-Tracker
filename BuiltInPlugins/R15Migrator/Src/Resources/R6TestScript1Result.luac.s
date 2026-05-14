MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 13
        3 NEWTABLE                         R1 8 0
        5 LOADK                            R2 K0 ["R6 Script Warning"]
        6 SETTABLEKS                       R2 R1 K1 ["code"]
        8 LOADK                            R2 K2 ["Right Arm"]
        9 SETTABLEKS                       R2 R1 K3 ["instanceName"]
       11 LOADK                            R2 K4 ["Right Arm found, possible replacements are: RightHand"]
       12 SETTABLEKS                       R2 R1 K5 ["message"]
       14 NEWTABLE                         R2 2 0
       16 NEWTABLE                         R3 2 0
       18 LOADN                            R4 57
       19 SETTABLEKS                       R4 R3 K6 ["character"]
       21 LOADN                            R4 61
       22 SETTABLEKS                       R4 R3 K7 ["line"]
       24 SETTABLEKS                       R3 R2 K8 ["end"]
       26 NEWTABLE                         R3 2 0
       28 LOADN                            R4 48
       29 SETTABLEKS                       R4 R3 K6 ["character"]
       31 LOADN                            R4 61
       32 SETTABLEKS                       R4 R3 K7 ["line"]
       34 SETTABLEKS                       R3 R2 K9 ["start"]
       36 SETTABLEKS                       R2 R1 K10 ["range"]
       38 GETIMPORT                        R2 K12 [Enum]
       40 GETTABLEKS                       R2 R2 K13 ["Severity"]
       42 GETTABLEKS                       R2 R2 K14 ["Error"]
       44 SETTABLEKS                       R2 R1 K15 ["severity"]
       46 NEWTABLE                         R2 0 1
       48 LOADK                            R3 K16 ["RightHand"]
       49 SETTABLEN                        R3 R2 1
       50 SETTABLEKS                       R2 R1 K17 ["suggestions"]
       52 SETTABLEN                        R1 R0 1
       53 NEWTABLE                         R1 8 0
       55 LOADK                            R2 K0 ["R6 Script Warning"]
       56 SETTABLEKS                       R2 R1 K1 ["code"]
       58 LOADK                            R2 K18 ["Torso"]
       59 SETTABLEKS                       R2 R1 K3 ["instanceName"]
       61 LOADK                            R2 K19 ["Torso found, possible replacements are: RightUpperArm"]
       62 SETTABLEKS                       R2 R1 K5 ["message"]
       64 NEWTABLE                         R2 2 0
       66 NEWTABLE                         R3 2 0
       68 LOADN                            R4 23
       69 SETTABLEKS                       R4 R3 K6 ["character"]
       71 LOADN                            R4 94
       72 SETTABLEKS                       R4 R3 K7 ["line"]
       74 SETTABLEKS                       R3 R2 K8 ["end"]
       76 NEWTABLE                         R3 2 0
       78 LOADN                            R4 18
       79 SETTABLEKS                       R4 R3 K6 ["character"]
       81 LOADN                            R4 94
       82 SETTABLEKS                       R4 R3 K7 ["line"]
       84 SETTABLEKS                       R3 R2 K9 ["start"]
       86 SETTABLEKS                       R2 R1 K10 ["range"]
       88 GETIMPORT                        R2 K12 [Enum]
       90 GETTABLEKS                       R2 R2 K13 ["Severity"]
       92 GETTABLEKS                       R2 R2 K14 ["Error"]
       94 SETTABLEKS                       R2 R1 K15 ["severity"]
       96 NEWTABLE                         R2 0 1
       98 LOADK                            R3 K20 ["RightUpperArm"]
       99 SETTABLEN                        R3 R2 1
      100 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      102 SETTABLEN                        R1 R0 2
      103 NEWTABLE                         R1 8 0
      105 LOADK                            R2 K0 ["R6 Script Warning"]
      106 SETTABLEKS                       R2 R1 K1 ["code"]
      108 LOADK                            R2 K21 ["Right Shoulder"]
      109 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      111 LOADK                            R2 K22 ["Right Shoulder found, possible replacements are: RightShoulder"]
      112 SETTABLEKS                       R2 R1 K5 ["message"]
      114 NEWTABLE                         R2 2 0
      116 NEWTABLE                         R3 2 0
      118 LOADN                            R4 54
      119 SETTABLEKS                       R4 R3 K6 ["character"]
      121 LOADN                            R4 94
      122 SETTABLEKS                       R4 R3 K7 ["line"]
      124 SETTABLEKS                       R3 R2 K8 ["end"]
      126 NEWTABLE                         R3 2 0
      128 LOADN                            R4 40
      129 SETTABLEKS                       R4 R3 K6 ["character"]
      131 LOADN                            R4 94
      132 SETTABLEKS                       R4 R3 K7 ["line"]
      134 SETTABLEKS                       R3 R2 K9 ["start"]
      136 SETTABLEKS                       R2 R1 K10 ["range"]
      138 GETIMPORT                        R2 K12 [Enum]
      140 GETTABLEKS                       R2 R2 K13 ["Severity"]
      142 GETTABLEKS                       R2 R2 K14 ["Error"]
      144 SETTABLEKS                       R2 R1 K15 ["severity"]
      146 NEWTABLE                         R2 0 1
      148 LOADK                            R3 K23 ["RightShoulder"]
      149 SETTABLEN                        R3 R2 1
      150 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      152 SETTABLEN                        R1 R0 3
      153 NEWTABLE                         R1 8 0
      155 LOADK                            R2 K0 ["R6 Script Warning"]
      156 SETTABLEKS                       R2 R1 K1 ["code"]
      158 LOADK                            R2 K18 ["Torso"]
      159 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      161 LOADK                            R2 K24 ["Torso found, possible replacements are: UpperTorso, LowerTorso, HumanoidRootPart"]
      162 SETTABLEKS                       R2 R1 K5 ["message"]
      164 NEWTABLE                         R2 2 0
      166 NEWTABLE                         R3 2 0
      168 LOADN                            R4 34
      169 SETTABLEKS                       R4 R3 K6 ["character"]
      171 LOADN                            R4 129
      172 SETTABLEKS                       R4 R3 K7 ["line"]
      174 SETTABLEKS                       R3 R2 K8 ["end"]
      176 NEWTABLE                         R3 2 0
      178 LOADN                            R4 29
      179 SETTABLEKS                       R4 R3 K6 ["character"]
      181 LOADN                            R4 129
      182 SETTABLEKS                       R4 R3 K7 ["line"]
      184 SETTABLEKS                       R3 R2 K9 ["start"]
      186 SETTABLEKS                       R2 R1 K10 ["range"]
      188 GETIMPORT                        R2 K12 [Enum]
      190 GETTABLEKS                       R2 R2 K13 ["Severity"]
      192 GETTABLEKS                       R2 R2 K14 ["Error"]
      194 SETTABLEKS                       R2 R1 K15 ["severity"]
      196 NEWTABLE                         R2 0 3
      198 LOADK                            R3 K25 ["UpperTorso"]
      199 SETTABLEN                        R3 R2 1
      200 LOADK                            R3 K26 ["LowerTorso"]
      201 SETTABLEN                        R3 R2 2
      202 LOADK                            R3 K27 ["HumanoidRootPart"]
      203 SETTABLEN                        R3 R2 3
      204 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      206 SETTABLEN                        R1 R0 4
      207 NEWTABLE                         R1 8 0
      209 LOADK                            R2 K0 ["R6 Script Warning"]
      210 SETTABLEKS                       R2 R1 K1 ["code"]
      212 LOADK                            R2 K28 ["right_arm"]
      213 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      215 LOADK                            R2 K29 ["Variable must reference RightHand."]
      216 SETTABLEKS                       R2 R1 K5 ["message"]
      218 NEWTABLE                         R2 2 0
      220 NEWTABLE                         R3 2 0
      222 LOADN                            R4 27
      223 SETTABLEKS                       R4 R3 K6 ["character"]
      225 LOADN                            R4 63
      226 SETTABLEKS                       R4 R3 K7 ["line"]
      228 SETTABLEKS                       R3 R2 K8 ["end"]
      230 NEWTABLE                         R3 2 0
      232 LOADN                            R4 18
      233 SETTABLEKS                       R4 R3 K6 ["character"]
      235 LOADN                            R4 63
      236 SETTABLEKS                       R4 R3 K7 ["line"]
      238 SETTABLEKS                       R3 R2 K9 ["start"]
      240 SETTABLEKS                       R2 R1 K10 ["range"]
      242 GETIMPORT                        R2 K12 [Enum]
      244 GETTABLEKS                       R2 R2 K13 ["Severity"]
      246 GETTABLEKS                       R2 R2 K14 ["Error"]
      248 SETTABLEKS                       R2 R1 K15 ["severity"]
      250 NEWTABLE                         R2 0 0
      252 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      254 SETTABLEN                        R1 R0 5
      255 NEWTABLE                         R1 8 0
      257 LOADK                            R2 K0 ["R6 Script Warning"]
      258 SETTABLEKS                       R2 R1 K1 ["code"]
      260 LOADK                            R2 K18 ["Torso"]
      261 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      263 LOADK                            R2 K19 ["Torso found, possible replacements are: RightUpperArm"]
      264 SETTABLEKS                       R2 R1 K5 ["message"]
      266 NEWTABLE                         R2 2 0
      268 NEWTABLE                         R3 2 0
      270 LOADN                            R4 20
      271 SETTABLEKS                       R4 R3 K6 ["character"]
      273 LOADN                            R4 95
      274 SETTABLEKS                       R4 R3 K7 ["line"]
      276 SETTABLEKS                       R3 R2 K8 ["end"]
      278 NEWTABLE                         R3 2 0
      280 LOADN                            R4 15
      281 SETTABLEKS                       R4 R3 K6 ["character"]
      283 LOADN                            R4 95
      284 SETTABLEKS                       R4 R3 K7 ["line"]
      286 SETTABLEKS                       R3 R2 K9 ["start"]
      288 SETTABLEKS                       R2 R1 K10 ["range"]
      290 GETIMPORT                        R2 K12 [Enum]
      292 GETTABLEKS                       R2 R2 K13 ["Severity"]
      294 GETTABLEKS                       R2 R2 K14 ["Error"]
      296 SETTABLEKS                       R2 R1 K15 ["severity"]
      298 NEWTABLE                         R2 0 1
      300 LOADK                            R3 K20 ["RightUpperArm"]
      301 SETTABLEN                        R3 R2 1
      302 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      304 SETTABLEN                        R1 R0 6
      305 NEWTABLE                         R1 8 0
      307 LOADK                            R2 K0 ["R6 Script Warning"]
      308 SETTABLEKS                       R2 R1 K1 ["code"]
      310 LOADK                            R2 K21 ["Right Shoulder"]
      311 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      313 LOADK                            R2 K22 ["Right Shoulder found, possible replacements are: RightShoulder"]
      314 SETTABLEKS                       R2 R1 K5 ["message"]
      316 NEWTABLE                         R2 2 0
      318 NEWTABLE                         R3 2 0
      320 LOADN                            R4 36
      321 SETTABLEKS                       R4 R3 K6 ["character"]
      323 LOADN                            R4 95
      324 SETTABLEKS                       R4 R3 K7 ["line"]
      326 SETTABLEKS                       R3 R2 K8 ["end"]
      328 NEWTABLE                         R3 2 0
      330 LOADN                            R4 22
      331 SETTABLEKS                       R4 R3 K6 ["character"]
      333 LOADN                            R4 95
      334 SETTABLEKS                       R4 R3 K7 ["line"]
      336 SETTABLEKS                       R3 R2 K9 ["start"]
      338 SETTABLEKS                       R2 R1 K10 ["range"]
      340 GETIMPORT                        R2 K12 [Enum]
      342 GETTABLEKS                       R2 R2 K13 ["Severity"]
      344 GETTABLEKS                       R2 R2 K14 ["Error"]
      346 SETTABLEKS                       R2 R1 K15 ["severity"]
      348 NEWTABLE                         R2 0 1
      350 LOADK                            R3 K23 ["RightShoulder"]
      351 SETTABLEN                        R3 R2 1
      352 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      354 SETTABLEN                        R1 R0 7
      355 NEWTABLE                         R1 8 0
      357 LOADK                            R2 K0 ["R6 Script Warning"]
      358 SETTABLEKS                       R2 R1 K1 ["code"]
      360 LOADK                            R2 K18 ["Torso"]
      361 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      363 LOADK                            R2 K19 ["Torso found, possible replacements are: RightUpperArm"]
      364 SETTABLEKS                       R2 R1 K5 ["message"]
      366 NEWTABLE                         R2 2 0
      368 NEWTABLE                         R3 2 0
      370 LOADN                            R4 20
      371 SETTABLEKS                       R4 R3 K6 ["character"]
      373 LOADN                            R4 96
      374 SETTABLEKS                       R4 R3 K7 ["line"]
      376 SETTABLEKS                       R3 R2 K8 ["end"]
      378 NEWTABLE                         R3 2 0
      380 LOADN                            R4 15
      381 SETTABLEKS                       R4 R3 K6 ["character"]
      383 LOADN                            R4 96
      384 SETTABLEKS                       R4 R3 K7 ["line"]
      386 SETTABLEKS                       R3 R2 K9 ["start"]
      388 SETTABLEKS                       R2 R1 K10 ["range"]
      390 GETIMPORT                        R2 K12 [Enum]
      392 GETTABLEKS                       R2 R2 K13 ["Severity"]
      394 GETTABLEKS                       R2 R2 K14 ["Error"]
      396 SETTABLEKS                       R2 R1 K15 ["severity"]
      398 NEWTABLE                         R2 0 1
      400 LOADK                            R3 K20 ["RightUpperArm"]
      401 SETTABLEN                        R3 R2 1
      402 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      404 SETTABLEN                        R1 R0 8
      405 NEWTABLE                         R1 8 0
      407 LOADK                            R2 K0 ["R6 Script Warning"]
      408 SETTABLEKS                       R2 R1 K1 ["code"]
      410 LOADK                            R2 K21 ["Right Shoulder"]
      411 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      413 LOADK                            R2 K22 ["Right Shoulder found, possible replacements are: RightShoulder"]
      414 SETTABLEKS                       R2 R1 K5 ["message"]
      416 NEWTABLE                         R2 2 0
      418 NEWTABLE                         R3 2 0
      420 LOADN                            R4 36
      421 SETTABLEKS                       R4 R3 K6 ["character"]
      423 LOADN                            R4 96
      424 SETTABLEKS                       R4 R3 K7 ["line"]
      426 SETTABLEKS                       R3 R2 K8 ["end"]
      428 NEWTABLE                         R3 2 0
      430 LOADN                            R4 22
      431 SETTABLEKS                       R4 R3 K6 ["character"]
      433 LOADN                            R4 96
      434 SETTABLEKS                       R4 R3 K7 ["line"]
      436 SETTABLEKS                       R3 R2 K9 ["start"]
      438 SETTABLEKS                       R2 R1 K10 ["range"]
      440 GETIMPORT                        R2 K12 [Enum]
      442 GETTABLEKS                       R2 R2 K13 ["Severity"]
      444 GETTABLEKS                       R2 R2 K14 ["Error"]
      446 SETTABLEKS                       R2 R1 K15 ["severity"]
      448 NEWTABLE                         R2 0 1
      450 LOADK                            R3 K23 ["RightShoulder"]
      451 SETTABLEN                        R3 R2 1
      452 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      454 SETTABLEN                        R1 R0 9
      455 NEWTABLE                         R1 8 0
      457 LOADK                            R2 K0 ["R6 Script Warning"]
      458 SETTABLEKS                       R2 R1 K1 ["code"]
      460 LOADK                            R2 K18 ["Torso"]
      461 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      463 LOADK                            R2 K19 ["Torso found, possible replacements are: RightUpperArm"]
      464 SETTABLEKS                       R2 R1 K5 ["message"]
      466 NEWTABLE                         R2 2 0
      468 NEWTABLE                         R3 2 0
      470 LOADN                            R4 24
      471 SETTABLEKS                       R4 R3 K6 ["character"]
      473 LOADN                            R4 99
      474 SETTABLEKS                       R4 R3 K7 ["line"]
      476 SETTABLEKS                       R3 R2 K8 ["end"]
      478 NEWTABLE                         R3 2 0
      480 LOADN                            R4 19
      481 SETTABLEKS                       R4 R3 K6 ["character"]
      483 LOADN                            R4 99
      484 SETTABLEKS                       R4 R3 K7 ["line"]
      486 SETTABLEKS                       R3 R2 K9 ["start"]
      488 SETTABLEKS                       R2 R1 K10 ["range"]
      490 GETIMPORT                        R2 K12 [Enum]
      492 GETTABLEKS                       R2 R2 K13 ["Severity"]
      494 GETTABLEKS                       R2 R2 K14 ["Error"]
      496 SETTABLEKS                       R2 R1 K15 ["severity"]
      498 NEWTABLE                         R2 0 1
      500 LOADK                            R3 K20 ["RightUpperArm"]
      501 SETTABLEN                        R3 R2 1
      502 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      504 SETTABLEN                        R1 R0 10
      505 NEWTABLE                         R1 8 0
      507 LOADK                            R2 K0 ["R6 Script Warning"]
      508 SETTABLEKS                       R2 R1 K1 ["code"]
      510 LOADK                            R2 K21 ["Right Shoulder"]
      511 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      513 LOADK                            R2 K22 ["Right Shoulder found, possible replacements are: RightShoulder"]
      514 SETTABLEKS                       R2 R1 K5 ["message"]
      516 NEWTABLE                         R2 2 0
      518 NEWTABLE                         R3 2 0
      520 LOADN                            R4 55
      521 SETTABLEKS                       R4 R3 K6 ["character"]
      523 LOADN                            R4 99
      524 SETTABLEKS                       R4 R3 K7 ["line"]
      526 SETTABLEKS                       R3 R2 K8 ["end"]
      528 NEWTABLE                         R3 2 0
      530 LOADN                            R4 41
      531 SETTABLEKS                       R4 R3 K6 ["character"]
      533 LOADN                            R4 99
      534 SETTABLEKS                       R4 R3 K7 ["line"]
      536 SETTABLEKS                       R3 R2 K9 ["start"]
      538 SETTABLEKS                       R2 R1 K10 ["range"]
      540 GETIMPORT                        R2 K12 [Enum]
      542 GETTABLEKS                       R2 R2 K13 ["Severity"]
      544 GETTABLEKS                       R2 R2 K14 ["Error"]
      546 SETTABLEKS                       R2 R1 K15 ["severity"]
      548 NEWTABLE                         R2 0 1
      550 LOADK                            R3 K23 ["RightShoulder"]
      551 SETTABLEN                        R3 R2 1
      552 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      554 SETTABLEN                        R1 R0 11
      555 NEWTABLE                         R1 8 0
      557 LOADK                            R2 K0 ["R6 Script Warning"]
      558 SETTABLEKS                       R2 R1 K1 ["code"]
      560 LOADK                            R2 K18 ["Torso"]
      561 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      563 LOADK                            R2 K19 ["Torso found, possible replacements are: RightUpperArm"]
      564 SETTABLEKS                       R2 R1 K5 ["message"]
      566 NEWTABLE                         R2 2 0
      568 NEWTABLE                         R3 2 0
      570 LOADN                            R4 22
      571 SETTABLEKS                       R4 R3 K6 ["character"]
      573 LOADN                            R4 100
      574 SETTABLEKS                       R4 R3 K7 ["line"]
      576 SETTABLEKS                       R3 R2 K8 ["end"]
      578 NEWTABLE                         R3 2 0
      580 LOADN                            R4 17
      581 SETTABLEKS                       R4 R3 K6 ["character"]
      583 LOADN                            R4 100
      584 SETTABLEKS                       R4 R3 K7 ["line"]
      586 SETTABLEKS                       R3 R2 K9 ["start"]
      588 SETTABLEKS                       R2 R1 K10 ["range"]
      590 GETIMPORT                        R2 K12 [Enum]
      592 GETTABLEKS                       R2 R2 K13 ["Severity"]
      594 GETTABLEKS                       R2 R2 K14 ["Error"]
      596 SETTABLEKS                       R2 R1 K15 ["severity"]
      598 NEWTABLE                         R2 0 1
      600 LOADK                            R3 K20 ["RightUpperArm"]
      601 SETTABLEN                        R3 R2 1
      602 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      604 SETTABLEN                        R1 R0 12
      605 NEWTABLE                         R1 8 0
      607 LOADK                            R2 K0 ["R6 Script Warning"]
      608 SETTABLEKS                       R2 R1 K1 ["code"]
      610 LOADK                            R2 K21 ["Right Shoulder"]
      611 SETTABLEKS                       R2 R1 K3 ["instanceName"]
      613 LOADK                            R2 K22 ["Right Shoulder found, possible replacements are: RightShoulder"]
      614 SETTABLEKS                       R2 R1 K5 ["message"]
      616 NEWTABLE                         R2 2 0
      618 NEWTABLE                         R3 2 0
      620 LOADN                            R4 38
      621 SETTABLEKS                       R4 R3 K6 ["character"]
      623 LOADN                            R4 100
      624 SETTABLEKS                       R4 R3 K7 ["line"]
      626 SETTABLEKS                       R3 R2 K8 ["end"]
      628 NEWTABLE                         R3 2 0
      630 LOADN                            R4 24
      631 SETTABLEKS                       R4 R3 K6 ["character"]
      633 LOADN                            R4 100
      634 SETTABLEKS                       R4 R3 K7 ["line"]
      636 SETTABLEKS                       R3 R2 K9 ["start"]
      638 SETTABLEKS                       R2 R1 K10 ["range"]
      640 GETIMPORT                        R2 K12 [Enum]
      642 GETTABLEKS                       R2 R2 K13 ["Severity"]
      644 GETTABLEKS                       R2 R2 K14 ["Error"]
      646 SETTABLEKS                       R2 R1 K15 ["severity"]
      648 NEWTABLE                         R2 0 1
      650 LOADK                            R3 K23 ["RightShoulder"]
      651 SETTABLEN                        R3 R2 1
      652 SETTABLEKS                       R2 R1 K17 ["suggestions"]
      654 SETTABLEN                        R1 R0 13
      655 RETURN                           R0 1
