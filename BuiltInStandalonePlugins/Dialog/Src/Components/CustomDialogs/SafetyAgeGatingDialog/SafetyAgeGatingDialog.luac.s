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
        5 NEWCLOSURE                       R12 P0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R13 P1
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R6
       11 CAPTURE                          UPVAL U1
       12 NEWCLOSURE                       R14 P2
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R6
       15 CAPTURE                          UPVAL U2
       16 NEWCLOSURE                       R15 P3
       17 CAPTURE                          VAL R4
       18 CAPTURE                          UPVAL U3
       19 GETUPVAL                         R16 4
       20 GETTABLEKS                       R16 R16 K0 ["NOTAGEVERIFIED"]
       22 JUMPIFNOTEQ                      R0 R16 ; [+37]
       24 LOADK                            R18 K1 ["SafetyAgeCheckDialog"]
       25 LOADK                            R19 K2 ["Title"]
       26 NAMECALL                         R16 R2 K3 ["getText"]
       28 CALL                             R16 3 1
       29 MOVE                             R7 R16
       30 LOADK                            R18 K1 ["SafetyAgeCheckDialog"]
       31 LOADK                            R19 K4 ["Body"]
       32 NAMECALL                         R16 R2 K3 ["getText"]
       34 CALL                             R16 3 1
       35 MOVE                             R8 R16
       36 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
       37 LOADK                            R19 K8 ["DialogButton"]
       38 LOADK                            R20 K9 ["Continue"]
       39 NAMECALL                         R17 R2 K3 ["getText"]
       41 CALL                             R17 3 1
       42 SETTABLEKS                       R17 R16 K5 ["label"]
       44 SETTABLEKS                       R13 R16 K6 ["onActivated"]
       46 MOVE                             R9 R16
       47 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
       48 LOADK                            R19 K8 ["DialogButton"]
       49 LOADK                            R20 K10 ["Cancel"]
       50 NAMECALL                         R17 R2 K3 ["getText"]
       52 CALL                             R17 3 1
       53 SETTABLEKS                       R17 R16 K5 ["label"]
       55 LOADNIL                          R17
       56 SETTABLEKS                       R17 R16 K6 ["onActivated"]
       58 MOVE                             R10 R16
       59 RETURN                           R7 5
       60 GETUPVAL                         R16 4
       61 GETTABLEKS                       R16 R16 K11 ["OUTSIDEAGEBUCKET"]
       63 JUMPIFEQ                         R0 R16 ; [+11]
       65 GETUPVAL                         R16 4
       66 GETTABLEKS                       R16 R16 K12 ["OUTSIDEAGEBUCKETTCPC"]
       68 JUMPIFEQ                         R0 R16 ; [+6]
       70 GETUPVAL                         R16 4
       71 GETTABLEKS                       R16 R16 K13 ["OUTSIDEOWNERAGEBUCKET"]
       73 JUMPIFNOTEQ                      R0 R16 ; [+140]
       75 JUMPIFNOT                        R1 ; [+108]
       76 GETTABLEKS                       R16 R1 K14 ["canAddTrustedFriends"]
       78 JUMPIFNOT                        R16 ; [+16]
       79 GETTABLEKS                       R16 R1 K15 ["canAskParent"]
       81 JUMPIFNOT                        R16 ; [+13]
       82 LOADK                            R18 K16 ["SafetyEstablishTrustDialog"]
       83 LOADK                            R19 K2 ["Title"]
       84 NAMECALL                         R16 R2 K3 ["getText"]
       86 CALL                             R16 3 1
       87 MOVE                             R7 R16
       88 LOADK                            R18 K16 ["SafetyEstablishTrustDialog"]
       89 LOADK                            R19 K4 ["Body"]
       90 NAMECALL                         R16 R2 K3 ["getText"]
       92 CALL                             R16 3 1
       93 MOVE                             R8 R16
       94 JUMP                             ; [+56]
       95 GETTABLEKS                       R16 R1 K14 ["canAddTrustedFriends"]
       97 JUMPIFNOT                        R16 ; [+16]
       98 GETTABLEKS                       R16 R1 K15 ["canAskParent"]
      100 JUMPIF                           R16 ; [+13]
      101 LOADK                            R18 K16 ["SafetyEstablishTrustDialog"]
      102 LOADK                            R19 K17 ["Over16.Title"]
      103 NAMECALL                         R16 R2 K3 ["getText"]
      105 CALL                             R16 3 1
      106 MOVE                             R7 R16
      107 LOADK                            R18 K16 ["SafetyEstablishTrustDialog"]
      108 LOADK                            R19 K18 ["Over16.Body"]
      109 NAMECALL                         R16 R2 K3 ["getText"]
      111 CALL                             R16 3 1
      112 MOVE                             R8 R16
      113 JUMP                             ; [+37]
      114 GETTABLEKS                       R16 R1 K14 ["canAddTrustedFriends"]
      116 JUMPIF                           R16 ; [+16]
      117 GETTABLEKS                       R16 R1 K15 ["canAskParent"]
      119 JUMPIFNOT                        R16 ; [+13]
      120 LOADK                            R18 K19 ["SafetyAddTFRestrictedDialog"]
      121 LOADK                            R19 K20 ["Under16.Title"]
      122 NAMECALL                         R16 R2 K3 ["getText"]
      124 CALL                             R16 3 1
      125 MOVE                             R7 R16
      126 LOADK                            R18 K19 ["SafetyAddTFRestrictedDialog"]
      127 LOADK                            R19 K21 ["Under16.Body"]
      128 NAMECALL                         R16 R2 K3 ["getText"]
      130 CALL                             R16 3 1
      131 MOVE                             R8 R16
      132 JUMP                             ; [+18]
      133 GETTABLEKS                       R16 R1 K14 ["canAddTrustedFriends"]
      135 JUMPIF                           R16 ; [+15]
      136 GETTABLEKS                       R16 R1 K15 ["canAskParent"]
      138 JUMPIF                           R16 ; [+12]
      139 LOADK                            R18 K22 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      140 LOADK                            R19 K2 ["Title"]
      141 NAMECALL                         R16 R2 K3 ["getText"]
      143 CALL                             R16 3 1
      144 MOVE                             R7 R16
      145 LOADK                            R18 K22 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      146 LOADK                            R19 K4 ["Body"]
      147 NAMECALL                         R16 R2 K3 ["getText"]
      149 CALL                             R16 3 1
      150 MOVE                             R8 R16
      151 GETTABLEKS                       R16 R1 K14 ["canAddTrustedFriends"]
      153 JUMPIFNOT                        R16 ; [+12]
      154 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      155 LOADK                            R19 K8 ["DialogButton"]
      156 LOADK                            R20 K23 ["AddTF"]
      157 NAMECALL                         R17 R2 K3 ["getText"]
      159 CALL                             R17 3 1
      160 SETTABLEKS                       R17 R16 K5 ["label"]
      162 SETTABLEKS                       R12 R16 K6 ["onActivated"]
      164 MOVE                             R9 R16
      165 JUMP                             ; [+1]
      166 LOADNIL                          R9
      167 GETTABLEKS                       R16 R1 K15 ["canAskParent"]
      169 JUMPIFNOT                        R16 ; [+12]
      170 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      171 LOADK                            R19 K8 ["DialogButton"]
      172 LOADK                            R20 K24 ["GetPermission"]
      173 NAMECALL                         R17 R2 K3 ["getText"]
      175 CALL                             R17 3 1
      176 SETTABLEKS                       R17 R16 K5 ["label"]
      178 SETTABLEKS                       R14 R16 K6 ["onActivated"]
      180 MOVE                             R10 R16
      181 JUMP                             ; [+14]
      182 LOADNIL                          R10
      183 JUMP                             ; [+12]
      184 LOADK                            R18 K22 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      185 LOADK                            R19 K2 ["Title"]
      186 NAMECALL                         R16 R2 K3 ["getText"]
      188 CALL                             R16 3 1
      189 MOVE                             R7 R16
      190 LOADK                            R18 K22 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      191 LOADK                            R19 K4 ["Body"]
      192 NAMECALL                         R16 R2 K3 ["getText"]
      194 CALL                             R16 3 1
      195 MOVE                             R8 R16
      196 GETUPVAL                         R16 5
      197 CALL                             R16 0 1
      198 JUMPIFNOT                        R16 ; [+11]
      199 LOADK                            R16 K25 ["%* %*"]
      200 MOVE                             R18 R8
      201 LOADK                            R21 K26 ["Safety"]
      202 LOADK                            R22 K27 ["NonBlockingAddendum"]
      203 NAMECALL                         R19 R2 K3 ["getText"]
      205 CALL                             R19 3 1
      206 NAMECALL                         R16 R16 K28 ["format"]
      208 CALL                             R16 3 1
      209 MOVE                             R8 R16
      210 GETUPVAL                         R16 5
      211 CALL                             R16 0 1
      212 MOVE                             R11 R16
      213 RETURN                           R7 5
      214 GETUPVAL                         R16 4
      215 GETTABLEKS                       R16 R16 K29 ["OTHERCOLLABORATORSETTINGSPREVENTTRUST"]
      217 JUMPIFNOTEQ                      R0 R16 ; [+26]
      219 LOADK                            R18 K22 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      220 LOADK                            R19 K2 ["Title"]
      221 NAMECALL                         R16 R2 K3 ["getText"]
      223 CALL                             R16 3 1
      224 MOVE                             R7 R16
      225 LOADK                            R18 K22 ["SafetyOtherCollaboratorsPreventTrustDialog"]
      226 LOADK                            R19 K4 ["Body"]
      227 NAMECALL                         R16 R2 K3 ["getText"]
      229 CALL                             R16 3 1
      230 MOVE                             R8 R16
      231 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      232 LOADK                            R19 K8 ["DialogButton"]
      233 LOADK                            R20 K30 ["Close"]
      234 NAMECALL                         R17 R2 K3 ["getText"]
      236 CALL                             R17 3 1
      237 SETTABLEKS                       R17 R16 K5 ["label"]
      239 LOADNIL                          R17
      240 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      242 MOVE                             R9 R16
      243 RETURN                           R7 5
      244 GETUPVAL                         R16 4
      245 GETTABLEKS                       R16 R16 K31 ["TOOMANYCOLLABORATORS"]
      247 JUMPIFNOTEQ                      R0 R16 ; [+42]
      249 LOADK                            R18 K32 ["SafetyGroupTooLargeDialog"]
      250 LOADK                            R19 K2 ["Title"]
      251 NAMECALL                         R16 R2 K3 ["getText"]
      253 CALL                             R16 3 1
      254 MOVE                             R7 R16
      255 LOADK                            R18 K32 ["SafetyGroupTooLargeDialog"]
      256 LOADK                            R19 K4 ["Body"]
      257 NAMECALL                         R16 R2 K3 ["getText"]
      259 CALL                             R16 3 1
      260 MOVE                             R8 R16
      261 GETUPVAL                         R16 5
      262 CALL                             R16 0 1
      263 JUMPIFNOT                        R16 ; [+11]
      264 LOADK                            R16 K25 ["%* %*"]
      265 MOVE                             R18 R8
      266 LOADK                            R21 K26 ["Safety"]
      267 LOADK                            R22 K27 ["NonBlockingAddendum"]
      268 NAMECALL                         R19 R2 K3 ["getText"]
      270 CALL                             R19 3 1
      271 NAMECALL                         R16 R16 K28 ["format"]
      273 CALL                             R16 3 1
      274 MOVE                             R8 R16
      275 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      276 LOADK                            R19 K8 ["DialogButton"]
      277 LOADK                            R20 K33 ["AskParent"]
      278 NAMECALL                         R17 R2 K3 ["getText"]
      280 CALL                             R17 3 1
      281 SETTABLEKS                       R17 R16 K5 ["label"]
      283 SETTABLEKS                       R14 R16 K6 ["onActivated"]
      285 MOVE                             R9 R16
      286 GETUPVAL                         R16 5
      287 CALL                             R16 0 1
      288 MOVE                             R11 R16
      289 RETURN                           R7 5
      290 GETUPVAL                         R16 4
      291 GETTABLEKS                       R16 R16 K34 ["PARENTALCONSENTBLOCK"]
      293 JUMPIFNOTEQ                      R0 R16 ; [+25]
      295 LOADK                            R18 K35 ["SafetyParentalConsentBlockedDialog"]
      296 LOADK                            R19 K2 ["Title"]
      297 NAMECALL                         R16 R2 K3 ["getText"]
      299 CALL                             R16 3 1
      300 MOVE                             R7 R16
      301 LOADK                            R18 K35 ["SafetyParentalConsentBlockedDialog"]
      302 LOADK                            R19 K4 ["Body"]
      303 NAMECALL                         R16 R2 K3 ["getText"]
      305 CALL                             R16 3 1
      306 MOVE                             R8 R16
      307 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      308 LOADK                            R19 K8 ["DialogButton"]
      309 LOADK                            R20 K36 ["AskAgain"]
      310 NAMECALL                         R17 R2 K3 ["getText"]
      312 CALL                             R17 3 1
      313 SETTABLEKS                       R17 R16 K5 ["label"]
      315 SETTABLEKS                       R14 R16 K6 ["onActivated"]
      317 MOVE                             R9 R16
      318 RETURN                           R7 5
      319 GETUPVAL                         R16 4
      320 GETTABLEKS                       R16 R16 K37 ["OWNERNOTAGEVERIFIED"]
      322 JUMPIFNOTEQ                      R0 R16 ; [+26]
      324 LOADK                            R18 K38 ["SafetyOwnerAgeCheckDialog"]
      325 LOADK                            R19 K2 ["Title"]
      326 NAMECALL                         R16 R2 K3 ["getText"]
      328 CALL                             R16 3 1
      329 MOVE                             R7 R16
      330 LOADK                            R18 K38 ["SafetyOwnerAgeCheckDialog"]
      331 LOADK                            R19 K4 ["Body"]
      332 NAMECALL                         R16 R2 K3 ["getText"]
      334 CALL                             R16 3 1
      335 MOVE                             R8 R16
      336 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      337 LOADK                            R19 K8 ["DialogButton"]
      338 LOADK                            R20 K30 ["Close"]
      339 NAMECALL                         R17 R2 K3 ["getText"]
      341 CALL                             R17 3 1
      342 SETTABLEKS                       R17 R16 K5 ["label"]
      344 LOADNIL                          R17
      345 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      347 MOVE                             R9 R16
      348 RETURN                           R7 5
      349 GETUPVAL                         R16 4
      350 GETTABLEKS                       R16 R16 K39 ["OCCRETRIESEXHAUSTED"]
      352 JUMPIFNOTEQ                      R0 R16 ; [+26]
      354 LOADK                            R18 K40 ["SafetyServerErrorDialog"]
      355 LOADK                            R19 K2 ["Title"]
      356 NAMECALL                         R16 R2 K3 ["getText"]
      358 CALL                             R16 3 1
      359 MOVE                             R7 R16
      360 LOADK                            R18 K40 ["SafetyServerErrorDialog"]
      361 LOADK                            R19 K4 ["Body"]
      362 NAMECALL                         R16 R2 K3 ["getText"]
      364 CALL                             R16 3 1
      365 MOVE                             R8 R16
      366 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      367 LOADK                            R19 K8 ["DialogButton"]
      368 LOADK                            R20 K41 ["OK"]
      369 NAMECALL                         R17 R2 K3 ["getText"]
      371 CALL                             R17 3 1
      372 SETTABLEKS                       R17 R16 K5 ["label"]
      374 LOADNIL                          R17
      375 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      377 MOVE                             R9 R16
      378 RETURN                           R7 5
      379 GETUPVAL                         R16 4
      380 GETTABLEKS                       R16 R16 K42 ["AGEVERIFICATIONCOUNTRYBLOCKED"]
      382 JUMPIFNOTEQ                      R0 R16 ; [+37]
      384 LOADK                            R18 K43 ["SafetyCountryAgeCheckBlocked"]
      385 LOADK                            R19 K2 ["Title"]
      386 NAMECALL                         R16 R2 K3 ["getText"]
      388 CALL                             R16 3 1
      389 MOVE                             R7 R16
      390 LOADK                            R18 K43 ["SafetyCountryAgeCheckBlocked"]
      391 LOADK                            R19 K4 ["Body"]
      392 NAMECALL                         R16 R2 K3 ["getText"]
      394 CALL                             R16 3 1
      395 MOVE                             R8 R16
      396 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      397 LOADK                            R19 K8 ["DialogButton"]
      398 LOADK                            R20 K41 ["OK"]
      399 NAMECALL                         R17 R2 K3 ["getText"]
      401 CALL                             R17 3 1
      402 SETTABLEKS                       R17 R16 K5 ["label"]
      404 LOADNIL                          R17
      405 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      407 MOVE                             R9 R16
      408 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      409 LOADK                            R19 K8 ["DialogButton"]
      410 LOADK                            R20 K44 ["ViewDetails"]
      411 NAMECALL                         R17 R2 K3 ["getText"]
      413 CALL                             R17 3 1
      414 SETTABLEKS                       R17 R16 K5 ["label"]
      416 SETTABLEKS                       R15 R16 K6 ["onActivated"]
      418 MOVE                             R10 R16
      419 RETURN                           R7 5
      420 LOADK                            R18 K45 ["SafetyDefaultBlockedDialog"]
      421 LOADK                            R19 K2 ["Title"]
      422 NAMECALL                         R16 R2 K3 ["getText"]
      424 CALL                             R16 3 1
      425 MOVE                             R7 R16
      426 LOADK                            R18 K45 ["SafetyDefaultBlockedDialog"]
      427 LOADK                            R19 K4 ["Body"]
      428 NAMECALL                         R16 R2 K3 ["getText"]
      430 CALL                             R16 3 1
      431 MOVE                             R8 R16
      432 DUPTABLE                         R16 K7 [{"label", "onActivated"}]
      433 LOADK                            R19 K8 ["DialogButton"]
      434 LOADK                            R20 K41 ["OK"]
      435 NAMECALL                         R17 R2 K3 ["getText"]
      437 CALL                             R17 3 1
      438 SETTABLEKS                       R17 R16 K5 ["label"]
      440 LOADNIL                          R17
      441 SETTABLEKS                       R17 R16 K6 ["onActivated"]
      443 MOVE                             R9 R16
      444 RETURN                           R7 5

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
      105 CALL                             R13 7 5
      106 GETUPVAL                         R18 5
      107 GETUPVAL                         R19 6
      108 DUPTABLE                         R20 K24 [{"uri", "type", "title", "description", "primaryAction", "secondaryAction", "tertiaryAction", "escapeAction", "showIndeterminateProgressIndicator"}]
      109 GETTABLEKS                       R21 R0 K15 ["uri"]
      111 SETTABLEKS                       R21 R20 K15 ["uri"]
      113 LOADK                            R21 K25 ["Default"]
      114 SETTABLEKS                       R21 R20 K16 ["type"]
      116 SETTABLEKS                       R13 R20 K17 ["title"]
      118 SETTABLEKS                       R14 R20 K18 ["description"]
      120 JUMPIFEQKNIL                     R15 ; [+26]
      122 DUPTABLE                         R21 K28 [{"uri", "text", "onActivated"}]
      123 GETUPVAL                         R22 7
      124 GETTABLEKS                       R22 R22 K29 ["child"]
      126 GETTABLEKS                       R23 R0 K15 ["uri"]
      128 LOADK                            R25 K30 ["%*/Primary"]
      129 MOVE                             R27 R9
      130 NAMECALL                         R25 R25 K31 ["format"]
      132 CALL                             R25 2 1
      133 MOVE                             R24 R25
      134 CALL                             R22 2 1
      135 SETTABLEKS                       R22 R21 K15 ["uri"]
      137 GETTABLEKS                       R22 R15 K32 ["label"]
      139 SETTABLEKS                       R22 R21 K26 ["text"]
      141 NEWCLOSURE                       R22 P2
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R12
      144 SETTABLEKS                       R22 R21 K27 ["onActivated"]
      146 JUMP                             ; [+1]
      147 LOADNIL                          R21
      148 SETTABLEKS                       R21 R20 K19 ["primaryAction"]
      150 JUMPIFEQKNIL                     R16 ; [+26]
      152 DUPTABLE                         R21 K28 [{"uri", "text", "onActivated"}]
      153 GETUPVAL                         R22 7
      154 GETTABLEKS                       R22 R22 K29 ["child"]
      156 GETTABLEKS                       R23 R0 K15 ["uri"]
      158 LOADK                            R25 K33 ["%*/Secondary"]
      159 MOVE                             R27 R9
      160 NAMECALL                         R25 R25 K31 ["format"]
      162 CALL                             R25 2 1
      163 MOVE                             R24 R25
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K15 ["uri"]
      167 GETTABLEKS                       R22 R16 K32 ["label"]
      169 SETTABLEKS                       R22 R21 K26 ["text"]
      171 NEWCLOSURE                       R22 P3
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R12
      174 SETTABLEKS                       R22 R21 K27 ["onActivated"]
      176 JUMP                             ; [+1]
      177 LOADNIL                          R21
      178 SETTABLEKS                       R21 R20 K20 ["secondaryAction"]
      180 GETUPVAL                         R22 8
      181 CALL                             R22 0 1
      182 JUMPIFNOT                        R22 ; [+33]
      183 JUMPIFNOT                        R17 ; [+32]
      184 DUPTABLE                         R21 K35 [{"uri", "text", "disabled", "onActivated"}]
      185 GETUPVAL                         R22 7
      186 GETTABLEKS                       R22 R22 K29 ["child"]
      188 GETTABLEKS                       R23 R0 K15 ["uri"]
      190 LOADK                            R25 K36 ["%*/Tertiary"]
      191 MOVE                             R27 R9
      192 NAMECALL                         R25 R25 K31 ["format"]
      194 CALL                             R25 2 1
      195 MOVE                             R24 R25
      196 CALL                             R22 2 1
      197 SETTABLEKS                       R22 R21 K15 ["uri"]
      199 LOADK                            R24 K37 ["DialogButton"]
      200 LOADK                            R25 K38 ["RemindMeLater"]
      201 NAMECALL                         R22 R2 K39 ["getText"]
      203 CALL                             R22 3 1
      204 SETTABLEKS                       R22 R21 K26 ["text"]
      206 NOT                              R22 R7
      207 SETTABLEKS                       R22 R21 K34 ["disabled"]
      209 NEWCLOSURE                       R22 P4
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R12
      213 SETTABLEKS                       R22 R21 K27 ["onActivated"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R21
      217 SETTABLEKS                       R21 R20 K21 ["tertiaryAction"]
      219 GETUPVAL                         R22 9
      220 CALL                             R22 0 1
      221 JUMPIFNOT                        R22 ; [+20]
      222 DUPTABLE                         R21 K41 [{"uri", "onClose"}]
      223 GETUPVAL                         R22 7
      224 GETTABLEKS                       R22 R22 K29 ["child"]
      226 GETTABLEKS                       R23 R0 K15 ["uri"]
      228 LOADK                            R25 K42 ["%*/Escape"]
      229 MOVE                             R27 R9
      230 NAMECALL                         R25 R25 K31 ["format"]
      232 CALL                             R25 2 1
      233 MOVE                             R24 R25
      234 CALL                             R22 2 1
      235 SETTABLEKS                       R22 R21 K15 ["uri"]
      237 NEWCLOSURE                       R22 P5
      238 CAPTURE                          VAL R12
      239 SETTABLEKS                       R22 R21 K40 ["onClose"]
      241 JUMP                             ; [+1]
      242 LOADNIL                          R21
      243 SETTABLEKS                       R21 R20 K22 ["escapeAction"]
      245 LOADB                            R21 0
      246 SETTABLEKS                       R21 R20 K23 ["showIndeterminateProgressIndicator"]
      248 DUPTABLE                         R21 K44 [{"Checkbox"}]
      249 GETUPVAL                         R23 8
      250 CALL                             R23 0 1
      251 JUMPIFNOT                        R23 ; [+32]
      252 JUMPIFNOT                        R17 ; [+31]
      253 GETUPVAL                         R22 5
      254 GETUPVAL                         R23 10
      255 DUPTABLE                         R24 K49 [{"label", "isChecked", "onActivated", "size", "testId", "LayoutOrder"}]
      256 LOADK                            R27 K50 ["Safety"]
      257 LOADK                            R28 K51 ["EnforcementDateAcknowledgement"]
      258 NAMECALL                         R25 R2 K39 ["getText"]
      260 CALL                             R25 3 1
      261 SETTABLEKS                       R25 R24 K32 ["label"]
      263 SETTABLEKS                       R7 R24 K45 ["isChecked"]
      265 NEWCLOSURE                       R25 P6
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R7
      268 SETTABLEKS                       R25 R24 K27 ["onActivated"]
      270 GETUPVAL                         R25 11
      271 GETTABLEKS                       R25 R25 K52 ["Small"]
      273 SETTABLEKS                       R25 R24 K46 ["size"]
      275 LOADK                            R25 K53 ["--safety-dialog-checkbox"]
      276 SETTABLEKS                       R25 R24 K47 ["testId"]
      278 MOVE                             R25 R3
      279 CALL                             R25 0 1
      280 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      282 CALL                             R22 2 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R22
      285 SETTABLEKS                       R22 R21 K43 ["Checkbox"]
      287 CALL                             R18 3 -1
      288 RETURN                           R18 -1

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
