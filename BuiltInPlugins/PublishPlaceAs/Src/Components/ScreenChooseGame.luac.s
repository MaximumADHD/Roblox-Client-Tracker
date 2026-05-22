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
      283 JUMPIFNOTLT                      R17 R18 ; [+13]
      285 JUMPIFNOT                        R6 ; [+11]
      286 GETUPVAL                         R18 7
      287 JUMPIFNOT                        R18 ; [+9]
      288 GETUPVAL                         R18 8
      289 JUMPIFNOT                        R18 ; [+7]
      290 MOVE                             R18 R9
      291 GETUPVAL                         R19 7
      292 GETUPVAL                         R20 8
      293 MOVE                             R21 R6
      294 GETTABLEKS                       R22 R1 K56 ["IsPublish"]
      296 CALL                             R18 4 0
      297 GETUPVAL                         R19 1
      298 JUMPIFNOT                        R19 ; [+6]
      299 LOADK                            R20 K82 ["ScreenHeader"]
      300 LOADK                            R21 K83 ["ChooseExperienceNew"]
      301 NAMECALL                         R18 R3 K13 ["getText"]
      303 CALL                             R18 3 1
      304 JUMP                             ; [+5]
      305 LOADK                            R20 K82 ["ScreenHeader"]
      306 LOADK                            R21 K84 ["ChooseGameNew"]
      307 NAMECALL                         R18 R3 K13 ["getText"]
      309 CALL                             R18 3 1
      310 JUMPIFNOT                        R8 ; [+8]
      311 MOVE                             R19 R18
      312 LOADK                            R20 K85 [" "]
      313 LOADK                            R23 K82 ["ScreenHeader"]
      314 LOADK                            R24 K86 ["RestrictedContentWarning"]
      315 NAMECALL                         R21 R3 K13 ["getText"]
      317 CALL                             R21 3 1
      318 CONCAT                           R18 R19 R21
      319 GETUPVAL                         R19 9
      320 MOVE                             R21 R18
      321 LOADN                            R22 18
      322 GETTABLEKS                       R23 R2 K87 ["header"]
      324 GETTABLEKS                       R23 R23 K88 ["font"]
      326 GETIMPORT                        R24 K90 [Vector2.new]
      328 LOADN                            R26 5
      329 MUL                              R25 R26 R16
      330 LOADK                            R26 K91 [∞]
      331 CALL                             R24 2 -1
      332 NAMECALL                         R19 R19 K92 ["GetTextSize"]
      334 CALL                             R19 -1 1
      335 GETTABLEKS                       R19 R19 K93 ["Y"]
      337 DIVK                             R22 R19 K94 [18]
      338 SUBK                             R21 R22 K64 [1]
      339 MULK                             R20 R21 K94 [18]
      340 JUMPIFNOT                        R15 ; [+2]
      341 LOADN                            R21 60
      342 JUMP                             ; [+1]
      343 LOADN                            R21 0
      344 GETUPVAL                         R22 4
      345 GETTABLEKS                       R22 R22 K32 ["createElement"]
      347 LOADK                            R23 K95 ["Frame"]
      348 DUPTABLE                         R24 K98 [{"Size", "BackgroundColor3"}]
      349 GETIMPORT                        R25 K36 [UDim2.new]
      351 LOADN                            R26 1
      352 LOADN                            R27 0
      353 LOADN                            R28 1
      354 LOADN                            R29 0
      355 CALL                             R25 4 1
      356 SETTABLEKS                       R25 R24 K96 ["Size"]
      358 GETTABLEKS                       R25 R2 K99 ["backgroundColor"]
      360 SETTABLEKS                       R25 R24 K97 ["BackgroundColor3"]
      362 DUPTABLE                         R25 K109 [{"ChooseGameText", "Sep1", "EligibilityBanner", "SearchBar", "GroupDropdownMenu", "MainContentsSuccess", "MainContentsQuerying", "MainContentsFailed", "Footer"}]
      363 GETUPVAL                         R26 4
      364 GETTABLEKS                       R26 R26 K32 ["createElement"]
      366 LOADK                            R27 K110 ["TextLabel"]
      367 DUPTABLE                         R28 K118 [{"Text", "Position", "Size", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font", "TextSize", "TextWrapped"}]
      368 SETTABLEKS                       R18 R28 K17 ["Text"]
      370 GETIMPORT                        R29 K36 [UDim2.new]
      372 LOADN                            R30 0
      373 LOADN                            R31 30
      374 LOADN                            R32 0
      375 LOADN                            R33 20
      376 CALL                             R29 4 1
      377 SETTABLEKS                       R29 R28 K111 ["Position"]
      379 GETIMPORT                        R29 K36 [UDim2.new]
      381 LOADK                            R30 K119 [0.95]
      382 LOADN                            R31 0
      383 LOADN                            R32 0
      384 MOVE                             R33 R19
      385 CALL                             R29 4 1
      386 SETTABLEKS                       R29 R28 K96 ["Size"]
      388 LOADN                            R29 1
      389 SETTABLEKS                       R29 R28 K112 ["BackgroundTransparency"]
      391 GETTABLEKS                       R29 R2 K87 ["header"]
      393 GETTABLEKS                       R29 R29 K120 ["text"]
      395 SETTABLEKS                       R29 R28 K113 ["TextColor3"]
      397 GETIMPORT                        R29 K122 [Enum.TextXAlignment.Left]
      399 SETTABLEKS                       R29 R28 K114 ["TextXAlignment"]
      401 GETTABLEKS                       R29 R2 K87 ["header"]
      403 GETTABLEKS                       R29 R29 K88 ["font"]
      405 SETTABLEKS                       R29 R28 K115 ["Font"]
      407 LOADN                            R29 18
      408 SETTABLEKS                       R29 R28 K116 ["TextSize"]
      410 LOADB                            R29 1
      411 SETTABLEKS                       R29 R28 K117 ["TextWrapped"]
      413 CALL                             R26 2 1
      414 SETTABLEKS                       R26 R25 K100 ["ChooseGameText"]
      416 GETUPVAL                         R26 4
      417 GETTABLEKS                       R26 R26 K32 ["createElement"]
      419 GETUPVAL                         R27 10
      420 DUPTABLE                         R28 K123 [{"Position"}]
      421 GETIMPORT                        R29 K36 [UDim2.new]
      423 LOADK                            R30 K124 [0.5]
      424 LOADN                            R31 0
      425 LOADN                            R32 0
      426 ADDK                             R33 R20 K125 [50]
      427 CALL                             R29 4 1
      428 SETTABLEKS                       R29 R28 K111 ["Position"]
      430 CALL                             R26 2 1
      431 SETTABLEKS                       R26 R25 K101 ["Sep1"]
      433 MOVE                             R26 R15
      434 JUMPIFNOT                        R26 ; [+72]
      435 GETUPVAL                         R26 4
      436 GETTABLEKS                       R26 R26 K32 ["createElement"]
      438 LOADK                            R27 K95 ["Frame"]
      439 DUPTABLE                         R28 K126 [{"Position", "Size", "BackgroundTransparency"}]
      440 GETIMPORT                        R29 K36 [UDim2.new]
      442 LOADN                            R30 0
      443 LOADN                            R31 0
      444 LOADN                            R32 0
      445 ADDK                             R33 R20 K127 [60]
      446 CALL                             R29 4 1
      447 SETTABLEKS                       R29 R28 K111 ["Position"]
      449 GETIMPORT                        R29 K36 [UDim2.new]
      451 LOADN                            R30 1
      452 LOADN                            R31 0
      453 LOADN                            R32 0
      454 LOADN                            R33 60
      455 CALL                             R29 4 1
      456 SETTABLEKS                       R29 R28 K96 ["Size"]
      458 LOADN                            R29 1
      459 SETTABLEKS                       R29 R28 K112 ["BackgroundTransparency"]
      461 NEWTABLE                         R29 1 1
      463 GETUPVAL                         R31 4
      464 GETTABLEKS                       R31 R31 K32 ["createElement"]
      466 LOADK                            R32 K128 ["UIPadding"]
      467 DUPTABLE                         R33 K133 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      468 GETIMPORT                        R34 K135 [UDim.new]
      470 LOADN                            R35 0
      471 LOADN                            R36 6
      472 CALL                             R34 2 1
      473 SETTABLEKS                       R34 R33 K129 ["PaddingTop"]
      475 GETIMPORT                        R34 K135 [UDim.new]
      477 LOADN                            R35 0
      478 LOADN                            R36 6
      479 CALL                             R34 2 1
      480 SETTABLEKS                       R34 R33 K130 ["PaddingBottom"]
      482 GETIMPORT                        R34 K135 [UDim.new]
      484 LOADN                            R35 0
      485 LOADN                            R36 30
      486 CALL                             R34 2 1
      487 SETTABLEKS                       R34 R33 K131 ["PaddingLeft"]
      489 GETIMPORT                        R34 K135 [UDim.new]
      491 LOADN                            R35 0
      492 LOADN                            R36 30
      493 CALL                             R34 2 1
      494 SETTABLEKS                       R34 R33 K132 ["PaddingRight"]
      496 CALL                             R31 2 1
      497 SETTABLEKS                       R31 R29 K128 ["UIPadding"]
      499 GETUPVAL                         R30 4
      500 GETTABLEKS                       R30 R30 K32 ["createElement"]
      502 GETUPVAL                         R31 11
      503 CALL                             R30 1 -1
      504 SETLIST                          R29 R30 -1 [1]
      506 CALL                             R26 3 1
      507 SETTABLEKS                       R26 R25 K102 ["EligibilityBanner"]
      509 GETUPVAL                         R26 4
      510 GETTABLEKS                       R26 R26 K32 ["createElement"]
      512 LOADK                            R27 K95 ["Frame"]
      513 DUPTABLE                         R28 K126 [{"Position", "Size", "BackgroundTransparency"}]
      514 GETIMPORT                        R29 K36 [UDim2.new]
      516 LOADK                            R30 K136 [0.6]
      517 LOADN                            R31 4
      518 LOADN                            R32 0
      519 ADDK                             R34 R20 K137 [70]
      520 ADD                              R33 R34 R21
      521 CALL                             R29 4 1
      522 SETTABLEKS                       R29 R28 K111 ["Position"]
      524 GETIMPORT                        R29 K36 [UDim2.new]
      526 LOADN                            R30 0
      527 GETTABLEKS                       R32 R2 K139 ["DROPDOWN_WIDTH"]
      529 SUBK                             R31 R32 K138 [10]
      530 LOADN                            R32 0
      531 GETTABLEKS                       R33 R2 K140 ["DROPDOWN_HEIGHT"]
      533 CALL                             R29 4 1
      534 SETTABLEKS                       R29 R28 K96 ["Size"]
      536 LOADN                            R29 1
      537 SETTABLEKS                       R29 R28 K112 ["BackgroundTransparency"]
      539 NEWTABLE                         R29 0 1
      541 GETUPVAL                         R30 4
      542 GETTABLEKS                       R30 R30 K32 ["createElement"]
      544 GETUPVAL                         R31 12
      545 DUPTABLE                         R32 K145 [{"Size", "ShowSearchIcon", "ShowSearchButton", "IncrementalTextSearch", "OnSearchRequested"}]
      546 GETIMPORT                        R33 K36 [UDim2.new]
      548 LOADN                            R34 1
      549 LOADN                            R35 0
      550 LOADN                            R36 1
      551 LOADN                            R37 0
      552 CALL                             R33 4 1
      553 SETTABLEKS                       R33 R32 K96 ["Size"]
      555 LOADB                            R33 1
      556 SETTABLEKS                       R33 R32 K141 ["ShowSearchIcon"]
      558 LOADB                            R33 0
      559 SETTABLEKS                       R33 R32 K142 ["ShowSearchButton"]
      561 LOADB                            R33 1
      562 SETTABLEKS                       R33 R32 K143 ["IncrementalTextSearch"]
      564 GETTABLEKS                       R33 R0 K144 ["OnSearchRequested"]
      566 SETTABLEKS                       R33 R32 K144 ["OnSearchRequested"]
      568 CALL                             R30 2 -1
      569 SETLIST                          R29 R30 -1 [1]
      571 CALL                             R26 3 1
      572 SETTABLEKS                       R26 R25 K103 ["SearchBar"]
      574 GETUPVAL                         R26 4
      575 GETTABLEKS                       R26 R26 K32 ["createElement"]
      577 GETUPVAL                         R27 13
      578 DUPTABLE                         R28 K152 [{"Items", "MenuHeight", "OnItemActivated", "PlaceholderText", "Position", "SelectedIndex", "Size", "Width"}]
      579 GETUPVAL                         R29 14
      580 MOVE                             R30 R12
      581 GETTABLEKS                       R31 R0 K153 ["createContentForSelectInput"]
      583 CALL                             R29 2 1
      584 SETTABLEKS                       R29 R28 K146 ["Items"]
      586 GETUPVAL                         R30 15
      587 JUMPIFNOT                        R30 ; [+2]
      588 LOADN                            R29 88
      589 JUMP                             ; [+1]
      590 LOADNIL                          R29
      591 SETTABLEKS                       R29 R28 K147 ["MenuHeight"]
      593 GETTABLEKS                       R29 R0 K154 ["onItemActivated"]
      595 SETTABLEKS                       R29 R28 K148 ["OnItemActivated"]
      597 SETTABLEKS                       R13 R28 K149 ["PlaceholderText"]
      599 GETIMPORT                        R29 K36 [UDim2.new]
      601 LOADN                            R30 0
      602 LOADN                            R31 30
      603 LOADN                            R32 0
      604 ADDK                             R34 R20 K137 [70]
      605 ADD                              R33 R34 R21
      606 CALL                             R29 4 1
      607 SETTABLEKS                       R29 R28 K111 ["Position"]
      609 GETUPVAL                         R29 8
      610 SETTABLEKS                       R29 R28 K150 ["SelectedIndex"]
      612 GETIMPORT                        R29 K36 [UDim2.new]
      614 LOADN                            R30 0
      615 GETTABLEKS                       R31 R2 K155 ["selectInput"]
      617 GETTABLEKS                       R31 R31 K156 ["width"]
      619 GETTABLEKS                       R31 R31 K157 ["creator"]
      621 LOADN                            R32 0
      622 GETTABLEKS                       R33 R2 K155 ["selectInput"]
      624 GETTABLEKS                       R33 R33 K158 ["button"]
      626 GETTABLEKS                       R33 R33 K159 ["height"]
      628 CALL                             R29 4 1
      629 SETTABLEKS                       R29 R28 K96 ["Size"]
      631 GETTABLEKS                       R29 R2 K155 ["selectInput"]
      633 GETTABLEKS                       R29 R29 K156 ["width"]
      635 GETTABLEKS                       R29 R29 K157 ["creator"]
      637 SETTABLEKS                       R29 R28 K151 ["Width"]
      639 CALL                             R26 2 1
      640 SETTABLEKS                       R26 R25 K104 ["GroupDropdownMenu"]
      642 LOADB                            R26 0
      643 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      645 GETUPVAL                         R28 0
      646 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      648 GETTABLEKS                       R28 R28 K52 ["QUERY_STATE_SUCCESS"]
      650 JUMPIFNOTEQ                      R27 R28 ; [+42]
      652 GETUPVAL                         R26 4
      653 GETTABLEKS                       R26 R26 K32 ["createElement"]
      655 GETUPVAL                         R27 16
      656 DUPTABLE                         R28 K163 [{"AutomaticCanvasSize", "Position", "Size", "NextPageRequestDistance", "NextPageFunc"}]
      657 GETIMPORT                        R29 K165 [Enum.AutomaticSize.Y]
      659 SETTABLEKS                       R29 R28 K160 ["AutomaticCanvasSize"]
      661 GETIMPORT                        R29 K36 [UDim2.new]
      663 LOADN                            R30 0
      664 LOADN                            R31 30
      665 LOADN                            R32 0
      666 ADDK                             R34 R20 K166 [115]
      667 ADD                              R33 R34 R21
      668 CALL                             R29 4 1
      669 SETTABLEKS                       R29 R28 K111 ["Position"]
      671 GETIMPORT                        R29 K36 [UDim2.new]
      673 LOADK                            R30 K119 [0.95]
      674 LOADN                            R31 0
      675 LOADK                            R32 K167 [0.7]
      676 LOADN                            R33 0
      677 CALL                             R29 4 1
      678 SETTABLEKS                       R29 R28 K96 ["Size"]
      680 LOADN                            R29 100
      681 SETTABLEKS                       R29 R28 K161 ["NextPageRequestDistance"]
      683 NEWCLOSURE                       R29 P1
      684 CAPTURE                          VAL R6
      685 CAPTURE                          UPVAL U7
      686 CAPTURE                          UPVAL U8
      687 CAPTURE                          VAL R9
      688 CAPTURE                          VAL R1
      689 SETTABLEKS                       R29 R28 K162 ["NextPageFunc"]
      691 MOVE                             R29 R14
      692 CALL                             R26 3 1
      693 SETTABLEKS                       R26 R25 K105 ["MainContentsSuccess"]
      695 LOADB                            R26 0
      696 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      698 GETUPVAL                         R28 0
      699 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      701 GETTABLEKS                       R28 R28 K168 ["QUERY_STATE_QUERYING"]
      703 JUMPIFNOTEQ                      R27 R28 ; [+58]
      705 GETUPVAL                         R26 4
      706 GETTABLEKS                       R26 R26 K32 ["createElement"]
      708 LOADK                            R27 K95 ["Frame"]
      709 DUPTABLE                         R28 K169 [{"Position", "Size", "BackgroundColor3"}]
      710 GETIMPORT                        R29 K36 [UDim2.new]
      712 LOADN                            R30 0
      713 LOADN                            R31 30
      714 LOADN                            R32 0
      715 ADDK                             R34 R20 K166 [115]
      716 ADD                              R33 R34 R21
      717 CALL                             R29 4 1
      718 SETTABLEKS                       R29 R28 K111 ["Position"]
      720 GETIMPORT                        R29 K36 [UDim2.new]
      722 LOADK                            R30 K119 [0.95]
      723 LOADN                            R31 0
      724 LOADK                            R32 K167 [0.7]
      725 LOADN                            R33 0
      726 CALL                             R29 4 1
      727 SETTABLEKS                       R29 R28 K96 ["Size"]
      729 GETTABLEKS                       R29 R2 K99 ["backgroundColor"]
      731 SETTABLEKS                       R29 R28 K97 ["BackgroundColor3"]
      733 NEWTABLE                         R29 0 1
      735 GETUPVAL                         R30 4
      736 GETTABLEKS                       R30 R30 K32 ["createElement"]
      738 GETUPVAL                         R31 17
      739 DUPTABLE                         R32 K170 [{"Position", "Size"}]
      740 GETIMPORT                        R33 K36 [UDim2.new]
      742 LOADK                            R34 K124 [0.5]
      743 LOADN                            R35 156
      744 LOADN                            R36 0
      745 LOADN                            R37 115
      746 CALL                             R33 4 1
      747 SETTABLEKS                       R33 R32 K111 ["Position"]
      749 GETIMPORT                        R33 K36 [UDim2.new]
      751 LOADN                            R34 0
      752 LOADN                            R35 200
      753 LOADN                            R36 0
      754 LOADN                            R37 50
      755 CALL                             R33 4 1
      756 SETTABLEKS                       R33 R32 K96 ["Size"]
      758 CALL                             R30 2 -1
      759 SETLIST                          R29 R30 -1 [1]
      761 CALL                             R26 3 1
      762 SETTABLEKS                       R26 R25 K106 ["MainContentsQuerying"]
      764 LOADB                            R26 0
      765 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      767 GETUPVAL                         R28 0
      768 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      770 GETTABLEKS                       R28 R28 K171 ["QUERY_STATE_FAILED"]
      772 JUMPIFNOTEQ                      R27 R28 ; [+126]
      774 GETUPVAL                         R26 4
      775 GETTABLEKS                       R26 R26 K32 ["createElement"]
      777 LOADK                            R27 K95 ["Frame"]
      778 DUPTABLE                         R28 K169 [{"Position", "Size", "BackgroundColor3"}]
      779 GETIMPORT                        R29 K36 [UDim2.new]
      781 LOADN                            R30 0
      782 LOADN                            R31 30
      783 LOADN                            R32 0
      784 ADDK                             R34 R20 K166 [115]
      785 ADD                              R33 R34 R21
      786 CALL                             R29 4 1
      787 SETTABLEKS                       R29 R28 K111 ["Position"]
      789 GETIMPORT                        R29 K36 [UDim2.new]
      791 LOADK                            R30 K119 [0.95]
      792 LOADN                            R31 0
      793 LOADK                            R32 K167 [0.7]
      794 LOADN                            R33 0
      795 CALL                             R29 4 1
      796 SETTABLEKS                       R29 R28 K96 ["Size"]
      798 GETTABLEKS                       R29 R2 K99 ["backgroundColor"]
      800 SETTABLEKS                       R29 R28 K97 ["BackgroundColor3"]
      802 NEWTABLE                         R29 0 2
      804 GETUPVAL                         R30 4
      805 GETTABLEKS                       R30 R30 K32 ["createElement"]
      807 LOADK                            R31 K110 ["TextLabel"]
      808 DUPTABLE                         R32 K172 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      809 LOADK                            R35 K173 ["General"]
      810 LOADK                            R36 K174 ["FetchFailed"]
      811 NAMECALL                         R33 R3 K13 ["getText"]
      813 CALL                             R33 3 1
      814 SETTABLEKS                       R33 R32 K17 ["Text"]
      816 GETIMPORT                        R33 K36 [UDim2.new]
      818 LOADK                            R34 K124 [0.5]
      819 LOADN                            R35 0
      820 LOADN                            R36 0
      821 LOADN                            R37 50
      822 CALL                             R33 4 1
      823 SETTABLEKS                       R33 R32 K111 ["Position"]
      825 LOADN                            R33 24
      826 SETTABLEKS                       R33 R32 K116 ["TextSize"]
      828 LOADN                            R33 1
      829 SETTABLEKS                       R33 R32 K112 ["BackgroundTransparency"]
      831 GETIMPORT                        R33 K176 [Enum.TextXAlignment.Center]
      833 SETTABLEKS                       R33 R32 K114 ["TextXAlignment"]
      835 GETTABLEKS                       R33 R2 K177 ["failText"]
      837 GETTABLEKS                       R33 R33 K120 ["text"]
      839 SETTABLEKS                       R33 R32 K113 ["TextColor3"]
      841 GETTABLEKS                       R33 R2 K177 ["failText"]
      843 GETTABLEKS                       R33 R33 K88 ["font"]
      845 SETTABLEKS                       R33 R32 K115 ["Font"]
      847 CALL                             R30 2 1
      848 GETUPVAL                         R31 4
      849 GETTABLEKS                       R31 R31 K32 ["createElement"]
      851 GETUPVAL                         R32 18
      852 DUPTABLE                         R33 K181 [{"AnchorPoint", "Position", "Size", "Style", "Text", "OnClick"}]
      853 GETIMPORT                        R34 K90 [Vector2.new]
      855 LOADK                            R35 K124 [0.5]
      856 LOADK                            R36 K124 [0.5]
      857 CALL                             R34 2 1
      858 SETTABLEKS                       R34 R33 K178 ["AnchorPoint"]
      860 GETIMPORT                        R34 K36 [UDim2.new]
      862 LOADK                            R35 K124 [0.5]
      863 LOADN                            R36 0
      864 LOADN                            R37 0
      865 LOADN                            R38 100
      866 CALL                             R34 4 1
      867 SETTABLEKS                       R34 R33 K111 ["Position"]
      869 GETIMPORT                        R34 K36 [UDim2.new]
      871 LOADN                            R35 0
      872 LOADN                            R36 150
      873 LOADN                            R37 0
      874 LOADN                            R38 75
      875 CALL                             R34 4 1
      876 SETTABLEKS                       R34 R33 K96 ["Size"]
      878 LOADK                            R34 K182 ["Round"]
      879 SETTABLEKS                       R34 R33 K179 ["Style"]
      881 LOADK                            R36 K183 ["Button"]
      882 LOADK                            R37 K184 ["Retry"]
      883 NAMECALL                         R34 R3 K13 ["getText"]
      885 CALL                             R34 3 1
      886 SETTABLEKS                       R34 R33 K17 ["Text"]
      888 NEWCLOSURE                       R34 P2
      889 CAPTURE                          VAL R9
      890 CAPTURE                          UPVAL U7
      891 CAPTURE                          UPVAL U8
      892 CAPTURE                          VAL R1
      893 SETTABLEKS                       R34 R33 K180 ["OnClick"]
      895 CALL                             R31 2 -1
      896 SETLIST                          R29 R30 -1 [1]
      898 CALL                             R26 3 1
      899 SETTABLEKS                       R26 R25 K107 ["MainContentsFailed"]
      901 GETUPVAL                         R26 4
      902 GETTABLEKS                       R26 R26 K32 ["createElement"]
      904 GETUPVAL                         R27 19
      905 DUPTABLE                         R28 K188 [{"MainButton", "OnClose", "NextScreen", "NextScreenText"}]
      906 DUPTABLE                         R29 K190 [{"Name", "Active"}]
      907 LOADK                            R30 K191 ["Create"]
      908 SETTABLEKS                       R30 R29 K65 ["Name"]
      910 LOADB                            R30 0
      911 SETTABLEKS                       R30 R29 K189 ["Active"]
      913 SETTABLEKS                       R29 R28 K185 ["MainButton"]
      915 SETTABLEKS                       R4 R28 K3 ["OnClose"]
      917 GETUPVAL                         R29 0
      918 GETTABLEKS                       R29 R29 K192 ["SCREENS"]
      920 GETTABLEKS                       R29 R29 K193 ["CREATE_NEW_GAME"]
      922 SETTABLEKS                       R29 R28 K186 ["NextScreen"]
      924 GETUPVAL                         R30 1
      925 JUMPIFNOT                        R30 ; [+2]
      926 LOADK                            R29 K194 ["CreateNewExperience"]
      927 JUMP                             ; [+1]
      928 LOADK                            R29 K195 ["CreateNewGame"]
      929 SETTABLEKS                       R29 R28 K187 ["NextScreenText"]
      931 CALL                             R26 2 1
      932 SETTABLEKS                       R26 R25 K108 ["Footer"]
      934 CALL                             R22 3 -1
      935 RETURN                           R22 -1

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
      202 NEWCLOSURE                       R35 P0
      203 CAPTURE                          REF R29
      204 CAPTURE                          REF R28
      205 CAPTURE                          REF R30
      206 SETTABLEKS                       R35 R27 K51 ["init"]
      208 NEWCLOSURE                       R35 P1
      209 CAPTURE                          VAL R32
      210 CAPTURE                          VAL R33
      211 CAPTURE                          VAL R4
      212 CAPTURE                          REF R30
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R34
      216 CAPTURE                          REF R29
      217 CAPTURE                          REF R28
      218 CAPTURE                          VAL R31
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R26
      221 CAPTURE                          VAL R23
      222 CAPTURE                          VAL R24
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R0
      225 CAPTURE                          VAL R22
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R17
      229 SETTABLEKS                       R35 R27 K52 ["render"]
      231 DUPCLOSURE                       R35 K53 [PROTO_8]
      232 SETTABLEKS                       R35 R27 K54 ["willUnmount"]
      234 MOVE                             R35 R7
      235 DUPTABLE                         R36 K58 [{"Stylizer", "Localization", "API"}]
      236 GETTABLEKS                       R37 R6 K55 ["Stylizer"]
      238 SETTABLEKS                       R37 R36 K55 ["Stylizer"]
      240 GETTABLEKS                       R37 R6 K56 ["Localization"]
      242 SETTABLEKS                       R37 R36 K56 ["Localization"]
      244 GETTABLEKS                       R37 R6 K57 ["API"]
      246 SETTABLEKS                       R37 R36 K57 ["API"]
      248 CALL                             R35 1 1
      249 MOVE                             R36 R27
      250 CALL                             R35 1 1
      251 MOVE                             R27 R35
      252 DUPCLOSURE                       R35 K59 [PROTO_9]
      253 DUPCLOSURE                       R36 K60 [PROTO_14]
      254 CAPTURE                          VAL R13
      255 CAPTURE                          VAL R11
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R15
      258 CAPTURE                          VAL R32
      259 CAPTURE                          VAL R16
      260 GETTABLEKS                       R37 R3 K61 ["connect"]
      262 MOVE                             R38 R35
      263 MOVE                             R39 R36
      264 CALL                             R37 2 1
      265 MOVE                             R38 R27
      266 CALL                             R37 1 -1
      267 CLOSEUPVALS                      R28
      268 RETURN                           R37 -1
