PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"dialogInputValue"}]
  SETTABLEKS R0 R3 K0 ["dialogInputValue"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R1 K0 ["OnSaveButtonPressed"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["OnSaveButtonPressed prop not defined"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K4 ["OnCancelButtonPressed"]
  FASTCALL2K ASSERT R3 K5 [+4]
  LOADK R4 K5 ["OnCancelButtonPressed prop not defined"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K6 ["MessageLocalizationKey"]
  FASTCALL2K ASSERT R3 K7 [+4]
  LOADK R4 K7 ["MessageLocalizationKey prop not defined"]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  DUPTABLE R4 K9 [{"dialogInputValue"}]
  GETTABLEKS R6 R1 K11 ["DefaultInputValue"]
  ORK R5 R6 K10 [""]
  SETTABLEKS R5 R4 K8 ["dialogInputValue"]
  NAMECALL R2 R0 K12 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K13 ["onTextInputChanged"]
  RETURN R0 0

PROTO_2:
  JUMPIFNOTEQKS R0 K0 ["Save"] [+11]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["OnSaveButtonPressed"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["dialogInputValue"]
  CALL R1 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K4 ["Cancel"] [+5]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["OnCancelButtonPressed"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"Title", "OnClose", "OnButtonPressed", "Buttons", "MinContentSize"}]
  LOADK R9 K10 ["ChooseRecordingNamePopUp"]
  LOADK R10 K4 ["Title"]
  NAMECALL R7 R2 K11 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["Title"]
  GETTABLEKS R7 R1 K12 ["OnCancelButtonPressed"]
  SETTABLEKS R7 R6 K5 ["OnClose"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K6 ["OnButtonPressed"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K16 [{"Key", "Text", "Style"}]
  LOADK R9 K17 ["Save"]
  SETTABLEKS R9 R8 K13 ["Key"]
  LOADK R11 K10 ["ChooseRecordingNamePopUp"]
  LOADK R12 K18 ["SaveButtonName"]
  NAMECALL R9 R2 K11 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["Text"]
  LOADK R9 K19 ["RoundPrimary"]
  SETTABLEKS R9 R8 K15 ["Style"]
  DUPTABLE R9 K16 [{"Key", "Text", "Style"}]
  LOADK R10 K20 ["Cancel"]
  SETTABLEKS R10 R9 K13 ["Key"]
  LOADK R12 K10 ["ChooseRecordingNamePopUp"]
  LOADK R13 K21 ["CancelButtonName"]
  NAMECALL R10 R2 K11 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Text"]
  LOADK R10 K22 ["Round"]
  SETTABLEKS R10 R9 K15 ["Style"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K7 ["Buttons"]
  GETTABLEKS R7 R3 K23 ["ContentSize"]
  SETTABLEKS R7 R6 K8 ["MinContentSize"]
  DUPTABLE R7 K25 [{"Container"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K31 [{"Size", "Position", "Spacing", "Layout", "HorizontalAlignment"}]
  GETTABLEKS R11 R3 K32 ["PanelSize"]
  SETTABLEKS R11 R10 K26 ["Size"]
  GETTABLEKS R11 R3 K33 ["PanelPosition"]
  SETTABLEKS R11 R10 K27 ["Position"]
  GETTABLEKS R11 R3 K34 ["PaddingPx"]
  SETTABLEKS R11 R10 K28 ["Spacing"]
  GETIMPORT R11 K38 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K29 ["Layout"]
  GETIMPORT R11 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K30 ["HorizontalAlignment"]
  DUPTABLE R11 K43 [{"Message", "Input"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K47 [{"Size", "Text", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
  GETTABLEKS R15 R3 K48 ["DialogMessageSize"]
  SETTABLEKS R15 R14 K26 ["Size"]
  LOADK R17 K10 ["ChooseRecordingNamePopUp"]
  GETTABLEKS R18 R1 K49 ["MessageLocalizationKey"]
  DUPTABLE R19 K51 [{"numBytes"}]
  GETTABLEKS R21 R1 K52 ["MessageLocalizationArgs"]
  GETTABLEN R20 R21 1
  SETTABLEKS R20 R19 K50 ["numBytes"]
  NAMECALL R15 R2 K11 ["getText"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K14 ["Text"]
  GETIMPORT R15 K53 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K44 ["TextXAlignment"]
  LOADB R15 1
  SETTABLEKS R15 R14 K45 ["TextWrapped"]
  LOADN R15 1
  SETTABLEKS R15 R14 K46 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K41 ["Message"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K54 ["TextInput"]
  DUPTABLE R14 K57 [{"Size", "Text", "OnTextChanged", "Style", "PlaceholderText", "LayoutOrder"}]
  GETTABLEKS R15 R3 K58 ["TextInputSize"]
  SETTABLEKS R15 R14 K26 ["Size"]
  GETTABLEKS R16 R0 K59 ["state"]
  GETTABLEKS R15 R16 K60 ["dialogInputValue"]
  SETTABLEKS R15 R14 K14 ["Text"]
  GETTABLEKS R15 R0 K61 ["onTextInputChanged"]
  SETTABLEKS R15 R14 K55 ["OnTextChanged"]
  GETUPVAL R16 5
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+1]
  LOADK R15 K62 ["RoundedBorder"]
  SETTABLEKS R15 R14 K15 ["Style"]
  LOADK R15 K63 [""]
  SETTABLEKS R15 R14 K56 ["PlaceholderText"]
  LOADN R15 2
  SETTABLEKS R15 R14 K46 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["Input"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K24 ["Container"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R5 R4 K10 ["Pane"]
  GETTABLEKS R6 R4 K11 ["TextLabel"]
  GETTABLEKS R7 R4 K12 ["StyledDialog"]
  GETIMPORT R8 K14 [game]
  LOADK R10 K15 ["UserInputPlaybackPluginChooseRecordingNamePopUpFixStyle"]
  NAMECALL R8 R8 K16 ["getFastFlag"]
  CALL R8 2 1
  GETTABLEKS R9 R1 K17 ["PureComponent"]
  LOADK R11 K18 ["ChooseRecordingNamePopUp"]
  NAMECALL R9 R9 K19 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K20 [PROTO_1]
  SETTABLEKS R10 R9 K21 ["init"]
  DUPCLOSURE R10 K22 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R8
  SETTABLEKS R10 R9 K23 ["render"]
  GETTABLEKS R10 R3 K24 ["withContext"]
  DUPTABLE R11 K27 [{"Stylizer", "Localization"}]
  GETTABLEKS R12 R3 K25 ["Stylizer"]
  SETTABLEKS R12 R11 K25 ["Stylizer"]
  GETTABLEKS R12 R3 K26 ["Localization"]
  SETTABLEKS R12 R11 K26 ["Localization"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
