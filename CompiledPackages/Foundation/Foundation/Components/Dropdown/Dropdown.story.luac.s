PROTO_0:
  JUMPIFNOT R0 [+2]
  LOADK R1 K0 ["icons/common/safety"]
  JUMP [+1]
  LOADNIL R1
  NEWTABLE R2 0 4
  DUPTABLE R3 K3 [{"id", "text"}]
  LOADK R4 K4 ["A"]
  SETTABLEKS R4 R3 K1 ["id"]
  LOADK R4 K5 ["Item A"]
  SETTABLEKS R4 R3 K2 ["text"]
  DUPTABLE R4 K7 [{"id", "text", "isDisabled"}]
  LOADK R5 K8 ["B"]
  SETTABLEKS R5 R4 K1 ["id"]
  LOADK R5 K9 ["Item B"]
  SETTABLEKS R5 R4 K2 ["text"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["isDisabled"]
  DUPTABLE R5 K3 [{"id", "text"}]
  LOADK R6 K10 ["G"]
  SETTABLEKS R6 R5 K1 ["id"]
  LOADK R6 K11 ["Sie dürfen das Geschwindigkeitsbegrenzung nicht überschreiten, die Strafe beträgt 100 Euro"]
  SETTABLEKS R6 R5 K2 ["text"]
  DUPTABLE R6 K13 [{"id", "text", "icon"}]
  LOADK R7 K14 ["C"]
  SETTABLEKS R7 R6 K1 ["id"]
  LOADK R7 K15 ["Item C"]
  SETTABLEKS R7 R6 K2 ["text"]
  SETTABLEKS R1 R6 K12 ["icon"]
  SETLIST R2 R3 4 [1]
  RETURN R2 1

PROTO_1:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R4 1
  GETTABLEKS R5 R1 K2 ["hasIcon"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["Root"]
  DUPTABLE R7 K13 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label"}]
  SETTABLEKS R2 R7 K5 ["value"]
  GETTABLEKS R9 R1 K14 ["hasPlaceholder"]
  JUMPIFNOT R9 [+2]
  LOADK R8 K15 ["Choose a value"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K6 ["placeholder"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K7 ["onItemChanged"]
  GETTABLEKS R8 R1 K8 ["hasError"]
  SETTABLEKS R8 R7 K8 ["hasError"]
  GETTABLEKS R8 R1 K9 ["isDisabled"]
  SETTABLEKS R8 R7 K9 ["isDisabled"]
  SETTABLEKS R4 R7 K10 ["items"]
  GETTABLEKS R8 R1 K11 ["size"]
  SETTABLEKS R8 R7 K11 ["size"]
  GETTABLEKS R8 R1 K12 ["label"]
  SETTABLEKS R8 R7 K12 ["label"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_3:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Root"]
  DUPTABLE R6 K13 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width"}]
  SETTABLEKS R2 R6 K4 ["value"]
  GETTABLEKS R8 R1 K14 ["hasPlaceholder"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K15 ["Choose a value"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K5 ["placeholder"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K6 ["onItemChanged"]
  GETTABLEKS R7 R1 K7 ["hasError"]
  SETTABLEKS R7 R6 K7 ["hasError"]
  GETTABLEKS R7 R1 K8 ["isDisabled"]
  SETTABLEKS R7 R6 K8 ["isDisabled"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K18 [{"id", "text"}]
  LOADK R9 K19 ["A"]
  SETTABLEKS R9 R8 K16 ["id"]
  LOADK R9 K20 ["Item A"]
  SETTABLEKS R9 R8 K17 ["text"]
  DUPTABLE R9 K21 [{"id", "text", "isDisabled"}]
  LOADK R10 K22 ["B"]
  SETTABLEKS R10 R9 K16 ["id"]
  LOADK R10 K23 ["Item B"]
  SETTABLEKS R10 R9 K17 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K8 ["isDisabled"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K9 ["items"]
  GETTABLEKS R7 R1 K10 ["size"]
  SETTABLEKS R7 R6 K10 ["size"]
  GETTABLEKS R7 R1 K11 ["label"]
  SETTABLEKS R7 R6 K11 ["label"]
  GETIMPORT R7 K26 [UDim.new]
  LOADN R8 0
  LOADN R9 150
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["width"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_5:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R4 1
  GETTABLEKS R5 R1 K2 ["hasIcon"]
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["Root"]
  DUPTABLE R7 K14 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width"}]
  SETTABLEKS R2 R7 K5 ["value"]
  GETTABLEKS R9 R1 K15 ["hasPlaceholder"]
  JUMPIFNOT R9 [+2]
  LOADK R8 K16 ["Choose a value"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K6 ["placeholder"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K7 ["onItemChanged"]
  GETTABLEKS R8 R1 K8 ["hasError"]
  SETTABLEKS R8 R7 K8 ["hasError"]
  GETTABLEKS R8 R1 K9 ["isDisabled"]
  SETTABLEKS R8 R7 K9 ["isDisabled"]
  SETTABLEKS R4 R7 K10 ["items"]
  GETTABLEKS R8 R1 K11 ["size"]
  SETTABLEKS R8 R7 K11 ["size"]
  GETTABLEKS R8 R1 K12 ["label"]
  SETTABLEKS R8 R7 K12 ["label"]
  GETIMPORT R8 K19 [UDim.new]
  LOADN R9 0
  LOADN R10 150
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["width"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_7:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Root"]
  DUPTABLE R6 K13 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width"}]
  SETTABLEKS R2 R6 K4 ["value"]
  GETTABLEKS R8 R1 K14 ["hasPlaceholder"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K15 ["Choose a value"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K5 ["placeholder"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K6 ["onItemChanged"]
  GETTABLEKS R7 R1 K7 ["hasError"]
  SETTABLEKS R7 R6 K7 ["hasError"]
  GETTABLEKS R7 R1 K8 ["isDisabled"]
  SETTABLEKS R7 R6 K8 ["isDisabled"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K18 [{"id", "text"}]
  LOADK R9 K19 ["A"]
  SETTABLEKS R9 R8 K16 ["id"]
  LOADK R9 K20 ["Item A"]
  SETTABLEKS R9 R8 K17 ["text"]
  DUPTABLE R9 K21 [{"id", "text", "isDisabled"}]
  LOADK R10 K22 ["B"]
  SETTABLEKS R10 R9 K16 ["id"]
  LOADK R10 K23 ["Item B"]
  SETTABLEKS R10 R9 K17 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K8 ["isDisabled"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K9 ["items"]
  GETTABLEKS R7 R1 K10 ["size"]
  SETTABLEKS R7 R6 K10 ["size"]
  GETTABLEKS R7 R1 K11 ["label"]
  SETTABLEKS R7 R6 K11 ["label"]
  GETIMPORT R7 K26 [UDim.new]
  LOADN R8 1
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["width"]
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
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Dropdown"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["InputSize"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K14 ["InternalMenu"]
  CALL R7 1 1
  DUPCLOSURE R8 K15 [PROTO_0]
  DUPTABLE R9 K19 [{"summary", "stories", "controls"}]
  LOADK R10 K20 ["Dropdown Group component"]
  SETTABLEKS R10 R9 K16 ["summary"]
  NEWTABLE R10 0 4
  DUPTABLE R11 K23 [{"name", "story"}]
  LOADK R12 K24 ["Base"]
  SETTABLEKS R12 R11 K21 ["name"]
  DUPCLOSURE R12 K25 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K22 ["story"]
  DUPTABLE R12 K23 [{"name", "story"}]
  LOADK R13 K26 ["Narrow dropdown narrow items"]
  SETTABLEKS R13 R12 K21 ["name"]
  DUPCLOSURE R13 K27 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K22 ["story"]
  DUPTABLE R13 K23 [{"name", "story"}]
  LOADK R14 K28 ["Narrow dropdown wider items"]
  SETTABLEKS R14 R13 K21 ["name"]
  DUPCLOSURE R14 K29 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K22 ["story"]
  DUPTABLE R14 K23 [{"name", "story"}]
  LOADK R15 K30 ["Wide dropdown narrow items"]
  SETTABLEKS R15 R14 K21 ["name"]
  DUPCLOSURE R15 K31 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R15 R14 K22 ["story"]
  SETLIST R10 R11 4 [1]
  SETTABLEKS R10 R9 K17 ["stories"]
  DUPTABLE R10 K38 [{"size", "isDisabled", "label", "hasError", "hasIcon", "hasPlaceholder"}]
  GETTABLEKS R11 R3 K39 ["values"]
  MOVE R12 R6
  CALL R11 1 1
  SETTABLEKS R11 R10 K32 ["size"]
  LOADB R11 0
  SETTABLEKS R11 R10 K33 ["isDisabled"]
  LOADK R11 K40 ["Dropdown Label"]
  SETTABLEKS R11 R10 K34 ["label"]
  LOADB R11 0
  SETTABLEKS R11 R10 K35 ["hasError"]
  LOADB R11 1
  SETTABLEKS R11 R10 K36 ["hasIcon"]
  LOADB R11 0
  SETTABLEKS R11 R10 K37 ["hasPlaceholder"]
  SETTABLEKS R10 R9 K18 ["controls"]
  RETURN R9 1
