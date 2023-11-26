PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["LayoutOrder"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["renderContent"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["title"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["titleWidth"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["Stylizer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K11 [{"BackgroundTransparency", "contentPadding", "FillDirection", "LayoutOrder", "width"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K7 ["BackgroundTransparency"]
  GETIMPORT R9 K14 [UDim.new]
  LOADN R10 0
  LOADN R11 20
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["contentPadding"]
  GETIMPORT R9 K17 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K9 ["FillDirection"]
  SETTABLEKS R1 R8 K1 ["LayoutOrder"]
  GETIMPORT R9 K14 [UDim.new]
  LOADN R10 1
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K10 ["width"]
  DUPTABLE R9 K20 [{"Title", "Container"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K26 [{"BackgroundTransparency", "Font", "LayoutOrder", "Text", "TextColor3", "TextXAlignment", "TextSize", "width"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K7 ["BackgroundTransparency"]
  GETTABLEKS R13 R5 K21 ["Font"]
  SETTABLEKS R13 R12 K21 ["Font"]
  LOADN R13 1
  SETTABLEKS R13 R12 K1 ["LayoutOrder"]
  SETTABLEKS R3 R12 K22 ["Text"]
  GETTABLEKS R13 R5 K27 ["SubTextColor"]
  SETTABLEKS R13 R12 K23 ["TextColor3"]
  GETIMPORT R13 K29 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K24 ["TextXAlignment"]
  LOADN R13 18
  SETTABLEKS R13 R12 K25 ["TextSize"]
  GETIMPORT R13 K14 [UDim.new]
  LOADN R14 0
  MOVE R15 R4
  CALL R13 2 1
  SETTABLEKS R13 R12 K10 ["width"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Title"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K30 [{"BackgroundTransparency", "LayoutOrder", "width"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K7 ["BackgroundTransparency"]
  LOADN R13 2
  SETTABLEKS R13 R12 K1 ["LayoutOrder"]
  GETIMPORT R13 K14 [UDim.new]
  LOADN R14 1
  MINUS R16 R4
  SUBK R15 R16 K31 [20]
  CALL R13 2 1
  SETTABLEKS R13 R12 K10 ["width"]
  DUPTABLE R13 K33 [{"Content"}]
  MOVE R14 R2
  CALL R14 0 1
  SETTABLEKS R14 R13 K32 ["Content"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["Container"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["FitFrame"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Constants"]
  CALL R3 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K11 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["withContext"]
  GETTABLEKS R6 R2 K14 ["FitFrameVertical"]
  GETTABLEKS R7 R2 K15 ["FitTextLabel"]
  GETTABLEKS R8 R1 K16 ["Component"]
  LOADK R10 K17 ["ListItem"]
  NAMECALL R8 R8 K18 ["extend"]
  CALL R8 2 1
  DUPTABLE R9 K22 [{"renderContent", "title", "titleWidth"}]
  DUPCLOSURE R10 K23 [PROTO_0]
  SETTABLEKS R10 R9 K19 ["renderContent"]
  LOADK R10 K24 [""]
  SETTABLEKS R10 R9 K20 ["title"]
  GETTABLEKS R10 R3 K25 ["LIST_ITEM_TITLE_WIDTH"]
  SETTABLEKS R10 R9 K21 ["titleWidth"]
  SETTABLEKS R9 R8 K26 ["defaultProps"]
  DUPCLOSURE R9 K27 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R9 R8 K28 ["render"]
  MOVE R9 R5
  DUPTABLE R10 K30 [{"Stylizer"}]
  GETTABLEKS R11 R4 K29 ["Stylizer"]
  SETTABLEKS R11 R10 K29 ["Stylizer"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
