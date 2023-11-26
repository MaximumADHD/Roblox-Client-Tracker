PROTO_0:
  DUPTABLE R1 K1 [{"searchTerm"}]
  SETTABLEKS R0 R1 K0 ["searchTerm"]
  RETURN R1 1

PROTO_1:
  DUPTABLE R3 K3 [{"success", "key", "results"}]
  SETTABLEKS R0 R3 K0 ["success"]
  SETTABLEKS R1 R3 K1 ["key"]
  SETTABLEKS R2 R3 K2 ["results"]
  RETURN R3 1

PROTO_2:
  DUPTABLE R1 K1 [{"text"}]
  SETTABLEKS R0 R1 K0 ["text"]
  RETURN R1 1

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
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Action"]
  DUPTABLE R3 K12 [{"LoadWebResults", "LoadedWebResults", "SearchTextChanged"}]
  MOVE R4 R2
  LOADK R5 K9 ["LoadWebResults"]
  DUPCLOSURE R6 K13 [PROTO_0]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["LoadWebResults"]
  MOVE R4 R2
  LOADK R5 K10 ["LoadedWebResults"]
  DUPCLOSURE R6 K14 [PROTO_1]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["LoadedWebResults"]
  MOVE R4 R2
  LOADK R5 K11 ["SearchTextChanged"]
  DUPCLOSURE R6 K15 [PROTO_2]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["SearchTextChanged"]
  RETURN R3 1
