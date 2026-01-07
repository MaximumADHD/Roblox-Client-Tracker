PROTO_0:
  JUMPIFNOT R1 [+8]
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K0 ["name"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+5]
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  JUMP [+2]
  GETUPVAL R3 1
  GETTABLE R2 R3 R0
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETUPVAL R3 2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R6 R0 K7 ["Components"]
  GETTABLEKS R5 R6 K8 ["PropertyEntries"]
  GETTABLEKS R4 R5 K9 ["PropertyView"]
  GETTABLEKS R3 R4 K10 ["BasicPropertyView"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R7 R0 K7 ["Components"]
  GETTABLEKS R6 R7 K8 ["PropertyEntries"]
  GETTABLEKS R5 R6 K9 ["PropertyView"]
  GETTABLEKS R4 R5 K11 ["BooleanPropertyView"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R8 R0 K7 ["Components"]
  GETTABLEKS R7 R8 K8 ["PropertyEntries"]
  GETTABLEKS R6 R7 K9 ["PropertyView"]
  GETTABLEKS R5 R6 K12 ["CombinedColorPropertyView"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R9 R0 K7 ["Components"]
  GETTABLEKS R8 R9 K8 ["PropertyEntries"]
  GETTABLEKS R7 R8 K9 ["PropertyView"]
  GETTABLEKS R6 R7 K13 ["DynamicEnumPropertyView"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R10 R0 K7 ["Components"]
  GETTABLEKS R9 R10 K8 ["PropertyEntries"]
  GETTABLEKS R8 R9 K9 ["PropertyView"]
  GETTABLEKS R7 R8 K14 ["EnumPropertyView"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R11 R0 K7 ["Components"]
  GETTABLEKS R10 R11 K8 ["PropertyEntries"]
  GETTABLEKS R9 R10 K9 ["PropertyView"]
  GETTABLEKS R8 R9 K15 ["InstanceRefPropertyView"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R12 R0 K7 ["Components"]
  GETTABLEKS R11 R12 K8 ["PropertyEntries"]
  GETTABLEKS R10 R11 K9 ["PropertyView"]
  GETTABLEKS R9 R10 K16 ["NumberPropertyView"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R0 K17 ["PropertyEditorTypes"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R0 K18 ["PropertyTypes"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R1 K19 ["React"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R16 R0 K7 ["Components"]
  GETTABLEKS R15 R16 K8 ["PropertyEntries"]
  GETTABLEKS R14 R15 K9 ["PropertyView"]
  GETTABLEKS R13 R14 K20 ["StringPropertyView"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R17 R0 K7 ["Components"]
  GETTABLEKS R16 R17 K8 ["PropertyEntries"]
  GETTABLEKS R15 R16 K9 ["PropertyView"]
  GETTABLEKS R14 R15 K21 ["Vector3PropertyView"]
  CALL R13 1 1
  DUPTABLE R14 K35 [{"int", "int64", "float", "double", "number", "string", "Vector3", "boolean", "bool", "InstanceRef", "Enum", "DynamicEnum", "CombinedColor"}]
  SETTABLEKS R8 R14 K22 ["int"]
  SETTABLEKS R8 R14 K23 ["int64"]
  SETTABLEKS R8 R14 K24 ["float"]
  SETTABLEKS R8 R14 K25 ["double"]
  SETTABLEKS R8 R14 K26 ["number"]
  SETTABLEKS R12 R14 K27 ["string"]
  SETTABLEKS R13 R14 K28 ["Vector3"]
  SETTABLEKS R3 R14 K29 ["boolean"]
  SETTABLEKS R3 R14 K30 ["bool"]
  SETTABLEKS R7 R14 K31 ["InstanceRef"]
  SETTABLEKS R6 R14 K32 ["Enum"]
  SETTABLEKS R5 R14 K33 ["DynamicEnum"]
  SETTABLEKS R4 R14 K34 ["CombinedColor"]
  NEWTABLE R15 0 0
  DUPCLOSURE R16 K36 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R2
  RETURN R16 1
