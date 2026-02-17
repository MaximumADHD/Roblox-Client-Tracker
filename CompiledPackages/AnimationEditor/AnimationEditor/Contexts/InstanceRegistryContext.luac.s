PROTO_0:
  DUPTABLE R0 K1 [{"instanceRegistry"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["instanceRegistry"]
  JUMPIF R1 [+4]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K0 ["instanceRegistry"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["instanceRegistry"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K2 ["Provider"]
  DUPTABLE R4 K4 [{"value"}]
  SETTABLEKS R1 R4 K3 ["value"]
  GETTABLEKS R5 R0 K5 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["Instances"]
  GETTABLEKS R2 R3 K8 ["InstanceRegistry"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Parent"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["createElement"]
  DUPTABLE R4 K13 [{"instanceRegistry"}]
  GETTABLEKS R5 R1 K14 ["createUnimplemented"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K12 ["instanceRegistry"]
  GETTABLEKS R5 R2 K15 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  LOADK R6 K16 ["InstanceRegistryContext"]
  SETTABLEKS R6 R5 K17 ["displayName"]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  DUPTABLE R7 K21 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K19 ["Context"]
  SETTABLEKS R6 R7 K20 ["Provider"]
  RETURN R7 1
