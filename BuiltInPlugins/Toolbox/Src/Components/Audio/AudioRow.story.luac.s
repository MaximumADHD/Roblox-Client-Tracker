PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["expandedAssetId"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["None"]
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R2 K2 [{"expandedAssetId"}]
       11 SETTABLEKS                       R1 R2 K0 ["expandedAssetId"]
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R1 R1 K0 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"expandedAssetId"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["expandedAssetId"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K3 ["toggleIsExpanded"]
       11 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Insert Asset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createFragment"]
        3 DUPTABLE                         R2 K2 [{"Player"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["createElement"]
        7 LOADK                            R4 K4 ["Frame"]
        8 DUPTABLE                         R5 K7 [{"Size", "BackgroundTransparency"}]
        9 GETIMPORT                        R6 K10 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 LOADN                            R10 116
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K5 ["Size"]
       18 LOADN                            R6 1
       19 SETTABLEKS                       R6 R5 K6 ["BackgroundTransparency"]
       21 DUPTABLE                         R6 K2 [{"Player"}]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K11 ["Generator"]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K12 ["join"]
       28 GETTABLEKS                       R9 R0 K13 ["props"]
       30 DUPTABLE                         R10 K20 [{"LayoutOrder", "IsExpanded", "OnExpanded", "ParentAbsoluteSize", "CanInsertAsset", "InsertAsset"}]
       31 LOADN                            R11 1
       32 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       34 GETTABLEKS                       R15 R0 K13 ["props"]
       36 GETTABLEKS                       R14 R15 K21 ["AssetInfo"]
       38 GETTABLEKS                       R13 R14 K22 ["Asset"]
       40 GETTABLEKS                       R12 R13 K23 ["Id"]
       42 GETTABLEKS                       R14 R0 K24 ["state"]
       44 GETTABLEKS                       R13 R14 K25 ["expandedAssetId"]
       46 JUMPIFEQ                         R12 R13 ; [+2]
       48 LOADB                            R11 0 +1
       49 LOADB                            R11 1
       50 SETTABLEKS                       R11 R10 K15 ["IsExpanded"]
       52 GETTABLEKS                       R11 R0 K26 ["toggleIsExpanded"]
       54 SETTABLEKS                       R11 R10 K16 ["OnExpanded"]
       56 GETIMPORT                        R11 K28 [UDim2.fromOffset]
       58 LOADN                            R12 244
       59 LOADN                            R13 244
       60 CALL                             R11 2 1
       61 SETTABLEKS                       R11 R10 K17 ["ParentAbsoluteSize"]
       63 DUPCLOSURE                       R11 K29 [PROTO_3]
       64 SETTABLEKS                       R11 R10 K18 ["CanInsertAsset"]
       66 DUPCLOSURE                       R11 K30 [PROTO_4]
       67 SETTABLEKS                       R11 R10 K19 ["InsertAsset"]
       69 CALL                             R8 2 -1
       70 CALL                             R7 -1 1
       71 SETTABLEKS                       R7 R6 K1 ["Player"]
       73 CALL                             R3 3 1
       74 SETTABLEKS                       R3 R2 K1 ["Player"]
       76 CALL                             R1 1 -1
       77 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AssetInfo", "LayoutOrder"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 LOADN                            R7 1
       16 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AssetInfo", "LayoutOrder"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 LOADN                            R7 2
       16 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AssetInfo", "LayoutOrder"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 LOADN                            R7 1
       16 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AssetInfo", "LayoutOrder"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 LOADN                            R7 2
       16 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AssetInfo", "LayoutOrder"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 LOADN                            R7 2
       16 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AssetInfo", "LayoutOrder"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 LOADN                            R7 2
       16 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AssetInfo", "LayoutOrder"}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 LOADN                            R7 2
       16 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       21 CALL                             R0 3 -1
       22 RETURN                           R0 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R8 R0 K10 ["Src"]
       28 GETTABLEKS                       R7 R8 K11 ["Types"]
       30 GETTABLEKS                       R6 R7 K12 ["Category"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Src"]
       37 GETTABLEKS                       R8 R9 K13 ["Models"]
       39 GETTABLEKS                       R7 R8 K14 ["AssetInfo"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R9 R10 K15 ["Parent"]
       48 GETTABLEKS                       R8 R9 K16 ["AudioRow"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Stories"]
       55 GETTABLEKS                       R9 R10 K18 ["ToolboxStoryWrapper"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R2 K19 ["PureComponent"]
       60 LOADK                            R11 K20 ["AudioRowWrapper"]
       61 NAMECALL                         R9 R9 K21 ["extend"]
       63 CALL                             R9 2 1
       64 DUPTABLE                         R10 K25 [{"Asset", "AudioDetails", "Creator"}]
       65 DUPTABLE                         R11 K34 [{"Id", "Name", "AssetGenres", "TypeId", "IsEndorsed", "Description", "Duration", "HasScripts"}]
       66 LOADK                            R12 K35 [142376088]
       67 SETTABLEKS                       R12 R11 K26 ["Id"]
       69 LOADK                            R12 K36 ["Cascaded Drumming"]
       70 SETTABLEKS                       R12 R11 K27 ["Name"]
       72 LOADNIL                          R12
       73 SETTABLEKS                       R12 R11 K28 ["AssetGenres"]
       75 LOADN                            R12 10
       76 SETTABLEKS                       R12 R11 K29 ["TypeId"]
       78 LOADB                            R12 0
       79 SETTABLEKS                       R12 R11 K30 ["IsEndorsed"]
       81 LOADK                            R12 K37 ["High hat with various percussion sounds. Loud crashes."]
       82 SETTABLEKS                       R12 R11 K31 ["Description"]
       84 LOADK                            R12 K38 ["128"]
       85 SETTABLEKS                       R12 R11 K32 ["Duration"]
       87 LOADB                            R12 0
       88 SETTABLEKS                       R12 R11 K33 ["HasScripts"]
       90 SETTABLEKS                       R11 R10 K22 ["Asset"]
       92 DUPTABLE                         R11 K43 [{"Artist", "Type", "SoundEffectCategory", "SoundEffectSubcategory"}]
       93 LOADK                            R12 K44 ["OnlyTwentyCharacters"]
       94 SETTABLEKS                       R12 R11 K39 ["Artist"]
       96 GETTABLEKS                       R13 R5 K45 ["SOUND_EFFECTS"]
       98 GETTABLEKS                       R12 R13 K46 ["name"]
      100 SETTABLEKS                       R12 R11 K40 ["Type"]
      102 LOADK                            R12 K47 ["instruments"]
      103 SETTABLEKS                       R12 R11 K41 ["SoundEffectCategory"]
      105 LOADK                            R12 K48 ["Drum"]
      106 SETTABLEKS                       R12 R11 K42 ["SoundEffectSubcategory"]
      108 SETTABLEKS                       R11 R10 K23 ["AudioDetails"]
      110 DUPTABLE                         R11 K49 [{"Id", "Name", "Type"}]
      111 LOADN                            R12 1
      112 SETTABLEKS                       R12 R11 K26 ["Id"]
      114 LOADK                            R12 K50 ["Rolbox"]
      115 SETTABLEKS                       R12 R11 K27 ["Name"]
      117 LOADK                            R12 K51 ["User"]
      118 SETTABLEKS                       R12 R11 K40 ["Type"]
      120 SETTABLEKS                       R11 R10 K24 ["Creator"]
      122 DUPTABLE                         R11 K25 [{"Asset", "AudioDetails", "Creator"}]
      123 DUPTABLE                         R12 K34 [{"Id", "Name", "AssetGenres", "TypeId", "IsEndorsed", "Description", "Duration", "HasScripts"}]
      124 LOADK                            R13 K35 [142376088]
      125 SETTABLEKS                       R13 R12 K26 ["Id"]
      127 LOADK                            R13 K36 ["Cascaded Drumming"]
      128 SETTABLEKS                       R13 R12 K27 ["Name"]
      130 LOADNIL                          R13
      131 SETTABLEKS                       R13 R12 K28 ["AssetGenres"]
      133 LOADN                            R13 10
      134 SETTABLEKS                       R13 R12 K29 ["TypeId"]
      136 LOADB                            R13 0
      137 SETTABLEKS                       R13 R12 K30 ["IsEndorsed"]
      139 LOADK                            R13 K37 ["High hat with various percussion sounds. Loud crashes."]
      140 SETTABLEKS                       R13 R12 K31 ["Description"]
      142 LOADK                            R13 K52 ["508"]
      143 SETTABLEKS                       R13 R12 K32 ["Duration"]
      145 LOADB                            R13 0
      146 SETTABLEKS                       R13 R12 K33 ["HasScripts"]
      148 SETTABLEKS                       R12 R11 K22 ["Asset"]
      150 DUPTABLE                         R12 K55 [{"Type", "MusicGenre", "Artist", "MusicAlbum"}]
      151 GETTABLEKS                       R14 R5 K56 ["MUSIC"]
      153 GETTABLEKS                       R13 R14 K46 ["name"]
      155 SETTABLEKS                       R13 R12 K40 ["Type"]
      157 LOADK                            R13 K57 ["rock"]
      158 SETTABLEKS                       R13 R12 K53 ["MusicGenre"]
      160 LOADK                            R13 K39 ["Artist"]
      161 SETTABLEKS                       R13 R12 K39 ["Artist"]
      163 LOADK                            R13 K58 ["asdf"]
      164 SETTABLEKS                       R13 R12 K54 ["MusicAlbum"]
      166 SETTABLEKS                       R12 R11 K23 ["AudioDetails"]
      168 DUPTABLE                         R12 K49 [{"Id", "Name", "Type"}]
      169 LOADN                            R13 1
      170 SETTABLEKS                       R13 R12 K26 ["Id"]
      172 LOADK                            R13 K50 ["Rolbox"]
      173 SETTABLEKS                       R13 R12 K27 ["Name"]
      175 LOADK                            R13 K51 ["User"]
      176 SETTABLEKS                       R13 R12 K40 ["Type"]
      178 SETTABLEKS                       R12 R11 K24 ["Creator"]
      180 DUPTABLE                         R12 K59 [{"Asset"}]
      181 DUPTABLE                         R13 K60 [{"Id", "Name", "AssetGenres", "TypeId", "IsEndorsed", "Description", "HasScripts"}]
      182 LOADK                            R14 K35 [142376088]
      183 SETTABLEKS                       R14 R13 K26 ["Id"]
      185 LOADK                            R14 K36 ["Cascaded Drumming"]
      186 SETTABLEKS                       R14 R13 K27 ["Name"]
      188 LOADNIL                          R14
      189 SETTABLEKS                       R14 R13 K28 ["AssetGenres"]
      191 LOADN                            R14 10
      192 SETTABLEKS                       R14 R13 K29 ["TypeId"]
      194 LOADB                            R14 0
      195 SETTABLEKS                       R14 R13 K30 ["IsEndorsed"]
      197 LOADK                            R14 K37 ["High hat with various percussion sounds. Loud crashes."]
      198 SETTABLEKS                       R14 R13 K31 ["Description"]
      200 LOADB                            R14 0
      201 SETTABLEKS                       R14 R13 K33 ["HasScripts"]
      203 SETTABLEKS                       R13 R12 K22 ["Asset"]
      205 DUPTABLE                         R13 K61 [{"Asset", "AudioDetails"}]
      206 DUPTABLE                         R14 K60 [{"Id", "Name", "AssetGenres", "TypeId", "IsEndorsed", "Description", "HasScripts"}]
      207 LOADK                            R15 K35 [142376088]
      208 SETTABLEKS                       R15 R14 K26 ["Id"]
      210 LOADK                            R15 K36 ["Cascaded Drumming"]
      211 SETTABLEKS                       R15 R14 K27 ["Name"]
      213 LOADNIL                          R15
      214 SETTABLEKS                       R15 R14 K28 ["AssetGenres"]
      216 LOADN                            R15 10
      217 SETTABLEKS                       R15 R14 K29 ["TypeId"]
      219 LOADB                            R15 0
      220 SETTABLEKS                       R15 R14 K30 ["IsEndorsed"]
      222 LOADK                            R15 K62 [""]
      223 SETTABLEKS                       R15 R14 K31 ["Description"]
      225 LOADB                            R15 0
      226 SETTABLEKS                       R15 R14 K33 ["HasScripts"]
      228 SETTABLEKS                       R14 R13 K22 ["Asset"]
      230 DUPTABLE                         R14 K63 [{"Type"}]
      231 GETTABLEKS                       R16 R5 K56 ["MUSIC"]
      233 GETTABLEKS                       R15 R16 K46 ["name"]
      235 SETTABLEKS                       R15 R14 K40 ["Type"]
      237 SETTABLEKS                       R14 R13 K23 ["AudioDetails"]
      239 DUPTABLE                         R14 K61 [{"Asset", "AudioDetails"}]
      240 DUPTABLE                         R15 K60 [{"Id", "Name", "AssetGenres", "TypeId", "IsEndorsed", "Description", "HasScripts"}]
      241 LOADK                            R16 K35 [142376088]
      242 SETTABLEKS                       R16 R15 K26 ["Id"]
      244 LOADK                            R16 K36 ["Cascaded Drumming"]
      245 SETTABLEKS                       R16 R15 K27 ["Name"]
      247 LOADNIL                          R16
      248 SETTABLEKS                       R16 R15 K28 ["AssetGenres"]
      250 LOADN                            R16 10
      251 SETTABLEKS                       R16 R15 K29 ["TypeId"]
      253 LOADB                            R16 0
      254 SETTABLEKS                       R16 R15 K30 ["IsEndorsed"]
      256 LOADK                            R16 K62 [""]
      257 SETTABLEKS                       R16 R15 K31 ["Description"]
      259 LOADB                            R16 0
      260 SETTABLEKS                       R16 R15 K33 ["HasScripts"]
      262 SETTABLEKS                       R15 R14 K22 ["Asset"]
      264 DUPTABLE                         R15 K63 [{"Type"}]
      265 GETTABLEKS                       R17 R5 K45 ["SOUND_EFFECTS"]
      267 GETTABLEKS                       R16 R17 K46 ["name"]
      269 SETTABLEKS                       R16 R15 K40 ["Type"]
      271 SETTABLEKS                       R15 R14 K23 ["AudioDetails"]
      273 DUPCLOSURE                       R15 K64 [PROTO_2]
      274 CAPTURE                          VAL R2
      275 SETTABLEKS                       R15 R9 K65 ["init"]
      277 DUPCLOSURE                       R15 K66 [PROTO_5]
      278 CAPTURE                          VAL R2
      279 CAPTURE                          VAL R7
      280 CAPTURE                          VAL R4
      281 SETTABLEKS                       R15 R9 K67 ["render"]
      283 DUPTABLE                         R15 K70 [{"summary", "stories"}]
      284 LOADK                            R16 K71 ["Audio Row"]
      285 SETTABLEKS                       R16 R15 K68 ["summary"]
      287 NEWTABLE                         R16 0 7
      289 DUPTABLE                         R17 K73 [{"name", "story"}]
      290 LOADK                            R18 K74 ["Soundeffect Odd"]
      291 SETTABLEKS                       R18 R17 K46 ["name"]
      293 DUPCLOSURE                       R18 K75 [PROTO_6]
      294 CAPTURE                          VAL R2
      295 CAPTURE                          VAL R8
      296 CAPTURE                          VAL R9
      297 CAPTURE                          VAL R10
      298 SETTABLEKS                       R18 R17 K72 ["story"]
      300 DUPTABLE                         R18 K73 [{"name", "story"}]
      301 LOADK                            R19 K76 ["Soundeffect Even"]
      302 SETTABLEKS                       R19 R18 K46 ["name"]
      304 DUPCLOSURE                       R19 K77 [PROTO_7]
      305 CAPTURE                          VAL R2
      306 CAPTURE                          VAL R8
      307 CAPTURE                          VAL R9
      308 CAPTURE                          VAL R10
      309 SETTABLEKS                       R19 R18 K72 ["story"]
      311 DUPTABLE                         R19 K73 [{"name", "story"}]
      312 LOADK                            R20 K78 ["Music Odd"]
      313 SETTABLEKS                       R20 R19 K46 ["name"]
      315 DUPCLOSURE                       R20 K79 [PROTO_8]
      316 CAPTURE                          VAL R2
      317 CAPTURE                          VAL R8
      318 CAPTURE                          VAL R9
      319 CAPTURE                          VAL R11
      320 SETTABLEKS                       R20 R19 K72 ["story"]
      322 DUPTABLE                         R20 K73 [{"name", "story"}]
      323 LOADK                            R21 K80 ["Music Even"]
      324 SETTABLEKS                       R21 R20 K46 ["name"]
      326 DUPCLOSURE                       R21 K81 [PROTO_9]
      327 CAPTURE                          VAL R2
      328 CAPTURE                          VAL R8
      329 CAPTURE                          VAL R9
      330 CAPTURE                          VAL R11
      331 SETTABLEKS                       R21 R20 K72 ["story"]
      333 DUPTABLE                         R21 K73 [{"name", "story"}]
      334 LOADK                            R22 K82 ["Empty Music"]
      335 SETTABLEKS                       R22 R21 K46 ["name"]
      337 DUPCLOSURE                       R22 K83 [PROTO_10]
      338 CAPTURE                          VAL R2
      339 CAPTURE                          VAL R8
      340 CAPTURE                          VAL R9
      341 CAPTURE                          VAL R13
      342 SETTABLEKS                       R22 R21 K72 ["story"]
      344 DUPTABLE                         R22 K73 [{"name", "story"}]
      345 LOADK                            R23 K84 ["Empty SoundEffect"]
      346 SETTABLEKS                       R23 R22 K46 ["name"]
      348 DUPCLOSURE                       R23 K85 [PROTO_11]
      349 CAPTURE                          VAL R2
      350 CAPTURE                          VAL R8
      351 CAPTURE                          VAL R9
      352 CAPTURE                          VAL R14
      353 SETTABLEKS                       R23 R22 K72 ["story"]
      355 DUPTABLE                         R23 K73 [{"name", "story"}]
      356 LOADK                            R24 K86 ["Uncategorized"]
      357 SETTABLEKS                       R24 R23 K46 ["name"]
      359 DUPCLOSURE                       R24 K87 [PROTO_12]
      360 CAPTURE                          VAL R2
      361 CAPTURE                          VAL R8
      362 CAPTURE                          VAL R9
      363 CAPTURE                          VAL R12
      364 SETTABLEKS                       R24 R23 K72 ["story"]
      366 SETLIST                          R16 R17 7 [1]
      368 SETTABLEKS                       R16 R15 K69 ["stories"]
      370 RETURN                           R15 1
