PROTO_0:
  PREPVARARGS 0
  GETUPVAL R0 0
  LOADB R1 0
  LOADK R2 K0 ["The current renderer does not support persistence. This error is likely caused by a bug in React. Please file an issue."]
  CALL R0 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["invariant"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  DUPCLOSURE R1 K7 [PROTO_0]
  CAPTURE VAL R0
  DUPTABLE R2 K17 [{"supportsPersistence", "cloneInstance", "cloneFundamentalInstance", "createContainerChildSet", "appendChildToContainerChildSet", "finalizeContainerChildren", "replaceContainerChildren", "cloneHiddenInstance", "cloneHiddenTextInstance"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K8 ["supportsPersistence"]
  SETTABLEKS R1 R2 K9 ["cloneInstance"]
  SETTABLEKS R1 R2 K10 ["cloneFundamentalInstance"]
  SETTABLEKS R1 R2 K11 ["createContainerChildSet"]
  SETTABLEKS R1 R2 K12 ["appendChildToContainerChildSet"]
  SETTABLEKS R1 R2 K13 ["finalizeContainerChildren"]
  SETTABLEKS R1 R2 K14 ["replaceContainerChildren"]
  SETTABLEKS R1 R2 K15 ["cloneHiddenInstance"]
  SETTABLEKS R1 R2 K16 ["cloneHiddenTextInstance"]
  RETURN R2 1
