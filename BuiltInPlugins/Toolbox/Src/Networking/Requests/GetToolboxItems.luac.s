PROTO_0:
        0 DUPTABLE                         R1 K1 [{"id"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R1
        1 DUPTABLE                         R3 K1 [{"searchResultSource"}]
        2 LOADK                            R4 K2 ["Tutorial"]
        3 SETTABLEKS                       R4 R3 K0 ["searchResultSource"]
        5 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isPageInfoStale"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 3
       10 LOADB                            R4 0
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K1 ["dispatch"]
       14 CALL                             R1 -1 0
       15 GETTABLEKS                       R1 R0 K2 ["responseBody"]
       17 NEWTABLE                         R2 0 0
       19 GETTABLEKS                       R3 R1 K3 ["data"]
       21 JUMPIFNOT                        R3 ; [+15]
       22 GETIMPORT                        R4 K5 [ipairs]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 3
       26 FORGPREP_INEXT                   R4
       27 GETTABLEKS                       R9 R8 K6 ["id"]
       29 DUPTABLE                         R10 K8 [{"searchResultSource"}]
       30 GETTABLEKS                       R11 R8 K7 ["searchResultSource"]
       32 SETTABLEKS                       R11 R10 K7 ["searchResultSource"]
       34 SETTABLE                         R10 R2 R9
       35 FORGLOOP                         R4 2 [inext] ; [-9]
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R4 R4 K9 ["createCursor"]
       40 MOVE                             R5 R1
       41 CALL                             R4 1 1
       42 JUMPIFNOT                        R1 ; [+23]
       43 GETTABLEKS                       R5 R1 K10 ["totalResults"]
       45 LOADN                            R6 0
       46 JUMPIFNOTLT                      R6 R5 ; [+19]
       48 GETUPVAL                         R5 2
       49 GETUPVAL                         R7 5
       50 GETUPVAL                         R8 6
       51 GETTABLEKS                       R9 R1 K3 ["data"]
       53 GETTABLEKS                       R10 R1 K10 ["totalResults"]
       55 GETUPVAL                         R11 7
       56 GETUPVAL                         R12 1
       57 GETTABLEKS                       R12 R12 K11 ["targetPage"]
       59 MOVE                             R13 R4
       60 GETUPVAL                         R14 1
       61 MOVE                             R15 R2
       62 CALL                             R7 8 -1
       63 NAMECALL                         R5 R5 K1 ["dispatch"]
       65 CALL                             R5 -1 0
       66 JUMPIFNOT                        R1 ; [+11]
       67 GETUPVAL                         R5 2
       68 GETUPVAL                         R7 8
       69 GETTABLEKS                       R8 R1 K12 ["spellCheckerResult"]
       71 JUMPIF                           R8 ; [+2]
       72 NEWTABLE                         R8 0 0
       74 CALL                             R7 1 -1
       75 NAMECALL                         R5 R5 K1 ["dispatch"]
       77 CALL                             R5 -1 0
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K13 ["searchTerm"]
       81 JUMPIFNOT                        R5 ; [+23]
       82 GETUPVAL                         R5 1
       83 GETTABLEKS                       R5 R5 K13 ["searchTerm"]
       85 JUMPIFEQKS                       R5 K14 [""] ; [+19]
       87 JUMPIFNOT                        R1 ; [+17]
       88 GETTABLEKS                       R5 R1 K15 ["filteredKeyword"]
       90 JUMPIFNOT                        R5 ; [+14]
       91 GETTABLEKS                       R6 R1 K15 ["filteredKeyword"]
       93 LENGTH                           R5 R6
       94 LOADN                            R6 0
       95 JUMPIFNOTLT                      R6 R5 ; [+9]
       97 GETUPVAL                         R5 2
       98 GETUPVAL                         R7 9
       99 GETTABLEKS                       R8 R1 K15 ["filteredKeyword"]
      101 CALL                             R7 1 -1
      102 NAMECALL                         R5 R5 K1 ["dispatch"]
      104 CALL                             R5 -1 0
      105 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K0 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["creator"]
        9 MOVE                             R2 R1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETTABLEKS                       R3 R1 K2 ["Id"]
       13 JUMPIFEQKN                       R3 K3 [-1] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 JUMPIF                           R2 ; [+4]
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETTABLEKS                       R3 R1 K2 ["Id"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADNIL                          R3
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K4 ["additionalAudioSearchInfo"]
       26 JUMPIF                           R4 ; [+2]
       27 NEWTABLE                         R4 0 0
       29 NAMECALL                         R5 R0 K5 ["getState"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R5 R5 K6 ["assets"]
       34 GETTABLEKS                       R6 R5 K7 ["currentCursor"]
       36 JUMPIFEQKNIL                     R1 ; [+38]
       38 GETTABLEKS                       R7 R1 K8 ["Name"]
       40 JUMPIFEQKNIL                     R7 ; [+14]
       42 GETTABLEKS                       R7 R1 K8 ["Name"]
       44 JUMPIFEQKS                       R7 K9 [""] ; [+10]
       46 JUMPIFNOTEQKNIL                  R3 ; [+8]
       48 GETUPVAL                         R9 0
       49 LOADB                            R10 0
       50 CALL                             R9 1 -1
       51 NAMECALL                         R7 R0 K0 ["dispatch"]
       53 CALL                             R7 -1 0
       54 RETURN                           R0 0
       55 JUMPIFEQKNIL                     R3 ; [+19]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K10 ["isCached"]
       60 MOVE                             R8 R0
       61 MOVE                             R9 R3
       62 GETTABLEKS                       R10 R1 K11 ["Type"]
       64 CALL                             R7 3 1
       65 JUMPIF                           R7 ; [+9]
       66 GETUPVAL                         R9 3
       67 GETUPVAL                         R10 4
       68 MOVE                             R11 R3
       69 GETTABLEKS                       R12 R1 K11 ["Type"]
       71 CALL                             R9 3 -1
       72 NAMECALL                         R7 R0 K0 ["dispatch"]
       74 CALL                             R7 -1 0
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R7 R7 K12 ["isNextPageAvailable"]
       78 MOVE                             R8 R6
       79 CALL                             R7 1 1
       80 JUMPIFNOT                        R7 ; [+389]
       81 GETTABLEKS                       R7 R6 K13 ["nextPageCursor"]
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K14 ["sorts"]
       86 GETUPVAL                         R10 1
       87 GETTABLEKS                       R10 R10 K15 ["sortIndex"]
       89 GETTABLE                         R8 R9 R10
       90 LOADNIL                          R9
       91 JUMPIFNOT                        R8 ; [+3]
       92 GETTABLEKS                       R9 R8 K16 ["name"]
       94 JUMP                             ; [+1]
       95 MOVE                             R9 R8
       96 LOADNIL                          R10
       97 GETUPVAL                         R11 6
       98 GETTABLEKS                       R11 R11 K17 ["getCategoryByName"]
      100 GETUPVAL                         R12 7
      101 CALL                             R11 1 1
      102 JUMPIF                           R11 ; [+8]
      103 GETIMPORT                        R12 K19 [error]
      105 GETIMPORT                        R13 K22 [string.format]
      107 LOADK                            R14 K23 ["Could not find categoryData for %s"]
      108 GETUPVAL                         R15 7
      109 CALL                             R13 2 -1
      110 CALL                             R12 -1 0
      111 GETTABLEKS                       R12 R11 K24 ["ownershipType"]
      113 GETUPVAL                         R13 6
      114 GETTABLEKS                       R13 R13 K25 ["OwnershipType"]
      116 GETTABLEKS                       R13 R13 K26 ["MY"]
      118 JUMPIFEQ                         R12 R13 ; [+10]
      120 GETTABLEKS                       R12 R11 K24 ["ownershipType"]
      122 GETUPVAL                         R13 6
      123 GETTABLEKS                       R13 R13 K25 ["OwnershipType"]
      125 GETTABLEKS                       R13 R13 K27 ["RECENT"]
      127 JUMPIFNOTEQ                      R12 R13 ; [+5]
      129 GETUPVAL                         R12 8
      130 CALL                             R12 0 1
      131 MOVE                             R10 R12
      132 JUMP                             ; [+15]
      133 GETTABLEKS                       R12 R11 K24 ["ownershipType"]
      135 GETUPVAL                         R13 6
      136 GETTABLEKS                       R13 R13 K25 ["OwnershipType"]
      138 GETTABLEKS                       R13 R13 K28 ["GROUP"]
      140 JUMPIFNOTEQ                      R12 R13 ; [+7]
      142 GETUPVAL                         R12 9
      143 GETTABLEKS                       R12 R12 K29 ["getGroupIdForPageInfo"]
      145 GETUPVAL                         R13 1
      146 CALL                             R12 1 1
      147 MOVE                             R10 R12
      148 GETUPVAL                         R12 1
      149 GETTABLEKS                       R12 R12 K30 ["includeUnverifiedCreators"]
      151 NEWTABLE                         R13 0 0
      153 GETTABLEKS                       R14 R4 K31 ["categories"]
      155 JUMPIFNOT                        R14 ; [+15]
      156 GETIMPORT                        R14 K33 [ipairs]
      158 GETTABLEKS                       R15 R4 K31 ["categories"]
      160 CALL                             R14 1 3
      161 FORGPREP_INEXT                   R14
      162 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
      164 MOVE                             R20 R13
      165 MOVE                             R21 R18
      166 GETIMPORT                        R19 K36 [table.insert]
      168 CALL                             R19 2 0
      169 FORGLOOP                         R14 2 [inext] ; [-8]
      171 GETTABLEKS                       R14 R4 K37 ["genre"]
      173 JUMPIFNOT                        R14 ; [+8]
      174 GETTABLEKS                       R16 R4 K37 ["genre"]
      176 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      178 MOVE                             R15 R13
      179 GETIMPORT                        R14 K36 [table.insert]
      181 CALL                             R14 2 0
      182 LOADNIL                          R14
      183 LOADNIL                          R15
      184 LOADNIL                          R16
      185 GETUPVAL                         R17 10
      186 CALL                             R17 0 1
      187 JUMPIFNOT                        R17 ; [+59]
      188 NEWTABLE                         R14 0 0
      190 GETUPVAL                         R17 1
      191 GETTABLEKS                       R17 R17 K38 ["creatorTargetIds"]
      193 JUMPIFNOT                        R17 ; [+13]
      194 MOVE                             R18 R17
      195 LOADNIL                          R19
      196 LOADNIL                          R20
      197 FORGPREP                         R18
      198 FASTCALL2                        TABLE_INSERT R14 R21 ; [+5]
      200 MOVE                             R24 R14
      201 MOVE                             R25 R21
      202 GETIMPORT                        R23 K36 [table.insert]
      204 CALL                             R23 2 0
      205 FORGLOOP                         R18 2 ; [-8]
      207 NEWTABLE                         R15 0 0
      209 GETUPVAL                         R18 1
      210 GETTABLEKS                       R18 R18 K39 ["groupTargetIds"]
      212 JUMPIFNOT                        R18 ; [+13]
      213 MOVE                             R19 R18
      214 LOADNIL                          R20
      215 LOADNIL                          R21
      216 FORGPREP                         R19
      217 FASTCALL2                        TABLE_INSERT R15 R22 ; [+5]
      219 MOVE                             R25 R15
      220 MOVE                             R26 R22
      221 GETIMPORT                        R24 K36 [table.insert]
      223 CALL                             R24 2 0
      224 FORGLOOP                         R19 2 ; [-8]
      226 GETUPVAL                         R19 1
      227 GETTABLEKS                       R19 R19 K40 ["uiSortIntent"]
      229 JUMPIFNOT                        R19 ; [+12]
      230 GETUPVAL                         R19 1
      231 GETTABLEKS                       R19 R19 K40 ["uiSortIntent"]
      233 GETUPVAL                         R20 11
      234 GETTABLEKS                       R20 R20 K41 ["None"]
      236 JUMPIFEQ                         R19 R20 ; [+5]
      238 GETUPVAL                         R19 1
      239 GETTABLEKS                       R16 R19 K40 ["uiSortIntent"]
      241 JUMP                             ; [+5]
      242 GETUPVAL                         R19 12
      243 GETTABLEKS                       R19 R19 K42 ["UiSortIntent"]
      245 GETTABLEKS                       R16 R19 K43 ["Default"]
      247 LOADNIL                          R17
      248 GETUPVAL                         R18 1
      249 GETTABLEKS                       R18 R18 K44 ["sortDirection"]
      251 JUMPIFNOT                        R18 ; [+11]
      252 GETUPVAL                         R18 1
      253 GETTABLEKS                       R18 R18 K44 ["sortDirection"]
      255 GETUPVAL                         R19 11
      256 GETTABLEKS                       R19 R19 K41 ["None"]
      258 JUMPIFEQ                         R18 R19 ; [+4]
      260 GETUPVAL                         R18 1
      261 GETTABLEKS                       R17 R18 K44 ["sortDirection"]
      263 LOADNIL                          R18
      264 GETTABLEKS                       R19 R4 K45 ["audioType"]
      266 JUMPIFNOT                        R19 ; [+7]
      267 NEWTABLE                         R19 0 1
      269 GETTABLEKS                       R20 R4 K45 ["audioType"]
      271 SETLIST                          R19 R20 1 [1]
      273 MOVE                             R18 R19
      274 NAMECALL                         R19 R0 K5 ["getState"]
      276 CALL                             R19 1 1
      277 GETTABLEKS                       R19 R19 K46 ["tutorialLimits"]
      279 JUMPIFNOT                        R19 ; [+32]
      280 GETTABLEKS                       R20 R19 K47 ["assetIds"]
      282 JUMPIFNOT                        R20 ; [+29]
      283 GETUPVAL                         R22 13
      284 GETUPVAL                         R23 4
      285 GETUPVAL                         R24 14
      286 GETTABLEKS                       R24 R24 K48 ["map"]
      288 GETTABLEKS                       R25 R19 K47 ["assetIds"]
      290 DUPCLOSURE                       R26 K49 [PROTO_0]
      291 CALL                             R24 2 1
      292 LOADN                            R25 1
      293 GETUPVAL                         R26 15
      294 GETUPVAL                         R27 1
      295 GETTABLEKS                       R27 R27 K50 ["targetPage"]
      297 NEWTABLE                         R28 0 0
      299 GETUPVAL                         R29 1
      300 GETUPVAL                         R30 14
      301 GETTABLEKS                       R30 R30 K51 ["collect"]
      303 GETTABLEKS                       R31 R19 K47 ["assetIds"]
      305 DUPCLOSURE                       R32 K52 [PROTO_1]
      306 CALL                             R30 2 -1
      307 CALL                             R22 -1 -1
      308 NAMECALL                         R20 R0 K0 ["dispatch"]
      310 CALL                             R20 -1 0
      311 RETURN                           R0 0
      312 GETUPVAL                         R20 4
      313 DUPTABLE                         R22 K75 [{"categoryName", "sortType", "keyword", "cursor", "limit", "ownerId", "creatorType", "creatorTargetId", "creatorTargetIds", "excludeGroupCreations", "groupTargetIds", "minDuration", "maxDuration", "artist", "album", "audioTypes", "tags", "uiSortIntent", "sortDirection", "includeOnlyVerifiedCreators", "searchSource", "queryParams", "querySource", "originalUserQuery", "originalCorrection", "qualityFilterData"}]
      314 GETUPVAL                         R23 7
      315 SETTABLEKS                       R23 R22 K53 ["categoryName"]
      317 SETTABLEKS                       R9 R22 K54 ["sortType"]
      319 GETUPVAL                         R24 1
      320 GETTABLEKS                       R24 R24 K76 ["searchTerm"]
      322 ORK                              R23 R24 K9 [""]
      323 SETTABLEKS                       R23 R22 K55 ["keyword"]
      325 SETTABLEKS                       R7 R22 K56 ["cursor"]
      327 GETUPVAL                         R23 16
      328 GETTABLEKS                       R23 R23 K77 ["TOOLBOX_ITEM_SEARCH_LIMIT"]
      330 SETTABLEKS                       R23 R22 K57 ["limit"]
      332 SETTABLEKS                       R10 R22 K58 ["ownerId"]
      334 GETUPVAL                         R23 1
      335 GETTABLEKS                       R23 R23 K59 ["creatorType"]
      337 SETTABLEKS                       R23 R22 K59 ["creatorType"]
      339 SETTABLEKS                       R3 R22 K60 ["creatorTargetId"]
      341 GETUPVAL                         R24 10
      342 CALL                             R24 0 1
      343 JUMPIFNOT                        R24 ; [+2]
      344 MOVE                             R23 R14
      345 JUMP                             ; [+1]
      346 LOADNIL                          R23
      347 SETTABLEKS                       R23 R22 K38 ["creatorTargetIds"]
      349 GETUPVAL                         R24 17
      350 CALL                             R24 0 1
      351 JUMPIFNOT                        R24 ; [+4]
      352 GETUPVAL                         R23 1
      353 GETTABLEKS                       R23 R23 K61 ["excludeGroupCreations"]
      355 JUMP                             ; [+1]
      356 LOADNIL                          R23
      357 SETTABLEKS                       R23 R22 K61 ["excludeGroupCreations"]
      359 GETUPVAL                         R24 10
      360 CALL                             R24 0 1
      361 JUMPIFNOT                        R24 ; [+2]
      362 MOVE                             R23 R15
      363 JUMP                             ; [+1]
      364 LOADNIL                          R23
      365 SETTABLEKS                       R23 R22 K39 ["groupTargetIds"]
      367 GETUPVAL                         R24 15
      368 JUMPIFNOT                        R24 ; [+4]
      369 GETUPVAL                         R23 15
      370 GETTABLEKS                       R23 R23 K62 ["minDuration"]
      372 JUMPIF                           R23 ; [+1]
      373 LOADNIL                          R23
      374 SETTABLEKS                       R23 R22 K62 ["minDuration"]
      376 GETUPVAL                         R24 15
      377 JUMPIFNOT                        R24 ; [+4]
      378 GETUPVAL                         R23 15
      379 GETTABLEKS                       R23 R23 K63 ["maxDuration"]
      381 JUMPIF                           R23 ; [+1]
      382 LOADNIL                          R23
      383 SETTABLEKS                       R23 R22 K63 ["maxDuration"]
      385 GETTABLEKS                       R23 R4 K64 ["artist"]
      387 SETTABLEKS                       R23 R22 K64 ["artist"]
      389 GETTABLEKS                       R23 R4 K65 ["album"]
      391 SETTABLEKS                       R23 R22 K65 ["album"]
      393 SETTABLEKS                       R18 R22 K66 ["audioTypes"]
      395 SETTABLEKS                       R13 R22 K67 ["tags"]
      397 GETUPVAL                         R24 10
      398 CALL                             R24 0 1
      399 JUMPIFNOT                        R24 ; [+2]
      400 MOVE                             R23 R16
      401 JUMP                             ; [+1]
      402 LOADNIL                          R23
      403 SETTABLEKS                       R23 R22 K40 ["uiSortIntent"]
      405 SETTABLEKS                       R17 R22 K44 ["sortDirection"]
      407 NOT                              R23 R12
      408 SETTABLEKS                       R23 R22 K68 ["includeOnlyVerifiedCreators"]
      410 GETUPVAL                         R23 1
      411 GETTABLEKS                       R23 R23 K69 ["searchSource"]
      413 SETTABLEKS                       R23 R22 K69 ["searchSource"]
      415 GETUPVAL                         R23 1
      416 GETTABLEKS                       R23 R23 K70 ["queryParams"]
      418 SETTABLEKS                       R23 R22 K70 ["queryParams"]
      420 GETUPVAL                         R23 1
      421 GETTABLEKS                       R23 R23 K71 ["querySource"]
      423 JUMPIF                           R23 ; [+5]
      424 GETUPVAL                         R23 18
      425 GETTABLEKS                       R23 R23 K78 ["QuerySource"]
      427 GETTABLEKS                       R23 R23 K79 ["OriginalUserQuery"]
      429 SETTABLEKS                       R23 R22 K71 ["querySource"]
      431 GETUPVAL                         R24 1
      432 GETTABLEKS                       R24 R24 K72 ["originalUserQuery"]
      434 ORK                              R23 R24 K9 [""]
      435 SETTABLEKS                       R23 R22 K72 ["originalUserQuery"]
      437 GETUPVAL                         R24 1
      438 GETTABLEKS                       R24 R24 K73 ["originalCorrection"]
      440 ORK                              R23 R24 K9 [""]
      441 SETTABLEKS                       R23 R22 K73 ["originalCorrection"]
      443 GETUPVAL                         R23 1
      444 GETTABLEKS                       R23 R23 K74 ["qualityFilterData"]
      446 SETTABLEKS                       R23 R22 K74 ["qualityFilterData"]
      448 NAMECALL                         R20 R20 K80 ["getToolboxItems"]
      450 CALL                             R20 2 1
      451 NEWCLOSURE                       R23 P2
      452 CAPTURE                          UPVAL U9
      453 CAPTURE                          UPVAL U1
      454 CAPTURE                          VAL R0
      455 CAPTURE                          UPVAL U0
      456 CAPTURE                          UPVAL U5
      457 CAPTURE                          UPVAL U13
      458 CAPTURE                          UPVAL U4
      459 CAPTURE                          UPVAL U15
      460 CAPTURE                          UPVAL U19
      461 CAPTURE                          UPVAL U20
      462 NEWCLOSURE                       R24 P3
      463 CAPTURE                          VAL R0
      464 CAPTURE                          UPVAL U0
      465 CAPTURE                          UPVAL U21
      466 NAMECALL                         R21 R20 K81 ["andThen"]
      468 CALL                             R21 3 -1
      469 RETURN                           R21 -1
      470 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CAPTURE                          UPVAL U16
       22 CAPTURE                          UPVAL U17
       23 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Actions"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K9 ["NetworkError"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R3 K10 ["SetLoading"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R3 K11 ["UpdateSearchTerm"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R3 K12 ["SetAutocorrect"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K7 ["Src"]
       46 GETTABLEKS                       R9 R9 K13 ["Networking"]
       48 GETTABLEKS                       R9 R9 K14 ["Requests"]
       50 GETTABLEKS                       R9 R9 K15 ["GetItemDetails"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETTABLEKS                       R10 R0 K7 ["Src"]
       57 GETTABLEKS                       R10 R10 K13 ["Networking"]
       59 GETTABLEKS                       R10 R10 K14 ["Requests"]
       61 GETTABLEKS                       R10 R10 K16 ["GetCreatorName"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K7 ["Src"]
       68 GETTABLEKS                       R11 R11 K17 ["Types"]
       70 GETTABLEKS                       R11 R11 K18 ["Category"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K7 ["Src"]
       77 GETTABLEKS                       R12 R12 K17 ["Types"]
       79 GETTABLEKS                       R12 R12 K19 ["GetToolboxItemsResponseTypes"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K7 ["Src"]
       86 GETTABLEKS                       R13 R13 K17 ["Types"]
       88 GETTABLEKS                       R13 R13 K20 ["AutocorrectTypes"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R0 K7 ["Src"]
       93 GETTABLEKS                       R13 R13 K21 ["Util"]
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R15 R13 K22 ["getUserId"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R13 K23 ["PagedRequestCursor"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K5 [require]
      107 GETTABLEKS                       R17 R13 K24 ["Constants"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R13 K25 ["CreatorInfoHelper"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K5 [require]
      117 GETTABLEKS                       R19 R13 K26 ["PageInfoHelper"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R20 R0 K7 ["Src"]
      124 GETTABLEKS                       R20 R20 K17 ["Types"]
      126 GETTABLEKS                       R20 R20 K27 ["BackendTypes"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K5 [require]
      131 GETTABLEKS                       R21 R0 K7 ["Src"]
      133 GETTABLEKS                       R21 R21 K17 ["Types"]
      135 GETTABLEKS                       R21 R21 K28 ["CreatorTypes"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K5 [require]
      140 GETTABLEKS                       R22 R0 K7 ["Src"]
      142 GETTABLEKS                       R22 R22 K21 ["Util"]
      144 GETTABLEKS                       R22 R22 K29 ["SharedFlags"]
      146 GETTABLEKS                       R22 R22 K30 ["getFFlagToolboxEnableSearchOptionsRefactor"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K5 [require]
      151 GETTABLEKS                       R23 R1 K31 ["Framework"]
      153 CALL                             R22 1 1
      154 GETTABLEKS                       R23 R22 K32 ["Dash"]
      156 GETIMPORT                        R24 K5 [require]
      158 GETTABLEKS                       R25 R0 K7 ["Src"]
      160 GETTABLEKS                       R25 R25 K21 ["Util"]
      162 GETTABLEKS                       R25 R25 K29 ["SharedFlags"]
      164 GETTABLEKS                       R25 R25 K33 ["getFFlagToolboxAddCreationsFilterToListView"]
      166 CALL                             R24 1 1
      167 GETIMPORT                        R25 K5 [require]
      169 GETTABLEKS                       R26 R0 K7 ["Src"]
      171 GETTABLEKS                       R26 R26 K34 ["Flags"]
      173 GETTABLEKS                       R26 R26 K35 ["getFFlagQualityFiltersInToolboxSearch"]
      175 CALL                             R25 1 1
      176 DUPCLOSURE                       R26 K36 [PROTO_5]
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R4
      195 RETURN                           R26 1
