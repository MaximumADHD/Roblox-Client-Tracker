PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  LOADK R5 K2 ["ImportQueue"]
  LOADK R6 K3 ["Complete"]
  NAMECALL R3 R2 K4 ["getText"]
  CALL R3 3 1
  LOADK R6 K2 ["ImportQueue"]
  LOADK R7 K5 ["FilesRemaining2"]
  DUPTABLE R8 K8 [{"currentFileIndex", "totalFiles"}]
  LOADN R10 0
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K10 [tostring]
  CALL R9 1 1
  SETTABLEKS R9 R8 K6 ["currentFileIndex"]
  LOADN R10 0
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K10 [tostring]
  CALL R9 1 1
  SETTABLEKS R9 R8 K7 ["totalFiles"]
  NAMECALL R4 R2 K4 ["getText"]
  CALL R4 4 1
  LOADK R6 K11 ["%* - %*"]
  MOVE R8 R4
  MOVE R9 R3
  NAMECALL R6 R6 K12 ["format"]
  CALL R6 3 1
  MOVE R5 R6
  GETTABLEKS R7 R1 K13 ["Stylizer"]
  GETTABLEKS R6 R7 K2 ["ImportQueue"]
  GETTABLEKS R7 R6 K14 ["Padding"]
  GETTABLEKS R8 R6 K15 ["LoadingBarWidth"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K22 [{"Size", "LayoutOrder", "Layout", "VerticalAlignment", "Padding", "Spacing"}]
  GETTABLEKS R12 R1 K17 ["Size"]
  SETTABLEKS R12 R11 K17 ["Size"]
  GETTABLEKS R12 R1 K18 ["LayoutOrder"]
  SETTABLEKS R12 R11 K18 ["LayoutOrder"]
  GETIMPORT R12 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K19 ["Layout"]
  GETIMPORT R12 K28 [Enum.VerticalAlignment.Top]
  SETTABLEKS R12 R11 K20 ["VerticalAlignment"]
  SETTABLEKS R7 R11 K14 ["Padding"]
  SETTABLEKS R7 R11 K21 ["Spacing"]
  DUPTABLE R12 K31 [{"LoadingText", "LoadingBar"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K36 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment", "TextWrapped"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K18 ["LayoutOrder"]
  GETIMPORT R16 K39 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K17 ["Size"]
  GETIMPORT R16 K41 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K32 ["AutomaticSize"]
  SETTABLEKS R5 R15 K33 ["Text"]
  GETIMPORT R16 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R16 R15 K34 ["TextXAlignment"]
  LOADB R16 1
  SETTABLEKS R16 R15 K35 ["TextWrapped"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["LoadingText"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K16 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K45 [{"Size", "Progress"}]
  GETIMPORT R16 K39 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  MOVE R20 R8
  CALL R16 4 1
  SETTABLEKS R16 R15 K17 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K44 ["Progress"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["LoadingBar"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_1:
  DUPTABLE R1 K1 [{"SessionQueue"}]
  GETTABLEKS R3 R0 K2 ["Sessions"]
  GETTABLEKS R2 R3 K3 ["sessionQueue"]
  SETTABLEKS R2 R1 K0 ["SessionQueue"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Localization"]
  GETTABLEKS R8 R3 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["Stylizer"]
  GETTABLEKS R8 R3 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Pane"]
  GETTABLEKS R10 R8 K17 ["LoadingBar"]
  GETTABLEKS R11 R8 K18 ["TextLabel"]
  GETTABLEKS R12 R1 K19 ["PureComponent"]
  LOADK R14 K20 ["ImportProgressBar"]
  NAMECALL R12 R12 K21 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K22 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K23 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K24 [{"Localization", "Stylizer"}]
  SETTABLEKS R6 R14 K12 ["Localization"]
  SETTABLEKS R7 R14 K14 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  DUPCLOSURE R13 K25 [PROTO_1]
  GETTABLEKS R14 R2 K26 ["connect"]
  MOVE R15 R13
  LOADNIL R16
  CALL R14 2 1
  MOVE R15 R12
  CALL R14 1 -1
  RETURN R14 -1
