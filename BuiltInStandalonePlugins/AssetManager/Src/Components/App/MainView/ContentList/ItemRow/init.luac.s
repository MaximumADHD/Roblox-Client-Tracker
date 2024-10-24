PROTO_0:
  GETTABLE R3 R0 R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K1 ["Creator"]
  JUMPIFNOTEQ R1 R4 [+11]
  GETTABLEKS R5 R3 K2 ["Name"]
  JUMPIFEQKS R5 K3 [""] [+4]
  GETTABLEKS R4 R3 K2 ["Name"]
  RETURN R4 1
  GETTABLEKS R4 R3 K4 ["Id"]
  RETURN R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K5 ["Modified"]
  JUMPIFEQ R1 R4 [+8]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K6 ["Created"]
  JUMPIFNOTEQ R1 R4 [+7]
  LOADK R6 K7 ["lll"]
  LOADK R7 K8 ["en-us"]
  NAMECALL R4 R3 K9 ["FormatLocalTime"]
  CALL R4 3 -1
  RETURN R4 -1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["AssetInfoField"]
  GETTABLEKS R4 R5 K10 ["AssetType"]
  JUMPIFNOTEQ R1 R4 [+7]
  LOADK R6 K10 ["AssetType"]
  MOVE R7 R3
  NAMECALL R4 R2 K11 ["getText"]
  CALL R4 3 -1
  RETURN R4 -1
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K13 [tostring]
  CALL R4 1 1
  RETURN R4 1

PROTO_1:
  NEWTABLE R4 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K3 [{"LayoutOrder", "AssetInfo"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  SETTABLEKS R0 R7 K2 ["AssetInfo"]
  CALL R5 2 1
  FASTCALL2 TABLE_INSERT R4 R5 [+5]
  MOVE R7 R4
  MOVE R8 R5
  GETIMPORT R6 K6 [table.insert]
  CALL R6 2 0
  GETUPVAL R6 2
  MOVE R7 R1
  CALL R6 1 2
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLE R14 R7 R11
  GETTABLEKS R13 R14 K7 ["Offset"]
  JUMPIFNOTEQKN R11 K8 [1] [+7]
  GETUPVAL R14 3
  LOADK R16 K9 ["ThumbnailSize"]
  NAMECALL R14 R14 K10 ["GetAttribute"]
  CALL R14 2 1
  SUB R13 R13 R14
  GETUPVAL R14 4
  MOVE R15 R0
  MOVE R16 R12
  MOVE R17 R3
  CALL R14 3 1
  GETUPVAL R17 5
  MOVE R18 R14
  CALL R17 1 1
  GETTABLEKS R16 R17 K11 ["X"]
  GETUPVAL R19 3
  LOADK R21 K13 ["CellContentPadding"]
  NAMECALL R19 R19 K10 ["GetAttribute"]
  CALL R19 2 1
  MULK R18 R19 K12 [2]
  SUB R17 R13 R18
  JUMPIFLT R17 R16 [+2]
  LOADB R15 0 +1
  LOADB R15 1
  ADDK R16 R11 K8 [1]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K0 ["createElement"]
  GETUPVAL R18 6
  NEWTABLE R19 8 0
  SETTABLEKS R16 R19 K1 ["LayoutOrder"]
  SETTABLEKS R14 R19 K14 ["Text"]
  GETIMPORT R20 K18 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R20 R19 K16 ["TextTruncate"]
  GETIMPORT R20 K21 [UDim2.new]
  LOADN R21 0
  MOVE R22 R13
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K22 ["Size"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K23 ["Tag"]
  LOADK R21 K24 ["Left"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K26 [{"Tooltip"}]
  JUMPIFNOT R15 [+9]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K0 ["createElement"]
  GETUPVAL R22 7
  DUPTABLE R23 K27 [{"Text"}]
  SETTABLEKS R14 R23 K14 ["Text"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K25 ["Tooltip"]
  CALL R17 3 1
  SETTABLE R17 R4 R16
  FORGLOOP R8 2 [-78]
  RETURN R4 1

PROTO_2:
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

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["AssetId"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["Key"]
  GETUPVAL R4 3
  NAMECALL R0 R0 K2 ["handleRightClick"]
  CALL R0 4 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 -1
  CALL R1 -1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["use"]
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K1 ["use"]
  CALL R3 0 1
  GETUPVAL R4 4
  NAMECALL R4 R4 K1 ["use"]
  CALL R4 1 1
  GETTABLEKS R5 R0 K2 ["AssetInfo"]
  GETUPVAL R6 5
  MOVE R7 R3
  CALL R6 1 1
  GETUPVAL R7 6
  MOVE R8 R3
  CALL R7 1 1
  GETTABLEKS R10 R0 K4 ["Key"]
  MODK R9 R10 K3 [2]
  JUMPIFNOTEQKN R9 K5 [0] [+3]
  LOADK R8 K6 ["ContrastRow"]
  JUMP [+1]
  LOADK R8 K7 [""]
  GETTABLEKS R10 R5 K8 ["AssetId"]
  GETTABLE R9 R6 R10
  JUMPIFNOT R9 [+1]
  LOADK R8 K9 ["SelectedRow"]
  GETUPVAL R9 7
  MOVE R10 R5
  MOVE R11 R3
  MOVE R12 R4
  MOVE R13 R2
  CALL R9 4 1
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R11 9
  NEWTABLE R12 8 0
  GETTABLEKS R13 R0 K4 ["Key"]
  SETTABLEKS R13 R12 K11 ["LayoutOrder"]
  GETTABLEKS R13 R0 K12 ["Position"]
  SETTABLEKS R13 R12 K12 ["Position"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R13 R12 K13 ["OnClick"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K14 ["OnRightClick"]
  GETUPVAL R14 8
  GETTABLEKS R13 R14 K15 ["Tag"]
  LOADK R15 K16 ["ItemRow X-FitX X-Row X-Left X-Middle %*"]
  MOVE R17 R8
  NAMECALL R15 R15 K17 ["format"]
  CALL R15 2 1
  MOVE R14 R15
  SETTABLE R14 R12 R13
  NEWTABLE R13 0 1
  MOVE R14 R9
  SETLIST R13 R14 1 [1]
  CALL R10 3 -1
  RETURN R10 -1

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
  GETTABLEKS R6 R5 K12 ["Pane"]
  GETTABLEKS R7 R5 K13 ["TextLabel"]
  GETTABLEKS R8 R5 K14 ["Tooltip"]
  GETIMPORT R9 K5 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K15 ["AssetThumbnail"]
  CALL R9 1 1
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
  GETTABLEKS R13 R14 K21 ["useColumns"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K16 ["Src"]
  GETTABLEKS R15 R16 K20 ["Hooks"]
  GETTABLEKS R14 R15 K22 ["useItems"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K16 ["Src"]
  GETTABLEKS R16 R17 K20 ["Hooks"]
  GETTABLEKS R15 R16 K23 ["useItemSelection"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K24 ["useState"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K16 ["Src"]
  GETTABLEKS R17 R18 K25 ["Types"]
  CALL R16 1 1
  GETTABLEKS R18 R2 K26 ["Util"]
  GETTABLEKS R17 R18 K27 ["DoubleClickDetector"]
  GETTABLEKS R19 R2 K26 ["Util"]
  GETTABLEKS R18 R19 K28 ["GetTextSize"]
  GETIMPORT R19 K5 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K29 ["styles"]
  CALL R19 1 1
  DUPCLOSURE R20 K30 [PROTO_0]
  CAPTURE VAL R16
  DUPCLOSURE R21 K31 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R18
  CAPTURE VAL R7
  CAPTURE VAL R8
  DUPCLOSURE R22 K32 [PROTO_4]
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R21
  CAPTURE VAL R1
  CAPTURE VAL R6
  RETURN R22 1
