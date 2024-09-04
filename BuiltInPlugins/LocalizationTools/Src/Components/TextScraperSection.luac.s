PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Analytics"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["toggleTextScraperEnabled"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 0
  NEWTABLE R4 0 0
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["toggleTextScraperEnabled"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R6 R1 K4 ["IsBusy"]
  NOT R5 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["IsTextScraperRunning"]
  JUMPIFNOT R6 [+5]
  GETTABLEKS R8 R2 K6 ["TextCaptureButtonImage"]
  GETTABLEKS R7 R8 K7 ["On"]
  JUMPIF R7 [+4]
  GETTABLEKS R8 R2 K6 ["TextCaptureButtonImage"]
  GETTABLEKS R7 R8 K8 ["Off"]
  DUPTABLE R8 K11 [{"Padding", "TextCapture"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["createElement"]
  LOADK R10 K13 ["UIPadding"]
  DUPTABLE R11 K16 [{"PaddingTop", "PaddingLeft"}]
  GETIMPORT R12 K19 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R2 K14 ["PaddingTop"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["PaddingTop"]
  GETIMPORT R12 K19 [UDim.new]
  LOADN R13 0
  GETTABLEKS R14 R2 K20 ["LeftIndent"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["PaddingLeft"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["Padding"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K29 [{"Active", "Enabled", "ButtonText", "ButtonImage", "LabelText", "LinkText", "LayoutOrder", "OnButtonClick", "Link"}]
  SETTABLEKS R5 R11 K21 ["Active"]
  SETTABLEKS R6 R11 K22 ["Enabled"]
  LOADK R12 K30 [""]
  SETTABLEKS R12 R11 K23 ["ButtonText"]
  SETTABLEKS R7 R11 K24 ["ButtonImage"]
  LOADK R14 K31 ["TextScraperSection"]
  LOADK R15 K32 ["SectionDescription"]
  NAMECALL R12 R3 K33 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K25 ["LabelText"]
  LOADK R14 K31 ["TextScraperSection"]
  LOADK R15 K34 ["LearnMore"]
  NAMECALL R12 R3 K33 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K26 ["LinkText"]
  LOADN R12 1
  SETTABLEKS R12 R11 K3 ["LayoutOrder"]
  GETTABLEKS R12 R0 K35 ["toggleTextScraperEnabled"]
  SETTABLEKS R12 R11 K27 ["OnButtonClick"]
  LOADK R12 K36 ["https://create.roblox.com/docs/production/localization/automatic-translations"]
  SETTABLEKS R12 R11 K28 ["Link"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K10 ["TextCapture"]
  DUPTABLE R9 K39 [{"Padding", "SectionLabel", "Container"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K13 ["UIPadding"]
  DUPTABLE R12 K40 [{"PaddingTop"}]
  GETIMPORT R13 K19 [UDim.new]
  LOADN R14 0
  GETTABLEKS R16 R2 K14 ["PaddingTop"]
  MULK R15 R16 K41 [2]
  CALL R13 2 1
  SETTABLEKS R13 R12 K14 ["PaddingTop"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K9 ["Padding"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K45 [{"AutomaticSize", "LayoutOrder", "Text", "Style"}]
  GETIMPORT R13 K48 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K42 ["AutomaticSize"]
  LOADN R13 1
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  LOADK R15 K31 ["TextScraperSection"]
  LOADK R16 K49 ["AutomaticTextCapture"]
  NAMECALL R13 R3 K33 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K43 ["Text"]
  LOADK R13 K50 ["Subtitle"]
  SETTABLEKS R13 R12 K44 ["Style"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["SectionLabel"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K53 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R13 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K42 ["AutomaticSize"]
  GETIMPORT R13 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K51 ["HorizontalAlignment"]
  GETIMPORT R13 K60 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K52 ["Layout"]
  LOADN R13 2
  SETTABLEKS R13 R12 K3 ["LayoutOrder"]
  MOVE R13 R8
  CALL R10 3 1
  SETTABLEKS R10 R9 K38 ["Container"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K12 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K53 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R13 K55 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K42 ["AutomaticSize"]
  GETIMPORT R13 K57 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K51 ["HorizontalAlignment"]
  GETIMPORT R13 K60 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K52 ["Layout"]
  SETTABLEKS R4 R12 K3 ["LayoutOrder"]
  MOVE R13 R9
  CALL R10 3 -1
  RETURN R10 -1

PROTO_3:
  DUPTABLE R2 K1 [{"IsBusy"}]
  GETTABLEKS R4 R0 K2 ["CloudTable"]
  GETTABLEKS R3 R4 K0 ["IsBusy"]
  SETTABLEKS R3 R2 K0 ["IsBusy"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LocalizationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETTABLEKS R7 R4 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Pane"]
  GETTABLEKS R9 R7 K17 ["TextLabel"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R13 R1 K18 ["Src"]
  GETTABLEKS R12 R13 K13 ["ContextServices"]
  GETTABLEKS R11 R12 K19 ["AnalyticsContext"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K18 ["Src"]
  GETTABLEKS R13 R14 K20 ["Components"]
  GETTABLEKS R12 R13 K21 ["TextScraperToggle"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K18 ["Src"]
  GETTABLEKS R14 R15 K22 ["Util"]
  GETTABLEKS R13 R14 K23 ["EmbeddedTableUtil"]
  CALL R12 1 1
  GETTABLEKS R13 R2 K24 ["PureComponent"]
  LOADK R15 K25 ["TextScraperSection"]
  NAMECALL R13 R13 K26 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K27 [PROTO_1]
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K28 ["init"]
  DUPCLOSURE R14 K29 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K30 ["render"]
  DUPCLOSURE R14 K31 [PROTO_3]
  MOVE R15 R6
  DUPTABLE R16 K36 [{"Plugin", "Stylizer", "Localization", "Analytics"}]
  GETTABLEKS R17 R5 K32 ["Plugin"]
  SETTABLEKS R17 R16 K32 ["Plugin"]
  GETTABLEKS R17 R5 K33 ["Stylizer"]
  SETTABLEKS R17 R16 K33 ["Stylizer"]
  GETTABLEKS R17 R5 K34 ["Localization"]
  SETTABLEKS R17 R16 K34 ["Localization"]
  SETTABLEKS R10 R16 K35 ["Analytics"]
  CALL R15 1 1
  MOVE R16 R13
  CALL R15 1 1
  MOVE R13 R15
  GETTABLEKS R15 R3 K37 ["connect"]
  MOVE R16 R14
  CALL R15 1 1
  MOVE R16 R13
  CALL R15 1 -1
  RETURN R15 -1
