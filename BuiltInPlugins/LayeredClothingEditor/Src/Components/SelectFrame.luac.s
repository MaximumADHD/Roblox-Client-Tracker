PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["PartName"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  LOADK R7 K4 ["Select"]
  LOADK R8 K5 ["Part"]
  NAMECALL R5 R4 K6 ["getText"]
  CALL R5 3 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K12 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
  GETIMPORT R9 K15 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R13 R3 K16 ["TextBoxHeight"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K8 ["Size"]
  SETTABLEKS R0 R8 K9 ["LayoutOrder"]
  GETIMPORT R9 K20 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K10 ["Layout"]
  GETIMPORT R9 K22 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K11 ["HorizontalAlignment"]
  DUPTABLE R9 K25 [{"TextBoxLabel", "SelectedPartBox"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"TextXAlignment", "TextYAlignment", "Size", "Text", "LayoutOrder"}]
  GETIMPORT R13 K30 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K26 ["TextXAlignment"]
  GETIMPORT R13 K32 [Enum.TextYAlignment.Center]
  SETTABLEKS R13 R12 K27 ["TextYAlignment"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADN R14 0
  GETTABLEKS R15 R3 K33 ["LabelWidth"]
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K8 ["Size"]
  SETTABLEKS R5 R12 K28 ["Text"]
  ADDK R13 R0 K34 [1]
  SETTABLEKS R13 R12 K9 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["TextBoxLabel"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K38 [{"Enabled", "ShouldFocus", "Text", "Size", "LayoutOrder", "Style"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K35 ["Enabled"]
  LOADB R13 0
  SETTABLEKS R13 R12 K36 ["ShouldFocus"]
  SETTABLEKS R2 R12 K28 ["Text"]
  GETIMPORT R13 K15 [UDim2.new]
  LOADK R14 K39 [0.5]
  LOADN R15 0
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K8 ["Size"]
  ADDK R13 R0 K40 [2]
  SETTABLEKS R13 R12 K9 ["LayoutOrder"]
  LOADK R13 K41 ["FilledRoundedBorder"]
  SETTABLEKS R13 R12 K37 ["Style"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["SelectedPartBox"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K0 ["renderContent"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["ButtonEnabled"]
  GETTABLEKS R3 R1 K2 ["OnConfirmSelection"]
  GETTABLEKS R4 R1 K3 ["Localization"]
  LOADK R7 K4 ["Select"]
  LOADK R8 K5 ["Prompt"]
  NAMECALL R5 R4 K6 ["getText"]
  CALL R5 3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K16 [{"Title", "PromptText", "NextButtonText", "BackButtonText", "NextButtonEnabled", "HasBackButton", "GoToNext", "RenderContent"}]
  LOADK R11 K17 ["Editor"]
  LOADK R12 K4 ["Select"]
  NAMECALL R9 R4 K6 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Title"]
  SETTABLEKS R5 R8 K9 ["PromptText"]
  LOADK R11 K18 ["Flow"]
  LOADK R12 K19 ["Next"]
  NAMECALL R9 R4 K6 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["NextButtonText"]
  LOADK R9 K20 [""]
  SETTABLEKS R9 R8 K11 ["BackButtonText"]
  SETTABLEKS R2 R8 K12 ["NextButtonEnabled"]
  LOADB R9 0
  SETTABLEKS R9 R8 K13 ["HasBackButton"]
  SETTABLEKS R3 R8 K14 ["GoToNext"]
  GETTABLEKS R9 R0 K21 ["renderContent"]
  SETTABLEKS R9 R8 K15 ["RenderContent"]
  CALL R6 2 -1
  RETURN R6 -1

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
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K10 ["AvatarToolsShared"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K11 ["Components"]
  GETTABLEKS R7 R6 K12 ["FlowScreenLayout"]
  GETTABLEKS R8 R2 K13 ["UI"]
  GETTABLEKS R9 R8 K14 ["TextLabel"]
  GETTABLEKS R10 R8 K15 ["DEPRECATED_TextInput"]
  GETTABLEKS R11 R8 K16 ["Pane"]
  GETTABLEKS R12 R1 K17 ["PureComponent"]
  LOADK R14 K18 ["SelectFrame"]
  NAMECALL R12 R12 K19 ["extend"]
  CALL R12 2 1
  GETTABLEKS R13 R2 K20 ["Util"]
  GETTABLEKS R14 R13 K21 ["Typecheck"]
  GETTABLEKS R15 R14 K22 ["wrap"]
  MOVE R16 R12
  GETIMPORT R17 K1 [script]
  CALL R15 2 0
  DUPCLOSURE R15 K23 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R15 R12 K24 ["init"]
  DUPCLOSURE R15 K25 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R7
  SETTABLEKS R15 R12 K26 ["render"]
  MOVE R15 R4
  DUPTABLE R16 K29 [{"Stylizer", "Localization"}]
  GETTABLEKS R17 R3 K27 ["Stylizer"]
  SETTABLEKS R17 R16 K27 ["Stylizer"]
  GETTABLEKS R17 R3 K28 ["Localization"]
  SETTABLEKS R17 R16 K28 ["Localization"]
  CALL R15 1 1
  MOVE R16 R12
  CALL R15 1 1
  MOVE R12 R15
  RETURN R12 1
