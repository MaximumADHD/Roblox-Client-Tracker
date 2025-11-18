PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Localization"]
  GETTABLEKS R0 R1 K1 ["new"]
  DUPTABLE R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K2 ["stringResourceTable"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K3 ["translationResourceTable"]
  LOADK R2 K6 ["Notifications"]
  SETTABLEKS R2 R1 K4 ["pluginName"]
  CALL R0 1 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["ContextServices"]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Resources"]
  GETTABLEKS R4 R5 K10 ["Localization"]
  GETTABLEKS R3 R4 K11 ["SourceStrings"]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Resources"]
  GETTABLEKS R5 R6 K10 ["Localization"]
  GETTABLEKS R4 R5 K12 ["LocalizedStrings"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
