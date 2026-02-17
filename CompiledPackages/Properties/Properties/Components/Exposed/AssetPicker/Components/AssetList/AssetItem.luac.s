PROTO_0:
  GETIMPORT R1 K2 [DateTime.fromIsoDate]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIF R1 [+6]
  GETIMPORT R2 K4 [warn]
  LOADK R3 K5 ["Invalid date string provided"]
  CALL R2 1 0
  LOADK R2 K6 ["Invalid Date"]
  RETURN R2 1
  LOADK R4 K7 ["ll"]
  LOADK R5 K8 ["en-us"]
  NAMECALL R2 R1 K9 ["FormatUniversalTime"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["onAssetSelected"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["asset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 2
  GETTABLEKS R4 R0 K1 ["asset"]
  GETTABLEKS R5 R0 K2 ["onAssetSelected"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  DUPTABLE R5 K6 [{"tag", "LayoutOrder", "onActivated"}]
  LOADK R6 K7 ["size-full-1000 row align-y-center padding-x-small padding-y-xsmall"]
  SETTABLEKS R6 R5 K3 ["tag"]
  GETTABLEKS R6 R0 K8 ["layoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  SETTABLEKS R1 R5 K5 ["onActivated"]
  DUPTABLE R6 K11 [{"ThumbnailAndNameContainer", "DateContainer"}]
  GETUPVAL R7 2
  GETUPVAL R8 3
  DUPTABLE R9 K13 [{"tag", "Size", "LayoutOrder"}]
  LOADK R10 K14 ["row align-y-center gap-small"]
  SETTABLEKS R10 R9 K3 ["tag"]
  GETIMPORT R10 K17 [UDim2.fromScale]
  LOADK R11 K18 [0.7]
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  DUPTABLE R10 K21 [{"Thumbnail", "Name"}]
  GETUPVAL R11 2
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K22 ["Image"]
  DUPTABLE R13 K23 [{"tag", "LayoutOrder", "Image"}]
  LOADK R14 K24 ["size-700 radius-small"]
  SETTABLEKS R14 R13 K3 ["tag"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  GETUPVAL R14 5
  LOADK R15 K25 ["CreatorContextAsset"]
  GETTABLEKS R17 R0 K1 ["asset"]
  GETTABLEKS R16 R17 K26 ["assetId"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["Image"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Thumbnail"]
  GETUPVAL R11 2
  GETUPVAL R12 6
  DUPTABLE R13 K28 [{"tag", "LayoutOrder", "Text"}]
  LOADK R14 K29 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
  SETTABLEKS R14 R13 K3 ["tag"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  GETTABLEKS R15 R0 K1 ["asset"]
  GETTABLEKS R14 R15 K30 ["displayName"]
  SETTABLEKS R14 R13 K27 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["Name"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K9 ["ThumbnailAndNameContainer"]
  GETUPVAL R7 2
  GETUPVAL R8 3
  DUPTABLE R9 K31 [{"Size", "LayoutOrder"}]
  GETIMPORT R10 K17 [UDim2.fromScale]
  LOADK R11 K32 [0.3]
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Size"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  DUPTABLE R10 K34 [{"Date"}]
  GETUPVAL R11 2
  GETUPVAL R12 6
  DUPTABLE R13 K28 [{"tag", "LayoutOrder", "Text"}]
  LOADK R14 K29 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
  SETTABLEKS R14 R13 K3 ["tag"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K4 ["LayoutOrder"]
  GETTABLEKS R16 R0 K1 ["asset"]
  GETTABLEKS R15 R16 K35 ["updateTime"]
  GETIMPORT R16 K38 [DateTime.fromIsoDate]
  MOVE R17 R15
  CALL R16 1 1
  JUMPIF R16 [+6]
  GETIMPORT R17 K40 [warn]
  LOADK R18 K41 ["Invalid date string provided"]
  CALL R17 1 0
  LOADK R14 K42 ["Invalid Date"]
  JUMP [+6]
  LOADK R19 K43 ["ll"]
  LOADK R20 K44 ["en-us"]
  NAMECALL R17 R16 K45 ["FormatUniversalTime"]
  CALL R17 3 1
  MOVE R14 R17
  SETTABLEKS R14 R13 K27 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K33 ["Date"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K10 ["DateContainer"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K1 [script]
  LOADK R3 K4 ["AssetPicker"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R2 R0 K5 ["Parent"]
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R2 K8 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K7 [require]
  GETTABLEKS R5 R2 K9 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R2 K10 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETTABLEKS R7 R1 K11 ["Types"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R1 K12 ["Util"]
  GETTABLEKS R8 R9 K13 ["getAssetThumbnailUri"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K14 ["Text"]
  GETTABLEKS R9 R3 K15 ["View"]
  GETTABLEKS R10 R4 K16 ["createElement"]
  GETTABLEKS R11 R5 K17 ["createNextOrder"]
  DUPCLOSURE R12 K18 [PROTO_0]
  DUPCLOSURE R13 K19 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R13 1
