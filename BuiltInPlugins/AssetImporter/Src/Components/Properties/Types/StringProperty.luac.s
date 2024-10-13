PROTO_0:
  GETTABLEKS R1 R0 K0 ["Editable"]
  JUMPIFEQKNIL R1 [+43]
  GETTABLEKS R1 R0 K0 ["Editable"]
  JUMPIF R1 [+39]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K7 [{"LayoutOrder", "Size", "SuffixLength", "Text", "TextXAlignment"}]
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  GETTABLEKS R4 R0 K3 ["Size"]
  SETTABLEKS R4 R3 K3 ["Size"]
  LOADN R4 20
  SETTABLEKS R4 R3 K4 ["SuffixLength"]
  GETTABLEKS R4 R0 K8 ["Value"]
  SETTABLEKS R4 R3 K5 ["Text"]
  GETIMPORT R4 K11 [Enum.TextXAlignment.Left]
  SETTABLEKS R4 R3 K6 ["TextXAlignment"]
  DUPTABLE R4 K13 [{"Tooltip"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K14 [{"Text"}]
  GETTABLEKS R8 R0 K8 ["Value"]
  SETTABLEKS R8 R7 K5 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Tooltip"]
  CALL R1 3 -1
  RETURN R1 -1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 3
  DUPTABLE R3 K16 [{"Size", "AutomaticSize", "LayoutOrder"}]
  GETTABLEKS R4 R0 K3 ["Size"]
  SETTABLEKS R4 R3 K3 ["Size"]
  GETIMPORT R4 K18 [Enum.AutomaticSize.Y]
  SETTABLEKS R4 R3 K15 ["AutomaticSize"]
  GETTABLEKS R4 R0 K2 ["LayoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  NEWTABLE R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 4
  DUPTABLE R7 K20 [{"AutomaticSize", "OnTextChanged", "Text"}]
  GETIMPORT R8 K22 [Enum.AutomaticSize.None]
  SETTABLEKS R8 R7 K15 ["AutomaticSize"]
  GETTABLEKS R8 R0 K23 ["OnSetItem"]
  SETTABLEKS R8 R7 K19 ["OnTextChanged"]
  GETTABLEKS R8 R0 K8 ["Value"]
  SETTABLEKS R8 R7 K5 ["Text"]
  CALL R5 2 -1
  SETLIST R4 R5 -1 [1]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R4 R3 K10 ["Pane"]
  GETTABLEKS R5 R3 K11 ["TextInput"]
  GETTABLEKS R6 R3 K12 ["Tooltip"]
  GETTABLEKS R7 R3 K13 ["TruncatedTextLabel"]
  DUPCLOSURE R8 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R8 1
