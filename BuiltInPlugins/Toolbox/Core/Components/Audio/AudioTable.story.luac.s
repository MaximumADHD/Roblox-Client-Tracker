PROTO_0:
  DUPTABLE R1 K3 [{"Asset", "AudioDetails", "Creator"}]
  DUPTABLE R2 K12 [{"Id", "Name", "AssetGenres", "TypeId", "IsEndorsed", "Description", "Duration", "HasScripts"}]
  SETTABLEKS R0 R2 K4 ["Id"]
  LOADK R3 K13 ["Cascaded Drumming"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADNIL R3
  SETTABLEKS R3 R2 K6 ["AssetGenres"]
  LOADN R3 10
  SETTABLEKS R3 R2 K7 ["TypeId"]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["IsEndorsed"]
  LOADK R3 K14 ["High hat with various percussion sounds. Loud crashes."]
  SETTABLEKS R3 R2 K9 ["Description"]
  LOADK R3 K15 ["128"]
  SETTABLEKS R3 R2 K10 ["Duration"]
  LOADB R3 0
  SETTABLEKS R3 R2 K11 ["HasScripts"]
  SETTABLEKS R2 R1 K0 ["Asset"]
  DUPTABLE R2 K20 [{"Artist", "Type", "SoundEffectCategory", "SoundEffectSubcategory"}]
  LOADK R3 K21 ["OnlyTwentyCharacters"]
  SETTABLEKS R3 R2 K16 ["Artist"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K22 ["SOUND_EFFECTS"]
  GETTABLEKS R3 R4 K23 ["name"]
  SETTABLEKS R3 R2 K17 ["Type"]
  LOADK R3 K24 ["instruments"]
  SETTABLEKS R3 R2 K18 ["SoundEffectCategory"]
  LOADK R3 K25 ["Drum"]
  SETTABLEKS R3 R2 K19 ["SoundEffectSubcategory"]
  SETTABLEKS R2 R1 K1 ["AudioDetails"]
  DUPTABLE R2 K26 [{"Id", "Name", "Type"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Id"]
  LOADK R3 K27 ["Rolbox"]
  SETTABLEKS R3 R2 K5 ["Name"]
  LOADK R3 K28 ["User"]
  SETTABLEKS R3 R2 K17 ["Type"]
  SETTABLEKS R2 R1 K2 ["Creator"]
  RETURN R1 1

PROTO_1:
  LOADB R0 1
  RETURN R0 1

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Insert Asset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Try Insert"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["try open asset config"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["OnAssetPreviewButtonClicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K5 [{"Size", "BackgroundTransparency", "Position"}]
  GETIMPORT R4 K8 [UDim2.new]
  LOADN R5 1
  LOADN R6 246
  LOADN R7 0
  LOADN R8 4
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["Size"]
  LOADN R4 1
  SETTABLEKS R4 R3 K3 ["BackgroundTransparency"]
  GETIMPORT R4 K8 [UDim2.new]
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  CALL R4 4 1
  SETTABLEKS R4 R3 K4 ["Position"]
  DUPTABLE R4 K10 [{"AudioTable"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["Generator"]
  DUPTABLE R6 K20 [{"Assets", "AudioType", "CanInsertAsset", "InsertAsset", "TryInsert", "TryOpenAssetConfig", "OnAssetPreviewButtonClicked", "SwimlaneName"}]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K12 ["Assets"]
  GETTABLEKS R8 R0 K21 ["props"]
  GETTABLEKS R7 R8 K13 ["AudioType"]
  SETTABLEKS R7 R6 K13 ["AudioType"]
  DUPCLOSURE R7 K22 [PROTO_1]
  SETTABLEKS R7 R6 K14 ["CanInsertAsset"]
  DUPCLOSURE R7 K23 [PROTO_2]
  SETTABLEKS R7 R6 K15 ["InsertAsset"]
  DUPCLOSURE R7 K24 [PROTO_3]
  SETTABLEKS R7 R6 K16 ["TryInsert"]
  DUPCLOSURE R7 K25 [PROTO_4]
  SETTABLEKS R7 R6 K17 ["TryOpenAssetConfig"]
  DUPCLOSURE R7 K26 [PROTO_5]
  SETTABLEKS R7 R6 K18 ["OnAssetPreviewButtonClicked"]
  LOADK R7 K27 ["test"]
  SETTABLEKS R7 R6 K19 ["SwimlaneName"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["AudioTable"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"AudioTableWrapper"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K4 [{"AudioType"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["SOUND_EFFECTS"]
  GETTABLEKS R7 R8 K6 ["name"]
  SETTABLEKS R7 R6 K3 ["AudioType"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["AudioTableWrapper"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"AudioTableWrapper"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K4 [{"AudioType"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["MUSIC"]
  GETTABLEKS R7 R8 K6 ["name"]
  SETTABLEKS R7 R6 K3 ["AudioType"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["AudioTableWrapper"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"AudioTableWrapper"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["AudioTableWrapper"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K9 ["Types"]
  GETTABLEKS R4 R5 K10 ["Category"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["Parent"]
  GETTABLEKS R5 R6 K12 ["AudioTable"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K13 ["Models"]
  GETTABLEKS R6 R7 K14 ["AssetInfo"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K15 ["Stories"]
  GETTABLEKS R7 R8 K16 ["ToolboxStoryWrapper"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K17 ["PureComponent"]
  LOADK R9 K18 ["AudioRowWrapper"]
  NAMECALL R7 R7 K19 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K20 [PROTO_0]
  CAPTURE VAL R3
  SETGLOBAL R8 K21 ["createAudioInfo"]
  NEWTABLE R8 0 0
  LOADN R11 1
  LOADN R9 10
  LOADN R10 1
  FORNPREP R9
  MOVE R13 R8
  GETGLOBAL R14 K21 ["createAudioInfo"]
  MOVE R15 R11
  CALL R14 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K24 [table.insert]
  CALL R12 -1 0
  FORNLOOP R9
  DUPCLOSURE R9 K25 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K26 ["render"]
  DUPTABLE R9 K29 [{"summary", "stories"}]
  LOADK R10 K30 ["Audio Table"]
  SETTABLEKS R10 R9 K27 ["summary"]
  NEWTABLE R10 0 3
  DUPTABLE R11 K33 [{"name", "story"}]
  LOADK R12 K34 ["Soundeffect"]
  SETTABLEKS R12 R11 K31 ["name"]
  DUPCLOSURE R12 K35 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K32 ["story"]
  DUPTABLE R12 K33 [{"name", "story"}]
  LOADK R13 K36 ["Music"]
  SETTABLEKS R13 R12 K31 ["name"]
  DUPCLOSURE R13 K37 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R13 R12 K32 ["story"]
  DUPTABLE R13 K33 [{"name", "story"}]
  LOADK R14 K38 ["Uncategorized"]
  SETTABLEKS R14 R13 K31 ["name"]
  DUPCLOSURE R14 K39 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K32 ["story"]
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K28 ["stories"]
  RETURN R9 1
