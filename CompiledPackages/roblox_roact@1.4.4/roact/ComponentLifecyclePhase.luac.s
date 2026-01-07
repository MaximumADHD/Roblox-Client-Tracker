MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Symbol"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["strict"]
  CALL R1 1 1
  MOVE R2 R1
  DUPTABLE R3 K16 [{"Init", "Render", "ShouldUpdate", "WillUpdate", "DidMount", "DidUpdate", "WillUnmount", "ReconcileChildren", "Idle"}]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K18 ["init"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["Init"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K19 ["render"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K8 ["Render"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K20 ["shouldUpdate"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["ShouldUpdate"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K21 ["willUpdate"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["WillUpdate"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K22 ["didMount"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["DidMount"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K23 ["didUpdate"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["DidUpdate"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K24 ["willUnmount"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["WillUnmount"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K25 ["reconcileChildren"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["ReconcileChildren"]
  GETTABLEKS R4 R0 K17 ["named"]
  LOADK R5 K26 ["idle"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["Idle"]
  LOADK R4 K27 ["ComponentLifecyclePhase"]
  CALL R2 2 1
  RETURN R2 1
