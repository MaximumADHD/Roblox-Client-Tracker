PROTO_0:
  GETTABLEKS R1 R0 K0 ["Value"]
  LOADK R2 K1 ["%.2f, %.2f, %.2f"]
  GETTABLEKS R4 R1 K2 ["X"]
  GETTABLEKS R5 R1 K3 ["Y"]
  GETTABLEKS R6 R1 K4 ["Z"]
  NAMECALL R2 R2 K5 ["format"]
  CALL R2 4 1
  GETTABLEKS R3 R0 K6 ["Editable"]
  JUMPIFEQKNIL R3 [+44]
  GETTABLEKS R3 R0 K6 ["Editable"]
  JUMPIF R3 [+40]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K13 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
  GETTABLEKS R6 R0 K8 ["LayoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  GETIMPORT R6 K16 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  GETTABLEKS R11 R0 K9 ["Size"]
  GETTABLEKS R10 R11 K3 ["Y"]
  GETTABLEKS R9 R10 K17 ["Scale"]
  GETTABLEKS R12 R0 K9 ["Size"]
  GETTABLEKS R11 R12 K3 ["Y"]
  GETTABLEKS R10 R11 K18 ["Offset"]
  CALL R6 4 1
  SETTABLEKS R6 R5 K9 ["Size"]
  GETIMPORT R6 K20 [Enum.AutomaticSize.X]
  SETTABLEKS R6 R5 K10 ["AutomaticSize"]
  SETTABLEKS R2 R5 K11 ["Text"]
  GETIMPORT R6 K22 [Enum.TextXAlignment.Left]
  SETTABLEKS R6 R5 K12 ["TextXAlignment"]
  CALL R3 2 -1
  RETURN R3 -1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K24 [{"Disabled", "LayoutOrder", "Size", "Text"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K23 ["Disabled"]
  GETTABLEKS R6 R0 K8 ["LayoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  GETTABLEKS R6 R0 K9 ["Size"]
  SETTABLEKS R6 R5 K9 ["Size"]
  SETTABLEKS R2 R5 K11 ["Text"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["UI"]
  GETTABLEKS R4 R3 K10 ["TextInput"]
  GETTABLEKS R5 R3 K11 ["TextLabel"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R6 1
