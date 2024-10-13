PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AssetId"]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["Key"]
  GETUPVAL R5 4
  NAMECALL R5 R5 K2 ["isDoubleClick"]
  CALL R5 1 -1
  NAMECALL R0 R0 K3 ["handleClick"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AssetId"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Key"]
  GETUPVAL R4 3
  NAMECALL R0 R0 K2 ["handleRightClick"]
  CALL R0 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["use"]
  CALL R4 0 1
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K1 ["use"]
  CALL R5 0 1
  GETTABLEKS R6 R0 K2 ["Cell"]
  GETUPVAL R7 6
  MOVE R8 R4
  CALL R7 1 1
  GETUPVAL R8 7
  MOVE R9 R4
  CALL R8 1 1
  LOADK R9 K3 [""]
  GETTABLEKS R11 R6 K4 ["AssetId"]
  GETTABLE R10 R7 R11
  JUMPIFNOT R10 [+1]
  LOADK R9 K5 ["SelectedCell"]
  LOADB R10 0
  GETUPVAL R12 8
  GETTABLEKS R14 R0 K2 ["Cell"]
  GETTABLEKS R13 R14 K6 ["DisplayName"]
  CALL R12 1 1
  GETTABLEKS R11 R12 K7 ["X"]
  GETTABLEKS R15 R0 K8 ["Size"]
  GETTABLEKS R14 R15 K7 ["X"]
  GETTABLEKS R13 R14 K9 ["Offset"]
  GETUPVAL R15 9
  LOADK R17 K11 ["CellTagPadding"]
  NAMECALL R15 R15 K12 ["GetAttribute"]
  CALL R15 2 1
  MULK R14 R15 K10 [2]
  SUB R12 R13 R14
  JUMPIFNOTLT R12 R11 [+2]
  LOADB R10 1
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K13 ["createElement"]
  GETUPVAL R12 11
  NEWTABLE R13 8 0
  GETTABLEKS R14 R0 K14 ["Key"]
  SETTABLEKS R14 R13 K15 ["LayoutOrder"]
  GETTABLEKS R14 R0 K8 ["Size"]
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R14 R0 K16 ["Position"]
  SETTABLEKS R14 R13 K16 ["Position"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K17 ["OnClick"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K18 ["OnRightClick"]
  GETUPVAL R15 10
  GETTABLEKS R14 R15 K19 ["Tag"]
  LOADK R15 K20 ["ItemCell X-Top X-Center X-ColumnS"]
  SETTABLE R15 R13 R14
  DUPTABLE R14 K23 [{"ThumbnailContainer", "TagContainer"}]
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 11
  NEWTABLE R17 1 0
  GETUPVAL R19 10
  GETTABLEKS R18 R19 K19 ["Tag"]
  LOADK R20 K24 ["ThumbnailContainer Secondary X-Corner X-Pad X-Center X-Middle %*"]
  MOVE R22 R9
  NAMECALL R20 R20 K25 ["format"]
  CALL R20 2 1
  MOVE R19 R20
  SETTABLE R19 R17 R18
  DUPTABLE R18 K27 [{"Thumbnail"}]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K13 ["createElement"]
  GETUPVAL R20 12
  DUPTABLE R21 K29 [{"LayoutOrder", "Image"}]
  NAMECALL R22 R2 K30 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  MOVE R24 R6
  NAMECALL R22 R5 K31 ["getThumbnailForItem"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K28 ["Image"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["Thumbnail"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K21 ["ThumbnailContainer"]
  GETUPVAL R16 10
  GETTABLEKS R15 R16 K13 ["createElement"]
  GETUPVAL R16 11
  NEWTABLE R17 2 0
  NAMECALL R18 R2 K30 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K15 ["LayoutOrder"]
  GETUPVAL R19 10
  GETTABLEKS R18 R19 K19 ["Tag"]
  LOADK R19 K32 ["TagContainer X-Column X-Left X-Middle"]
  SETTABLE R19 R17 R18
  DUPTABLE R18 K35 [{"NameTag", "TypeTag"}]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K13 ["createElement"]
  GETUPVAL R20 13
  NEWTABLE R21 4 0
  NAMECALL R22 R2 K30 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  GETTABLEKS R23 R0 K2 ["Cell"]
  GETTABLEKS R22 R23 K6 ["DisplayName"]
  SETTABLEKS R22 R21 K36 ["Text"]
  GETIMPORT R22 K40 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R22 R21 K38 ["TextTruncate"]
  GETUPVAL R23 10
  GETTABLEKS R22 R23 K19 ["Tag"]
  LOADK R23 K41 ["Left"]
  SETTABLE R23 R21 R22
  DUPTABLE R22 K43 [{"Tooltip"}]
  JUMPIFNOT R10 [+13]
  GETUPVAL R24 10
  GETTABLEKS R23 R24 K13 ["createElement"]
  GETUPVAL R24 14
  DUPTABLE R25 K44 [{"Text"}]
  GETTABLEKS R27 R0 K2 ["Cell"]
  GETTABLEKS R26 R27 K6 ["DisplayName"]
  SETTABLEKS R26 R25 K36 ["Text"]
  CALL R23 2 1
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K42 ["Tooltip"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K33 ["NameTag"]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K13 ["createElement"]
  GETUPVAL R20 13
  NEWTABLE R21 8 0
  GETIMPORT R22 K47 [Enum.AutomaticSize.XY]
  SETTABLEKS R22 R21 K45 ["AutomaticSize"]
  NAMECALL R22 R2 K30 ["getNextOrder"]
  CALL R22 1 1
  SETTABLEKS R22 R21 K15 ["LayoutOrder"]
  LOADK R24 K48 ["AssetType"]
  GETTABLEKS R25 R6 K48 ["AssetType"]
  NAMECALL R22 R3 K49 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K36 ["Text"]
  GETIMPORT R22 K40 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R22 R21 K38 ["TextTruncate"]
  GETUPVAL R23 10
  GETTABLEKS R22 R23 K19 ["Tag"]
  LOADK R23 K50 ["Body"]
  SETTABLE R23 R21 R22
  CALL R19 2 1
  SETTABLEKS R19 R18 K34 ["TypeTag"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K22 ["TagContainer"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["ContextServices"]
  GETTABLEKS R4 R3 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["Image"]
  GETTABLEKS R7 R5 K13 ["Pane"]
  GETTABLEKS R8 R5 K14 ["TextLabel"]
  GETTABLEKS R9 R5 K15 ["Tooltip"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K17 ["Controllers"]
  GETTABLEKS R11 R12 K18 ["ItemsController"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R13 R0 K16 ["Src"]
  GETTABLEKS R12 R13 K19 ["Networking"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K16 ["Src"]
  GETTABLEKS R14 R15 K20 ["Hooks"]
  GETTABLEKS R13 R14 K21 ["useItems"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K16 ["Src"]
  GETTABLEKS R15 R16 K20 ["Hooks"]
  GETTABLEKS R14 R15 K22 ["useItemSelection"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K23 ["useState"]
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R0 K16 ["Src"]
  GETTABLEKS R16 R17 K24 ["Types"]
  CALL R15 1 1
  GETTABLEKS R17 R2 K25 ["Util"]
  GETTABLEKS R16 R17 K26 ["DoubleClickDetector"]
  GETTABLEKS R18 R2 K25 ["Util"]
  GETTABLEKS R17 R18 K27 ["LayoutOrderIterator"]
  GETTABLEKS R19 R2 K25 ["Util"]
  GETTABLEKS R18 R19 K28 ["GetTextSize"]
  GETIMPORT R19 K5 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K29 ["styles"]
  CALL R19 1 1
  DUPCLOSURE R20 K30 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  RETURN R20 1
