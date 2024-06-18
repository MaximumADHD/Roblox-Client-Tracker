PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["TERMS_OF_SERVICE_URL"]
  NAMECALL R0 R0 K1 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Plugin"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["TEXTURE_GENERATOR_LEGAL_ACCEPT"]
  LOADB R3 1
  NAMECALL R0 R0 K2 ["SetSetting"]
  CALL R0 3 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["AcceptedButtonEnable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  GETUPVAL R3 2
  LOADK R5 K2 ["TermsOfServiceScreen"]
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 2 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K7 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
  GETIMPORT R7 K10 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K4 ["HorizontalAlignment"]
  GETIMPORT R7 K13 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K5 ["Layout"]
  GETIMPORT R7 K15 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K6 ["VerticalAlignment"]
  DUPTABLE R7 K18 [{"AlertPane", "ButtonPane"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K22 [{"AutomaticSize", "Size", "HorizontalAlignment", "Layout", "VerticalAlignment", "LayoutOrder"}]
  GETIMPORT R11 K24 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K19 ["AutomaticSize"]
  GETTABLEKS R11 R3 K25 ["AlertSize"]
  SETTABLEKS R11 R10 K20 ["Size"]
  GETIMPORT R11 K10 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R11 R10 K4 ["HorizontalAlignment"]
  GETIMPORT R11 K13 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K5 ["Layout"]
  GETIMPORT R11 K15 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K6 ["VerticalAlignment"]
  NAMECALL R11 R2 K26 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  DUPTABLE R11 K28 [{"TermsAlert"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K34 [{"Title", "Description", "LinkMap", "Style", "ZIndex"}]
  LOADK R17 K35 ["TermsOfService"]
  LOADK R18 K29 ["Title"]
  NAMECALL R15 R1 K36 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K29 ["Title"]
  LOADK R17 K35 ["TermsOfService"]
  LOADK R18 K30 ["Description"]
  NAMECALL R15 R1 K36 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K30 ["Description"]
  NEWTABLE R15 1 0
  DUPTABLE R16 K39 [{"LinkText", "LinkCallback"}]
  LOADK R19 K35 ["TermsOfService"]
  LOADK R20 K37 ["LinkText"]
  NAMECALL R17 R1 K36 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K37 ["LinkText"]
  DUPCLOSURE R17 K40 [PROTO_0]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R17 R16 K38 ["LinkCallback"]
  SETTABLEKS R16 R15 K41 ["[link]"]
  SETTABLEKS R15 R14 K31 ["LinkMap"]
  LOADK R15 K42 ["Notice"]
  SETTABLEKS R15 R14 K32 ["Style"]
  LOADN R15 2
  SETTABLEKS R15 R14 K33 ["ZIndex"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["TermsAlert"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K16 ["AlertPane"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K43 [{"Size", "HorizontalAlignment", "Layout", "VerticalAlignment", "LayoutOrder"}]
  GETTABLEKS R11 R3 K44 ["ButtonPaneSize"]
  SETTABLEKS R11 R10 K20 ["Size"]
  GETIMPORT R11 K46 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R11 R10 K4 ["HorizontalAlignment"]
  GETIMPORT R11 K13 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K5 ["Layout"]
  GETIMPORT R11 K15 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K6 ["VerticalAlignment"]
  NAMECALL R11 R2 K26 ["getNextOrder"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  DUPTABLE R11 K48 [{"AcceptButton"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K52 [{"AnchorPoint", "Text", "Size", "Style", "OnClick"}]
  GETTABLEKS R15 R3 K53 ["ButtonAnchorPoint"]
  SETTABLEKS R15 R14 K49 ["AnchorPoint"]
  LOADK R17 K35 ["TermsOfService"]
  LOADK R18 K54 ["Accept"]
  NAMECALL R15 R1 K36 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K50 ["Text"]
  GETTABLEKS R15 R3 K55 ["ButtonSize"]
  SETTABLEKS R15 R14 K20 ["Size"]
  LOADK R15 K56 ["RoundPrimary"]
  SETTABLEKS R15 R14 K32 ["Style"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R15 R14 K51 ["OnClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K47 ["AcceptButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K17 ["ButtonPane"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
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
  GETTABLEKS R6 R5 K12 ["Alert"]
  GETTABLEKS R7 R5 K13 ["Pane"]
  GETTABLEKS R8 R5 K14 ["Button"]
  GETTABLEKS R10 R2 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Stylizer"]
  GETTABLEKS R11 R2 K17 ["Util"]
  GETTABLEKS R10 R11 K18 ["LayoutOrderIterator"]
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K19 ["Src"]
  GETTABLEKS R13 R14 K17 ["Util"]
  GETTABLEKS R12 R13 K20 ["Constants"]
  CALL R11 1 1
  GETIMPORT R12 K22 [game]
  LOADK R14 K23 ["GuiService"]
  NAMECALL R12 R12 K24 ["GetService"]
  CALL R12 2 1
  DUPCLOSURE R13 K25 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R8
  RETURN R13 1
