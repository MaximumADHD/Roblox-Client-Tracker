PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"Text", "LayoutOrder", "Position", "Size", "Font", "FontFace", "TextXAlignment", "TextYAlignment", "RichText"}]
  GETTABLEKS R4 R0 K1 ["Text"]
  SETTABLEKS R4 R3 K1 ["Text"]
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETTABLEKS R4 R0 K3 ["Position"]
  SETTABLEKS R4 R3 K3 ["Position"]
  GETTABLEKS R4 R0 K4 ["Size"]
  SETTABLEKS R4 R3 K4 ["Size"]
  GETTABLEKS R4 R0 K5 ["Font"]
  SETTABLEKS R4 R3 K5 ["Font"]
  GETTABLEKS R4 R0 K6 ["FontFace"]
  SETTABLEKS R4 R3 K6 ["FontFace"]
  GETTABLEKS R4 R0 K7 ["TextXAlignment"]
  SETTABLEKS R4 R3 K7 ["TextXAlignment"]
  GETTABLEKS R4 R0 K8 ["TextYAlignment"]
  SETTABLEKS R4 R3 K8 ["TextYAlignment"]
  GETTABLEKS R4 R0 K9 ["RichText"]
  SETTABLEKS R4 R3 K9 ["RichText"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  DUPTABLE R4 K9 [{"Text", "LayoutOrder", "Position", "Size", "Font", "FontFace", "TextXAlignment", "TextYAlignment", "RichText"}]
  SETTABLEKS R0 R4 K0 ["Text"]
  SETTABLEKS R1 R4 K1 ["LayoutOrder"]
  SETTABLEKS R2 R4 K2 ["Position"]
  SETTABLEKS R3 R4 K3 ["Size"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["props"]
  GETTABLEKS R5 R6 K4 ["Font"]
  SETTABLEKS R5 R4 K4 ["Font"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["props"]
  GETTABLEKS R5 R6 K5 ["FontFace"]
  SETTABLEKS R5 R4 K5 ["FontFace"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["props"]
  GETTABLEKS R5 R6 K6 ["TextXAlignment"]
  SETTABLEKS R5 R4 K6 ["TextXAlignment"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["props"]
  GETTABLEKS R5 R6 K7 ["TextYAlignment"]
  SETTABLEKS R5 R4 K7 ["TextYAlignment"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["props"]
  GETTABLEKS R5 R6 K8 ["RichText"]
  SETTABLEKS R5 R4 K8 ["RichText"]
  RETURN R4 1

PROTO_2:
  GETIMPORT R1 K2 [string.split]
  GETTABLEKS R3 R0 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["Text"]
  LOADK R3 K5 ["
"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["createElement"]
  LOADK R3 K7 ["Frame"]
  DUPTABLE R4 K14 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "AutomaticSize", "LayoutOrder"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K8 ["BackgroundTransparency"]
  GETIMPORT R5 K17 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  GETTABLEKS R11 R0 K3 ["props"]
  GETTABLEKS R10 R11 K18 ["MaxHeight"]
  LENGTH R12 R1
  MULK R11 R12 K19 [20]
  FASTCALL2 MATH_MIN R10 R11 [+3]
  GETIMPORT R9 K22 [math.min]
  CALL R9 2 1
  CALL R5 4 1
  SETTABLEKS R5 R4 K9 ["Size"]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K10 ["Position"]
  SETTABLEKS R5 R4 K10 ["Position"]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K11 ["AnchorPoint"]
  SETTABLEKS R5 R4 K11 ["AnchorPoint"]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K12 ["AutomaticSize"]
  SETTABLEKS R5 R4 K12 ["AutomaticSize"]
  GETTABLEKS R6 R0 K3 ["props"]
  GETTABLEKS R5 R6 K13 ["LayoutOrder"]
  SETTABLEKS R5 R4 K13 ["LayoutOrder"]
  DUPTABLE R5 K24 [{"List"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K29 [{"Rows", "RowHeight", "RowComponent", "GetRowProps"}]
  SETTABLEKS R1 R8 K25 ["Rows"]
  LOADN R9 20
  SETTABLEKS R9 R8 K26 ["RowHeight"]
  DUPCLOSURE R9 K30 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R9 R8 K27 ["RowComponent"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K28 ["GetRowProps"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K23 ["List"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R9 R3 K14 ["Style"]
  GETTABLEKS R8 R9 K15 ["Stylizer"]
  GETTABLEKS R9 R3 K16 ["UI"]
  GETTABLEKS R10 R9 K17 ["TextLabel"]
  GETTABLEKS R11 R9 K18 ["List"]
  GETTABLEKS R12 R2 K19 ["PureComponent"]
  LOADK R14 K20 ["LongText"]
  NAMECALL R12 R12 K21 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K22 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R10
  SETTABLEKS R13 R12 K23 ["render"]
  MOVE R13 R5
  DUPTABLE R14 K24 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R6 R14 K12 ["Analytics"]
  SETTABLEKS R7 R14 K13 ["Localization"]
  SETTABLEKS R8 R14 K15 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
