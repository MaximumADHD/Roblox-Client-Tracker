PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"Title", "Padding", "LayoutOrder"}]
  LOADK R7 K7 ["EditSettings"]
  LOADK R8 K7 ["EditSettings"]
  NAMECALL R5 R1 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K3 ["Title"]
  GETIMPORT R5 K11 [UDim.new]
  LOADN R6 0
  LOADN R7 12
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Padding"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  DUPTABLE R5 K13 [{"MergeEmptyToggle"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K17 [{"LayoutOrder", "Text", "IsOn", "SetIsOn"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  LOADK R11 K7 ["EditSettings"]
  LOADK R12 K18 ["MergeEmpty"]
  NAMECALL R9 R1 K8 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["Text"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K19 ["mergeEmpty"]
  SETTABLEKS R9 R8 K15 ["IsOn"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K20 ["setMergeEmpty"]
  SETTABLEKS R9 R8 K16 ["SetIsOn"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["MergeEmptyToggle"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K10 ["LabeledToggle"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K11 ["Panel"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K12 ["PureComponent"]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K13 ["Name"]
  NAMECALL R8 R8 K14 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  SETTABLEKS R9 R8 K16 ["render"]
  MOVE R9 R4
  DUPTABLE R10 K18 [{"Localization"}]
  GETTABLEKS R11 R3 K17 ["Localization"]
  SETTABLEKS R11 R10 K17 ["Localization"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
