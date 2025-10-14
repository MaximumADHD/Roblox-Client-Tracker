PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K0 ["id"]
  GETTABLEKS R3 R4 K1 ["propertyName"]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+6]
  GETUPVAL R2 1
  GETTABLEKS R4 R0 K2 ["value"]
  GETTABLEKS R3 R4 K3 ["typeof"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+1]
  RETURN R1 1
  GETTABLEKS R3 R0 K2 ["value"]
  GETTABLEKS R2 R3 K3 ["typeof"]
  JUMPIFNOT R2 [+11]
  GETUPVAL R2 2
  GETTABLEKS R4 R0 K2 ["value"]
  GETTABLEKS R3 R4 K3 ["typeof"]
  CALL R2 1 1
  JUMPIFNOT R2 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["Instance"]
  RETURN R2 1
  GETUPVAL R2 3
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K7 ["PropertyEntries"]
  GETTABLEKS R3 R4 K8 ["PropertyView"]
  GETTABLEKS R2 R3 K9 ["BasicPropertyView"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K6 ["Components"]
  GETTABLEKS R5 R6 K7 ["PropertyEntries"]
  GETTABLEKS R4 R5 K8 ["PropertyView"]
  GETTABLEKS R3 R4 K10 ["BooleanPropertyView"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K6 ["Components"]
  GETTABLEKS R6 R7 K7 ["PropertyEntries"]
  GETTABLEKS R5 R6 K8 ["PropertyView"]
  GETTABLEKS R4 R5 K11 ["InstanceRefPropertyView"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K6 ["Components"]
  GETTABLEKS R7 R8 K7 ["PropertyEntries"]
  GETTABLEKS R6 R7 K8 ["PropertyView"]
  GETTABLEKS R5 R6 K12 ["StringPropertyView"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K6 ["Components"]
  GETTABLEKS R8 R9 K7 ["PropertyEntries"]
  GETTABLEKS R7 R8 K8 ["PropertyView"]
  GETTABLEKS R6 R7 K13 ["Vector3PropertyView"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["isInstanceClassName"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R0 K16 ["RpcTypes"]
  CALL R7 1 1
  DUPTABLE R8 K22 [{"string", "Vector3", "boolean", "bool", "Instance"}]
  SETTABLEKS R4 R8 K17 ["string"]
  SETTABLEKS R5 R8 K18 ["Vector3"]
  SETTABLEKS R2 R8 K19 ["boolean"]
  SETTABLEKS R2 R8 K20 ["bool"]
  SETTABLEKS R3 R8 K21 ["Instance"]
  NEWTABLE R9 0 0
  DUPCLOSURE R10 K23 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R10 1
