PROTO_0:
  GETIMPORT R3 K1 [print]
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["lumberyak"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Logger"]
  GETTABLEKS R2 R3 K9 ["new"]
  LOADNIL R3
  LOADK R4 K2 ["AnimationEditor"]
  CALL R2 2 1
  GETIMPORT R5 K12 [_G]
  GETTABLEKS R4 R5 K13 ["__COMPOSITOR_DEBUGGER_LOG_LEVEL__"]
  ORK R3 R4 K10 ["Error"]
  DUPTABLE R4 K16 [{"maxLevel", "log"}]
  GETTABLEKS R6 R2 K17 ["Levels"]
  GETTABLEKS R5 R6 K18 ["fromString"]
  MOVE R6 R3
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["maxLevel"]
  DUPCLOSURE R5 K19 [PROTO_0]
  SETTABLEKS R5 R4 K15 ["log"]
  DUPTABLE R7 K21 [{"prefix"}]
  LOADK R8 K22 ["[AnimationEditor {loggerName} - {level}] - "]
  SETTABLEKS R8 R7 K20 ["prefix"]
  NAMECALL R5 R2 K23 ["setContext"]
  CALL R5 2 0
  MOVE R7 R4
  NAMECALL R5 R2 K24 ["addSink"]
  CALL R5 2 0
  LOADK R7 K25 ["Logger initialized with level {}"]
  MOVE R8 R3
  NAMECALL R5 R2 K26 ["warning"]
  CALL R5 3 0
  RETURN R2 1
