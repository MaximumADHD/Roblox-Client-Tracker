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
       10 DUPTABLE                         R5 K6 [{["Text"] = "Hello world from Footer", ["Size"]}]
       11 GETIMPORT                        R6 K9 [UDim2.fromScale]
       13 LOADN                            R7 1
       14 LOADN                            R8 0
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K5 ["Size"]
       18 CALL                             R3 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K4 ["Part"]
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R0 R1 K5 ["Parent"]
       10 DUPTABLE                         R2 K17 [{["AssetData"], ["AssetInstance"], ["ActionText"] = "Insert", ["OnClickAction"], ["OnClickCreator"], ["OnClickContext"], ["Favorites"], ["Voting"], ["OnVoteUp"], ["OnVoteDown"]}]
       11 DUPTABLE                         R3 K21 [{"Asset", "Creator", "Thumbnail"}]
       12 DUPTABLE                         R4 K37 [{["TypeId"] = 10, ["Updated"] = "6/14/2016 6:43:37 PM", ["Id"] = 1234, ["AssetGenres"], ["Description"] = "Cause heck, why not? \r\n\r\nA pine tree is cool, right? And here is some very long text that I have added specificially to test wrapping.", ["Name"] = "Pine Tree with a very long name", ["IsEndorsed"] = True, ["Created"] = "10/21/2014 8:59:44 PM"}]
       13 NEWTABLE                         R5 0 0
       15 SETTABLEKS                       R5 R4 K28 ["AssetGenres"]
       17 SETTABLEKS                       R4 R3 K18 ["Asset"]
       19 DUPTABLE                         R4 K42 [{["Name"] = "Someone", ["Type"] = 1, ["Id"] = 5678}]
       20 SETTABLEKS                       R4 R3 K19 ["Creator"]
       22 DUPTABLE                         R4 K50 [{["EndpointType"] = "Avatar", ["Url"] = "rbxasset://textures/face.png", ["Final"] = True, ["UserId"] = 0}]
       23 SETTABLEKS                       R4 R3 K20 ["Thumbnail"]
       25 SETTABLEKS                       R3 R2 K6 ["AssetData"]
       27 SETTABLEKS                       R0 R2 K7 ["AssetInstance"]
       29 DUPCLOSURE                       R3 K51 [PROTO_0]
       30 SETTABLEKS                       R3 R2 K10 ["OnClickAction"]
       32 DUPCLOSURE                       R3 K52 [PROTO_1]
       33 SETTABLEKS                       R3 R2 K11 ["OnClickCreator"]
       35 DUPCLOSURE                       R3 K53 [PROTO_2]
       36 SETTABLEKS                       R3 R2 K12 ["OnClickContext"]
       38 DUPTABLE                         R3 K59 [{["Count"] = 10500, ["IsFavorited"] = False, ["OnClick"]}]
       39 DUPCLOSURE                       R4 K60 [PROTO_3]
       40 SETTABLEKS                       R4 R3 K58 ["OnClick"]
       42 SETTABLEKS                       R3 R2 K13 ["Favorites"]
       44 DUPTABLE                         R3 K65 [{["UpVotes"] = 5, ["DownVotes"] = 4}]
       45 SETTABLEKS                       R3 R2 K14 ["Voting"]
       47 DUPCLOSURE                       R3 K66 [PROTO_4]
       48 SETTABLEKS                       R3 R2 K15 ["OnVoteUp"]
       50 DUPCLOSURE                       R3 K67 [PROTO_5]
       51 SETTABLEKS                       R3 R2 K16 ["OnVoteDown"]
       53 DUPTABLE                         R3 K79 [{"Basic", "BasicNoDescription", "BasicVideo", "BasicWithISODates", "BasicWithRawDates", "BasicWithDescriptionLinks", "NoVoting", "Scrolling", "FontFamily", "Narrow", "Footer"}]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K80 ["createElement"]
       57 GETUPVAL                         R5 1
       58 DUPTABLE                         R6 K82 [{"Size"}]
       59 GETIMPORT                        R7 K84 [UDim2.new]
       61 LOADN                            R8 0
       62 LOADN                            R9 368
       63 LOADN                            R10 0
       64 LOADN                            R11 700
       65 CALL                             R7 4 1
       66 SETTABLEKS                       R7 R6 K81 ["Size"]
       68 DUPTABLE                         R7 K86 [{"AssetPreview"}]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K80 ["createElement"]
       72 GETUPVAL                         R9 2
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
       76 GETTABLEKS                       R10 R10 K88 ["join"]
       78 MOVE                             R11 R2
       79 DUPTABLE                         R12 K82 [{"Size"}]
       80 GETIMPORT                        R13 K84 [UDim2.new]
       82 LOADN                            R14 0
       83 LOADN                            R15 368
       84 LOADN                            R16 1
       85 LOADN                            R17 0
       86 CALL                             R13 4 1
       87 SETTABLEKS                       R13 R12 K81 ["Size"]
       89 CALL                             R10 2 -1
       90 CALL                             R8 -1 1
       91 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
       93 CALL                             R4 3 1
       94 SETTABLEKS                       R4 R3 K68 ["Basic"]
       96 GETUPVAL                         R4 0
       97 GETTABLEKS                       R4 R4 K80 ["createElement"]
       99 GETUPVAL                         R5 1
      100 DUPTABLE                         R6 K82 [{"Size"}]
      101 GETIMPORT                        R7 K84 [UDim2.new]
      103 LOADN                            R8 0
      104 LOADN                            R9 368
      105 LOADN                            R10 0
      106 LOADN                            R11 700
      107 CALL                             R7 4 1
      108 SETTABLEKS                       R7 R6 K81 ["Size"]
      110 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      111 GETUPVAL                         R8 0
      112 GETTABLEKS                       R8 R8 K80 ["createElement"]
      114 GETUPVAL                         R9 2
      115 GETUPVAL                         R10 3
      116 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      118 GETTABLEKS                       R10 R10 K88 ["join"]
      120 MOVE                             R11 R2
      121 DUPTABLE                         R12 K89 [{"Size", "AssetData"}]
      122 GETIMPORT                        R13 K84 [UDim2.new]
      124 LOADN                            R14 0
      125 LOADN                            R15 368
      126 LOADN                            R16 1
      127 LOADN                            R17 0
      128 CALL                             R13 4 1
      129 SETTABLEKS                       R13 R12 K81 ["Size"]
      131 GETUPVAL                         R13 3
      132 GETTABLEKS                       R13 R13 K87 ["Dictionary"]
      134 GETTABLEKS                       R13 R13 K88 ["join"]
      136 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      138 DUPTABLE                         R15 K90 [{"Asset"}]
      139 GETUPVAL                         R16 3
      140 GETTABLEKS                       R16 R16 K87 ["Dictionary"]
      142 GETTABLEKS                       R16 R16 K88 ["join"]
      144 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      146 GETTABLEKS                       R17 R17 K18 ["Asset"]
      148 DUPTABLE                         R18 K91 [{"Description"}]
      149 GETUPVAL                         R19 3
      150 GETTABLEKS                       R19 R19 K92 ["None"]
      152 SETTABLEKS                       R19 R18 K29 ["Description"]
      154 CALL                             R16 2 1
      155 SETTABLEKS                       R16 R15 K18 ["Asset"]
      157 CALL                             R13 2 1
      158 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      160 CALL                             R10 2 -1
      161 CALL                             R8 -1 1
      162 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      164 CALL                             R4 3 1
      165 SETTABLEKS                       R4 R3 K69 ["BasicNoDescription"]
      167 GETUPVAL                         R4 0
      168 GETTABLEKS                       R4 R4 K80 ["createElement"]
      170 GETUPVAL                         R5 1
      171 DUPTABLE                         R6 K82 [{"Size"}]
      172 GETIMPORT                        R7 K84 [UDim2.new]
      174 LOADN                            R8 0
      175 LOADN                            R9 368
      176 LOADN                            R10 0
      177 LOADN                            R11 700
      178 CALL                             R7 4 1
      179 SETTABLEKS                       R7 R6 K81 ["Size"]
      181 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      182 GETUPVAL                         R8 0
      183 GETTABLEKS                       R8 R8 K80 ["createElement"]
      185 GETUPVAL                         R9 2
      186 GETUPVAL                         R10 3
      187 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      189 GETTABLEKS                       R10 R10 K88 ["join"]
      191 MOVE                             R11 R2
      192 DUPTABLE                         R12 K89 [{"Size", "AssetData"}]
      193 GETIMPORT                        R13 K84 [UDim2.new]
      195 LOADN                            R14 0
      196 LOADN                            R15 368
      197 LOADN                            R16 1
      198 LOADN                            R17 0
      199 CALL                             R13 4 1
      200 SETTABLEKS                       R13 R12 K81 ["Size"]
      202 GETUPVAL                         R13 3
      203 GETTABLEKS                       R13 R13 K87 ["Dictionary"]
      205 GETTABLEKS                       R13 R13 K88 ["join"]
      207 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      209 DUPTABLE                         R15 K90 [{"Asset"}]
      210 GETUPVAL                         R16 3
      211 GETTABLEKS                       R16 R16 K87 ["Dictionary"]
      213 GETTABLEKS                       R16 R16 K88 ["join"]
      215 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      217 GETTABLEKS                       R17 R17 K18 ["Asset"]
      219 DUPTABLE                         R18 K94 [{["Id"] = 5608250999, ["TypeId"]}]
      220 GETIMPORT                        R19 K98 [Enum.AssetType.Video]
      222 GETTABLEKS                       R19 R19 K99 ["Value"]
      224 SETTABLEKS                       R19 R18 K22 ["TypeId"]
      226 CALL                             R16 2 1
      227 SETTABLEKS                       R16 R15 K18 ["Asset"]
      229 CALL                             R13 2 1
      230 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      232 CALL                             R10 2 -1
      233 CALL                             R8 -1 1
      234 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      236 CALL                             R4 3 1
      237 SETTABLEKS                       R4 R3 K70 ["BasicVideo"]
      239 GETUPVAL                         R4 0
      240 GETTABLEKS                       R4 R4 K80 ["createElement"]
      242 GETUPVAL                         R5 1
      243 DUPTABLE                         R6 K82 [{"Size"}]
      244 GETIMPORT                        R7 K84 [UDim2.new]
      246 LOADN                            R8 0
      247 LOADN                            R9 368
      248 LOADN                            R10 0
      249 LOADN                            R11 700
      250 CALL                             R7 4 1
      251 SETTABLEKS                       R7 R6 K81 ["Size"]
      253 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      254 GETUPVAL                         R8 0
      255 GETTABLEKS                       R8 R8 K80 ["createElement"]
      257 GETUPVAL                         R9 2
      258 GETUPVAL                         R10 3
      259 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      261 GETTABLEKS                       R10 R10 K88 ["join"]
      263 MOVE                             R11 R2
      264 DUPTABLE                         R12 K89 [{"Size", "AssetData"}]
      265 GETIMPORT                        R13 K84 [UDim2.new]
      267 LOADN                            R14 0
      268 LOADN                            R15 368
      269 LOADN                            R16 1
      270 LOADN                            R17 0
      271 CALL                             R13 4 1
      272 SETTABLEKS                       R13 R12 K81 ["Size"]
      274 GETUPVAL                         R13 3
      275 GETTABLEKS                       R13 R13 K87 ["Dictionary"]
      277 GETTABLEKS                       R13 R13 K88 ["join"]
      279 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      281 DUPTABLE                         R15 K90 [{"Asset"}]
      282 GETUPVAL                         R16 3
      283 GETTABLEKS                       R16 R16 K87 ["Dictionary"]
      285 GETTABLEKS                       R16 R16 K88 ["join"]
      287 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      289 GETTABLEKS                       R17 R17 K18 ["Asset"]
      291 DUPTABLE                         R18 K102 [{["Created"] = "2014-10-21T08:59:44Z", ["Updated"] = "2016-06-14T18:43:37Z"}]
      292 CALL                             R16 2 1
      293 SETTABLEKS                       R16 R15 K18 ["Asset"]
      295 CALL                             R13 2 1
      296 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      298 CALL                             R10 2 -1
      299 CALL                             R8 -1 1
      300 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      302 CALL                             R4 3 1
      303 SETTABLEKS                       R4 R3 K71 ["BasicWithISODates"]
      305 GETUPVAL                         R4 0
      306 GETTABLEKS                       R4 R4 K80 ["createElement"]
      308 GETUPVAL                         R5 1
      309 DUPTABLE                         R6 K82 [{"Size"}]
      310 GETIMPORT                        R7 K84 [UDim2.new]
      312 LOADN                            R8 0
      313 LOADN                            R9 368
      314 LOADN                            R10 0
      315 LOADN                            R11 700
      316 CALL                             R7 4 1
      317 SETTABLEKS                       R7 R6 K81 ["Size"]
      319 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      320 GETUPVAL                         R8 0
      321 GETTABLEKS                       R8 R8 K80 ["createElement"]
      323 GETUPVAL                         R9 2
      324 GETUPVAL                         R10 3
      325 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      327 GETTABLEKS                       R10 R10 K88 ["join"]
      329 MOVE                             R11 R2
      330 DUPTABLE                         R12 K89 [{"Size", "AssetData"}]
      331 GETIMPORT                        R13 K84 [UDim2.new]
      333 LOADN                            R14 0
      334 LOADN                            R15 368
      335 LOADN                            R16 1
      336 LOADN                            R17 0
      337 CALL                             R13 4 1
      338 SETTABLEKS                       R13 R12 K81 ["Size"]
      340 GETUPVAL                         R13 3
      341 GETTABLEKS                       R13 R13 K87 ["Dictionary"]
      343 GETTABLEKS                       R13 R13 K88 ["join"]
      345 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      347 DUPTABLE                         R15 K90 [{"Asset"}]
      348 GETUPVAL                         R16 3
      349 GETTABLEKS                       R16 R16 K87 ["Dictionary"]
      351 GETTABLEKS                       R16 R16 K88 ["join"]
      353 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      355 GETTABLEKS                       R17 R17 K18 ["Asset"]
      357 DUPTABLE                         R18 K106 [{["CreatedRaw"] = "/Date(1413925184257)/", ["UpdatedRaw"] = "/Date(1413925184257)/"}]
      358 CALL                             R16 2 1
      359 SETTABLEKS                       R16 R15 K18 ["Asset"]
      361 CALL                             R13 2 1
      362 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      364 CALL                             R10 2 -1
      365 CALL                             R8 -1 1
      366 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      368 CALL                             R4 3 1
      369 SETTABLEKS                       R4 R3 K72 ["BasicWithRawDates"]
      371 GETUPVAL                         R4 0
      372 GETTABLEKS                       R4 R4 K80 ["createElement"]
      374 GETUPVAL                         R5 1
      375 DUPTABLE                         R6 K82 [{"Size"}]
      376 GETIMPORT                        R7 K84 [UDim2.new]
      378 LOADN                            R8 0
      379 LOADN                            R9 368
      380 LOADN                            R10 0
      381 LOADN                            R11 700
      382 CALL                             R7 4 1
      383 SETTABLEKS                       R7 R6 K81 ["Size"]
      385 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      386 GETUPVAL                         R8 0
      387 GETTABLEKS                       R8 R8 K80 ["createElement"]
      389 GETUPVAL                         R9 2
      390 GETUPVAL                         R10 3
      391 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      393 GETTABLEKS                       R10 R10 K88 ["join"]
      395 MOVE                             R11 R2
      396 DUPTABLE                         R12 K89 [{"Size", "AssetData"}]
      397 GETIMPORT                        R13 K84 [UDim2.new]
      399 LOADN                            R14 0
      400 LOADN                            R15 368
      401 LOADN                            R16 1
      402 LOADN                            R17 0
      403 CALL                             R13 4 1
      404 SETTABLEKS                       R13 R12 K81 ["Size"]
      406 GETUPVAL                         R13 3
      407 GETTABLEKS                       R13 R13 K87 ["Dictionary"]
      409 GETTABLEKS                       R13 R13 K88 ["join"]
      411 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      413 DUPTABLE                         R15 K90 [{"Asset"}]
      414 GETUPVAL                         R16 3
      415 GETTABLEKS                       R16 R16 K87 ["Dictionary"]
      417 GETTABLEKS                       R16 R16 K88 ["join"]
      419 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      421 GETTABLEKS                       R17 R17 K18 ["Asset"]
      423 DUPTABLE                         R18 K108 [{["Description"] = "See the web marketplace at https://create.roblox.com/marketplace"}]
      424 CALL                             R16 2 1
      425 SETTABLEKS                       R16 R15 K18 ["Asset"]
      427 CALL                             R13 2 1
      428 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      430 CALL                             R10 2 -1
      431 CALL                             R8 -1 1
      432 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      434 CALL                             R4 3 1
      435 SETTABLEKS                       R4 R3 K73 ["BasicWithDescriptionLinks"]
      437 GETUPVAL                         R4 0
      438 GETTABLEKS                       R4 R4 K80 ["createElement"]
      440 GETUPVAL                         R5 1
      441 DUPTABLE                         R6 K82 [{"Size"}]
      442 GETIMPORT                        R7 K84 [UDim2.new]
      444 LOADN                            R8 0
      445 LOADN                            R9 368
      446 LOADN                            R10 0
      447 LOADN                            R11 700
      448 CALL                             R7 4 1
      449 SETTABLEKS                       R7 R6 K81 ["Size"]
      451 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      452 GETUPVAL                         R8 0
      453 GETTABLEKS                       R8 R8 K80 ["createElement"]
      455 GETUPVAL                         R9 2
      456 GETUPVAL                         R10 3
      457 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      459 GETTABLEKS                       R10 R10 K88 ["join"]
      461 MOVE                             R11 R2
      462 DUPTABLE                         R12 K109 [{"Size", "Voting"}]
      463 GETIMPORT                        R13 K84 [UDim2.new]
      465 LOADN                            R14 0
      466 LOADN                            R15 368
      467 LOADN                            R16 1
      468 LOADN                            R17 0
      469 CALL                             R13 4 1
      470 SETTABLEKS                       R13 R12 K81 ["Size"]
      472 GETUPVAL                         R13 3
      473 GETTABLEKS                       R13 R13 K92 ["None"]
      475 SETTABLEKS                       R13 R12 K14 ["Voting"]
      477 CALL                             R10 2 -1
      478 CALL                             R8 -1 1
      479 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      481 CALL                             R4 3 1
      482 SETTABLEKS                       R4 R3 K74 ["NoVoting"]
      484 GETUPVAL                         R4 0
      485 GETTABLEKS                       R4 R4 K80 ["createElement"]
      487 GETUPVAL                         R5 1
      488 DUPTABLE                         R6 K82 [{"Size"}]
      489 GETIMPORT                        R7 K84 [UDim2.new]
      491 LOADN                            R8 0
      492 LOADN                            R9 368
      493 LOADN                            R10 0
      494 LOADN                            R11 500
      495 CALL                             R7 4 1
      496 SETTABLEKS                       R7 R6 K81 ["Size"]
      498 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      499 GETUPVAL                         R8 0
      500 GETTABLEKS                       R8 R8 K80 ["createElement"]
      502 GETUPVAL                         R9 2
      503 GETUPVAL                         R10 3
      504 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      506 GETTABLEKS                       R10 R10 K88 ["join"]
      508 MOVE                             R11 R2
      509 DUPTABLE                         R12 K82 [{"Size"}]
      510 GETIMPORT                        R13 K84 [UDim2.new]
      512 LOADN                            R14 0
      513 LOADN                            R15 368
      514 LOADN                            R16 1
      515 LOADN                            R17 0
      516 CALL                             R13 4 1
      517 SETTABLEKS                       R13 R12 K81 ["Size"]
      519 CALL                             R10 2 -1
      520 CALL                             R8 -1 1
      521 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      523 CALL                             R4 3 1
      524 SETTABLEKS                       R4 R3 K75 ["Scrolling"]
      526 GETUPVAL                         R4 0
      527 GETTABLEKS                       R4 R4 K80 ["createElement"]
      529 GETUPVAL                         R5 1
      530 DUPTABLE                         R6 K82 [{"Size"}]
      531 GETIMPORT                        R7 K84 [UDim2.new]
      533 LOADN                            R8 0
      534 LOADN                            R9 368
      535 LOADN                            R10 0
      536 LOADN                            R11 700
      537 CALL                             R7 4 1
      538 SETTABLEKS                       R7 R6 K81 ["Size"]
      540 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      541 GETUPVAL                         R8 0
      542 GETTABLEKS                       R8 R8 K80 ["createElement"]
      544 GETUPVAL                         R9 2
      545 GETUPVAL                         R10 3
      546 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      548 GETTABLEKS                       R10 R10 K88 ["join"]
      550 MOVE                             R11 R2
      551 DUPTABLE                         R12 K89 [{"Size", "AssetData"}]
      552 GETIMPORT                        R13 K84 [UDim2.new]
      554 LOADN                            R14 0
      555 LOADN                            R15 368
      556 LOADN                            R16 1
      557 LOADN                            R17 0
      558 CALL                             R13 4 1
      559 SETTABLEKS                       R13 R12 K81 ["Size"]
      561 GETUPVAL                         R13 3
      562 GETTABLEKS                       R13 R13 K87 ["Dictionary"]
      564 GETTABLEKS                       R13 R13 K88 ["join"]
      566 GETTABLEKS                       R14 R2 K6 ["AssetData"]
      568 DUPTABLE                         R15 K90 [{"Asset"}]
      569 GETUPVAL                         R16 3
      570 GETTABLEKS                       R16 R16 K87 ["Dictionary"]
      572 GETTABLEKS                       R16 R16 K88 ["join"]
      574 GETTABLEKS                       R17 R2 K6 ["AssetData"]
      576 GETTABLEKS                       R17 R17 K18 ["Asset"]
      578 DUPTABLE                         R18 K111 [{["Id"] = 8836875837, ["TypeId"]}]
      579 GETIMPORT                        R19 K112 [Enum.AssetType.FontFamily]
      581 GETTABLEKS                       R19 R19 K99 ["Value"]
      583 SETTABLEKS                       R19 R18 K22 ["TypeId"]
      585 CALL                             R16 2 1
      586 SETTABLEKS                       R16 R15 K18 ["Asset"]
      588 CALL                             R13 2 1
      589 SETTABLEKS                       R13 R12 K6 ["AssetData"]
      591 CALL                             R10 2 -1
      592 CALL                             R8 -1 1
      593 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      595 CALL                             R4 3 1
      596 SETTABLEKS                       R4 R3 K76 ["FontFamily"]
      598 GETUPVAL                         R4 0
      599 GETTABLEKS                       R4 R4 K80 ["createElement"]
      601 GETUPVAL                         R5 1
      602 DUPTABLE                         R6 K82 [{"Size"}]
      603 GETIMPORT                        R7 K84 [UDim2.new]
      605 LOADN                            R8 0
      606 LOADN                            R9 207
      607 LOADN                            R10 0
      608 LOADN                            R11 750
      609 CALL                             R7 4 1
      610 SETTABLEKS                       R7 R6 K81 ["Size"]
      612 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      613 GETUPVAL                         R8 0
      614 GETTABLEKS                       R8 R8 K80 ["createElement"]
      616 GETUPVAL                         R9 2
      617 GETUPVAL                         R10 3
      618 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      620 GETTABLEKS                       R10 R10 K88 ["join"]
      622 MOVE                             R11 R2
      623 DUPTABLE                         R12 K82 [{"Size"}]
      624 GETIMPORT                        R13 K84 [UDim2.new]
      626 LOADN                            R14 0
      627 LOADN                            R15 207
      628 LOADN                            R16 1
      629 LOADN                            R17 0
      630 CALL                             R13 4 1
      631 SETTABLEKS                       R13 R12 K81 ["Size"]
      633 CALL                             R10 2 -1
      634 CALL                             R8 -1 1
      635 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      637 CALL                             R4 3 1
      638 SETTABLEKS                       R4 R3 K77 ["Narrow"]
      640 GETUPVAL                         R4 0
      641 GETTABLEKS                       R4 R4 K80 ["createElement"]
      643 GETUPVAL                         R5 1
      644 DUPTABLE                         R6 K82 [{"Size"}]
      645 GETIMPORT                        R7 K84 [UDim2.new]
      647 LOADN                            R8 0
      648 LOADN                            R9 207
      649 LOADN                            R10 0
      650 LOADN                            R11 750
      651 CALL                             R7 4 1
      652 SETTABLEKS                       R7 R6 K81 ["Size"]
      654 DUPTABLE                         R7 K86 [{"AssetPreview"}]
      655 GETUPVAL                         R8 0
      656 GETTABLEKS                       R8 R8 K80 ["createElement"]
      658 GETUPVAL                         R9 2
      659 GETUPVAL                         R10 3
      660 GETTABLEKS                       R10 R10 K87 ["Dictionary"]
      662 GETTABLEKS                       R10 R10 K88 ["join"]
      664 MOVE                             R11 R2
      665 DUPTABLE                         R12 K114 [{"Size", "RenderFooter"}]
      666 GETIMPORT                        R13 K84 [UDim2.new]
      668 LOADN                            R14 0
      669 LOADN                            R15 207
      670 LOADN                            R16 1
      671 LOADN                            R17 0
      672 CALL                             R13 4 1
      673 SETTABLEKS                       R13 R12 K81 ["Size"]
      675 DUPCLOSURE                       R13 K115 [PROTO_6]
      676 CAPTURE                          UPVAL U0
      677 CAPTURE                          UPVAL U4
      678 CAPTURE                          UPVAL U3
      679 SETTABLEKS                       R13 R12 K113 ["RenderFooter"]
      681 CALL                             R10 2 -1
      682 CALL                             R8 -1 1
      683 SETTABLEKS                       R8 R7 K85 ["AssetPreview"]
      685 CALL                             R4 3 1
      686 SETTABLEKS                       R4 R3 K78 ["Footer"]
      688 RETURN                           R3 1

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
