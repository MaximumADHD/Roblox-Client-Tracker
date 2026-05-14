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
      163 JUMPIFNOTEQ                      R16 R17 ; [+81]
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
      203 JUMPIFNOT                        R22 ; [+39]
      204 GETTABLEKS                       R22 R20 K53 ["isUserEligible"]
      206 JUMPIFNOT                        R22 ; [+36]
      207 LENGTH                           R23 R14
      208 ADDK                             R22 R23 K64 [1]
      209 GETUPVAL                         R23 4
      210 GETTABLEKS                       R23 R23 K32 ["createElement"]
      212 GETUPVAL                         R24 5
      213 DUPTABLE                         R25 K71 [{"Name", "Id", "PrivacyType", "MinimumAge", "Disabled", "LayoutOrder", "OnActivated"}]
      214 GETTABLEKS                       R26 R20 K28 ["name"]
      216 SETTABLEKS                       R26 R25 K65 ["Name"]
      218 GETTABLEKS                       R26 R20 K72 ["rootPlaceId"]
      220 SETTABLEKS                       R26 R25 K66 ["Id"]
      222 GETTABLEKS                       R26 R20 K73 ["privacyType"]
      224 SETTABLEKS                       R26 R25 K67 ["PrivacyType"]
      226 GETTABLEKS                       R26 R20 K74 ["minimumAge"]
      228 SETTABLEKS                       R26 R25 K68 ["MinimumAge"]
      230 SETTABLEKS                       R21 R25 K69 ["Disabled"]
      232 LENGTH                           R27 R14
      233 ADDK                             R26 R27 K64 [1]
      234 SETTABLEKS                       R26 R25 K46 ["LayoutOrder"]
      236 NEWCLOSURE                       R26 P0
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R20
      239 SETTABLEKS                       R26 R25 K70 ["OnActivated"]
      241 CALL                             R23 2 1
      242 SETTABLE                         R23 R14 R22
      243 FORGLOOP                         R16 2 ; [-74]
      245 GETTABLEKS                       R18 R2 K37 ["SCREEN_CHOOSE_GAME"]
      247 GETTABLEKS                       R18 R18 K38 ["ICON_SIZE"]
      249 GETTABLEKS                       R19 R2 K37 ["SCREEN_CHOOSE_GAME"]
      251 GETTABLEKS                       R19 R19 K75 ["TILE_FOOTER_SIZE"]
      253 ADD                              R17 R18 R19
      254 GETTABLEKS                       R18 R2 K37 ["SCREEN_CHOOSE_GAME"]
      256 GETTABLEKS                       R18 R18 K42 ["CELL_PADDING_Y"]
      258 ADD                              R16 R17 R18
      259 LENGTH                           R21 R14
      260 SUBK                             R20 R21 K64 [1]
      261 DIVK                             R19 R20 K76 [5]
      262 FASTCALL1                        MATH_CEIL R19 ; [+2]
      263 GETIMPORT                        R18 K79 [math.ceil]
      265 CALL                             R18 1 1
      266 MUL                              R17 R18 R16
      267 LOADN                            R19 3
      268 MUL                              R18 R19 R16
      269 JUMPIFNOTLT                      R17 R18 ; [+13]
      271 JUMPIFNOT                        R6 ; [+11]
      272 GETUPVAL                         R18 6
      273 JUMPIFNOT                        R18 ; [+9]
      274 GETUPVAL                         R18 7
      275 JUMPIFNOT                        R18 ; [+7]
      276 MOVE                             R18 R9
      277 GETUPVAL                         R19 6
      278 GETUPVAL                         R20 7
      279 MOVE                             R21 R6
      280 GETTABLEKS                       R22 R1 K56 ["IsPublish"]
      282 CALL                             R18 4 0
      283 GETUPVAL                         R19 1
      284 JUMPIFNOT                        R19 ; [+6]
      285 LOADK                            R20 K80 ["ScreenHeader"]
      286 LOADK                            R21 K81 ["ChooseExperienceNew"]
      287 NAMECALL                         R18 R3 K13 ["getText"]
      289 CALL                             R18 3 1
      290 JUMP                             ; [+5]
      291 LOADK                            R20 K80 ["ScreenHeader"]
      292 LOADK                            R21 K82 ["ChooseGameNew"]
      293 NAMECALL                         R18 R3 K13 ["getText"]
      295 CALL                             R18 3 1
      296 JUMPIFNOT                        R8 ; [+8]
      297 MOVE                             R19 R18
      298 LOADK                            R20 K83 [" "]
      299 LOADK                            R23 K80 ["ScreenHeader"]
      300 LOADK                            R24 K84 ["RestrictedContentWarning"]
      301 NAMECALL                         R21 R3 K13 ["getText"]
      303 CALL                             R21 3 1
      304 CONCAT                           R18 R19 R21
      305 GETUPVAL                         R19 8
      306 MOVE                             R21 R18
      307 LOADN                            R22 18
      308 GETTABLEKS                       R23 R2 K85 ["header"]
      310 GETTABLEKS                       R23 R23 K86 ["font"]
      312 GETIMPORT                        R24 K88 [Vector2.new]
      314 LOADN                            R26 5
      315 MUL                              R25 R26 R16
      316 LOADK                            R26 K89 [∞]
      317 CALL                             R24 2 -1
      318 NAMECALL                         R19 R19 K90 ["GetTextSize"]
      320 CALL                             R19 -1 1
      321 GETTABLEKS                       R19 R19 K91 ["Y"]
      323 DIVK                             R22 R19 K92 [18]
      324 SUBK                             R21 R22 K64 [1]
      325 MULK                             R20 R21 K92 [18]
      326 JUMPIFNOT                        R15 ; [+2]
      327 LOADN                            R21 60
      328 JUMP                             ; [+1]
      329 LOADN                            R21 0
      330 GETUPVAL                         R22 4
      331 GETTABLEKS                       R22 R22 K32 ["createElement"]
      333 LOADK                            R23 K93 ["Frame"]
      334 DUPTABLE                         R24 K96 [{"Size", "BackgroundColor3"}]
      335 GETIMPORT                        R25 K36 [UDim2.new]
      337 LOADN                            R26 1
      338 LOADN                            R27 0
      339 LOADN                            R28 1
      340 LOADN                            R29 0
      341 CALL                             R25 4 1
      342 SETTABLEKS                       R25 R24 K94 ["Size"]
      344 GETTABLEKS                       R25 R2 K97 ["backgroundColor"]
      346 SETTABLEKS                       R25 R24 K95 ["BackgroundColor3"]
      348 DUPTABLE                         R25 K107 [{"ChooseGameText", "Sep1", "EligibilityBanner", "SearchBar", "GroupDropdownMenu", "MainContentsSuccess", "MainContentsQuerying", "MainContentsFailed", "Footer"}]
      349 GETUPVAL                         R26 4
      350 GETTABLEKS                       R26 R26 K32 ["createElement"]
      352 LOADK                            R27 K108 ["TextLabel"]
      353 DUPTABLE                         R28 K116 [{"Text", "Position", "Size", "BackgroundTransparency", "TextColor3", "TextXAlignment", "Font", "TextSize", "TextWrapped"}]
      354 SETTABLEKS                       R18 R28 K17 ["Text"]
      356 GETIMPORT                        R29 K36 [UDim2.new]
      358 LOADN                            R30 0
      359 LOADN                            R31 30
      360 LOADN                            R32 0
      361 LOADN                            R33 20
      362 CALL                             R29 4 1
      363 SETTABLEKS                       R29 R28 K109 ["Position"]
      365 GETIMPORT                        R29 K36 [UDim2.new]
      367 LOADK                            R30 K117 [0.95]
      368 LOADN                            R31 0
      369 LOADN                            R32 0
      370 MOVE                             R33 R19
      371 CALL                             R29 4 1
      372 SETTABLEKS                       R29 R28 K94 ["Size"]
      374 LOADN                            R29 1
      375 SETTABLEKS                       R29 R28 K110 ["BackgroundTransparency"]
      377 GETTABLEKS                       R29 R2 K85 ["header"]
      379 GETTABLEKS                       R29 R29 K118 ["text"]
      381 SETTABLEKS                       R29 R28 K111 ["TextColor3"]
      383 GETIMPORT                        R29 K120 [Enum.TextXAlignment.Left]
      385 SETTABLEKS                       R29 R28 K112 ["TextXAlignment"]
      387 GETTABLEKS                       R29 R2 K85 ["header"]
      389 GETTABLEKS                       R29 R29 K86 ["font"]
      391 SETTABLEKS                       R29 R28 K113 ["Font"]
      393 LOADN                            R29 18
      394 SETTABLEKS                       R29 R28 K114 ["TextSize"]
      396 LOADB                            R29 1
      397 SETTABLEKS                       R29 R28 K115 ["TextWrapped"]
      399 CALL                             R26 2 1
      400 SETTABLEKS                       R26 R25 K98 ["ChooseGameText"]
      402 GETUPVAL                         R26 4
      403 GETTABLEKS                       R26 R26 K32 ["createElement"]
      405 GETUPVAL                         R27 9
      406 DUPTABLE                         R28 K121 [{"Position"}]
      407 GETIMPORT                        R29 K36 [UDim2.new]
      409 LOADK                            R30 K122 [0.5]
      410 LOADN                            R31 0
      411 LOADN                            R32 0
      412 ADDK                             R33 R20 K123 [50]
      413 CALL                             R29 4 1
      414 SETTABLEKS                       R29 R28 K109 ["Position"]
      416 CALL                             R26 2 1
      417 SETTABLEKS                       R26 R25 K99 ["Sep1"]
      419 MOVE                             R26 R15
      420 JUMPIFNOT                        R26 ; [+72]
      421 GETUPVAL                         R26 4
      422 GETTABLEKS                       R26 R26 K32 ["createElement"]
      424 LOADK                            R27 K93 ["Frame"]
      425 DUPTABLE                         R28 K124 [{"Position", "Size", "BackgroundTransparency"}]
      426 GETIMPORT                        R29 K36 [UDim2.new]
      428 LOADN                            R30 0
      429 LOADN                            R31 0
      430 LOADN                            R32 0
      431 ADDK                             R33 R20 K125 [60]
      432 CALL                             R29 4 1
      433 SETTABLEKS                       R29 R28 K109 ["Position"]
      435 GETIMPORT                        R29 K36 [UDim2.new]
      437 LOADN                            R30 1
      438 LOADN                            R31 0
      439 LOADN                            R32 0
      440 LOADN                            R33 60
      441 CALL                             R29 4 1
      442 SETTABLEKS                       R29 R28 K94 ["Size"]
      444 LOADN                            R29 1
      445 SETTABLEKS                       R29 R28 K110 ["BackgroundTransparency"]
      447 NEWTABLE                         R29 1 1
      449 GETUPVAL                         R31 4
      450 GETTABLEKS                       R31 R31 K32 ["createElement"]
      452 LOADK                            R32 K126 ["UIPadding"]
      453 DUPTABLE                         R33 K131 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      454 GETIMPORT                        R34 K133 [UDim.new]
      456 LOADN                            R35 0
      457 LOADN                            R36 6
      458 CALL                             R34 2 1
      459 SETTABLEKS                       R34 R33 K127 ["PaddingTop"]
      461 GETIMPORT                        R34 K133 [UDim.new]
      463 LOADN                            R35 0
      464 LOADN                            R36 6
      465 CALL                             R34 2 1
      466 SETTABLEKS                       R34 R33 K128 ["PaddingBottom"]
      468 GETIMPORT                        R34 K133 [UDim.new]
      470 LOADN                            R35 0
      471 LOADN                            R36 30
      472 CALL                             R34 2 1
      473 SETTABLEKS                       R34 R33 K129 ["PaddingLeft"]
      475 GETIMPORT                        R34 K133 [UDim.new]
      477 LOADN                            R35 0
      478 LOADN                            R36 30
      479 CALL                             R34 2 1
      480 SETTABLEKS                       R34 R33 K130 ["PaddingRight"]
      482 CALL                             R31 2 1
      483 SETTABLEKS                       R31 R29 K126 ["UIPadding"]
      485 GETUPVAL                         R30 4
      486 GETTABLEKS                       R30 R30 K32 ["createElement"]
      488 GETUPVAL                         R31 10
      489 CALL                             R30 1 -1
      490 SETLIST                          R29 R30 -1 [1]
      492 CALL                             R26 3 1
      493 SETTABLEKS                       R26 R25 K100 ["EligibilityBanner"]
      495 GETUPVAL                         R26 4
      496 GETTABLEKS                       R26 R26 K32 ["createElement"]
      498 LOADK                            R27 K93 ["Frame"]
      499 DUPTABLE                         R28 K124 [{"Position", "Size", "BackgroundTransparency"}]
      500 GETIMPORT                        R29 K36 [UDim2.new]
      502 LOADK                            R30 K134 [0.6]
      503 LOADN                            R31 4
      504 LOADN                            R32 0
      505 ADDK                             R34 R20 K135 [70]
      506 ADD                              R33 R34 R21
      507 CALL                             R29 4 1
      508 SETTABLEKS                       R29 R28 K109 ["Position"]
      510 GETIMPORT                        R29 K36 [UDim2.new]
      512 LOADN                            R30 0
      513 GETTABLEKS                       R32 R2 K137 ["DROPDOWN_WIDTH"]
      515 SUBK                             R31 R32 K136 [10]
      516 LOADN                            R32 0
      517 GETTABLEKS                       R33 R2 K138 ["DROPDOWN_HEIGHT"]
      519 CALL                             R29 4 1
      520 SETTABLEKS                       R29 R28 K94 ["Size"]
      522 LOADN                            R29 1
      523 SETTABLEKS                       R29 R28 K110 ["BackgroundTransparency"]
      525 NEWTABLE                         R29 0 1
      527 GETUPVAL                         R30 4
      528 GETTABLEKS                       R30 R30 K32 ["createElement"]
      530 GETUPVAL                         R31 11
      531 DUPTABLE                         R32 K143 [{"Size", "ShowSearchIcon", "ShowSearchButton", "IncrementalTextSearch", "OnSearchRequested"}]
      532 GETIMPORT                        R33 K36 [UDim2.new]
      534 LOADN                            R34 1
      535 LOADN                            R35 0
      536 LOADN                            R36 1
      537 LOADN                            R37 0
      538 CALL                             R33 4 1
      539 SETTABLEKS                       R33 R32 K94 ["Size"]
      541 LOADB                            R33 1
      542 SETTABLEKS                       R33 R32 K139 ["ShowSearchIcon"]
      544 LOADB                            R33 0
      545 SETTABLEKS                       R33 R32 K140 ["ShowSearchButton"]
      547 LOADB                            R33 1
      548 SETTABLEKS                       R33 R32 K141 ["IncrementalTextSearch"]
      550 GETTABLEKS                       R33 R0 K142 ["OnSearchRequested"]
      552 SETTABLEKS                       R33 R32 K142 ["OnSearchRequested"]
      554 CALL                             R30 2 -1
      555 SETLIST                          R29 R30 -1 [1]
      557 CALL                             R26 3 1
      558 SETTABLEKS                       R26 R25 K101 ["SearchBar"]
      560 GETUPVAL                         R26 4
      561 GETTABLEKS                       R26 R26 K32 ["createElement"]
      563 GETUPVAL                         R27 12
      564 DUPTABLE                         R28 K150 [{"Items", "MenuHeight", "OnItemActivated", "PlaceholderText", "Position", "SelectedIndex", "Size", "Width"}]
      565 GETUPVAL                         R29 13
      566 MOVE                             R30 R12
      567 GETTABLEKS                       R31 R0 K151 ["createContentForSelectInput"]
      569 CALL                             R29 2 1
      570 SETTABLEKS                       R29 R28 K144 ["Items"]
      572 GETUPVAL                         R30 14
      573 JUMPIFNOT                        R30 ; [+2]
      574 LOADN                            R29 88
      575 JUMP                             ; [+1]
      576 LOADNIL                          R29
      577 SETTABLEKS                       R29 R28 K145 ["MenuHeight"]
      579 GETTABLEKS                       R29 R0 K152 ["onItemActivated"]
      581 SETTABLEKS                       R29 R28 K146 ["OnItemActivated"]
      583 SETTABLEKS                       R13 R28 K147 ["PlaceholderText"]
      585 GETIMPORT                        R29 K36 [UDim2.new]
      587 LOADN                            R30 0
      588 LOADN                            R31 30
      589 LOADN                            R32 0
      590 ADDK                             R34 R20 K135 [70]
      591 ADD                              R33 R34 R21
      592 CALL                             R29 4 1
      593 SETTABLEKS                       R29 R28 K109 ["Position"]
      595 GETUPVAL                         R29 7
      596 SETTABLEKS                       R29 R28 K148 ["SelectedIndex"]
      598 GETIMPORT                        R29 K36 [UDim2.new]
      600 LOADN                            R30 0
      601 GETTABLEKS                       R31 R2 K153 ["selectInput"]
      603 GETTABLEKS                       R31 R31 K154 ["width"]
      605 GETTABLEKS                       R31 R31 K155 ["creator"]
      607 LOADN                            R32 0
      608 GETTABLEKS                       R33 R2 K153 ["selectInput"]
      610 GETTABLEKS                       R33 R33 K156 ["button"]
      612 GETTABLEKS                       R33 R33 K157 ["height"]
      614 CALL                             R29 4 1
      615 SETTABLEKS                       R29 R28 K94 ["Size"]
      617 GETTABLEKS                       R29 R2 K153 ["selectInput"]
      619 GETTABLEKS                       R29 R29 K154 ["width"]
      621 GETTABLEKS                       R29 R29 K155 ["creator"]
      623 SETTABLEKS                       R29 R28 K149 ["Width"]
      625 CALL                             R26 2 1
      626 SETTABLEKS                       R26 R25 K102 ["GroupDropdownMenu"]
      628 LOADB                            R26 0
      629 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      631 GETUPVAL                         R28 0
      632 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      634 GETTABLEKS                       R28 R28 K52 ["QUERY_STATE_SUCCESS"]
      636 JUMPIFNOTEQ                      R27 R28 ; [+42]
      638 GETUPVAL                         R26 4
      639 GETTABLEKS                       R26 R26 K32 ["createElement"]
      641 GETUPVAL                         R27 15
      642 DUPTABLE                         R28 K161 [{"AutomaticCanvasSize", "Position", "Size", "NextPageRequestDistance", "NextPageFunc"}]
      643 GETIMPORT                        R29 K163 [Enum.AutomaticSize.Y]
      645 SETTABLEKS                       R29 R28 K158 ["AutomaticCanvasSize"]
      647 GETIMPORT                        R29 K36 [UDim2.new]
      649 LOADN                            R30 0
      650 LOADN                            R31 30
      651 LOADN                            R32 0
      652 ADDK                             R34 R20 K164 [115]
      653 ADD                              R33 R34 R21
      654 CALL                             R29 4 1
      655 SETTABLEKS                       R29 R28 K109 ["Position"]
      657 GETIMPORT                        R29 K36 [UDim2.new]
      659 LOADK                            R30 K117 [0.95]
      660 LOADN                            R31 0
      661 LOADK                            R32 K165 [0.7]
      662 LOADN                            R33 0
      663 CALL                             R29 4 1
      664 SETTABLEKS                       R29 R28 K94 ["Size"]
      666 LOADN                            R29 100
      667 SETTABLEKS                       R29 R28 K159 ["NextPageRequestDistance"]
      669 NEWCLOSURE                       R29 P1
      670 CAPTURE                          VAL R6
      671 CAPTURE                          UPVAL U6
      672 CAPTURE                          UPVAL U7
      673 CAPTURE                          VAL R9
      674 CAPTURE                          VAL R1
      675 SETTABLEKS                       R29 R28 K160 ["NextPageFunc"]
      677 MOVE                             R29 R14
      678 CALL                             R26 3 1
      679 SETTABLEKS                       R26 R25 K103 ["MainContentsSuccess"]
      681 LOADB                            R26 0
      682 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      684 GETUPVAL                         R28 0
      685 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      687 GETTABLEKS                       R28 R28 K166 ["QUERY_STATE_QUERYING"]
      689 JUMPIFNOTEQ                      R27 R28 ; [+58]
      691 GETUPVAL                         R26 4
      692 GETTABLEKS                       R26 R26 K32 ["createElement"]
      694 LOADK                            R27 K93 ["Frame"]
      695 DUPTABLE                         R28 K167 [{"Position", "Size", "BackgroundColor3"}]
      696 GETIMPORT                        R29 K36 [UDim2.new]
      698 LOADN                            R30 0
      699 LOADN                            R31 30
      700 LOADN                            R32 0
      701 ADDK                             R34 R20 K164 [115]
      702 ADD                              R33 R34 R21
      703 CALL                             R29 4 1
      704 SETTABLEKS                       R29 R28 K109 ["Position"]
      706 GETIMPORT                        R29 K36 [UDim2.new]
      708 LOADK                            R30 K117 [0.95]
      709 LOADN                            R31 0
      710 LOADK                            R32 K165 [0.7]
      711 LOADN                            R33 0
      712 CALL                             R29 4 1
      713 SETTABLEKS                       R29 R28 K94 ["Size"]
      715 GETTABLEKS                       R29 R2 K97 ["backgroundColor"]
      717 SETTABLEKS                       R29 R28 K95 ["BackgroundColor3"]
      719 NEWTABLE                         R29 0 1
      721 GETUPVAL                         R30 4
      722 GETTABLEKS                       R30 R30 K32 ["createElement"]
      724 GETUPVAL                         R31 16
      725 DUPTABLE                         R32 K168 [{"Position", "Size"}]
      726 GETIMPORT                        R33 K36 [UDim2.new]
      728 LOADK                            R34 K122 [0.5]
      729 LOADN                            R35 156
      730 LOADN                            R36 0
      731 LOADN                            R37 115
      732 CALL                             R33 4 1
      733 SETTABLEKS                       R33 R32 K109 ["Position"]
      735 GETIMPORT                        R33 K36 [UDim2.new]
      737 LOADN                            R34 0
      738 LOADN                            R35 200
      739 LOADN                            R36 0
      740 LOADN                            R37 50
      741 CALL                             R33 4 1
      742 SETTABLEKS                       R33 R32 K94 ["Size"]
      744 CALL                             R30 2 -1
      745 SETLIST                          R29 R30 -1 [1]
      747 CALL                             R26 3 1
      748 SETTABLEKS                       R26 R25 K104 ["MainContentsQuerying"]
      750 LOADB                            R26 0
      751 GETTABLEKS                       R27 R1 K50 ["GamesQueryState"]
      753 GETUPVAL                         R28 0
      754 GETTABLEKS                       R28 R28 K51 ["QUERY_STATE"]
      756 GETTABLEKS                       R28 R28 K169 ["QUERY_STATE_FAILED"]
      758 JUMPIFNOTEQ                      R27 R28 ; [+126]
      760 GETUPVAL                         R26 4
      761 GETTABLEKS                       R26 R26 K32 ["createElement"]
      763 LOADK                            R27 K93 ["Frame"]
      764 DUPTABLE                         R28 K167 [{"Position", "Size", "BackgroundColor3"}]
      765 GETIMPORT                        R29 K36 [UDim2.new]
      767 LOADN                            R30 0
      768 LOADN                            R31 30
      769 LOADN                            R32 0
      770 ADDK                             R34 R20 K164 [115]
      771 ADD                              R33 R34 R21
      772 CALL                             R29 4 1
      773 SETTABLEKS                       R29 R28 K109 ["Position"]
      775 GETIMPORT                        R29 K36 [UDim2.new]
      777 LOADK                            R30 K117 [0.95]
      778 LOADN                            R31 0
      779 LOADK                            R32 K165 [0.7]
      780 LOADN                            R33 0
      781 CALL                             R29 4 1
      782 SETTABLEKS                       R29 R28 K94 ["Size"]
      784 GETTABLEKS                       R29 R2 K97 ["backgroundColor"]
      786 SETTABLEKS                       R29 R28 K95 ["BackgroundColor3"]
      788 NEWTABLE                         R29 0 2
      790 GETUPVAL                         R30 4
      791 GETTABLEKS                       R30 R30 K32 ["createElement"]
      793 LOADK                            R31 K108 ["TextLabel"]
      794 DUPTABLE                         R32 K170 [{"Text", "Position", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Font"}]
      795 LOADK                            R35 K171 ["General"]
      796 LOADK                            R36 K172 ["FetchFailed"]
      797 NAMECALL                         R33 R3 K13 ["getText"]
      799 CALL                             R33 3 1
      800 SETTABLEKS                       R33 R32 K17 ["Text"]
      802 GETIMPORT                        R33 K36 [UDim2.new]
      804 LOADK                            R34 K122 [0.5]
      805 LOADN                            R35 0
      806 LOADN                            R36 0
      807 LOADN                            R37 50
      808 CALL                             R33 4 1
      809 SETTABLEKS                       R33 R32 K109 ["Position"]
      811 LOADN                            R33 24
      812 SETTABLEKS                       R33 R32 K114 ["TextSize"]
      814 LOADN                            R33 1
      815 SETTABLEKS                       R33 R32 K110 ["BackgroundTransparency"]
      817 GETIMPORT                        R33 K174 [Enum.TextXAlignment.Center]
      819 SETTABLEKS                       R33 R32 K112 ["TextXAlignment"]
      821 GETTABLEKS                       R33 R2 K175 ["failText"]
      823 GETTABLEKS                       R33 R33 K118 ["text"]
      825 SETTABLEKS                       R33 R32 K111 ["TextColor3"]
      827 GETTABLEKS                       R33 R2 K175 ["failText"]
      829 GETTABLEKS                       R33 R33 K86 ["font"]
      831 SETTABLEKS                       R33 R32 K113 ["Font"]
      833 CALL                             R30 2 1
      834 GETUPVAL                         R31 4
      835 GETTABLEKS                       R31 R31 K32 ["createElement"]
      837 GETUPVAL                         R32 17
      838 DUPTABLE                         R33 K179 [{"AnchorPoint", "Position", "Size", "Style", "Text", "OnClick"}]
      839 GETIMPORT                        R34 K88 [Vector2.new]
      841 LOADK                            R35 K122 [0.5]
      842 LOADK                            R36 K122 [0.5]
      843 CALL                             R34 2 1
      844 SETTABLEKS                       R34 R33 K176 ["AnchorPoint"]
      846 GETIMPORT                        R34 K36 [UDim2.new]
      848 LOADK                            R35 K122 [0.5]
      849 LOADN                            R36 0
      850 LOADN                            R37 0
      851 LOADN                            R38 100
      852 CALL                             R34 4 1
      853 SETTABLEKS                       R34 R33 K109 ["Position"]
      855 GETIMPORT                        R34 K36 [UDim2.new]
      857 LOADN                            R35 0
      858 LOADN                            R36 150
      859 LOADN                            R37 0
      860 LOADN                            R38 75
      861 CALL                             R34 4 1
      862 SETTABLEKS                       R34 R33 K94 ["Size"]
      864 LOADK                            R34 K180 ["Round"]
      865 SETTABLEKS                       R34 R33 K177 ["Style"]
      867 LOADK                            R36 K181 ["Button"]
      868 LOADK                            R37 K182 ["Retry"]
      869 NAMECALL                         R34 R3 K13 ["getText"]
      871 CALL                             R34 3 1
      872 SETTABLEKS                       R34 R33 K17 ["Text"]
      874 NEWCLOSURE                       R34 P2
      875 CAPTURE                          VAL R9
      876 CAPTURE                          UPVAL U6
      877 CAPTURE                          UPVAL U7
      878 CAPTURE                          VAL R1
      879 SETTABLEKS                       R34 R33 K178 ["OnClick"]
      881 CALL                             R31 2 -1
      882 SETLIST                          R29 R30 -1 [1]
      884 CALL                             R26 3 1
      885 SETTABLEKS                       R26 R25 K105 ["MainContentsFailed"]
      887 GETUPVAL                         R26 4
      888 GETTABLEKS                       R26 R26 K32 ["createElement"]
      890 GETUPVAL                         R27 18
      891 DUPTABLE                         R28 K186 [{"MainButton", "OnClose", "NextScreen", "NextScreenText"}]
      892 DUPTABLE                         R29 K188 [{"Name", "Active"}]
      893 LOADK                            R30 K189 ["Create"]
      894 SETTABLEKS                       R30 R29 K65 ["Name"]
      896 LOADB                            R30 0
      897 SETTABLEKS                       R30 R29 K187 ["Active"]
      899 SETTABLEKS                       R29 R28 K183 ["MainButton"]
      901 SETTABLEKS                       R4 R28 K3 ["OnClose"]
      903 GETUPVAL                         R29 0
      904 GETTABLEKS                       R29 R29 K190 ["SCREENS"]
      906 GETTABLEKS                       R29 R29 K191 ["CREATE_NEW_GAME"]
      908 SETTABLEKS                       R29 R28 K184 ["NextScreen"]
      910 GETUPVAL                         R30 1
      911 JUMPIFNOT                        R30 ; [+2]
      912 LOADK                            R29 K192 ["CreateNewExperience"]
      913 JUMP                             ; [+1]
      914 LOADK                            R29 K193 ["CreateNewGame"]
      915 SETTABLEKS                       R29 R28 K185 ["NextScreenText"]
      917 CALL                             R26 2 1
      918 SETTABLEKS                       R26 R25 K106 ["Footer"]
      920 CALL                             R22 3 -1
      921 RETURN                           R22 -1

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
      193 NEWCLOSURE                       R34 P0
      194 CAPTURE                          REF R29
      195 CAPTURE                          REF R28
      196 CAPTURE                          REF R30
      197 SETTABLEKS                       R34 R27 K50 ["init"]
      199 NEWCLOSURE                       R34 P1
      200 CAPTURE                          VAL R32
      201 CAPTURE                          VAL R33
      202 CAPTURE                          VAL R4
      203 CAPTURE                          REF R30
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R18
      206 CAPTURE                          REF R29
      207 CAPTURE                          REF R28
      208 CAPTURE                          VAL R31
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R21
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R17
      219 SETTABLEKS                       R34 R27 K51 ["render"]
      221 DUPCLOSURE                       R34 K52 [PROTO_8]
      222 SETTABLEKS                       R34 R27 K53 ["willUnmount"]
      224 MOVE                             R34 R7
      225 DUPTABLE                         R35 K57 [{"Stylizer", "Localization", "API"}]
      226 GETTABLEKS                       R36 R6 K54 ["Stylizer"]
      228 SETTABLEKS                       R36 R35 K54 ["Stylizer"]
      230 GETTABLEKS                       R36 R6 K55 ["Localization"]
      232 SETTABLEKS                       R36 R35 K55 ["Localization"]
      234 GETTABLEKS                       R36 R6 K56 ["API"]
      236 SETTABLEKS                       R36 R35 K56 ["API"]
      238 CALL                             R34 1 1
      239 MOVE                             R35 R27
      240 CALL                             R34 1 1
      241 MOVE                             R27 R34
      242 DUPCLOSURE                       R34 K58 [PROTO_9]
      243 DUPCLOSURE                       R35 K59 [PROTO_14]
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R11
      246 CAPTURE                          VAL R12
      247 CAPTURE                          VAL R15
      248 CAPTURE                          VAL R32
      249 CAPTURE                          VAL R16
      250 GETTABLEKS                       R36 R3 K60 ["connect"]
      252 MOVE                             R37 R34
      253 MOVE                             R38 R35
      254 CALL                             R36 2 1
      255 MOVE                             R37 R27
      256 CALL                             R36 1 -1
      257 CLOSEUPVALS                      R28
      258 RETURN                           R36 -1
