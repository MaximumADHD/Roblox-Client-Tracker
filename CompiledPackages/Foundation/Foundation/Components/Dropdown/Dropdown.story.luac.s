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
  NEWTABLE R0 0 0
  LOADN R3 1
  LOADN R1 100
  LOADN R2 1
  FORNPREP R1
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K1 [tostring]
  CALL R4 1 1
  DUPTABLE R7 K6 [{"id", "icon", "text", "isDisabled"}]
  SETTABLEKS R4 R7 K2 ["id"]
  LOADK R8 K7 ["icons/common/robux"]
  SETTABLEKS R8 R7 K3 ["icon"]
  LOADK R9 K8 ["Item %*"]
  MOVE R11 R4
  NAMECALL R9 R9 K9 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K4 ["text"]
  MODK R9 R3 K10 [7]
  JUMPIFEQKN R9 K11 [0] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  SETTABLEKS R8 R7 K5 ["isDisabled"]
  FASTCALL2 TABLE_INSERT R0 R7 [+4]
  MOVE R6 R0
  GETIMPORT R5 K14 [table.insert]
  CALL R5 2 0
  FORNLOOP R1
  RETURN R0 1

PROTO_4:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useMemo"]
  DUPCLOSURE R5 K3 [PROTO_3]
  NEWTABLE R6 0 0
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["Root"]
  DUPTABLE R7 K16 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width", "maxHeight"}]
  SETTABLEKS R2 R7 K6 ["value"]
  GETTABLEKS R9 R1 K17 ["hasPlaceholder"]
  JUMPIFNOT R9 [+2]
  LOADK R8 K18 ["Choose a value"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K7 ["placeholder"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K8 ["onItemChanged"]
  GETTABLEKS R8 R1 K9 ["hasError"]
  SETTABLEKS R8 R7 K9 ["hasError"]
  GETTABLEKS R8 R1 K10 ["isDisabled"]
  SETTABLEKS R8 R7 K10 ["isDisabled"]
  SETTABLEKS R4 R7 K11 ["items"]
  GETTABLEKS R8 R1 K12 ["size"]
  SETTABLEKS R8 R7 K12 ["size"]
  GETTABLEKS R8 R1 K13 ["label"]
  SETTABLEKS R8 R7 K13 ["label"]
  GETIMPORT R8 K21 [UDim.new]
  LOADN R9 0
  LOADN R10 150
  CALL R8 2 1
  SETTABLEKS R8 R7 K14 ["width"]
  LOADN R8 244
  SETTABLEKS R8 R7 K15 ["maxHeight"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_6:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["FoundationDropdownGroups"]
  JUMPIF R4 [+13]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K6 [{"tag", "Text"}]
  LOADK R7 K7 ["auto-xy"]
  SETTABLEKS R7 R6 K4 ["tag"]
  LOADK R7 K8 ["Enable FoundationDropdownGroups to see the story"]
  SETTABLEKS R7 R6 K5 ["Text"]
  CALL R4 2 -1
  RETURN R4 -1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["Root"]
  DUPTABLE R6 K18 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label"}]
  SETTABLEKS R2 R6 K10 ["value"]
  GETTABLEKS R8 R1 K19 ["hasPlaceholder"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K20 ["Choose a value"]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K11 ["placeholder"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K12 ["onItemChanged"]
  GETTABLEKS R7 R1 K13 ["hasError"]
  SETTABLEKS R7 R6 K13 ["hasError"]
  GETTABLEKS R7 R1 K14 ["isDisabled"]
  SETTABLEKS R7 R6 K14 ["isDisabled"]
  NEWTABLE R7 0 3
  DUPTABLE R8 K22 [{"title", "items"}]
  LOADK R9 K23 ["First title"]
  SETTABLEKS R9 R8 K21 ["title"]
  NEWTABLE R9 0 2
  DUPTABLE R10 K27 [{"id", "icon", "text"}]
  LOADK R11 K28 ["a1"]
  SETTABLEKS R11 R10 K24 ["id"]
  LOADK R11 K29 ["icons/common/robux"]
  SETTABLEKS R11 R10 K25 ["icon"]
  LOADK R11 K30 ["Alpha 1"]
  SETTABLEKS R11 R10 K26 ["text"]
  DUPTABLE R11 K31 [{"id", "text"}]
  LOADK R12 K32 ["a2"]
  SETTABLEKS R12 R11 K24 ["id"]
  LOADK R12 K33 ["Alpha 2"]
  SETTABLEKS R12 R11 K26 ["text"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K15 ["items"]
  DUPTABLE R9 K34 [{"items"}]
  NEWTABLE R10 0 2
  DUPTABLE R11 K31 [{"id", "text"}]
  LOADK R12 K35 ["b1"]
  SETTABLEKS R12 R11 K24 ["id"]
  LOADK R12 K36 ["Beta 1"]
  SETTABLEKS R12 R11 K26 ["text"]
  DUPTABLE R12 K37 [{"id", "isDisabled", "text"}]
  LOADK R13 K38 ["b2"]
  SETTABLEKS R13 R12 K24 ["id"]
  LOADB R13 1
  SETTABLEKS R13 R12 K14 ["isDisabled"]
  LOADK R13 K39 ["Beta 2 (disabled)"]
  SETTABLEKS R13 R12 K26 ["text"]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K15 ["items"]
  DUPTABLE R10 K34 [{"items"}]
  NEWTABLE R11 0 1
  DUPTABLE R12 K31 [{"id", "text"}]
  LOADK R13 K40 ["c1"]
  SETTABLEKS R13 R12 K24 ["id"]
  LOADK R13 K41 ["Untitled group item"]
  SETTABLEKS R13 R12 K26 ["text"]
  SETLIST R11 R12 1 [1]
  SETTABLEKS R11 R10 K15 ["items"]
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K15 ["items"]
  GETTABLEKS R7 R1 K16 ["size"]
  SETTABLEKS R7 R6 K16 ["size"]
  GETTABLEKS R7 R1 K17 ["label"]
  SETTABLEKS R7 R6 K17 ["label"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_8:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
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

PROTO_10:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
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

PROTO_12:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Checking item with value = "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_13:
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
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["Text"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K14 ["InputSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K15 ["Utility"]
  GETTABLEKS R9 R10 K16 ["Flags"]
  CALL R8 1 1
  DUPCLOSURE R9 K17 [PROTO_0]
  DUPTABLE R10 K21 [{"summary", "stories", "controls"}]
  LOADK R11 K22 ["Dropdown component"]
  SETTABLEKS R11 R10 K18 ["summary"]
  NEWTABLE R11 0 6
  DUPTABLE R12 K25 [{"name", "story"}]
  LOADK R13 K26 ["Base"]
  SETTABLEKS R13 R12 K23 ["name"]
  DUPCLOSURE R13 K27 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R5
  SETTABLEKS R13 R12 K24 ["story"]
  DUPTABLE R13 K25 [{"name", "story"}]
  LOADK R14 K28 ["Overflow"]
  SETTABLEKS R14 R13 K23 ["name"]
  DUPCLOSURE R14 K29 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K24 ["story"]
  DUPTABLE R14 K25 [{"name", "story"}]
  LOADK R15 K30 ["With item groups"]
  SETTABLEKS R15 R14 K23 ["name"]
  DUPCLOSURE R15 K31 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R15 R14 K24 ["story"]
  DUPTABLE R15 K25 [{"name", "story"}]
  LOADK R16 K32 ["Narrow dropdown narrow items"]
  SETTABLEKS R16 R15 K23 ["name"]
  DUPCLOSURE R16 K33 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R16 R15 K24 ["story"]
  DUPTABLE R16 K25 [{"name", "story"}]
  LOADK R17 K34 ["Narrow dropdown wider items"]
  SETTABLEKS R17 R16 K23 ["name"]
  DUPCLOSURE R17 K35 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R5
  SETTABLEKS R17 R16 K24 ["story"]
  DUPTABLE R17 K25 [{"name", "story"}]
  LOADK R18 K36 ["Wide dropdown narrow items"]
  SETTABLEKS R18 R17 K23 ["name"]
  DUPCLOSURE R18 K37 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R18 R17 K24 ["story"]
  SETLIST R11 R12 6 [1]
  SETTABLEKS R11 R10 K19 ["stories"]
  DUPTABLE R11 K44 [{"size", "isDisabled", "label", "hasError", "hasIcon", "hasPlaceholder"}]
  GETTABLEKS R12 R3 K45 ["values"]
  MOVE R13 R7
  CALL R12 1 1
  SETTABLEKS R12 R11 K38 ["size"]
  LOADB R12 0
  SETTABLEKS R12 R11 K39 ["isDisabled"]
  LOADK R12 K46 ["Dropdown Label"]
  SETTABLEKS R12 R11 K40 ["label"]
  LOADB R12 0
  SETTABLEKS R12 R11 K41 ["hasError"]
  LOADB R12 1
  SETTABLEKS R12 R11 K42 ["hasIcon"]
  LOADB R12 0
  SETTABLEKS R12 R11 K43 ["hasPlaceholder"]
  SETTABLEKS R11 R10 K20 ["controls"]
  RETURN R10 1
