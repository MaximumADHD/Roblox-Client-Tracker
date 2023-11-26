PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["LayoutOrder"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["isSubsection"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Dictionary"]
  GETTABLEKS R4 R5 K5 ["join"]
  GETTABLEKS R5 R0 K0 ["props"]
  DUPTABLE R6 K7 [{"LayoutOrder", "isSubsection", "InitialLayoutOrder"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["None"]
  SETTABLEKS R7 R6 K2 ["LayoutOrder"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["None"]
  SETTABLEKS R7 R6 K3 ["isSubsection"]
  LOADN R7 1
  SETTABLEKS R7 R6 K6 ["InitialLayoutOrder"]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K12 [{"LayoutOrder", "isSubsection", "Title", "Padding"}]
  SETTABLEKS R2 R7 K2 ["LayoutOrder"]
  SETTABLEKS R3 R7 K3 ["isSubsection"]
  LOADK R10 K13 ["MapSettings"]
  LOADK R11 K13 ["MapSettings"]
  NAMECALL R8 R1 K14 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["Title"]
  GETIMPORT R8 K17 [UDim.new]
  LOADN R9 0
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Padding"]
  DUPTABLE R8 K19 [{"MapSettingsWithPreviewFragment"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 3
  MOVE R11 R4
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["MapSettingsWithPreviewFragment"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Roact"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K11 ["MapSettingsWithPreviewFragment"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R6 K12 ["Panel"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K13 ["PureComponent"]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K14 ["Name"]
  NAMECALL R9 R9 K15 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K16 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K17 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K19 [{"Localization"}]
  GETTABLEKS R12 R4 K18 ["Localization"]
  SETTABLEKS R12 R11 K18 ["Localization"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
