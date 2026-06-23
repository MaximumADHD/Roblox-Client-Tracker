PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["fromAction"]
        4 LOADK                            R3 K1 ["TeamCreateCollaborators"]
        5 LOADK                            R4 K2 ["Toggle"]
        6 CALL                             R2 2 -1
        7 NAMECALL                         R0 R0 K3 ["ActivateAsync"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["BaseUrl"]
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 CONCAT                           R2 R3 R4
        7 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["BaseUrl"]
        4 GETUPVAL                         R4 2
        5 CALL                             R4 0 1
        6 CONCAT                           R2 R3 R4
        7 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R7
        1 LOADNIL                          R8
        2 LOADNIL                          R9
        3 LOADNIL                          R10
        4 LOADB                            R11 0
        5 MOVE                             R12 R0
        6 NEWCLOSURE                       R13 P0
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R14 P1
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R6
       12 CAPTURE                          UPVAL U1
       13 NEWCLOSURE                       R15 P2
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R6
       16 CAPTURE                          UPVAL U2
       17 NEWCLOSURE                       R16 P3
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U3
       20 GETUPVAL                         R17 4
       21 GETTABLEKS                       R17 R17 K0 ["NOTAGEVERIFIED"]
       23 JUMPIFNOTEQ                      R0 R17 ; [+37]
       25 LOADK                            R19 K1 ["SafetyAgeCheckDialog"]
       26 LOADK                            R20 K2 ["Title"]
       27 NAMECALL                         R17 R2 K3 ["getText"]
       29 CALL                             R17 3 1
       30 MOVE                             R7 R17
       31 LOADK                            R19 K1 ["SafetyAgeCheckDialog"]
       32 LOADK                            R20 K4 ["Body"]
       33 NAMECALL                         R17 R2 K3 ["getText"]
       35 CALL                             R17 3 1
       36 MOVE                             R8 R17
       37 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
       38 LOADK                            R20 K8 ["DialogButton"]
       39 LOADK                            R21 K9 ["Continue"]
       40 NAMECALL                         R18 R2 K3 ["getText"]
       42 CALL                             R18 3 1
       43 SETTABLEKS                       R18 R17 K5 ["label"]
       45 SETTABLEKS                       R14 R17 K6 ["onActivated"]
       47 MOVE                             R9 R17
       48 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
       49 LOADK                            R20 K8 ["DialogButton"]
       50 LOADK                            R21 K10 ["Cancel"]
       51 NAMECALL                         R18 R2 K3 ["getText"]
       53 CALL                             R18 3 1
       54 SETTABLEKS                       R18 R17 K5 ["label"]
       56 LOADNIL                          R18
       57 SETTABLEKS                       R18 R17 K6 ["onActivated"]
       59 MOVE                             R10 R17
       60 RETURN                           R7 6
       61 GETUPVAL                         R17 4
       62 GETTABLEKS                       R17 R17 K11 ["OUTSIDEAGEBUCKET"]
       64 JUMPIFEQ                         R0 R17 ; [+11]
       66 GETUPVAL                         R17 4
       67 GETTABLEKS                       R17 R17 K12 ["OUTSIDEAGEBUCKETTCPC"]
       69 JUMPIFEQ                         R0 R17 ; [+6]
       71 GETUPVAL                         R17 4
       72 GETTABLEKS                       R17 R17 K13 ["OUTSIDEOWNERAGEBUCKET"]
       74 JUMPIFNOTEQ                      R0 R17 ; [+203]
       76 JUMPIFNOT                        R1 ; [+157]
       77 GETTABLEKS                       R17 R1 K14 ["canAddTrustedFriends"]
       79 JUMPIFNOT                        R17 ; [+22]
       80 GETTABLEKS                       R17 R1 K15 ["canAskParent"]
       82 JUMPIFNOT                        R17 ; [+19]
       83 LOADK                            R19 K16 ["SafetyEstablishTrustDialog"]
       84 LOADK                            R20 K2 ["Title"]
       85 NAMECALL                         R17 R2 K3 ["getText"]
       87 CALL                             R17 3 1
       88 MOVE                             R7 R17
       89 LOADK                            R19 K16 ["SafetyEstablishTrustDialog"]
       90 LOADK                            R20 K4 ["Body"]
       91 NAMECALL                         R17 R2 K3 ["getText"]
       93 CALL                             R17 3 1
       94 MOVE                             R8 R17
       95 LOADK                            R17 K17 ["%*/canAddTrustedFriends/canAskParent"]
       96 MOVE                             R19 R0
       97 NAMECALL                         R17 R17 K18 ["format"]
       99 CALL                             R17 2 1
      100 MOVE                             R12 R17
      101 JUMP                             ; [+99]
      102 GETTABLEKS                       R17 R1 K14 ["canAddTrustedFriends"]
      104 JUMPIFNOT                        R17 ; [+22]
      105 GETTABLEKS                       R17 R1 K15 ["canAskParent"]
      107 JUMPIF                           R17 ; [+19]
      108 LOADK                            R19 K16 ["SafetyEstablishTrustDialog"]
      109 LOADK                            R20 K19 ["Over16.Title"]
      110 NAMECALL                         R17 R2 K3 ["getText"]
      112 CALL                             R17 3 1
      113 MOVE                             R7 R17
      114 LOADK                            R19 K16 ["SafetyEstablishTrustDialog"]
      115 LOADK                            R20 K20 ["Over16.Body"]
      116 NAMECALL                         R17 R2 K3 ["getText"]
      118 CALL                             R17 3 1
      119 MOVE                             R8 R17
      120 LOADK                            R17 K21 ["%*/canAddTrustedFriends/cannotAskParent"]
      121 MOVE                             R19 R0
      122 NAMECALL                         R17 R17 K18 ["format"]
      124 CALL                             R17 2 1
      125 MOVE                             R12 R17
      126 JUMP                             ; [+74]
      127 GETTABLEKS                       R17 R1 K14 ["canAddTrustedFriends"]
      129 JUMPIF                           R17 ; [+22]
      130 GETTABLEKS                       R17 R1 K15 ["canAskParent"]
      132 JUMPIFNOT                        R17 ; [+19]
      133 LOADK                            R19 K22 ["SafetyAddTFRestrictedDialog"]
      134 LOADK                            R20 K23 ["Under16.Title"]
      135 NAMECALL                         R17 R2 K3 ["getText"]
      137 CALL                             R17 3 1
      138 MOVE                             R7 R17
      139 LOADK                            R19 K22 ["SafetyAddTFRestrictedDialog"]
      140 LOADK                            R20 K24 ["Under16.Body"]
      141 NAMECALL                         R17 R2 K3 ["getText"]
      143 CALL                             R17 3 1
      144 MOVE                             R8 R17
      145 LOADK                            R17 K25 ["%*/cannotAddTrustedFriends/canAskParent"]
      146 MOVE                             R19 R0
      147 NAMECALL                         R17 R17 K18 ["format"]
      149 CALL                             R17 2 1
      150 MOVE                             R12 R17
      151 JUMP                             ; [+49]
      152 GETTABLEKS                       R17 R1 K14 ["canAddTrustedFriends"]
      154 JUMPIF                           R17 ; [+46]
      155 GETTABLEKS                       R17 R1 K15 ["canAskParent"]
      157 JUMPIF                           R17 ; [+43]
      158 LOADK                            R19 K22 ["SafetyAddTFRestrictedDialog"]
      159 LOADK                            R20 K19 ["Over16.Title"]
      160 NAMECALL                         R17 R2 K3 ["getText"]
      162 CALL                             R17 3 1
      163 MOVE                             R7 R17
      164 LOADK                            R19 K22 ["SafetyAddTFRestrictedDialog"]
      165 LOADK                            R20 K20 ["Over16.Body"]
      166 NAMECALL                         R17 R2 K3 ["getText"]
      168 CALL                             R17 3 1
      169 MOVE                             R8 R17
      170 LOADK                            R17 K26 ["%*/cannotAddTrustedFriends/cannotAskParent"]
      171 MOVE                             R19 R0
      172 NAMECALL                         R17 R17 K18 ["format"]
      174 CALL                             R17 2 1
      175 MOVE                             R12 R17
      176 GETUPVAL                         R17 5
      177 CALL                             R17 0 1
      178 JUMPIFNOT                        R17 ; [+2]
      179 LOADNIL                          R9
      180 JUMP                             ; [+9]
      181 DUPTABLE                         R17 K27 [{"label"}]
      182 LOADK                            R20 K8 ["DialogButton"]
      183 LOADK                            R21 K28 ["OK"]
      184 NAMECALL                         R18 R2 K3 ["getText"]
      186 CALL                             R18 3 1
      187 SETTABLEKS                       R18 R17 K5 ["label"]
      189 MOVE                             R9 R17
      190 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      191 LOADK                            R20 K8 ["DialogButton"]
      192 LOADK                            R21 K29 ["ViewDetails"]
      193 NAMECALL                         R18 R2 K3 ["getText"]
      195 CALL                             R18 3 1
      196 SETTABLEKS                       R18 R17 K5 ["label"]
      198 SETTABLEKS                       R16 R17 K6 ["onActivated"]
      200 MOVE                             R10 R17
      201 GETTABLEKS                       R17 R1 K14 ["canAddTrustedFriends"]
      203 JUMPIFNOT                        R17 ; [+12]
      204 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      205 LOADK                            R20 K8 ["DialogButton"]
      206 LOADK                            R21 K30 ["AddTF"]
      207 NAMECALL                         R18 R2 K3 ["getText"]
      209 CALL                             R18 3 1
      210 SETTABLEKS                       R18 R17 K5 ["label"]
      212 SETTABLEKS                       R13 R17 K6 ["onActivated"]
      214 MOVE                             R9 R17
      215 JUMP                             ; [+1]
      216 LOADNIL                          R9
      217 GETTABLEKS                       R17 R1 K15 ["canAskParent"]
      219 JUMPIFNOT                        R17 ; [+12]
      220 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      221 LOADK                            R20 K8 ["DialogButton"]
      222 LOADK                            R21 K31 ["GetPermission"]
      223 NAMECALL                         R18 R2 K3 ["getText"]
      225 CALL                             R18 3 1
      226 SETTABLEKS                       R18 R17 K5 ["label"]
      228 SETTABLEKS                       R15 R17 K6 ["onActivated"]
      230 MOVE                             R10 R17
      231 JUMP                             ; [+28]
      232 LOADNIL                          R10
      233 JUMP                             ; [+26]
      234 LOADK                            R19 K32 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      235 LOADK                            R20 K2 ["Title"]
      236 NAMECALL                         R17 R2 K3 ["getText"]
      238 CALL                             R17 3 1
      239 MOVE                             R7 R17
      240 LOADK                            R19 K32 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      241 LOADK                            R20 K4 ["Body"]
      242 NAMECALL                         R17 R2 K3 ["getText"]
      244 CALL                             R17 3 1
      245 MOVE                             R8 R17
      246 GETUPVAL                         R17 5
      247 CALL                             R17 0 1
      248 JUMPIFNOT                        R17 ; [+2]
      249 LOADNIL                          R9
      250 JUMP                             ; [+9]
      251 DUPTABLE                         R17 K27 [{"label"}]
      252 LOADK                            R20 K8 ["DialogButton"]
      253 LOADK                            R21 K33 ["Close"]
      254 NAMECALL                         R18 R2 K3 ["getText"]
      256 CALL                             R18 3 1
      257 SETTABLEKS                       R18 R17 K5 ["label"]
      259 MOVE                             R9 R17
      260 GETUPVAL                         R17 5
      261 CALL                             R17 0 1
      262 JUMPIFNOT                        R17 ; [+11]
      263 LOADK                            R17 K34 ["%* %*"]
      264 MOVE                             R19 R8
      265 LOADK                            R22 K35 ["Safety"]
      266 LOADK                            R23 K36 ["NonBlockingAddendum"]
      267 NAMECALL                         R20 R2 K3 ["getText"]
      269 CALL                             R20 3 1
      270 NAMECALL                         R17 R17 K18 ["format"]
      272 CALL                             R17 3 1
      273 MOVE                             R8 R17
      274 GETUPVAL                         R17 5
      275 CALL                             R17 0 1
      276 MOVE                             R11 R17
      277 RETURN                           R7 6
      278 GETUPVAL                         R17 4
      279 GETTABLEKS                       R17 R17 K37 ["OTHERCOLLABORATORSETTINGSPREVENTTRUST"]
      281 JUMPIFNOTEQ                      R0 R17 ; [+26]
      283 LOADK                            R19 K32 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      284 LOADK                            R20 K2 ["Title"]
      285 NAMECALL                         R17 R2 K3 ["getText"]
      287 CALL                             R17 3 1
      288 MOVE                             R7 R17
      289 LOADK                            R19 K32 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      290 LOADK                            R20 K4 ["Body"]
      291 NAMECALL                         R17 R2 K3 ["getText"]
      293 CALL                             R17 3 1
      294 MOVE                             R8 R17
      295 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      296 LOADK                            R20 K8 ["DialogButton"]
      297 LOADK                            R21 K33 ["Close"]
      298 NAMECALL                         R18 R2 K3 ["getText"]
      300 CALL                             R18 3 1
      301 SETTABLEKS                       R18 R17 K5 ["label"]
      303 LOADNIL                          R18
      304 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      306 MOVE                             R9 R17
      307 RETURN                           R7 6
      308 GETUPVAL                         R17 4
      309 GETTABLEKS                       R17 R17 K38 ["TOOMANYCOLLABORATORS"]
      311 JUMPIFNOTEQ                      R0 R17 ; [+42]
      313 LOADK                            R19 K39 ["SafetyGroupTooLargeDialog"]
      314 LOADK                            R20 K2 ["Title"]
      315 NAMECALL                         R17 R2 K3 ["getText"]
      317 CALL                             R17 3 1
      318 MOVE                             R7 R17
      319 LOADK                            R19 K39 ["SafetyGroupTooLargeDialog"]
      320 LOADK                            R20 K4 ["Body"]
      321 NAMECALL                         R17 R2 K3 ["getText"]
      323 CALL                             R17 3 1
      324 MOVE                             R8 R17
      325 GETUPVAL                         R17 5
      326 CALL                             R17 0 1
      327 JUMPIFNOT                        R17 ; [+11]
      328 LOADK                            R17 K34 ["%* %*"]
      329 MOVE                             R19 R8
      330 LOADK                            R22 K35 ["Safety"]
      331 LOADK                            R23 K36 ["NonBlockingAddendum"]
      332 NAMECALL                         R20 R2 K3 ["getText"]
      334 CALL                             R20 3 1
      335 NAMECALL                         R17 R17 K18 ["format"]
      337 CALL                             R17 3 1
      338 MOVE                             R8 R17
      339 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      340 LOADK                            R20 K8 ["DialogButton"]
      341 LOADK                            R21 K40 ["AskParent"]
      342 NAMECALL                         R18 R2 K3 ["getText"]
      344 CALL                             R18 3 1
      345 SETTABLEKS                       R18 R17 K5 ["label"]
      347 SETTABLEKS                       R15 R17 K6 ["onActivated"]
      349 MOVE                             R9 R17
      350 GETUPVAL                         R17 5
      351 CALL                             R17 0 1
      352 MOVE                             R11 R17
      353 RETURN                           R7 6
      354 GETUPVAL                         R17 4
      355 GETTABLEKS                       R17 R17 K41 ["PARENTALCONSENTBLOCK"]
      357 JUMPIFNOTEQ                      R0 R17 ; [+25]
      359 LOADK                            R19 K42 ["SafetyParentalConsentBlockedDialog"]
      360 LOADK                            R20 K2 ["Title"]
      361 NAMECALL                         R17 R2 K3 ["getText"]
      363 CALL                             R17 3 1
      364 MOVE                             R7 R17
      365 LOADK                            R19 K42 ["SafetyParentalConsentBlockedDialog"]
      366 LOADK                            R20 K4 ["Body"]
      367 NAMECALL                         R17 R2 K3 ["getText"]
      369 CALL                             R17 3 1
      370 MOVE                             R8 R17
      371 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      372 LOADK                            R20 K8 ["DialogButton"]
      373 LOADK                            R21 K43 ["AskAgain"]
      374 NAMECALL                         R18 R2 K3 ["getText"]
      376 CALL                             R18 3 1
      377 SETTABLEKS                       R18 R17 K5 ["label"]
      379 SETTABLEKS                       R15 R17 K6 ["onActivated"]
      381 MOVE                             R9 R17
      382 RETURN                           R7 6
      383 GETUPVAL                         R17 4
      384 GETTABLEKS                       R17 R17 K44 ["OWNERNOTAGEVERIFIED"]
      386 JUMPIFNOTEQ                      R0 R17 ; [+26]
      388 LOADK                            R19 K45 ["SafetyOwnerAgeCheckDialog"]
      389 LOADK                            R20 K2 ["Title"]
      390 NAMECALL                         R17 R2 K3 ["getText"]
      392 CALL                             R17 3 1
      393 MOVE                             R7 R17
      394 LOADK                            R19 K45 ["SafetyOwnerAgeCheckDialog"]
      395 LOADK                            R20 K4 ["Body"]
      396 NAMECALL                         R17 R2 K3 ["getText"]
      398 CALL                             R17 3 1
      399 MOVE                             R8 R17
      400 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      401 LOADK                            R20 K8 ["DialogButton"]
      402 LOADK                            R21 K33 ["Close"]
      403 NAMECALL                         R18 R2 K3 ["getText"]
      405 CALL                             R18 3 1
      406 SETTABLEKS                       R18 R17 K5 ["label"]
      408 LOADNIL                          R18
      409 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      411 MOVE                             R9 R17
      412 RETURN                           R7 6
      413 GETUPVAL                         R17 4
      414 GETTABLEKS                       R17 R17 K46 ["OCCRETRIESEXHAUSTED"]
      416 JUMPIFNOTEQ                      R0 R17 ; [+26]
      418 LOADK                            R19 K47 ["SafetyServerErrorDialog"]
      419 LOADK                            R20 K2 ["Title"]
      420 NAMECALL                         R17 R2 K3 ["getText"]
      422 CALL                             R17 3 1
      423 MOVE                             R7 R17
      424 LOADK                            R19 K47 ["SafetyServerErrorDialog"]
      425 LOADK                            R20 K4 ["Body"]
      426 NAMECALL                         R17 R2 K3 ["getText"]
      428 CALL                             R17 3 1
      429 MOVE                             R8 R17
      430 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      431 LOADK                            R20 K8 ["DialogButton"]
      432 LOADK                            R21 K28 ["OK"]
      433 NAMECALL                         R18 R2 K3 ["getText"]
      435 CALL                             R18 3 1
      436 SETTABLEKS                       R18 R17 K5 ["label"]
      438 LOADNIL                          R18
      439 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      441 MOVE                             R9 R17
      442 RETURN                           R7 6
      443 GETUPVAL                         R17 4
      444 GETTABLEKS                       R17 R17 K48 ["AGEVERIFICATIONCOUNTRYBLOCKED"]
      446 JUMPIFNOTEQ                      R0 R17 ; [+37]
      448 LOADK                            R19 K49 ["SafetyCountryAgeCheckBlocked"]
      449 LOADK                            R20 K2 ["Title"]
      450 NAMECALL                         R17 R2 K3 ["getText"]
      452 CALL                             R17 3 1
      453 MOVE                             R7 R17
      454 LOADK                            R19 K49 ["SafetyCountryAgeCheckBlocked"]
      455 LOADK                            R20 K4 ["Body"]
      456 NAMECALL                         R17 R2 K3 ["getText"]
      458 CALL                             R17 3 1
      459 MOVE                             R8 R17
      460 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      461 LOADK                            R20 K8 ["DialogButton"]
      462 LOADK                            R21 K28 ["OK"]
      463 NAMECALL                         R18 R2 K3 ["getText"]
      465 CALL                             R18 3 1
      466 SETTABLEKS                       R18 R17 K5 ["label"]
      468 LOADNIL                          R18
      469 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      471 MOVE                             R9 R17
      472 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      473 LOADK                            R20 K8 ["DialogButton"]
      474 LOADK                            R21 K29 ["ViewDetails"]
      475 NAMECALL                         R18 R2 K3 ["getText"]
      477 CALL                             R18 3 1
      478 SETTABLEKS                       R18 R17 K5 ["label"]
      480 SETTABLEKS                       R16 R17 K6 ["onActivated"]
      482 MOVE                             R10 R17
      483 RETURN                           R7 6
      484 LOADK                            R19 K50 ["SafetyDefaultBlockedDialog"]
      485 LOADK                            R20 K2 ["Title"]
      486 NAMECALL                         R17 R2 K3 ["getText"]
      488 CALL                             R17 3 1
      489 MOVE                             R7 R17
      490 LOADK                            R19 K50 ["SafetyDefaultBlockedDialog"]
      491 LOADK                            R20 K4 ["Body"]
      492 NAMECALL                         R17 R2 K3 ["getText"]
      494 CALL                             R17 3 1
      495 MOVE                             R8 R17
      496 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      497 LOADK                            R20 K8 ["DialogButton"]
      498 LOADK                            R21 K28 ["OK"]
      499 NAMECALL                         R18 R2 K3 ["getText"]
      501 CALL                             R18 3 1
      502 SETTABLEKS                       R18 R17 K5 ["label"]
      504 LOADNIL                          R18
      505 SETTABLEKS                       R18 R17 K6 ["onActivated"]
      507 MOVE                             R9 R17
      508 RETURN                           R7 6

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onResolved"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K1 ["primary"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R1 K1 ["secondary"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["input"]
        4 GETTABLEKS                       R2 R2 K1 ["placeId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["input"]
        9 GETTABLEKS                       R3 R3 K2 ["universeId"]
       11 LOADB                            R4 0
       12 LOADB                            R5 1
       13 NAMECALL                         R0 R0 K3 ["openPlace"]
       15 CALL                             R0 5 0
       16 GETUPVAL                         R0 2
       17 LOADK                            R1 K4 ["tertiary"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["escape"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R5 R0 K2 ["input"]
       15 GETTABLEKS                       R5 R5 K3 ["BrowserService"]
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETTABLEKS                       R4 R0 K2 ["input"]
       20 GETTABLEKS                       R4 R4 K3 ["BrowserService"]
       22 JUMP                             ; [+6]
       23 GETIMPORT                        R4 K5 [game]
       25 LOADK                            R6 K3 ["BrowserService"]
       26 NAMECALL                         R4 R4 K6 ["GetService"]
       28 CALL                             R4 2 1
       29 GETTABLEKS                       R6 R0 K2 ["input"]
       31 GETTABLEKS                       R6 R6 K7 ["StartPageService"]
       33 JUMPIFNOT                        R6 ; [+5]
       34 GETTABLEKS                       R5 R0 K2 ["input"]
       36 GETTABLEKS                       R5 R5 K7 ["StartPageService"]
       38 JUMP                             ; [+6]
       39 GETIMPORT                        R5 K5 [game]
       41 LOADK                            R7 K7 ["StartPageService"]
       42 NAMECALL                         R5 R5 K6 ["GetService"]
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R7 R0 K2 ["input"]
       47 GETTABLEKS                       R7 R7 K8 ["ContentProvider"]
       49 JUMPIFNOT                        R7 ; [+5]
       50 GETTABLEKS                       R6 R0 K2 ["input"]
       52 GETTABLEKS                       R6 R6 K8 ["ContentProvider"]
       54 JUMP                             ; [+6]
       55 GETIMPORT                        R6 K5 [game]
       57 LOADK                            R8 K8 ["ContentProvider"]
       58 NAMECALL                         R6 R6 K6 ["GetService"]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K9 ["useState"]
       64 LOADB                            R8 0
       65 CALL                             R7 1 2
       66 GETTABLEKS                       R9 R0 K2 ["input"]
       68 GETTABLEKS                       R9 R9 K10 ["errorReason"]
       70 GETTABLEKS                       R10 R0 K2 ["input"]
       72 GETTABLEKS                       R10 R10 K11 ["userCapabilities"]
       74 GETUPVAL                         R11 3
       75 GETTABLEKS                       R11 R11 K12 ["useMemo"]
       77 NEWCLOSURE                       R12 P0
       78 CAPTURE                          VAL R1
       79 NEWTABLE                         R13 0 1
       81 MOVE                             R14 R1
       82 SETLIST                          R13 R14 1 [1]
       84 CALL                             R11 2 1
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R12 R12 K13 ["useCallback"]
       88 NEWCLOSURE                       R13 P1
       89 CAPTURE                          VAL R0
       90 NEWTABLE                         R14 0 1
       92 GETTABLEKS                       R15 R0 K14 ["onResolved"]
       94 SETLIST                          R14 R15 1 [1]
       96 CALL                             R12 2 1
       97 GETUPVAL                         R13 4
       98 MOVE                             R14 R9
       99 MOVE                             R15 R10
      100 MOVE                             R16 R2
      101 MOVE                             R17 R11
      102 MOVE                             R18 R4
      103 MOVE                             R19 R5
      104 MOVE                             R20 R6
      105 CALL                             R13 7 6
      106 GETUPVAL                         R19 5
      107 GETUPVAL                         R20 6
      108 DUPTABLE                         R21 K24 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "escapeAction", "showIndeterminateProgressIndicator"}]
      109 GETTABLEKS                       R22 R0 K15 ["uri"]
      111 SETTABLEKS                       R22 R21 K15 ["uri"]
      113 LOADK                            R22 K25 ["Default"]
      114 SETTABLEKS                       R22 R21 K16 ["type"]
      116 SETTABLEKS                       R13 R21 K17 ["title"]
      118 SETTABLEKS                       R14 R21 K18 ["description"]
      120 JUMPIFEQKNIL                     R15 ; [+26]
      122 DUPTABLE                         R22 K28 [{"uri", "text", "onActivated"}]
      123 GETUPVAL                         R23 7
      124 GETTABLEKS                       R23 R23 K29 ["child"]
      126 GETTABLEKS                       R24 R0 K15 ["uri"]
      128 LOADK                            R26 K30 ["%*/Primary"]
      129 MOVE                             R28 R18
      130 NAMECALL                         R26 R26 K31 ["format"]
      132 CALL                             R26 2 1
      133 MOVE                             R25 R26
      134 CALL                             R23 2 1
      135 SETTABLEKS                       R23 R22 K15 ["uri"]
      137 GETTABLEKS                       R23 R15 K32 ["label"]
      139 SETTABLEKS                       R23 R22 K26 ["text"]
      141 NEWCLOSURE                       R23 P2
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R12
      144 SETTABLEKS                       R23 R22 K27 ["onActivated"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R22
      148 SETTABLEKS                       R22 R21 K19 ["primaryAction"]
      150 JUMPIFEQKNIL                     R16 ; [+26]
      152 DUPTABLE                         R22 K28 [{"uri", "text", "onActivated"}]
      153 GETUPVAL                         R23 7
      154 GETTABLEKS                       R23 R23 K29 ["child"]
      156 GETTABLEKS                       R24 R0 K15 ["uri"]
      158 LOADK                            R26 K33 ["%*/Secondary"]
      159 MOVE                             R28 R18
      160 NAMECALL                         R26 R26 K31 ["format"]
      162 CALL                             R26 2 1
      163 MOVE                             R25 R26
      164 CALL                             R23 2 1
      165 SETTABLEKS                       R23 R22 K15 ["uri"]
      167 GETTABLEKS                       R23 R16 K32 ["label"]
      169 SETTABLEKS                       R23 R22 K26 ["text"]
      171 NEWCLOSURE                       R23 P3
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R12
      174 SETTABLEKS                       R23 R22 K27 ["onActivated"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R22
      178 SETTABLEKS                       R22 R21 K20 ["secondaryAction"]
      180 GETUPVAL                         R23 8
      181 CALL                             R23 0 1
      182 JUMPIFNOT                        R23 ; [+33]
      183 JUMPIFNOT                        R17 ; [+32]
      184 DUPTABLE                         R22 K35 [{"uri", "text", "disabled", "onActivated"}]
      185 GETUPVAL                         R23 7
      186 GETTABLEKS                       R23 R23 K29 ["child"]
      188 GETTABLEKS                       R24 R0 K15 ["uri"]
      190 LOADK                            R26 K36 ["%*/Tertiary"]
      191 MOVE                             R28 R18
      192 NAMECALL                         R26 R26 K31 ["format"]
      194 CALL                             R26 2 1
      195 MOVE                             R25 R26
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K15 ["uri"]
      199 LOADK                            R25 K37 ["DialogButton"]
      200 LOADK                            R26 K38 ["RemindMeLater"]
      201 NAMECALL                         R23 R2 K39 ["getText"]
      203 CALL                             R23 3 1
      204 SETTABLEKS                       R23 R22 K26 ["text"]
      206 NOT                              R23 R7
      207 SETTABLEKS                       R23 R22 K34 ["disabled"]
      209 NEWCLOSURE                       R23 P4
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R12
      213 SETTABLEKS                       R23 R22 K27 ["onActivated"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R22
      217 SETTABLEKS                       R22 R21 K21 ["tertiaryAction"]
      219 GETUPVAL                         R23 9
      220 CALL                             R23 0 1
      221 JUMPIFNOT                        R23 ; [+20]
      222 DUPTABLE                         R22 K41 [{"uri", "onClose"}]
      223 GETUPVAL                         R23 7
      224 GETTABLEKS                       R23 R23 K29 ["child"]
      226 GETTABLEKS                       R24 R0 K15 ["uri"]
      228 LOADK                            R26 K42 ["%*/Escape"]
      229 MOVE                             R28 R18
      230 NAMECALL                         R26 R26 K31 ["format"]
      232 CALL                             R26 2 1
      233 MOVE                             R25 R26
      234 CALL                             R23 2 1
      235 SETTABLEKS                       R23 R22 K15 ["uri"]
      237 NEWCLOSURE                       R23 P5
      238 CAPTURE                          VAL R12
      239 SETTABLEKS                       R23 R22 K40 ["onClose"]
      241 JUMP                             ; [+1]
      242 LOADNIL                          R22
      243 SETTABLEKS                       R22 R21 K22 ["escapeAction"]
      245 LOADB                            R22 0
      246 SETTABLEKS                       R22 R21 K23 ["showIndeterminateProgressIndicator"]
      248 DUPTABLE                         R22 K44 [{"Checkbox"}]
      249 GETUPVAL                         R24 8
      250 CALL                             R24 0 1
      251 JUMPIFNOT                        R24 ; [+32]
      252 JUMPIFNOT                        R17 ; [+31]
      253 GETUPVAL                         R23 5
      254 GETUPVAL                         R24 10
      255 DUPTABLE                         R25 K49 [{"label", "isChecked", "onActivated", "size", "testId", "LayoutOrder"}]
      256 LOADK                            R28 K50 ["Safety"]
      257 LOADK                            R29 K51 ["EnforcementDateAcknowledgement"]
      258 NAMECALL                         R26 R2 K39 ["getText"]
      260 CALL                             R26 3 1
      261 SETTABLEKS                       R26 R25 K32 ["label"]
      263 SETTABLEKS                       R7 R25 K45 ["isChecked"]
      265 NEWCLOSURE                       R26 P6
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R7
      268 SETTABLEKS                       R26 R25 K27 ["onActivated"]
      270 GETUPVAL                         R26 11
      271 GETTABLEKS                       R26 R26 K52 ["Small"]
      273 SETTABLEKS                       R26 R25 K46 ["size"]
      275 LOADK                            R26 K53 ["--safety-dialog-checkbox"]
      276 SETTABLEKS                       R26 R25 K47 ["testId"]
      278 MOVE                             R26 R3
      279 CALL                             R26 0 1
      280 SETTABLEKS                       R26 R25 K48 ["LayoutOrder"]
      282 CALL                             R23 2 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R23
      285 SETTABLEKS                       R23 R22 K43 ["Checkbox"]
      287 CALL                             R19 3 -1
      288 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K2 ["Dialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Packages"]
       41 GETTABLEKS                       R6 R6 K12 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Src"]
       48 GETTABLEKS                       R7 R7 K13 ["Types"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K14 ["ContextServices"]
       53 GETTABLEKS                       R7 R7 K15 ["Plugin"]
       55 GETTABLEKS                       R8 R3 K14 ["ContextServices"]
       57 GETTABLEKS                       R8 R8 K16 ["Localization"]
       59 GETTABLEKS                       R9 R5 K17 ["Util"]
       61 GETTABLEKS                       R9 R9 K18 ["StudioUri"]
       63 GETTABLEKS                       R10 R3 K17 ["Util"]
       65 GETTABLEKS                       R10 R10 K19 ["counter"]
       67 GETTABLEKS                       R11 R4 K20 ["createElement"]
       69 GETTABLEKS                       R12 R2 K21 ["Checkbox"]
       71 GETTABLEKS                       R13 R2 K22 ["Enums"]
       73 GETTABLEKS                       R13 R13 K23 ["InputSize"]
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K6 ["Src"]
       79 GETTABLEKS                       R15 R15 K24 ["Flags"]
       81 GETTABLEKS                       R15 R15 K25 ["getFFlagDialogManagerAddEscapeTitleButton"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R0 K6 ["Src"]
       88 GETTABLEKS                       R16 R16 K24 ["Flags"]
       90 GETTABLEKS                       R16 R16 K26 ["getFFlagStudioSafetyCustomDialog"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R17 R0 K6 ["Src"]
       97 GETTABLEKS                       R17 R17 K24 ["Flags"]
       99 GETTABLEKS                       R17 R17 K27 ["getFFlagStudioSafetyNonBlockingDialogs"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R18 R0 K6 ["Src"]
      106 GETTABLEKS                       R18 R18 K24 ["Flags"]
      108 GETTABLEKS                       R18 R18 K28 ["getFStringParentalControlsStudioCollabSettingUrlPath"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K5 [require]
      113 GETTABLEKS                       R19 R0 K6 ["Src"]
      115 GETTABLEKS                       R19 R19 K24 ["Flags"]
      117 GETTABLEKS                       R19 R19 K29 ["getFStringStudioRestrictedCountryDetailsLink"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R20 R0 K6 ["Src"]
      124 GETTABLEKS                       R20 R20 K24 ["Flags"]
      126 GETTABLEKS                       R20 R20 K30 ["getFStringStudioSafetyVerifyAgeUrlPath"]
      128 CALL                             R19 1 1
      129 DUPTABLE                         R20 K44 [{"INVALID", "NOTAGEVERIFIED", "OUTSIDEAGEBUCKET", "PCBLOCK", "OUTSIDEOWNERAGEBUCKET", "TOOMANYCOLLABORATORS", "OCCRETRIESEXHAUSTED", "PARENTALCONSENTBLOCK", "ERROR", "OWNERNOTAGEVERIFIED", "OUTSIDEAGEBUCKETTCPC", "OTHERCOLLABORATORSETTINGSPREVENTTRUST", "AGEVERIFICATIONCOUNTRYBLOCKED"}]
      130 LOADK                            R21 K45 ["Invalid"]
      131 SETTABLEKS                       R21 R20 K31 ["INVALID"]
      133 LOADK                            R21 K46 ["NotAgeVerified"]
      134 SETTABLEKS                       R21 R20 K32 ["NOTAGEVERIFIED"]
      136 LOADK                            R21 K47 ["OutsideAgeBucket"]
      137 SETTABLEKS                       R21 R20 K33 ["OUTSIDEAGEBUCKET"]
      139 LOADK                            R21 K48 ["PcBlock"]
      140 SETTABLEKS                       R21 R20 K34 ["PCBLOCK"]
      142 LOADK                            R21 K49 ["OutsideOwnerAgeBucket"]
      143 SETTABLEKS                       R21 R20 K35 ["OUTSIDEOWNERAGEBUCKET"]
      145 LOADK                            R21 K50 ["TooManyCollaborators"]
      146 SETTABLEKS                       R21 R20 K36 ["TOOMANYCOLLABORATORS"]
      148 LOADK                            R21 K51 ["OccRetriesExhausted"]
      149 SETTABLEKS                       R21 R20 K37 ["OCCRETRIESEXHAUSTED"]
      151 LOADK                            R21 K52 ["ParentalConsentBlock"]
      152 SETTABLEKS                       R21 R20 K38 ["PARENTALCONSENTBLOCK"]
      154 LOADK                            R21 K53 ["Error"]
      155 SETTABLEKS                       R21 R20 K39 ["ERROR"]
      157 LOADK                            R21 K54 ["OwnerNotAgeVerified"]
      158 SETTABLEKS                       R21 R20 K40 ["OWNERNOTAGEVERIFIED"]
      160 LOADK                            R21 K55 ["OutsideAgeBucketTcPc"]
      161 SETTABLEKS                       R21 R20 K41 ["OUTSIDEAGEBUCKETTCPC"]
      163 LOADK                            R21 K56 ["OtherCollaboratorSettingsPreventTrust"]
      164 SETTABLEKS                       R21 R20 K42 ["OTHERCOLLABORATORSETTINGSPREVENTTRUST"]
      166 LOADK                            R21 K57 ["AgeVerificationCountryBlocked"]
      167 SETTABLEKS                       R21 R20 K43 ["AGEVERIFICATIONCOUNTRYBLOCKED"]
      169 DUPCLOSURE                       R21 K58 [PROTO_5]
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R16
      176 DUPCLOSURE                       R22 K59 [PROTO_13]
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R4
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R13
      189 MOVE                             R24 R15
      190 CALL                             R24 0 1
      191 JUMPIFNOT                        R24 ; [+18]
      192 GETIMPORT                        R23 K62 [table.freeze]
      194 DUPTABLE                         R24 K65 [{"uri", "component"}]
      195 GETTABLEKS                       R25 R9 K66 ["fromWidget"]
      197 LOADK                            R26 K67 ["Safety"]
      198 LOADK                            R27 K68 ["AgeGatingDialog"]
      199 CALL                             R25 2 1
      200 SETTABLEKS                       R25 R24 K63 ["uri"]
      202 GETTABLEKS                       R25 R4 K69 ["memo"]
      204 MOVE                             R26 R22
      205 CALL                             R25 1 1
      206 SETTABLEKS                       R25 R24 K64 ["component"]
      208 CALL                             R23 1 1
      209 RETURN                           R23 1
      210 LOADNIL                          R23
      211 RETURN                           R23 1
