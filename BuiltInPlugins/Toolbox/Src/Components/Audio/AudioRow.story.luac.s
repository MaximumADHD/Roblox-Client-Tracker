PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["expandedAssetId"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["None"]
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
        0 DUPTABLE                         R1 K2 [{[1] = }]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K4 ["toggleIsExpanded"]
        8 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Insert Asset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createFragment"]
        3 DUPTABLE                         R2 K2 [{"Player"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K3 ["createElement"]
        7 LOADK                            R4 K4 ["Frame"]
        8 DUPTABLE                         R5 K8 [{["Size"], ["BackgroundTransparency"] = 1}]
        9 GETIMPORT                        R6 K11 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 LOADN                            R10 116
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K5 ["Size"]
       18 DUPTABLE                         R6 K2 [{"Player"}]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K12 ["Generator"]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K13 ["join"]
       25 GETTABLEKS                       R9 R0 K14 ["props"]
       27 DUPTABLE                         R10 K21 [{["LayoutOrder"] = 1, ["IsExpanded"], ["OnExpanded"], ["ParentAbsoluteSize"], ["CanInsertAsset"], ["InsertAsset"]}]
       28 GETTABLEKS                       R12 R0 K14 ["props"]
       30 GETTABLEKS                       R12 R12 K22 ["AssetInfo"]
       32 GETTABLEKS                       R12 R12 K23 ["Asset"]
       34 GETTABLEKS                       R12 R12 K24 ["Id"]
       36 GETTABLEKS                       R13 R0 K25 ["state"]
       38 GETTABLEKS                       R13 R13 K26 ["expandedAssetId"]
       40 JUMPIFEQ                         R12 R13 ; [+2]
       42 LOADB                            R11 0 +1
       43 LOADB                            R11 1
       44 SETTABLEKS                       R11 R10 K16 ["IsExpanded"]
       46 GETTABLEKS                       R11 R0 K27 ["toggleIsExpanded"]
       48 SETTABLEKS                       R11 R10 K17 ["OnExpanded"]
       50 GETIMPORT                        R11 K29 [UDim2.fromOffset]
       52 LOADN                            R12 500
       53 LOADN                            R13 500
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K18 ["ParentAbsoluteSize"]
       57 DUPCLOSURE                       R11 K30 [PROTO_3]
       58 SETTABLEKS                       R11 R10 K19 ["CanInsertAsset"]
       60 DUPCLOSURE                       R11 K31 [PROTO_4]
       61 SETTABLEKS                       R11 R10 K20 ["InsertAsset"]
       63 CALL                             R8 2 -1
       64 CALL                             R7 -1 1
       65 SETTABLEKS                       R7 R6 K1 ["Player"]
       67 CALL                             R3 3 1
       68 SETTABLEKS                       R3 R2 K1 ["Player"]
       70 CALL                             R1 1 -1
       71 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AssetInfo"], ["LayoutOrder"] = 1}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AssetInfo"], ["LayoutOrder"] = 2}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AssetInfo"], ["LayoutOrder"] = 1}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AssetInfo"], ["LayoutOrder"] = 2}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AssetInfo"], ["LayoutOrder"] = 2}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AssetInfo"], ["LayoutOrder"] = 2}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"AudioRow"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AssetInfo"], ["LayoutOrder"] = 2}]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R6 K3 ["AssetInfo"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K1 ["AudioRow"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Src"]
       28 GETTABLEKS                       R6 R6 K11 ["Types"]
       30 GETTABLEKS                       R6 R6 K12 ["Category"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Models"]
       39 GETTABLEKS                       R7 R7 K14 ["AssetInfo"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K15 ["Parent"]
       48 GETTABLEKS                       R8 R8 K16 ["AudioRow"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Stories"]
       55 GETTABLEKS                       R9 R9 K18 ["ToolboxStoryWrapper"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R2 K19 ["PureComponent"]
       60 LOADK                            R11 K20 ["AudioRowWrapper"]
       61 NAMECALL                         R9 R9 K21 ["extend"]
       63 CALL                             R9 2 1
       64 DUPTABLE                         R10 K25 [{"Asset", "AudioDetails", "Creator"}]
       65 DUPTABLE                         R11 K41 [{["Id"] = 142376088, ["Name"] = "Cascaded Drumming", ["AssetGenres"] = , ["TypeId"] = 10, ["IsEndorsed"] = False, ["Description"] = "High hat with various percussion sounds. Loud crashes.", ["Duration"] = "128", ["HasScripts"] = False}]
       66 SETTABLEKS                       R11 R10 K22 ["Asset"]
       68 DUPTABLE                         R11 K49 [{["Artist"] = "OnlyTwentyCharacters", ["Type"], ["SoundEffectCategory"] = "instruments", ["SoundEffectSubcategory"] = "Drum"}]
       69 GETTABLEKS                       R12 R5 K50 ["SOUND_EFFECTS"]
       71 GETTABLEKS                       R12 R12 K51 ["name"]
       73 SETTABLEKS                       R12 R11 K44 ["Type"]
       75 SETTABLEKS                       R11 R10 K23 ["AudioDetails"]
       77 DUPTABLE                         R11 K55 [{["Id"] = 1, ["Name"] = "Rolbox", ["Type"] = "User"}]
       78 SETTABLEKS                       R11 R10 K24 ["Creator"]
       80 DUPTABLE                         R11 K25 [{"Asset", "AudioDetails", "Creator"}]
       81 DUPTABLE                         R12 K57 [{["Id"] = 142376088, ["Name"] = "Cascaded Drumming", ["AssetGenres"] = , ["TypeId"] = 10, ["IsEndorsed"] = False, ["Description"] = "High hat with various percussion sounds. Loud crashes.", ["Duration"] = "508", ["HasScripts"] = False}]
       82 SETTABLEKS                       R12 R11 K22 ["Asset"]
       84 DUPTABLE                         R12 K62 [{["Type"], ["MusicGenre"] = "rock", ["Artist"] = "Artist", ["MusicAlbum"] = "asdf"}]
       85 GETTABLEKS                       R13 R5 K63 ["MUSIC"]
       87 GETTABLEKS                       R13 R13 K51 ["name"]
       89 SETTABLEKS                       R13 R12 K44 ["Type"]
       91 SETTABLEKS                       R12 R11 K23 ["AudioDetails"]
       93 DUPTABLE                         R12 K55 [{["Id"] = 1, ["Name"] = "Rolbox", ["Type"] = "User"}]
       94 SETTABLEKS                       R12 R11 K24 ["Creator"]
       96 DUPTABLE                         R12 K64 [{"Asset"}]
       97 DUPTABLE                         R13 K65 [{["Id"] = 142376088, ["Name"] = "Cascaded Drumming", ["AssetGenres"] = , ["TypeId"] = 10, ["IsEndorsed"] = False, ["Description"] = "High hat with various percussion sounds. Loud crashes.", ["HasScripts"] = False}]
       98 SETTABLEKS                       R13 R12 K22 ["Asset"]
      100 DUPTABLE                         R13 K66 [{"Asset", "AudioDetails"}]
      101 DUPTABLE                         R14 K68 [{["Id"] = 142376088, ["Name"] = "Cascaded Drumming", ["AssetGenres"] = , ["TypeId"] = 10, ["IsEndorsed"] = False, ["Description"] = "", ["HasScripts"] = False}]
      102 SETTABLEKS                       R14 R13 K22 ["Asset"]
      104 DUPTABLE                         R14 K69 [{"Type"}]
      105 GETTABLEKS                       R15 R5 K63 ["MUSIC"]
      107 GETTABLEKS                       R15 R15 K51 ["name"]
      109 SETTABLEKS                       R15 R14 K44 ["Type"]
      111 SETTABLEKS                       R14 R13 K23 ["AudioDetails"]
      113 DUPTABLE                         R14 K66 [{"Asset", "AudioDetails"}]
      114 DUPTABLE                         R15 K68 [{["Id"] = 142376088, ["Name"] = "Cascaded Drumming", ["AssetGenres"] = , ["TypeId"] = 10, ["IsEndorsed"] = False, ["Description"] = "", ["HasScripts"] = False}]
      115 SETTABLEKS                       R15 R14 K22 ["Asset"]
      117 DUPTABLE                         R15 K69 [{"Type"}]
      118 GETTABLEKS                       R16 R5 K50 ["SOUND_EFFECTS"]
      120 GETTABLEKS                       R16 R16 K51 ["name"]
      122 SETTABLEKS                       R16 R15 K44 ["Type"]
      124 SETTABLEKS                       R15 R14 K23 ["AudioDetails"]
      126 DUPCLOSURE                       R15 K70 [PROTO_2]
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R15 R9 K71 ["init"]
      130 DUPCLOSURE                       R15 K72 [PROTO_5]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R4
      134 SETTABLEKS                       R15 R9 K73 ["render"]
      136 DUPTABLE                         R15 K77 [{["summary"] = "Audio Row", ["stories"]}]
      137 NEWTABLE                         R16 0 7
      139 DUPTABLE                         R17 K80 [{["name"] = "Soundeffect Odd", ["story"]}]
      140 DUPCLOSURE                       R18 K81 [PROTO_6]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R10
      145 SETTABLEKS                       R18 R17 K79 ["story"]
      147 DUPTABLE                         R18 K83 [{["name"] = "Soundeffect Even", ["story"]}]
      148 DUPCLOSURE                       R19 K84 [PROTO_7]
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R10
      153 SETTABLEKS                       R19 R18 K79 ["story"]
      155 DUPTABLE                         R19 K86 [{["name"] = "Music Odd", ["story"]}]
      156 DUPCLOSURE                       R20 K87 [PROTO_8]
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R11
      161 SETTABLEKS                       R20 R19 K79 ["story"]
      163 DUPTABLE                         R20 K89 [{["name"] = "Music Even", ["story"]}]
      164 DUPCLOSURE                       R21 K90 [PROTO_9]
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R11
      169 SETTABLEKS                       R21 R20 K79 ["story"]
      171 DUPTABLE                         R21 K92 [{["name"] = "Empty Music", ["story"]}]
      172 DUPCLOSURE                       R22 K93 [PROTO_10]
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R13
      177 SETTABLEKS                       R22 R21 K79 ["story"]
      179 DUPTABLE                         R22 K95 [{["name"] = "Empty SoundEffect", ["story"]}]
      180 DUPCLOSURE                       R23 K96 [PROTO_11]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R14
      185 SETTABLEKS                       R23 R22 K79 ["story"]
      187 DUPTABLE                         R23 K98 [{["name"] = "Uncategorized", ["story"]}]
      188 DUPCLOSURE                       R24 K99 [PROTO_12]
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R12
      193 SETTABLEKS                       R24 R23 K79 ["story"]
      195 SETLIST                          R16 R17 7 [1]
      197 SETTABLEKS                       R16 R15 K76 ["stories"]
      199 RETURN                           R15 1
