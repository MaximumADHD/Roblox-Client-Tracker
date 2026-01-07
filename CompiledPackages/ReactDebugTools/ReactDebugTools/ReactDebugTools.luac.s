MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["ReactDebugHooks"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["inspectHooks"]
  GETTABLEKS R3 R1 K7 ["inspectHooksOfFiber"]
  SETTABLEKS R2 R0 K6 ["inspectHooks"]
  SETTABLEKS R3 R0 K7 ["inspectHooksOfFiber"]
  RETURN R0 1
