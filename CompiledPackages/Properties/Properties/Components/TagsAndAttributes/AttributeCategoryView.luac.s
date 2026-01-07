PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["add attribute"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useCallback"]
  DUPCLOSURE R2 K1 [PROTO_0]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"categoryName", "layoutOrder", "trailingIcon"}]
  GETUPVAL R5 3
  LOADK R7 K6 ["TagsAndAttributes"]
  LOADK R8 K7 ["AttributesHeader"]
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["categoryName"]
  GETTABLEKS R5 R0 K3 ["layoutOrder"]
  SETTABLEKS R5 R4 K3 ["layoutOrder"]
  DUPTABLE R5 K11 [{"name", "onActivated"}]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K12 ["PlusLarge"]
  SETTABLEKS R6 R5 K9 ["name"]
  SETTABLEKS R1 R5 K10 ["onActivated"]
  SETTABLEKS R5 R4 K4 ["trailingIcon"]
  GETUPVAL R5 1
  GETUPVAL R6 5
  DUPTABLE R7 K16 [{"session", "attributes", "labelWidthBinding"}]
  GETTABLEKS R8 R0 K13 ["session"]
  SETTABLEKS R8 R7 K13 ["session"]
  GETTABLEKS R8 R0 K14 ["attributes"]
  SETTABLEKS R8 R7 K14 ["attributes"]
  GETTABLEKS R8 R0 K15 ["labelWidthBinding"]
  SETTABLEKS R8 R7 K15 ["labelWidthBinding"]
  CALL R5 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["TagsAndAttributes"]
  GETTABLEKS R3 R4 K9 ["AttributeList"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K7 ["Components"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["CategoryView"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K12 ["Foundation"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R0 K13 ["PropertyTypes"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R1 K14 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R0 K15 ["RpcTypes"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K16 ["Resources"]
  GETTABLEKS R10 R11 K17 ["Localization"]
  GETTABLEKS R9 R10 K18 ["Translator"]
  CALL R8 1 1
  GETTABLEKS R9 R6 K19 ["createElement"]
  GETTABLEKS R11 R4 K20 ["Enums"]
  GETTABLEKS R10 R11 K21 ["IconName"]
  DUPCLOSURE R11 K22 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R2
  RETURN R11 1
