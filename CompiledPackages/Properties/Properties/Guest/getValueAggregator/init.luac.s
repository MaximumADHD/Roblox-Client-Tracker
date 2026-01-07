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
  GETTABLEKS R4 R5 K8 ["InstanceRefAggregator"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K9 ["RpcTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K10 ["Vector3Aggregator"]
  CALL R5 1 1
  DUPTABLE R6 K14 [{"Vector3", "InstanceRef", "CombinedColor"}]
  SETTABLEKS R5 R6 K11 ["Vector3"]
  SETTABLEKS R3 R6 K12 ["InstanceRef"]
  SETTABLEKS R2 R6 K13 ["CombinedColor"]
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R7 1
