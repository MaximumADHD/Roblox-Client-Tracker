PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 GETTABLEKS                       R3 R1 K3 ["Settings"]
        9 LOADK                            R5 K4 ["Plugin"]
       10 NAMECALL                         R3 R3 K5 ["get"]
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R1 K6 ["audioSearchInfo"]
       15 GETTABLEKS                       R5 R1 K7 ["creator"]
       17 GETTABLEKS                       R6 R1 K8 ["additionalAudioSearchInfo"]
       19 DUPTABLE                         R7 K12 [{"Creator", "AudioSearch", "AdditionalAudioSearch"}]
       20 SETTABLEKS                       R5 R7 K9 ["Creator"]
       22 SETTABLEKS                       R4 R7 K10 ["AudioSearch"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K13 ["join"]
       27 MOVE                             R9 R6
       28 MOVE                             R10 R0
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K11 ["AdditionalAudioSearch"]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K0 ["props"]
       35 GETTABLEKS                       R8 R9 K14 ["searchWithOptions"]
       37 MOVE                             R9 R2
       38 MOVE                             R10 R3
       39 MOVE                             R11 R7
       40 CALL                             R8 3 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R1 R2 K2 ["AudioDetails"]
        7 NEWTABLE                         R2 0 0
        9 GETTABLEKS                       R3 R1 K3 ["SoundEffectCategory"]
       11 JUMPIFNOT                        R3 ; [+19]
       12 GETTABLEKS                       R5 R1 K3 ["SoundEffectCategory"]
       14 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K6 [table.insert]
       19 CALL                             R3 2 0
       20 GETTABLEKS                       R3 R1 K7 ["SoundEffectSubcategory"]
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETTABLEKS                       R5 R1 K7 ["SoundEffectSubcategory"]
       25 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       27 MOVE                             R4 R2
       28 GETIMPORT                        R3 K6 [table.insert]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K8 ["searchBy"]
       34 NEWTABLE                         R4 1 0
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K9 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       39 GETTABLEKS                       R5 R6 K10 ["CATEGORIES"]
       41 SETTABLE                         R2 R4 R5
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R1 R2 K2 ["AudioDetails"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["searchBy"]
       10 NEWTABLE                         R3 2 0
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       15 GETTABLEKS                       R4 R5 K5 ["ARTIST"]
       17 GETTABLEKS                       R5 R1 K6 ["Artist"]
       19 SETTABLE                         R5 R3 R4
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       23 GETTABLEKS                       R4 R5 K7 ["ALBUM"]
       25 GETTABLEKS                       R5 R1 K8 ["MusicAlbum"]
       27 SETTABLE                         R5 R3 R4
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Network"]
        5 GETTABLEKS                       R1 R2 K2 ["networkInterface"]
        7 GETTABLEKS                       R2 R0 K3 ["Settings"]
        9 LOADK                            R4 K4 ["Plugin"]
       10 NAMECALL                         R2 R2 K5 ["get"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R5 R0 K6 ["AssetInfo"]
       15 GETTABLEKS                       R4 R5 K7 ["Creator"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETTABLEKS                       R5 R0 K6 ["AssetInfo"]
       20 GETTABLEKS                       R4 R5 K7 ["Creator"]
       22 GETTABLEKS                       R3 R4 K8 ["Name"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 DUPTABLE                         R4 K11 [{"Creator", "AudioSearch", "AdditionalAudioSearch"}]
       27 SETTABLEKS                       R3 R4 K7 ["Creator"]
       29 GETTABLEKS                       R5 R0 K12 ["audioSearchInfo"]
       31 SETTABLEKS                       R5 R4 K9 ["AudioSearch"]
       33 GETTABLEKS                       R5 R0 K13 ["additionalAudioSearchInfo"]
       35 SETTABLEKS                       R5 R4 K10 ["AdditionalAudioSearch"]
       37 GETTABLEKS                       R5 R0 K14 ["searchWithOptions"]
       39 MOVE                             R6 R1
       40 MOVE                             R7 R2
       41 MOVE                             R8 R4
       42 CALL                             R5 3 0
       43 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["searchBy"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K1 ["onSearchByCategories"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K2 ["onSearchByAlbum"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K3 ["onSearchByCreator"]
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R4 K3 ["itemRow"]
        8 GETTABLEKS                       R4 R1 K4 ["AudioDetails"]
       10 GETTABLEKS                       R7 R1 K5 ["AssetInfo"]
       12 GETTABLEKS                       R6 R7 K6 ["Creator"]
       14 JUMPIFNOT                        R6 ; [+7]
       15 GETTABLEKS                       R7 R1 K5 ["AssetInfo"]
       17 GETTABLEKS                       R6 R7 K6 ["Creator"]
       19 GETTABLEKS                       R5 R6 K7 ["Name"]
       21 JUMP                             ; [+1]
       22 LOADK                            R5 K8 ["---"]
       23 GETTABLEKS                       R6 R1 K9 ["IsPlaying"]
       25 GETTABLEKS                       R8 R1 K5 ["AssetInfo"]
       27 GETTABLEKS                       R7 R8 K10 ["Asset"]
       29 GETTABLEKS                       R8 R7 K11 ["Id"]
       31 GETTABLEKS                       R10 R7 K12 ["Description"]
       33 ORK                              R9 R10 K8 ["---"]
       34 GETTABLEKS                       R10 R4 K13 ["SoundEffectCategory"]
       36 GETTABLEKS                       R11 R4 K14 ["Type"]
       38 GETUPVAL                         R15 0
       39 GETTABLEKS                       R14 R15 K15 ["SOUND_EFFECTS"]
       41 GETTABLEKS                       R13 R14 K16 ["name"]
       43 JUMPIFEQ                         R11 R13 ; [+2]
       45 LOADB                            R12 0 +1
       46 LOADB                            R12 1
       47 GETUPVAL                         R16 0
       48 GETTABLEKS                       R15 R16 K17 ["MUSIC"]
       50 GETTABLEKS                       R14 R15 K16 ["name"]
       52 JUMPIFEQ                         R11 R14 ; [+2]
       54 LOADB                            R13 0 +1
       55 LOADB                            R13 1
       56 GETTABLEKS                       R14 R4 K18 ["Artist"]
       58 GETTABLEKS                       R15 R4 K19 ["MusicAlbum"]
       60 LOADK                            R16 K20 [""]
       61 JUMPIFEQKS                       R14 K8 ["---"] ; [+2]
       63 MOVE                             R16 R14
       64 JUMPIFEQKS                       R15 K8 ["---"] ; [+9]
       66 JUMPIFEQKS                       R16 K20 [""] ; [+4]
       68 MOVE                             R17 R16
       69 LOADK                            R18 K21 [" - "]
       70 CONCAT                           R16 R17 R18
       71 MOVE                             R17 R16
       72 MOVE                             R18 R15
       73 CONCAT                           R16 R17 R18
       74 GETUPVAL                         R18 1
       75 GETTABLEKS                       R17 R18 K22 ["new"]
       77 CALL                             R17 0 1
       78 GETUPVAL                         R19 2
       79 GETTABLEKS                       R18 R19 K23 ["createElement"]
       81 GETUPVAL                         R19 3
       82 DUPTABLE                         R20 K28 [{"AutomaticSize", "Layout", "LayoutOrder", "Size"}]
       83 GETIMPORT                        R21 K31 [Enum.AutomaticSize.Y]
       85 SETTABLEKS                       R21 R20 K24 ["AutomaticSize"]
       87 GETIMPORT                        R21 K34 [Enum.FillDirection.Vertical]
       89 SETTABLEKS                       R21 R20 K25 ["Layout"]
       91 GETTABLEKS                       R21 R1 K26 ["LayoutOrder"]
       93 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
       95 GETTABLEKS                       R21 R1 K27 ["Size"]
       97 SETTABLEKS                       R21 R20 K27 ["Size"]
       99 DUPTABLE                         R21 K37 [{"AudioPlayerFrame", "AdditionalMusicDetails"}]
      100 GETUPVAL                         R23 2
      101 GETTABLEKS                       R22 R23 K23 ["createElement"]
      103 GETUPVAL                         R23 3
      104 DUPTABLE                         R24 K40 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Size", "VerticalAlignment"}]
      105 GETIMPORT                        R25 K31 [Enum.AutomaticSize.Y]
      107 SETTABLEKS                       R25 R24 K24 ["AutomaticSize"]
      109 GETIMPORT                        R25 K42 [Enum.FillDirection.Horizontal]
      111 SETTABLEKS                       R25 R24 K25 ["Layout"]
      113 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      115 CALL                             R25 1 1
      116 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      118 DUPTABLE                         R25 K46 [{"Left", "Right"}]
      119 LOADN                            R26 4
      120 SETTABLEKS                       R26 R25 K44 ["Left"]
      122 GETUPVAL                         R27 4
      123 CALL                             R27 0 1
      124 JUMPIFNOT                        R27 ; [+6]
      125 GETUPVAL                         R28 5
      126 GETTABLEKS                       R27 R28 K47 ["ITEM_ROW"]
      128 GETTABLEKS                       R26 R27 K48 ["LEFT_RIGHT_PADDING"]
      130 JUMP                             ; [+5]
      131 GETUPVAL                         R28 5
      132 GETTABLEKS                       R27 R28 K49 ["AUDIO_ROW"]
      134 GETTABLEKS                       R26 R27 K48 ["LEFT_RIGHT_PADDING"]
      136 SETTABLEKS                       R26 R25 K45 ["Right"]
      138 SETTABLEKS                       R25 R24 K38 ["Padding"]
      140 GETIMPORT                        R25 K51 [UDim2.new]
      142 LOADN                            R26 1
      143 LOADN                            R27 0
      144 LOADN                            R28 0
      145 LOADN                            R29 26
      146 CALL                             R25 4 1
      147 SETTABLEKS                       R25 R24 K27 ["Size"]
      149 GETIMPORT                        R25 K53 [Enum.VerticalAlignment.Center]
      151 SETTABLEKS                       R25 R24 K39 ["VerticalAlignment"]
      153 DUPTABLE                         R25 K55 [{"AudioPlayer"}]
      154 GETUPVAL                         R27 2
      155 GETTABLEKS                       R26 R27 K23 ["createElement"]
      157 GETUPVAL                         R27 6
      158 DUPTABLE                         R28 K58 [{"SoundId", "IsPlaying", "OnEnd"}]
      159 SETTABLEKS                       R8 R28 K56 ["SoundId"]
      161 SETTABLEKS                       R6 R28 K9 ["IsPlaying"]
      163 GETTABLEKS                       R29 R1 K59 ["OnAudioEnd"]
      165 SETTABLEKS                       R29 R28 K57 ["OnEnd"]
      167 CALL                             R26 2 1
      168 SETTABLEKS                       R26 R25 K54 ["AudioPlayer"]
      170 CALL                             R22 3 1
      171 SETTABLEKS                       R22 R21 K35 ["AudioPlayerFrame"]
      173 GETUPVAL                         R23 2
      174 GETTABLEKS                       R22 R23 K23 ["createElement"]
      176 GETUPVAL                         R23 3
      177 DUPTABLE                         R24 K60 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
      178 GETIMPORT                        R25 K31 [Enum.AutomaticSize.Y]
      180 SETTABLEKS                       R25 R24 K24 ["AutomaticSize"]
      182 GETIMPORT                        R25 K34 [Enum.FillDirection.Vertical]
      184 SETTABLEKS                       R25 R24 K25 ["Layout"]
      186 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      188 CALL                             R25 1 1
      189 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      191 DUPTABLE                         R25 K46 [{"Left", "Right"}]
      192 LOADN                            R26 10
      193 SETTABLEKS                       R26 R25 K44 ["Left"]
      195 LOADN                            R26 10
      196 SETTABLEKS                       R26 R25 K45 ["Right"]
      198 SETTABLEKS                       R25 R24 K38 ["Padding"]
      200 DUPTABLE                         R25 K63 [{"DescriptionContainer", "AlbumContainer"}]
      201 GETUPVAL                         R27 2
      202 GETTABLEKS                       R26 R27 K23 ["createElement"]
      204 GETUPVAL                         R27 3
      205 DUPTABLE                         R28 K65 [{"Layout", "LayoutOrder", "Spacing", "Size"}]
      206 GETIMPORT                        R29 K42 [Enum.FillDirection.Horizontal]
      208 SETTABLEKS                       R29 R28 K25 ["Layout"]
      210 NAMECALL                         R29 R17 K43 ["getNextOrder"]
      212 CALL                             R29 1 1
      213 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      215 LOADN                            R29 10
      216 SETTABLEKS                       R29 R28 K64 ["Spacing"]
      218 GETIMPORT                        R29 K51 [UDim2.new]
      220 LOADN                            R30 1
      221 LOADN                            R31 0
      222 LOADN                            R32 0
      223 LOADN                            R33 26
      224 CALL                             R29 4 1
      225 SETTABLEKS                       R29 R28 K27 ["Size"]
      227 DUPTABLE                         R29 K68 [{"Description", "AssetPreview", "Insert"}]
      228 GETUPVAL                         R31 2
      229 GETTABLEKS                       R30 R31 K23 ["createElement"]
      231 GETUPVAL                         R31 7
      232 DUPTABLE                         R32 K76 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "TextTruncate"}]
      233 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      235 CALL                             R33 1 1
      236 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      238 GETIMPORT                        R33 K51 [UDim2.new]
      240 LOADN                            R34 1
      241 LOADN                            R35 176
      242 LOADN                            R36 1
      243 LOADN                            R37 0
      244 CALL                             R33 4 1
      245 SETTABLEKS                       R33 R32 K27 ["Size"]
      247 SETTABLEKS                       R9 R32 K69 ["Text"]
      249 GETTABLEKS                       R33 R3 K77 ["textColor"]
      251 SETTABLEKS                       R33 R32 K70 ["TextColor"]
      253 GETUPVAL                         R34 5
      254 GETTABLEKS                       R33 R34 K78 ["FONT_SIZE_MEDIUM"]
      256 SETTABLEKS                       R33 R32 K71 ["TextSize"]
      258 LOADB                            R33 1
      259 SETTABLEKS                       R33 R32 K72 ["TextWrapped"]
      261 GETIMPORT                        R33 K79 [Enum.TextXAlignment.Left]
      263 SETTABLEKS                       R33 R32 K73 ["TextXAlignment"]
      265 GETIMPORT                        R33 K80 [Enum.TextYAlignment.Center]
      267 SETTABLEKS                       R33 R32 K74 ["TextYAlignment"]
      269 GETIMPORT                        R33 K82 [Enum.TextTruncate.AtEnd]
      271 SETTABLEKS                       R33 R32 K75 ["TextTruncate"]
      273 CALL                             R30 2 1
      274 SETTABLEKS                       R30 R29 K12 ["Description"]
      276 GETUPVAL                         R31 2
      277 GETTABLEKS                       R30 R31 K23 ["createElement"]
      279 GETUPVAL                         R31 3
      280 DUPTABLE                         R32 K84 [{"Layout", "LayoutOrder", "HorizontalAlignment", "Size", "VerticalAlignment"}]
      281 GETIMPORT                        R33 K34 [Enum.FillDirection.Vertical]
      283 SETTABLEKS                       R33 R32 K25 ["Layout"]
      285 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      287 CALL                             R33 1 1
      288 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      290 GETIMPORT                        R33 K85 [Enum.HorizontalAlignment.Center]
      292 SETTABLEKS                       R33 R32 K83 ["HorizontalAlignment"]
      294 GETIMPORT                        R33 K51 [UDim2.new]
      296 LOADN                            R34 0
      297 LOADN                            R35 26
      298 LOADN                            R36 0
      299 LOADN                            R37 26
      300 CALL                             R33 4 1
      301 SETTABLEKS                       R33 R32 K27 ["Size"]
      303 GETIMPORT                        R33 K53 [Enum.VerticalAlignment.Center]
      305 SETTABLEKS                       R33 R32 K39 ["VerticalAlignment"]
      307 DUPTABLE                         R33 K87 [{"PopUpWrapperButton"}]
      308 GETUPVAL                         R35 2
      309 GETTABLEKS                       R34 R35 K23 ["createElement"]
      311 GETUPVAL                         R35 8
      312 DUPTABLE                         R36 K91 [{"HoverSize", "onClick", "ShowIcon", "Size"}]
      313 GETIMPORT                        R37 K51 [UDim2.new]
      315 LOADN                            R38 0
      316 LOADN                            R39 26
      317 LOADN                            R40 0
      318 LOADN                            R41 26
      319 CALL                             R37 4 1
      320 SETTABLEKS                       R37 R36 K88 ["HoverSize"]
      322 GETTABLEKS                       R37 R1 K92 ["OnAssetPreviewButtonClicked"]
      324 SETTABLEKS                       R37 R36 K89 ["onClick"]
      326 LOADB                            R37 1
      327 SETTABLEKS                       R37 R36 K90 ["ShowIcon"]
      329 GETIMPORT                        R37 K51 [UDim2.new]
      331 LOADN                            R38 0
      332 LOADN                            R39 20
      333 LOADN                            R40 0
      334 LOADN                            R41 20
      335 CALL                             R37 4 1
      336 SETTABLEKS                       R37 R36 K27 ["Size"]
      338 CALL                             R34 2 1
      339 SETTABLEKS                       R34 R33 K86 ["PopUpWrapperButton"]
      341 CALL                             R30 3 1
      342 SETTABLEKS                       R30 R29 K66 ["AssetPreview"]
      344 GETUPVAL                         R31 2
      345 GETTABLEKS                       R30 R31 K23 ["createElement"]
      347 GETUPVAL                         R31 9
      348 DUPTABLE                         R32 K94 [{"LayoutOrder", "OnClick"}]
      349 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      351 CALL                             R33 1 1
      352 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      354 GETTABLEKS                       R33 R1 K95 ["OnInsertClicked"]
      356 SETTABLEKS                       R33 R32 K93 ["OnClick"]
      358 CALL                             R30 2 1
      359 SETTABLEKS                       R30 R29 K67 ["Insert"]
      361 CALL                             R26 3 1
      362 SETTABLEKS                       R26 R25 K61 ["DescriptionContainer"]
      364 GETUPVAL                         R27 2
      365 GETTABLEKS                       R26 R27 K23 ["createElement"]
      367 GETUPVAL                         R27 3
      368 DUPTABLE                         R28 K96 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Padding", "Size"}]
      369 GETIMPORT                        R29 K31 [Enum.AutomaticSize.Y]
      371 SETTABLEKS                       R29 R28 K24 ["AutomaticSize"]
      373 GETIMPORT                        R29 K42 [Enum.FillDirection.Horizontal]
      375 SETTABLEKS                       R29 R28 K25 ["Layout"]
      377 NAMECALL                         R29 R17 K43 ["getNextOrder"]
      379 CALL                             R29 1 1
      380 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      382 LOADN                            R29 10
      383 SETTABLEKS                       R29 R28 K64 ["Spacing"]
      385 DUPTABLE                         R29 K46 [{"Left", "Right"}]
      386 LOADN                            R30 5
      387 SETTABLEKS                       R30 R29 K44 ["Left"]
      389 LOADN                            R30 5
      390 SETTABLEKS                       R30 R29 K45 ["Right"]
      392 SETTABLEKS                       R29 R28 K38 ["Padding"]
      394 GETIMPORT                        R29 K51 [UDim2.new]
      396 LOADN                            R30 1
      397 LOADN                            R31 0
      398 LOADN                            R32 0
      399 LOADN                            R33 0
      400 CALL                             R29 4 1
      401 SETTABLEKS                       R29 R28 K27 ["Size"]
      403 DUPTABLE                         R29 K100 [{"AlbumArist", "Category", "UploadBy"}]
      404 JUMPIFNOT                        R13 ; [+37]
      405 GETUPVAL                         R31 2
      406 GETTABLEKS                       R30 R31 K23 ["createElement"]
      408 GETUPVAL                         R31 10
      409 DUPTABLE                         R32 K102 [{"LayoutOrder", "HeaderText", "Size", "Text", "OnClick"}]
      410 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      412 CALL                             R33 1 1
      413 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      415 LOADK                            R35 K103 ["AudioView"]
      416 LOADK                            R36 K104 ["AlbumArtist"]
      417 NAMECALL                         R33 R2 K105 ["getText"]
      419 CALL                             R33 3 1
      420 NAMECALL                         R33 R33 K106 ["upper"]
      422 CALL                             R33 1 1
      423 SETTABLEKS                       R33 R32 K101 ["HeaderText"]
      425 GETIMPORT                        R33 K51 [UDim2.new]
      427 LOADK                            R34 K107 [0.5]
      428 LOADN                            R35 0
      429 LOADN                            R36 1
      430 LOADN                            R37 0
      431 CALL                             R33 4 1
      432 SETTABLEKS                       R33 R32 K27 ["Size"]
      434 SETTABLEKS                       R16 R32 K69 ["Text"]
      436 GETTABLEKS                       R33 R0 K108 ["onSearchByAlbum"]
      438 SETTABLEKS                       R33 R32 K93 ["OnClick"]
      440 CALL                             R30 2 1
      441 JUMP                             ; [+1]
      442 LOADNIL                          R30
      443 SETTABLEKS                       R30 R29 K97 ["AlbumArist"]
      445 JUMPIFNOT                        R12 ; [+37]
      446 GETUPVAL                         R31 2
      447 GETTABLEKS                       R30 R31 K23 ["createElement"]
      449 GETUPVAL                         R31 10
      450 DUPTABLE                         R32 K102 [{"LayoutOrder", "HeaderText", "Size", "Text", "OnClick"}]
      451 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      453 CALL                             R33 1 1
      454 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      456 LOADK                            R35 K103 ["AudioView"]
      457 LOADK                            R36 K98 ["Category"]
      458 NAMECALL                         R33 R2 K105 ["getText"]
      460 CALL                             R33 3 1
      461 NAMECALL                         R33 R33 K106 ["upper"]
      463 CALL                             R33 1 1
      464 SETTABLEKS                       R33 R32 K101 ["HeaderText"]
      466 GETIMPORT                        R33 K51 [UDim2.new]
      468 LOADK                            R34 K107 [0.5]
      469 LOADN                            R35 0
      470 LOADN                            R36 1
      471 LOADN                            R37 0
      472 CALL                             R33 4 1
      473 SETTABLEKS                       R33 R32 K27 ["Size"]
      475 SETTABLEKS                       R10 R32 K69 ["Text"]
      477 GETTABLEKS                       R33 R0 K109 ["onSearchByCategories"]
      479 SETTABLEKS                       R33 R32 K93 ["OnClick"]
      481 CALL                             R30 2 1
      482 JUMP                             ; [+1]
      483 LOADNIL                          R30
      484 SETTABLEKS                       R30 R29 K98 ["Category"]
      486 GETUPVAL                         R31 2
      487 GETTABLEKS                       R30 R31 K23 ["createElement"]
      489 GETUPVAL                         R31 10
      490 DUPTABLE                         R32 K102 [{"LayoutOrder", "HeaderText", "Size", "Text", "OnClick"}]
      491 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      493 CALL                             R33 1 1
      494 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      496 LOADK                            R35 K103 ["AudioView"]
      497 LOADK                            R36 K110 ["UploadedBy"]
      498 NAMECALL                         R33 R2 K105 ["getText"]
      500 CALL                             R33 3 1
      501 NAMECALL                         R33 R33 K106 ["upper"]
      503 CALL                             R33 1 1
      504 SETTABLEKS                       R33 R32 K101 ["HeaderText"]
      506 GETIMPORT                        R33 K51 [UDim2.new]
      508 LOADK                            R34 K107 [0.5]
      509 LOADN                            R35 0
      510 LOADN                            R36 1
      511 LOADN                            R37 0
      512 CALL                             R33 4 1
      513 SETTABLEKS                       R33 R32 K27 ["Size"]
      515 SETTABLEKS                       R5 R32 K69 ["Text"]
      517 GETTABLEKS                       R33 R0 K111 ["onSearchByCreator"]
      519 SETTABLEKS                       R33 R32 K93 ["OnClick"]
      521 CALL                             R30 2 1
      522 SETTABLEKS                       R30 R29 K99 ["UploadBy"]
      524 CALL                             R26 3 1
      525 SETTABLEKS                       R26 R25 K62 ["AlbumContainer"]
      527 CALL                             R22 3 1
      528 SETTABLEKS                       R22 R21 K36 ["AdditionalMusicDetails"]
      530 CALL                             R18 3 -1
      531 RETURN                           R18 -1

PROTO_6:
        0 DUPTABLE                         R2 K3 [{"additionalAudioSearchInfo", "audioSearchInfo", "creator"}]
        1 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R4 R0 K4 ["pageInfo"]
        6 GETTABLEKS                       R3 R4 K0 ["additionalAudioSearchInfo"]
        8 SETTABLEKS                       R3 R2 K0 ["additionalAudioSearchInfo"]
       10 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETTABLEKS                       R4 R0 K4 ["pageInfo"]
       15 GETTABLEKS                       R3 R4 K1 ["audioSearchInfo"]
       17 SETTABLEKS                       R3 R2 K1 ["audioSearchInfo"]
       19 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
       21 JUMPIFNOT                        R3 ; [+4]
       22 GETTABLEKS                       R4 R0 K4 ["pageInfo"]
       24 GETTABLEKS                       R3 R4 K2 ["creator"]
       26 SETTABLEKS                       R3 R2 K2 ["creator"]
       28 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K1 [{"searchWithOptions"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["searchWithOptions"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["RoactRodux"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Framework"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Dash"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R7 R4 K11 ["UI"]
       31 GETTABLEKS                       R6 R7 K12 ["Pane"]
       33 GETTABLEKS                       R8 R4 K11 ["UI"]
       35 GETTABLEKS                       R7 R8 K13 ["TextLabel"]
       37 GETTABLEKS                       R9 R0 K14 ["Src"]
       39 GETTABLEKS                       R8 R9 K15 ["Util"]
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R8 K16 ["Constants"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R8 K17 ["LayoutOrderIterator"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R4 K18 ["ContextServices"]
       53 GETTABLEKS                       R12 R11 K19 ["withContext"]
       55 GETIMPORT                        R13 K6 [require]
       57 GETTABLEKS                       R16 R0 K14 ["Src"]
       59 GETTABLEKS                       R15 R16 K18 ["ContextServices"]
       61 GETTABLEKS                       R14 R15 K20 ["NetworkContext"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K6 [require]
       66 GETTABLEKS                       R17 R0 K14 ["Src"]
       68 GETTABLEKS                       R16 R17 K18 ["ContextServices"]
       70 GETTABLEKS                       R15 R16 K21 ["Settings"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K6 [require]
       75 GETTABLEKS                       R18 R0 K14 ["Src"]
       77 GETTABLEKS                       R17 R18 K22 ["Types"]
       79 GETTABLEKS                       R16 R17 K23 ["Category"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K6 [require]
       84 GETTABLEKS                       R20 R0 K14 ["Src"]
       86 GETTABLEKS                       R19 R20 K24 ["Components"]
       88 GETTABLEKS                       R18 R19 K25 ["Audio"]
       90 GETTABLEKS                       R17 R18 K26 ["AudioPlayer"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R21 R0 K14 ["Src"]
       97 GETTABLEKS                       R20 R21 K24 ["Components"]
       99 GETTABLEKS                       R19 R20 K25 ["Audio"]
      101 GETTABLEKS                       R18 R19 K27 ["AudioRowInsertButton"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETTABLEKS                       R22 R0 K14 ["Src"]
      108 GETTABLEKS                       R21 R22 K24 ["Components"]
      110 GETTABLEKS                       R20 R21 K28 ["ItemRow"]
      112 GETTABLEKS                       R19 R20 K29 ["ItemRowMetadata"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R24 R0 K14 ["Src"]
      119 GETTABLEKS                       R23 R24 K24 ["Components"]
      121 GETTABLEKS                       R22 R23 K30 ["Asset"]
      123 GETTABLEKS                       R21 R22 K31 ["Preview"]
      125 GETTABLEKS                       R20 R21 K32 ["PopUpWrapperButton"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R24 R0 K14 ["Src"]
      132 GETTABLEKS                       R23 R24 K33 ["Networking"]
      134 GETTABLEKS                       R22 R23 K34 ["Requests"]
      136 GETTABLEKS                       R21 R22 K35 ["SearchWithOptions"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETTABLEKS                       R25 R0 K14 ["Src"]
      143 GETTABLEKS                       R24 R25 K15 ["Util"]
      145 GETTABLEKS                       R23 R24 K36 ["SharedFlags"]
      147 GETTABLEKS                       R22 R23 K37 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R25 R0 K14 ["Src"]
      154 GETTABLEKS                       R24 R25 K38 ["Models"]
      156 GETTABLEKS                       R23 R24 K39 ["AssetInfo"]
      158 CALL                             R22 1 1
      159 GETTABLEKS                       R23 R2 K40 ["PureComponent"]
      161 LOADK                            R25 K41 ["AudioRowExpandedContent"]
      162 NAMECALL                         R23 R23 K42 ["extend"]
      164 CALL                             R23 2 1
      165 DUPTABLE                         R24 K44 [{"Size"}]
      166 GETIMPORT                        R25 K47 [UDim2.new]
      168 LOADN                            R26 1
      169 LOADN                            R27 0
      170 LOADN                            R28 0
      171 LOADN                            R29 26
      172 CALL                             R25 4 1
      173 SETTABLEKS                       R25 R24 K43 ["Size"]
      175 SETTABLEKS                       R24 R23 K48 ["defaultProps"]
      177 DUPCLOSURE                       R24 K49 [PROTO_4]
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R9
      180 SETTABLEKS                       R24 R23 K50 ["init"]
      182 DUPCLOSURE                       R24 K51 [PROTO_5]
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R18
      194 SETTABLEKS                       R24 R23 K52 ["render"]
      196 DUPCLOSURE                       R24 K53 [PROTO_6]
      197 DUPCLOSURE                       R25 K54 [PROTO_8]
      198 CAPTURE                          VAL R20
      199 MOVE                             R26 R12
      200 DUPTABLE                         R27 K58 [{"Localization", "Network", "Settings", "Stylizer"}]
      201 GETTABLEKS                       R28 R11 K55 ["Localization"]
      203 SETTABLEKS                       R28 R27 K55 ["Localization"]
      205 SETTABLEKS                       R13 R27 K56 ["Network"]
      207 SETTABLEKS                       R14 R27 K21 ["Settings"]
      209 GETTABLEKS                       R28 R11 K57 ["Stylizer"]
      211 SETTABLEKS                       R28 R27 K57 ["Stylizer"]
      213 CALL                             R26 1 1
      214 MOVE                             R27 R23
      215 CALL                             R26 1 1
      216 MOVE                             R23 R26
      217 GETTABLEKS                       R26 R3 K59 ["connect"]
      219 MOVE                             R27 R24
      220 MOVE                             R28 R25
      221 CALL                             R26 2 1
      222 MOVE                             R27 R23
      223 CALL                             R26 1 1
      224 MOVE                             R23 R26
      225 RETURN                           R23 1
