PROTO_0:
  DUPTABLE R1 K3 [{"Asset", "AudioDetails", "Creator"}]
  DUPTABLE R2 K11 [{"Id", "Name", "TypeId", "IsEndorsed", "Description", "Duration", "HasScripts"}]
  SETTABLEKS R0 R2 K4 ["Id"]
  LOADK R4 K12 ["Audio "]
  MOVE R5 R0
  CONCAT R3 R4 R5
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADN R3 10
  SETTABLEKS R3 R2 K6 ["TypeId"]
  LOADB R3 0
  SETTABLEKS R3 R2 K7 ["IsEndorsed"]
  LOADK R3 K13 ["High hat with various percussion sounds. Loud crashes."]
  SETTABLEKS R3 R2 K8 ["Description"]
  LOADK R3 K14 ["128"]
  SETTABLEKS R3 R2 K9 ["Duration"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["HasScripts"]
  SETTABLEKS R2 R1 K0 ["Asset"]
  DUPTABLE R2 K18 [{"Type", "SoundEffectCategory", "SoundEffectSubcategory"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K19 ["SOUND_EFFECTS"]
  GETTABLEKS R3 R4 K20 ["name"]
  SETTABLEKS R3 R2 K15 ["Type"]
  LOADK R3 K21 ["Instrument"]
  SETTABLEKS R3 R2 K16 ["SoundEffectCategory"]
  LOADK R3 K22 ["Drums"]
  SETTABLEKS R3 R2 K17 ["SoundEffectSubcategory"]
  SETTABLEKS R2 R1 K1 ["AudioDetails"]
  DUPTABLE R2 K23 [{"Id", "Name", "Type"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Id"]
  LOADK R3 K24 ["Rolbox"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADK R3 K25 ["User"]
  SETTABLEKS R3 R2 K15 ["Type"]
  SETTABLEKS R2 R1 K2 ["Creator"]
  RETURN R1 1

PROTO_1:
  LOADK R3 K0 ["%s+"]
  LOADK R4 K1 ["-"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 1
  NAMECALL R1 R1 K3 ["lower"]
  CALL R1 1 1
  DUPTABLE R2 K14 [{"displayName", "name", "children", "childCount", "index", "path", "searchKeywords", "queryParams", "thumbnail", "hidden"}]
  SETTABLEKS R0 R2 K4 ["displayName"]
  SETTABLEKS R1 R2 K5 ["name"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["children"]
  LOADN R3 0
  SETTABLEKS R3 R2 K7 ["childCount"]
  LOADN R3 0
  SETTABLEKS R3 R2 K8 ["index"]
  NEWTABLE R3 0 1
  MOVE R4 R1
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K9 ["path"]
  SETTABLEKS R1 R2 K10 ["searchKeywords"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K11 ["queryParams"]
  DUPTABLE R3 K17 [{"assetId", "backgroundColor"}]
  LOADN R4 255
  SETTABLEKS R4 R3 K15 ["assetId"]
  LOADK R4 K18 ["#fff"]
  SETTABLEKS R4 R3 K16 ["backgroundColor"]
  SETTABLEKS R3 R2 K12 ["thumbnail"]
  LOADB R3 0
  SETTABLEKS R3 R2 K13 ["hidden"]
  RETURN R2 1

PROTO_2:
  LOADK R4 K0 ["%s+"]
  LOADK R5 K1 ["-"]
  NAMECALL R2 R0 K2 ["gsub"]
  CALL R2 3 1
  NAMECALL R2 R2 K3 ["lower"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createMockSubcategory"]
  LOADK R4 K5 ["Genres"]
  CALL R3 1 1
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R3 K6 ["children"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["createMockSubcategory"]
  MOVE R11 R8
  CALL R10 1 1
  SETTABLE R10 R9 R8
  FORGLOOP R4 2 [-9]
  DUPTABLE R4 K8 [{"Section"}]
  DUPTABLE R5 K12 [{"displayName", "name", "subcategory"}]
  SETTABLEKS R0 R5 K9 ["displayName"]
  SETTABLEKS R2 R5 K10 ["name"]
  SETTABLEKS R3 R5 K11 ["subcategory"]
  SETTABLEKS R5 R4 K7 ["Section"]
  RETURN R4 1

PROTO_3:
  LOADK R3 K0 ["%s+"]
  LOADK R4 K1 ["-"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 1
  NAMECALL R1 R1 K3 ["lower"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  LOADN R5 1
  LOADN R3 10
  LOADN R4 1
  FORNPREP R3
  MOVE R7 R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["createAudioInfo"]
  MOVE R9 R5
  CALL R8 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R6 K7 [table.insert]
  CALL R6 -1 0
  FORNLOOP R3
  DUPTABLE R3 K10 [{"ResultsState", "Section"}]
  DUPTABLE R4 K15 [{"assetIds", "assetMap", "assets", "loading"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["assetIds"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K12 ["assetMap"]
  SETTABLEKS R2 R4 K13 ["assets"]
  LOADB R5 0
  SETTABLEKS R5 R4 K14 ["loading"]
  SETTABLEKS R4 R3 K8 ["ResultsState"]
  DUPTABLE R4 K18 [{"displayName", "name"}]
  SETTABLEKS R0 R4 K16 ["displayName"]
  SETTABLEKS R1 R4 K17 ["name"]
  SETTABLEKS R4 R3 K9 ["Section"]
  RETURN R3 1

PROTO_4:
  NEWTABLE R0 0 0
  LOADN R3 1
  LOADN R1 5
  LOADN R2 1
  FORNPREP R1
  MOVE R5 R0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["createAudioInfo"]
  MOVE R7 R3
  CALL R6 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K3 [table.insert]
  CALL R4 -1 0
  FORNLOOP R1
  DUPTABLE R1 K6 [{"ResultsState", "Section"}]
  DUPTABLE R2 K11 [{"assetIds", "assetMap", "assets", "loading"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["assetIds"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K8 ["assetMap"]
  SETTABLEKS R0 R2 K9 ["assets"]
  LOADB R3 0
  SETTABLEKS R3 R2 K10 ["loading"]
  SETTABLEKS R2 R1 K4 ["ResultsState"]
  DUPTABLE R2 K14 [{"displayName", "name"}]
  LOADK R3 K15 ["Scene Suggestions"]
  SETTABLEKS R3 R2 K12 ["displayName"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K16 ["CONTEXTUAL_RECOMMENDATIONS_HOME_CONFIG_SECTION_NAME"]
  SETTABLEKS R3 R2 K13 ["name"]
  SETTABLEKS R2 R1 K5 ["Section"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Models"]
  GETTABLEKS R2 R3 K8 ["AssetInfo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K9 ["Types"]
  GETTABLEKS R3 R4 K10 ["Category"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Core"]
  GETTABLEKS R5 R6 K9 ["Types"]
  GETTABLEKS R4 R5 K11 ["HomeTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K9 ["Types"]
  GETTABLEKS R5 R6 K12 ["AudioTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Core"]
  GETTABLEKS R7 R8 K13 ["Util"]
  GETTABLEKS R6 R7 K14 ["Constants"]
  CALL R5 1 1
  NEWTABLE R6 8 0
  NEWTABLE R7 0 11
  LOADK R8 K15 ["Alarm"]
  LOADK R9 K16 ["Explsion"]
  LOADK R10 K17 ["Car"]
  LOADK R11 K18 ["Horror"]
  LOADK R12 K19 ["Guns"]
  LOADK R13 K20 ["Animal"]
  LOADK R14 K21 ["User Interface"]
  LOADK R15 K22 ["Cartoon"]
  LOADK R16 K23 ["Industrial"]
  LOADK R17 K24 ["City"]
  LOADK R18 K25 ["Birds"]
  SETLIST R7 R8 11 [1]
  SETTABLEKS R7 R6 K26 ["MOCK_CATEGORIES"]
  NEWTABLE R7 0 11
  LOADK R8 K27 ["Metal"]
  LOADK R9 K28 ["Electronic"]
  LOADK R10 K29 ["Beats"]
  LOADK R11 K30 ["Ambient"]
  LOADK R12 K31 ["Classical"]
  LOADK R13 K32 ["Jazz"]
  LOADK R14 K33 ["World"]
  LOADK R15 K34 ["Holiday"]
  LOADK R16 K35 ["Acoustic"]
  LOADK R17 K36 ["Funk"]
  LOADK R18 K37 ["Lofi"]
  SETLIST R7 R8 11 [1]
  SETTABLEKS R7 R6 K38 ["MOCK_GENRES"]
  NEWTABLE R7 0 12
  LOADK R8 K39 ["Exciting"]
  LOADK R9 K40 ["Chill"]
  LOADK R10 K41 ["Suspenseful"]
  LOADK R11 K42 ["Sad"]
  LOADK R12 K43 ["Hopeful"]
  LOADK R13 K44 ["Angry"]
  LOADK R14 K45 ["Scary"]
  LOADK R15 K46 ["Happy"]
  LOADK R16 K47 ["Easy Listening"]
  LOADK R17 K48 ["Dark"]
  LOADK R18 K49 ["Trending"]
  LOADK R19 K50 ["Essential"]
  SETLIST R7 R8 12 [1]
  SETTABLEKS R7 R6 K51 ["MOCK_VIBES"]
  DUPCLOSURE R7 K52 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K53 ["createAudioInfo"]
  DUPCLOSURE R7 K54 [PROTO_1]
  SETTABLEKS R7 R6 K55 ["createMockSubcategory"]
  DUPCLOSURE R7 K56 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K57 ["createMockSwimlane"]
  DUPCLOSURE R7 K58 [PROTO_3]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K59 ["createMockList"]
  DUPCLOSURE R7 K60 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K61 ["createMockContextualRecommendations"]
  RETURN R6 1
