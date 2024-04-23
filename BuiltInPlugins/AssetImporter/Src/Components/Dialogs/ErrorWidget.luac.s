PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["values"]
  NAMECALL R3 R1 K1 ["GetStatuses"]
  CALL R3 1 -1
  CALL R2 -1 1
  LENGTH R3 R2
  LOADN R4 1
  JUMPIFNOTLE R4 R3 [+9]
  LOADK R5 K2 ["Error"]
  GETTABLEN R7 R2 1
  GETTABLEKS R6 R7 K3 ["Type"]
  NAMECALL R3 R0 K4 ["getText"]
  CALL R3 3 -1
  RETURN R3 -1
  LOADK R5 K2 ["Error"]
  LOADK R6 K5 ["DefaultNoStatus"]
  NAMECALL R3 R0 K4 ["getText"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K2 ["Stylizer"]
  GETTABLEKS R4 R3 K3 ["ErrorWidget"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K14 [{"Buttons", "Enabled", "MinContentSize", "Modal", "OnButtonPressed", "OnClose", "Resizable", "Style", "Title"}]
  NEWTABLE R8 0 1
  DUPTABLE R9 K17 [{"Key", "Text"}]
  LOADK R10 K18 ["ok"]
  SETTABLEKS R10 R9 K15 ["Key"]
  LOADK R12 K19 ["Error"]
  LOADK R13 K20 ["OK"]
  NAMECALL R10 R1 K21 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K16 ["Text"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K5 ["Buttons"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Enabled"]
  GETIMPORT R8 K24 [Vector2.new]
  GETTABLEKS R9 R4 K25 ["Width"]
  GETTABLEKS R10 R4 K26 ["Height"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["MinContentSize"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["Modal"]
  GETTABLEKS R8 R2 K10 ["OnClose"]
  SETTABLEKS R8 R7 K9 ["OnButtonPressed"]
  GETTABLEKS R8 R2 K10 ["OnClose"]
  SETTABLEKS R8 R7 K10 ["OnClose"]
  LOADB R8 0
  SETTABLEKS R8 R7 K11 ["Resizable"]
  LOADK R8 K27 ["Alert"]
  SETTABLEKS R8 R7 K12 ["Style"]
  GETTABLEKS R8 R2 K13 ["Title"]
  SETTABLEKS R8 R7 K13 ["Title"]
  DUPTABLE R8 K29 [{"Content"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K33 [{"Layout", "Size", "Spacing"}]
  GETIMPORT R12 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K30 ["Layout"]
  GETIMPORT R12 K39 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K31 ["Size"]
  GETTABLEKS R12 R4 K40 ["IconSpacing"]
  SETTABLEKS R12 R11 K32 ["Spacing"]
  DUPTABLE R12 K43 [{"Image", "TextPane"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K44 ["ImageLabel"]
  DUPTABLE R15 K47 [{"BackgroundTransparency", "Image", "Size", "LayoutOrder"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K45 ["BackgroundTransparency"]
  GETTABLEKS R17 R3 K48 ["ErrorIcon"]
  GETTABLEKS R16 R17 K41 ["Image"]
  SETTABLEKS R16 R15 K41 ["Image"]
  GETIMPORT R16 K50 [UDim2.fromOffset]
  GETTABLEKS R17 R4 K51 ["IconSize"]
  GETTABLEKS R18 R4 K51 ["IconSize"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K31 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K46 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K41 ["Image"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K52 [{"Layout", "Size", "LayoutOrder"}]
  GETIMPORT R16 K54 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K30 ["Layout"]
  GETIMPORT R16 K39 [UDim2.new]
  LOADK R17 K55 [0.6]
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K31 ["Size"]
  LOADN R16 2
  SETTABLEKS R16 R15 K46 ["LayoutOrder"]
  DUPTABLE R16 K58 [{"Header", "SubtextSize"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K61 [{"Text", "TextSize", "TextXAlignment", "Size", "LayoutOrder"}]
  LOADK R22 K19 ["Error"]
  LOADK R23 K56 ["Header"]
  NAMECALL R20 R1 K21 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K16 ["Text"]
  GETTABLEKS R20 R4 K59 ["TextSize"]
  SETTABLEKS R20 R19 K59 ["TextSize"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K60 ["TextXAlignment"]
  GETIMPORT R20 K39 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADK R23 K64 [0.35]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K31 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K46 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K56 ["Header"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K61 [{"Text", "TextSize", "TextXAlignment", "Size", "LayoutOrder"}]
  GETTABLEKS R21 R2 K65 ["AssetImportSession"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K66 ["values"]
  NAMECALL R23 R21 K67 ["GetStatuses"]
  CALL R23 1 -1
  CALL R22 -1 1
  LENGTH R23 R22
  LOADN R24 1
  JUMPIFNOTLE R24 R23 [+10]
  LOADK R25 K19 ["Error"]
  GETTABLEN R27 R22 1
  GETTABLEKS R26 R27 K68 ["Type"]
  NAMECALL R23 R1 K21 ["getText"]
  CALL R23 3 1
  MOVE R20 R23
  JUMP [+6]
  LOADK R25 K19 ["Error"]
  LOADK R26 K69 ["DefaultNoStatus"]
  NAMECALL R23 R1 K21 ["getText"]
  CALL R23 3 1
  MOVE R20 R23
  SETTABLEKS R20 R19 K16 ["Text"]
  GETTABLEKS R20 R4 K57 ["SubtextSize"]
  SETTABLEKS R20 R19 K59 ["TextSize"]
  GETIMPORT R20 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K60 ["TextXAlignment"]
  GETIMPORT R20 K39 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADK R23 K64 [0.35]
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K31 ["Size"]
  LOADN R20 2
  SETTABLEKS R20 R19 K46 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K57 ["SubtextSize"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K42 ["TextPane"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Content"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_2:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+32]
  DUPTABLE R1 K5 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId"}]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K7 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K8 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K9 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K10 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R3 R0 K6 ["Preview"]
  GETTABLEKS R2 R3 K11 ["hasInvalidPackageId"]
  SETTABLEKS R2 R1 K4 ["HasInvalidPackageId"]
  RETURN R1 1
  DUPTABLE R1 K5 [{"ImportTree", "AssetImportSession", "ImportDataCheckedCount", "ErrorNodeChecked", "HasInvalidPackageId"}]
  GETTABLEKS R2 R0 K7 ["importTree"]
  SETTABLEKS R2 R1 K0 ["ImportTree"]
  GETTABLEKS R2 R0 K8 ["assetImportSession"]
  SETTABLEKS R2 R1 K1 ["AssetImportSession"]
  GETTABLEKS R2 R0 K9 ["importDataCheckedCount"]
  SETTABLEKS R2 R1 K2 ["ImportDataCheckedCount"]
  GETTABLEKS R2 R0 K10 ["errorNodeChecked"]
  SETTABLEKS R2 R1 K3 ["ErrorNodeChecked"]
  GETTABLEKS R2 R0 K11 ["hasInvalidPackageId"]
  SETTABLEKS R2 R1 K4 ["HasInvalidPackageId"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["Dash"]
  GETTABLEKS R5 R1 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Localization"]
  GETTABLEKS R9 R1 K14 ["Style"]
  GETTABLEKS R8 R9 K15 ["Stylizer"]
  GETTABLEKS R9 R1 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["Pane"]
  GETTABLEKS R11 R9 K18 ["TextLabel"]
  GETTABLEKS R12 R9 K19 ["StyledDialog"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K21 ["Flags"]
  GETTABLEKS R14 R15 K22 ["getFFlagAssetImportRefactorReducer"]
  CALL R13 1 1
  GETTABLEKS R14 R2 K23 ["PureComponent"]
  LOADK R16 K24 ["ErrorWidget"]
  NAMECALL R14 R14 K25 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K26 [PROTO_0]
  CAPTURE VAL R4
  DUPCLOSURE R16 K27 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R4
  SETTABLEKS R16 R14 K28 ["render"]
  MOVE R16 R6
  DUPTABLE R17 K29 [{"Localization", "Stylizer"}]
  SETTABLEKS R7 R17 K13 ["Localization"]
  SETTABLEKS R8 R17 K15 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R14
  CALL R16 1 1
  MOVE R14 R16
  DUPCLOSURE R16 K30 [PROTO_2]
  DUPCLOSURE R17 K31 [PROTO_3]
  CAPTURE VAL R13
  GETTABLEKS R18 R3 K32 ["connect"]
  MOVE R19 R17
  MOVE R20 R16
  CALL R18 2 1
  MOVE R19 R14
  CALL R18 1 -1
  RETURN R18 -1
