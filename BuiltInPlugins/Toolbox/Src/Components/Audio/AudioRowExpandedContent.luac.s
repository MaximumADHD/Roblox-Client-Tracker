PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Network"]
        5 GETTABLEKS                       R2 R2 K2 ["networkInterface"]
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
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R8 R8 K13 ["join"]
       27 MOVE                             R9 R6
       28 MOVE                             R10 R0
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K11 ["AdditionalAudioSearch"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K0 ["props"]
       35 GETTABLEKS                       R8 R8 K14 ["searchWithOptions"]
       37 MOVE                             R9 R2
       38 MOVE                             R10 R3
       39 MOVE                             R11 R7
       40 CALL                             R8 3 0
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R1 R1 K2 ["AudioDetails"]
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
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K8 ["searchBy"]
       34 NEWTABLE                         R4 1 0
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K9 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       39 GETTABLEKS                       R5 R5 K10 ["CATEGORIES"]
       41 SETTABLE                         R2 R4 R5
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R1 R1 K2 ["AudioDetails"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["searchBy"]
       10 NEWTABLE                         R3 2 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       15 GETTABLEKS                       R4 R4 K5 ["ARTIST"]
       17 GETTABLEKS                       R5 R1 K6 ["Artist"]
       19 SETTABLE                         R5 R3 R4
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       23 GETTABLEKS                       R4 R4 K7 ["ALBUM"]
       25 GETTABLEKS                       R5 R1 K8 ["MusicAlbum"]
       27 SETTABLE                         R5 R3 R4
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Network"]
        5 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        7 GETTABLEKS                       R2 R0 K3 ["Settings"]
        9 LOADK                            R4 K4 ["Plugin"]
       10 NAMECALL                         R2 R2 K5 ["get"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R4 R0 K6 ["AssetInfo"]
       15 GETTABLEKS                       R4 R4 K7 ["Creator"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETTABLEKS                       R3 R0 K6 ["AssetInfo"]
       20 GETTABLEKS                       R3 R3 K7 ["Creator"]
       22 GETTABLEKS                       R3 R3 K8 ["Name"]
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
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["itemRow"]
        8 GETTABLEKS                       R4 R1 K4 ["AudioDetails"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetInfo"]
       12 GETTABLEKS                       R6 R6 K6 ["Creator"]
       14 JUMPIFNOT                        R6 ; [+7]
       15 GETTABLEKS                       R5 R1 K5 ["AssetInfo"]
       17 GETTABLEKS                       R5 R5 K6 ["Creator"]
       19 GETTABLEKS                       R5 R5 K7 ["Name"]
       21 JUMP                             ; [+1]
       22 LOADK                            R5 K8 ["---"]
       23 GETTABLEKS                       R6 R1 K9 ["IsPlaying"]
       25 GETTABLEKS                       R7 R1 K5 ["AssetInfo"]
       27 GETTABLEKS                       R7 R7 K10 ["Asset"]
       29 GETTABLEKS                       R8 R7 K11 ["Id"]
       31 GETTABLEKS                       R10 R7 K12 ["Description"]
       33 ORK                              R9 R10 K8 ["---"]
       34 GETTABLEKS                       R10 R4 K13 ["SoundEffectCategory"]
       36 GETTABLEKS                       R11 R4 K14 ["Type"]
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R13 R13 K15 ["SOUND_EFFECTS"]
       41 GETTABLEKS                       R13 R13 K16 ["name"]
       43 JUMPIFEQ                         R11 R13 ; [+2]
       45 LOADB                            R12 0 +1
       46 LOADB                            R12 1
       47 GETUPVAL                         R14 0
       48 GETTABLEKS                       R14 R14 K17 ["MUSIC"]
       50 GETTABLEKS                       R14 R14 K16 ["name"]
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
       74 GETUPVAL                         R17 1
       75 GETTABLEKS                       R17 R17 K22 ["new"]
       77 CALL                             R17 0 1
       78 GETUPVAL                         R18 2
       79 GETTABLEKS                       R18 R18 K23 ["createElement"]
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
      100 GETUPVAL                         R22 2
      101 GETTABLEKS                       R22 R22 K23 ["createElement"]
      103 GETUPVAL                         R23 3
      104 DUPTABLE                         R24 K40 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Size", "VerticalAlignment"}]
      105 GETIMPORT                        R25 K31 [Enum.AutomaticSize.Y]
      107 SETTABLEKS                       R25 R24 K24 ["AutomaticSize"]
      109 GETIMPORT                        R25 K42 [Enum.FillDirection.Horizontal]
      111 SETTABLEKS                       R25 R24 K25 ["Layout"]
      113 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      115 CALL                             R25 1 1
      116 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      118 DUPTABLE                         R25 K47 [{["Left"] = 4, ["Right"]}]
      119 GETUPVAL                         R27 4
      120 CALL                             R27 0 1
      121 JUMPIFNOT                        R27 ; [+6]
      122 GETUPVAL                         R26 5
      123 GETTABLEKS                       R26 R26 K48 ["ITEM_ROW"]
      125 GETTABLEKS                       R26 R26 K49 ["LEFT_RIGHT_PADDING"]
      127 JUMP                             ; [+5]
      128 GETUPVAL                         R26 5
      129 GETTABLEKS                       R26 R26 K50 ["AUDIO_ROW"]
      131 GETTABLEKS                       R26 R26 K49 ["LEFT_RIGHT_PADDING"]
      133 SETTABLEKS                       R26 R25 K46 ["Right"]
      135 SETTABLEKS                       R25 R24 K38 ["Padding"]
      137 GETIMPORT                        R25 K52 [UDim2.new]
      139 LOADN                            R26 1
      140 LOADN                            R27 0
      141 LOADN                            R28 0
      142 LOADN                            R29 26
      143 CALL                             R25 4 1
      144 SETTABLEKS                       R25 R24 K27 ["Size"]
      146 GETIMPORT                        R25 K54 [Enum.VerticalAlignment.Center]
      148 SETTABLEKS                       R25 R24 K39 ["VerticalAlignment"]
      150 DUPTABLE                         R25 K56 [{"AudioPlayer"}]
      151 GETUPVAL                         R26 2
      152 GETTABLEKS                       R26 R26 K23 ["createElement"]
      154 GETUPVAL                         R27 6
      155 DUPTABLE                         R28 K59 [{"SoundId", "IsPlaying", "OnEnd"}]
      156 SETTABLEKS                       R8 R28 K57 ["SoundId"]
      158 SETTABLEKS                       R6 R28 K9 ["IsPlaying"]
      160 GETTABLEKS                       R29 R1 K60 ["OnAudioEnd"]
      162 SETTABLEKS                       R29 R28 K58 ["OnEnd"]
      164 CALL                             R26 2 1
      165 SETTABLEKS                       R26 R25 K55 ["AudioPlayer"]
      167 CALL                             R22 3 1
      168 SETTABLEKS                       R22 R21 K35 ["AudioPlayerFrame"]
      170 GETUPVAL                         R22 2
      171 GETTABLEKS                       R22 R22 K23 ["createElement"]
      173 GETUPVAL                         R23 3
      174 DUPTABLE                         R24 K61 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding"}]
      175 GETIMPORT                        R25 K31 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R25 R24 K24 ["AutomaticSize"]
      179 GETIMPORT                        R25 K34 [Enum.FillDirection.Vertical]
      181 SETTABLEKS                       R25 R24 K25 ["Layout"]
      183 NAMECALL                         R25 R17 K43 ["getNextOrder"]
      185 CALL                             R25 1 1
      186 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      188 DUPTABLE                         R25 K63 [{["Left"] = 10, ["Right"] = 10}]
      189 SETTABLEKS                       R25 R24 K38 ["Padding"]
      191 DUPTABLE                         R25 K66 [{"DescriptionContainer", "AlbumContainer"}]
      192 GETUPVAL                         R26 2
      193 GETTABLEKS                       R26 R26 K23 ["createElement"]
      195 GETUPVAL                         R27 3
      196 DUPTABLE                         R28 K68 [{["Layout"], ["LayoutOrder"], ["Spacing"] = 10, ["Size"]}]
      197 GETIMPORT                        R29 K42 [Enum.FillDirection.Horizontal]
      199 SETTABLEKS                       R29 R28 K25 ["Layout"]
      201 NAMECALL                         R29 R17 K43 ["getNextOrder"]
      203 CALL                             R29 1 1
      204 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      206 GETIMPORT                        R29 K52 [UDim2.new]
      208 LOADN                            R30 1
      209 LOADN                            R31 0
      210 LOADN                            R32 0
      211 LOADN                            R33 26
      212 CALL                             R29 4 1
      213 SETTABLEKS                       R29 R28 K27 ["Size"]
      215 DUPTABLE                         R29 K71 [{"Description", "AssetPreview", "Insert"}]
      216 GETUPVAL                         R30 2
      217 GETTABLEKS                       R30 R30 K23 ["createElement"]
      219 GETUPVAL                         R31 7
      220 DUPTABLE                         R32 K80 [{["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["TextTruncate"]}]
      221 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      223 CALL                             R33 1 1
      224 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      226 GETIMPORT                        R33 K52 [UDim2.new]
      228 LOADN                            R34 1
      229 LOADN                            R35 -80
      230 LOADN                            R36 1
      231 LOADN                            R37 0
      232 CALL                             R33 4 1
      233 SETTABLEKS                       R33 R32 K27 ["Size"]
      235 SETTABLEKS                       R9 R32 K72 ["Text"]
      237 GETTABLEKS                       R33 R3 K81 ["textColor"]
      239 SETTABLEKS                       R33 R32 K73 ["TextColor"]
      241 GETUPVAL                         R33 5
      242 GETTABLEKS                       R33 R33 K82 ["FONT_SIZE_MEDIUM"]
      244 SETTABLEKS                       R33 R32 K74 ["TextSize"]
      246 GETIMPORT                        R33 K83 [Enum.TextXAlignment.Left]
      248 SETTABLEKS                       R33 R32 K77 ["TextXAlignment"]
      250 GETIMPORT                        R33 K84 [Enum.TextYAlignment.Center]
      252 SETTABLEKS                       R33 R32 K78 ["TextYAlignment"]
      254 GETIMPORT                        R33 K86 [Enum.TextTruncate.AtEnd]
      256 SETTABLEKS                       R33 R32 K79 ["TextTruncate"]
      258 CALL                             R30 2 1
      259 SETTABLEKS                       R30 R29 K12 ["Description"]
      261 GETUPVAL                         R30 2
      262 GETTABLEKS                       R30 R30 K23 ["createElement"]
      264 GETUPVAL                         R31 3
      265 DUPTABLE                         R32 K88 [{"Layout", "LayoutOrder", "HorizontalAlignment", "Size", "VerticalAlignment"}]
      266 GETIMPORT                        R33 K34 [Enum.FillDirection.Vertical]
      268 SETTABLEKS                       R33 R32 K25 ["Layout"]
      270 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      272 CALL                             R33 1 1
      273 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      275 GETIMPORT                        R33 K89 [Enum.HorizontalAlignment.Center]
      277 SETTABLEKS                       R33 R32 K87 ["HorizontalAlignment"]
      279 GETIMPORT                        R33 K52 [UDim2.new]
      281 LOADN                            R34 0
      282 LOADN                            R35 26
      283 LOADN                            R36 0
      284 LOADN                            R37 26
      285 CALL                             R33 4 1
      286 SETTABLEKS                       R33 R32 K27 ["Size"]
      288 GETIMPORT                        R33 K54 [Enum.VerticalAlignment.Center]
      290 SETTABLEKS                       R33 R32 K39 ["VerticalAlignment"]
      292 DUPTABLE                         R33 K91 [{"PopUpWrapperButton"}]
      293 GETUPVAL                         R34 2
      294 GETTABLEKS                       R34 R34 K23 ["createElement"]
      296 GETUPVAL                         R35 8
      297 DUPTABLE                         R36 K95 [{["HoverSize"], ["onClick"], ["ShowIcon"] = True, ["Size"]}]
      298 GETIMPORT                        R37 K52 [UDim2.new]
      300 LOADN                            R38 0
      301 LOADN                            R39 26
      302 LOADN                            R40 0
      303 LOADN                            R41 26
      304 CALL                             R37 4 1
      305 SETTABLEKS                       R37 R36 K92 ["HoverSize"]
      307 GETTABLEKS                       R37 R1 K96 ["OnAssetPreviewButtonClicked"]
      309 SETTABLEKS                       R37 R36 K93 ["onClick"]
      311 GETIMPORT                        R37 K52 [UDim2.new]
      313 LOADN                            R38 0
      314 LOADN                            R39 20
      315 LOADN                            R40 0
      316 LOADN                            R41 20
      317 CALL                             R37 4 1
      318 SETTABLEKS                       R37 R36 K27 ["Size"]
      320 CALL                             R34 2 1
      321 SETTABLEKS                       R34 R33 K90 ["PopUpWrapperButton"]
      323 CALL                             R30 3 1
      324 SETTABLEKS                       R30 R29 K69 ["AssetPreview"]
      326 GETUPVAL                         R30 2
      327 GETTABLEKS                       R30 R30 K23 ["createElement"]
      329 GETUPVAL                         R31 9
      330 DUPTABLE                         R32 K98 [{"LayoutOrder", "OnClick"}]
      331 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      333 CALL                             R33 1 1
      334 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      336 GETTABLEKS                       R33 R1 K99 ["OnInsertClicked"]
      338 SETTABLEKS                       R33 R32 K97 ["OnClick"]
      340 CALL                             R30 2 1
      341 SETTABLEKS                       R30 R29 K70 ["Insert"]
      343 CALL                             R26 3 1
      344 SETTABLEKS                       R26 R25 K64 ["DescriptionContainer"]
      346 GETUPVAL                         R26 2
      347 GETTABLEKS                       R26 R26 K23 ["createElement"]
      349 GETUPVAL                         R27 3
      350 DUPTABLE                         R28 K100 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 10, ["Padding"], ["Size"]}]
      351 GETIMPORT                        R29 K31 [Enum.AutomaticSize.Y]
      353 SETTABLEKS                       R29 R28 K24 ["AutomaticSize"]
      355 GETIMPORT                        R29 K42 [Enum.FillDirection.Horizontal]
      357 SETTABLEKS                       R29 R28 K25 ["Layout"]
      359 NAMECALL                         R29 R17 K43 ["getNextOrder"]
      361 CALL                             R29 1 1
      362 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      364 DUPTABLE                         R29 K102 [{["Left"] = 5, ["Right"] = 5}]
      365 SETTABLEKS                       R29 R28 K38 ["Padding"]
      367 GETIMPORT                        R29 K52 [UDim2.new]
      369 LOADN                            R30 1
      370 LOADN                            R31 0
      371 LOADN                            R32 0
      372 LOADN                            R33 0
      373 CALL                             R29 4 1
      374 SETTABLEKS                       R29 R28 K27 ["Size"]
      376 DUPTABLE                         R29 K106 [{"AlbumArist", "Category", "UploadBy"}]
      377 JUMPIFNOT                        R13 ; [+37]
      378 GETUPVAL                         R30 2
      379 GETTABLEKS                       R30 R30 K23 ["createElement"]
      381 GETUPVAL                         R31 10
      382 DUPTABLE                         R32 K108 [{"LayoutOrder", "HeaderText", "Size", "Text", "OnClick"}]
      383 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      385 CALL                             R33 1 1
      386 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      388 LOADK                            R35 K109 ["AudioView"]
      389 LOADK                            R36 K110 ["AlbumArtist"]
      390 NAMECALL                         R33 R2 K111 ["getText"]
      392 CALL                             R33 3 1
      393 NAMECALL                         R33 R33 K112 ["upper"]
      395 CALL                             R33 1 1
      396 SETTABLEKS                       R33 R32 K107 ["HeaderText"]
      398 GETIMPORT                        R33 K52 [UDim2.new]
      400 LOADK                            R34 K113 [0.5]
      401 LOADN                            R35 0
      402 LOADN                            R36 1
      403 LOADN                            R37 0
      404 CALL                             R33 4 1
      405 SETTABLEKS                       R33 R32 K27 ["Size"]
      407 SETTABLEKS                       R16 R32 K72 ["Text"]
      409 GETTABLEKS                       R33 R0 K114 ["onSearchByAlbum"]
      411 SETTABLEKS                       R33 R32 K97 ["OnClick"]
      413 CALL                             R30 2 1
      414 JUMP                             ; [+1]
      415 LOADNIL                          R30
      416 SETTABLEKS                       R30 R29 K103 ["AlbumArist"]
      418 JUMPIFNOT                        R12 ; [+37]
      419 GETUPVAL                         R30 2
      420 GETTABLEKS                       R30 R30 K23 ["createElement"]
      422 GETUPVAL                         R31 10
      423 DUPTABLE                         R32 K108 [{"LayoutOrder", "HeaderText", "Size", "Text", "OnClick"}]
      424 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      426 CALL                             R33 1 1
      427 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      429 LOADK                            R35 K109 ["AudioView"]
      430 LOADK                            R36 K104 ["Category"]
      431 NAMECALL                         R33 R2 K111 ["getText"]
      433 CALL                             R33 3 1
      434 NAMECALL                         R33 R33 K112 ["upper"]
      436 CALL                             R33 1 1
      437 SETTABLEKS                       R33 R32 K107 ["HeaderText"]
      439 GETIMPORT                        R33 K52 [UDim2.new]
      441 LOADK                            R34 K113 [0.5]
      442 LOADN                            R35 0
      443 LOADN                            R36 1
      444 LOADN                            R37 0
      445 CALL                             R33 4 1
      446 SETTABLEKS                       R33 R32 K27 ["Size"]
      448 SETTABLEKS                       R10 R32 K72 ["Text"]
      450 GETTABLEKS                       R33 R0 K115 ["onSearchByCategories"]
      452 SETTABLEKS                       R33 R32 K97 ["OnClick"]
      454 CALL                             R30 2 1
      455 JUMP                             ; [+1]
      456 LOADNIL                          R30
      457 SETTABLEKS                       R30 R29 K104 ["Category"]
      459 GETUPVAL                         R30 2
      460 GETTABLEKS                       R30 R30 K23 ["createElement"]
      462 GETUPVAL                         R31 10
      463 DUPTABLE                         R32 K108 [{"LayoutOrder", "HeaderText", "Size", "Text", "OnClick"}]
      464 NAMECALL                         R33 R17 K43 ["getNextOrder"]
      466 CALL                             R33 1 1
      467 SETTABLEKS                       R33 R32 K26 ["LayoutOrder"]
      469 LOADK                            R35 K109 ["AudioView"]
      470 LOADK                            R36 K116 ["UploadedBy"]
      471 NAMECALL                         R33 R2 K111 ["getText"]
      473 CALL                             R33 3 1
      474 NAMECALL                         R33 R33 K112 ["upper"]
      476 CALL                             R33 1 1
      477 SETTABLEKS                       R33 R32 K107 ["HeaderText"]
      479 GETIMPORT                        R33 K52 [UDim2.new]
      481 LOADK                            R34 K113 [0.5]
      482 LOADN                            R35 0
      483 LOADN                            R36 1
      484 LOADN                            R37 0
      485 CALL                             R33 4 1
      486 SETTABLEKS                       R33 R32 K27 ["Size"]
      488 SETTABLEKS                       R5 R32 K72 ["Text"]
      490 GETTABLEKS                       R33 R0 K117 ["onSearchByCreator"]
      492 SETTABLEKS                       R33 R32 K97 ["OnClick"]
      494 CALL                             R30 2 1
      495 SETTABLEKS                       R30 R29 K105 ["UploadBy"]
      497 CALL                             R26 3 1
      498 SETTABLEKS                       R26 R25 K65 ["AlbumContainer"]
      500 CALL                             R22 3 1
      501 SETTABLEKS                       R22 R21 K36 ["AdditionalMusicDetails"]
      503 CALL                             R18 3 -1
      504 RETURN                           R18 -1

PROTO_6:
        0 DUPTABLE                         R2 K3 [{"additionalAudioSearchInfo", "audioSearchInfo", "creator"}]
        1 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
        6 GETTABLEKS                       R3 R3 K0 ["additionalAudioSearchInfo"]
        8 SETTABLEKS                       R3 R2 K0 ["additionalAudioSearchInfo"]
       10 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
       15 GETTABLEKS                       R3 R3 K1 ["audioSearchInfo"]
       17 SETTABLEKS                       R3 R2 K1 ["audioSearchInfo"]
       19 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
       21 JUMPIFNOT                        R3 ; [+4]
       22 GETTABLEKS                       R3 R0 K4 ["pageInfo"]
       24 GETTABLEKS                       R3 R3 K2 ["creator"]
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
       29 GETTABLEKS                       R6 R4 K11 ["UI"]
       31 GETTABLEKS                       R6 R6 K12 ["Pane"]
       33 GETTABLEKS                       R7 R4 K11 ["UI"]
       35 GETTABLEKS                       R7 R7 K13 ["TextLabel"]
       37 GETTABLEKS                       R8 R0 K14 ["Src"]
       39 GETTABLEKS                       R8 R8 K15 ["Util"]
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R8 K16 ["Constants"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R11 R8 K17 ["LayoutOrderIterator"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R4 K18 ["ContextServices"]
       53 GETTABLEKS                       R12 R11 K19 ["withContext"]
       55 GETIMPORT                        R13 K6 [require]
       57 GETTABLEKS                       R14 R0 K14 ["Src"]
       59 GETTABLEKS                       R14 R14 K18 ["ContextServices"]
       61 GETTABLEKS                       R14 R14 K20 ["NetworkContext"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K6 [require]
       66 GETTABLEKS                       R15 R0 K14 ["Src"]
       68 GETTABLEKS                       R15 R15 K18 ["ContextServices"]
       70 GETTABLEKS                       R15 R15 K21 ["Settings"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K6 [require]
       75 GETTABLEKS                       R16 R0 K14 ["Src"]
       77 GETTABLEKS                       R16 R16 K22 ["Types"]
       79 GETTABLEKS                       R16 R16 K23 ["Category"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K6 [require]
       84 GETTABLEKS                       R17 R0 K14 ["Src"]
       86 GETTABLEKS                       R17 R17 K24 ["Components"]
       88 GETTABLEKS                       R17 R17 K25 ["Audio"]
       90 GETTABLEKS                       R17 R17 K26 ["AudioPlayer"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K6 [require]
       95 GETTABLEKS                       R18 R0 K14 ["Src"]
       97 GETTABLEKS                       R18 R18 K24 ["Components"]
       99 GETTABLEKS                       R18 R18 K25 ["Audio"]
      101 GETTABLEKS                       R18 R18 K27 ["AudioRowInsertButton"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETTABLEKS                       R19 R0 K14 ["Src"]
      108 GETTABLEKS                       R19 R19 K24 ["Components"]
      110 GETTABLEKS                       R19 R19 K28 ["ItemRow"]
      112 GETTABLEKS                       R19 R19 K29 ["ItemRowMetadata"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R20 R0 K14 ["Src"]
      119 GETTABLEKS                       R20 R20 K24 ["Components"]
      121 GETTABLEKS                       R20 R20 K30 ["Asset"]
      123 GETTABLEKS                       R20 R20 K31 ["Preview"]
      125 GETTABLEKS                       R20 R20 K32 ["PopUpWrapperButton"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R21 R0 K14 ["Src"]
      132 GETTABLEKS                       R21 R21 K33 ["Networking"]
      134 GETTABLEKS                       R21 R21 K34 ["Requests"]
      136 GETTABLEKS                       R21 R21 K35 ["SearchWithOptions"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETTABLEKS                       R22 R0 K14 ["Src"]
      143 GETTABLEKS                       R22 R22 K15 ["Util"]
      145 GETTABLEKS                       R22 R22 K36 ["SharedFlags"]
      147 GETTABLEKS                       R22 R22 K37 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
      149 CALL                             R21 1 1
      150 GETIMPORT                        R22 K6 [require]
      152 GETTABLEKS                       R23 R0 K14 ["Src"]
      154 GETTABLEKS                       R23 R23 K38 ["Models"]
      156 GETTABLEKS                       R23 R23 K39 ["AssetInfo"]
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
