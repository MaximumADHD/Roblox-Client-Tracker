PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["LayeredClothingEditorPreview"]
  NAMECALL R0 R0 K1 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  LOADK R3 K2 ["Mannequin"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  MOVE R4 R1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["props"]
  GETTABLEKS R5 R6 K4 ["EditingItemContext"]
  NAMECALL R5 R5 K5 ["getItem"]
  CALL R5 1 -1
  NAMECALL R2 R2 K6 ["SetPreviewAsCharacter"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onPreviewButtonClick"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getTextWidth"]
  LOADK R5 K4 ["Preview"]
  GETTABLEKS R6 R3 K5 ["TextSize"]
  GETTABLEKS R7 R3 K6 ["Font"]
  CALL R4 3 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"Size", "Text", "TextSize", "ButtonHeight", "BackgroundColor3", "Style", "LayoutOrder", "OnClick"}]
  GETIMPORT R8 K17 [UDim2.new]
  LOADN R9 0
  GETTABLEKS R11 R3 K18 ["MainPadding"]
  ADD R10 R4 R11
  LOADN R11 0
  GETTABLEKS R12 R3 K10 ["ButtonHeight"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K8 ["Size"]
  LOADK R8 K4 ["Preview"]
  SETTABLEKS R8 R7 K9 ["Text"]
  GETTABLEKS R8 R3 K5 ["TextSize"]
  SETTABLEKS R8 R7 K5 ["TextSize"]
  GETTABLEKS R8 R3 K10 ["ButtonHeight"]
  SETTABLEKS R8 R7 K10 ["ButtonHeight"]
  GETIMPORT R8 K20 [Color3.new]
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["BackgroundColor3"]
  LOADK R8 K21 ["Round"]
  SETTABLEKS R8 R7 K12 ["Style"]
  SETTABLEKS R2 R7 K1 ["LayoutOrder"]
  GETTABLEKS R8 R0 K22 ["onPreviewButtonClick"]
  SETTABLEKS R8 R7 K13 ["OnClick"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [game]
  GETTABLEKS R0 R1 K2 ["Workspace"]
  GETIMPORT R5 K4 [script]
  GETTABLEKS R4 R5 K5 ["Parent"]
  GETTABLEKS R3 R4 K5 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Parent"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R1 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R1 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R6 R3 K13 ["Contexts"]
  GETTABLEKS R5 R6 K14 ["EditingItemContext"]
  GETIMPORT R6 K7 [require]
  GETTABLEKS R8 R1 K8 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["withContext"]
  GETTABLEKS R9 R4 K18 ["PreviewModelAsCharacter"]
  GETTABLEKS R10 R6 K19 ["UI"]
  GETTABLEKS R11 R10 K20 ["Button"]
  GETIMPORT R12 K7 [require]
  GETTABLEKS R15 R1 K21 ["Src"]
  GETTABLEKS R14 R15 K11 ["Util"]
  GETTABLEKS R13 R14 K22 ["StringUtil"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K23 ["PureComponent"]
  LOADK R15 K24 ["PreviewToStarterCharacterButton"]
  NAMECALL R13 R13 K25 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K26 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K27 ["init"]
  DUPCLOSURE R14 K28 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K29 ["render"]
  MOVE R14 R8
  DUPTABLE R15 K31 [{"Stylizer", "EditingItemContext"}]
  GETTABLEKS R16 R7 K30 ["Stylizer"]
  SETTABLEKS R16 R15 K30 ["Stylizer"]
  SETTABLEKS R5 R15 K14 ["EditingItemContext"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
