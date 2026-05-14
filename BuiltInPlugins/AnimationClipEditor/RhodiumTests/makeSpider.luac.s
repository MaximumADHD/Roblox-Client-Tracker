PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K5 [game]
        6 GETTABLEKS                       R1 R1 K6 ["Workspace"]
        8 SETTABLEKS                       R1 R0 K7 ["Parent"]
       10 GETIMPORT                        R1 K2 [Instance.new]
       12 LOADK                            R2 K8 ["Part"]
       13 CALL                             R1 1 1
       14 LOADK                            R2 K9 [{3, 3, 3}]
       15 SETTABLEKS                       R2 R1 K10 ["Size"]
       17 SETTABLEKS                       R0 R1 K7 ["Parent"]
       19 LOADN                            R2 1
       20 SETTABLEKS                       R2 R1 K11 ["Transparency"]
       22 LOADB                            R2 1
       23 SETTABLEKS                       R2 R1 K12 ["Anchored"]
       25 LOADK                            R2 K13 ["Root"]
       26 SETTABLEKS                       R2 R1 K14 ["Name"]
       28 GETIMPORT                        R2 K2 [Instance.new]
       30 LOADK                            R3 K8 ["Part"]
       31 CALL                             R2 1 1
       32 LOADK                            R3 K9 [{3, 3, 3}]
       33 SETTABLEKS                       R3 R2 K10 ["Size"]
       35 SETTABLEKS                       R0 R2 K7 ["Parent"]
       37 LOADK                            R3 K15 ["Body"]
       38 SETTABLEKS                       R3 R2 K14 ["Name"]
       40 GETIMPORT                        R3 K2 [Instance.new]
       42 LOADK                            R4 K16 ["Motor6D"]
       43 CALL                             R3 1 1
       44 SETTABLEKS                       R1 R3 K17 ["Part0"]
       46 SETTABLEKS                       R2 R3 K18 ["Part1"]
       48 SETTABLEKS                       R2 R3 K7 ["Parent"]
       50 GETIMPORT                        R4 K2 [Instance.new]
       52 LOADK                            R5 K19 ["Humanoid"]
       53 MOVE                             R6 R0
       54 CALL                             R4 2 1
       55 LOADN                            R7 1
       56 LOADN                            R5 4
       57 LOADN                            R6 1
       58 FORNPREP                         R5
       59 GETIMPORT                        R8 K2 [Instance.new]
       61 LOADK                            R9 K8 ["Part"]
       62 MOVE                             R10 R0
       63 CALL                             R8 2 1
       64 LOADK                            R9 K20 [{4, 1, 1}]
       65 SETTABLEKS                       R9 R8 K10 ["Size"]
       67 LOADK                            R10 K21 ["UpperLeg"]
       68 MOVE                             R11 R7
       69 CONCAT                           R9 R10 R11
       70 SETTABLEKS                       R9 R8 K14 ["Name"]
       72 GETIMPORT                        R9 K2 [Instance.new]
       74 LOADK                            R10 K8 ["Part"]
       75 MOVE                             R11 R0
       76 CALL                             R9 2 1
       77 LOADK                            R10 K22 [{3, 1, 1}]
       78 SETTABLEKS                       R10 R9 K10 ["Size"]
       80 LOADK                            R11 K23 ["LowerLeg"]
       81 MOVE                             R12 R7
       82 CONCAT                           R10 R11 R12
       83 SETTABLEKS                       R10 R9 K14 ["Name"]
       85 GETIMPORT                        R10 K2 [Instance.new]
       87 LOADK                            R11 K8 ["Part"]
       88 MOVE                             R12 R0
       89 CALL                             R10 2 1
       90 LOADK                            R11 K24 [{1, 1, 1}]
       91 SETTABLEKS                       R11 R10 K10 ["Size"]
       93 LOADK                            R12 K25 ["Tip"]
       94 MOVE                             R13 R7
       95 CONCAT                           R11 R12 R13
       96 SETTABLEKS                       R11 R10 K14 ["Name"]
       98 SUBK                             R13 R7 K28 [1]
       99 MULK                             R12 R13 K27 [0.523598333333333]
      100 ADDK                             R11 R12 K26 [-0.7853975]
      101 GETIMPORT                        R12 K31 [CFrame.fromEulerAnglesXYZ]
      103 LOADN                            R13 0
      104 MOVE                             R14 R11
      105 LOADN                            R15 0
      106 CALL                             R12 3 1
      107 LOADK                            R15 K32 [{3.5, 0, 0}]
      108 MUL                              R14 R12 R15
      109 ADD                              R13 R12 R14
      110 SETTABLEKS                       R13 R8 K29 ["CFrame"]
      112 LOADK                            R15 K33 [{7, 0, 0}]
      113 MUL                              R14 R12 R15
      114 ADD                              R13 R12 R14
      115 SETTABLEKS                       R13 R9 K29 ["CFrame"]
      117 LOADK                            R15 K34 [{9, 0, 0}]
      118 MUL                              R14 R12 R15
      119 ADD                              R13 R12 R14
      120 SETTABLEKS                       R13 R10 K29 ["CFrame"]
      122 GETIMPORT                        R13 K2 [Instance.new]
      124 LOADK                            R14 K35 ["Attachment"]
      125 MOVE                             R15 R2
      126 CALL                             R13 2 1
      127 GETIMPORT                        R14 K2 [Instance.new]
      129 LOADK                            R15 K35 ["Attachment"]
      130 MOVE                             R16 R8
      131 CALL                             R14 2 1
      132 GETTABLEKS                       R16 R8 K14 ["Name"]
      134 LOADK                            R17 K35 ["Attachment"]
      135 CONCAT                           R15 R16 R17
      136 SETTABLEKS                       R15 R13 K14 ["Name"]
      138 GETTABLEKS                       R16 R8 K14 ["Name"]
      140 LOADK                            R17 K35 ["Attachment"]
      141 CONCAT                           R15 R16 R17
      142 SETTABLEKS                       R15 R14 K14 ["Name"]
      144 LOADN                            R16 0
      145 MULK                             R18 R11 K37 [180]
      146 DIVK                             R17 R18 K36 [3.14159]
      147 LOADN                            R18 0
      148 FASTCALL                         VECTOR ; [+2]
      149 GETIMPORT                        R15 K39 [Vector3.new]
      151 CALL                             R15 3 1
      152 SETTABLEKS                       R15 R13 K40 ["WorldOrientation"]
      154 LOADK                            R16 K41 [{1.5, 0.5, 0}]
      155 MUL                              R15 R12 R16
      156 SETTABLEKS                       R15 R13 K42 ["WorldPosition"]
      158 LOADK                            R16 K41 [{1.5, 0.5, 0}]
      159 MUL                              R15 R12 R16
      160 SETTABLEKS                       R15 R14 K42 ["WorldPosition"]
      162 GETIMPORT                        R15 K2 [Instance.new]
      164 LOADK                            R16 K35 ["Attachment"]
      165 MOVE                             R17 R8
      166 CALL                             R15 2 1
      167 GETIMPORT                        R16 K2 [Instance.new]
      169 LOADK                            R17 K35 ["Attachment"]
      170 MOVE                             R18 R9
      171 CALL                             R16 2 1
      172 GETTABLEKS                       R18 R9 K14 ["Name"]
      174 LOADK                            R19 K35 ["Attachment"]
      175 CONCAT                           R17 R18 R19
      176 SETTABLEKS                       R17 R15 K14 ["Name"]
      178 GETTABLEKS                       R18 R9 K14 ["Name"]
      180 LOADK                            R19 K35 ["Attachment"]
      181 CONCAT                           R17 R18 R19
      182 SETTABLEKS                       R17 R16 K14 ["Name"]
      184 LOADK                            R18 K43 [{5.5, 0.5, 0}]
      185 MUL                              R17 R12 R18
      186 SETTABLEKS                       R17 R15 K42 ["WorldPosition"]
      188 LOADK                            R18 K43 [{5.5, 0.5, 0}]
      189 MUL                              R17 R12 R18
      190 SETTABLEKS                       R17 R16 K42 ["WorldPosition"]
      192 LOADK                            R17 K44 [{0, 0, 1}]
      193 SETTABLEKS                       R17 R15 K45 ["Axis"]
      195 LOADK                            R17 K44 [{0, 0, 1}]
      196 SETTABLEKS                       R17 R16 K45 ["Axis"]
      198 GETIMPORT                        R17 K2 [Instance.new]
      200 LOADK                            R18 K35 ["Attachment"]
      201 MOVE                             R19 R9
      202 CALL                             R17 2 1
      203 GETIMPORT                        R18 K2 [Instance.new]
      205 LOADK                            R19 K35 ["Attachment"]
      206 MOVE                             R20 R10
      207 CALL                             R18 2 1
      208 GETTABLEKS                       R20 R10 K14 ["Name"]
      210 LOADK                            R21 K35 ["Attachment"]
      211 CONCAT                           R19 R20 R21
      212 SETTABLEKS                       R19 R17 K14 ["Name"]
      214 GETTABLEKS                       R20 R10 K14 ["Name"]
      216 LOADK                            R21 K35 ["Attachment"]
      217 CONCAT                           R19 R20 R21
      218 SETTABLEKS                       R19 R18 K14 ["Name"]
      220 LOADK                            R20 K46 [{8.5, 0.5, 0}]
      221 MUL                              R19 R12 R20
      222 SETTABLEKS                       R19 R17 K42 ["WorldPosition"]
      224 LOADK                            R20 K46 [{8.5, 0.5, 0}]
      225 MUL                              R19 R12 R20
      226 SETTABLEKS                       R19 R18 K42 ["WorldPosition"]
      228 LOADK                            R19 K44 [{0, 0, 1}]
      229 SETTABLEKS                       R19 R17 K45 ["Axis"]
      231 LOADK                            R19 K44 [{0, 0, 1}]
      232 SETTABLEKS                       R19 R18 K45 ["Axis"]
      234 GETIMPORT                        R19 K2 [Instance.new]
      236 LOADK                            R20 K47 ["BallSocketConstraint"]
      237 MOVE                             R21 R0
      238 CALL                             R19 2 1
      239 SETTABLEKS                       R13 R19 K48 ["Attachment0"]
      241 SETTABLEKS                       R14 R19 K49 ["Attachment1"]
      243 LOADB                            R20 1
      244 SETTABLEKS                       R20 R19 K50 ["LimitsEnabled"]
      246 LOADN                            R20 135
      247 SETTABLEKS                       R20 R19 K51 ["UpperAngle"]
      249 LOADB                            R20 1
      250 SETTABLEKS                       R20 R19 K52 ["TwistLimitsEnabled"]
      252 LOADN                            R20 253
      253 SETTABLEKS                       R20 R19 K53 ["TwistLowerAngle"]
      255 LOADN                            R20 3
      256 SETTABLEKS                       R20 R19 K54 ["TwistUpperAngle"]
      258 LOADB                            R20 0
      259 SETTABLEKS                       R20 R19 K55 ["Enabled"]
      261 LOADK                            R21 K21 ["UpperLeg"]
      262 MOVE                             R22 R7
      263 LOADK                            R23 K56 ["Constraint"]
      264 CONCAT                           R20 R21 R23
      265 SETTABLEKS                       R20 R19 K14 ["Name"]
      267 GETIMPORT                        R20 K2 [Instance.new]
      269 LOADK                            R21 K57 ["HingeConstraint"]
      270 MOVE                             R22 R0
      271 CALL                             R20 2 1
      272 SETTABLEKS                       R15 R20 K48 ["Attachment0"]
      274 SETTABLEKS                       R16 R20 K49 ["Attachment1"]
      276 LOADB                            R21 1
      277 SETTABLEKS                       R21 R20 K50 ["LimitsEnabled"]
      279 LOADN                            R21 121
      280 SETTABLEKS                       R21 R20 K58 ["LowerAngle"]
      282 LOADN                            R21 246
      283 SETTABLEKS                       R21 R20 K51 ["UpperAngle"]
      285 LOADB                            R21 0
      286 SETTABLEKS                       R21 R20 K55 ["Enabled"]
      288 LOADK                            R22 K25 ["Tip"]
      289 MOVE                             R23 R7
      290 LOADK                            R24 K56 ["Constraint"]
      291 CONCAT                           R21 R22 R24
      292 SETTABLEKS                       R21 R20 K14 ["Name"]
      294 GETIMPORT                        R21 K2 [Instance.new]
      296 LOADK                            R22 K57 ["HingeConstraint"]
      297 MOVE                             R23 R0
      298 CALL                             R21 2 1
      299 SETTABLEKS                       R17 R21 K48 ["Attachment0"]
      301 SETTABLEKS                       R18 R21 K49 ["Attachment1"]
      303 LOADB                            R22 1
      304 SETTABLEKS                       R22 R21 K50 ["LimitsEnabled"]
      306 LOADN                            R22 121
      307 SETTABLEKS                       R22 R21 K58 ["LowerAngle"]
      309 LOADN                            R22 246
      310 SETTABLEKS                       R22 R21 K51 ["UpperAngle"]
      312 LOADB                            R22 0
      313 SETTABLEKS                       R22 R21 K55 ["Enabled"]
      315 LOADK                            R23 K23 ["LowerLeg"]
      316 MOVE                             R24 R7
      317 LOADK                            R25 K56 ["Constraint"]
      318 CONCAT                           R22 R23 R25
      319 SETTABLEKS                       R22 R21 K14 ["Name"]
      321 GETIMPORT                        R22 K2 [Instance.new]
      323 LOADK                            R23 K16 ["Motor6D"]
      324 CALL                             R22 1 1
      325 SETTABLEKS                       R2 R22 K17 ["Part0"]
      327 SETTABLEKS                       R8 R22 K18 ["Part1"]
      329 GETIMPORT                        R23 K60 [CFrame.fromMatrix]
      331 GETTABLEKS                       R24 R13 K61 ["Position"]
      333 GETTABLEKS                       R25 R14 K62 ["WorldAxis"]
      335 GETTABLEKS                       R26 R14 K63 ["WorldSecondaryAxis"]
      337 CALL                             R23 3 1
      338 SETTABLEKS                       R23 R22 K64 ["C0"]
      340 GETTABLEKS                       R25 R8 K29 ["CFrame"]
      342 NAMECALL                         R25 R25 K65 ["inverse"]
      344 CALL                             R25 1 1
      345 GETTABLEKS                       R26 R2 K29 ["CFrame"]
      347 MUL                              R24 R25 R26
      348 GETTABLEKS                       R25 R22 K64 ["C0"]
      350 MUL                              R23 R24 R25
      351 SETTABLEKS                       R23 R22 K66 ["C1"]
      353 SETTABLEKS                       R8 R22 K7 ["Parent"]
      355 LOADK                            R24 K21 ["UpperLeg"]
      356 MOVE                             R25 R7
      357 LOADK                            R26 K67 ["Motor"]
      358 CONCAT                           R23 R24 R26
      359 SETTABLEKS                       R23 R22 K14 ["Name"]
      361 GETIMPORT                        R23 K2 [Instance.new]
      363 LOADK                            R24 K16 ["Motor6D"]
      364 CALL                             R23 1 1
      365 SETTABLEKS                       R8 R23 K17 ["Part0"]
      367 SETTABLEKS                       R9 R23 K18 ["Part1"]
      369 GETIMPORT                        R24 K60 [CFrame.fromMatrix]
      371 GETTABLEKS                       R25 R15 K61 ["Position"]
      373 GETTABLEKS                       R26 R15 K45 ["Axis"]
      375 GETTABLEKS                       R27 R15 K68 ["SecondaryAxis"]
      377 CALL                             R24 3 1
      378 SETTABLEKS                       R24 R23 K64 ["C0"]
      380 GETTABLEKS                       R26 R9 K29 ["CFrame"]
      382 NAMECALL                         R26 R26 K65 ["inverse"]
      384 CALL                             R26 1 1
      385 GETTABLEKS                       R27 R8 K29 ["CFrame"]
      387 MUL                              R25 R26 R27
      388 GETTABLEKS                       R26 R23 K64 ["C0"]
      390 MUL                              R24 R25 R26
      391 SETTABLEKS                       R24 R23 K66 ["C1"]
      393 SETTABLEKS                       R9 R23 K7 ["Parent"]
      395 LOADK                            R25 K23 ["LowerLeg"]
      396 MOVE                             R26 R7
      397 LOADK                            R27 K67 ["Motor"]
      398 CONCAT                           R24 R25 R27
      399 SETTABLEKS                       R24 R23 K14 ["Name"]
      401 GETIMPORT                        R24 K2 [Instance.new]
      403 LOADK                            R25 K16 ["Motor6D"]
      404 CALL                             R24 1 1
      405 SETTABLEKS                       R9 R24 K17 ["Part0"]
      407 SETTABLEKS                       R10 R24 K18 ["Part1"]
      409 GETIMPORT                        R25 K60 [CFrame.fromMatrix]
      411 GETTABLEKS                       R26 R17 K61 ["Position"]
      413 GETTABLEKS                       R27 R17 K45 ["Axis"]
      415 GETTABLEKS                       R28 R17 K68 ["SecondaryAxis"]
      417 CALL                             R25 3 1
      418 SETTABLEKS                       R25 R24 K64 ["C0"]
      420 GETTABLEKS                       R27 R10 K29 ["CFrame"]
      422 NAMECALL                         R27 R27 K65 ["inverse"]
      424 CALL                             R27 1 1
      425 GETTABLEKS                       R28 R9 K29 ["CFrame"]
      427 MUL                              R26 R27 R28
      428 GETTABLEKS                       R27 R24 K64 ["C0"]
      430 MUL                              R25 R26 R27
      431 SETTABLEKS                       R25 R24 K66 ["C1"]
      433 SETTABLEKS                       R10 R24 K7 ["Parent"]
      435 LOADK                            R26 K25 ["Tip"]
      436 MOVE                             R27 R7
      437 LOADK                            R28 K67 ["Motor"]
      438 CONCAT                           R25 R26 R28
      439 SETTABLEKS                       R25 R24 K14 ["Name"]
      441 FORNLOOP                         R5
      442 LOADN                            R7 1
      443 LOADN                            R5 4
      444 LOADN                            R6 1
      445 FORNPREP                         R5
      446 GETIMPORT                        R8 K2 [Instance.new]
      448 LOADK                            R9 K8 ["Part"]
      449 MOVE                             R10 R0
      450 CALL                             R8 2 1
      451 LOADK                            R9 K20 [{4, 1, 1}]
      452 SETTABLEKS                       R9 R8 K10 ["Size"]
      454 LOADK                            R10 K21 ["UpperLeg"]
      455 ADDK                             R11 R7 K69 [4]
      456 CONCAT                           R9 R10 R11
      457 SETTABLEKS                       R9 R8 K14 ["Name"]
      459 GETIMPORT                        R9 K2 [Instance.new]
      461 LOADK                            R10 K8 ["Part"]
      462 MOVE                             R11 R0
      463 CALL                             R9 2 1
      464 LOADK                            R10 K22 [{3, 1, 1}]
      465 SETTABLEKS                       R10 R9 K10 ["Size"]
      467 LOADK                            R11 K23 ["LowerLeg"]
      468 ADDK                             R12 R7 K69 [4]
      469 CONCAT                           R10 R11 R12
      470 SETTABLEKS                       R10 R9 K14 ["Name"]
      472 GETIMPORT                        R10 K2 [Instance.new]
      474 LOADK                            R11 K8 ["Part"]
      475 MOVE                             R12 R0
      476 CALL                             R10 2 1
      477 LOADK                            R11 K24 [{1, 1, 1}]
      478 SETTABLEKS                       R11 R10 K10 ["Size"]
      480 LOADK                            R12 K25 ["Tip"]
      481 ADDK                             R13 R7 K69 [4]
      482 CONCAT                           R11 R12 R13
      483 SETTABLEKS                       R11 R10 K14 ["Name"]
      485 SUBK                             R13 R7 K28 [1]
      486 MULK                             R12 R13 K27 [0.523598333333333]
      487 ADDK                             R11 R12 K26 [-0.7853975]
      488 GETIMPORT                        R12 K31 [CFrame.fromEulerAnglesXYZ]
      490 LOADN                            R13 0
      491 MOVE                             R14 R11
      492 LOADN                            R15 0
      493 CALL                             R12 3 1
      494 LOADK                            R15 K70 [{-3.5, 0, 0}]
      495 MUL                              R14 R12 R15
      496 ADD                              R13 R12 R14
      497 SETTABLEKS                       R13 R8 K29 ["CFrame"]
      499 LOADK                            R15 K71 [{-7, 0, 0}]
      500 MUL                              R14 R12 R15
      501 ADD                              R13 R12 R14
      502 SETTABLEKS                       R13 R9 K29 ["CFrame"]
      504 LOADK                            R15 K72 [{-9, 0, 0}]
      505 MUL                              R14 R12 R15
      506 ADD                              R13 R12 R14
      507 SETTABLEKS                       R13 R10 K29 ["CFrame"]
      509 GETIMPORT                        R13 K2 [Instance.new]
      511 LOADK                            R14 K35 ["Attachment"]
      512 MOVE                             R15 R2
      513 CALL                             R13 2 1
      514 GETIMPORT                        R14 K2 [Instance.new]
      516 LOADK                            R15 K35 ["Attachment"]
      517 MOVE                             R16 R8
      518 CALL                             R14 2 1
      519 GETTABLEKS                       R16 R8 K14 ["Name"]
      521 LOADK                            R17 K35 ["Attachment"]
      522 CONCAT                           R15 R16 R17
      523 SETTABLEKS                       R15 R13 K14 ["Name"]
      525 GETTABLEKS                       R16 R8 K14 ["Name"]
      527 LOADK                            R17 K35 ["Attachment"]
      528 CONCAT                           R15 R16 R17
      529 SETTABLEKS                       R15 R14 K14 ["Name"]
      531 LOADN                            R16 0
      532 MULK                             R18 R11 K37 [180]
      533 DIVK                             R17 R18 K36 [3.14159]
      534 LOADN                            R18 0
      535 FASTCALL                         VECTOR ; [+2]
      536 GETIMPORT                        R15 K39 [Vector3.new]
      538 CALL                             R15 3 1
      539 SETTABLEKS                       R15 R13 K40 ["WorldOrientation"]
      541 LOADK                            R16 K73 [{-1.5, 0.5, 0}]
      542 MUL                              R15 R12 R16
      543 SETTABLEKS                       R15 R13 K42 ["WorldPosition"]
      545 LOADK                            R16 K73 [{-1.5, 0.5, 0}]
      546 MUL                              R15 R12 R16
      547 SETTABLEKS                       R15 R14 K42 ["WorldPosition"]
      549 GETIMPORT                        R15 K2 [Instance.new]
      551 LOADK                            R16 K35 ["Attachment"]
      552 MOVE                             R17 R8
      553 CALL                             R15 2 1
      554 GETIMPORT                        R16 K2 [Instance.new]
      556 LOADK                            R17 K35 ["Attachment"]
      557 MOVE                             R18 R9
      558 CALL                             R16 2 1
      559 GETTABLEKS                       R18 R9 K14 ["Name"]
      561 LOADK                            R19 K35 ["Attachment"]
      562 CONCAT                           R17 R18 R19
      563 SETTABLEKS                       R17 R15 K14 ["Name"]
      565 GETTABLEKS                       R18 R9 K14 ["Name"]
      567 LOADK                            R19 K35 ["Attachment"]
      568 CONCAT                           R17 R18 R19
      569 SETTABLEKS                       R17 R16 K14 ["Name"]
      571 LOADK                            R18 K74 [{-5.5, 0.5, 0}]
      572 MUL                              R17 R12 R18
      573 SETTABLEKS                       R17 R15 K42 ["WorldPosition"]
      575 LOADK                            R18 K74 [{-5.5, 0.5, 0}]
      576 MUL                              R17 R12 R18
      577 SETTABLEKS                       R17 R16 K42 ["WorldPosition"]
      579 LOADK                            R17 K44 [{0, 0, 1}]
      580 SETTABLEKS                       R17 R15 K45 ["Axis"]
      582 LOADK                            R17 K44 [{0, 0, 1}]
      583 SETTABLEKS                       R17 R16 K45 ["Axis"]
      585 GETIMPORT                        R17 K2 [Instance.new]
      587 LOADK                            R18 K35 ["Attachment"]
      588 MOVE                             R19 R9
      589 CALL                             R17 2 1
      590 GETIMPORT                        R18 K2 [Instance.new]
      592 LOADK                            R19 K35 ["Attachment"]
      593 MOVE                             R20 R10
      594 CALL                             R18 2 1
      595 GETTABLEKS                       R20 R10 K14 ["Name"]
      597 LOADK                            R21 K35 ["Attachment"]
      598 CONCAT                           R19 R20 R21
      599 SETTABLEKS                       R19 R17 K14 ["Name"]
      601 GETTABLEKS                       R20 R10 K14 ["Name"]
      603 LOADK                            R21 K35 ["Attachment"]
      604 CONCAT                           R19 R20 R21
      605 SETTABLEKS                       R19 R18 K14 ["Name"]
      607 LOADK                            R20 K75 [{-8.5, 0.5, 0}]
      608 MUL                              R19 R12 R20
      609 SETTABLEKS                       R19 R17 K42 ["WorldPosition"]
      611 LOADK                            R20 K75 [{-8.5, 0.5, 0}]
      612 MUL                              R19 R12 R20
      613 SETTABLEKS                       R19 R18 K42 ["WorldPosition"]
      615 LOADK                            R19 K44 [{0, 0, 1}]
      616 SETTABLEKS                       R19 R17 K45 ["Axis"]
      618 LOADK                            R19 K44 [{0, 0, 1}]
      619 SETTABLEKS                       R19 R18 K45 ["Axis"]
      621 GETIMPORT                        R19 K2 [Instance.new]
      623 LOADK                            R20 K47 ["BallSocketConstraint"]
      624 MOVE                             R21 R0
      625 CALL                             R19 2 1
      626 SETTABLEKS                       R13 R19 K48 ["Attachment0"]
      628 SETTABLEKS                       R14 R19 K49 ["Attachment1"]
      630 LOADB                            R20 1
      631 SETTABLEKS                       R20 R19 K50 ["LimitsEnabled"]
      633 LOADN                            R20 135
      634 SETTABLEKS                       R20 R19 K51 ["UpperAngle"]
      636 LOADB                            R20 1
      637 SETTABLEKS                       R20 R19 K52 ["TwistLimitsEnabled"]
      639 LOADN                            R20 253
      640 SETTABLEKS                       R20 R19 K53 ["TwistLowerAngle"]
      642 LOADN                            R20 3
      643 SETTABLEKS                       R20 R19 K54 ["TwistUpperAngle"]
      645 LOADB                            R20 0
      646 SETTABLEKS                       R20 R19 K55 ["Enabled"]
      648 LOADK                            R21 K21 ["UpperLeg"]
      649 ADDK                             R22 R7 K69 [4]
      650 LOADK                            R23 K56 ["Constraint"]
      651 CONCAT                           R20 R21 R23
      652 SETTABLEKS                       R20 R19 K14 ["Name"]
      654 GETIMPORT                        R20 K2 [Instance.new]
      656 LOADK                            R21 K57 ["HingeConstraint"]
      657 MOVE                             R22 R0
      658 CALL                             R20 2 1
      659 SETTABLEKS                       R15 R20 K48 ["Attachment0"]
      661 SETTABLEKS                       R16 R20 K49 ["Attachment1"]
      663 LOADB                            R21 1
      664 SETTABLEKS                       R21 R20 K50 ["LimitsEnabled"]
      666 LOADN                            R21 10
      667 SETTABLEKS                       R21 R20 K58 ["LowerAngle"]
      669 LOADN                            R21 135
      670 SETTABLEKS                       R21 R20 K51 ["UpperAngle"]
      672 LOADB                            R21 0
      673 SETTABLEKS                       R21 R20 K55 ["Enabled"]
      675 LOADK                            R22 K23 ["LowerLeg"]
      676 ADDK                             R23 R7 K69 [4]
      677 LOADK                            R24 K56 ["Constraint"]
      678 CONCAT                           R21 R22 R24
      679 SETTABLEKS                       R21 R20 K14 ["Name"]
      681 GETIMPORT                        R21 K2 [Instance.new]
      683 LOADK                            R22 K57 ["HingeConstraint"]
      684 MOVE                             R23 R0
      685 CALL                             R21 2 1
      686 SETTABLEKS                       R17 R21 K48 ["Attachment0"]
      688 SETTABLEKS                       R18 R21 K49 ["Attachment1"]
      690 LOADB                            R22 1
      691 SETTABLEKS                       R22 R21 K50 ["LimitsEnabled"]
      693 LOADN                            R22 10
      694 SETTABLEKS                       R22 R21 K58 ["LowerAngle"]
      696 LOADN                            R22 135
      697 SETTABLEKS                       R22 R21 K51 ["UpperAngle"]
      699 LOADB                            R22 0
      700 SETTABLEKS                       R22 R21 K55 ["Enabled"]
      702 LOADK                            R23 K25 ["Tip"]
      703 ADDK                             R24 R7 K69 [4]
      704 LOADK                            R25 K56 ["Constraint"]
      705 CONCAT                           R22 R23 R25
      706 SETTABLEKS                       R22 R21 K14 ["Name"]
      708 GETIMPORT                        R22 K2 [Instance.new]
      710 LOADK                            R23 K16 ["Motor6D"]
      711 CALL                             R22 1 1
      712 SETTABLEKS                       R2 R22 K17 ["Part0"]
      714 SETTABLEKS                       R8 R22 K18 ["Part1"]
      716 GETIMPORT                        R23 K60 [CFrame.fromMatrix]
      718 GETTABLEKS                       R24 R13 K61 ["Position"]
      720 GETTABLEKS                       R25 R14 K62 ["WorldAxis"]
      722 GETTABLEKS                       R26 R14 K63 ["WorldSecondaryAxis"]
      724 CALL                             R23 3 1
      725 SETTABLEKS                       R23 R22 K64 ["C0"]
      727 GETTABLEKS                       R25 R8 K29 ["CFrame"]
      729 NAMECALL                         R25 R25 K65 ["inverse"]
      731 CALL                             R25 1 1
      732 GETTABLEKS                       R26 R2 K29 ["CFrame"]
      734 MUL                              R24 R25 R26
      735 GETTABLEKS                       R25 R22 K64 ["C0"]
      737 MUL                              R23 R24 R25
      738 SETTABLEKS                       R23 R22 K66 ["C1"]
      740 SETTABLEKS                       R8 R22 K7 ["Parent"]
      742 LOADK                            R24 K21 ["UpperLeg"]
      743 ADDK                             R25 R7 K69 [4]
      744 LOADK                            R26 K67 ["Motor"]
      745 CONCAT                           R23 R24 R26
      746 SETTABLEKS                       R23 R22 K14 ["Name"]
      748 GETIMPORT                        R23 K2 [Instance.new]
      750 LOADK                            R24 K16 ["Motor6D"]
      751 CALL                             R23 1 1
      752 SETTABLEKS                       R8 R23 K17 ["Part0"]
      754 SETTABLEKS                       R9 R23 K18 ["Part1"]
      756 GETIMPORT                        R24 K60 [CFrame.fromMatrix]
      758 GETTABLEKS                       R25 R15 K61 ["Position"]
      760 GETTABLEKS                       R26 R15 K45 ["Axis"]
      762 GETTABLEKS                       R27 R15 K68 ["SecondaryAxis"]
      764 CALL                             R24 3 1
      765 SETTABLEKS                       R24 R23 K64 ["C0"]
      767 GETTABLEKS                       R26 R9 K29 ["CFrame"]
      769 NAMECALL                         R26 R26 K65 ["inverse"]
      771 CALL                             R26 1 1
      772 GETTABLEKS                       R27 R8 K29 ["CFrame"]
      774 MUL                              R25 R26 R27
      775 GETTABLEKS                       R26 R23 K64 ["C0"]
      777 MUL                              R24 R25 R26
      778 SETTABLEKS                       R24 R23 K66 ["C1"]
      780 SETTABLEKS                       R9 R23 K7 ["Parent"]
      782 LOADK                            R25 K23 ["LowerLeg"]
      783 ADDK                             R26 R7 K69 [4]
      784 LOADK                            R27 K67 ["Motor"]
      785 CONCAT                           R24 R25 R27
      786 SETTABLEKS                       R24 R23 K14 ["Name"]
      788 GETIMPORT                        R24 K2 [Instance.new]
      790 LOADK                            R25 K16 ["Motor6D"]
      791 CALL                             R24 1 1
      792 SETTABLEKS                       R9 R24 K17 ["Part0"]
      794 SETTABLEKS                       R10 R24 K18 ["Part1"]
      796 GETIMPORT                        R25 K60 [CFrame.fromMatrix]
      798 GETTABLEKS                       R26 R17 K61 ["Position"]
      800 GETTABLEKS                       R27 R17 K45 ["Axis"]
      802 GETTABLEKS                       R28 R17 K68 ["SecondaryAxis"]
      804 CALL                             R25 3 1
      805 SETTABLEKS                       R25 R24 K64 ["C0"]
      807 GETTABLEKS                       R27 R10 K29 ["CFrame"]
      809 NAMECALL                         R27 R27 K65 ["inverse"]
      811 CALL                             R27 1 1
      812 GETTABLEKS                       R28 R9 K29 ["CFrame"]
      814 MUL                              R26 R27 R28
      815 GETTABLEKS                       R27 R24 K64 ["C0"]
      817 MUL                              R25 R26 R27
      818 SETTABLEKS                       R25 R24 K66 ["C1"]
      820 SETTABLEKS                       R10 R24 K7 ["Parent"]
      822 LOADK                            R26 K25 ["Tip"]
      823 ADDK                             R27 R7 K69 [4]
      824 LOADK                            R28 K67 ["Motor"]
      825 CONCAT                           R25 R26 R28
      826 SETTABLEKS                       R25 R24 K14 ["Name"]
      828 FORNLOOP                         R5
      829 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
