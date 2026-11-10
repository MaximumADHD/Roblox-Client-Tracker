PROTO_0:
        0 DUPTABLE                         R1 K5 [{"Id", "Key", "Label", "Text", "Type"}]
        1 GETTABLEKS                       R2 R0 K3 ["Text"]
        3 SETTABLEKS                       R2 R1 K0 ["Id"]
        5 GETTABLEKS                       R2 R0 K1 ["Key"]
        7 SETTABLEKS                       R2 R1 K1 ["Key"]
        9 GETTABLEKS                       R2 R0 K3 ["Text"]
       11 SETTABLEKS                       R2 R1 K2 ["Label"]
       13 GETTABLEKS                       R2 R0 K3 ["Text"]
       15 SETTABLEKS                       R2 R1 K3 ["Text"]
       17 GETTABLEKS                       R2 R0 K4 ["Type"]
       19 SETTABLEKS                       R2 R1 K4 ["Type"]
       21 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Key"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+34]
        5 GETTABLEKS                       R2 R0 K0 ["Key"]
        7 SETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R0 K1 ["Type"]
       10 SETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R0 K2 ["Text"]
       13 SETUPVAL                         R2 2
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K3 ["props"]
       17 GETTABLEKS                       R2 R2 K4 ["DispatchLoadExistingGames"]
       19 GETTABLEKS                       R3 R0 K1 ["Type"]
       21 GETTABLEKS                       R4 R0 K0 ["Key"]
       23 LOADNIL                          R5
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K3 ["props"]
       27 GETTABLEKS                       R6 R6 K5 ["IsPublish"]
       29 CALL                             R2 4 0
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K3 ["props"]
       33 GETTABLEKS                       R2 R2 K6 ["DispatchSetSelectedGroup"]
       35 GETTABLEKS                       R3 R0 K0 ["Key"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{[1] = ""}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 GETTABLEKS                       R1 R0 K4 ["props"]
        5 GETTABLEKS                       R1 R1 K5 ["DispatchLoadExistingGames"]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 LOADNIL                          R4
       10 GETTABLEKS                       R5 R0 K4 ["props"]
       12 GETTABLEKS                       R5 R5 K6 ["IsPublish"]
       14 CALL                             R1 4 0
       15 GETTABLEKS                       R1 R0 K4 ["props"]
       17 GETTABLEKS                       R1 R1 K7 ["DispatchLoadGroups"]
       19 GETTABLEKS                       R2 R0 K4 ["props"]
       21 GETTABLEKS                       R2 R2 K6 ["IsPublish"]
       23 CALL                             R1 1 0
       24 DUPCLOSURE                       R1 K8 [PROTO_0]
       25 SETTABLEKS                       R1 R0 K9 ["createContentForSelectInput"]
       27 NEWCLOSURE                       R1 P1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K10 ["onItemActivated"]
       34 NEWCLOSURE                       R1 P2
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K11 ["OnSearchRequested"]
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R4 R4 K0 ["IsPublish"]
       13 CALL                             R0 4 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 3
        5 GETTABLEKS                       R4 R4 K0 ["IsPublish"]
        7 CALL                             R0 4 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClose"]
        8 GETTABLEKS                       R5 R1 K4 ["Games"]
       10 GETTABLEKS                       R6 R1 K5 ["NextPageCursor"]
       12 GETTABLEKS                       R7 R1 K6 ["Groups"]
       14 GETTABLEKS                       R8 R1 K7 ["CurrentGameMinAge"]
       16 JUMPIFNOT                        R8 ; [+9]
       17 GETTABLEKS                       R9 R1 K7 ["CurrentGameMinAge"]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K8 ["MINIMUM_AGE"]
       22 JUMPIFLE                         R10 R9 ; [+2]
       24 LOADB                            R8 0 +1
       25 LOADB                            R8 1
       26 GETTABLEKS                       R9 R1 K9 ["DispatchLoadExistingGames"]
       28 GETTABLEKS                       R10 R1 K10 ["OpenChoosePlacePage"]
       30 GETUPVAL                         R12 1
       31 JUMPIFNOT                        R12 ; [+6]
       32 LOADK                            R13 K11 ["GroupDropdown"]
       33 LOADK                            R14 K12 ["MyExperiences"]
       34 NAMECALL                         R11 R3 K13 ["getText"]
       36 CALL                             R11 3 1
       37 JUMP                             ; [+5]
       38 LOADK                            R13 K11 ["GroupDropdown"]
       39 LOADK                            R14 K14 ["MyGames"]
       40 NAMECALL                         R11 R3 K13 ["getText"]
       42 CALL                             R11 3 1
       43 NEWTABLE                         R12 0 1
       45 DUPTABLE                         R13 K18 [{"Type", "Key", "Text"}]
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R14 R14 K19 ["SUBJECT_TYPE"]
       49 GETTABLEKS                       R14 R14 K20 ["USER"]
       51 SETTABLEKS                       R14 R13 K15 ["Type"]
       53 GETUPVAL                         R14 2
       54 NAMECALL                         R14 R14 K21 ["getUserId"]
       56 CALL                             R14 1 1
       57 SETTABLEKS                       R14 R13 K16 ["Key"]
       59 SETTABLEKS                       R11 R13 K17 ["Text"]
       61 SETLIST                          R12 R13 1 [1]
       63 JUMPIFNOT                        R7 ; [+35]
       64 GETIMPORT                        R13 K23 [next]
       66 MOVE                             R14 R7
       67 CALL                             R13 1 1
       68 JUMPIFEQKNIL                     R13 ; [+30]
       70 GETIMPORT                        R13 K25 [pairs]
       72 MOVE                             R14 R7
       73 CALL                             R13 1 3
       74 FORGPREP_NEXT                    R13
       75 DUPTABLE                         R20 K18 [{"Type", "Key", "Text"}]
       76 GETUPVAL                         R21 0
       77 GETTABLEKS                       R21 R21 K19 ["SUBJECT_TYPE"]
       79 GETTABLEKS                       R21 R21 K26 ["GROUP"]
       81 SETTABLEKS                       R21 R20 K15 ["Type"]
       83 GETTABLEKS                       R21 R17 K27 ["groupId"]
       85 SETTABLEKS                       R21 R20 K16 ["Key"]
       87 GETTABLEKS                       R21 R17 K28 ["name"]
       89 SETTABLEKS                       R21 R20 K17 ["Text"]
       91 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
       93 MOVE                             R19 R12
       94 GETIMPORT                        R18 K31 [table.insert]
       96 CALL                             R18 2 0
       97 FORGLOOP                         R13 2 ; [-23]
       99 GETUPVAL                         R13 3
      100 JUMPIF                           R13 ; [+3]
      101 GETTABLEN                        R13 R12 1
      102 GETTABLEKS                       R13 R13 K17 ["Text"]
      104 NEWTABLE                         R14 0 1
      106 GETUPVAL                         R15 4
      107 GETTABLEKS                       R15 R15 K32 ["createElement"]
      109 LOADK                            R16 K33 ["UIGridLayout"]
      110 NEWTABLE                         R17 4 0
      112 GETIMPORT                        R18 K36 [UDim2.new]
      114 LOADN                            R19 0
      115 GETTABLEKS                       R20 R2 K37 ["SCREEN_CHOOSE_GAME"]
      117 GETTABLEKS                       R20 R20 K38 ["ICON_SIZE"]
      119 LOADN                            R21 0
      120 GETTABLEKS                       R22 R2 K37 ["SCREEN_CHOOSE_GAME"]
      122 GETTABLEKS                       R22 R22 K39 ["TILE_HEIGHT"]
      124 CALL                             R18 4 1
      125 SETTABLEKS                       R18 R17 K40 ["CellSize"]
      127 GETIMPORT                        R18 K36 [UDim2.new]
      129 LOADN                            R19 0
      130 GETTABLEKS                       R20 R2 K37 ["SCREEN_CHOOSE_GAME"]
      132 GETTABLEKS                       R20 R20 K41 ["CELL_PADDING_X"]
      134 LOADN                            R21 0
      135 GETTABLEKS                       R22 R2 K37 ["SCREEN_CHOOSE_GAME"]
      137 GETTABLEKS                       R22 R22 K42 ["CELL_PADDING_Y"]
      139 CALL                             R18 4 1
      140 SETTABLEKS                       R18 R17 K43 ["CellPadding"]
      142 GETIMPORT                        R18 K47 [Enum.SortOrder.LayoutOrder]
      144 SETTABLEKS                       R18 R17 K45 ["SortOrder"]
      146 GETUPVAL                         R18 4
      147 GETTABLEKS                       R18 R18 K48 ["Ref"]
      149 GETTABLEKS                       R19 R0 K49 ["layoutRef"]
      151 SETTABLE                         R19 R17 R18
      152 CALL                             R15 2 -1
      153 SETLIST                          R14 R15 -1 [1]
      155 LOADB                            R15 0
      156 GETTABLEKS                       R16 R1 K50 ["GamesQueryState"]
      158 GETUPVAL                         R17 0
      159 GETTABLEKS                       R17 R17 K51 ["QUERY_STATE"]
      161 GETTABLEKS                       R17 R17 K52 ["QUERY_STATE_SUCCESS"]
      163 JUMPIFNOTEQ                      R16 R17 ; [+95]
      165 GETIMPORT                        R16 K25 [pairs]
      167 MOVE                             R17 R5
      168 CALL                             R16 1 3
      169 FORGPREP_NEXT                    R16
      170 GETTABLEKS                       R23 R20 K53 ["isUserEligible"]
      172 JUMPIFNOTEQKNIL                  R23 ; [+2]
      174 LOADB                            R22 0 +1
      175 LOADB                            R22 1
      176 FASTCALL1                        ASSERT R22 ; [+2]
      177 GETIMPORT                        R21 K55 [assert]
      179 CALL                             R21 1 0
      180 GETTABLEKS                       R21 R1 K56 ["IsPublish"]
      182 JUMPIFNOT                        R21 ; [+3]
      183 GETTABLEKS                       R22 R20 K57 ["isPublishEligible"]
      185 NOT                              R21 R22
      186 JUMPIFNOT                        R21 ; [+1]
      187 LOADB                            R15 1
      188 GETIMPORT                        R22 K60 [string.find]
      190 GETTABLEKS                       R23 R20 K28 ["name"]
      192 NAMECALL                         R23 R23 K61 ["lower"]
      194 CALL                             R23 1 1
      195 GETTABLEKS                       R24 R0 K62 ["state"]
      197 GETTABLEKS                       R24 R24 K63 ["searchTerm"]
      199 NAMECALL                         R24 R24 K61 ["lower"]
      201 CALL                             R24 1 -1
      202 CALL                             R22 -1 1
      203 JUMPIFNOT                        R22 ; [+53]
      204 GETTABLEKS                       R22 R20 K53 ["isUserEligible"]
      206 JUMPIFNOT                        R22 ; [+50]
      207 LENGTH                           R23 R14
      208 ADDK                             R22 R23 K64 [1]
      209 GETUPVAL                         R23 4
      210 GETTABLEKS                       R23 R23 K32 ["createElement"]
      212 GETUPVAL                         R24 5
      213 DUPTABLE                         R25 K72 [{"Name", "Id", "PrivacyType", "Audiences", "MinimumAge", "Disabled", "LayoutOrder", "OnActivated"}]
      214 GETTABLEKS                       R26 R20 K28 ["name"]
      216 SETTABLEKS                       R26 R25 K65 ["Name"]
      218 GETTABLEKS                       R26 R20 K73 ["rootPlaceId"]
      220 SETTABLEKS                       R26 R25 K66 ["Id"]
      222 GETUPVAL                         R27 6
      223 CALL                             R27 0 1
      224 JUMPIFNOT                        R27 ; [+2]
      225 LOADNIL                          R26
      226 JUMP                             ; [+2]
      227 GETTABLEKS                       R26 R20 K74 ["privacyType"]
      229 SETTABLEKS                       R26 R25 K67 ["PrivacyType"]
      231 GETUPVAL                         R27 6
      232 CALL                             R27 0 1
      233 JUMPIFNOT                        R27 ; [+3]
      234 GETTABLEKS                       R26 R20 K75 ["audiences"]
      236 JUMP                             ; [+1]
      237 LOADNIL                          R26
      238 SETTABLEKS                       R26 R25 K68 ["Audiences"]
      240 GETTABLEKS                       R26 R20 K76 ["minimumAge"]
      242 SETTABLEKS                       R26 R25 K69 ["MinimumAge"]
      244 SETTABLEKS                       R21 R25 K70 ["Disabled"]
      246 LENGTH                           R27 R14
      247 ADDK                             R26 R27 K64 [1]
      248 SETTABLEKS                       R26 R25 K46 ["LayoutOrder"]
      250 NEWCLOSURE                       R26 P0
      251 CAPTURE                          VAL R10
      252 CAPTURE                          VAL R20
      253 SETTABLEKS                       R26 R25 K71 ["OnActivated"]
      255 CALL                             R23 2 1
      256 SETTABLE                         R23 R14 R22
      257 FORGLOOP                         R16 2 ; [-88]
      259 GETTABLEKS                       R18 R2 K37 ["SCREEN_CHOOSE_GAME"]
      261 GETTABLEKS                       R18 R18 K38 ["ICON_SIZE"]
      263 GETTABLEKS                       R19 R2 K37 ["SCREEN_CHOOSE_GAME"]
      265 GETTABLEKS                       R19 R19 K77 ["TILE_FOOTER_SIZE"]
      267 ADD                              R17 R18 R19
      268 GETTABLEKS                       R18 R2 K37 ["SCREEN_CHOOSE_GAME"]
      270 GETTABLEKS                       R18 R18 K42 ["CELL_PADDING_Y"]
      272 ADD                              R16 R17 R18
      273 LENGTH                           R21 R14
      274 SUBK                             R20 R21 K64 [1]
      275 DIVK                             R19 R20 K78 [5]
      276 FASTCALL1                        MATH_CEIL R19 ; [+2]
      277 GETIMPORT                        R18 K81 [math.ceil]
      279 CALL                             R18 1 1
      280 MUL                              R17 R18 R16
      281 LOADN                            R19 3
      282 MUL                              R18 R19 R16
      283 JUMPIFNOTLT                      R17 R18 ; [+42]
      285 GETUPVAL                         R19 7
      286 CALL                             R19 0 1
      287 JUMPIFNOT                        R19 ; [+25]
      288 MOVE                             R18 R6
      289 JUMPIFNOT                        R18 ; [+28]
      290 GETUPVAL                         R18 8
      291 JUMPIFNOT                        R18 ; [+26]
      292 GETUPVAL                         R18 9
      293 JUMPIFNOT                        R18 ; [+24]
      294 LOADB                            R18 0
      295 GETTABLEKS                       R19 R1 K50 ["GamesQueryState"]
      297 GETUPVAL                         R20 0
      298 GETTABLEKS                       R20 R20 K51 ["QUERY_STATE"]
      300 GETTABLEKS                       R20 R20 K52 ["QUERY_STATE_SUCCESS"]
      302 JUMPIFNOTEQ                      R19 R20 ; [+15]
      304 MOVE                             R18 R5
      305 JUMPIFNOT                        R18 ; [+12]
      306 LENGTH                           R19 R5
      307 LOADN                            R20 0
      308 JUMPIFLT                         R20 R19 ; [+2]
      310 LOADB                            R18 0 +1
      311 LOADB                            R18 1
      312 JUMP                             ; [+5]
      313 MOVE                             R18 R6
      314 JUMPIFNOT                        R18 ; [+3]
      315 GETUPVAL                         R18 8
      316 JUMPIFNOT                        R18 ; [+1]
      317 GETUPVAL                         R18 9
      318 JUMPIFNOT                        R18 ; [+7]
      319 MOVE                             R19 R9
      320 GETUPVAL                         R20 8
      321 GETUPVAL                         R21 9
      322 MOVE                             R22 R6
      323 GETTABLEKS                       R23 R1 K56 ["IsPublish"]
      325 CALL                             R19 4 0
      326 GETUPVAL                         R19 1
      327 JUMPIFNOT                        R19 ; [+6]
      328 LOADK                            R20 K82 ["ScreenHeader"]
      329 LOADK                            R21 K83 ["ChooseExperienceNew"]
      330 NAMECALL                         R18 R3 K13 ["getText"]
      332 CALL                             R18 3 1
      333 JUMP                             ; [+5]
      334 LOADK                            R20 K82 ["ScreenHeader"]
      335 LOADK                            R21 K84 ["ChooseGameNew"]
      336 NAMECALL                         R18 R3 K13 ["getText"]
      338 CALL                             R18 3 1
      339 JUMPIFNOT                        R8 ; [+8]
      340 MOVE                             R19 R18
      341 LOADK                            R20 K85 [" "]
      342 LOADK                            R23 K82 ["ScreenHeader"]
      343 LOADK                            R24 K86 ["RestrictedContentWarning"]
      344 NAMECALL                         R21 R3 K13 ["getText"]
      346 CALL                             R21 3 1
      347 CONCAT                           R18 R19 R21
      348 GETUPVAL                         R19 10
      349 MOVE                             R21 R18
      350 LOADN                            R22 18
      351 GETTABLEKS                       R23 R2 K87 ["header"]
      353 GETTABLEKS                       R23 R23 K88 ["font"]
      355 GETIMPORT                        R24 K90 [Vector2.new]
      357 LOADN                            R26 5
      358 MUL                              R25 R26 R16
      359 LOADK                            R26 K91 [Infinity]
      360 CALL                             R24 2 -1
      361 NAMECALL                         R19 R19 K92 ["GetTextSize"]
      363 CALL                             R19 -1 1
      364 GETTABLEKS                       R19 R19 K93 ["Y"]
      366 DIVK                             R22 R19 K94 [18]
      367 SUBK                             R21 R22 K64 [1]
      368 MULK                             R20 R21 K94 [18]
      369 JUMPIFNOT                        R15 ; [+2]
      370 LOADN                            R21 60
      371 JUMP                             ; [+1]
      372 LOADN                            R21 0
      373 GETUPVAL                         R22 4
      374 GETTABLEKS                       R22 R22 K32 ["createElement"]
      376 LOADK                            R23 K95 ["Frame"]
      377 DUPTABLE                         R24 K98 [{"Size", "BackgroundColor3"}]
      378 GETIMPORT                        R25 K36 [UDim2.new]
      380 LOADN                            R26 1
      381 LOADN                            R27 0
      382 LOADN                            R28 1
      383 LOADN                            R29 0
      384 CALL                             R25 4 1
      385 SETTABLEKS                       R25 R24 K96 ["Size"]
      387 GETTABLEKS                       R25 R2 K99 ["backgroundColor"]
      389 SETTABLEKS                       R25 R24 K97 ["BackgroundColor3"]
      391 DUPTABLE                         R25 K109 [{"ChooseGameText", "Sep1", "EligibilityBanner", "SearchBar", "GroupDropdownMenu", "MainContentsSuccess", "MainContentsQuerying", "MainContentsFailed", "Footer"}]
      392 GETUPVAL                         R26 4
      393 GETTABLEKS                       R26 R26 K32 ["createElement"]
      395 LOADK                            R27 K110 ["TextLabel"]
      396 DUPTABLE                         R28 K119 [{["Text"], ["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["TextXAlignment"], ["Font"], ["TextSize"] = 18, ["TextWrapped"] = True}]
      397 SETTABLEKS                       R18 R28 K17 ["Text"]
      399 GETIMPORT                        R29 K36 [UDim2.new]
      401 LOADN                            R30 0
      402 LOADN                            R31 30
      403 LOADN                            R32 0
      404 LOADN                            R33 20
      405 CALL                             R29 4 1
      406 SETTABLEKS                       R29 R28 K111 ["Position"]
      408 GETIMPORT                        R29 K36 [UDim2.new]
      410 LOADK                            R30 K120 [0.95]
      411 LOADN                            R31 0
      412 LOADN                            R32 0
      413 MOVE                             R33 R19
      414 CALL                             R29 4 1
      415 SETTABLEKS                       R29 R28 K96 ["Size"]
      417 GETTABLEKS                       R29 R2 K87 ["header"]
      419 GETTABLEKS                       R29 R29 K121 ["text"]
      421 SETTABLEKS                       R29 R28 K113 ["TextColor3"]
      423 GETIMPORT                        R29 K123 [Enum.TextXAlignment.Left]
      425 SETTABLEKS                       R29 R28 K114 ["TextXAlignment"]
      427 GETTABLEKS                       R29 R2 K87 ["header"]
      429 GETTABLEKS                       R29 R29 K88 ["font"]
      431 SETTABLEKS                       R29 R28 K115 ["Font"]
      433 CALL                             R26 2 1
      434 SETTABLEKS                       R26 R25 K100 ["ChooseGameText"]
      436 GETUPVAL                         R26 4
      437 GETTABLEKS                       R26 R26 K32 ["createElement"]
      439 GETUPVAL                         R27 11
      440 DUPTABLE                         R28 K124 [{"Position"}]
      441 GETIMPORT                        R29 K36 [UDim2.new]
      443 LOADK                            R30 K125 [0.5]
      444 LOADN                            R31 0
      445 LOADN                            R32 0
      446 ADDK                             R33 R20 K126 [50]
      447 CALL                             R29 4 1
      448 SETTABLEKS                       R29 R28 K111 ["Position"]
      450 CALL                             R26 2 1
      451 SETTABLEKS                       R26 R25 K101 ["Sep1"]
      453 MOVE                             R26 R15
      454 JUMPIFNOT                        R26 ; [+69]
      455 GETUPVAL                         R26 4
      456 GETTABLEKS                       R26 R26 K32 ["createElement"]
      458 LOADK                            R27 K95 ["Frame"]
      459 DUPTABLE                         R28 K127 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      460 GETIMPORT                        R29 K36 [UDim2.new]
      462 LOADN                            R30 0
      463 LOADN                            R31 0
      464 LOADN                            R32 0
      465 ADDK                             R33 R20 K128 [60]
      466 CALL                             R29 4 1
      467 SETTABLEKS                       R29 R28 K111 ["Position"]
      469 GETIMPORT                        R29 K36 [UDim2.new]
      471 LOADN                            R30 1
      472 LOADN                            R31 0
      473 LOADN                            R32 0
      474 LOADN                            R33 60
      475 CALL                             R29 4 1
      476 SETTABLEKS                       R29 R28 K96 ["Size"]
      478 NEWTABLE                         R29 1 1
      480 GETUPVAL                         R31 4
      481 GETTABLEKS                       R31 R31 K32 ["createElement"]
      483 LOADK                            R32 K129 ["UIPadding"]
      484 DUPTABLE                         R33 K134 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      485 GETIMPORT                        R34 K136 [UDim.new]
      487 LOADN                            R35 0
      488 LOADN                            R36 6
      489 CALL                             R34 2 1
      490 SETTABLEKS                       R34 R33 K130 ["PaddingTop"]
      492 GETIMPORT                        R34 K136 [UDim.new]
      494 LOADN                            R35 0
      495 LOADN                            R36 6
      496 CALL                             R34 2 1
      497 SETTABLEKS                       R34 R33 K131 ["PaddingBottom"]
      499 GETIMPORT                        R34 K136 [UDim.new]
      501 LOADN                            R35 0
      502 LOADN                            R36 30
      503 CALL                             R34 2 1
      504 SETTABLEKS                       R34 R33 K132 ["PaddingLeft"]
      506 GETIMPORT                        R34 K136 [UDim.new]
      508 LOADN                            R35 0
      509 LOADN                            R36 30
      510 CALL                             R34 2 1
      511 SETTABLEKS                       R34 R33 K133 ["PaddingRight"]
      513 CALL                             R31 2 1
      514 SETTABLEKS                       R31 R29 K129 ["UIPadding"]
      516 GETUPVAL                         R30 4
      517 GETTABLEKS                       R30 R30 K32 ["createElement"]
      519 GETUPVAL                         R31 12
      520 CALL                             R30 1 -1
      521 SETLIST                          R29 R30 -1 [1]
      523 CALL                             R26 3 1
      524 SETTABLEKS                       R26 R25 K102 ["EligibilityBanner"]
      526 GETUPVAL                         R26 4
      527 GETTABLEKS                       R26 R26 K32 ["createElement"]
      529 LOADK                            R27 K95 ["Frame"]
      530 DUPTABLE                         R28 K127 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      531 GETIMPORT                        R29 K36 [UDim2.new]
      533 LOADK                            R30 K137 [0.6]
      534 LOADN                            R31 4
      535 LOADN                            R32 0
      536 ADDK                             R34 R20 K138 [70]
      537 ADD                              R33 R34 R21
      538 CALL                             R29 4 1
      539 SETTABLEKS                       R29 R28 K111 ["Position"]
      541 GETIMPORT                        R29 K36 [UDim2.new]
      543 LOADN                            R30 0
      544 GETTABLEKS                       R32 R2 K140 ["DROPDOWN_WIDTH"]
      546 SUBK                             R31 R32 K139 [10]
      547 LOADN                            R32 0
      548 GETTABLEKS                       R33 R2 K141 ["DROPDOWN_HEIGHT"]
      550 CALL                             R29 4 1
      551 SETTABLEKS                       R29 R28 K96 ["Size"]
      553 NEWTABLE                         R29 0 1
      555 GETUPVAL                         R30 4
      556 GETTABLEKS                       R30 R30 K32 ["createElement"]
      558 GETUPVAL                         R31 13
      559 DUPTABLE                         R32 K147 [{["Size"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["IncrementalTextSearch"] = True, ["OnSearchRequested"]}]
      560 GETIMPORT                        R33 K36 [UDim2.new]
      562 LOADN                            R34 1
      563 LOADN                            R35 0
      564 LOADN                            R36 1
      565 LOADN                            R37 0
      566 CALL                             R33 4 1
      567 SETTABLEKS                       R33 R32 K96 ["Size"]
      569 GETTABLEKS                       R33 R0 K146 ["OnSearchRequested"]
      571 SETTABLEKS                       R33 R32 K146 ["OnSearchRequested"]
      573 CALL                             R30 2 -1
      574 SETLIST                          R29 R30 -1 [1]
      576 CALL                             R26 3 1
      577 SETTABLEKS                       R26 R25 K103 ["SearchBar"]
      579 GETUPVAL                         R26 4
      580 GETTABLEKS                       R26 R26 K32 ["createElement"]
      582 GETUPVAL                         R27 14
      583 DUPTABLE                         R28 K153 [{"Items", "OnItemActivated", "PlaceholderText", "Position", "SelectedIndex", "Size", "Width"}]
      584 GETUPVAL                         R29 15
      585 MOVE                             R30 R12
      586 GETTABLEKS                       R31 R0 K154 ["createContentForSelectInput"]
      588 CALL                             R29 2 1
      589 SETTABLEKS                       R29 R28 K148 ["Items"]
      591 GETTABLEKS                       R29 R0 K155 ["onItemActivated"]
      593 SETTABLEKS                       R29 R28 K149 ["OnItemActivated"]
      595 SETTABLEKS                       R13 R28 K150 ["PlaceholderText"]
      597 GETIMPORT                        R29 K36 [UDim2.new]
      599 LOADN                            R30 0
      600 LOADN                            R31 30
      601 LOADN                            R32 0
      602 ADDK                             R34 R20 K138 [70]
      603 ADD                              R33 R34 R21
      604 CALL                             R29 4 1
      605 SETTABLEKS                       R29 R28 K111 ["Position"]
      607 GETUPVAL                         R29 9
      608 SETTABLEKS                       R29 R28 K151 ["SelectedIndex"]
      610 GETIMPORT                        R29 K36 [UDim2.new]
      612 LOADN                            R30 0
      613 GETTABLEKS                       R31 R2 K156 ["selectInput"]
      615 GETTABLEKS                       R31 R31 K157 ["width"]
      617 GETTABLEKS                       R31 R31 K158 ["creator"]
      619 LOADN                            R32 0
      620 GETTABLEKS                       R33 R2 K156 ["selectInput"]
      622 GETTABLEKS                       R33 R33 K159 ["button"]
      624 GETTABLEKS                       R33 R33 K160 ["height"]
      626 CALL                             R29 4 1
      627 SETTABLEKS                       R29 R28 K96 ["Size"]
      629 GETTABLEKS                       R29 R2 K156 ["selectInput"]
      631 GETTABLEKS                       R29 R29 K157 ["width"]
      633 GETTABLEKS                       R29 R29 K158 ["creator"]
      635 SETTABLEKS                       R29 R28 K152 ["Width"]
      637 CALL                             R26 2 1
      638 SETTABLEKS                       R26 R25 K104 ["GroupDropdownMenu"]
      640 LOADB                            R26 0
      641 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      643 GETUPVAL                         R28 0
      644 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      646 GETTABLEKS                       R28 R28 K52 ["QUERY_STATE_SUCCESS"]
      648 JUMPIFNOTEQ                      R27 R28 ; [+39]
      650 GETUPVAL                         R26 4
      651 GETTABLEKS                       R26 R26 K32 ["createElement"]
      653 GETUPVAL                         R27 16
      654 DUPTABLE                         R28 K165 [{["AutomaticCanvasSize"], ["Position"], ["Size"], ["NextPageRequestDistance"] = 100, ["NextPageFunc"]}]
      655 GETIMPORT                        R29 K167 [Enum.AutomaticSize.Y]
      657 SETTABLEKS                       R29 R28 K161 ["AutomaticCanvasSize"]
      659 GETIMPORT                        R29 K36 [UDim2.new]
      661 LOADN                            R30 0
      662 LOADN                            R31 30
      663 LOADN                            R32 0
      664 ADDK                             R34 R20 K168 [115]
      665 ADD                              R33 R34 R21
      666 CALL                             R29 4 1
      667 SETTABLEKS                       R29 R28 K111 ["Position"]
      669 GETIMPORT                        R29 K36 [UDim2.new]
      671 LOADK                            R30 K120 [0.95]
      672 LOADN                            R31 0
      673 LOADK                            R32 K169 [0.7]
      674 LOADN                            R33 0
      675 CALL                             R29 4 1
      676 SETTABLEKS                       R29 R28 K96 ["Size"]
      678 NEWCLOSURE                       R29 P1
      679 CAPTURE                          VAL R6
      680 CAPTURE                          UPVAL U8
      681 CAPTURE                          UPVAL U9
      682 CAPTURE                          VAL R9
      683 CAPTURE                          VAL R1
      684 SETTABLEKS                       R29 R28 K164 ["NextPageFunc"]
      686 MOVE                             R29 R14
      687 CALL                             R26 3 1
      688 SETTABLEKS                       R26 R25 K105 ["MainContentsSuccess"]
      690 LOADB                            R26 0
      691 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      693 GETUPVAL                         R28 0
      694 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      696 GETTABLEKS                       R28 R28 K170 ["QUERY_STATE_QUERYING"]
      698 JUMPIFNOTEQ                      R27 R28 ; [+58]
      700 GETUPVAL                         R26 4
      701 GETTABLEKS                       R26 R26 K32 ["createElement"]
      703 LOADK                            R27 K95 ["Frame"]
      704 DUPTABLE                         R28 K171 [{"Position", "Size", "BackgroundColor3"}]
      705 GETIMPORT                        R29 K36 [UDim2.new]
      707 LOADN                            R30 0
      708 LOADN                            R31 30
      709 LOADN                            R32 0
      710 ADDK                             R34 R20 K168 [115]
      711 ADD                              R33 R34 R21
      712 CALL                             R29 4 1
      713 SETTABLEKS                       R29 R28 K111 ["Position"]
      715 GETIMPORT                        R29 K36 [UDim2.new]
      717 LOADK                            R30 K120 [0.95]
      718 LOADN                            R31 0
      719 LOADK                            R32 K169 [0.7]
      720 LOADN                            R33 0
      721 CALL                             R29 4 1
      722 SETTABLEKS                       R29 R28 K96 ["Size"]
      724 GETTABLEKS                       R29 R2 K99 ["backgroundColor"]
      726 SETTABLEKS                       R29 R28 K97 ["BackgroundColor3"]
      728 NEWTABLE                         R29 0 1
      730 GETUPVAL                         R30 4
      731 GETTABLEKS                       R30 R30 K32 ["createElement"]
      733 GETUPVAL                         R31 17
      734 DUPTABLE                         R32 K172 [{"Position", "Size"}]
      735 GETIMPORT                        R33 K36 [UDim2.new]
      737 LOADK                            R34 K125 [0.5]
      738 LOADN                            R35 -100
      739 LOADN                            R36 0
      740 LOADN                            R37 115
      741 CALL                             R33 4 1
      742 SETTABLEKS                       R33 R32 K111 ["Position"]
      744 GETIMPORT                        R33 K36 [UDim2.new]
      746 LOADN                            R34 0
      747 LOADN                            R35 200
      748 LOADN                            R36 0
      749 LOADN                            R37 50
      750 CALL                             R33 4 1
      751 SETTABLEKS                       R33 R32 K96 ["Size"]
      753 CALL                             R30 2 -1
      754 SETLIST                          R29 R30 -1 [1]
      756 CALL                             R26 3 1
      757 SETTABLEKS                       R26 R25 K106 ["MainContentsQuerying"]
      759 LOADB                            R26 0
      760 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      762 GETUPVAL                         R28 0
      763 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      765 GETTABLEKS                       R28 R28 K173 ["QUERY_STATE_FAILED"]
      767 JUMPIFNOTEQ                      R27 R28 ; [+117]
      769 GETUPVAL                         R26 4
      770 GETTABLEKS                       R26 R26 K32 ["createElement"]
      772 LOADK                            R27 K95 ["Frame"]
      773 DUPTABLE                         R28 K171 [{"Position", "Size", "BackgroundColor3"}]
      774 GETIMPORT                        R29 K36 [UDim2.new]
      776 LOADN                            R30 0
      777 LOADN                            R31 30
      778 LOADN                            R32 0
      779 ADDK                             R34 R20 K168 [115]
      780 ADD                              R33 R34 R21
      781 CALL                             R29 4 1
      782 SETTABLEKS                       R29 R28 K111 ["Position"]
      784 GETIMPORT                        R29 K36 [UDim2.new]
      786 LOADK                            R30 K120 [0.95]
      787 LOADN                            R31 0
      788 LOADK                            R32 K169 [0.7]
      789 LOADN                            R33 0
      790 CALL                             R29 4 1
      791 SETTABLEKS                       R29 R28 K96 ["Size"]
      793 GETTABLEKS                       R29 R2 K99 ["backgroundColor"]
      795 SETTABLEKS                       R29 R28 K97 ["BackgroundColor3"]
      797 NEWTABLE                         R29 0 2
      799 GETUPVAL                         R30 4
      800 GETTABLEKS                       R30 R30 K32 ["createElement"]
      802 LOADK                            R31 K110 ["TextLabel"]
      803 DUPTABLE                         R32 K175 [{["Text"], ["Position"], ["TextSize"] = 24, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextColor3"], ["Font"]}]
      804 LOADK                            R35 K176 ["General"]
      805 LOADK                            R36 K177 ["FetchFailed"]
      806 NAMECALL                         R33 R3 K13 ["getText"]
      808 CALL                             R33 3 1
      809 SETTABLEKS                       R33 R32 K17 ["Text"]
      811 GETIMPORT                        R33 K36 [UDim2.new]
      813 LOADK                            R34 K125 [0.5]
      814 LOADN                            R35 0
      815 LOADN                            R36 0
      816 LOADN                            R37 50
      817 CALL                             R33 4 1
      818 SETTABLEKS                       R33 R32 K111 ["Position"]
      820 GETIMPORT                        R33 K179 [Enum.TextXAlignment.Center]
      822 SETTABLEKS                       R33 R32 K114 ["TextXAlignment"]
      824 GETTABLEKS                       R33 R2 K180 ["failText"]
      826 GETTABLEKS                       R33 R33 K121 ["text"]
      828 SETTABLEKS                       R33 R32 K113 ["TextColor3"]
      830 GETTABLEKS                       R33 R2 K180 ["failText"]
      832 GETTABLEKS                       R33 R33 K88 ["font"]
      834 SETTABLEKS                       R33 R32 K115 ["Font"]
      836 CALL                             R30 2 1
      837 GETUPVAL                         R31 4
      838 GETTABLEKS                       R31 R31 K32 ["createElement"]
      840 GETUPVAL                         R32 18
      841 DUPTABLE                         R33 K185 [{["AnchorPoint"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"], ["OnClick"]}]
      842 GETIMPORT                        R34 K90 [Vector2.new]
      844 LOADK                            R35 K125 [0.5]
      845 LOADK                            R36 K125 [0.5]
      846 CALL                             R34 2 1
      847 SETTABLEKS                       R34 R33 K181 ["AnchorPoint"]
      849 GETIMPORT                        R34 K36 [UDim2.new]
      851 LOADK                            R35 K125 [0.5]
      852 LOADN                            R36 0
      853 LOADN                            R37 0
      854 LOADN                            R38 100
      855 CALL                             R34 4 1
      856 SETTABLEKS                       R34 R33 K111 ["Position"]
      858 GETIMPORT                        R34 K36 [UDim2.new]
      860 LOADN                            R35 0
      861 LOADN                            R36 150
      862 LOADN                            R37 0
      863 LOADN                            R38 75
      864 CALL                             R34 4 1
      865 SETTABLEKS                       R34 R33 K96 ["Size"]
      867 LOADK                            R36 K186 ["Button"]
      868 LOADK                            R37 K187 ["Retry"]
      869 NAMECALL                         R34 R3 K13 ["getText"]
      871 CALL                             R34 3 1
      872 SETTABLEKS                       R34 R33 K17 ["Text"]
      874 NEWCLOSURE                       R34 P2
      875 CAPTURE                          VAL R9
      876 CAPTURE                          UPVAL U8
      877 CAPTURE                          UPVAL U9
      878 CAPTURE                          VAL R1
      879 SETTABLEKS                       R34 R33 K184 ["OnClick"]
      881 CALL                             R31 2 -1
      882 SETLIST                          R29 R30 -1 [1]
      884 CALL                             R26 3 1
      885 SETTABLEKS                       R26 R25 K107 ["MainContentsFailed"]
      887 GETUPVAL                         R26 4
      888 GETTABLEKS                       R26 R26 K32 ["createElement"]
      890 GETUPVAL                         R27 19
      891 DUPTABLE                         R28 K191 [{"MainButton", "OnClose", "NextScreen", "NextScreenText"}]
      892 DUPTABLE                         R29 K194 [{["Name"] = "Create", ["Active"] = False}]
      893 SETTABLEKS                       R29 R28 K188 ["MainButton"]
      895 SETTABLEKS                       R4 R28 K3 ["OnClose"]
      897 GETUPVAL                         R29 0
      898 GETTABLEKS                       R29 R29 K195 ["SCREENS"]
      900 GETTABLEKS                       R29 R29 K196 ["CREATE_NEW_GAME"]
      902 SETTABLEKS                       R29 R28 K189 ["NextScreen"]
      904 GETUPVAL                         R30 1
      905 JUMPIFNOT                        R30 ; [+2]
      906 LOADK                            R29 K197 ["CreateNewExperience"]
      907 JUMP                             ; [+1]
      908 LOADK                            R29 K198 ["CreateNewGame"]
      909 SETTABLEKS                       R29 R28 K190 ["NextScreenText"]
      911 CALL                             R26 2 1
      912 SETTABLEKS                       R26 R25 K108 ["Footer"]
      914 CALL                             R22 3 -1
      915 RETURN                           R22 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Games"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R0 K0 ["props"]
        9 GETTABLEKS                       R6 R6 K1 ["Games"]
       11 LOADNIL                          R7
       12 SETTABLE                         R7 R6 R4
       13 FORGLOOP                         R1 2 ; [-7]
       15 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["ExistingGame"]
        2 GETTABLEKS                       R2 R2 K1 ["gameInfo"]
        4 GETTABLEKS                       R3 R0 K2 ["GroupsHavePermission"]
        6 GETTABLEKS                       R3 R3 K3 ["groupInfo"]
        8 DUPTABLE                         R4 K9 [{"NextPageCursor", "Games", "Groups", "GamesQueryState", "CurrentGameMinAge"}]
        9 GETTABLEKS                       R5 R2 K10 ["nextPageCursor"]
       11 SETTABLEKS                       R5 R4 K4 ["NextPageCursor"]
       13 GETTABLEKS                       R5 R2 K11 ["games"]
       15 SETTABLEKS                       R5 R4 K5 ["Games"]
       17 GETTABLEKS                       R5 R3 K12 ["groups"]
       19 SETTABLEKS                       R5 R4 K6 ["Groups"]
       21 GETTABLEKS                       R5 R2 K13 ["queryState"]
       23 SETTABLEKS                       R5 R4 K7 ["GamesQueryState"]
       25 GETTABLEKS                       R5 R2 K14 ["minimumAge"]
       27 SETTABLEKS                       R5 R4 K8 ["CurrentGameMinAge"]
       29 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 LOADB                            R4 0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 CALL                             R2 -1 0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K0 ["SCREENS"]
       10 GETTABLEKS                       R4 R4 K1 ["CHOOSE_PLACE"]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K4 [{"DispatchLoadGroups", "DispatchLoadExistingGames", "OpenChoosePlacePage", "DispatchSetSelectedGroup"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["DispatchLoadGroups"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["DispatchLoadExistingGames"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 SETTABLEKS                       R2 R1 K2 ["OpenChoosePlacePage"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U5
       21 SETTABLEKS                       R2 R1 K3 ["DispatchSetSelectedGroup"]
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K9 [game]
       25 LOADK                            R5 K10 ["StudioService"]
       26 NAMECALL                         R3 R3 K11 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R0 K5 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETTABLEKS                       R7 R4 K15 ["Dash"]
       42 GETTABLEKS                       R8 R7 K16 ["map"]
       44 GETIMPORT                        R9 K4 [require]
       46 GETTABLEKS                       R10 R0 K17 ["Src"]
       48 GETTABLEKS                       R10 R10 K18 ["Resources"]
       50 GETTABLEKS                       R10 R10 K19 ["Constants"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R11 R0 K17 ["Src"]
       57 GETTABLEKS                       R11 R11 K20 ["Thunks"]
       59 GETTABLEKS                       R11 R11 K21 ["LoadExistingGames"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETTABLEKS                       R12 R0 K17 ["Src"]
       66 GETTABLEKS                       R12 R12 K20 ["Thunks"]
       68 GETTABLEKS                       R12 R12 K22 ["LoadExistingPlaces"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETTABLEKS                       R13 R0 K17 ["Src"]
       75 GETTABLEKS                       R13 R13 K20 ["Thunks"]
       77 GETTABLEKS                       R13 R13 K23 ["LoadGroups"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K4 [require]
       82 GETTABLEKS                       R14 R0 K17 ["Src"]
       84 GETTABLEKS                       R14 R14 K20 ["Thunks"]
       86 GETTABLEKS                       R14 R14 K24 ["LoadGameConfiguration"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K4 [require]
       91 GETTABLEKS                       R15 R0 K17 ["Src"]
       93 GETTABLEKS                       R15 R15 K25 ["Actions"]
       95 GETTABLEKS                       R15 R15 K26 ["SetScreen"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K4 [require]
      100 GETTABLEKS                       R16 R0 K17 ["Src"]
      102 GETTABLEKS                       R16 R16 K25 ["Actions"]
      104 GETTABLEKS                       R16 R16 K27 ["SetSelectedGroup"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K4 [require]
      109 GETTABLEKS                       R17 R0 K17 ["Src"]
      111 GETTABLEKS                       R17 R17 K28 ["Components"]
      113 GETTABLEKS                       R17 R17 K29 ["Footer"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K4 [require]
      118 GETTABLEKS                       R18 R0 K17 ["Src"]
      120 GETTABLEKS                       R18 R18 K28 ["Components"]
      122 GETTABLEKS                       R18 R18 K30 ["TileGame"]
      124 CALL                             R17 1 1
      125 GETTABLEKS                       R18 R4 K31 ["UI"]
      127 GETTABLEKS                       R19 R18 K32 ["Button"]
      129 GETTABLEKS                       R20 R18 K33 ["LoadingIndicator"]
      131 GETTABLEKS                       R21 R18 K34 ["ScrollingFrame"]
      133 GETTABLEKS                       R22 R18 K35 ["SearchBar"]
      135 GETTABLEKS                       R23 R18 K36 ["SelectInput"]
      137 GETTABLEKS                       R24 R18 K37 ["Separator"]
      139 GETIMPORT                        R25 K4 [require]
      141 GETTABLEKS                       R26 R0 K17 ["Src"]
      143 GETTABLEKS                       R26 R26 K28 ["Components"]
      145 GETTABLEKS                       R26 R26 K38 ["EligibilityBanner"]
      147 CALL                             R25 1 1
      148 GETTABLEKS                       R26 R1 K39 ["PureComponent"]
      150 LOADK                            R28 K40 ["ScreenChooseGame"]
      151 NAMECALL                         R26 R26 K41 ["extend"]
      153 CALL                             R26 2 1
      154 NAMECALL                         R27 R3 K42 ["getUserId"]
      156 CALL                             R27 1 1
      157 GETTABLEKS                       R28 R9 K43 ["SUBJECT_TYPE"]
      159 GETTABLEKS                       R28 R28 K44 ["USER"]
      161 LOADNIL                          R29
      162 GETIMPORT                        R30 K9 [game]
      164 LOADK                            R32 K45 ["TextService"]
      165 NAMECALL                         R30 R30 K11 ["GetService"]
      167 CALL                             R30 2 1
      168 GETIMPORT                        R31 K4 [require]
      170 GETTABLEKS                       R32 R0 K17 ["Src"]
      172 GETTABLEKS                       R32 R32 K18 ["Resources"]
      174 GETTABLEKS                       R32 R32 K19 ["Constants"]
      176 CALL                             R31 1 1
      177 GETIMPORT                        R32 K4 [require]
      179 GETTABLEKS                       R33 R0 K17 ["Src"]
      181 GETTABLEKS                       R33 R33 K46 ["Flags"]
      183 GETTABLEKS                       R33 R33 K47 ["getFFlagPublishPlaceAsGameToExperience"]
      185 CALL                             R32 1 1
      186 CALL                             R32 0 1
      187 GETIMPORT                        R33 K4 [require]
      189 GETTABLEKS                       R34 R0 K17 ["Src"]
      191 GETTABLEKS                       R34 R34 K46 ["Flags"]
      193 GETTABLEKS                       R34 R34 K48 ["getFFlagPublishPlaceAsAudiencesReplacement"]
      195 CALL                             R33 1 1
      196 GETIMPORT                        R34 K4 [require]
      198 GETTABLEKS                       R35 R0 K17 ["Src"]
      200 GETTABLEKS                       R35 R35 K46 ["Flags"]
      202 GETTABLEKS                       R35 R35 K49 ["getFFlagCOLLAB6755TimingBug2"]
      204 CALL                             R34 1 1
      205 NEWCLOSURE                       R35 P0
      206 CAPTURE                          REF R28
      207 CAPTURE                          REF R27
      208 CAPTURE                          REF R29
      209 SETTABLEKS                       R35 R26 K50 ["init"]
      211 NEWCLOSURE                       R35 P1
      212 CAPTURE                          VAL R31
      213 CAPTURE                          VAL R32
      214 CAPTURE                          VAL R3
      215 CAPTURE                          REF R29
      216 CAPTURE                          VAL R1
      217 CAPTURE                          VAL R17
      218 CAPTURE                          VAL R33
      219 CAPTURE                          VAL R34
      220 CAPTURE                          REF R28
      221 CAPTURE                          REF R27
      222 CAPTURE                          VAL R30
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R25
      225 CAPTURE                          VAL R22
      226 CAPTURE                          VAL R23
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R20
      230 CAPTURE                          VAL R19
      231 CAPTURE                          VAL R16
      232 SETTABLEKS                       R35 R26 K51 ["render"]
      234 DUPCLOSURE                       R35 K52 [PROTO_8]
      235 SETTABLEKS                       R35 R26 K53 ["willUnmount"]
      237 MOVE                             R35 R6
      238 DUPTABLE                         R36 K57 [{"Stylizer", "Localization", "API"}]
      239 GETTABLEKS                       R37 R5 K54 ["Stylizer"]
      241 SETTABLEKS                       R37 R36 K54 ["Stylizer"]
      243 GETTABLEKS                       R37 R5 K55 ["Localization"]
      245 SETTABLEKS                       R37 R36 K55 ["Localization"]
      247 GETTABLEKS                       R37 R5 K56 ["API"]
      249 SETTABLEKS                       R37 R36 K56 ["API"]
      251 CALL                             R35 1 1
      252 MOVE                             R36 R26
      253 CALL                             R35 1 1
      254 MOVE                             R26 R35
      255 DUPCLOSURE                       R35 K58 [PROTO_9]
      256 DUPCLOSURE                       R36 K59 [PROTO_14]
      257 CAPTURE                          VAL R12
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R11
      260 CAPTURE                          VAL R14
      261 CAPTURE                          VAL R31
      262 CAPTURE                          VAL R15
      263 GETTABLEKS                       R37 R2 K60 ["connect"]
      265 MOVE                             R38 R35
      266 MOVE                             R39 R36
      267 CALL                             R37 2 1
      268 MOVE                             R38 R26
      269 CALL                             R37 1 -1
      270 CLOSEUPVALS                      R27
      271 RETURN                           R37 -1
