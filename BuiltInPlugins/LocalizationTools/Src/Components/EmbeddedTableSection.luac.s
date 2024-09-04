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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["promptExportToCSVs"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["promptExportToCSVs"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["promptImportFromCSVs"]
  GETUPVAL R1 2
  GETUPVAL R2 3
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["promptImportFromCSVs_deprecated"]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["promptImportFromCSVs"]
  GETUPVAL R1 2
  GETUPVAL R2 3
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["promptImportFromCSVs_deprecated"]
  GETUPVAL R1 2
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Analytics"]
  NAMECALL R4 R4 K4 ["get"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K5 ["LayoutOrder"]
  GETTABLEKS R7 R1 K6 ["IsBusy"]
  NOT R6 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K7 ["IsTextScraperRunning"]
  JUMPIFNOT R7 [+5]
  GETTABLEKS R9 R2 K8 ["TextCaptureButtonImage"]
  GETTABLEKS R8 R9 K9 ["On"]
  JUMPIF R8 [+4]
  GETTABLEKS R9 R2 K8 ["TextCaptureButtonImage"]
  GETTABLEKS R8 R9 K10 ["Off"]
  JUMPIFNOT R7 [+6]
  LOADK R11 K11 ["EmbeddedTableSection"]
  LOADK R12 K12 ["TextCaptureStopText"]
  NAMECALL R9 R3 K13 ["getText"]
  CALL R9 3 1
  JUMPIF R9 [+5]
  LOADK R11 K11 ["EmbeddedTableSection"]
  LOADK R12 K14 ["TextCaptureStartText"]
  NAMECALL R9 R3 K13 ["getText"]
  CALL R9 3 1
  DUPTABLE R10 K19 [{"Padding", "TextCapture", "Export", "Import"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K20 ["createElement"]
  LOADK R12 K21 ["UIPadding"]
  DUPTABLE R13 K24 [{"PaddingTop", "PaddingLeft"}]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R2 K22 ["PaddingTop"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K22 ["PaddingTop"]
  GETIMPORT R14 K27 [UDim.new]
  LOADN R15 0
  GETTABLEKS R16 R2 K28 ["LeftIndent"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K23 ["PaddingLeft"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K15 ["Padding"]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+2]
  LOADNIL R11
  JUMP [+26]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K20 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K34 [{"Active", "ButtonText", "ButtonImage", "LabelText", "LayoutOrder", "OnButtonClick"}]
  SETTABLEKS R6 R13 K29 ["Active"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K35 ["TextCaptureButton"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K30 ["ButtonText"]
  SETTABLEKS R8 R13 K31 ["ButtonImage"]
  SETTABLEKS R9 R13 K32 ["LabelText"]
  LOADN R14 1
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  GETTABLEKS R14 R0 K36 ["toggleTextScraperEnabled"]
  SETTABLEKS R14 R13 K33 ["OnButtonClick"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["TextCapture"]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+31]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K20 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K37 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
  SETTABLEKS R6 R13 K29 ["Active"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K38 ["ExportButton"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K30 ["ButtonText"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K39 ["ExportTextLabel"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K32 ["LabelText"]
  LOADN R14 2
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  NEWCLOSURE R14 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K33 ["OnButtonClick"]
  CALL R11 2 1
  JUMP [+34]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K20 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K34 [{"Active", "ButtonText", "ButtonImage", "LabelText", "LayoutOrder", "OnButtonClick"}]
  SETTABLEKS R6 R13 K29 ["Active"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K38 ["ExportButton"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K30 ["ButtonText"]
  GETTABLEKS R14 R2 K40 ["ExportButtonImage"]
  SETTABLEKS R14 R13 K31 ["ButtonImage"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K39 ["ExportTextLabel"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K32 ["LabelText"]
  LOADN R14 2
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  NEWCLOSURE R14 P1
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K33 ["OnButtonClick"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K17 ["Export"]
  GETUPVAL R12 2
  JUMPIFNOT R12 [+33]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K20 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K37 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
  SETTABLEKS R6 R13 K29 ["Active"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K41 ["ImportButton"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K30 ["ButtonText"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K42 ["ImportTextLabel"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K32 ["LabelText"]
  LOADN R14 3
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  NEWCLOSURE R14 P2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K33 ["OnButtonClick"]
  CALL R11 2 1
  JUMP [+36]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K20 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K34 [{"Active", "ButtonText", "ButtonImage", "LabelText", "LayoutOrder", "OnButtonClick"}]
  SETTABLEKS R6 R13 K29 ["Active"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K41 ["ImportButton"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K30 ["ButtonText"]
  GETTABLEKS R14 R2 K43 ["ImportButtonImage"]
  SETTABLEKS R14 R13 K31 ["ButtonImage"]
  LOADK R16 K11 ["EmbeddedTableSection"]
  LOADK R17 K42 ["ImportTextLabel"]
  NAMECALL R14 R3 K13 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K32 ["LabelText"]
  LOADN R14 3
  SETTABLEKS R14 R13 K5 ["LayoutOrder"]
  NEWCLOSURE R14 P3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K33 ["OnButtonClick"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["Import"]
  DUPTABLE R11 K46 [{"Padding", "SectionLabel", "Container"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K20 ["createElement"]
  LOADK R13 K21 ["UIPadding"]
  DUPTABLE R14 K47 [{"PaddingTop"}]
  GETIMPORT R15 K27 [UDim.new]
  LOADN R16 0
  GETTABLEKS R18 R2 K22 ["PaddingTop"]
  MULK R17 R18 K48 [2]
  CALL R15 2 1
  SETTABLEKS R15 R14 K22 ["PaddingTop"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["Padding"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K20 ["createElement"]
  GETUPVAL R13 7
  DUPTABLE R14 K52 [{"AutomaticSize", "LayoutOrder", "Text", "Style"}]
  GETIMPORT R15 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K49 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  LOADK R17 K11 ["EmbeddedTableSection"]
  LOADK R18 K44 ["SectionLabel"]
  NAMECALL R15 R3 K13 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K50 ["Text"]
  LOADK R15 K56 ["Subtitle"]
  SETTABLEKS R15 R14 K51 ["Style"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["SectionLabel"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K20 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K59 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R15 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K49 ["AutomaticSize"]
  GETIMPORT R15 K63 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K57 ["HorizontalAlignment"]
  GETIMPORT R15 K66 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K58 ["Layout"]
  LOADN R15 2
  SETTABLEKS R15 R14 K5 ["LayoutOrder"]
  MOVE R15 R10
  CALL R12 3 1
  SETTABLEKS R12 R11 K45 ["Container"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K20 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K59 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R15 K61 [Enum.AutomaticSize.Y]
  SETTABLEKS R15 R14 K49 ["AutomaticSize"]
  GETIMPORT R15 K63 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R15 R14 K57 ["HorizontalAlignment"]
  GETIMPORT R15 K66 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K58 ["Layout"]
  SETTABLEKS R5 R14 K5 ["LayoutOrder"]
  MOVE R15 R11
  CALL R12 3 -1
  RETURN R12 -1

PROTO_7:
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
  GETTABLEKS R12 R13 K21 ["LabeledImageButton"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K18 ["Src"]
  GETTABLEKS R14 R15 K22 ["Util"]
  GETTABLEKS R13 R14 K23 ["EmbeddedTableUtil"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K18 ["Src"]
  GETTABLEKS R15 R16 K20 ["Components"]
  GETTABLEKS R14 R15 K24 ["LabeledTextButton"]
  CALL R13 1 1
  GETIMPORT R14 K1 [game]
  LOADK R16 K25 ["EnableLocalizedLocalizationToolsErrorsApi"]
  NAMECALL R14 R14 K26 ["GetEngineFeature"]
  CALL R14 2 1
  GETIMPORT R15 K1 [game]
  LOADK R17 K27 ["LocalizationToolsUpdateTextScraperUI"]
  NAMECALL R15 R15 K28 ["GetFastFlag"]
  CALL R15 2 1
  GETTABLEKS R16 R2 K29 ["PureComponent"]
  LOADK R18 K30 ["EmbeddedTableSection"]
  NAMECALL R16 R16 K31 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K32 [PROTO_1]
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K33 ["init"]
  DUPCLOSURE R17 K34 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K35 ["render"]
  DUPCLOSURE R17 K36 [PROTO_7]
  MOVE R18 R6
  DUPTABLE R19 K41 [{"Plugin", "Stylizer", "Localization", "Analytics"}]
  GETTABLEKS R20 R5 K37 ["Plugin"]
  SETTABLEKS R20 R19 K37 ["Plugin"]
  GETTABLEKS R20 R5 K38 ["Stylizer"]
  SETTABLEKS R20 R19 K38 ["Stylizer"]
  GETTABLEKS R20 R5 K39 ["Localization"]
  SETTABLEKS R20 R19 K39 ["Localization"]
  SETTABLEKS R10 R19 K40 ["Analytics"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  GETTABLEKS R18 R3 K42 ["connect"]
  MOVE R19 R17
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 -1
  RETURN R18 -1
