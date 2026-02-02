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
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["select asset"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  DUPCLOSURE R2 K1 [PROTO_1]
  NEWTABLE R3 0 0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  DUPTABLE R5 K5 [{"tag", "LayoutOrder", "onActivated"}]
  LOADK R6 K6 ["size-full-1000 row align-y-center padding-x-small padding-y-xsmall"]
  SETTABLEKS R6 R5 K2 ["tag"]
  GETTABLEKS R6 R0 K7 ["layoutOrder"]
  SETTABLEKS R6 R5 K3 ["LayoutOrder"]
  SETTABLEKS R1 R5 K4 ["onActivated"]
  DUPTABLE R6 K10 [{"ThumbnailAndNameContainer", "DateContainer"}]
  GETUPVAL R7 2
  GETUPVAL R8 3
  DUPTABLE R9 K12 [{"tag", "Size", "LayoutOrder"}]
  LOADK R10 K13 ["row align-y-center gap-small"]
  SETTABLEKS R10 R9 K2 ["tag"]
  GETIMPORT R10 K16 [UDim2.fromScale]
  LOADK R11 K17 [0.7]
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Size"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K3 ["LayoutOrder"]
  DUPTABLE R10 K20 [{"Thumbnail", "Name"}]
  GETUPVAL R11 2
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K21 ["Image"]
  DUPTABLE R13 K22 [{"tag", "LayoutOrder", "Image"}]
  LOADK R14 K23 ["size-700 radius-small"]
  SETTABLEKS R14 R13 K2 ["tag"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K3 ["LayoutOrder"]
  GETUPVAL R14 5
  LOADK R15 K24 ["CreatorContextAsset"]
  GETTABLEKS R17 R0 K25 ["asset"]
  GETTABLEKS R16 R17 K26 ["assetId"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["Image"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["Thumbnail"]
  GETUPVAL R11 2
  GETUPVAL R12 6
  DUPTABLE R13 K28 [{"tag", "LayoutOrder", "Text"}]
  LOADK R14 K29 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
  SETTABLEKS R14 R13 K2 ["tag"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K3 ["LayoutOrder"]
  GETTABLEKS R15 R0 K25 ["asset"]
  GETTABLEKS R14 R15 K30 ["displayName"]
  SETTABLEKS R14 R13 K27 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Name"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["ThumbnailAndNameContainer"]
  GETUPVAL R7 2
  GETUPVAL R8 3
  DUPTABLE R9 K31 [{"Size", "LayoutOrder"}]
  GETIMPORT R10 K16 [UDim2.fromScale]
  LOADK R11 K32 [0.3]
  LOADN R12 1
  CALL R10 2 1
  SETTABLEKS R10 R9 K11 ["Size"]
  MOVE R10 R2
  CALL R10 0 1
  SETTABLEKS R10 R9 K3 ["LayoutOrder"]
  DUPTABLE R10 K34 [{"Date"}]
  GETUPVAL R11 2
  GETUPVAL R12 6
  DUPTABLE R13 K28 [{"tag", "LayoutOrder", "Text"}]
  LOADK R14 K29 ["size-full-full text-body-small text-align-x-left text-no-wrap"]
  SETTABLEKS R14 R13 K2 ["tag"]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K3 ["LayoutOrder"]
  GETTABLEKS R16 R0 K25 ["asset"]
  GETTABLEKS R15 R16 K35 ["createTime"]
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
  SETTABLEKS R7 R6 K9 ["DateContainer"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["AssetTypes"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K12 ["getAssetThumbnailUri"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K13 ["Text"]
  GETTABLEKS R8 R3 K14 ["View"]
  GETTABLEKS R9 R4 K15 ["createElement"]
  GETTABLEKS R10 R5 K16 ["createNextOrder"]
  DUPCLOSURE R11 K17 [PROTO_0]
  DUPCLOSURE R12 K18 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R12 1
