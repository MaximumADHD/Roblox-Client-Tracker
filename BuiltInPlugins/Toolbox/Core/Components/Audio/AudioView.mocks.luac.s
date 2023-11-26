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
  NEWTABLE R5 8 0
  NEWTABLE R6 0 11
  LOADK R7 K13 ["Metal"]
  LOADK R8 K14 ["Electronic"]
  LOADK R9 K15 ["Beats"]
  LOADK R10 K16 ["Ambient"]
  LOADK R11 K17 ["Classical"]
  LOADK R12 K18 ["Jazz"]
  LOADK R13 K19 ["World"]
  LOADK R14 K20 ["Holiday"]
  LOADK R15 K21 ["Acoustic"]
  LOADK R16 K22 ["Funk"]
  LOADK R17 K23 ["Lofi"]
  SETLIST R6 R7 11 [1]
  SETTABLEKS R6 R5 K24 ["MOCK_GENRES"]
  NEWTABLE R6 0 12
  LOADK R7 K25 ["Exciting"]
  LOADK R8 K26 ["Chill"]
  LOADK R9 K27 ["Suspenseful"]
  LOADK R10 K28 ["Sad"]
  LOADK R11 K29 ["Hopeful"]
  LOADK R12 K30 ["Angry"]
  LOADK R13 K31 ["Scary"]
  LOADK R14 K32 ["Happy"]
  LOADK R15 K33 ["Easy Listening"]
  LOADK R16 K34 ["Dark"]
  LOADK R17 K35 ["Trending"]
  LOADK R18 K36 ["Essential"]
  SETLIST R6 R7 12 [1]
  SETTABLEKS R6 R5 K37 ["MOCK_VIBES"]
  DUPCLOSURE R6 K38 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K39 ["createAudioInfo"]
  DUPCLOSURE R6 K40 [PROTO_1]
  SETTABLEKS R6 R5 K41 ["createMockSubcategory"]
  DUPCLOSURE R6 K42 [PROTO_2]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K43 ["createMockSwimlane"]
  DUPCLOSURE R6 K44 [PROTO_3]
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K45 ["createMockList"]
  RETURN R5 1
