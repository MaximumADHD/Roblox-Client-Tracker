PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["LayoutOrder"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["planeLock"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["setPlaneLock"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K8 [{"Size", "Text", "LayoutOrder"}]
  GETIMPORT R8 K11 [UDim2.new]
  LOADN R9 1
  LOADN R10 0
  LOADN R11 0
  LOADN R12 22
  CALL R8 4 1
  SETTABLEKS R8 R7 K6 ["Size"]
  LOADK R10 K12 ["BrushSettings"]
  LOADK R11 K13 ["PlaneLock"]
  NAMECALL R8 R1 K14 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  SETTABLEKS R2 R7 K2 ["LayoutOrder"]
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K18 [{"Size", "Selected", "Select", "Options"}]
  GETIMPORT R12 K11 [UDim2.new]
  LOADN R13 0
  LOADN R14 141
  LOADN R15 0
  LOADN R16 22
  CALL R12 4 1
  SETTABLEKS R12 R11 K6 ["Size"]
  SETTABLEKS R3 R11 K15 ["Selected"]
  SETTABLEKS R4 R11 K16 ["Select"]
  NEWTABLE R12 0 3
  DUPTABLE R13 K20 [{"Text", "Data"}]
  LOADK R16 K12 ["BrushSettings"]
  LOADK R17 K21 ["Off"]
  NAMECALL R14 R1 K14 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K7 ["Text"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K21 ["Off"]
  SETTABLEKS R14 R13 K19 ["Data"]
  DUPTABLE R14 K20 [{"Text", "Data"}]
  LOADK R17 K12 ["BrushSettings"]
  LOADK R18 K22 ["Auto"]
  NAMECALL R15 R1 K14 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K7 ["Text"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K22 ["Auto"]
  SETTABLEKS R15 R14 K19 ["Data"]
  DUPTABLE R15 K20 [{"Text", "Data"}]
  LOADK R18 K12 ["BrushSettings"]
  LOADK R19 K23 ["Manual"]
  NAMECALL R16 R1 K14 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K7 ["Text"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K23 ["Manual"]
  SETTABLEKS R16 R15 K19 ["Data"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K17 ["Options"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
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
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K12 ["TerrainEnums"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["PlaneLockType"]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K14 ["LabeledElementPair"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R7 K15 ["SingleSelectButtonGroup"]
  CALL R9 1 1
  GETTABLEKS R10 R2 K16 ["PureComponent"]
  LOADK R12 K17 ["PlaneLockSelector"]
  NAMECALL R10 R10 K18 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K20 ["render"]
  MOVE R11 R4
  DUPTABLE R12 K22 [{"Localization"}]
  GETTABLEKS R13 R3 K21 ["Localization"]
  SETTABLEKS R13 R12 K21 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
