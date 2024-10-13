PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Progress"]
  GETTABLEKS R4 R1 K3 ["ProgressGoal"]
  DIV R5 R3 R4
  LOADK R8 K4 ["ImportQueue"]
  LOADK R9 K5 ["FilesRemaining2"]
  DUPTABLE R10 K8 [{"currentFileIndex", "totalFiles"}]
  FASTCALL1 MATH_CEIL R3 [+3]
  MOVE R13 R3
  GETIMPORT R12 K11 [math.ceil]
  CALL R12 1 1
  FASTCALL1 TOSTRING R12 [+2]
  GETIMPORT R11 K13 [tostring]
  CALL R11 1 1
  SETTABLEKS R11 R10 K6 ["currentFileIndex"]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R12 R4
  GETIMPORT R11 K13 [tostring]
  CALL R11 1 1
  SETTABLEKS R11 R10 K7 ["totalFiles"]
  NAMECALL R6 R2 K14 ["getText"]
  CALL R6 4 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K15 ["Parsing"]
  JUMPIFNOT R7 [+13]
  LOADK R9 K4 ["ImportQueue"]
  LOADK R10 K16 ["ParsingFiles"]
  NAMECALL R7 R2 K14 ["getText"]
  CALL R7 3 1
  LOADK R9 K17 ["%* - %*"]
  MOVE R11 R6
  MOVE R12 R7
  NAMECALL R9 R9 K18 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  RETURN R8 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K19 ["Uploading"]
  JUMPIFNOT R7 [+22]
  LOADK R9 K4 ["ImportQueue"]
  LOADK R10 K20 ["Complete"]
  NAMECALL R7 R2 K14 ["getText"]
  CALL R7 3 1
  LOADK R9 K21 ["%* - %*%% %*"]
  MOVE R11 R6
  MULK R14 R5 K22 [100]
  FASTCALL1 MATH_FLOOR R14 [+2]
  GETIMPORT R13 K24 [math.floor]
  CALL R13 1 1
  FASTCALL1 TOSTRING R13 [+2]
  GETIMPORT R12 K13 [tostring]
  CALL R12 1 1
  MOVE R13 R7
  NAMECALL R9 R9 K18 ["format"]
  CALL R9 4 1
  MOVE R8 R9
  RETURN R8 1
  RETURN R6 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["ShowProgress"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K2 ["Progress"]
  GETTABLEKS R3 R1 K3 ["ProgressGoal"]
  JUMPIFNOTEQKN R3 K4 [0] [+3]
  LOADNIL R4
  RETURN R4 1
  NAMECALL R4 R0 K5 ["_getText"]
  CALL R4 1 1
  GETTABLEKS R6 R1 K6 ["Stylizer"]
  GETTABLEKS R5 R6 K7 ["ImportQueue"]
  GETTABLEKS R6 R5 K8 ["Padding"]
  GETTABLEKS R7 R5 K9 ["LoadingBarWidth"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K10 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K16 [{"Size", "LayoutOrder", "Layout", "VerticalAlignment", "Padding", "Spacing"}]
  GETTABLEKS R11 R1 K11 ["Size"]
  SETTABLEKS R11 R10 K11 ["Size"]
  GETTABLEKS R11 R1 K12 ["LayoutOrder"]
  SETTABLEKS R11 R10 K12 ["LayoutOrder"]
  GETIMPORT R11 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K13 ["Layout"]
  GETIMPORT R11 K22 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K14 ["VerticalAlignment"]
  SETTABLEKS R6 R10 K8 ["Padding"]
  SETTABLEKS R6 R10 K15 ["Spacing"]
  DUPTABLE R11 K25 [{"LoadingBar", "LoadingText"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K26 [{"LayoutOrder", "Size", "Progress"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  GETIMPORT R15 K29 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  MOVE R19 R7
  CALL R15 4 1
  SETTABLEKS R15 R14 K11 ["Size"]
  DIV R15 R2 R3
  SETTABLEKS R15 R14 K2 ["Progress"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["LoadingBar"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K10 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K34 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment", "TextWrapped"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K12 ["LayoutOrder"]
  GETIMPORT R15 K29 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K11 ["Size"]
  GETIMPORT R15 K36 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K30 ["AutomaticSize"]
  SETTABLEKS R4 R14 K31 ["Text"]
  GETIMPORT R15 K38 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K32 ["TextXAlignment"]
  LOADB R15 1
  SETTABLEKS R15 R14 K33 ["TextWrapped"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K24 ["LoadingText"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_2:
  DUPTABLE R1 K6 [{"SessionQueue", "ShowProgress", "Progress", "ProgressGoal", "Uploading", "Parsing"}]
  GETTABLEKS R3 R0 K7 ["Sessions"]
  GETTABLEKS R2 R3 K8 ["sessionQueue"]
  SETTABLEKS R2 R1 K0 ["SessionQueue"]
  GETTABLEKS R3 R0 K9 ["Dialogs"]
  GETTABLEKS R2 R3 K10 ["showProgress"]
  SETTABLEKS R2 R1 K1 ["ShowProgress"]
  GETTABLEKS R3 R0 K7 ["Sessions"]
  GETTABLEKS R2 R3 K11 ["progress"]
  SETTABLEKS R2 R1 K2 ["Progress"]
  GETTABLEKS R3 R0 K7 ["Sessions"]
  GETTABLEKS R2 R3 K12 ["progressGoal"]
  SETTABLEKS R2 R1 K3 ["ProgressGoal"]
  GETTABLEKS R3 R0 K9 ["Dialogs"]
  GETTABLEKS R2 R3 K13 ["uploading"]
  SETTABLEKS R2 R1 K4 ["Uploading"]
  GETTABLEKS R3 R0 K7 ["Sessions"]
  GETTABLEKS R2 R3 K14 ["parsing"]
  SETTABLEKS R2 R1 K5 ["Parsing"]
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
  SETTABLEKS R13 R12 K23 ["_getText"]
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R13 R12 K25 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K26 [{"Localization", "Stylizer"}]
  SETTABLEKS R6 R14 K12 ["Localization"]
  SETTABLEKS R7 R14 K14 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  DUPCLOSURE R13 K27 [PROTO_2]
  GETTABLEKS R14 R2 K28 ["connect"]
  MOVE R15 R13
  LOADNIL R16
  CALL R14 2 1
  MOVE R15 R12
  CALL R14 1 -1
  RETURN R14 -1
