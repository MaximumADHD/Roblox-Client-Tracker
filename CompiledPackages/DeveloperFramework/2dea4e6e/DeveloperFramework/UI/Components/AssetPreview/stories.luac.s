PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R3 K2 ["join"]
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K5 [{"Text", "Size"}]
       11 LOADK                            R6 K6 ["Hello world from Footer"]
       12 SETTABLEKS                       R6 R5 K3 ["Text"]
       14 GETIMPORT                        R6 K9 [UDim2.fromScale]
       16 LOADN                            R7 1
       17 LOADN                            R8 0
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K4 ["Size"]
       21 CALL                             R3 2 -1
       22 CALL                             R1 -1 -1
       23 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K4 ["Part"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R0 R1 K5 ["Parent"]
       10 DUPTABLE                         R2 K16 [{"AssetData", "AssetInstance", "ActionText", "OnClickAction", "OnClickCreator", "OnClickContext", "Favorites", "Voting", "OnVoteUp", "OnVoteDown"}]
       11 DUPTABLE                         R3 K20 [{"Asset", "Creator", "Thumbnail"}]
       12 DUPTABLE                         R4 K29 [{"TypeId", "Updated", "Id", "AssetGenres", "Description", "Name", "IsEndorsed", "Created"}]
       13 LOADN                            R5 10
       14 SETTABLEKS                       R5 R4 K21 ["TypeId"]
       16 LOADK                            R5 K30 ["6/14/2016 6:43:37 PM"]
       17 SETTABLEKS                       R5 R4 K22 ["Updated"]
       19 LOADN                            R5 210
       20 SETTABLEKS                       R5 R4 K23 ["Id"]
       22 NEWTABLE                         R5 0 0
       24 SETTABLEKS                       R5 R4 K24 ["AssetGenres"]
       26 LOADK                            R5 K31 ["Cause heck, why not? \r\n\r\nA pine tree is cool, right? And here is some very long text that I have added specificially to test wrapping."]
       27 SETTABLEKS                       R5 R4 K25 ["Description"]
       29 LOADK                            R5 K32 ["Pine Tree with a very long name"]
       30 SETTABLEKS                       R5 R4 K26 ["Name"]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R4 K27 ["IsEndorsed"]
       35 LOADK                            R5 K33 ["10/21/2014 8:59:44 PM"]
       36 SETTABLEKS                       R5 R4 K28 ["Created"]
       38 SETTABLEKS                       R4 R3 K17 ["Asset"]
       40 DUPTABLE                         R4 K35 [{"Name", "Type", "Id"}]
       41 LOADK                            R5 K36 ["Someone"]
       42 SETTABLEKS                       R5 R4 K26 ["Name"]
       44 LOADN                            R5 1
       45 SETTABLEKS                       R5 R4 K34 ["Type"]
       47 LOADN                            R5 46
       48 SETTABLEKS                       R5 R4 K23 ["Id"]
       50 SETTABLEKS                       R4 R3 K18 ["Creator"]
       52 DUPTABLE                         R4 K41 [{"EndpointType", "Url", "Final", "UserId"}]
       53 LOADK                            R5 K42 ["Avatar"]
       54 SETTABLEKS                       R5 R4 K37 ["EndpointType"]
       56 LOADK                            R5 K43 ["rbxasset://textures/face.png"]
       57 SETTABLEKS                       R5 R4 K38 ["Url"]
       59 LOADB                            R5 1
       60 SETTABLEKS                       R5 R4 K39 ["Final"]
       62 LOADN                            R5 0
       63 SETTABLEKS                       R5 R4 K40 ["UserId"]
       65 SETTABLEKS                       R4 R3 K19 ["Thumbnail"]
       67 SETTABLEKS                       R3 R2 K6 ["AssetData"]
       69 SETTABLEKS                       R0 R2 K7 ["AssetInstance"]
       71 LOADK                            R3 K44 ["Insert"]
       72 SETTABLEKS                       R3 R2 K8 ["ActionText"]
       74 DUPCLOSURE                       R3 K45 [PROTO_0]
       75 SETTABLEKS                       R3 R2 K9 ["OnClickAction"]
       77 DUPCLOSURE                       R3 K46 [PROTO_1]
       78 SETTABLEKS                       R3 R2 K10 ["OnClickCreator"]
       80 DUPCLOSURE                       R3 K47 [PROTO_2]
       81 SETTABLEKS                       R3 R2 K11 ["OnClickContext"]
       83 DUPTABLE                         R3 K51 [{"Count", "IsFavorited", "OnClick"}]
       84 LOADN                            R4 4
       85 SETTABLEKS                       R4 R3 K48 ["Count"]
       87 LOADB                            R4 0
       88 SETTABLEKS                       R4 R3 K49 ["IsFavorited"]
       90 DUPCLOSURE                       R4 K52 [PROTO_3]
       91 SETTABLEKS                       R4 R3 K50 ["OnClick"]
       93 SETTABLEKS                       R3 R2 K12 ["Favorites"]
       95 DUPTABLE                         R3 K55 [{"UpVotes", "DownVotes"}]
       96 LOADN                            R4 5
       97 SETTABLEKS                       R4 R3 K53 ["UpVotes"]
       99 LOADN                            R4 4
      100 SETTABLEKS                       R4 R3 K54 ["DownVotes"]
      102 SETTABLEKS                       R3 R2 K13 ["Voting"]
      104 DUPCLOSURE                       R3 K56 [PROTO_4]
      105 SETTABLEKS                       R3 R2 K14 ["OnVoteUp"]
      107 DUPCLOSURE                       R3 K57 [PROTO_5]
      108 SETTABLEKS                       R3 R2 K15 ["OnVoteDown"]
      110 DUPTABLE                         R3 K69 [{"Basic", "BasicNoDescription", "BasicVideo", "BasicWithISODates", "BasicWithRawDates", "BasicWithDescriptionLinks", "NoVoting", "Scrolling", "FontFamily", "Narrow", "Footer"}]
      111 GETUPVAL                         R4 0
      112 GETTABLEKS                       R4 R4 K70 ["createElement"]
      114 GETUPVAL                         R5 1
      115 DUPTABLE                         R6 K72 [{"Size"}]
      116 GETIMPORT                        R7 K74 [UDim2.new]
      118 LOADN                            R8 0
      119 LOADN                            R9 112
      120 LOADN                            R10 0
      121 LOADN                            R11 188
      122 CALL                             R7 4 1
      123 SETTABLEKS                       R7 R6 K71 ["Size"]
      125 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      126 GETUPVAL                         R8 0
      127 GETTABLEKS                       R8 R8 K70 ["createElement"]
      129 GETUPVAL                         R9 2
      130 GETUPVAL                         R10 3
      131 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      133 GETTABLEKS                       R10 R10 K78 ["join"]
      135 MOVE                             R11 R2
      136 DUPTABLE                         R12 K72 [{"Size"}]
      137 GETIMPORT                        R13 K74 [UDim2.new]
      139 LOADN                            R14 0
      140 LOADN                            R15 112
      141 LOADN                            R16 1
      142 LOADN                            R17 0
      143 CALL                             R13 4 1
      144 SETTABLEKS                       R13 R12 K71 ["Size"]
      146 CALL                             R10 2 -1
      147 CALL                             R8 -1 1
      148 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      150 CALL                             R4 3 1
      151 SETTABLEKS                       R4 R3 K58 ["Basic"]
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R4 R4 K70 ["createElement"]
      156 GETUPVAL                         R5 1
      157 DUPTABLE                         R6 K72 [{"Size"}]
      158 GETIMPORT                        R7 K74 [UDim2.new]
      160 LOADN                            R8 0
      161 LOADN                            R9 112
      162 LOADN                            R10 0
      163 LOADN                            R11 188
      164 CALL                             R7 4 1
      165 SETTABLEKS                       R7 R6 K71 ["Size"]
      167 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      168 GETUPVAL                         R8 0
      169 GETTABLEKS                       R8 R8 K70 ["createElement"]
      171 GETUPVAL                         R9 2
      172 GETUPVAL                         R10 3
      173 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      175 GETTABLEKS                       R10 R10 K78 ["join"]
      177 MOVE                             R11 R2
      178 DUPTABLE                         R12 K79 [{"Size", "AssetData"}]
      179 GETIMPORT                        R13 K74 [UDim2.new]
      181 LOADN                            R14 0
      182 LOADN                            R15 112
      183 LOADN                            R16 1
      184 LOADN                            R17 0
      185 CALL                             R13 4 1
      186 SETTABLEKS                       R13 R12 K71 ["Size"]
      188 GETUPVAL                         R13 3
      189 GETTABLEKS                       R13 R13 K77 ["Dictionary"]
      191 GETTABLEKS                       R13 R13 K78 ["join"]
      193 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      195 DUPTABLE                         R15 K80 [{"Asset"}]
      196 GETUPVAL                         R16 3
      197 GETTABLEKS                       R16 R16 K77 ["Dictionary"]
      199 GETTABLEKS                       R16 R16 K78 ["join"]
      201 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      203 GETTABLEKS                       R17 R17 K17 ["Asset"]
      205 DUPTABLE                         R18 K81 [{"Description"}]
      206 GETUPVAL                         R19 3
      207 GETTABLEKS                       R19 R19 K82 ["None"]
      209 SETTABLEKS                       R19 R18 K25 ["Description"]
      211 CALL                             R16 2 1
      212 SETTABLEKS                       R16 R15 K17 ["Asset"]
      214 CALL                             R13 2 1
      215 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      217 CALL                             R10 2 -1
      218 CALL                             R8 -1 1
      219 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      221 CALL                             R4 3 1
      222 SETTABLEKS                       R4 R3 K59 ["BasicNoDescription"]
      224 GETUPVAL                         R4 0
      225 GETTABLEKS                       R4 R4 K70 ["createElement"]
      227 GETUPVAL                         R5 1
      228 DUPTABLE                         R6 K72 [{"Size"}]
      229 GETIMPORT                        R7 K74 [UDim2.new]
      231 LOADN                            R8 0
      232 LOADN                            R9 112
      233 LOADN                            R10 0
      234 LOADN                            R11 188
      235 CALL                             R7 4 1
      236 SETTABLEKS                       R7 R6 K71 ["Size"]
      238 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      239 GETUPVAL                         R8 0
      240 GETTABLEKS                       R8 R8 K70 ["createElement"]
      242 GETUPVAL                         R9 2
      243 GETUPVAL                         R10 3
      244 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      246 GETTABLEKS                       R10 R10 K78 ["join"]
      248 MOVE                             R11 R2
      249 DUPTABLE                         R12 K79 [{"Size", "AssetData"}]
      250 GETIMPORT                        R13 K74 [UDim2.new]
      252 LOADN                            R14 0
      253 LOADN                            R15 112
      254 LOADN                            R16 1
      255 LOADN                            R17 0
      256 CALL                             R13 4 1
      257 SETTABLEKS                       R13 R12 K71 ["Size"]
      259 GETUPVAL                         R13 3
      260 GETTABLEKS                       R13 R13 K77 ["Dictionary"]
      262 GETTABLEKS                       R13 R13 K78 ["join"]
      264 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      266 DUPTABLE                         R15 K80 [{"Asset"}]
      267 GETUPVAL                         R16 3
      268 GETTABLEKS                       R16 R16 K77 ["Dictionary"]
      270 GETTABLEKS                       R16 R16 K78 ["join"]
      272 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      274 GETTABLEKS                       R17 R17 K17 ["Asset"]
      276 DUPTABLE                         R18 K83 [{"Id", "TypeId"}]
      277 LOADK                            R19 K84 [5608250999]
      278 SETTABLEKS                       R19 R18 K23 ["Id"]
      280 GETIMPORT                        R19 K88 [Enum.AssetType.Video]
      282 GETTABLEKS                       R19 R19 K89 ["Value"]
      284 SETTABLEKS                       R19 R18 K21 ["TypeId"]
      286 CALL                             R16 2 1
      287 SETTABLEKS                       R16 R15 K17 ["Asset"]
      289 CALL                             R13 2 1
      290 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      292 CALL                             R10 2 -1
      293 CALL                             R8 -1 1
      294 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      296 CALL                             R4 3 1
      297 SETTABLEKS                       R4 R3 K60 ["BasicVideo"]
      299 GETUPVAL                         R4 0
      300 GETTABLEKS                       R4 R4 K70 ["createElement"]
      302 GETUPVAL                         R5 1
      303 DUPTABLE                         R6 K72 [{"Size"}]
      304 GETIMPORT                        R7 K74 [UDim2.new]
      306 LOADN                            R8 0
      307 LOADN                            R9 112
      308 LOADN                            R10 0
      309 LOADN                            R11 188
      310 CALL                             R7 4 1
      311 SETTABLEKS                       R7 R6 K71 ["Size"]
      313 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      314 GETUPVAL                         R8 0
      315 GETTABLEKS                       R8 R8 K70 ["createElement"]
      317 GETUPVAL                         R9 2
      318 GETUPVAL                         R10 3
      319 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      321 GETTABLEKS                       R10 R10 K78 ["join"]
      323 MOVE                             R11 R2
      324 DUPTABLE                         R12 K79 [{"Size", "AssetData"}]
      325 GETIMPORT                        R13 K74 [UDim2.new]
      327 LOADN                            R14 0
      328 LOADN                            R15 112
      329 LOADN                            R16 1
      330 LOADN                            R17 0
      331 CALL                             R13 4 1
      332 SETTABLEKS                       R13 R12 K71 ["Size"]
      334 GETUPVAL                         R13 3
      335 GETTABLEKS                       R13 R13 K77 ["Dictionary"]
      337 GETTABLEKS                       R13 R13 K78 ["join"]
      339 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      341 DUPTABLE                         R15 K80 [{"Asset"}]
      342 GETUPVAL                         R16 3
      343 GETTABLEKS                       R16 R16 K77 ["Dictionary"]
      345 GETTABLEKS                       R16 R16 K78 ["join"]
      347 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      349 GETTABLEKS                       R17 R17 K17 ["Asset"]
      351 DUPTABLE                         R18 K90 [{"Created", "Updated"}]
      352 LOADK                            R19 K91 ["2014-10-21T08:59:44Z"]
      353 SETTABLEKS                       R19 R18 K28 ["Created"]
      355 LOADK                            R19 K92 ["2016-06-14T18:43:37Z"]
      356 SETTABLEKS                       R19 R18 K22 ["Updated"]
      358 CALL                             R16 2 1
      359 SETTABLEKS                       R16 R15 K17 ["Asset"]
      361 CALL                             R13 2 1
      362 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      364 CALL                             R10 2 -1
      365 CALL                             R8 -1 1
      366 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      368 CALL                             R4 3 1
      369 SETTABLEKS                       R4 R3 K61 ["BasicWithISODates"]
      371 GETUPVAL                         R4 0
      372 GETTABLEKS                       R4 R4 K70 ["createElement"]
      374 GETUPVAL                         R5 1
      375 DUPTABLE                         R6 K72 [{"Size"}]
      376 GETIMPORT                        R7 K74 [UDim2.new]
      378 LOADN                            R8 0
      379 LOADN                            R9 112
      380 LOADN                            R10 0
      381 LOADN                            R11 188
      382 CALL                             R7 4 1
      383 SETTABLEKS                       R7 R6 K71 ["Size"]
      385 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      386 GETUPVAL                         R8 0
      387 GETTABLEKS                       R8 R8 K70 ["createElement"]
      389 GETUPVAL                         R9 2
      390 GETUPVAL                         R10 3
      391 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      393 GETTABLEKS                       R10 R10 K78 ["join"]
      395 MOVE                             R11 R2
      396 DUPTABLE                         R12 K79 [{"Size", "AssetData"}]
      397 GETIMPORT                        R13 K74 [UDim2.new]
      399 LOADN                            R14 0
      400 LOADN                            R15 112
      401 LOADN                            R16 1
      402 LOADN                            R17 0
      403 CALL                             R13 4 1
      404 SETTABLEKS                       R13 R12 K71 ["Size"]
      406 GETUPVAL                         R13 3
      407 GETTABLEKS                       R13 R13 K77 ["Dictionary"]
      409 GETTABLEKS                       R13 R13 K78 ["join"]
      411 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      413 DUPTABLE                         R15 K80 [{"Asset"}]
      414 GETUPVAL                         R16 3
      415 GETTABLEKS                       R16 R16 K77 ["Dictionary"]
      417 GETTABLEKS                       R16 R16 K78 ["join"]
      419 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      421 GETTABLEKS                       R17 R17 K17 ["Asset"]
      423 DUPTABLE                         R18 K95 [{"CreatedRaw", "UpdatedRaw"}]
      424 LOADK                            R19 K96 ["/Date(1413925184257)/"]
      425 SETTABLEKS                       R19 R18 K93 ["CreatedRaw"]
      427 LOADK                            R19 K96 ["/Date(1413925184257)/"]
      428 SETTABLEKS                       R19 R18 K94 ["UpdatedRaw"]
      430 CALL                             R16 2 1
      431 SETTABLEKS                       R16 R15 K17 ["Asset"]
      433 CALL                             R13 2 1
      434 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      436 CALL                             R10 2 -1
      437 CALL                             R8 -1 1
      438 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      440 CALL                             R4 3 1
      441 SETTABLEKS                       R4 R3 K62 ["BasicWithRawDates"]
      443 GETUPVAL                         R4 0
      444 GETTABLEKS                       R4 R4 K70 ["createElement"]
      446 GETUPVAL                         R5 1
      447 DUPTABLE                         R6 K72 [{"Size"}]
      448 GETIMPORT                        R7 K74 [UDim2.new]
      450 LOADN                            R8 0
      451 LOADN                            R9 112
      452 LOADN                            R10 0
      453 LOADN                            R11 188
      454 CALL                             R7 4 1
      455 SETTABLEKS                       R7 R6 K71 ["Size"]
      457 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      458 GETUPVAL                         R8 0
      459 GETTABLEKS                       R8 R8 K70 ["createElement"]
      461 GETUPVAL                         R9 2
      462 GETUPVAL                         R10 3
      463 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      465 GETTABLEKS                       R10 R10 K78 ["join"]
      467 MOVE                             R11 R2
      468 DUPTABLE                         R12 K79 [{"Size", "AssetData"}]
      469 GETIMPORT                        R13 K74 [UDim2.new]
      471 LOADN                            R14 0
      472 LOADN                            R15 112
      473 LOADN                            R16 1
      474 LOADN                            R17 0
      475 CALL                             R13 4 1
      476 SETTABLEKS                       R13 R12 K71 ["Size"]
      478 GETUPVAL                         R13 3
      479 GETTABLEKS                       R13 R13 K77 ["Dictionary"]
      481 GETTABLEKS                       R13 R13 K78 ["join"]
      483 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      485 DUPTABLE                         R15 K80 [{"Asset"}]
      486 GETUPVAL                         R16 3
      487 GETTABLEKS                       R16 R16 K77 ["Dictionary"]
      489 GETTABLEKS                       R16 R16 K78 ["join"]
      491 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      493 GETTABLEKS                       R17 R17 K17 ["Asset"]
      495 DUPTABLE                         R18 K81 [{"Description"}]
      496 LOADK                            R19 K97 ["See the web marketplace at https://create.roblox.com/marketplace"]
      497 SETTABLEKS                       R19 R18 K25 ["Description"]
      499 CALL                             R16 2 1
      500 SETTABLEKS                       R16 R15 K17 ["Asset"]
      502 CALL                             R13 2 1
      503 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      505 CALL                             R10 2 -1
      506 CALL                             R8 -1 1
      507 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      509 CALL                             R4 3 1
      510 SETTABLEKS                       R4 R3 K63 ["BasicWithDescriptionLinks"]
      512 GETUPVAL                         R4 0
      513 GETTABLEKS                       R4 R4 K70 ["createElement"]
      515 GETUPVAL                         R5 1
      516 DUPTABLE                         R6 K72 [{"Size"}]
      517 GETIMPORT                        R7 K74 [UDim2.new]
      519 LOADN                            R8 0
      520 LOADN                            R9 112
      521 LOADN                            R10 0
      522 LOADN                            R11 188
      523 CALL                             R7 4 1
      524 SETTABLEKS                       R7 R6 K71 ["Size"]
      526 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      527 GETUPVAL                         R8 0
      528 GETTABLEKS                       R8 R8 K70 ["createElement"]
      530 GETUPVAL                         R9 2
      531 GETUPVAL                         R10 3
      532 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      534 GETTABLEKS                       R10 R10 K78 ["join"]
      536 MOVE                             R11 R2
      537 DUPTABLE                         R12 K98 [{"Size", "Voting"}]
      538 GETIMPORT                        R13 K74 [UDim2.new]
      540 LOADN                            R14 0
      541 LOADN                            R15 112
      542 LOADN                            R16 1
      543 LOADN                            R17 0
      544 CALL                             R13 4 1
      545 SETTABLEKS                       R13 R12 K71 ["Size"]
      547 GETUPVAL                         R13 3
      548 GETTABLEKS                       R13 R13 K82 ["None"]
      550 SETTABLEKS                       R13 R12 K13 ["Voting"]
      552 CALL                             R10 2 -1
      553 CALL                             R8 -1 1
      554 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      556 CALL                             R4 3 1
      557 SETTABLEKS                       R4 R3 K64 ["NoVoting"]
      559 GETUPVAL                         R4 0
      560 GETTABLEKS                       R4 R4 K70 ["createElement"]
      562 GETUPVAL                         R5 1
      563 DUPTABLE                         R6 K72 [{"Size"}]
      564 GETIMPORT                        R7 K74 [UDim2.new]
      566 LOADN                            R8 0
      567 LOADN                            R9 112
      568 LOADN                            R10 0
      569 LOADN                            R11 244
      570 CALL                             R7 4 1
      571 SETTABLEKS                       R7 R6 K71 ["Size"]
      573 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      574 GETUPVAL                         R8 0
      575 GETTABLEKS                       R8 R8 K70 ["createElement"]
      577 GETUPVAL                         R9 2
      578 GETUPVAL                         R10 3
      579 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      581 GETTABLEKS                       R10 R10 K78 ["join"]
      583 MOVE                             R11 R2
      584 DUPTABLE                         R12 K72 [{"Size"}]
      585 GETIMPORT                        R13 K74 [UDim2.new]
      587 LOADN                            R14 0
      588 LOADN                            R15 112
      589 LOADN                            R16 1
      590 LOADN                            R17 0
      591 CALL                             R13 4 1
      592 SETTABLEKS                       R13 R12 K71 ["Size"]
      594 CALL                             R10 2 -1
      595 CALL                             R8 -1 1
      596 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      598 CALL                             R4 3 1
      599 SETTABLEKS                       R4 R3 K65 ["Scrolling"]
      601 GETUPVAL                         R4 0
      602 GETTABLEKS                       R4 R4 K70 ["createElement"]
      604 GETUPVAL                         R5 1
      605 DUPTABLE                         R6 K72 [{"Size"}]
      606 GETIMPORT                        R7 K74 [UDim2.new]
      608 LOADN                            R8 0
      609 LOADN                            R9 112
      610 LOADN                            R10 0
      611 LOADN                            R11 188
      612 CALL                             R7 4 1
      613 SETTABLEKS                       R7 R6 K71 ["Size"]
      615 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      616 GETUPVAL                         R8 0
      617 GETTABLEKS                       R8 R8 K70 ["createElement"]
      619 GETUPVAL                         R9 2
      620 GETUPVAL                         R10 3
      621 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      623 GETTABLEKS                       R10 R10 K78 ["join"]
      625 MOVE                             R11 R2
      626 DUPTABLE                         R12 K79 [{"Size", "AssetData"}]
      627 GETIMPORT                        R13 K74 [UDim2.new]
      629 LOADN                            R14 0
      630 LOADN                            R15 112
      631 LOADN                            R16 1
      632 LOADN                            R17 0
      633 CALL                             R13 4 1
      634 SETTABLEKS                       R13 R12 K71 ["Size"]
      636 GETUPVAL                         R13 3
      637 GETTABLEKS                       R13 R13 K77 ["Dictionary"]
      639 GETTABLEKS                       R13 R13 K78 ["join"]
      641 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      643 DUPTABLE                         R15 K80 [{"Asset"}]
      644 GETUPVAL                         R16 3
      645 GETTABLEKS                       R16 R16 K77 ["Dictionary"]
      647 GETTABLEKS                       R16 R16 K78 ["join"]
      649 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      651 GETTABLEKS                       R17 R17 K17 ["Asset"]
      653 DUPTABLE                         R18 K83 [{"Id", "TypeId"}]
      654 LOADK                            R19 K99 [8836875837]
      655 SETTABLEKS                       R19 R18 K23 ["Id"]
      657 GETIMPORT                        R19 K100 [Enum.AssetType.FontFamily]
      659 GETTABLEKS                       R19 R19 K89 ["Value"]
      661 SETTABLEKS                       R19 R18 K21 ["TypeId"]
      663 CALL                             R16 2 1
      664 SETTABLEKS                       R16 R15 K17 ["Asset"]
      666 CALL                             R13 2 1
      667 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      669 CALL                             R10 2 -1
      670 CALL                             R8 -1 1
      671 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      673 CALL                             R4 3 1
      674 SETTABLEKS                       R4 R3 K66 ["FontFamily"]
      676 GETUPVAL                         R4 0
      677 GETTABLEKS                       R4 R4 K70 ["createElement"]
      679 GETUPVAL                         R5 1
      680 DUPTABLE                         R6 K72 [{"Size"}]
      681 GETIMPORT                        R7 K74 [UDim2.new]
      683 LOADN                            R8 0
      684 LOADN                            R9 207
      685 LOADN                            R10 0
      686 LOADN                            R11 238
      687 CALL                             R7 4 1
      688 SETTABLEKS                       R7 R6 K71 ["Size"]
      690 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      691 GETUPVAL                         R8 0
      692 GETTABLEKS                       R8 R8 K70 ["createElement"]
      694 GETUPVAL                         R9 2
      695 GETUPVAL                         R10 3
      696 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      698 GETTABLEKS                       R10 R10 K78 ["join"]
      700 MOVE                             R11 R2
      701 DUPTABLE                         R12 K72 [{"Size"}]
      702 GETIMPORT                        R13 K74 [UDim2.new]
      704 LOADN                            R14 0
      705 LOADN                            R15 207
      706 LOADN                            R16 1
      707 LOADN                            R17 0
      708 CALL                             R13 4 1
      709 SETTABLEKS                       R13 R12 K71 ["Size"]
      711 CALL                             R10 2 -1
      712 CALL                             R8 -1 1
      713 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      715 CALL                             R4 3 1
      716 SETTABLEKS                       R4 R3 K67 ["Narrow"]
      718 GETUPVAL                         R4 0
      719 GETTABLEKS                       R4 R4 K70 ["createElement"]
      721 GETUPVAL                         R5 1
      722 DUPTABLE                         R6 K72 [{"Size"}]
      723 GETIMPORT                        R7 K74 [UDim2.new]
      725 LOADN                            R8 0
      726 LOADN                            R9 207
      727 LOADN                            R10 0
      728 LOADN                            R11 238
      729 CALL                             R7 4 1
      730 SETTABLEKS                       R7 R6 K71 ["Size"]
      732 DUPTABLE                         R7 K76 [{"AssetPreview"}]
      733 GETUPVAL                         R8 0
      734 GETTABLEKS                       R8 R8 K70 ["createElement"]
      736 GETUPVAL                         R9 2
      737 GETUPVAL                         R10 3
      738 GETTABLEKS                       R10 R10 K77 ["Dictionary"]
      740 GETTABLEKS                       R10 R10 K78 ["join"]
      742 MOVE                             R11 R2
      743 DUPTABLE                         R12 K102 [{"Size", "RenderFooter"}]
      744 GETIMPORT                        R13 K74 [UDim2.new]
      746 LOADN                            R14 0
      747 LOADN                            R15 207
      748 LOADN                            R16 1
      749 LOADN                            R17 0
      750 CALL                             R13 4 1
      751 SETTABLEKS                       R13 R12 K71 ["Size"]
      753 DUPCLOSURE                       R13 K103 [PROTO_6]
      754 CAPTURE                          UPVAL U0
      755 CAPTURE                          UPVAL U4
      756 CAPTURE                          UPVAL U3
      757 SETTABLEKS                       R13 R12 K101 ["RenderFooter"]
      759 CALL                             R10 2 -1
      760 CALL                             R8 -1 1
      761 SETTABLEKS                       R8 R7 K75 ["AssetPreview"]
      763 CALL                             R4 3 1
      764 SETTABLEKS                       R4 R3 K68 ["Footer"]
      766 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K4 ["Parent"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K2 ["UI"]
       34 GETTABLEKS                       R5 R5 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K10 ["Pane"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R6 R0 K2 ["UI"]
       43 GETTABLEKS                       R6 R6 K9 ["Components"]
       45 GETTABLEKS                       R6 R6 K11 ["TextLabel"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K12 [PROTO_7]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 RETURN                           R6 1
