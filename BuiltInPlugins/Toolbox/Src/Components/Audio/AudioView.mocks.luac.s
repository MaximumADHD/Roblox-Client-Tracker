PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Asset", "AudioDetails", "Creator"}]
        1 DUPTABLE                         R2 K15 [{["Id"], ["Name"], ["TypeId"] = 10, ["IsEndorsed"] = False, ["Description"] = "High hat with various percussion sounds. Loud crashes.", ["Duration"] = "128", ["HasScripts"] = False}]
        2 SETTABLEKS                       R0 R2 K4 ["Id"]
        4 LOADK                            R4 K16 ["Audio "]
        5 MOVE                             R5 R0
        6 CONCAT                           R3 R4 R5
        7 SETTABLEKS                       R3 R2 K5 ["Name"]
        9 SETTABLEKS                       R2 R1 K0 ["Asset"]
       11 DUPTABLE                         R2 K22 [{["Type"], ["SoundEffectCategory"] = "Instrument", ["SoundEffectSubcategory"] = "Drums"}]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K23 ["SOUND_EFFECTS"]
       15 GETTABLEKS                       R3 R3 K24 ["name"]
       17 SETTABLEKS                       R3 R2 K17 ["Type"]
       19 SETTABLEKS                       R2 R1 K1 ["AudioDetails"]
       21 DUPTABLE                         R2 K28 [{["Id"] = 1, ["Name"] = "Rolbox", ["Type"] = "User"}]
       22 SETTABLEKS                       R2 R1 K2 ["Creator"]
       24 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["%s+"]
        1 LOADK                            R4 K1 ["-"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 NAMECALL                         R1 R1 K3 ["lower"]
        7 CALL                             R1 1 1
        8 DUPTABLE                         R2 K16 [{["displayName"], ["name"], ["children"], ["childCount"] = 0, ["index"] = 0, ["path"], ["searchKeywords"], ["queryParams"], ["thumbnail"], ["hidden"] = False}]
        9 SETTABLEKS                       R0 R2 K4 ["displayName"]
       11 SETTABLEKS                       R1 R2 K5 ["name"]
       13 NEWTABLE                         R3 0 0
       15 SETTABLEKS                       R3 R2 K6 ["children"]
       17 NEWTABLE                         R3 0 1
       19 MOVE                             R4 R1
       20 SETLIST                          R3 R4 1 [1]
       22 SETTABLEKS                       R3 R2 K10 ["path"]
       24 SETTABLEKS                       R1 R2 K11 ["searchKeywords"]
       26 NEWTABLE                         R3 0 0
       28 SETTABLEKS                       R3 R2 K12 ["queryParams"]
       30 DUPTABLE                         R3 K21 [{["assetId"] = -1, ["backgroundColor"] = "#fff"}]
       31 SETTABLEKS                       R3 R2 K13 ["thumbnail"]
       33 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["%s+"]
        1 LOADK                            R5 K1 ["-"]
        2 NAMECALL                         R2 R0 K2 ["gsub"]
        4 CALL                             R2 3 1
        5 NAMECALL                         R2 R2 K3 ["lower"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K4 ["createMockSubcategory"]
       11 LOADK                            R4 K5 ["Genres"]
       12 CALL                             R3 1 1
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R3 K6 ["children"]
       19 GETUPVAL                         R10 0
       20 GETTABLEKS                       R10 R10 K4 ["createMockSubcategory"]
       22 MOVE                             R11 R8
       23 CALL                             R10 1 1
       24 SETTABLE                         R10 R9 R8
       25 FORGLOOP                         R4 2 ; [-9]
       27 DUPTABLE                         R4 K8 [{"Section"}]
       28 DUPTABLE                         R5 K12 [{"displayName", "name", "subcategory"}]
       29 SETTABLEKS                       R0 R5 K9 ["displayName"]
       31 SETTABLEKS                       R2 R5 K10 ["name"]
       33 SETTABLEKS                       R3 R5 K11 ["subcategory"]
       35 SETTABLEKS                       R5 R4 K7 ["Section"]
       37 RETURN                           R4 1

PROTO_3:
        0 LOADK                            R3 K0 ["%s+"]
        1 LOADK                            R4 K1 ["-"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 NAMECALL                         R1 R1 K3 ["lower"]
        7 CALL                             R1 1 1
        8 NEWTABLE                         R2 0 0
       10 LOADN                            R5 1
       11 LOADN                            R3 10
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 MOVE                             R7 R2
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R8 R8 K4 ["createAudioInfo"]
       18 MOVE                             R9 R5
       19 CALL                             R8 1 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R6 K7 [table.insert]
       23 CALL                             R6 -1 0
       24 FORNLOOP                         R3
       25 DUPTABLE                         R3 K10 [{"ResultsState", "Section"}]
       26 DUPTABLE                         R4 K16 [{["assetIds"], ["assetMap"], ["assets"], ["loading"] = False}]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K11 ["assetIds"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K12 ["assetMap"]
       35 SETTABLEKS                       R2 R4 K13 ["assets"]
       37 SETTABLEKS                       R4 R3 K8 ["ResultsState"]
       39 DUPTABLE                         R4 K19 [{"displayName", "name"}]
       40 SETTABLEKS                       R0 R4 K17 ["displayName"]
       42 SETTABLEKS                       R1 R4 K18 ["name"]
       44 SETTABLEKS                       R4 R3 K9 ["Section"]
       46 RETURN                           R3 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 5
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 MOVE                             R5 R0
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K0 ["createAudioInfo"]
       10 MOVE                             R7 R3
       11 CALL                             R6 1 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R4 K3 [table.insert]
       15 CALL                             R4 -1 0
       16 FORNLOOP                         R1
       17 DUPTABLE                         R1 K6 [{"ResultsState", "Section"}]
       18 DUPTABLE                         R2 K12 [{["assetIds"], ["assetMap"], ["assets"], ["loading"] = False}]
       19 NEWTABLE                         R3 0 0
       21 SETTABLEKS                       R3 R2 K7 ["assetIds"]
       23 NEWTABLE                         R3 0 0
       25 SETTABLEKS                       R3 R2 K8 ["assetMap"]
       27 SETTABLEKS                       R0 R2 K9 ["assets"]
       29 SETTABLEKS                       R2 R1 K4 ["ResultsState"]
       31 DUPTABLE                         R2 K16 [{["displayName"] = "Scene Suggestions", ["name"]}]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K17 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
       35 SETTABLEKS                       R3 R2 K15 ["name"]
       37 SETTABLEKS                       R2 R1 K5 ["Section"]
       39 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetInfo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 GETTABLEKS                       R3 R3 K10 ["Category"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Types"]
       31 GETTABLEKS                       R4 R4 K11 ["HomeTypes"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Types"]
       40 GETTABLEKS                       R5 R5 K12 ["AudioTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Util"]
       49 GETTABLEKS                       R6 R6 K14 ["Constants"]
       51 CALL                             R5 1 1
       52 NEWTABLE                         R6 8 0
       54 NEWTABLE                         R7 0 11
       56 LOADK                            R8 K15 ["Alarm"]
       57 LOADK                            R9 K16 ["Explsion"]
       58 LOADK                            R10 K17 ["Car"]
       59 LOADK                            R11 K18 ["Horror"]
       60 LOADK                            R12 K19 ["Guns"]
       61 LOADK                            R13 K20 ["Animal"]
       62 LOADK                            R14 K21 ["User Interface"]
       63 LOADK                            R15 K22 ["Cartoon"]
       64 LOADK                            R16 K23 ["Industrial"]
       65 LOADK                            R17 K24 ["City"]
       66 LOADK                            R18 K25 ["Birds"]
       67 SETLIST                          R7 R8 11 [1]
       69 SETTABLEKS                       R7 R6 K26 ["MOCK_CATEGORIES"]
       71 NEWTABLE                         R7 0 11
       73 LOADK                            R8 K27 ["Metal"]
       74 LOADK                            R9 K28 ["Electronic"]
       75 LOADK                            R10 K29 ["Beats"]
       76 LOADK                            R11 K30 ["Ambient"]
       77 LOADK                            R12 K31 ["Classical"]
       78 LOADK                            R13 K32 ["Jazz"]
       79 LOADK                            R14 K33 ["World"]
       80 LOADK                            R15 K34 ["Holiday"]
       81 LOADK                            R16 K35 ["Acoustic"]
       82 LOADK                            R17 K36 ["Funk"]
       83 LOADK                            R18 K37 ["Lofi"]
       84 SETLIST                          R7 R8 11 [1]
       86 SETTABLEKS                       R7 R6 K38 ["MOCK_GENRES"]
       88 NEWTABLE                         R7 0 12
       90 LOADK                            R8 K39 ["Exciting"]
       91 LOADK                            R9 K40 ["Chill"]
       92 LOADK                            R10 K41 ["Suspenseful"]
       93 LOADK                            R11 K42 ["Sad"]
       94 LOADK                            R12 K43 ["Hopeful"]
       95 LOADK                            R13 K44 ["Angry"]
       96 LOADK                            R14 K45 ["Scary"]
       97 LOADK                            R15 K46 ["Happy"]
       98 LOADK                            R16 K47 ["Easy Listening"]
       99 LOADK                            R17 K48 ["Dark"]
      100 LOADK                            R18 K49 ["Trending"]
      101 LOADK                            R19 K50 ["Essential"]
      102 SETLIST                          R7 R8 12 [1]
      104 SETTABLEKS                       R7 R6 K51 ["MOCK_VIBES"]
      106 DUPCLOSURE                       R7 K52 [PROTO_0]
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R7 R6 K53 ["createAudioInfo"]
      110 DUPCLOSURE                       R7 K54 [PROTO_1]
      111 SETTABLEKS                       R7 R6 K55 ["createMockSubcategory"]
      113 DUPCLOSURE                       R7 K56 [PROTO_2]
      114 CAPTURE                          VAL R6
      115 SETTABLEKS                       R7 R6 K57 ["createMockSwimlane"]
      117 DUPCLOSURE                       R7 K58 [PROTO_3]
      118 CAPTURE                          VAL R6
      119 SETTABLEKS                       R7 R6 K59 ["createMockList"]
      121 DUPCLOSURE                       R7 K60 [PROTO_4]
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R5
      124 SETTABLEKS                       R7 R6 K61 ["createMockContextualRecommendations"]
      126 RETURN                           R6 1
