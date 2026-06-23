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
        0 DUPTABLE                         R1 K1 [{"searchTerm"}]
        1 LOADK                            R2 K2 [""]
        2 SETTABLEKS                       R2 R1 K0 ["searchTerm"]
        4 SETTABLEKS                       R1 R0 K3 ["state"]
        6 GETTABLEKS                       R1 R0 K4 ["props"]
        8 GETTABLEKS                       R1 R1 K5 ["DispatchLoadExistingGames"]
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R3 1
       12 LOADNIL                          R4
       13 GETTABLEKS                       R5 R0 K4 ["props"]
       15 GETTABLEKS                       R5 R5 K6 ["IsPublish"]
       17 CALL                             R1 4 0
       18 GETTABLEKS                       R1 R0 K4 ["props"]
       20 GETTABLEKS                       R1 R1 K7 ["DispatchLoadGroups"]
       22 GETTABLEKS                       R2 R0 K4 ["props"]
       24 GETTABLEKS                       R2 R2 K6 ["IsPublish"]
       26 CALL                             R1 1 0
       27 DUPCLOSURE                       R1 K8 [PROTO_0]
       28 SETTABLEKS                       R1 R0 K9 ["createContentForSelectInput"]
       30 NEWCLOSURE                       R1 P1
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K10 ["onItemActivated"]
       37 NEWCLOSURE                       R1 P2
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K11 ["OnSearchRequested"]
       41 RETURN                           R0 0

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
      359 LOADK                            R26 K91 [∞]
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
      396 DUPTABLE                         R28 K118 [{"Text", "Position", "Size", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font", "TextSize", "TextWrapped"}]
      397 SETTABLEKS                       R18 R28 K17 ["Text"]
      399 GETIMPORT                        R29 K36 [UDim2.new]
      401 LOADN                            R30 0
      402 LOADN                            R31 30
      403 LOADN                            R32 0
      404 LOADN                            R33 20
      405 CALL                             R29 4 1
      406 SETTABLEKS                       R29 R28 K111 ["Position"]
      408 GETIMPORT                        R29 K36 [UDim2.new]
      410 LOADK                            R30 K119 [0.95]
      411 LOADN                            R31 0
      412 LOADN                            R32 0
      413 MOVE                             R33 R19
      414 CALL                             R29 4 1
      415 SETTABLEKS                       R29 R28 K96 ["Size"]
      417 LOADN                            R29 1
      418 SETTABLEKS                       R29 R28 K112 ["BackgroundTransparency"]
      420 GETTABLEKS                       R29 R2 K87 ["header"]
      422 GETTABLEKS                       R29 R29 K120 ["text"]
      424 SETTABLEKS                       R29 R28 K113 ["TextColor3"]
      426 GETIMPORT                        R29 K122 [Enum.TextXAlignment.Left]
      428 SETTABLEKS                       R29 R28 K114 ["TextXAlignment"]
      430 GETTABLEKS                       R29 R2 K87 ["header"]
      432 GETTABLEKS                       R29 R29 K88 ["font"]
      434 SETTABLEKS                       R29 R28 K115 ["Font"]
      436 LOADN                            R29 18
      437 SETTABLEKS                       R29 R28 K116 ["TextSize"]
      439 LOADB                            R29 1
      440 SETTABLEKS                       R29 R28 K117 ["TextWrapped"]
      442 CALL                             R26 2 1
      443 SETTABLEKS                       R26 R25 K100 ["ChooseGameText"]
      445 GETUPVAL                         R26 4
      446 GETTABLEKS                       R26 R26 K32 ["createElement"]
      448 GETUPVAL                         R27 11
      449 DUPTABLE                         R28 K123 [{"Position"}]
      450 GETIMPORT                        R29 K36 [UDim2.new]
      452 LOADK                            R30 K124 [0.5]
      453 LOADN                            R31 0
      454 LOADN                            R32 0
      455 ADDK                             R33 R20 K125 [50]
      456 CALL                             R29 4 1
      457 SETTABLEKS                       R29 R28 K111 ["Position"]
      459 CALL                             R26 2 1
      460 SETTABLEKS                       R26 R25 K101 ["Sep1"]
      462 MOVE                             R26 R15
      463 JUMPIFNOT                        R26 ; [+72]
      464 GETUPVAL                         R26 4
      465 GETTABLEKS                       R26 R26 K32 ["createElement"]
      467 LOADK                            R27 K95 ["Frame"]
      468 DUPTABLE                         R28 K126 [{"Position", "Size", "BackgroundTransparency"}]
      469 GETIMPORT                        R29 K36 [UDim2.new]
      471 LOADN                            R30 0
      472 LOADN                            R31 0
      473 LOADN                            R32 0
      474 ADDK                             R33 R20 K127 [60]
      475 CALL                             R29 4 1
      476 SETTABLEKS                       R29 R28 K111 ["Position"]
      478 GETIMPORT                        R29 K36 [UDim2.new]
      480 LOADN                            R30 1
      481 LOADN                            R31 0
      482 LOADN                            R32 0
      483 LOADN                            R33 60
      484 CALL                             R29 4 1
      485 SETTABLEKS                       R29 R28 K96 ["Size"]
      487 LOADN                            R29 1
      488 SETTABLEKS                       R29 R28 K112 ["BackgroundTransparency"]
      490 NEWTABLE                         R29 1 1
      492 GETUPVAL                         R31 4
      493 GETTABLEKS                       R31 R31 K32 ["createElement"]
      495 LOADK                            R32 K128 ["UIPadding"]
      496 DUPTABLE                         R33 K133 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      497 GETIMPORT                        R34 K135 [UDim.new]
      499 LOADN                            R35 0
      500 LOADN                            R36 6
      501 CALL                             R34 2 1
      502 SETTABLEKS                       R34 R33 K129 ["PaddingTop"]
      504 GETIMPORT                        R34 K135 [UDim.new]
      506 LOADN                            R35 0
      507 LOADN                            R36 6
      508 CALL                             R34 2 1
      509 SETTABLEKS                       R34 R33 K130 ["PaddingBottom"]
      511 GETIMPORT                        R34 K135 [UDim.new]
      513 LOADN                            R35 0
      514 LOADN                            R36 30
      515 CALL                             R34 2 1
      516 SETTABLEKS                       R34 R33 K131 ["PaddingLeft"]
      518 GETIMPORT                        R34 K135 [UDim.new]
      520 LOADN                            R35 0
      521 LOADN                            R36 30
      522 CALL                             R34 2 1
      523 SETTABLEKS                       R34 R33 K132 ["PaddingRight"]
      525 CALL                             R31 2 1
      526 SETTABLEKS                       R31 R29 K128 ["UIPadding"]
      528 GETUPVAL                         R30 4
      529 GETTABLEKS                       R30 R30 K32 ["createElement"]
      531 GETUPVAL                         R31 12
      532 CALL                             R30 1 -1
      533 SETLIST                          R29 R30 -1 [1]
      535 CALL                             R26 3 1
      536 SETTABLEKS                       R26 R25 K102 ["EligibilityBanner"]
      538 GETUPVAL                         R26 4
      539 GETTABLEKS                       R26 R26 K32 ["createElement"]
      541 LOADK                            R27 K95 ["Frame"]
      542 DUPTABLE                         R28 K126 [{"Position", "Size", "BackgroundTransparency"}]
      543 GETIMPORT                        R29 K36 [UDim2.new]
      545 LOADK                            R30 K136 [0.6]
      546 LOADN                            R31 4
      547 LOADN                            R32 0
      548 ADDK                             R34 R20 K137 [70]
      549 ADD                              R33 R34 R21
      550 CALL                             R29 4 1
      551 SETTABLEKS                       R29 R28 K111 ["Position"]
      553 GETIMPORT                        R29 K36 [UDim2.new]
      555 LOADN                            R30 0
      556 GETTABLEKS                       R32 R2 K139 ["DROPDOWN_WIDTH"]
      558 SUBK                             R31 R32 K138 [10]
      559 LOADN                            R32 0
      560 GETTABLEKS                       R33 R2 K140 ["DROPDOWN_HEIGHT"]
      562 CALL                             R29 4 1
      563 SETTABLEKS                       R29 R28 K96 ["Size"]
      565 LOADN                            R29 1
      566 SETTABLEKS                       R29 R28 K112 ["BackgroundTransparency"]
      568 NEWTABLE                         R29 0 1
      570 GETUPVAL                         R30 4
      571 GETTABLEKS                       R30 R30 K32 ["createElement"]
      573 GETUPVAL                         R31 13
      574 DUPTABLE                         R32 K145 [{"Size", "ShowSearchIcon", "ShowSearchButton", "IncrementalTextSearch", "OnSearchRequested"}]
      575 GETIMPORT                        R33 K36 [UDim2.new]
      577 LOADN                            R34 1
      578 LOADN                            R35 0
      579 LOADN                            R36 1
      580 LOADN                            R37 0
      581 CALL                             R33 4 1
      582 SETTABLEKS                       R33 R32 K96 ["Size"]
      584 LOADB                            R33 1
      585 SETTABLEKS                       R33 R32 K141 ["ShowSearchIcon"]
      587 LOADB                            R33 0
      588 SETTABLEKS                       R33 R32 K142 ["ShowSearchButton"]
      590 LOADB                            R33 1
      591 SETTABLEKS                       R33 R32 K143 ["IncrementalTextSearch"]
      593 GETTABLEKS                       R33 R0 K144 ["OnSearchRequested"]
      595 SETTABLEKS                       R33 R32 K144 ["OnSearchRequested"]
      597 CALL                             R30 2 -1
      598 SETLIST                          R29 R30 -1 [1]
      600 CALL                             R26 3 1
      601 SETTABLEKS                       R26 R25 K103 ["SearchBar"]
      603 GETUPVAL                         R26 4
      604 GETTABLEKS                       R26 R26 K32 ["createElement"]
      606 GETUPVAL                         R27 14
      607 DUPTABLE                         R28 K152 [{"Items", "MenuHeight", "OnItemActivated", "PlaceholderText", "Position", "SelectedIndex", "Size", "Width"}]
      608 GETUPVAL                         R29 15
      609 MOVE                             R30 R12
      610 GETTABLEKS                       R31 R0 K153 ["createContentForSelectInput"]
      612 CALL                             R29 2 1
      613 SETTABLEKS                       R29 R28 K146 ["Items"]
      615 GETUPVAL                         R30 16
      616 JUMPIFNOT                        R30 ; [+2]
      617 LOADN                            R29 88
      618 JUMP                             ; [+1]
      619 LOADNIL                          R29
      620 SETTABLEKS                       R29 R28 K147 ["MenuHeight"]
      622 GETTABLEKS                       R29 R0 K154 ["onItemActivated"]
      624 SETTABLEKS                       R29 R28 K148 ["OnItemActivated"]
      626 SETTABLEKS                       R13 R28 K149 ["PlaceholderText"]
      628 GETIMPORT                        R29 K36 [UDim2.new]
      630 LOADN                            R30 0
      631 LOADN                            R31 30
      632 LOADN                            R32 0
      633 ADDK                             R34 R20 K137 [70]
      634 ADD                              R33 R34 R21
      635 CALL                             R29 4 1
      636 SETTABLEKS                       R29 R28 K111 ["Position"]
      638 GETUPVAL                         R29 9
      639 SETTABLEKS                       R29 R28 K150 ["SelectedIndex"]
      641 GETIMPORT                        R29 K36 [UDim2.new]
      643 LOADN                            R30 0
      644 GETTABLEKS                       R31 R2 K155 ["selectInput"]
      646 GETTABLEKS                       R31 R31 K156 ["width"]
      648 GETTABLEKS                       R31 R31 K157 ["creator"]
      650 LOADN                            R32 0
      651 GETTABLEKS                       R33 R2 K155 ["selectInput"]
      653 GETTABLEKS                       R33 R33 K158 ["button"]
      655 GETTABLEKS                       R33 R33 K159 ["height"]
      657 CALL                             R29 4 1
      658 SETTABLEKS                       R29 R28 K96 ["Size"]
      660 GETTABLEKS                       R29 R2 K155 ["selectInput"]
      662 GETTABLEKS                       R29 R29 K156 ["width"]
      664 GETTABLEKS                       R29 R29 K157 ["creator"]
      666 SETTABLEKS                       R29 R28 K151 ["Width"]
      668 CALL                             R26 2 1
      669 SETTABLEKS                       R26 R25 K104 ["GroupDropdownMenu"]
      671 LOADB                            R26 0
      672 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      674 GETUPVAL                         R28 0
      675 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      677 GETTABLEKS                       R28 R28 K52 ["QUERY_STATE_SUCCESS"]
      679 JUMPIFNOTEQ                      R27 R28 ; [+42]
      681 GETUPVAL                         R26 4
      682 GETTABLEKS                       R26 R26 K32 ["createElement"]
      684 GETUPVAL                         R27 17
      685 DUPTABLE                         R28 K163 [{"AutomaticCanvasSize", "Position", "Size", "NextPageRequestDistance", "NextPageFunc"}]
      686 GETIMPORT                        R29 K165 [Enum.AutomaticSize.Y]
      688 SETTABLEKS                       R29 R28 K160 ["AutomaticCanvasSize"]
      690 GETIMPORT                        R29 K36 [UDim2.new]
      692 LOADN                            R30 0
      693 LOADN                            R31 30
      694 LOADN                            R32 0
      695 ADDK                             R34 R20 K166 [115]
      696 ADD                              R33 R34 R21
      697 CALL                             R29 4 1
      698 SETTABLEKS                       R29 R28 K111 ["Position"]
      700 GETIMPORT                        R29 K36 [UDim2.new]
      702 LOADK                            R30 K119 [0.95]
      703 LOADN                            R31 0
      704 LOADK                            R32 K167 [0.7]
      705 LOADN                            R33 0
      706 CALL                             R29 4 1
      707 SETTABLEKS                       R29 R28 K96 ["Size"]
      709 LOADN                            R29 100
      710 SETTABLEKS                       R29 R28 K161 ["NextPageRequestDistance"]
      712 NEWCLOSURE                       R29 P1
      713 CAPTURE                          VAL R6
      714 CAPTURE                          UPVAL U8
      715 CAPTURE                          UPVAL U9
      716 CAPTURE                          VAL R9
      717 CAPTURE                          VAL R1
      718 SETTABLEKS                       R29 R28 K162 ["NextPageFunc"]
      720 MOVE                             R29 R14
      721 CALL                             R26 3 1
      722 SETTABLEKS                       R26 R25 K105 ["MainContentsSuccess"]
      724 LOADB                            R26 0
      725 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      727 GETUPVAL                         R28 0
      728 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      730 GETTABLEKS                       R28 R28 K168 ["QUERY_STATE_QUERYING"]
      732 JUMPIFNOTEQ                      R27 R28 ; [+58]
      734 GETUPVAL                         R26 4
      735 GETTABLEKS                       R26 R26 K32 ["createElement"]
      737 LOADK                            R27 K95 ["Frame"]
      738 DUPTABLE                         R28 K169 [{"Position", "Size", "BackgroundColor3"}]
      739 GETIMPORT                        R29 K36 [UDim2.new]
      741 LOADN                            R30 0
      742 LOADN                            R31 30
      743 LOADN                            R32 0
      744 ADDK                             R34 R20 K166 [115]
      745 ADD                              R33 R34 R21
      746 CALL                             R29 4 1
      747 SETTABLEKS                       R29 R28 K111 ["Position"]
      749 GETIMPORT                        R29 K36 [UDim2.new]
      751 LOADK                            R30 K119 [0.95]
      752 LOADN                            R31 0
      753 LOADK                            R32 K167 [0.7]
      754 LOADN                            R33 0
      755 CALL                             R29 4 1
      756 SETTABLEKS                       R29 R28 K96 ["Size"]
      758 GETTABLEKS                       R29 R2 K99 ["backgroundColor"]
      760 SETTABLEKS                       R29 R28 K97 ["BackgroundColor3"]
      762 NEWTABLE                         R29 0 1
      764 GETUPVAL                         R30 4
      765 GETTABLEKS                       R30 R30 K32 ["createElement"]
      767 GETUPVAL                         R31 18
      768 DUPTABLE                         R32 K170 [{"Position", "Size"}]
      769 GETIMPORT                        R33 K36 [UDim2.new]
      771 LOADK                            R34 K124 [0.5]
      772 LOADN                            R35 156
      773 LOADN                            R36 0
      774 LOADN                            R37 115
      775 CALL                             R33 4 1
      776 SETTABLEKS                       R33 R32 K111 ["Position"]
      778 GETIMPORT                        R33 K36 [UDim2.new]
      780 LOADN                            R34 0
      781 LOADN                            R35 200
      782 LOADN                            R36 0
      783 LOADN                            R37 50
      784 CALL                             R33 4 1
      785 SETTABLEKS                       R33 R32 K96 ["Size"]
      787 CALL                             R30 2 -1
      788 SETLIST                          R29 R30 -1 [1]
      790 CALL                             R26 3 1
      791 SETTABLEKS                       R26 R25 K106 ["MainContentsQuerying"]
      793 LOADB                            R26 0
      794 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      796 GETUPVAL                         R28 0
      797 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      799 GETTABLEKS                       R28 R28 K171 ["QUERY_STATE_FAILED"]
      801 JUMPIFNOTEQ                      R27 R28 ; [+126]
      803 GETUPVAL                         R26 4
      804 GETTABLEKS                       R26 R26 K32 ["createElement"]
      806 LOADK                            R27 K95 ["Frame"]
      807 DUPTABLE                         R28 K169 [{"Position", "Size", "BackgroundColor3"}]
      808 GETIMPORT                        R29 K36 [UDim2.new]
      810 LOADN                            R30 0
      811 LOADN                            R31 30
      812 LOADN                            R32 0
      813 ADDK                             R34 R20 K166 [115]
      814 ADD                              R33 R34 R21
      815 CALL                             R29 4 1
      816 SETTABLEKS                       R29 R28 K111 ["Position"]
      818 GETIMPORT                        R29 K36 [UDim2.new]
      820 LOADK                            R30 K119 [0.95]
      821 LOADN                            R31 0
      822 LOADK                            R32 K167 [0.7]
      823 LOADN                            R33 0
      824 CALL                             R29 4 1
      825 SETTABLEKS                       R29 R28 K96 ["Size"]
      827 GETTABLEKS                       R29 R2 K99 ["backgroundColor"]
      829 SETTABLEKS                       R29 R28 K97 ["BackgroundColor3"]
      831 NEWTABLE                         R29 0 2
      833 GETUPVAL                         R30 4
      834 GETTABLEKS                       R30 R30 K32 ["createElement"]
      836 LOADK                            R31 K110 ["TextLabel"]
      837 DUPTABLE                         R32 K172 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      838 LOADK                            R35 K173 ["General"]
      839 LOADK                            R36 K174 ["FetchFailed"]
      840 NAMECALL                         R33 R3 K13 ["getText"]
      842 CALL                             R33 3 1
      843 SETTABLEKS                       R33 R32 K17 ["Text"]
      845 GETIMPORT                        R33 K36 [UDim2.new]
      847 LOADK                            R34 K124 [0.5]
      848 LOADN                            R35 0
      849 LOADN                            R36 0
      850 LOADN                            R37 50
      851 CALL                             R33 4 1
      852 SETTABLEKS                       R33 R32 K111 ["Position"]
      854 LOADN                            R33 24
      855 SETTABLEKS                       R33 R32 K116 ["TextSize"]
      857 LOADN                            R33 1
      858 SETTABLEKS                       R33 R32 K112 ["BackgroundTransparency"]
      860 GETIMPORT                        R33 K176 [Enum.TextXAlignment.Center]
      862 SETTABLEKS                       R33 R32 K114 ["TextXAlignment"]
      864 GETTABLEKS                       R33 R2 K177 ["failText"]
      866 GETTABLEKS                       R33 R33 K120 ["text"]
      868 SETTABLEKS                       R33 R32 K113 ["TextColor3"]
      870 GETTABLEKS                       R33 R2 K177 ["failText"]
      872 GETTABLEKS                       R33 R33 K88 ["font"]
      874 SETTABLEKS                       R33 R32 K115 ["Font"]
      876 CALL                             R30 2 1
      877 GETUPVAL                         R31 4
      878 GETTABLEKS                       R31 R31 K32 ["createElement"]
      880 GETUPVAL                         R32 19
      881 DUPTABLE                         R33 K181 [{"AnchorPoint", "Position", "Size", "Style", "Text", "OnClick"}]
      882 GETIMPORT                        R34 K90 [Vector2.new]
      884 LOADK                            R35 K124 [0.5]
      885 LOADK                            R36 K124 [0.5]
      886 CALL                             R34 2 1
      887 SETTABLEKS                       R34 R33 K178 ["AnchorPoint"]
      889 GETIMPORT                        R34 K36 [UDim2.new]
      891 LOADK                            R35 K124 [0.5]
      892 LOADN                            R36 0
      893 LOADN                            R37 0
      894 LOADN                            R38 100
      895 CALL                             R34 4 1
      896 SETTABLEKS                       R34 R33 K111 ["Position"]
      898 GETIMPORT                        R34 K36 [UDim2.new]
      900 LOADN                            R35 0
      901 LOADN                            R36 150
      902 LOADN                            R37 0
      903 LOADN                            R38 75
      904 CALL                             R34 4 1
      905 SETTABLEKS                       R34 R33 K96 ["Size"]
      907 LOADK                            R34 K182 ["Round"]
      908 SETTABLEKS                       R34 R33 K179 ["Style"]
      910 LOADK                            R36 K183 ["Button"]
      911 LOADK                            R37 K184 ["Retry"]
      912 NAMECALL                         R34 R3 K13 ["getText"]
      914 CALL                             R34 3 1
      915 SETTABLEKS                       R34 R33 K17 ["Text"]
      917 NEWCLOSURE                       R34 P2
      918 CAPTURE                          VAL R9
      919 CAPTURE                          UPVAL U8
      920 CAPTURE                          UPVAL U9
      921 CAPTURE                          VAL R1
      922 SETTABLEKS                       R34 R33 K180 ["OnClick"]
      924 CALL                             R31 2 -1
      925 SETLIST                          R29 R30 -1 [1]
      927 CALL                             R26 3 1
      928 SETTABLEKS                       R26 R25 K107 ["MainContentsFailed"]
      930 GETUPVAL                         R26 4
      931 GETTABLEKS                       R26 R26 K32 ["createElement"]
      933 GETUPVAL                         R27 20
      934 DUPTABLE                         R28 K188 [{"MainButton", "OnClose", "NextScreen", "NextScreenText"}]
      935 DUPTABLE                         R29 K190 [{"Name", "Active"}]
      936 LOADK                            R30 K191 ["Create"]
      937 SETTABLEKS                       R30 R29 K65 ["Name"]
      939 LOADB                            R30 0
      940 SETTABLEKS                       R30 R29 K189 ["Active"]
      942 SETTABLEKS                       R29 R28 K185 ["MainButton"]
      944 SETTABLEKS                       R4 R28 K3 ["OnClose"]
      946 GETUPVAL                         R29 0
      947 GETTABLEKS                       R29 R29 K192 ["SCREENS"]
      949 GETTABLEKS                       R29 R29 K193 ["CREATE_NEW_GAME"]
      951 SETTABLEKS                       R29 R28 K186 ["NextScreen"]
      953 GETUPVAL                         R30 1
      954 JUMPIFNOT                        R30 ; [+2]
      955 LOADK                            R29 K194 ["CreateNewExperience"]
      956 JUMP                             ; [+1]
      957 LOADK                            R29 K195 ["CreateNewGame"]
      958 SETTABLEKS                       R29 R28 K187 ["NextScreenText"]
      960 CALL                             R26 2 1
      961 SETTABLEKS                       R26 R25 K108 ["Footer"]
      963 CALL                             R22 3 -1
      964 RETURN                           R22 -1

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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevFrameworkDropdownMenuHeight"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [game]
       31 LOADK                            R6 K12 ["StudioService"]
       32 NAMECALL                         R4 R4 K13 ["GetService"]
       34 CALL                             R4 2 1
       35 GETIMPORT                        R5 K8 [require]
       37 GETTABLEKS                       R6 R1 K9 ["Packages"]
       39 GETTABLEKS                       R6 R6 K14 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K16 ["withContext"]
       46 GETTABLEKS                       R8 R5 K17 ["Dash"]
       48 GETTABLEKS                       R9 R8 K18 ["map"]
       50 GETIMPORT                        R10 K8 [require]
       52 GETTABLEKS                       R11 R1 K19 ["Src"]
       54 GETTABLEKS                       R11 R11 K20 ["Resources"]
       56 GETTABLEKS                       R11 R11 K21 ["Constants"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K8 [require]
       61 GETTABLEKS                       R12 R1 K19 ["Src"]
       63 GETTABLEKS                       R12 R12 K22 ["Thunks"]
       65 GETTABLEKS                       R12 R12 K23 ["LoadExistingGames"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K8 [require]
       70 GETTABLEKS                       R13 R1 K19 ["Src"]
       72 GETTABLEKS                       R13 R13 K22 ["Thunks"]
       74 GETTABLEKS                       R13 R13 K24 ["LoadExistingPlaces"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K8 [require]
       79 GETTABLEKS                       R14 R1 K19 ["Src"]
       81 GETTABLEKS                       R14 R14 K22 ["Thunks"]
       83 GETTABLEKS                       R14 R14 K25 ["LoadGroups"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K8 [require]
       88 GETTABLEKS                       R15 R1 K19 ["Src"]
       90 GETTABLEKS                       R15 R15 K22 ["Thunks"]
       92 GETTABLEKS                       R15 R15 K26 ["LoadGameConfiguration"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K8 [require]
       97 GETTABLEKS                       R16 R1 K19 ["Src"]
       99 GETTABLEKS                       R16 R16 K27 ["Actions"]
      101 GETTABLEKS                       R16 R16 K28 ["SetScreen"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K8 [require]
      106 GETTABLEKS                       R17 R1 K19 ["Src"]
      108 GETTABLEKS                       R17 R17 K27 ["Actions"]
      110 GETTABLEKS                       R17 R17 K29 ["SetSelectedGroup"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K8 [require]
      115 GETTABLEKS                       R18 R1 K19 ["Src"]
      117 GETTABLEKS                       R18 R18 K30 ["Components"]
      119 GETTABLEKS                       R18 R18 K31 ["Footer"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K8 [require]
      124 GETTABLEKS                       R19 R1 K19 ["Src"]
      126 GETTABLEKS                       R19 R19 K30 ["Components"]
      128 GETTABLEKS                       R19 R19 K32 ["TileGame"]
      130 CALL                             R18 1 1
      131 GETTABLEKS                       R19 R5 K33 ["UI"]
      133 GETTABLEKS                       R20 R19 K34 ["Button"]
      135 GETTABLEKS                       R21 R19 K35 ["LoadingIndicator"]
      137 GETTABLEKS                       R22 R19 K36 ["ScrollingFrame"]
      139 GETTABLEKS                       R23 R19 K37 ["SearchBar"]
      141 GETTABLEKS                       R24 R19 K38 ["SelectInput"]
      143 GETTABLEKS                       R25 R19 K39 ["Separator"]
      145 GETIMPORT                        R26 K8 [require]
      147 GETTABLEKS                       R27 R1 K19 ["Src"]
      149 GETTABLEKS                       R27 R27 K30 ["Components"]
      151 GETTABLEKS                       R27 R27 K40 ["EligibilityBanner"]
      153 CALL                             R26 1 1
      154 GETTABLEKS                       R27 R2 K41 ["PureComponent"]
      156 LOADK                            R29 K42 ["ScreenChooseGame"]
      157 NAMECALL                         R27 R27 K43 ["extend"]
      159 CALL                             R27 2 1
      160 NAMECALL                         R28 R4 K44 ["getUserId"]
      162 CALL                             R28 1 1
      163 GETTABLEKS                       R29 R10 K45 ["SUBJECT_TYPE"]
      165 GETTABLEKS                       R29 R29 K46 ["USER"]
      167 LOADNIL                          R30
      168 GETIMPORT                        R31 K1 [game]
      170 LOADK                            R33 K47 ["TextService"]
      171 NAMECALL                         R31 R31 K13 ["GetService"]
      173 CALL                             R31 2 1
      174 GETIMPORT                        R32 K8 [require]
      176 GETTABLEKS                       R33 R1 K19 ["Src"]
      178 GETTABLEKS                       R33 R33 K20 ["Resources"]
      180 GETTABLEKS                       R33 R33 K21 ["Constants"]
      182 CALL                             R32 1 1
      183 GETIMPORT                        R33 K8 [require]
      185 GETTABLEKS                       R34 R1 K19 ["Src"]
      187 GETTABLEKS                       R34 R34 K48 ["Flags"]
      189 GETTABLEKS                       R34 R34 K49 ["getFFlagPublishPlaceAsGameToExperience"]
      191 CALL                             R33 1 1
      192 CALL                             R33 0 1
      193 GETIMPORT                        R34 K8 [require]
      195 GETTABLEKS                       R35 R1 K19 ["Src"]
      197 GETTABLEKS                       R35 R35 K48 ["Flags"]
      199 GETTABLEKS                       R35 R35 K50 ["getFFlagPublishPlaceAsAudiencesReplacement"]
      201 CALL                             R34 1 1
      202 GETIMPORT                        R35 K8 [require]
      204 GETTABLEKS                       R36 R1 K19 ["Src"]
      206 GETTABLEKS                       R36 R36 K48 ["Flags"]
      208 GETTABLEKS                       R36 R36 K51 ["getFFlagCOLLAB6755TimingBug"]
      210 CALL                             R35 1 1
      211 NEWCLOSURE                       R36 P0
      212 CAPTURE                          REF R29
      213 CAPTURE                          REF R28
      214 CAPTURE                          REF R30
      215 SETTABLEKS                       R36 R27 K52 ["init"]
      217 NEWCLOSURE                       R36 P1
      218 CAPTURE                          VAL R32
      219 CAPTURE                          VAL R33
      220 CAPTURE                          VAL R4
      221 CAPTURE                          REF R30
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R18
      224 CAPTURE                          VAL R34
      225 CAPTURE                          VAL R35
      226 CAPTURE                          REF R29
      227 CAPTURE                          REF R28
      228 CAPTURE                          VAL R31
      229 CAPTURE                          VAL R25
      230 CAPTURE                          VAL R26
      231 CAPTURE                          VAL R23
      232 CAPTURE                          VAL R24
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R17
      239 SETTABLEKS                       R36 R27 K53 ["render"]
      241 DUPCLOSURE                       R36 K54 [PROTO_8]
      242 SETTABLEKS                       R36 R27 K55 ["willUnmount"]
      244 MOVE                             R36 R7
      245 DUPTABLE                         R37 K59 [{"Stylizer", "Localization", "API"}]
      246 GETTABLEKS                       R38 R6 K56 ["Stylizer"]
      248 SETTABLEKS                       R38 R37 K56 ["Stylizer"]
      250 GETTABLEKS                       R38 R6 K57 ["Localization"]
      252 SETTABLEKS                       R38 R37 K57 ["Localization"]
      254 GETTABLEKS                       R38 R6 K58 ["API"]
      256 SETTABLEKS                       R38 R37 K58 ["API"]
      258 CALL                             R36 1 1
      259 MOVE                             R37 R27
      260 CALL                             R36 1 1
      261 MOVE                             R27 R36
      262 DUPCLOSURE                       R36 K60 [PROTO_9]
      263 DUPCLOSURE                       R37 K61 [PROTO_14]
      264 CAPTURE                          VAL R13
      265 CAPTURE                          VAL R11
      266 CAPTURE                          VAL R12
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R32
      269 CAPTURE                          VAL R16
      270 GETTABLEKS                       R38 R3 K62 ["connect"]
      272 MOVE                             R39 R36
      273 MOVE                             R40 R37
      274 CALL                             R38 2 1
      275 MOVE                             R39 R27
      276 CALL                             R38 1 -1
      277 CLOSEUPVALS                      R28
      278 RETURN                           R38 -1
