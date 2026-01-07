MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["Tests"]
  GETTABLEKS R2 R3 K8 ["HookTestController"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Util"]
  GETTABLEKS R4 R5 K9 ["Instances"]
  GETTABLEKS R3 R4 K10 ["InstanceRegistry"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Util"]
  GETTABLEKS R5 R6 K9 ["Instances"]
  GETTABLEKS R4 R5 K11 ["InstanceSelectionRegistry"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Util"]
  GETTABLEKS R6 R7 K7 ["Tests"]
  GETTABLEKS R5 R6 K12 ["TestController"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Util"]
  GETTABLEKS R7 R8 K7 ["Tests"]
  GETTABLEKS R6 R7 K13 ["TestPlugin"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Util"]
  GETTABLEKS R8 R9 K7 ["Tests"]
  GETTABLEKS R7 R8 K14 ["TestSelection"]
  CALL R6 1 1
  NEWTABLE R7 0 0
  RETURN R7 1
