PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K8 [{"BackgroundTransparency", "Font", "LayoutOrder", "TextSize", "Text", "TextXAlignment", "TextColor3"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K1 ["BackgroundTransparency"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Font"]
  SETTABLEKS R3 R2 K2 ["Font"]
  LOADN R3 1
  SETTABLEKS R3 R2 K3 ["LayoutOrder"]
  LOADN R3 16
  SETTABLEKS R3 R2 K4 ["TextSize"]
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K5 ["Text"]
  GETIMPORT R3 K11 [Enum.TextXAlignment.Left]
  SETTABLEKS R3 R2 K6 ["TextXAlignment"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["TextColor"]
  SETTABLEKS R3 R2 K7 ["TextColor3"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["description"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["LayoutOrder"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["title"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["titleWidth"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["Stylizer"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K8 [{"LayoutOrder", "renderContent", "title", "titleWidth"}]
  SETTABLEKS R2 R8 K2 ["LayoutOrder"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K7 ["renderContent"]
  SETTABLEKS R3 R8 K3 ["title"]
  SETTABLEKS R4 R8 K4 ["titleWidth"]
  CALL R6 2 -1
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
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K11 ["ContextServices"]
  GETTABLEKS R4 R3 K12 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K14 ["PluginDetails"]
  GETTABLEKS R6 R7 K15 ["ListItem"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K16 ["FluidFitTextLabel"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K17 ["Component"]
  LOADK R9 K18 ["ListTextItem"]
  NAMECALL R7 R7 K19 ["extend"]
  CALL R7 2 1
  DUPTABLE R8 K23 [{"description", "title", "titleWidth"}]
  LOADK R9 K24 [""]
  SETTABLEKS R9 R8 K20 ["description"]
  LOADK R9 K24 [""]
  SETTABLEKS R9 R8 K21 ["title"]
  GETTABLEKS R9 R2 K25 ["LIST_ITEM_TITLE_WIDTH"]
  SETTABLEKS R9 R8 K22 ["titleWidth"]
  SETTABLEKS R8 R7 K26 ["defaultProps"]
  DUPCLOSURE R8 K27 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K28 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K30 [{"Stylizer"}]
  GETTABLEKS R10 R3 K29 ["Stylizer"]
  SETTABLEKS R10 R9 K29 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
