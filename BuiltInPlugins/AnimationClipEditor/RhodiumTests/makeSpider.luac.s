PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R2 K5 [game]
        6 GETTABLEKS                       R1 R2 K6 ["Workspace"]
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
       98 LOADK                            R12 K26 [-0.7853975]
       99 SUBK                             R14 R7 K28 [1]
      100 MULK                             R13 R14 K27 [0.523598333333333]
      101 ADD                              R11 R12 R13
      102 GETIMPORT                        R12 K31 [CFrame.fromEulerAnglesXYZ]
      104 LOADN                            R13 0
      105 MOVE                             R14 R11
      106 LOADN                            R15 0
      107 CALL                             R12 3 1
      108 LOADK                            R15 K32 [{3.5, 0, 0}]
      109 MUL                              R14 R12 R15
      110 ADD                              R13 R12 R14
      111 SETTABLEKS                       R13 R8 K29 ["CFrame"]
      113 LOADK                            R15 K33 [{7, 0, 0}]
      114 MUL                              R14 R12 R15
      115 ADD                              R13 R12 R14
      116 SETTABLEKS                       R13 R9 K29 ["CFrame"]
      118 LOADK                            R15 K34 [{9, 0, 0}]
      119 MUL                              R14 R12 R15
      120 ADD                              R13 R12 R14
      121 SETTABLEKS                       R13 R10 K29 ["CFrame"]
      123 GETIMPORT                        R13 K2 [Instance.new]
      125 LOADK                            R14 K35 ["Attachment"]
      126 MOVE                             R15 R2
      127 CALL                             R13 2 1
      128 GETIMPORT                        R14 K2 [Instance.new]
      130 LOADK                            R15 K35 ["Attachment"]
      131 MOVE                             R16 R8
      132 CALL                             R14 2 1
      133 GETTABLEKS                       R16 R8 K14 ["Name"]
      135 LOADK                            R17 K35 ["Attachment"]
      136 CONCAT                           R15 R16 R17
      137 SETTABLEKS                       R15 R13 K14 ["Name"]
      139 GETTABLEKS                       R16 R8 K14 ["Name"]
      141 LOADK                            R17 K35 ["Attachment"]
      142 CONCAT                           R15 R16 R17
      143 SETTABLEKS                       R15 R14 K14 ["Name"]
      145 LOADN                            R16 0
      146 MULK                             R18 R11 K37 [180]
      147 DIVK                             R17 R18 K36 [3.14159]
      148 LOADN                            R18 0
      149 FASTCALL                         VECTOR ; [+2]
      150 GETIMPORT                        R15 K39 [Vector3.new]
      152 CALL                             R15 3 1
      153 SETTABLEKS                       R15 R13 K40 ["WorldOrientation"]
      155 LOADK                            R16 K41 [{1.5, 0.5, 0}]
      156 MUL                              R15 R12 R16
      157 SETTABLEKS                       R15 R13 K42 ["WorldPosition"]
      159 LOADK                            R16 K41 [{1.5, 0.5, 0}]
      160 MUL                              R15 R12 R16
      161 SETTABLEKS                       R15 R14 K42 ["WorldPosition"]
      163 GETIMPORT                        R15 K2 [Instance.new]
      165 LOADK                            R16 K35 ["Attachment"]
      166 MOVE                             R17 R8
      167 CALL                             R15 2 1
      168 GETIMPORT                        R16 K2 [Instance.new]
      170 LOADK                            R17 K35 ["Attachment"]
      171 MOVE                             R18 R9
      172 CALL                             R16 2 1
      173 GETTABLEKS                       R18 R9 K14 ["Name"]
      175 LOADK                            R19 K35 ["Attachment"]
      176 CONCAT                           R17 R18 R19
      177 SETTABLEKS                       R17 R15 K14 ["Name"]
      179 GETTABLEKS                       R18 R9 K14 ["Name"]
      181 LOADK                            R19 K35 ["Attachment"]
      182 CONCAT                           R17 R18 R19
      183 SETTABLEKS                       R17 R16 K14 ["Name"]
      185 LOADK                            R18 K43 [{5.5, 0.5, 0}]
      186 MUL                              R17 R12 R18
      187 SETTABLEKS                       R17 R15 K42 ["WorldPosition"]
      189 LOADK                            R18 K43 [{5.5, 0.5, 0}]
      190 MUL                              R17 R12 R18
      191 SETTABLEKS                       R17 R16 K42 ["WorldPosition"]
      193 LOADK                            R17 K44 [{0, 0, 1}]
      194 SETTABLEKS                       R17 R15 K45 ["Axis"]
      196 LOADK                            R17 K44 [{0, 0, 1}]
      197 SETTABLEKS                       R17 R16 K45 ["Axis"]
      199 GETIMPORT                        R17 K2 [Instance.new]
      201 LOADK                            R18 K35 ["Attachment"]
      202 MOVE                             R19 R9
      203 CALL                             R17 2 1
      204 GETIMPORT                        R18 K2 [Instance.new]
      206 LOADK                            R19 K35 ["Attachment"]
      207 MOVE                             R20 R10
      208 CALL                             R18 2 1
      209 GETTABLEKS                       R20 R10 K14 ["Name"]
      211 LOADK                            R21 K35 ["Attachment"]
      212 CONCAT                           R19 R20 R21
      213 SETTABLEKS                       R19 R17 K14 ["Name"]
      215 GETTABLEKS                       R20 R10 K14 ["Name"]
      217 LOADK                            R21 K35 ["Attachment"]
      218 CONCAT                           R19 R20 R21
      219 SETTABLEKS                       R19 R18 K14 ["Name"]
      221 LOADK                            R20 K46 [{8.5, 0.5, 0}]
      222 MUL                              R19 R12 R20
      223 SETTABLEKS                       R19 R17 K42 ["WorldPosition"]
      225 LOADK                            R20 K46 [{8.5, 0.5, 0}]
      226 MUL                              R19 R12 R20
      227 SETTABLEKS                       R19 R18 K42 ["WorldPosition"]
      229 LOADK                            R19 K44 [{0, 0, 1}]
      230 SETTABLEKS                       R19 R17 K45 ["Axis"]
      232 LOADK                            R19 K44 [{0, 0, 1}]
      233 SETTABLEKS                       R19 R18 K45 ["Axis"]
      235 GETIMPORT                        R19 K2 [Instance.new]
      237 LOADK                            R20 K47 ["BallSocketConstraint"]
      238 MOVE                             R21 R0
      239 CALL                             R19 2 1
      240 SETTABLEKS                       R13 R19 K48 ["Attachment0"]
      242 SETTABLEKS                       R14 R19 K49 ["Attachment1"]
      244 LOADB                            R20 1
      245 SETTABLEKS                       R20 R19 K50 ["LimitsEnabled"]
      247 LOADN                            R20 135
      248 SETTABLEKS                       R20 R19 K51 ["UpperAngle"]
      250 LOADB                            R20 1
      251 SETTABLEKS                       R20 R19 K52 ["TwistLimitsEnabled"]
      253 LOADN                            R20 253
      254 SETTABLEKS                       R20 R19 K53 ["TwistLowerAngle"]
      256 LOADN                            R20 3
      257 SETTABLEKS                       R20 R19 K54 ["TwistUpperAngle"]
      259 LOADB                            R20 0
      260 SETTABLEKS                       R20 R19 K55 ["Enabled"]
      262 LOADK                            R21 K21 ["UpperLeg"]
      263 MOVE                             R22 R7
      264 LOADK                            R23 K56 ["Constraint"]
      265 CONCAT                           R20 R21 R23
      266 SETTABLEKS                       R20 R19 K14 ["Name"]
      268 GETIMPORT                        R20 K2 [Instance.new]
      270 LOADK                            R21 K57 ["HingeConstraint"]
      271 MOVE                             R22 R0
      272 CALL                             R20 2 1
      273 SETTABLEKS                       R15 R20 K48 ["Attachment0"]
      275 SETTABLEKS                       R16 R20 K49 ["Attachment1"]
      277 LOADB                            R21 1
      278 SETTABLEKS                       R21 R20 K50 ["LimitsEnabled"]
      280 LOADN                            R21 121
      281 SETTABLEKS                       R21 R20 K58 ["LowerAngle"]
      283 LOADN                            R21 246
      284 SETTABLEKS                       R21 R20 K51 ["UpperAngle"]
      286 LOADB                            R21 0
      287 SETTABLEKS                       R21 R20 K55 ["Enabled"]
      289 LOADK                            R22 K25 ["Tip"]
      290 MOVE                             R23 R7
      291 LOADK                            R24 K56 ["Constraint"]
      292 CONCAT                           R21 R22 R24
      293 SETTABLEKS                       R21 R20 K14 ["Name"]
      295 GETIMPORT                        R21 K2 [Instance.new]
      297 LOADK                            R22 K57 ["HingeConstraint"]
      298 MOVE                             R23 R0
      299 CALL                             R21 2 1
      300 SETTABLEKS                       R17 R21 K48 ["Attachment0"]
      302 SETTABLEKS                       R18 R21 K49 ["Attachment1"]
      304 LOADB                            R22 1
      305 SETTABLEKS                       R22 R21 K50 ["LimitsEnabled"]
      307 LOADN                            R22 121
      308 SETTABLEKS                       R22 R21 K58 ["LowerAngle"]
      310 LOADN                            R22 246
      311 SETTABLEKS                       R22 R21 K51 ["UpperAngle"]
      313 LOADB                            R22 0
      314 SETTABLEKS                       R22 R21 K55 ["Enabled"]
      316 LOADK                            R23 K23 ["LowerLeg"]
      317 MOVE                             R24 R7
      318 LOADK                            R25 K56 ["Constraint"]
      319 CONCAT                           R22 R23 R25
      320 SETTABLEKS                       R22 R21 K14 ["Name"]
      322 GETIMPORT                        R22 K2 [Instance.new]
      324 LOADK                            R23 K16 ["Motor6D"]
      325 CALL                             R22 1 1
      326 SETTABLEKS                       R2 R22 K17 ["Part0"]
      328 SETTABLEKS                       R8 R22 K18 ["Part1"]
      330 GETIMPORT                        R23 K60 [CFrame.fromMatrix]
      332 GETTABLEKS                       R24 R13 K61 ["Position"]
      334 GETTABLEKS                       R25 R14 K62 ["WorldAxis"]
      336 GETTABLEKS                       R26 R14 K63 ["WorldSecondaryAxis"]
      338 CALL                             R23 3 1
      339 SETTABLEKS                       R23 R22 K64 ["C0"]
      341 GETTABLEKS                       R25 R8 K29 ["CFrame"]
      343 NAMECALL                         R25 R25 K65 ["inverse"]
      345 CALL                             R25 1 1
      346 GETTABLEKS                       R26 R2 K29 ["CFrame"]
      348 MUL                              R24 R25 R26
      349 GETTABLEKS                       R25 R22 K64 ["C0"]
      351 MUL                              R23 R24 R25
      352 SETTABLEKS                       R23 R22 K66 ["C1"]
      354 SETTABLEKS                       R8 R22 K7 ["Parent"]
      356 LOADK                            R24 K21 ["UpperLeg"]
      357 MOVE                             R25 R7
      358 LOADK                            R26 K67 ["Motor"]
      359 CONCAT                           R23 R24 R26
      360 SETTABLEKS                       R23 R22 K14 ["Name"]
      362 GETIMPORT                        R23 K2 [Instance.new]
      364 LOADK                            R24 K16 ["Motor6D"]
      365 CALL                             R23 1 1
      366 SETTABLEKS                       R8 R23 K17 ["Part0"]
      368 SETTABLEKS                       R9 R23 K18 ["Part1"]
      370 GETIMPORT                        R24 K60 [CFrame.fromMatrix]
      372 GETTABLEKS                       R25 R15 K61 ["Position"]
      374 GETTABLEKS                       R26 R15 K45 ["Axis"]
      376 GETTABLEKS                       R27 R15 K68 ["SecondaryAxis"]
      378 CALL                             R24 3 1
      379 SETTABLEKS                       R24 R23 K64 ["C0"]
      381 GETTABLEKS                       R26 R9 K29 ["CFrame"]
      383 NAMECALL                         R26 R26 K65 ["inverse"]
      385 CALL                             R26 1 1
      386 GETTABLEKS                       R27 R8 K29 ["CFrame"]
      388 MUL                              R25 R26 R27
      389 GETTABLEKS                       R26 R23 K64 ["C0"]
      391 MUL                              R24 R25 R26
      392 SETTABLEKS                       R24 R23 K66 ["C1"]
      394 SETTABLEKS                       R9 R23 K7 ["Parent"]
      396 LOADK                            R25 K23 ["LowerLeg"]
      397 MOVE                             R26 R7
      398 LOADK                            R27 K67 ["Motor"]
      399 CONCAT                           R24 R25 R27
      400 SETTABLEKS                       R24 R23 K14 ["Name"]
      402 GETIMPORT                        R24 K2 [Instance.new]
      404 LOADK                            R25 K16 ["Motor6D"]
      405 CALL                             R24 1 1
      406 SETTABLEKS                       R9 R24 K17 ["Part0"]
      408 SETTABLEKS                       R10 R24 K18 ["Part1"]
      410 GETIMPORT                        R25 K60 [CFrame.fromMatrix]
      412 GETTABLEKS                       R26 R17 K61 ["Position"]
      414 GETTABLEKS                       R27 R17 K45 ["Axis"]
      416 GETTABLEKS                       R28 R17 K68 ["SecondaryAxis"]
      418 CALL                             R25 3 1
      419 SETTABLEKS                       R25 R24 K64 ["C0"]
      421 GETTABLEKS                       R27 R10 K29 ["CFrame"]
      423 NAMECALL                         R27 R27 K65 ["inverse"]
      425 CALL                             R27 1 1
      426 GETTABLEKS                       R28 R9 K29 ["CFrame"]
      428 MUL                              R26 R27 R28
      429 GETTABLEKS                       R27 R24 K64 ["C0"]
      431 MUL                              R25 R26 R27
      432 SETTABLEKS                       R25 R24 K66 ["C1"]
      434 SETTABLEKS                       R10 R24 K7 ["Parent"]
      436 LOADK                            R26 K25 ["Tip"]
      437 MOVE                             R27 R7
      438 LOADK                            R28 K67 ["Motor"]
      439 CONCAT                           R25 R26 R28
      440 SETTABLEKS                       R25 R24 K14 ["Name"]
      442 FORNLOOP                         R5
      443 LOADN                            R7 1
      444 LOADN                            R5 4
      445 LOADN                            R6 1
      446 FORNPREP                         R5
      447 GETIMPORT                        R8 K2 [Instance.new]
      449 LOADK                            R9 K8 ["Part"]
      450 MOVE                             R10 R0
      451 CALL                             R8 2 1
      452 LOADK                            R9 K20 [{4, 1, 1}]
      453 SETTABLEKS                       R9 R8 K10 ["Size"]
      455 LOADK                            R10 K21 ["UpperLeg"]
      456 ADDK                             R11 R7 K69 [4]
      457 CONCAT                           R9 R10 R11
      458 SETTABLEKS                       R9 R8 K14 ["Name"]
      460 GETIMPORT                        R9 K2 [Instance.new]
      462 LOADK                            R10 K8 ["Part"]
      463 MOVE                             R11 R0
      464 CALL                             R9 2 1
      465 LOADK                            R10 K22 [{3, 1, 1}]
      466 SETTABLEKS                       R10 R9 K10 ["Size"]
      468 LOADK                            R11 K23 ["LowerLeg"]
      469 ADDK                             R12 R7 K69 [4]
      470 CONCAT                           R10 R11 R12
      471 SETTABLEKS                       R10 R9 K14 ["Name"]
      473 GETIMPORT                        R10 K2 [Instance.new]
      475 LOADK                            R11 K8 ["Part"]
      476 MOVE                             R12 R0
      477 CALL                             R10 2 1
      478 LOADK                            R11 K24 [{1, 1, 1}]
      479 SETTABLEKS                       R11 R10 K10 ["Size"]
      481 LOADK                            R12 K25 ["Tip"]
      482 ADDK                             R13 R7 K69 [4]
      483 CONCAT                           R11 R12 R13
      484 SETTABLEKS                       R11 R10 K14 ["Name"]
      486 LOADK                            R12 K26 [-0.7853975]
      487 SUBK                             R14 R7 K28 [1]
      488 MULK                             R13 R14 K27 [0.523598333333333]
      489 ADD                              R11 R12 R13
      490 GETIMPORT                        R12 K31 [CFrame.fromEulerAnglesXYZ]
      492 LOADN                            R13 0
      493 MOVE                             R14 R11
      494 LOADN                            R15 0
      495 CALL                             R12 3 1
      496 LOADK                            R15 K70 [{-3.5, 0, 0}]
      497 MUL                              R14 R12 R15
      498 ADD                              R13 R12 R14
      499 SETTABLEKS                       R13 R8 K29 ["CFrame"]
      501 LOADK                            R15 K71 [{-7, 0, 0}]
      502 MUL                              R14 R12 R15
      503 ADD                              R13 R12 R14
      504 SETTABLEKS                       R13 R9 K29 ["CFrame"]
      506 LOADK                            R15 K72 [{-9, 0, 0}]
      507 MUL                              R14 R12 R15
      508 ADD                              R13 R12 R14
      509 SETTABLEKS                       R13 R10 K29 ["CFrame"]
      511 GETIMPORT                        R13 K2 [Instance.new]
      513 LOADK                            R14 K35 ["Attachment"]
      514 MOVE                             R15 R2
      515 CALL                             R13 2 1
      516 GETIMPORT                        R14 K2 [Instance.new]
      518 LOADK                            R15 K35 ["Attachment"]
      519 MOVE                             R16 R8
      520 CALL                             R14 2 1
      521 GETTABLEKS                       R16 R8 K14 ["Name"]
      523 LOADK                            R17 K35 ["Attachment"]
      524 CONCAT                           R15 R16 R17
      525 SETTABLEKS                       R15 R13 K14 ["Name"]
      527 GETTABLEKS                       R16 R8 K14 ["Name"]
      529 LOADK                            R17 K35 ["Attachment"]
      530 CONCAT                           R15 R16 R17
      531 SETTABLEKS                       R15 R14 K14 ["Name"]
      533 LOADN                            R16 0
      534 MULK                             R18 R11 K37 [180]
      535 DIVK                             R17 R18 K36 [3.14159]
      536 LOADN                            R18 0
      537 FASTCALL                         VECTOR ; [+2]
      538 GETIMPORT                        R15 K39 [Vector3.new]
      540 CALL                             R15 3 1
      541 SETTABLEKS                       R15 R13 K40 ["WorldOrientation"]
      543 LOADK                            R16 K73 [{-1.5, 0.5, 0}]
      544 MUL                              R15 R12 R16
      545 SETTABLEKS                       R15 R13 K42 ["WorldPosition"]
      547 LOADK                            R16 K73 [{-1.5, 0.5, 0}]
      548 MUL                              R15 R12 R16
      549 SETTABLEKS                       R15 R14 K42 ["WorldPosition"]
      551 GETIMPORT                        R15 K2 [Instance.new]
      553 LOADK                            R16 K35 ["Attachment"]
      554 MOVE                             R17 R8
      555 CALL                             R15 2 1
      556 GETIMPORT                        R16 K2 [Instance.new]
      558 LOADK                            R17 K35 ["Attachment"]
      559 MOVE                             R18 R9
      560 CALL                             R16 2 1
      561 GETTABLEKS                       R18 R9 K14 ["Name"]
      563 LOADK                            R19 K35 ["Attachment"]
      564 CONCAT                           R17 R18 R19
      565 SETTABLEKS                       R17 R15 K14 ["Name"]
      567 GETTABLEKS                       R18 R9 K14 ["Name"]
      569 LOADK                            R19 K35 ["Attachment"]
      570 CONCAT                           R17 R18 R19
      571 SETTABLEKS                       R17 R16 K14 ["Name"]
      573 LOADK                            R18 K74 [{-5.5, 0.5, 0}]
      574 MUL                              R17 R12 R18
      575 SETTABLEKS                       R17 R15 K42 ["WorldPosition"]
      577 LOADK                            R18 K74 [{-5.5, 0.5, 0}]
      578 MUL                              R17 R12 R18
      579 SETTABLEKS                       R17 R16 K42 ["WorldPosition"]
      581 LOADK                            R17 K44 [{0, 0, 1}]
      582 SETTABLEKS                       R17 R15 K45 ["Axis"]
      584 LOADK                            R17 K44 [{0, 0, 1}]
      585 SETTABLEKS                       R17 R16 K45 ["Axis"]
      587 GETIMPORT                        R17 K2 [Instance.new]
      589 LOADK                            R18 K35 ["Attachment"]
      590 MOVE                             R19 R9
      591 CALL                             R17 2 1
      592 GETIMPORT                        R18 K2 [Instance.new]
      594 LOADK                            R19 K35 ["Attachment"]
      595 MOVE                             R20 R10
      596 CALL                             R18 2 1
      597 GETTABLEKS                       R20 R10 K14 ["Name"]
      599 LOADK                            R21 K35 ["Attachment"]
      600 CONCAT                           R19 R20 R21
      601 SETTABLEKS                       R19 R17 K14 ["Name"]
      603 GETTABLEKS                       R20 R10 K14 ["Name"]
      605 LOADK                            R21 K35 ["Attachment"]
      606 CONCAT                           R19 R20 R21
      607 SETTABLEKS                       R19 R18 K14 ["Name"]
      609 LOADK                            R20 K75 [{-8.5, 0.5, 0}]
      610 MUL                              R19 R12 R20
      611 SETTABLEKS                       R19 R17 K42 ["WorldPosition"]
      613 LOADK                            R20 K75 [{-8.5, 0.5, 0}]
      614 MUL                              R19 R12 R20
      615 SETTABLEKS                       R19 R18 K42 ["WorldPosition"]
      617 LOADK                            R19 K44 [{0, 0, 1}]
      618 SETTABLEKS                       R19 R17 K45 ["Axis"]
      620 LOADK                            R19 K44 [{0, 0, 1}]
      621 SETTABLEKS                       R19 R18 K45 ["Axis"]
      623 GETIMPORT                        R19 K2 [Instance.new]
      625 LOADK                            R20 K47 ["BallSocketConstraint"]
      626 MOVE                             R21 R0
      627 CALL                             R19 2 1
      628 SETTABLEKS                       R13 R19 K48 ["Attachment0"]
      630 SETTABLEKS                       R14 R19 K49 ["Attachment1"]
      632 LOADB                            R20 1
      633 SETTABLEKS                       R20 R19 K50 ["LimitsEnabled"]
      635 LOADN                            R20 135
      636 SETTABLEKS                       R20 R19 K51 ["UpperAngle"]
      638 LOADB                            R20 1
      639 SETTABLEKS                       R20 R19 K52 ["TwistLimitsEnabled"]
      641 LOADN                            R20 253
      642 SETTABLEKS                       R20 R19 K53 ["TwistLowerAngle"]
      644 LOADN                            R20 3
      645 SETTABLEKS                       R20 R19 K54 ["TwistUpperAngle"]
      647 LOADB                            R20 0
      648 SETTABLEKS                       R20 R19 K55 ["Enabled"]
      650 LOADK                            R21 K21 ["UpperLeg"]
      651 ADDK                             R22 R7 K69 [4]
      652 LOADK                            R23 K56 ["Constraint"]
      653 CONCAT                           R20 R21 R23
      654 SETTABLEKS                       R20 R19 K14 ["Name"]
      656 GETIMPORT                        R20 K2 [Instance.new]
      658 LOADK                            R21 K57 ["HingeConstraint"]
      659 MOVE                             R22 R0
      660 CALL                             R20 2 1
      661 SETTABLEKS                       R15 R20 K48 ["Attachment0"]
      663 SETTABLEKS                       R16 R20 K49 ["Attachment1"]
      665 LOADB                            R21 1
      666 SETTABLEKS                       R21 R20 K50 ["LimitsEnabled"]
      668 LOADN                            R21 10
      669 SETTABLEKS                       R21 R20 K58 ["LowerAngle"]
      671 LOADN                            R21 135
      672 SETTABLEKS                       R21 R20 K51 ["UpperAngle"]
      674 LOADB                            R21 0
      675 SETTABLEKS                       R21 R20 K55 ["Enabled"]
      677 LOADK                            R22 K23 ["LowerLeg"]
      678 ADDK                             R23 R7 K69 [4]
      679 LOADK                            R24 K56 ["Constraint"]
      680 CONCAT                           R21 R22 R24
      681 SETTABLEKS                       R21 R20 K14 ["Name"]
      683 GETIMPORT                        R21 K2 [Instance.new]
      685 LOADK                            R22 K57 ["HingeConstraint"]
      686 MOVE                             R23 R0
      687 CALL                             R21 2 1
      688 SETTABLEKS                       R17 R21 K48 ["Attachment0"]
      690 SETTABLEKS                       R18 R21 K49 ["Attachment1"]
      692 LOADB                            R22 1
      693 SETTABLEKS                       R22 R21 K50 ["LimitsEnabled"]
      695 LOADN                            R22 10
      696 SETTABLEKS                       R22 R21 K58 ["LowerAngle"]
      698 LOADN                            R22 135
      699 SETTABLEKS                       R22 R21 K51 ["UpperAngle"]
      701 LOADB                            R22 0
      702 SETTABLEKS                       R22 R21 K55 ["Enabled"]
      704 LOADK                            R23 K25 ["Tip"]
      705 ADDK                             R24 R7 K69 [4]
      706 LOADK                            R25 K56 ["Constraint"]
      707 CONCAT                           R22 R23 R25
      708 SETTABLEKS                       R22 R21 K14 ["Name"]
      710 GETIMPORT                        R22 K2 [Instance.new]
      712 LOADK                            R23 K16 ["Motor6D"]
      713 CALL                             R22 1 1
      714 SETTABLEKS                       R2 R22 K17 ["Part0"]
      716 SETTABLEKS                       R8 R22 K18 ["Part1"]
      718 GETIMPORT                        R23 K60 [CFrame.fromMatrix]
      720 GETTABLEKS                       R24 R13 K61 ["Position"]
      722 GETTABLEKS                       R25 R14 K62 ["WorldAxis"]
      724 GETTABLEKS                       R26 R14 K63 ["WorldSecondaryAxis"]
      726 CALL                             R23 3 1
      727 SETTABLEKS                       R23 R22 K64 ["C0"]
      729 GETTABLEKS                       R25 R8 K29 ["CFrame"]
      731 NAMECALL                         R25 R25 K65 ["inverse"]
      733 CALL                             R25 1 1
      734 GETTABLEKS                       R26 R2 K29 ["CFrame"]
      736 MUL                              R24 R25 R26
      737 GETTABLEKS                       R25 R22 K64 ["C0"]
      739 MUL                              R23 R24 R25
      740 SETTABLEKS                       R23 R22 K66 ["C1"]
      742 SETTABLEKS                       R8 R22 K7 ["Parent"]
      744 LOADK                            R24 K21 ["UpperLeg"]
      745 ADDK                             R25 R7 K69 [4]
      746 LOADK                            R26 K67 ["Motor"]
      747 CONCAT                           R23 R24 R26
      748 SETTABLEKS                       R23 R22 K14 ["Name"]
      750 GETIMPORT                        R23 K2 [Instance.new]
      752 LOADK                            R24 K16 ["Motor6D"]
      753 CALL                             R23 1 1
      754 SETTABLEKS                       R8 R23 K17 ["Part0"]
      756 SETTABLEKS                       R9 R23 K18 ["Part1"]
      758 GETIMPORT                        R24 K60 [CFrame.fromMatrix]
      760 GETTABLEKS                       R25 R15 K61 ["Position"]
      762 GETTABLEKS                       R26 R15 K45 ["Axis"]
      764 GETTABLEKS                       R27 R15 K68 ["SecondaryAxis"]
      766 CALL                             R24 3 1
      767 SETTABLEKS                       R24 R23 K64 ["C0"]
      769 GETTABLEKS                       R26 R9 K29 ["CFrame"]
      771 NAMECALL                         R26 R26 K65 ["inverse"]
      773 CALL                             R26 1 1
      774 GETTABLEKS                       R27 R8 K29 ["CFrame"]
      776 MUL                              R25 R26 R27
      777 GETTABLEKS                       R26 R23 K64 ["C0"]
      779 MUL                              R24 R25 R26
      780 SETTABLEKS                       R24 R23 K66 ["C1"]
      782 SETTABLEKS                       R9 R23 K7 ["Parent"]
      784 LOADK                            R25 K23 ["LowerLeg"]
      785 ADDK                             R26 R7 K69 [4]
      786 LOADK                            R27 K67 ["Motor"]
      787 CONCAT                           R24 R25 R27
      788 SETTABLEKS                       R24 R23 K14 ["Name"]
      790 GETIMPORT                        R24 K2 [Instance.new]
      792 LOADK                            R25 K16 ["Motor6D"]
      793 CALL                             R24 1 1
      794 SETTABLEKS                       R9 R24 K17 ["Part0"]
      796 SETTABLEKS                       R10 R24 K18 ["Part1"]
      798 GETIMPORT                        R25 K60 [CFrame.fromMatrix]
      800 GETTABLEKS                       R26 R17 K61 ["Position"]
      802 GETTABLEKS                       R27 R17 K45 ["Axis"]
      804 GETTABLEKS                       R28 R17 K68 ["SecondaryAxis"]
      806 CALL                             R25 3 1
      807 SETTABLEKS                       R25 R24 K64 ["C0"]
      809 GETTABLEKS                       R27 R10 K29 ["CFrame"]
      811 NAMECALL                         R27 R27 K65 ["inverse"]
      813 CALL                             R27 1 1
      814 GETTABLEKS                       R28 R9 K29 ["CFrame"]
      816 MUL                              R26 R27 R28
      817 GETTABLEKS                       R27 R24 K64 ["C0"]
      819 MUL                              R25 R26 R27
      820 SETTABLEKS                       R25 R24 K66 ["C1"]
      822 SETTABLEKS                       R10 R24 K7 ["Parent"]
      824 LOADK                            R26 K25 ["Tip"]
      825 ADDK                             R27 R7 K69 [4]
      826 LOADK                            R28 K67 ["Motor"]
      827 CONCAT                           R25 R26 R28
      828 SETTABLEKS                       R25 R24 K14 ["Name"]
      830 FORNLOOP                         R5
      831 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
