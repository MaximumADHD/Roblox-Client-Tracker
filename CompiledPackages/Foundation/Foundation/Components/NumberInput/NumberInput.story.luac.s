PROTO_0:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["newValue"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  LOADK R2 K0 ["%*px"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADN R3 0
  CALL R2 1 2
  NEWCLOSURE R4 P0
  CAPTURE VAL R3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K17 [{"value", "hasError", "isDisabled", "isRequired", "onChanged", "formatAsString", "label", "size", "width", "maximum", "minimum", "step", "hint", "precision"}]
  SETTABLEKS R2 R7 K3 ["value"]
  GETTABLEKS R8 R1 K4 ["hasError"]
  SETTABLEKS R8 R7 K4 ["hasError"]
  GETTABLEKS R8 R1 K5 ["isDisabled"]
  SETTABLEKS R8 R7 K5 ["isDisabled"]
  GETTABLEKS R8 R1 K6 ["isRequired"]
  SETTABLEKS R8 R7 K6 ["isRequired"]
  SETTABLEKS R4 R7 K7 ["onChanged"]
  DUPCLOSURE R8 K18 [PROTO_1]
  SETTABLEKS R8 R7 K8 ["formatAsString"]
  GETTABLEKS R8 R1 K9 ["label"]
  SETTABLEKS R8 R7 K9 ["label"]
  GETTABLEKS R8 R1 K10 ["size"]
  SETTABLEKS R8 R7 K10 ["size"]
  GETIMPORT R8 K21 [UDim.new]
  LOADN R9 0
  LOADN R10 100
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["width"]
  GETTABLEKS R8 R1 K12 ["maximum"]
  SETTABLEKS R8 R7 K12 ["maximum"]
  GETTABLEKS R8 R1 K13 ["minimum"]
  SETTABLEKS R8 R7 K13 ["minimum"]
  GETTABLEKS R8 R1 K14 ["step"]
  SETTABLEKS R8 R7 K14 ["step"]
  GETTABLEKS R8 R1 K15 ["hint"]
  SETTABLEKS R8 R7 K15 ["hint"]
  GETTABLEKS R8 R1 K16 ["precision"]
  SETTABLEKS R8 R7 K16 ["precision"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_3:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["newValue"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  LOADK R2 K0 ["%*px"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADN R2 0
  CALL R1 1 2
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K8 [{"value", "isDisabled", "onChanged", "formatAsString", "label", "width"}]
  SETTABLEKS R1 R6 K2 ["value"]
  LOADB R7 1
  SETTABLEKS R7 R6 K3 ["isDisabled"]
  SETTABLEKS R3 R6 K4 ["onChanged"]
  DUPCLOSURE R7 K9 [PROTO_4]
  SETTABLEKS R7 R6 K5 ["formatAsString"]
  LOADK R7 K10 [""]
  SETTABLEKS R7 R6 K6 ["label"]
  GETIMPORT R7 K13 [UDim.new]
  LOADN R8 0
  LOADN R9 100
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["width"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Enums"]
  GETTABLEKS R5 R6 K10 ["InputSize"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["NumberInput"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPCLOSURE R7 K14 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPTABLE R8 K18 [{"summary", "stories", "controls"}]
  LOADK R9 K19 ["Spinbox"]
  SETTABLEKS R9 R8 K15 ["summary"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K22 [{"name", "story"}]
  LOADK R11 K23 ["Default"]
  SETTABLEKS R11 R10 K20 ["name"]
  SETTABLEKS R6 R10 K21 ["story"]
  DUPTABLE R11 K22 [{"name", "story"}]
  LOADK R12 K24 ["Disabled"]
  SETTABLEKS R12 R11 K20 ["name"]
  SETTABLEKS R7 R11 K21 ["story"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K16 ["stories"]
  DUPTABLE R9 K35 [{"label", "hint", "isRequired", "hasError", "isDisabled", "size", "maximum", "minimum", "step", "precision"}]
  LOADK R10 K36 ["Label"]
  SETTABLEKS R10 R9 K25 ["label"]
  LOADK R10 K37 ["Number from -5 to 100"]
  SETTABLEKS R10 R9 K26 ["hint"]
  NEWTABLE R10 0 3
  GETTABLEKS R11 R2 K38 ["None"]
  LOADB R12 0
  LOADB R13 1
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K27 ["isRequired"]
  LOADB R10 0
  SETTABLEKS R10 R9 K28 ["hasError"]
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["isDisabled"]
  GETTABLEKS R10 R3 K39 ["values"]
  MOVE R11 R4
  CALL R10 1 1
  SETTABLEKS R10 R9 K30 ["size"]
  LOADN R10 100
  SETTABLEKS R10 R9 K31 ["maximum"]
  LOADN R10 251
  SETTABLEKS R10 R9 K32 ["minimum"]
  LOADK R10 K40 [0.2]
  SETTABLEKS R10 R9 K33 ["step"]
  LOADN R10 2
  SETTABLEKS R10 R9 K34 ["precision"]
  SETTABLEKS R9 R8 K17 ["controls"]
  RETURN R8 1
