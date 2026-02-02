PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["merge"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"TextSize", "Font", "TextColor3"}]
  GETTABLEKS R5 R1 K6 ["textSize"]
  SETTABLEKS R5 R4 K2 ["TextSize"]
  GETTABLEKS R5 R1 K7 ["font"]
  SETTABLEKS R5 R4 K3 ["Font"]
  GETTABLEKS R5 R1 K8 ["text"]
  SETTABLEKS R5 R4 K4 ["TextColor3"]
  MOVE R5 R0
  CALL R2 3 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K9 ["createElement"]
  LOADK R4 K10 ["TextBox"]
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Packages"]
  GETTABLEKS R1 R2 K6 ["React"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K5 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Sift"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K8 ["useTheme"]
  CALL R2 1 1
  DUPTABLE R3 K17 [{"AutomaticSize", "BackgroundTransparency", "ClearTextOnFocus", "ClipsDescendants", "TextEditable", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R4 K20 [Enum.AutomaticSize.XY]
  SETTABLEKS R4 R3 K9 ["AutomaticSize"]
  LOADN R4 1
  SETTABLEKS R4 R3 K10 ["BackgroundTransparency"]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["ClearTextOnFocus"]
  LOADB R4 1
  SETTABLEKS R4 R3 K12 ["ClipsDescendants"]
  LOADB R4 0
  SETTABLEKS R4 R3 K13 ["TextEditable"]
  LOADB R4 1
  SETTABLEKS R4 R3 K14 ["TextWrapped"]
  GETIMPORT R4 K22 [Enum.TextXAlignment.Left]
  SETTABLEKS R4 R3 K15 ["TextXAlignment"]
  GETIMPORT R4 K24 [Enum.TextYAlignment.Top]
  SETTABLEKS R4 R3 K16 ["TextYAlignment"]
  DUPCLOSURE R4 K25 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R0
  RETURN R4 1
