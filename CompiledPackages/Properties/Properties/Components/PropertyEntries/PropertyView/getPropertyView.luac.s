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
  GETTABLEKS R6 R7 K13 ["ContentPropertyView"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R10 R0 K7 ["Components"]
  GETTABLEKS R9 R10 K8 ["PropertyEntries"]
  GETTABLEKS R8 R9 K9 ["PropertyView"]
  GETTABLEKS R7 R8 K14 ["DynamicEnumPropertyView"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R11 R0 K7 ["Components"]
  GETTABLEKS R10 R11 K8 ["PropertyEntries"]
  GETTABLEKS R9 R10 K9 ["PropertyView"]
  GETTABLEKS R8 R9 K15 ["EnumPropertyView"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R12 R0 K7 ["Components"]
  GETTABLEKS R11 R12 K8 ["PropertyEntries"]
  GETTABLEKS R10 R11 K9 ["PropertyView"]
  GETTABLEKS R9 R10 K16 ["InstanceRefPropertyView"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R13 R0 K7 ["Components"]
  GETTABLEKS R12 R13 K8 ["PropertyEntries"]
  GETTABLEKS R11 R12 K9 ["PropertyView"]
  GETTABLEKS R10 R11 K17 ["NumberPropertyView"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R0 K18 ["PropertyEditorTypes"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R0 K19 ["PropertyTypes"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R13 R1 K20 ["React"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R17 R0 K7 ["Components"]
  GETTABLEKS R16 R17 K8 ["PropertyEntries"]
  GETTABLEKS R15 R16 K9 ["PropertyView"]
  GETTABLEKS R14 R15 K21 ["StringPropertyView"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R18 R0 K7 ["Components"]
  GETTABLEKS R17 R18 K8 ["PropertyEntries"]
  GETTABLEKS R16 R17 K9 ["PropertyView"]
  GETTABLEKS R15 R16 K22 ["Vector3PropertyView"]
  CALL R14 1 1
  DUPTABLE R15 K37 [{"int", "int64", "float", "double", "number", "string", "Vector3", "boolean", "bool", "InstanceRef", "Enum", "DynamicEnum", "CombinedColor", "Content"}]
  SETTABLEKS R9 R15 K23 ["int"]
  SETTABLEKS R9 R15 K24 ["int64"]
  SETTABLEKS R9 R15 K25 ["float"]
  SETTABLEKS R9 R15 K26 ["double"]
  SETTABLEKS R9 R15 K27 ["number"]
  SETTABLEKS R13 R15 K28 ["string"]
  SETTABLEKS R14 R15 K29 ["Vector3"]
  SETTABLEKS R3 R15 K30 ["boolean"]
  SETTABLEKS R3 R15 K31 ["bool"]
  SETTABLEKS R8 R15 K32 ["InstanceRef"]
  SETTABLEKS R7 R15 K33 ["Enum"]
  SETTABLEKS R6 R15 K34 ["DynamicEnum"]
  SETTABLEKS R4 R15 K35 ["CombinedColor"]
  SETTABLEKS R5 R15 K36 ["Content"]
  NEWTABLE R16 0 0
  DUPCLOSURE R17 K38 [PROTO_0]
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R2
  RETURN R17 1
