PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["ShowProgress"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K2 ["Localization"]
  GETTABLEKS R3 R1 K3 ["Progress"]
  GETTABLEKS R4 R1 K4 ["ProgressGoal"]
  JUMPIFNOTEQKN R4 K5 [0] [+3]
  LOADNIL R5
  RETURN R5 1
  DIV R5 R3 R4
  JUMPIFNOTEQKN R5 K6 [1] [+7]
  LOADK R8 K7 ["ImportQueue"]
  LOADK R9 K8 ["Complete"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 3 1
  JUMP [+13]
  LOADK R8 K7 ["ImportQueue"]
  LOADK R9 K10 ["MinutesRemaining1"]
  DUPTABLE R10 K12 [{"minutesRemaining"}]
  LOADN R12 0
  FASTCALL1 TOSTRING R12 [+2]
  GETIMPORT R11 K14 [tostring]
  CALL R11 1 1
  SETTABLEKS R11 R10 K11 ["minutesRemaining"]
  NAMECALL R6 R2 K9 ["getText"]
  CALL R6 4 1
  LOADK R9 K7 ["ImportQueue"]
  LOADK R10 K15 ["FilesRemaining2"]
  DUPTABLE R11 K18 [{"currentFileIndex", "totalFiles"}]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R13 R3
  GETIMPORT R12 K14 [tostring]
  CALL R12 1 1
  SETTABLEKS R12 R11 K16 ["currentFileIndex"]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R13 R4
  GETIMPORT R12 K14 [tostring]
  CALL R12 1 1
  SETTABLEKS R12 R11 K17 ["totalFiles"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 4 1
  LOADK R9 K19 ["%* - %*"]
  MOVE R11 R7
  MOVE R12 R6
  NAMECALL R9 R9 K20 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  GETTABLEKS R10 R1 K21 ["Stylizer"]
  GETTABLEKS R9 R10 K7 ["ImportQueue"]
  GETTABLEKS R10 R9 K22 ["Padding"]
  GETTABLEKS R11 R9 K23 ["LoadingBarWidth"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K24 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K30 [{"Size", "LayoutOrder", "Layout", "VerticalAlignment", "Padding", "Spacing"}]
  GETTABLEKS R15 R1 K25 ["Size"]
  SETTABLEKS R15 R14 K25 ["Size"]
  GETTABLEKS R15 R1 K26 ["LayoutOrder"]
  SETTABLEKS R15 R14 K26 ["LayoutOrder"]
  GETIMPORT R15 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K27 ["Layout"]
  GETIMPORT R15 K36 [Enum.VerticalAlignment.Top]
  SETTABLEKS R15 R14 K28 ["VerticalAlignment"]
  SETTABLEKS R10 R14 K22 ["Padding"]
  SETTABLEKS R10 R14 K29 ["Spacing"]
  DUPTABLE R15 K39 [{"LoadingBar", "LoadingText"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K40 [{"LayoutOrder", "Size", "Progress"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  GETIMPORT R19 K43 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  MOVE R23 R11
  CALL R19 4 1
  SETTABLEKS R19 R18 K25 ["Size"]
  SETTABLEKS R5 R18 K3 ["Progress"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K37 ["LoadingBar"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K24 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K48 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment", "TextWrapped"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  GETIMPORT R19 K43 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K25 ["Size"]
  GETIMPORT R19 K50 [Enum.AutomaticSize.Y]
  SETTABLEKS R19 R18 K44 ["AutomaticSize"]
  SETTABLEKS R8 R18 K45 ["Text"]
  GETIMPORT R19 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K46 ["TextXAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K47 ["TextWrapped"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K38 ["LoadingText"]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_1:
  DUPTABLE R1 K5 [{"SessionQueue", "ShowProgress", "Progress", "ProgressGoal", "Uploading"}]
  GETTABLEKS R3 R0 K6 ["Sessions"]
  GETTABLEKS R2 R3 K7 ["sessionQueue"]
  SETTABLEKS R2 R1 K0 ["SessionQueue"]
  GETTABLEKS R3 R0 K8 ["Dialogs"]
  GETTABLEKS R2 R3 K9 ["showProgress"]
  SETTABLEKS R2 R1 K1 ["ShowProgress"]
  GETTABLEKS R3 R0 K6 ["Sessions"]
  GETTABLEKS R2 R3 K10 ["progress"]
  SETTABLEKS R2 R1 K2 ["Progress"]
  GETTABLEKS R3 R0 K6 ["Sessions"]
  GETTABLEKS R2 R3 K11 ["progressGoal"]
  SETTABLEKS R2 R1 K3 ["ProgressGoal"]
  GETTABLEKS R3 R0 K8 ["Dialogs"]
  GETTABLEKS R2 R3 K12 ["uploading"]
  SETTABLEKS R2 R1 K4 ["Uploading"]
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
  CAPTURE VAL R10
  CAPTURE VAL R11
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
