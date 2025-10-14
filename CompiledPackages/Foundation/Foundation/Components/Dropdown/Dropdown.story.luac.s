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
  DUPTABLE R9 K19 [{"summary", "story", "controls"}]
  LOADK R10 K20 ["Dropdown Group component"]
  SETTABLEKS R10 R9 K16 ["summary"]
  DUPCLOSURE R10 K21 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R10 R9 K17 ["story"]
  DUPTABLE R10 K28 [{"size", "isDisabled", "label", "hasError", "hasIcon", "hasPlaceholder"}]
  GETTABLEKS R11 R3 K29 ["values"]
  MOVE R12 R6
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["size"]
  LOADB R11 0
  SETTABLEKS R11 R10 K23 ["isDisabled"]
  LOADK R11 K30 ["Dropdown Label"]
  SETTABLEKS R11 R10 K24 ["label"]
  LOADB R11 0
  SETTABLEKS R11 R10 K25 ["hasError"]
  LOADB R11 1
  SETTABLEKS R11 R10 K26 ["hasIcon"]
  LOADB R11 0
  SETTABLEKS R11 R10 K27 ["hasPlaceholder"]
  SETTABLEKS R10 R9 K18 ["controls"]
  RETURN R9 1
