PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Hooks"]
  GETTABLEKS R1 R2 K1 ["useTokens"]
  CALL R1 0 1
  GETTABLEKS R2 R0 K2 ["text"]
  JUMPIFNOTEQKS R2 K3 [""] [+3]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R0 K4 ["role"]
  JUMPIFNOTEQKS R2 K5 ["user"] [+70]
  GETTABLEKS R3 R1 K6 ["Typography"]
  GETTABLEKS R2 R3 K7 ["BodySmall"]
  GETTABLEKS R5 R1 K8 ["Color"]
  GETTABLEKS R4 R5 K9 ["Content"]
  GETTABLEKS R3 R4 K10 ["Emphasis"]
  GETUPVAL R4 1
  LOADK R5 K11 ["TextBox"]
  DUPTABLE R6 K27 [{"Text", "AutomaticSize", "Font", "TextSize", "LineHeight", "TextColor3", "TextTransparency", "TextXAlignment", "TextWrapped", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "TextEditable", "RichText", "LayoutOrder"}]
  GETTABLEKS R7 R0 K2 ["text"]
  SETTABLEKS R7 R6 K12 ["Text"]
  GETIMPORT R7 K30 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K13 ["AutomaticSize"]
  GETTABLEKS R7 R2 K14 ["Font"]
  SETTABLEKS R7 R6 K14 ["Font"]
  GETTABLEKS R7 R2 K31 ["FontSize"]
  SETTABLEKS R7 R6 K15 ["TextSize"]
  GETTABLEKS R7 R2 K16 ["LineHeight"]
  SETTABLEKS R7 R6 K16 ["LineHeight"]
  GETTABLEKS R7 R3 K32 ["Color3"]
  SETTABLEKS R7 R6 K17 ["TextColor3"]
  GETTABLEKS R7 R3 K33 ["Transparency"]
  SETTABLEKS R7 R6 K18 ["TextTransparency"]
  GETIMPORT R7 K35 [Enum.TextXAlignment.Left]
  SETTABLEKS R7 R6 K19 ["TextXAlignment"]
  LOADB R7 1
  SETTABLEKS R7 R6 K20 ["TextWrapped"]
  LOADN R7 1
  SETTABLEKS R7 R6 K21 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K22 ["BorderSizePixel"]
  LOADB R7 0
  SETTABLEKS R7 R6 K23 ["ClearTextOnFocus"]
  LOADB R7 0
  SETTABLEKS R7 R6 K24 ["TextEditable"]
  LOADB R7 1
  SETTABLEKS R7 R6 K25 ["RichText"]
  GETTABLEKS R7 R0 K26 ["LayoutOrder"]
  SETTABLEKS R7 R6 K26 ["LayoutOrder"]
  CALL R4 2 -1
  RETURN R4 -1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K38 [{"markdown", "LayoutOrder", "messageId"}]
  GETTABLEKS R5 R0 K2 ["text"]
  SETTABLEKS R5 R4 K36 ["markdown"]
  GETTABLEKS R5 R0 K26 ["LayoutOrder"]
  SETTABLEKS R5 R4 K26 ["LayoutOrder"]
  GETTABLEKS R5 R0 K37 ["messageId"]
  SETTABLEKS R5 R4 K37 ["messageId"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["ContentWidgetRegistry"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["MarkdownText"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Parent"]
  GETTABLEKS R5 R6 K12 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R0 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["Flags"]
  GETTABLEKS R7 R8 K15 ["FFlagAssistantRegisterWidgetsThroughTools"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K16 ["createElement"]
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R3
  DUPTABLE R9 K20 [{"Type", "ContentWidget"}]
  LOADK R10 K21 ["Text"]
  SETTABLEKS R10 R9 K18 ["Type"]
  GETTABLEKS R10 R4 K22 ["memo"]
  MOVE R11 R8
  CALL R10 1 1
  SETTABLEKS R10 R9 K19 ["ContentWidget"]
  MOVE R10 R6
  CALL R10 0 1
  JUMPIF R10 [+7]
  GETTABLEKS R10 R1 K23 ["registerWidget"]
  GETTABLEKS R11 R9 K18 ["Type"]
  GETTABLEKS R12 R9 K19 ["ContentWidget"]
  CALL R10 2 0
  RETURN R9 1
