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
  GETTABLEKS R5 R6 K12 ["NumberPropertyView"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K6 ["Components"]
  GETTABLEKS R8 R9 K7 ["PropertyEntries"]
  GETTABLEKS R7 R8 K8 ["PropertyView"]
  GETTABLEKS R6 R7 K13 ["StringPropertyView"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K6 ["Components"]
  GETTABLEKS R9 R10 K7 ["PropertyEntries"]
  GETTABLEKS R8 R9 K8 ["PropertyView"]
  GETTABLEKS R7 R8 K14 ["Vector3PropertyView"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["isInstanceClassName"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R0 K17 ["RpcTypes"]
  CALL R8 1 1
  DUPTABLE R9 K26 [{"int", "int64", "float", "string", "Vector3", "boolean", "bool", "Instance"}]
  SETTABLEKS R4 R9 K18 ["int"]
  SETTABLEKS R4 R9 K19 ["int64"]
  SETTABLEKS R4 R9 K20 ["float"]
  SETTABLEKS R5 R9 K21 ["string"]
  SETTABLEKS R6 R9 K22 ["Vector3"]
  SETTABLEKS R2 R9 K23 ["boolean"]
  SETTABLEKS R2 R9 K24 ["bool"]
  SETTABLEKS R3 R9 K25 ["Instance"]
  NEWTABLE R10 0 0
  DUPCLOSURE R11 K27 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R1
  RETURN R11 1
