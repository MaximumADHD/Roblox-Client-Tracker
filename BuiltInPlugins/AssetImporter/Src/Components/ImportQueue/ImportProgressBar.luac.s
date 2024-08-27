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
  JUMPIFEQKN R5 K6 [1] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  LOADK R9 K7 ["ImportQueue"]
  LOADK R10 K8 ["Complete"]
  NAMECALL R7 R2 K9 ["getText"]
  CALL R7 3 1
  LOADK R10 K7 ["ImportQueue"]
  LOADK R11 K10 ["FilesRemaining2"]
  DUPTABLE R12 K13 [{"currentFileIndex", "totalFiles"}]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R14 R3
  GETIMPORT R13 K15 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K11 ["currentFileIndex"]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R14 R4
  GETIMPORT R13 K15 [tostring]
  CALL R13 1 1
  SETTABLEKS R13 R12 K12 ["totalFiles"]
  NAMECALL R8 R2 K9 ["getText"]
  CALL R8 4 1
  JUMPIFNOT R6 [+8]
  LOADK R10 K16 ["%* - %*"]
  MOVE R12 R8
  MOVE R13 R7
  NAMECALL R10 R10 K17 ["format"]
  CALL R10 3 1
  MOVE R9 R10
  JUMP [+1]
  MOVE R9 R8
  GETTABLEKS R11 R1 K18 ["Stylizer"]
  GETTABLEKS R10 R11 K7 ["ImportQueue"]
  GETTABLEKS R11 R10 K19 ["Padding"]
  GETTABLEKS R12 R10 K20 ["LoadingBarWidth"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K21 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K27 [{"Size", "LayoutOrder", "Layout", "VerticalAlignment", "Padding", "Spacing"}]
  GETTABLEKS R16 R1 K22 ["Size"]
  SETTABLEKS R16 R15 K22 ["Size"]
  GETTABLEKS R16 R1 K23 ["LayoutOrder"]
  SETTABLEKS R16 R15 K23 ["LayoutOrder"]
  GETIMPORT R16 K31 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K24 ["Layout"]
  GETIMPORT R16 K33 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K25 ["VerticalAlignment"]
  SETTABLEKS R11 R15 K19 ["Padding"]
  SETTABLEKS R11 R15 K26 ["Spacing"]
  DUPTABLE R16 K36 [{"LoadingBar", "LoadingText"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K37 [{"LayoutOrder", "Size", "Progress"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K23 ["LayoutOrder"]
  GETIMPORT R20 K40 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  MOVE R24 R12
  CALL R20 4 1
  SETTABLEKS R20 R19 K22 ["Size"]
  SETTABLEKS R5 R19 K3 ["Progress"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K34 ["LoadingBar"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K45 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment", "TextWrapped"}]
  LOADN R20 2
  SETTABLEKS R20 R19 K23 ["LayoutOrder"]
  GETIMPORT R20 K40 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K22 ["Size"]
  GETIMPORT R20 K47 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K41 ["AutomaticSize"]
  SETTABLEKS R9 R19 K42 ["Text"]
  GETIMPORT R20 K49 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K43 ["TextXAlignment"]
  LOADB R20 1
  SETTABLEKS R20 R19 K44 ["TextWrapped"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K35 ["LoadingText"]
  CALL R13 3 -1
  RETURN R13 -1

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
