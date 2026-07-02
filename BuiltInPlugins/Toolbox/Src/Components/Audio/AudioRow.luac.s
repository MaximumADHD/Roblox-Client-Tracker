PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [0]
        6 DIVK                             R3 R1 K3 [60]
        7 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        8 GETIMPORT                        R2 K6 [math.floor]
       10 CALL                             R2 1 1
       11 MODK                             R3 R1 K3 [60]
       12 GETIMPORT                        R4 K9 [string.format]
       14 LOADK                            R5 K10 ["%d:%02d"]
       15 MOVE                             R6 R2
       16 MOVE                             R7 R3
       17 CALL                             R4 3 -1
       18 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R0 R0 K2 ["Asset"]
        7 GETTABLEKS                       R0 R0 K3 ["Id"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K4 ["OnExpanded"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"isPlaying"}]
        1 GETTABLEKS                       R3 R0 K0 ["isPlaying"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["isPlaying"]
        6 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_6]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["InsertAsset"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CanInsertAsset"]
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+7]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["InsertAsset"]
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Network"]
        5 GETTABLEKS                       R1 R1 K2 ["networkInterface"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["Settings"]
       12 LOADK                            R4 K4 ["Plugin"]
       13 NAMECALL                         R2 R2 K5 ["get"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K6 ["audioSearchInfo"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["props"]
       24 GETTABLEKS                       R4 R4 K7 ["creator"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K8 ["additionalAudioSearchInfo"]
       29 DUPTABLE                         R6 K12 [{"Creator", "AudioSearch", "AdditionalAudioSearch"}]
       30 SETTABLEKS                       R4 R6 K9 ["Creator"]
       32 SETTABLEKS                       R3 R6 K10 ["AudioSearch"]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K13 ["join"]
       37 MOVE                             R8 R5
       38 MOVE                             R9 R0
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K11 ["AdditionalAudioSearch"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K0 ["props"]
       45 GETTABLEKS                       R7 R7 K14 ["searchWithOptions"]
       47 MOVE                             R8 R1
       48 MOVE                             R9 R2
       49 MOVE                             R10 R6
       50 CALL                             R7 3 0
       51 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Settings"]
        5 LOADK                            R3 K2 ["Plugin"]
        6 NAMECALL                         R1 R1 K3 ["get"]
        8 CALL                             R1 2 1
        9 DUPTABLE                         R2 K5 [{"Creator"}]
       10 GETTABLEKS                       R4 R0 K6 ["AssetInfo"]
       12 GETTABLEKS                       R4 R4 K4 ["Creator"]
       14 JUMPIFNOT                        R4 ; [+7]
       15 GETTABLEKS                       R3 R0 K6 ["AssetInfo"]
       17 GETTABLEKS                       R3 R3 K4 ["Creator"]
       19 GETTABLEKS                       R3 R3 K7 ["Name"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K4 ["Creator"]
       25 GETTABLEKS                       R3 R0 K8 ["searchWithOptions"]
       27 GETTABLEKS                       R4 R0 K9 ["Network"]
       29 GETTABLEKS                       R4 R4 K10 ["networkInterface"]
       31 MOVE                             R5 R1
       32 MOVE                             R6 R2
       33 CALL                             R3 3 0
       34 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R0 R0 K2 ["AudioDetails"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["searchBy"]
       10 NEWTABLE                         R2 1 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       15 GETTABLEKS                       R3 R3 K5 ["ARTIST"]
       17 GETTABLEKS                       R4 R0 K6 ["Artist"]
       19 SETTABLE                         R4 R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R0 R0 K2 ["AudioDetails"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["searchBy"]
       10 NEWTABLE                         R2 1 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       15 GETTABLEKS                       R3 R3 K5 ["GENRE"]
       17 GETTABLEKS                       R4 R0 K6 ["MusicGenre"]
       19 SETTABLE                         R4 R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R0 R0 K2 ["AudioDetails"]
        7 NEWTABLE                         R1 0 0
        9 GETTABLEKS                       R2 R0 K3 ["SoundEffectCategory"]
       11 JUMPIFNOT                        R2 ; [+19]
       12 GETTABLEKS                       R4 R0 K3 ["SoundEffectCategory"]
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K6 [table.insert]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R0 K7 ["SoundEffectSubcategory"]
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETTABLEKS                       R4 R0 K7 ["SoundEffectSubcategory"]
       25 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K6 [table.insert]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K8 ["searchBy"]
       34 NEWTABLE                         R3 1 0
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K9 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       39 GETTABLEKS                       R4 R4 K10 ["CATEGORIES"]
       41 SETTABLE                         R1 R3 R4
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R0 R0 K2 ["AudioDetails"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["searchBy"]
       10 NEWTABLE                         R2 2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       15 GETTABLEKS                       R3 R3 K5 ["ARTIST"]
       17 GETTABLEKS                       R4 R0 K6 ["Artist"]
       19 SETTABLE                         R4 R2 R3
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K4 ["ADDITIONAL_AUDIO_SEARCH_KEYS"]
       23 GETTABLEKS                       R3 R3 K7 ["ALBUM"]
       25 GETTABLEKS                       R4 R0 K8 ["MusicAlbum"]
       27 SETTABLE                         R4 R2 R3
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R1 R1 K2 ["AudioDetails"]
        7 JUMPIFNOT                        R1 ; [+12]
        8 GETTABLEKS                       R2 R1 K3 ["SoundEffectCategory"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["onSearchByCategories"]
       14 CALL                             R2 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K5 ["onSearchByGenre"]
       19 CALL                             R2 0 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AssetInfo"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["stopPlaying"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["props"]
       12 GETTABLEKS                       R1 R1 K3 ["OnAssetPreviewButtonClicked"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R1 K1 [{"isHovered"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        4 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 NAMECALL                         R1 R1 K0 ["setState"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 LOADK                            R3 K2 ["Audio.SoundEffect.Category"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K3 ["getText"]
        9 CALL                             R1 3 1
       10 GETIMPORT                        R2 K6 [string.match]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K2 ["Audio.SoundEffect.Category"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+18]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K1 ["Localization"]
       21 LOADK                            R4 K7 ["Audio.Music.Genre"]
       22 MOVE                             R5 R0
       23 NAMECALL                         R2 R2 K3 ["getText"]
       25 CALL                             R2 3 1
       26 MOVE                             R1 R2
       27 GETIMPORT                        R2 K6 [string.match]
       29 MOVE                             R3 R1
       30 LOADK                            R4 K7 ["Audio.Music.Genre"]
       31 CALL                             R2 2 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R0 1
       34 RETURN                           R1 1

PROTO_21:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R3 R0 K0 ["SoundEffectCategory"]
        4 JUMPIFEQKNIL                     R3 ; [+20]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["localizeWithFallback"]
        9 GETTABLEKS                       R4 R0 K0 ["SoundEffectCategory"]
       11 CALL                             R3 1 1
       12 MOVE                             R1 R3
       13 GETTABLEKS                       R3 R0 K2 ["SoundEffectSubcategory"]
       15 JUMPIFEQKNIL                     R3 ; [+20]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K1 ["localizeWithFallback"]
       20 GETTABLEKS                       R4 R0 K2 ["SoundEffectSubcategory"]
       22 CALL                             R3 1 1
       23 MOVE                             R2 R3
       24 JUMP                             ; [+11]
       25 GETTABLEKS                       R3 R0 K3 ["MusicGenre"]
       27 JUMPIFEQKNIL                     R3 ; [+8]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K1 ["localizeWithFallback"]
       32 GETTABLEKS                       R4 R0 K3 ["MusicGenre"]
       34 CALL                             R3 1 1
       35 MOVE                             R1 R3
       36 LOADNIL                          R3
       37 JUMPIFNOT                        R1 ; [+6]
       38 MOVE                             R3 R1
       39 JUMPIFNOT                        R2 ; [+4]
       40 MOVE                             R4 R3
       41 LOADK                            R5 K4 [" - "]
       42 MOVE                             R6 R2
       43 CONCAT                           R3 R4 R6
       44 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetInfo"]
        5 GETTABLEKS                       R1 R1 K2 ["Asset"]
        7 GETGLOBAL                        R2 K3 ["audioDetailsWithDefaults"]
        9 GETTABLEKS                       R3 R0 K1 ["AssetInfo"]
       11 GETTABLEKS                       R3 R3 K4 ["AudioDetails"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R4 R2 K5 ["Type"]
       17 GETTABLEKS                       R6 R0 K7 ["width"]
       19 ORK                              R5 R6 K6 [0]
       20 CALL                             R3 2 1
       21 GETTABLEKS                       R4 R0 K1 ["AssetInfo"]
       23 GETTABLEKS                       R4 R4 K8 ["Creator"]
       25 LOADK                            R5 K9 ["---"]
       26 LOADNIL                          R6
       27 GETTABLEKS                       R8 R0 K1 ["AssetInfo"]
       29 GETTABLEKS                       R8 R8 K4 ["AudioDetails"]
       31 JUMPIFNOT                        R8 ; [+7]
       32 GETTABLEKS                       R7 R0 K1 ["AssetInfo"]
       34 GETTABLEKS                       R7 R7 K4 ["AudioDetails"]
       36 GETTABLEKS                       R7 R7 K10 ["Artist"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R7
       40 JUMPIFNOT                        R7 ; [+13]
       41 FASTCALL1                        STRING_LEN R7 ; [+3]
       42 MOVE                             R9 R7
       43 GETIMPORT                        R8 K13 [string.len]
       45 CALL                             R8 1 1
       46 LOADN                            R9 0
       47 JUMPIFNOTLT                      R9 R8 ; [+6]
       49 MOVE                             R5 R7
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R6 R8 K14 ["onSearchByArtist"]
       53 JUMP                             ; [+9]
       54 JUMPIFNOT                        R4 ; [+8]
       55 GETTABLEKS                       R8 R4 K15 ["Name"]
       57 JUMPIFNOT                        R8 ; [+5]
       58 GETTABLEKS                       R5 R4 K15 ["Name"]
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R6 R8 K16 ["onSearchByCreator"]
       63 NEWTABLE                         R8 0 3
       65 DUPTABLE                         R9 K21 [{["DevLabel"] = "Creator", ["OnClick"], ["Size"], ["Text"]}]
       66 SETTABLEKS                       R6 R9 K18 ["OnClick"]
       68 GETUPVAL                         R11 2
       69 GETTABLEKS                       R11 R11 K22 ["AUDIO_ROW"]
       71 GETTABLEKS                       R11 R11 K23 ["COLUMNS"]
       73 GETTABLEKS                       R11 R11 K24 ["CREATOR"]
       75 GETTABLE                         R10 R3 R11
       76 SETTABLEKS                       R10 R9 K19 ["Size"]
       78 SETTABLEKS                       R5 R9 K20 ["Text"]
       80 DUPTABLE                         R10 K26 [{["DevLabel"] = "Tags", ["OnClick"], ["Size"], ["Text"]}]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K27 ["onSearchByTags"]
       84 SETTABLEKS                       R11 R10 K18 ["OnClick"]
       86 GETUPVAL                         R12 2
       87 GETTABLEKS                       R12 R12 K22 ["AUDIO_ROW"]
       89 GETTABLEKS                       R12 R12 K23 ["COLUMNS"]
       91 GETTABLEKS                       R12 R12 K28 ["TAGS"]
       93 GETTABLE                         R11 R3 R12
       94 SETTABLEKS                       R11 R10 K19 ["Size"]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K29 ["getTags"]
       99 MOVE                             R12 R2
      100 CALL                             R11 1 1
      101 SETTABLEKS                       R11 R10 K20 ["Text"]
      103 DUPTABLE                         R11 K33 [{["DevLabel"] = "Duration", ["Padding"], ["OnClick"] = , ["Size"], ["Text"]}]
      104 DUPTABLE                         R12 K35 [{"Left"}]
      105 GETUPVAL                         R14 3
      106 CALL                             R14 0 1
      107 JUMPIFNOT                        R14 ; [+6]
      108 GETUPVAL                         R13 2
      109 GETTABLEKS                       R13 R13 K36 ["ITEM_ROW"]
      111 GETTABLEKS                       R13 R13 K37 ["LEFT_RIGHT_PADDING"]
      113 JUMP                             ; [+5]
      114 GETUPVAL                         R13 2
      115 GETTABLEKS                       R13 R13 K22 ["AUDIO_ROW"]
      117 GETTABLEKS                       R13 R13 K37 ["LEFT_RIGHT_PADDING"]
      119 SETTABLEKS                       R13 R12 K34 ["Left"]
      121 SETTABLEKS                       R12 R11 K31 ["Padding"]
      123 GETUPVAL                         R13 2
      124 GETTABLEKS                       R13 R13 K22 ["AUDIO_ROW"]
      126 GETTABLEKS                       R13 R13 K23 ["COLUMNS"]
      128 GETTABLEKS                       R13 R13 K38 ["LENGTH"]
      130 GETTABLE                         R12 R3 R13
      131 SETTABLEKS                       R12 R11 K19 ["Size"]
      133 GETGLOBAL                        R12 K39 ["secondsToMinuteString"]
      135 GETTABLEKS                       R13 R1 K30 ["Duration"]
      137 CALL                             R12 1 1
      138 SETTABLEKS                       R12 R11 K20 ["Text"]
      140 SETLIST                          R8 R9 3 [1]
      142 RETURN                           R8 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R0 K2 ["IsExpanded"]
        8 GETTABLEKS                       R3 R0 K3 ["Stylizer"]
       10 GETTABLEKS                       R3 R3 K4 ["itemRow"]
       12 GETTABLEKS                       R4 R1 K5 ["isHovered"]
       14 GETTABLEKS                       R5 R1 K6 ["isPlayButtonHovered"]
       16 GETTABLEKS                       R6 R1 K7 ["isPlaying"]
       18 GETGLOBAL                        R7 K8 ["audioDetailsWithDefaults"]
       20 GETTABLEKS                       R8 R0 K9 ["AssetInfo"]
       22 GETTABLEKS                       R8 R8 K10 ["AudioDetails"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R8 R7 K11 ["Type"]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K12 ["SOUND_EFFECTS"]
       30 GETTABLEKS                       R10 R10 K13 ["name"]
       32 JUMPIFEQ                         R8 R10 ; [+2]
       34 LOADB                            R9 0 +1
       35 LOADB                            R9 1
       36 NEWTABLE                         R10 4 0
       38 GETIMPORT                        R11 K16 [UDim2.new]
       40 LOADN                            R12 0
       41 GETUPVAL                         R13 2
       42 GETTABLEKS                       R13 R13 K17 ["AUDIO_ROW"]
       44 GETTABLEKS                       R13 R13 K18 ["ICON_SIZE"]
       46 LOADN                            R14 0
       47 GETUPVAL                         R15 2
       48 GETTABLEKS                       R15 R15 K17 ["AUDIO_ROW"]
       50 GETTABLEKS                       R15 R15 K18 ["ICON_SIZE"]
       52 CALL                             R11 4 1
       53 SETTABLEKS                       R11 R10 K19 ["Size"]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K20 ["Event"]
       58 GETTABLEKS                       R11 R11 K21 ["MouseEnter"]
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K22 ["onPlayButtonMouseEnter"]
       63 SETTABLE                         R12 R10 R11
       64 GETUPVAL                         R11 3
       65 GETTABLEKS                       R11 R11 K20 ["Event"]
       67 GETTABLEKS                       R11 R11 K23 ["MouseLeave"]
       69 GETUPVAL                         R12 0
       70 GETTABLEKS                       R12 R12 K24 ["onPlayButtonMouseLeave"]
       72 SETTABLE                         R12 R10 R11
       73 JUMPIF                           R2 ; [+2]
       74 JUMPIF                           R4 ; [+1]
       75 JUMPIFNOT                        R6 ; [+40]
       76 GETUPVAL                         R11 4
       77 GETTABLEKS                       R11 R11 K25 ["join"]
       79 MOVE                             R12 R10
       80 NEWTABLE                         R13 4 0
       82 JUMPIF                           R6 ; [+1]
       83 JUMPIFNOT                        R5 ; [+3]
       84 GETTABLEKS                       R14 R3 K26 ["pauseButtonColor"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R14 R3 K27 ["playButtonColor"]
       89 SETTABLEKS                       R14 R13 K28 ["BackgroundColor3"]
       91 LOADN                            R14 0
       92 SETTABLEKS                       R14 R13 K29 ["BackgroundTransparency"]
       94 JUMPIFNOT                        R6 ; [+4]
       95 GETUPVAL                         R14 5
       96 GETTABLEKS                       R14 R14 K30 ["AUDIO_PREVIEW_PAUSE"]
       98 JUMP                             ; [+3]
       99 GETUPVAL                         R14 5
      100 GETTABLEKS                       R14 R14 K31 ["AUDIO_PREVIEW_PLAY"]
      102 SETTABLEKS                       R14 R13 K32 ["Image"]
      104 GETUPVAL                         R14 3
      105 GETTABLEKS                       R14 R14 K20 ["Event"]
      107 GETTABLEKS                       R14 R14 K33 ["MouseButton1Click"]
      109 GETUPVAL                         R15 0
      110 GETTABLEKS                       R15 R15 K34 ["toggleIsPlayer"]
      112 SETTABLE                         R15 R13 R14
      113 CALL                             R11 2 1
      114 MOVE                             R10 R11
      115 JUMP                             ; [+21]
      116 GETUPVAL                         R11 4
      117 GETTABLEKS                       R11 R11 K25 ["join"]
      119 MOVE                             R12 R10
      120 DUPTABLE                         R13 K37 [{["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"]}]
      121 GETTABLEKS                       R14 R3 K38 ["primaryIconColor"]
      123 SETTABLEKS                       R14 R13 K36 ["ImageColor3"]
      125 JUMPIFNOT                        R9 ; [+4]
      126 GETUPVAL                         R14 5
      127 GETTABLEKS                       R14 R14 K39 ["SOUND_EFFECT_ICON"]
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R14 5
      131 GETTABLEKS                       R14 R14 K40 ["MUSIC_ICON"]
      133 SETTABLEKS                       R14 R13 K32 ["Image"]
      135 CALL                             R11 2 1
      136 MOVE                             R10 R11
      137 GETUPVAL                         R11 3
      138 GETTABLEKS                       R11 R11 K41 ["createElement"]
      140 LOADK                            R12 K42 ["Frame"]
      141 DUPTABLE                         R13 K43 [{["BackgroundTransparency"] = 1, ["Size"]}]
      142 GETIMPORT                        R14 K16 [UDim2.new]
      144 LOADN                            R15 0
      145 GETUPVAL                         R17 2
      146 GETTABLEKS                       R17 R17 K17 ["AUDIO_ROW"]
      148 GETTABLEKS                       R17 R17 K18 ["ICON_SIZE"]
      150 GETUPVAL                         R19 6
      151 CALL                             R19 0 1
      152 JUMPIFNOT                        R19 ; [+7]
      153 GETUPVAL                         R19 2
      154 GETTABLEKS                       R19 R19 K45 ["ITEM_ROW"]
      156 GETTABLEKS                       R19 R19 K46 ["LEFT_RIGHT_PADDING"]
      158 MULK                             R18 R19 K44 [2]
      159 JUMP                             ; [+6]
      160 GETUPVAL                         R19 2
      161 GETTABLEKS                       R19 R19 K17 ["AUDIO_ROW"]
      163 GETTABLEKS                       R19 R19 K46 ["LEFT_RIGHT_PADDING"]
      165 MULK                             R18 R19 K44 [2]
      166 ADD                              R16 R17 R18
      167 LOADN                            R17 1
      168 LOADN                            R18 0
      169 CALL                             R14 4 1
      170 SETTABLEKS                       R14 R13 K19 ["Size"]
      172 DUPTABLE                         R14 K48 [{"Button"}]
      173 GETUPVAL                         R15 3
      174 GETTABLEKS                       R15 R15 K41 ["createElement"]
      176 LOADK                            R16 K49 ["ImageButton"]
      177 MOVE                             R17 R10
      178 DUPTABLE                         R18 K52 [{"UICorner", "HoverArea"}]
      179 GETUPVAL                         R19 3
      180 GETTABLEKS                       R19 R19 K41 ["createElement"]
      182 LOADK                            R20 K50 ["UICorner"]
      183 DUPTABLE                         R21 K54 [{"CornerRadius"}]
      184 GETIMPORT                        R22 K56 [UDim.new]
      186 LOADN                            R23 0
      187 LOADN                            R24 15
      188 CALL                             R22 2 1
      189 SETTABLEKS                       R22 R21 K53 ["CornerRadius"]
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K50 ["UICorner"]
      194 GETUPVAL                         R19 3
      195 GETTABLEKS                       R19 R19 K41 ["createElement"]
      197 GETUPVAL                         R20 7
      198 DUPTABLE                         R21 K59 [{["Cursor"] = "PointingHand"}]
      199 CALL                             R19 2 1
      200 SETTABLEKS                       R19 R18 K51 ["HoverArea"]
      202 CALL                             R15 3 1
      203 SETTABLEKS                       R15 R14 K47 ["Button"]
      205 CALL                             R11 3 -1
      206 RETURN                           R11 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETGLOBAL                        R2 K2 ["audioDetailsWithDefaults"]
        8 GETTABLEKS                       R3 R0 K3 ["AssetInfo"]
       10 GETTABLEKS                       R3 R3 K4 ["AudioDetails"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["createElement"]
       16 GETUPVAL                         R4 2
       17 DUPTABLE                         R5 K10 [{"AudioDetails", "AssetInfo", "IsPlaying", "OnAssetPreviewButtonClicked", "OnAudioEnd", "OnInsertClicked"}]
       18 SETTABLEKS                       R2 R5 K4 ["AudioDetails"]
       20 GETTABLEKS                       R6 R0 K3 ["AssetInfo"]
       22 SETTABLEKS                       R6 R5 K3 ["AssetInfo"]
       24 GETTABLEKS                       R6 R1 K11 ["isPlaying"]
       26 SETTABLEKS                       R6 R5 K6 ["IsPlaying"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K12 ["onAssetPreviewButtonClicked"]
       31 SETTABLEKS                       R6 R5 K7 ["OnAssetPreviewButtonClicked"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K13 ["stopPlaying"]
       36 SETTABLEKS                       R6 R5 K8 ["OnAudioEnd"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K14 ["onClick"]
       41 SETTABLEKS                       R6 R5 K9 ["OnInsertClicked"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1

PROTO_25:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["wasAssetBoundsWithinScrollingBounds"]
        3 DUPTABLE                         R2 K6 [{["isPlayButtonHovered"] = False, ["isExpanded"] = True, ["isPlaying"] = False}]
        4 SETTABLEKS                       R2 R0 K7 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K8 ["onPlayButtonMouseEnter"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K9 ["onPlayButtonMouseLeave"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K10 ["toggleIsExpanded"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K11 ["stopPlaying"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K12 ["toggleIsPlayer"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 NEWCLOSURE                       R3 P6
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R3 R0 K13 ["onClick"]
       32 NEWCLOSURE                       R3 P7
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R3 R0 K14 ["searchBy"]
       38 NEWCLOSURE                       R3 P8
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R3 R0 K15 ["onSearchByCreator"]
       42 NEWCLOSURE                       R3 P9
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 SETTABLEKS                       R3 R0 K16 ["onSearchByArtist"]
       47 NEWCLOSURE                       R3 P10
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U1
       50 SETTABLEKS                       R3 R0 K17 ["onSearchByGenre"]
       52 NEWCLOSURE                       R3 P11
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U1
       55 SETTABLEKS                       R3 R0 K18 ["onSearchByCategories"]
       57 NEWCLOSURE                       R3 P12
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U1
       60 SETTABLEKS                       R3 R0 K19 ["onSearchByAlbum"]
       62 NEWCLOSURE                       R3 P13
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R3 R0 K20 ["onSearchByTags"]
       66 NEWCLOSURE                       R3 P14
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R3 R0 K21 ["onAssetPreviewButtonClicked"]
       70 NEWCLOSURE                       R3 P15
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R3 R0 K22 ["onHoverChanged"]
       74 NEWCLOSURE                       R3 P16
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R3 R0 K23 ["localizeWithFallback"]
       78 NEWCLOSURE                       R3 P17
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R3 R0 K24 ["getTags"]
       82 NEWCLOSURE                       R3 P18
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          UPVAL U3
       87 SETTABLEKS                       R3 R0 K25 ["getColumns"]
       89 NEWCLOSURE                       R3 P19
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U4
       92 CAPTURE                          UPVAL U1
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          UPVAL U7
       98 SETTABLEKS                       R3 R0 K26 ["renderIcon"]
      100 NEWCLOSURE                       R3 P20
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          UPVAL U8
      104 SETTABLEKS                       R3 R0 K27 ["renderExpandedContent"]
      106 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R5 R3 K2 ["isPlaying"]
        6 JUMPIFNOT                        R5 ; [+9]
        7 GETTABLEKS                       R5 R2 K2 ["isPlaying"]
        9 JUMPIF                           R5 ; [+6]
       10 GETTABLEKS                       R5 R4 K3 ["IsExpanded"]
       12 JUMPIF                           R5 ; [+3]
       13 NAMECALL                         R5 R0 K4 ["toggleIsExpanded"]
       15 CALL                             R5 1 0
       16 GETTABLEKS                       R5 R4 K3 ["IsExpanded"]
       18 JUMPIF                           R5 ; [+9]
       19 GETTABLEKS                       R5 R1 K3 ["IsExpanded"]
       21 JUMPIFNOT                        R5 ; [+6]
       22 GETTABLEKS                       R5 R3 K2 ["isPlaying"]
       24 JUMPIFNOT                        R5 ; [+3]
       25 NAMECALL                         R5 R0 K5 ["toggleIsPlayer"]
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["AssetInfo"]
        6 GETTABLEKS                       R3 R3 K3 ["Asset"]
        8 GETGLOBAL                        R4 K4 ["audioDetailsWithDefaults"]
       10 GETTABLEKS                       R5 R1 K2 ["AssetInfo"]
       12 GETTABLEKS                       R5 R5 K5 ["AudioDetails"]
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R6 R1 K2 ["AssetInfo"]
       17 GETTABLEKS                       R6 R6 K6 ["Creator"]
       19 JUMPIFNOT                        R6 ; [+7]
       20 GETTABLEKS                       R5 R1 K2 ["AssetInfo"]
       22 GETTABLEKS                       R5 R5 K6 ["Creator"]
       24 GETTABLEKS                       R5 R5 K7 ["Name"]
       26 JUMPIF                           R5 ; [+1]
       27 LOADK                            R5 K8 ["---"]
       28 GETTABLEKS                       R6 R4 K9 ["Type"]
       30 GETTABLEKS                       R7 R1 K10 ["width"]
       32 GETUPVAL                         R8 0
       33 MOVE                             R9 R6
       34 ORK                              R10 R7 K11 [0]
       35 CALL                             R8 2 1
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K12 ["Generator"]
       39 DUPTABLE                         R10 K28 [{"Columns", "ExpandedHeight", "OnHoverChanged", "RenderExpandedContent", "RenderIcon", "TitleSize", "AssetInfo", "CanInsertAsset", "InsertAsset", "IsExpanded", "LayoutOrder", "LogImpression", "OnExpanded", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
       40 GETTABLEKS                       R11 R0 K29 ["getColumns"]
       42 CALL                             R11 0 1
       43 SETTABLEKS                       R11 R10 K13 ["Columns"]
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K30 ["AUDIO_ROW"]
       48 GETTABLEKS                       R11 R11 K31 ["EXPANDED_ROW_HEIGHT"]
       50 SETTABLEKS                       R11 R10 K14 ["ExpandedHeight"]
       52 GETTABLEKS                       R11 R0 K32 ["onHoverChanged"]
       54 SETTABLEKS                       R11 R10 K15 ["OnHoverChanged"]
       56 GETTABLEKS                       R11 R0 K33 ["renderExpandedContent"]
       58 SETTABLEKS                       R11 R10 K16 ["RenderExpandedContent"]
       60 GETTABLEKS                       R11 R0 K34 ["renderIcon"]
       62 SETTABLEKS                       R11 R10 K17 ["RenderIcon"]
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K30 ["AUDIO_ROW"]
       67 GETTABLEKS                       R12 R12 K35 ["COLUMNS"]
       69 GETTABLEKS                       R12 R12 K36 ["TITLE"]
       71 GETTABLE                         R11 R8 R12
       72 SETTABLEKS                       R11 R10 K18 ["TitleSize"]
       74 GETTABLEKS                       R11 R1 K2 ["AssetInfo"]
       76 SETTABLEKS                       R11 R10 K2 ["AssetInfo"]
       78 GETTABLEKS                       R11 R1 K19 ["CanInsertAsset"]
       80 SETTABLEKS                       R11 R10 K19 ["CanInsertAsset"]
       82 GETTABLEKS                       R11 R1 K20 ["InsertAsset"]
       84 SETTABLEKS                       R11 R10 K20 ["InsertAsset"]
       86 GETTABLEKS                       R11 R1 K21 ["IsExpanded"]
       88 SETTABLEKS                       R11 R10 K21 ["IsExpanded"]
       90 GETTABLEKS                       R11 R1 K22 ["LayoutOrder"]
       92 SETTABLEKS                       R11 R10 K22 ["LayoutOrder"]
       94 GETTABLEKS                       R11 R1 K23 ["LogImpression"]
       96 SETTABLEKS                       R11 R10 K23 ["LogImpression"]
       98 GETTABLEKS                       R11 R1 K24 ["OnExpanded"]
      100 SETTABLEKS                       R11 R10 K24 ["OnExpanded"]
      102 GETTABLEKS                       R11 R1 K25 ["OnAssetPreviewButtonClicked"]
      104 SETTABLEKS                       R11 R10 K25 ["OnAssetPreviewButtonClicked"]
      106 GETTABLEKS                       R11 R1 K26 ["ParentAbsoluteSize"]
      108 SETTABLEKS                       R11 R10 K26 ["ParentAbsoluteSize"]
      110 GETTABLEKS                       R11 R1 K27 ["TryOpenAssetConfig"]
      112 SETTABLEKS                       R11 R10 K27 ["TryOpenAssetConfig"]
      114 CALL                             R9 1 -1
      115 RETURN                           R9 -1

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R10 0
        1 GETUPVAL                         R11 1
        2 MOVE                             R12 R0
        3 MOVE                             R13 R1
        4 MOVE                             R14 R2
        5 MOVE                             R15 R3
        6 MOVE                             R16 R4
        7 MOVE                             R17 R5
        8 MOVE                             R18 R6
        9 MOVE                             R19 R7
       10 MOVE                             R20 R8
       11 MOVE                             R21 R9
       12 CALL                             R11 10 -1
       13 CALL                             R10 -1 0
       14 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R1 K2 [{"searchWithOptions", "purchaseAsset"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["searchWithOptions"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["purchaseAsset"]
       11 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

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
       31 GETTABLEKS                       R6 R6 K12 ["HoverArea"]
       33 GETTABLEKS                       R7 R4 K13 ["Wrappers"]
       35 GETTABLEKS                       R7 R7 K14 ["withAbsoluteSizeAndPosition"]
       37 GETTABLEKS                       R8 R0 K15 ["Src"]
       39 GETTABLEKS                       R8 R8 K16 ["Util"]
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R8 K17 ["Constants"]
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R10 R4 K18 ["ContextServices"]
       48 GETTABLEKS                       R11 R10 K19 ["withContext"]
       50 GETIMPORT                        R12 K6 [require]
       52 GETTABLEKS                       R13 R0 K15 ["Src"]
       54 GETTABLEKS                       R13 R13 K16 ["Util"]
       56 GETTABLEKS                       R13 R13 K20 ["Analytics"]
       58 GETTABLEKS                       R13 R13 K20 ["Analytics"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K6 [require]
       63 GETTABLEKS                       R14 R0 K15 ["Src"]
       65 GETTABLEKS                       R14 R14 K21 ["Components"]
       67 GETTABLEKS                       R14 R14 K22 ["AssetLogicWrapper"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K6 [require]
       72 GETTABLEKS                       R15 R8 K20 ["Analytics"]
       74 GETTABLEKS                       R15 R15 K23 ["AssetAnalyticsContextItem"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K6 [require]
       79 GETTABLEKS                       R16 R0 K15 ["Src"]
       81 GETTABLEKS                       R16 R16 K24 ["Networking"]
       83 GETTABLEKS                       R16 R16 K25 ["Requests"]
       85 GETTABLEKS                       R16 R16 K26 ["SearchWithOptions"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K6 [require]
       90 GETTABLEKS                       R17 R0 K15 ["Src"]
       92 GETTABLEKS                       R17 R17 K18 ["ContextServices"]
       94 GETTABLEKS                       R17 R17 K27 ["Settings"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R18 R0 K15 ["Src"]
      101 GETTABLEKS                       R18 R18 K18 ["ContextServices"]
      103 GETTABLEKS                       R18 R18 K28 ["NetworkContext"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETTABLEKS                       R19 R0 K15 ["Src"]
      110 GETTABLEKS                       R19 R19 K24 ["Networking"]
      112 GETTABLEKS                       R19 R19 K25 ["Requests"]
      114 GETTABLEKS                       R19 R19 K29 ["PurchaseAssetRequest"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K6 [require]
      119 GETTABLEKS                       R20 R0 K15 ["Src"]
      121 GETTABLEKS                       R20 R20 K21 ["Components"]
      123 GETTABLEKS                       R20 R20 K30 ["ItemRow"]
      125 GETTABLEKS                       R20 R20 K30 ["ItemRow"]
      127 CALL                             R19 1 1
      128 GETIMPORT                        R20 K6 [require]
      130 GETTABLEKS                       R21 R0 K15 ["Src"]
      132 GETTABLEKS                       R21 R21 K21 ["Components"]
      134 GETTABLEKS                       R21 R21 K31 ["Audio"]
      136 GETTABLEKS                       R21 R21 K32 ["AudioRowExpandedContent"]
      138 CALL                             R20 1 1
      139 GETIMPORT                        R21 K6 [require]
      141 GETTABLEKS                       R22 R0 K15 ["Src"]
      143 GETTABLEKS                       R22 R22 K16 ["Util"]
      145 GETTABLEKS                       R22 R22 K33 ["Images"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K6 [require]
      150 GETTABLEKS                       R23 R0 K15 ["Src"]
      152 GETTABLEKS                       R23 R23 K34 ["Models"]
      154 GETTABLEKS                       R23 R23 K35 ["AssetInfo"]
      156 CALL                             R22 1 1
      157 GETIMPORT                        R23 K6 [require]
      159 GETTABLEKS                       R24 R0 K15 ["Src"]
      161 GETTABLEKS                       R24 R24 K36 ["Types"]
      163 GETTABLEKS                       R24 R24 K37 ["Category"]
      165 CALL                             R23 1 1
      166 GETIMPORT                        R24 K6 [require]
      168 GETTABLEKS                       R25 R0 K15 ["Src"]
      170 GETTABLEKS                       R25 R25 K21 ["Components"]
      172 GETTABLEKS                       R25 R25 K31 ["Audio"]
      174 GETTABLEKS                       R25 R25 K38 ["GetAudioTableSizes"]
      176 CALL                             R24 1 1
      177 GETIMPORT                        R25 K6 [require]
      179 GETTABLEKS                       R26 R0 K15 ["Src"]
      181 GETTABLEKS                       R26 R26 K16 ["Util"]
      183 GETTABLEKS                       R26 R26 K39 ["SharedFlags"]
      185 GETTABLEKS                       R26 R26 K40 ["getFFlagToolboxRefactorAudioConstantsForItemRow"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K6 [require]
      190 GETTABLEKS                       R27 R0 K15 ["Src"]
      192 GETTABLEKS                       R27 R27 K16 ["Util"]
      194 GETTABLEKS                       R27 R27 K39 ["SharedFlags"]
      196 GETTABLEKS                       R27 R27 K41 ["getFFlagToolboxAudioRemoveProductId"]
      198 CALL                             R26 1 1
      199 GETTABLEKS                       R27 R2 K42 ["PureComponent"]
      201 LOADK                            R29 K43 ["AudioRow"]
      202 NAMECALL                         R27 R27 K44 ["extend"]
      204 CALL                             R27 2 1
      205 DUPCLOSURE                       R28 K45 [PROTO_0]
      206 SETGLOBAL                        R28 K46 ["secondsToMinuteString"]
      208 DUPTABLE                         R28 K50 [{["Artist"] = "---", ["MusicAlbum"] = "---"}]
      209 DUPCLOSURE                       R29 K51 [PROTO_1]
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R28
      212 SETGLOBAL                        R29 K52 ["audioDetailsWithDefaults"]
      214 DUPCLOSURE                       R29 K53 [PROTO_25]
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R9
      217 CAPTURE                          VAL R24
      218 CAPTURE                          VAL R25
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R2
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R20
      224 SETTABLEKS                       R29 R27 K54 ["init"]
      226 DUPCLOSURE                       R29 K55 [PROTO_26]
      227 SETTABLEKS                       R29 R27 K56 ["didUpdate"]
      229 DUPCLOSURE                       R29 K57 [PROTO_27]
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R9
      233 SETTABLEKS                       R29 R27 K58 ["render"]
      235 MOVE                             R29 R11
      236 DUPTABLE                         R30 K64 [{"AssetAnalytics", "Stylizer", "Localization", "Plugin", "Settings", "Network"}]
      237 SETTABLEKS                       R14 R30 K59 ["AssetAnalytics"]
      239 GETTABLEKS                       R31 R10 K60 ["Stylizer"]
      241 SETTABLEKS                       R31 R30 K60 ["Stylizer"]
      243 GETTABLEKS                       R31 R10 K61 ["Localization"]
      245 SETTABLEKS                       R31 R30 K61 ["Localization"]
      247 GETTABLEKS                       R31 R10 K62 ["Plugin"]
      249 SETTABLEKS                       R31 R30 K62 ["Plugin"]
      251 SETTABLEKS                       R16 R30 K27 ["Settings"]
      253 SETTABLEKS                       R17 R30 K63 ["Network"]
      255 CALL                             R29 1 1
      256 MOVE                             R30 R27
      257 CALL                             R29 1 1
      258 MOVE                             R27 R29
      259 DUPCLOSURE                       R29 K65 [PROTO_28]
      260 DUPCLOSURE                       R30 K66 [PROTO_31]
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R18
      263 GETTABLEKS                       R31 R3 K67 ["connect"]
      265 MOVE                             R32 R29
      266 MOVE                             R33 R30
      267 CALL                             R31 2 1
      268 MOVE                             R32 R27
      269 CALL                             R31 1 1
      270 MOVE                             R27 R31
      271 MOVE                             R31 R7
      272 MOVE                             R32 R27
      273 CALL                             R31 1 1
      274 MOVE                             R27 R31
      275 NEWCLOSURE                       R31 P7
      276 CAPTURE                          VAL R2
      277 CAPTURE                          REF R27
      278 SETGLOBAL                        R31 K68 ["TypedAudioRow"]
      280 DUPTABLE                         R31 K71 [{"Component", "Generator"}]
      281 SETTABLEKS                       R27 R31 K69 ["Component"]
      283 GETGLOBAL                        R32 K68 ["TypedAudioRow"]
      285 SETTABLEKS                       R32 R31 K70 ["Generator"]
      287 CLOSEUPVALS                      R27
      288 RETURN                           R31 1
