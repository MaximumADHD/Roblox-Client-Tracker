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
       20 JUMPIFNOTEQKS                    R0 K0 ["NotAgeVerified"] ; [+34]
       22 LOADK                            R19 K1 ["SafetyAgeCheckDialog"]
       23 LOADK                            R20 K2 ["Title"]
       24 NAMECALL                         R17 R2 K3 ["getText"]
       26 CALL                             R17 3 1
       27 MOVE                             R7 R17
       28 LOADK                            R19 K1 ["SafetyAgeCheckDialog"]
       29 LOADK                            R20 K4 ["Body"]
       30 NAMECALL                         R17 R2 K3 ["getText"]
       32 CALL                             R17 3 1
       33 MOVE                             R8 R17
       34 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
       35 LOADK                            R20 K8 ["DialogButton"]
       36 LOADK                            R21 K9 ["Continue"]
       37 NAMECALL                         R18 R2 K3 ["getText"]
       39 CALL                             R18 3 1
       40 SETTABLEKS                       R18 R17 K5 ["label"]
       42 SETTABLEKS                       R14 R17 K6 ["onActivated"]
       44 MOVE                             R9 R17
       45 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
       46 LOADK                            R20 K8 ["DialogButton"]
       47 LOADK                            R21 K12 ["Cancel"]
       48 NAMECALL                         R18 R2 K3 ["getText"]
       50 CALL                             R18 3 1
       51 SETTABLEKS                       R18 R17 K5 ["label"]
       53 MOVE                             R10 R17
       54 RETURN                           R7 6
       55 JUMPIFEQKS                       R0 K13 ["OutsideAgeBucket"] ; [+5]
       57 JUMPIFEQKS                       R0 K14 ["OutsideAgeBucketTcPc"] ; [+3]
       59 JUMPIFNOTEQKS                    R0 K15 ["OutsideOwnerAgeBucket"] ; [+203]
       61 JUMPIFNOT                        R1 ; [+157]
       62 GETTABLEKS                       R17 R1 K16 ["canAddTrustedFriends"]
       64 JUMPIFNOT                        R17 ; [+22]
       65 GETTABLEKS                       R17 R1 K17 ["canAskParent"]
       67 JUMPIFNOT                        R17 ; [+19]
       68 LOADK                            R19 K18 ["SafetyEstablishTrustDialog"]
       69 LOADK                            R20 K2 ["Title"]
       70 NAMECALL                         R17 R2 K3 ["getText"]
       72 CALL                             R17 3 1
       73 MOVE                             R7 R17
       74 LOADK                            R19 K18 ["SafetyEstablishTrustDialog"]
       75 LOADK                            R20 K4 ["Body"]
       76 NAMECALL                         R17 R2 K3 ["getText"]
       78 CALL                             R17 3 1
       79 MOVE                             R8 R17
       80 LOADK                            R17 K19 ["%*/canAddTrustedFriends/canAskParent"]
       81 MOVE                             R19 R0
       82 NAMECALL                         R17 R17 K20 ["format"]
       84 CALL                             R17 2 1
       85 MOVE                             R12 R17
       86 JUMP                             ; [+99]
       87 GETTABLEKS                       R17 R1 K16 ["canAddTrustedFriends"]
       89 JUMPIFNOT                        R17 ; [+22]
       90 GETTABLEKS                       R17 R1 K17 ["canAskParent"]
       92 JUMPIF                           R17 ; [+19]
       93 LOADK                            R19 K18 ["SafetyEstablishTrustDialog"]
       94 LOADK                            R20 K21 ["Over16.Title"]
       95 NAMECALL                         R17 R2 K3 ["getText"]
       97 CALL                             R17 3 1
       98 MOVE                             R7 R17
       99 LOADK                            R19 K18 ["SafetyEstablishTrustDialog"]
      100 LOADK                            R20 K22 ["Over16.Body"]
      101 NAMECALL                         R17 R2 K3 ["getText"]
      103 CALL                             R17 3 1
      104 MOVE                             R8 R17
      105 LOADK                            R17 K23 ["%*/canAddTrustedFriends/cannotAskParent"]
      106 MOVE                             R19 R0
      107 NAMECALL                         R17 R17 K20 ["format"]
      109 CALL                             R17 2 1
      110 MOVE                             R12 R17
      111 JUMP                             ; [+74]
      112 GETTABLEKS                       R17 R1 K16 ["canAddTrustedFriends"]
      114 JUMPIF                           R17 ; [+22]
      115 GETTABLEKS                       R17 R1 K17 ["canAskParent"]
      117 JUMPIFNOT                        R17 ; [+19]
      118 LOADK                            R19 K24 ["SafetyAddTFRestrictedDialog"]
      119 LOADK                            R20 K25 ["Under16.Title"]
      120 NAMECALL                         R17 R2 K3 ["getText"]
      122 CALL                             R17 3 1
      123 MOVE                             R7 R17
      124 LOADK                            R19 K24 ["SafetyAddTFRestrictedDialog"]
      125 LOADK                            R20 K26 ["Under16.Body"]
      126 NAMECALL                         R17 R2 K3 ["getText"]
      128 CALL                             R17 3 1
      129 MOVE                             R8 R17
      130 LOADK                            R17 K27 ["%*/cannotAddTrustedFriends/canAskParent"]
      131 MOVE                             R19 R0
      132 NAMECALL                         R17 R17 K20 ["format"]
      134 CALL                             R17 2 1
      135 MOVE                             R12 R17
      136 JUMP                             ; [+49]
      137 GETTABLEKS                       R17 R1 K16 ["canAddTrustedFriends"]
      139 JUMPIF                           R17 ; [+46]
      140 GETTABLEKS                       R17 R1 K17 ["canAskParent"]
      142 JUMPIF                           R17 ; [+43]
      143 LOADK                            R19 K24 ["SafetyAddTFRestrictedDialog"]
      144 LOADK                            R20 K21 ["Over16.Title"]
      145 NAMECALL                         R17 R2 K3 ["getText"]
      147 CALL                             R17 3 1
      148 MOVE                             R7 R17
      149 LOADK                            R19 K24 ["SafetyAddTFRestrictedDialog"]
      150 LOADK                            R20 K22 ["Over16.Body"]
      151 NAMECALL                         R17 R2 K3 ["getText"]
      153 CALL                             R17 3 1
      154 MOVE                             R8 R17
      155 LOADK                            R17 K28 ["%*/cannotAddTrustedFriends/cannotAskParent"]
      156 MOVE                             R19 R0
      157 NAMECALL                         R17 R17 K20 ["format"]
      159 CALL                             R17 2 1
      160 MOVE                             R12 R17
      161 GETUPVAL                         R17 4
      162 CALL                             R17 0 1
      163 JUMPIFNOT                        R17 ; [+2]
      164 LOADNIL                          R9
      165 JUMP                             ; [+9]
      166 DUPTABLE                         R17 K29 [{"label"}]
      167 LOADK                            R20 K8 ["DialogButton"]
      168 LOADK                            R21 K30 ["OK"]
      169 NAMECALL                         R18 R2 K3 ["getText"]
      171 CALL                             R18 3 1
      172 SETTABLEKS                       R18 R17 K5 ["label"]
      174 MOVE                             R9 R17
      175 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      176 LOADK                            R20 K8 ["DialogButton"]
      177 LOADK                            R21 K31 ["ViewDetails"]
      178 NAMECALL                         R18 R2 K3 ["getText"]
      180 CALL                             R18 3 1
      181 SETTABLEKS                       R18 R17 K5 ["label"]
      183 SETTABLEKS                       R16 R17 K6 ["onActivated"]
      185 MOVE                             R10 R17
      186 GETTABLEKS                       R17 R1 K16 ["canAddTrustedFriends"]
      188 JUMPIFNOT                        R17 ; [+12]
      189 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      190 LOADK                            R20 K8 ["DialogButton"]
      191 LOADK                            R21 K32 ["AddTF"]
      192 NAMECALL                         R18 R2 K3 ["getText"]
      194 CALL                             R18 3 1
      195 SETTABLEKS                       R18 R17 K5 ["label"]
      197 SETTABLEKS                       R13 R17 K6 ["onActivated"]
      199 MOVE                             R9 R17
      200 JUMP                             ; [+1]
      201 LOADNIL                          R9
      202 GETTABLEKS                       R17 R1 K17 ["canAskParent"]
      204 JUMPIFNOT                        R17 ; [+12]
      205 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      206 LOADK                            R20 K8 ["DialogButton"]
      207 LOADK                            R21 K33 ["GetPermission"]
      208 NAMECALL                         R18 R2 K3 ["getText"]
      210 CALL                             R18 3 1
      211 SETTABLEKS                       R18 R17 K5 ["label"]
      213 SETTABLEKS                       R15 R17 K6 ["onActivated"]
      215 MOVE                             R10 R17
      216 JUMP                             ; [+28]
      217 LOADNIL                          R10
      218 JUMP                             ; [+26]
      219 LOADK                            R19 K34 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      220 LOADK                            R20 K2 ["Title"]
      221 NAMECALL                         R17 R2 K3 ["getText"]
      223 CALL                             R17 3 1
      224 MOVE                             R7 R17
      225 LOADK                            R19 K34 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      226 LOADK                            R20 K4 ["Body"]
      227 NAMECALL                         R17 R2 K3 ["getText"]
      229 CALL                             R17 3 1
      230 MOVE                             R8 R17
      231 GETUPVAL                         R17 4
      232 CALL                             R17 0 1
      233 JUMPIFNOT                        R17 ; [+2]
      234 LOADNIL                          R9
      235 JUMP                             ; [+9]
      236 DUPTABLE                         R17 K29 [{"label"}]
      237 LOADK                            R20 K8 ["DialogButton"]
      238 LOADK                            R21 K35 ["Close"]
      239 NAMECALL                         R18 R2 K3 ["getText"]
      241 CALL                             R18 3 1
      242 SETTABLEKS                       R18 R17 K5 ["label"]
      244 MOVE                             R9 R17
      245 GETUPVAL                         R17 4
      246 CALL                             R17 0 1
      247 JUMPIFNOT                        R17 ; [+11]
      248 LOADK                            R17 K36 ["%* %*"]
      249 MOVE                             R19 R8
      250 LOADK                            R22 K37 ["Safety"]
      251 LOADK                            R23 K38 ["NonBlockingAddendum"]
      252 NAMECALL                         R20 R2 K3 ["getText"]
      254 CALL                             R20 3 1
      255 NAMECALL                         R17 R17 K20 ["format"]
      257 CALL                             R17 3 1
      258 MOVE                             R8 R17
      259 GETUPVAL                         R17 4
      260 CALL                             R17 0 1
      261 MOVE                             R11 R17
      262 RETURN                           R7 6
      263 JUMPIFNOTEQKS                    R0 K39 ["OtherCollaboratorSettingsPreventTrust"] ; [+23]
      265 LOADK                            R19 K34 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      266 LOADK                            R20 K2 ["Title"]
      267 NAMECALL                         R17 R2 K3 ["getText"]
      269 CALL                             R17 3 1
      270 MOVE                             R7 R17
      271 LOADK                            R19 K34 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      272 LOADK                            R20 K4 ["Body"]
      273 NAMECALL                         R17 R2 K3 ["getText"]
      275 CALL                             R17 3 1
      276 MOVE                             R8 R17
      277 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
      278 LOADK                            R20 K8 ["DialogButton"]
      279 LOADK                            R21 K35 ["Close"]
      280 NAMECALL                         R18 R2 K3 ["getText"]
      282 CALL                             R18 3 1
      283 SETTABLEKS                       R18 R17 K5 ["label"]
      285 MOVE                             R9 R17
      286 RETURN                           R7 6
      287 JUMPIFNOTEQKS                    R0 K40 ["TooManyCollaborators"] ; [+42]
      289 LOADK                            R19 K41 ["SafetyGroupTooLargeDialog"]
      290 LOADK                            R20 K2 ["Title"]
      291 NAMECALL                         R17 R2 K3 ["getText"]
      293 CALL                             R17 3 1
      294 MOVE                             R7 R17
      295 LOADK                            R19 K41 ["SafetyGroupTooLargeDialog"]
      296 LOADK                            R20 K4 ["Body"]
      297 NAMECALL                         R17 R2 K3 ["getText"]
      299 CALL                             R17 3 1
      300 MOVE                             R8 R17
      301 GETUPVAL                         R17 4
      302 CALL                             R17 0 1
      303 JUMPIFNOT                        R17 ; [+11]
      304 LOADK                            R17 K36 ["%* %*"]
      305 MOVE                             R19 R8
      306 LOADK                            R22 K37 ["Safety"]
      307 LOADK                            R23 K38 ["NonBlockingAddendum"]
      308 NAMECALL                         R20 R2 K3 ["getText"]
      310 CALL                             R20 3 1
      311 NAMECALL                         R17 R17 K20 ["format"]
      313 CALL                             R17 3 1
      314 MOVE                             R8 R17
      315 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      316 LOADK                            R20 K8 ["DialogButton"]
      317 LOADK                            R21 K42 ["AskParent"]
      318 NAMECALL                         R18 R2 K3 ["getText"]
      320 CALL                             R18 3 1
      321 SETTABLEKS                       R18 R17 K5 ["label"]
      323 SETTABLEKS                       R15 R17 K6 ["onActivated"]
      325 MOVE                             R9 R17
      326 GETUPVAL                         R17 4
      327 CALL                             R17 0 1
      328 MOVE                             R11 R17
      329 RETURN                           R7 6
      330 JUMPIFNOTEQKS                    R0 K43 ["ParentalConsentBlock"] ; [+25]
      332 LOADK                            R19 K44 ["SafetyParentalConsentBlockedDialog"]
      333 LOADK                            R20 K2 ["Title"]
      334 NAMECALL                         R17 R2 K3 ["getText"]
      336 CALL                             R17 3 1
      337 MOVE                             R7 R17
      338 LOADK                            R19 K44 ["SafetyParentalConsentBlockedDialog"]
      339 LOADK                            R20 K4 ["Body"]
      340 NAMECALL                         R17 R2 K3 ["getText"]
      342 CALL                             R17 3 1
      343 MOVE                             R8 R17
      344 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      345 LOADK                            R20 K8 ["DialogButton"]
      346 LOADK                            R21 K45 ["AskAgain"]
      347 NAMECALL                         R18 R2 K3 ["getText"]
      349 CALL                             R18 3 1
      350 SETTABLEKS                       R18 R17 K5 ["label"]
      352 SETTABLEKS                       R15 R17 K6 ["onActivated"]
      354 MOVE                             R9 R17
      355 RETURN                           R7 6
      356 JUMPIFNOTEQKS                    R0 K46 ["OwnerNotAgeVerified"] ; [+23]
      358 LOADK                            R19 K47 ["SafetyOwnerAgeCheckDialog"]
      359 LOADK                            R20 K2 ["Title"]
      360 NAMECALL                         R17 R2 K3 ["getText"]
      362 CALL                             R17 3 1
      363 MOVE                             R7 R17
      364 LOADK                            R19 K47 ["SafetyOwnerAgeCheckDialog"]
      365 LOADK                            R20 K4 ["Body"]
      366 NAMECALL                         R17 R2 K3 ["getText"]
      368 CALL                             R17 3 1
      369 MOVE                             R8 R17
      370 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
      371 LOADK                            R20 K8 ["DialogButton"]
      372 LOADK                            R21 K35 ["Close"]
      373 NAMECALL                         R18 R2 K3 ["getText"]
      375 CALL                             R18 3 1
      376 SETTABLEKS                       R18 R17 K5 ["label"]
      378 MOVE                             R9 R17
      379 RETURN                           R7 6
      380 JUMPIFNOTEQKS                    R0 K48 ["OccRetriesExhausted"] ; [+23]
      382 LOADK                            R19 K49 ["SafetyServerErrorDialog"]
      383 LOADK                            R20 K2 ["Title"]
      384 NAMECALL                         R17 R2 K3 ["getText"]
      386 CALL                             R17 3 1
      387 MOVE                             R7 R17
      388 LOADK                            R19 K49 ["SafetyServerErrorDialog"]
      389 LOADK                            R20 K4 ["Body"]
      390 NAMECALL                         R17 R2 K3 ["getText"]
      392 CALL                             R17 3 1
      393 MOVE                             R8 R17
      394 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
      395 LOADK                            R20 K8 ["DialogButton"]
      396 LOADK                            R21 K30 ["OK"]
      397 NAMECALL                         R18 R2 K3 ["getText"]
      399 CALL                             R18 3 1
      400 SETTABLEKS                       R18 R17 K5 ["label"]
      402 MOVE                             R9 R17
      403 RETURN                           R7 6
      404 JUMPIFNOTEQKS                    R0 K50 ["AgeVerificationCountryBlocked"] ; [+34]
      406 LOADK                            R19 K51 ["SafetyCountryAgeCheckBlocked"]
      407 LOADK                            R20 K2 ["Title"]
      408 NAMECALL                         R17 R2 K3 ["getText"]
      410 CALL                             R17 3 1
      411 MOVE                             R7 R17
      412 LOADK                            R19 K52 ["SafetyDialog"]
      413 LOADK                            R20 K53 ["PleaseTryAgainLater"]
      414 NAMECALL                         R17 R2 K3 ["getText"]
      416 CALL                             R17 3 1
      417 MOVE                             R8 R17
      418 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
      419 LOADK                            R20 K8 ["DialogButton"]
      420 LOADK                            R21 K30 ["OK"]
      421 NAMECALL                         R18 R2 K3 ["getText"]
      423 CALL                             R18 3 1
      424 SETTABLEKS                       R18 R17 K5 ["label"]
      426 MOVE                             R9 R17
      427 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      428 LOADK                            R20 K8 ["DialogButton"]
      429 LOADK                            R21 K31 ["ViewDetails"]
      430 NAMECALL                         R18 R2 K3 ["getText"]
      432 CALL                             R18 3 1
      433 SETTABLEKS                       R18 R17 K5 ["label"]
      435 SETTABLEKS                       R16 R17 K6 ["onActivated"]
      437 MOVE                             R10 R17
      438 RETURN                           R7 6
      439 JUMPIFNOTEQKS                    R0 K54 ["OtherUserCannotCollaborate"] ; [+34]
      441 LOADK                            R19 K55 ["SafetySomeUserCountryBlocked"]
      442 LOADK                            R20 K2 ["Title"]
      443 NAMECALL                         R17 R2 K3 ["getText"]
      445 CALL                             R17 3 1
      446 MOVE                             R7 R17
      447 LOADK                            R19 K52 ["SafetyDialog"]
      448 LOADK                            R20 K53 ["PleaseTryAgainLater"]
      449 NAMECALL                         R17 R2 K3 ["getText"]
      451 CALL                             R17 3 1
      452 MOVE                             R8 R17
      453 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
      454 LOADK                            R20 K8 ["DialogButton"]
      455 LOADK                            R21 K30 ["OK"]
      456 NAMECALL                         R18 R2 K3 ["getText"]
      458 CALL                             R18 3 1
      459 SETTABLEKS                       R18 R17 K5 ["label"]
      461 MOVE                             R9 R17
      462 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      463 LOADK                            R20 K8 ["DialogButton"]
      464 LOADK                            R21 K31 ["ViewDetails"]
      465 NAMECALL                         R18 R2 K3 ["getText"]
      467 CALL                             R18 3 1
      468 SETTABLEKS                       R18 R17 K5 ["label"]
      470 SETTABLEKS                       R16 R17 K6 ["onActivated"]
      472 MOVE                             R10 R17
      473 RETURN                           R7 6
      474 JUMPIFNOTEQKS                    R0 K56 ["OwnerCountryBlocked"] ; [+34]
      476 LOADK                            R19 K55 ["SafetySomeUserCountryBlocked"]
      477 LOADK                            R20 K2 ["Title"]
      478 NAMECALL                         R17 R2 K3 ["getText"]
      480 CALL                             R17 3 1
      481 MOVE                             R7 R17
      482 LOADK                            R19 K57 ["SafetyOwnerCountryBlocked"]
      483 LOADK                            R20 K4 ["Body"]
      484 NAMECALL                         R17 R2 K3 ["getText"]
      486 CALL                             R17 3 1
      487 MOVE                             R8 R17
      488 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
      489 LOADK                            R20 K8 ["DialogButton"]
      490 LOADK                            R21 K30 ["OK"]
      491 NAMECALL                         R18 R2 K3 ["getText"]
      493 CALL                             R18 3 1
      494 SETTABLEKS                       R18 R17 K5 ["label"]
      496 MOVE                             R9 R17
      497 DUPTABLE                         R17 K7 [{"label", "onActivated"}]
      498 LOADK                            R20 K8 ["DialogButton"]
      499 LOADK                            R21 K31 ["ViewDetails"]
      500 NAMECALL                         R18 R2 K3 ["getText"]
      502 CALL                             R18 3 1
      503 SETTABLEKS                       R18 R17 K5 ["label"]
      505 SETTABLEKS                       R16 R17 K6 ["onActivated"]
      507 MOVE                             R10 R17
      508 RETURN                           R7 6
      509 LOADK                            R19 K58 ["SafetyDefaultBlockedDialog"]
      510 LOADK                            R20 K2 ["Title"]
      511 NAMECALL                         R17 R2 K3 ["getText"]
      513 CALL                             R17 3 1
      514 MOVE                             R7 R17
      515 LOADK                            R19 K58 ["SafetyDefaultBlockedDialog"]
      516 LOADK                            R20 K4 ["Body"]
      517 NAMECALL                         R17 R2 K3 ["getText"]
      519 CALL                             R17 3 1
      520 MOVE                             R8 R17
      521 DUPTABLE                         R17 K11 [{["label"], ["onActivated"] = }]
      522 LOADK                            R20 K8 ["DialogButton"]
      523 LOADK                            R21 K30 ["OK"]
      524 NAMECALL                         R18 R2 K3 ["getText"]
      526 CALL                             R18 3 1
      527 SETTABLEKS                       R18 R17 K5 ["label"]
      529 MOVE                             R9 R17
      530 RETURN                           R7 6

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
      108 DUPTABLE                         R21 K26 [{["uri"], ["type"] = "Default", ["title"], ["description"], ["primaryAction"], ["secondaryAction"], ["tertiaryAction"], ["escapeAction"], ["showIndeterminateProgressIndicator"] = False}]
      109 GETTABLEKS                       R22 R0 K15 ["uri"]
      111 SETTABLEKS                       R22 R21 K15 ["uri"]
      113 SETTABLEKS                       R13 R21 K18 ["title"]
      115 SETTABLEKS                       R14 R21 K19 ["description"]
      117 JUMPIFEQKNIL                     R15 ; [+26]
      119 DUPTABLE                         R22 K29 [{"uri", "text", "onActivated"}]
      120 GETUPVAL                         R23 7
      121 GETTABLEKS                       R23 R23 K30 ["child"]
      123 GETTABLEKS                       R24 R0 K15 ["uri"]
      125 LOADK                            R26 K31 ["%*/Primary"]
      126 MOVE                             R28 R18
      127 NAMECALL                         R26 R26 K32 ["format"]
      129 CALL                             R26 2 1
      130 MOVE                             R25 R26
      131 CALL                             R23 2 1
      132 SETTABLEKS                       R23 R22 K15 ["uri"]
      134 GETTABLEKS                       R23 R15 K33 ["label"]
      136 SETTABLEKS                       R23 R22 K27 ["text"]
      138 NEWCLOSURE                       R23 P2
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R12
      141 SETTABLEKS                       R23 R22 K28 ["onActivated"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R22
      145 SETTABLEKS                       R22 R21 K20 ["primaryAction"]
      147 JUMPIFEQKNIL                     R16 ; [+26]
      149 DUPTABLE                         R22 K29 [{"uri", "text", "onActivated"}]
      150 GETUPVAL                         R23 7
      151 GETTABLEKS                       R23 R23 K30 ["child"]
      153 GETTABLEKS                       R24 R0 K15 ["uri"]
      155 LOADK                            R26 K34 ["%*/Secondary"]
      156 MOVE                             R28 R18
      157 NAMECALL                         R26 R26 K32 ["format"]
      159 CALL                             R26 2 1
      160 MOVE                             R25 R26
      161 CALL                             R23 2 1
      162 SETTABLEKS                       R23 R22 K15 ["uri"]
      164 GETTABLEKS                       R23 R16 K33 ["label"]
      166 SETTABLEKS                       R23 R22 K27 ["text"]
      168 NEWCLOSURE                       R23 P3
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R12
      171 SETTABLEKS                       R23 R22 K28 ["onActivated"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R22
      175 SETTABLEKS                       R22 R21 K21 ["secondaryAction"]
      177 GETUPVAL                         R23 8
      178 CALL                             R23 0 1
      179 JUMPIFNOT                        R23 ; [+33]
      180 JUMPIFNOT                        R17 ; [+32]
      181 DUPTABLE                         R22 K36 [{"uri", "text", "disabled", "onActivated"}]
      182 GETUPVAL                         R23 7
      183 GETTABLEKS                       R23 R23 K30 ["child"]
      185 GETTABLEKS                       R24 R0 K15 ["uri"]
      187 LOADK                            R26 K37 ["%*/Tertiary"]
      188 MOVE                             R28 R18
      189 NAMECALL                         R26 R26 K32 ["format"]
      191 CALL                             R26 2 1
      192 MOVE                             R25 R26
      193 CALL                             R23 2 1
      194 SETTABLEKS                       R23 R22 K15 ["uri"]
      196 LOADK                            R25 K38 ["DialogButton"]
      197 LOADK                            R26 K39 ["RemindMeLater"]
      198 NAMECALL                         R23 R2 K40 ["getText"]
      200 CALL                             R23 3 1
      201 SETTABLEKS                       R23 R22 K27 ["text"]
      203 NOT                              R23 R7
      204 SETTABLEKS                       R23 R22 K35 ["disabled"]
      206 NEWCLOSURE                       R23 P4
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R12
      210 SETTABLEKS                       R23 R22 K28 ["onActivated"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R22
      214 SETTABLEKS                       R22 R21 K22 ["tertiaryAction"]
      216 DUPTABLE                         R22 K42 [{"uri", "onClose"}]
      217 GETUPVAL                         R23 7
      218 GETTABLEKS                       R23 R23 K30 ["child"]
      220 GETTABLEKS                       R24 R0 K15 ["uri"]
      222 LOADK                            R26 K43 ["%*/Escape"]
      223 MOVE                             R28 R18
      224 NAMECALL                         R26 R26 K32 ["format"]
      226 CALL                             R26 2 1
      227 MOVE                             R25 R26
      228 CALL                             R23 2 1
      229 SETTABLEKS                       R23 R22 K15 ["uri"]
      231 NEWCLOSURE                       R23 P5
      232 CAPTURE                          VAL R12
      233 SETTABLEKS                       R23 R22 K41 ["onClose"]
      235 SETTABLEKS                       R22 R21 K23 ["escapeAction"]
      237 DUPTABLE                         R22 K45 [{"Checkbox"}]
      238 GETUPVAL                         R24 8
      239 CALL                             R24 0 1
      240 JUMPIFNOT                        R24 ; [+29]
      241 JUMPIFNOT                        R17 ; [+28]
      242 GETUPVAL                         R23 5
      243 GETUPVAL                         R24 9
      244 DUPTABLE                         R25 K51 [{["label"], ["isChecked"], ["onActivated"], ["size"], ["testId"] = "--safety-dialog-checkbox", ["LayoutOrder"]}]
      245 LOADK                            R28 K52 ["Safety"]
      246 LOADK                            R29 K53 ["EnforcementDateAcknowledgement"]
      247 NAMECALL                         R26 R2 K40 ["getText"]
      249 CALL                             R26 3 1
      250 SETTABLEKS                       R26 R25 K33 ["label"]
      252 SETTABLEKS                       R7 R25 K46 ["isChecked"]
      254 NEWCLOSURE                       R26 P6
      255 CAPTURE                          VAL R8
      256 CAPTURE                          VAL R7
      257 SETTABLEKS                       R26 R25 K28 ["onActivated"]
      259 GETUPVAL                         R26 10
      260 GETTABLEKS                       R26 R26 K54 ["Small"]
      262 SETTABLEKS                       R26 R25 K47 ["size"]
      264 MOVE                             R26 R3
      265 CALL                             R26 0 1
      266 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      268 CALL                             R23 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R23
      271 SETTABLEKS                       R23 R22 K44 ["Checkbox"]
      273 CALL                             R19 3 -1
      274 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R7 R4 K13 ["SharedFlags"]
       44 GETTABLEKS                       R7 R7 K14 ["getFFlagStudioFoundationDialogComponent"]
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+5]
       48 GETTABLEKS                       R6 R4 K15 ["Components"]
       50 GETTABLEKS                       R6 R6 K2 ["Dialog"]
       52 JUMP                             ; [+9]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K11 ["Src"]
       57 GETTABLEKS                       R7 R7 K15 ["Components"]
       59 GETTABLEKS                       R7 R7 K16 ["DEPRECATED_Dialog"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R2 K17 ["ContextServices"]
       64 GETTABLEKS                       R7 R7 K18 ["Plugin"]
       66 GETTABLEKS                       R8 R2 K17 ["ContextServices"]
       68 GETTABLEKS                       R8 R8 K19 ["Localization"]
       70 GETTABLEKS                       R9 R4 K20 ["Util"]
       72 GETTABLEKS                       R9 R9 K21 ["StudioUri"]
       74 GETTABLEKS                       R10 R2 K20 ["Util"]
       76 GETTABLEKS                       R10 R10 K22 ["counter"]
       78 GETTABLEKS                       R11 R3 K23 ["createElement"]
       80 GETTABLEKS                       R12 R1 K24 ["Checkbox"]
       82 GETTABLEKS                       R13 R1 K25 ["Enums"]
       84 GETTABLEKS                       R13 R13 K26 ["InputSize"]
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K11 ["Src"]
       90 GETTABLEKS                       R15 R15 K27 ["Flags"]
       92 GETTABLEKS                       R15 R15 K28 ["getFFlagStudioSafetyCustomDialog"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R16 R0 K11 ["Src"]
       99 GETTABLEKS                       R16 R16 K27 ["Flags"]
      101 GETTABLEKS                       R16 R16 K29 ["getFFlagStudioSafetyNonBlockingDialogs"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R17 R0 K11 ["Src"]
      108 GETTABLEKS                       R17 R17 K27 ["Flags"]
      110 GETTABLEKS                       R17 R17 K30 ["getFStringParentalControlsStudioCollabSettingUrlPath"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K5 [require]
      115 GETTABLEKS                       R18 R0 K11 ["Src"]
      117 GETTABLEKS                       R18 R18 K27 ["Flags"]
      119 GETTABLEKS                       R18 R18 K31 ["getFStringStudioRestrictedCountryDetailsLink"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K5 [require]
      124 GETTABLEKS                       R19 R0 K11 ["Src"]
      126 GETTABLEKS                       R19 R19 K27 ["Flags"]
      128 GETTABLEKS                       R19 R19 K32 ["getFStringStudioSafetyVerifyAgeUrlPath"]
      130 CALL                             R18 1 1
      131 DUPTABLE                         R19 K63 [{["INVALID"] = "Invalid", ["NOTAGEVERIFIED"] = "NotAgeVerified", ["OUTSIDEAGEBUCKET"] = "OutsideAgeBucket", ["PCBLOCK"] = "PcBlock", ["OUTSIDEOWNERAGEBUCKET"] = "OutsideOwnerAgeBucket", ["TOOMANYCOLLABORATORS"] = "TooManyCollaborators", ["OCCRETRIESEXHAUSTED"] = "OccRetriesExhausted", ["PARENTALCONSENTBLOCK"] = "ParentalConsentBlock", ["ERROR"] = "Error", ["OWNERNOTAGEVERIFIED"] = "OwnerNotAgeVerified", ["OUTSIDEAGEBUCKETTCPC"] = "OutsideAgeBucketTcPc", ["OTHERCOLLABORATORSETTINGSPREVENTTRUST"] = "OtherCollaboratorSettingsPreventTrust", ["AGEVERIFICATIONCOUNTRYBLOCKED"] = "AgeVerificationCountryBlocked", ["OTHERUSERCANNOTCOLLABORATE"] = "OtherUserCannotCollaborate", ["OWNERCOUNTRYBLOCKED"] = "OwnerCountryBlocked"}]
      132 DUPCLOSURE                       R20 K64 [PROTO_5]
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R15
      138 DUPCLOSURE                       R21 K65 [PROTO_13]
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R13
      150 MOVE                             R23 R14
      151 CALL                             R23 0 1
      152 JUMPIFNOT                        R23 ; [+18]
      153 GETIMPORT                        R22 K68 [table.freeze]
      155 DUPTABLE                         R23 K71 [{"uri", "component"}]
      156 GETTABLEKS                       R24 R9 K72 ["fromWidget"]
      158 LOADK                            R25 K73 ["Safety"]
      159 LOADK                            R26 K74 ["AgeGatingDialog"]
      160 CALL                             R24 2 1
      161 SETTABLEKS                       R24 R23 K69 ["uri"]
      163 GETTABLEKS                       R24 R3 K75 ["memo"]
      165 MOVE                             R25 R21
      166 CALL                             R24 1 1
      167 SETTABLEKS                       R24 R23 K70 ["component"]
      169 CALL                             R22 1 1
      170 RETURN                           R22 1
      171 LOADNIL                          R22
      172 RETURN                           R22 1
