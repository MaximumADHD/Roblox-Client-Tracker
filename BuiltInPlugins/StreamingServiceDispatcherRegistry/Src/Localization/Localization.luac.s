PROTO_0:
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Localization"]
  GETTABLEKS R0 R1 K1 ["new"]
  DUPTABLE R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K2 ["stringResourceTable"]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K3 ["translationResourceTable"]
  LOADK R2 K6 ["StreamingServiceDispatcherRegistry"]
  SETTABLEKS R2 R1 K4 ["pluginName"]
  CALL R0 1 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R3 R4 K12 ["SourceStrings"]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R4 R5 K13 ["LocalizedStrings"]
  LOADNIL R5
  GETIMPORT R6 K15 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE REF R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CALL R6 1 0
  JUMPIF R5 [+5]
  DUPTABLE R6 K17 [{"getText"}]
  DUPCLOSURE R7 K18 [PROTO_1]
  SETTABLEKS R7 R6 K16 ["getText"]
  MOVE R5 R6
  CLOSEUPVALS R5
  RETURN R5 1
