PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["Stylizer"]
  NEWTABLE R4 1 0
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K3 ["IsPlayerChoiceTitleStyle"]
  JUMPIFNOT R5 [+58]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K5 ["TextLabel"]
  DUPTABLE R7 K14 [{"BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "TextYAlignment", "TextColor3", "Font", "TextSize", "Text"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["BackgroundTransparency"]
  LOADN R8 0
  SETTABLEKS R8 R7 K7 ["BorderSizePixel"]
  GETIMPORT R8 K17 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K8 ["TextXAlignment"]
  GETIMPORT R8 K19 [Enum.TextYAlignment.Top]
  SETTABLEKS R8 R7 K9 ["TextYAlignment"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K20 ["getRadioButtonTextColor"]
  GETTABLEKS R10 R0 K0 ["props"]
  CALL R9 1 1
  JUMPIFNOT R9 [+7]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K20 ["getRadioButtonTextColor"]
  GETTABLEKS R9 R0 K0 ["props"]
  CALL R8 1 1
  JUMP [+6]
  GETTABLEKS R10 R3 K21 ["fontStyle"]
  GETTABLEKS R9 R10 K22 ["Header"]
  GETTABLEKS R8 R9 K10 ["TextColor3"]
  SETTABLEKS R8 R7 K10 ["TextColor3"]
  GETIMPORT R8 K24 [Enum.Font.SourceSans]
  SETTABLEKS R8 R7 K11 ["Font"]
  LOADN R8 22
  SETTABLEKS R8 R7 K12 ["TextSize"]
  LOADK R10 K25 ["General"]
  LOADK R11 K26 ["AvatarOverridePrompt"]
  NAMECALL R8 R2 K27 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K28 ["PlayerChoiceLabel"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K31 [{"LayoutOrder", "Title"}]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K29 ["LayoutOrder"]
  ORK R8 R9 K32 [1]
  SETTABLEKS R8 R7 K29 ["LayoutOrder"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K13 ["Text"]
  SETTABLEKS R8 R7 K30 ["Title"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R1 K5 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K8 ["ContextServices"]
  GETTABLEKS R5 R4 K9 ["withContext"]
  GETTABLEKS R6 R3 K10 ["UI"]
  GETTABLEKS R7 R6 K11 ["TitledFrame"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K12 ["Util"]
  GETTABLEKS R9 R10 K13 ["StateInterfaceTheme"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K14 ["Component"]
  LOADK R11 K15 ["ComponentTitleBar"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K18 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K21 [{"Localization", "Stylizer"}]
  GETTABLEKS R12 R4 K19 ["Localization"]
  SETTABLEKS R12 R11 K19 ["Localization"]
  GETTABLEKS R12 R4 K20 ["Stylizer"]
  SETTABLEKS R12 R11 K20 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
