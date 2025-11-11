PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["auto-xy col gap-medium bg-surface-0 radius-medium"]
  SETTABLEKS R5 R4 K3 ["tag"]
  DUPTABLE R5 K7 [{"Label"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K10 [{"Text", "tag", "testId"}]
  ORK R9 R1 K11 ["No context value"]
  SETTABLEKS R9 R8 K8 ["Text"]
  LOADK R9 K12 ["auto-xy content-emphasis"]
  SETTABLEKS R9 R8 K3 ["tag"]
  LOADK R9 K13 ["--context-example-text"]
  SETTABLEKS R9 R8 K9 ["testId"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Label"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SuperTemplate"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["ContextExampleContext"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["View"]
  GETTABLEKS R5 R2 K11 ["Text"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
