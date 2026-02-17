PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K2 [{"tag", "LayoutOrder"}]
  LOADK R5 K3 ["col size-full-0 auto-y gap-small"]
  SETTABLEKS R5 R4 K0 ["tag"]
  GETTABLEKS R5 R0 K1 ["LayoutOrder"]
  SETTABLEKS R5 R4 K1 ["LayoutOrder"]
  DUPTABLE R5 K6 [{"Text", "Content"}]
  GETUPVAL R6 1
  GETUPVAL R7 3
  DUPTABLE R8 K7 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K8 ["size-full-0 auto-y text-title-small text-align-x-left"]
  SETTABLEKS R9 R8 K0 ["tag"]
  GETTABLEKS R9 R0 K9 ["Title"]
  SETTABLEKS R9 R8 K4 ["Text"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K1 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Text"]
  GETUPVAL R6 1
  GETUPVAL R7 2
  DUPTABLE R8 K2 [{"tag", "LayoutOrder"}]
  LOADK R9 K10 ["size-full-0 auto-y"]
  SETTABLEKS R9 R8 K0 ["tag"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K1 ["LayoutOrder"]
  GETTABLEKS R9 R0 K11 ["children"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["Content"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R3 R1 K0 ["Typography"]
  GETTABLEKS R2 R3 K1 ["BodySmall"]
  GETTABLEKS R5 R1 K2 ["Color"]
  GETTABLEKS R4 R5 K3 ["Content"]
  GETTABLEKS R3 R4 K4 ["Default"]
  GETUPVAL R4 1
  GETUPVAL R5 2
  DUPTABLE R6 K8 [{"tag", "scroll", "LayoutOrder"}]
  LOADK R7 K9 ["size-full-0 auto-y bg-shift-300 padding-small radius-small"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K6 ["scroll"]
  GETTABLEKS R7 R0 K7 ["LayoutOrder"]
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  DUPTABLE R7 K11 [{"Text"}]
  GETUPVAL R8 1
  LOADK R9 K12 ["TextBox"]
  DUPTABLE R10 K25 [{"TextEditable", "ClearTextOnFocus", "AutomaticSize", "TextColor3", "TextTransparency", "TextXAlignment", "TextYAlignment", "TextSize", "LineHeight", "Text", "FontFace", "BackgroundTransparency", "BorderSizePixel"}]
  LOADB R11 0
  SETTABLEKS R11 R10 K13 ["TextEditable"]
  LOADB R11 0
  SETTABLEKS R11 R10 K14 ["ClearTextOnFocus"]
  GETIMPORT R11 K28 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K15 ["AutomaticSize"]
  GETTABLEKS R11 R3 K29 ["Color3"]
  SETTABLEKS R11 R10 K16 ["TextColor3"]
  GETTABLEKS R11 R3 K30 ["Transparency"]
  SETTABLEKS R11 R10 K17 ["TextTransparency"]
  GETIMPORT R11 K32 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K18 ["TextXAlignment"]
  GETIMPORT R11 K34 [Enum.TextYAlignment.Top]
  SETTABLEKS R11 R10 K19 ["TextYAlignment"]
  GETTABLEKS R11 R2 K35 ["FontSize"]
  SETTABLEKS R11 R10 K20 ["TextSize"]
  GETTABLEKS R11 R2 K21 ["LineHeight"]
  SETTABLEKS R11 R10 K21 ["LineHeight"]
  GETTABLEKS R11 R0 K10 ["Text"]
  SETTABLEKS R11 R10 K10 ["Text"]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K36 ["CODE_FONT"]
  SETTABLEKS R11 R10 K22 ["FontFace"]
  LOADN R11 1
  SETTABLEKS R11 R10 K23 ["BackgroundTransparency"]
  LOADN R11 0
  SETTABLEKS R11 R10 K24 ["BorderSizePixel"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Text"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K10 ["Types"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K11 ["ScrollView"]
  GETTABLEKS R7 R1 K12 ["Enums"]
  GETTABLEKS R6 R7 K13 ["Visibility"]
  GETTABLEKS R7 R1 K14 ["View"]
  GETTABLEKS R8 R1 K15 ["Text"]
  GETTABLEKS R9 R3 K16 ["createNextOrder"]
  GETTABLEKS R11 R1 K17 ["Hooks"]
  GETTABLEKS R10 R11 K18 ["useTokens"]
  GETTABLEKS R11 R2 K19 ["createElement"]
  DUPTABLE R12 K26 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
  GETIMPORT R13 K29 [UDim2.fromOffset]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["CanvasSize"]
  GETIMPORT R13 K32 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K21 ["AutomaticSize"]
  GETIMPORT R13 K34 [Enum.AutomaticSize.X]
  SETTABLEKS R13 R12 K22 ["AutomaticCanvasSize"]
  GETIMPORT R13 K35 [Enum.ScrollingDirection.X]
  SETTABLEKS R13 R12 K23 ["ScrollingDirection"]
  GETTABLEKS R13 R6 K36 ["Auto"]
  SETTABLEKS R13 R12 K24 ["scrollBarVisibility"]
  GETIMPORT R13 K39 [Enum.ScrollBarInset.Always]
  SETTABLEKS R13 R12 K25 ["HorizontalScrollBarInset"]
  DUPCLOSURE R13 K40 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R8
  DUPCLOSURE R14 K41 [PROTO_1]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R4
  DUPTABLE R15 K44 [{"ToolContainer", "ToolText"}]
  SETTABLEKS R13 R15 K42 ["ToolContainer"]
  GETTABLEKS R16 R2 K45 ["memo"]
  MOVE R17 R14
  CALL R16 1 1
  SETTABLEKS R16 R15 K43 ["ToolText"]
  RETURN R15 1
