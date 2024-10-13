PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["plugin"]
  LOADNIL R4
  GETTABLEKS R5 R2 K2 ["InitialEnabled"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R4 R2 K2 ["InitialEnabled"]
  JUMP [+1]
  LOADB R4 1
  GETTABLEKS R5 R2 K3 ["options"]
  JUMPIF R5 [+23]
  DUPTABLE R5 K8 [{"Size", "MinSize", "Resizable", "Modal", "InitialEnabled"}]
  GETTABLEKS R7 R2 K4 ["Size"]
  ORK R6 R7 K9 []
  SETTABLEKS R6 R5 K4 ["Size"]
  GETTABLEKS R7 R2 K5 ["MinSize"]
  ORK R6 R7 K9 []
  SETTABLEKS R6 R5 K5 ["MinSize"]
  GETTABLEKS R7 R2 K6 ["Resizable"]
  ORK R6 R7 K9 []
  SETTABLEKS R6 R5 K6 ["Resizable"]
  GETTABLEKS R7 R2 K7 ["Modal"]
  ORK R6 R7 K9 []
  SETTABLEKS R6 R5 K7 ["Modal"]
  SETTABLEKS R4 R5 K2 ["InitialEnabled"]
  MOVE R8 R1
  MOVE R9 R5
  NAMECALL R6 R3 K10 ["CreateQWidgetPluginGui"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Core"]
  GETTABLEKS R4 R5 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["PluginWidget"]
  GETTABLEKS R2 R3 K7 ["PluginWidget"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K8 ["Dialog"]
  DUPCLOSURE R4 K9 [PROTO_0]
  CALL R2 2 -1
  RETURN R2 -1
