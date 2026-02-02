PROTO_0:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOT R1 [+1]
  RETURN R1 1
  GETUPVAL R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K6 ["BasicAggregator"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K7 ["CombinedColorAggregator"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["ContentAggregator"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K9 ["InstanceRefAggregator"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R0 K10 ["RpcTypes"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K11 ["Vector3Aggregator"]
  CALL R6 1 1
  DUPTABLE R7 K16 [{"Vector3", "InstanceRef", "CombinedColor", "Content"}]
  SETTABLEKS R6 R7 K12 ["Vector3"]
  SETTABLEKS R4 R7 K13 ["InstanceRef"]
  SETTABLEKS R2 R7 K14 ["CombinedColor"]
  SETTABLEKS R3 R7 K15 ["Content"]
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R1
  RETURN R8 1
