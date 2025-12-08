PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Item"]
  DUPTABLE R5 K7 [{"value", "label", "isDisabled", "size", "placement"}]
  SETTABLEKS R0 R5 K2 ["value"]
  GETUPVAL R8 3
  LENGTH R7 R8
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+9]
  LOADK R7 K8 ["%* %*"]
  GETUPVAL R9 3
  MOVE R10 R0
  NAMECALL R7 R7 K9 ["format"]
  CALL R7 3 1
  MOVE R6 R7
  JUMP [+1]
  LOADK R6 K10 [""]
  SETTABLEKS R6 R5 K3 ["label"]
  JUMPIFEQKS R0 K11 ["D"] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["isDisabled"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K5 ["size"]
  SETTABLEKS R6 R5 K5 ["size"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K6 ["placement"]
  SETTABLEKS R6 R5 K6 ["placement"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K14 [table.insert]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["Checking value"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETTABLEKS R2 R1 K1 ["optionLabel"]
  NEWTABLE R3 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["forEach"]
  GETUPVAL R5 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CALL R4 2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["Root"]
  DUPTABLE R6 K6 [{"onValueChanged"}]
  DUPCLOSURE R7 K7 [PROTO_1]
  SETTABLEKS R7 R6 K5 ["onValueChanged"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["Item"]
  DUPTABLE R5 K6 [{"value", "label", "size", "placement"}]
  GETTABLEKS R6 R0 K2 ["value"]
  SETTABLEKS R6 R5 K2 ["value"]
  GETTABLEKS R6 R0 K3 ["label"]
  SETTABLEKS R6 R5 K3 ["label"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K4 ["size"]
  SETTABLEKS R6 R5 K4 ["size"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["placement"]
  SETTABLEKS R6 R5 K5 ["placement"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K9 [table.insert]
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["Checking value"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["controls"]
  NEWTABLE R2 0 5
  DUPTABLE R3 K3 [{"value", "label"}]
  LOADK R4 K4 ["A"]
  SETTABLEKS R4 R3 K1 ["value"]
  LOADK R4 K5 ["Short"]
  SETTABLEKS R4 R3 K2 ["label"]
  DUPTABLE R4 K3 [{"value", "label"}]
  LOADK R5 K6 ["B"]
  SETTABLEKS R5 R4 K1 ["value"]
  LOADK R5 K7 ["Medium length label"]
  SETTABLEKS R5 R4 K2 ["label"]
  DUPTABLE R5 K3 [{"value", "label"}]
  LOADK R6 K8 ["C"]
  SETTABLEKS R6 R5 K1 ["value"]
  LOADK R6 K9 ["A much, much longer label to test wrapping and layout in the radio group"]
  SETTABLEKS R6 R5 K2 ["label"]
  DUPTABLE R6 K3 [{"value", "label"}]
  LOADK R7 K10 ["D"]
  SETTABLEKS R7 R6 K1 ["value"]
  LOADK R7 K11 ["Tiny"]
  SETTABLEKS R7 R6 K2 ["label"]
  DUPTABLE R7 K3 [{"value", "label"}]
  LOADK R8 K12 ["E"]
  SETTABLEKS R8 R7 K1 ["value"]
  LOADK R8 K13 ["Extremely long label that spans multiple lines to ensure alignment across items with a label on the left"]
  SETTABLEKS R8 R7 K2 ["label"]
  SETLIST R2 R3 5 [1]
  NEWTABLE R3 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K14 ["forEach"]
  MOVE R5 R2
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CALL R4 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K18 [{"tag", "Size"}]
  LOADK R7 K19 ["auto-y"]
  SETTABLEKS R7 R6 K16 ["tag"]
  GETIMPORT R7 K22 [UDim2.new]
  LOADN R8 0
  LOADN R9 144
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K17 ["Size"]
  DUPTABLE R7 K24 [{"RadioGroup"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K15 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K25 ["Root"]
  DUPTABLE R10 K27 [{"onValueChanged"}]
  DUPCLOSURE R11 K28 [PROTO_4]
  SETTABLEKS R11 R10 K26 ["onValueChanged"]
  MOVE R11 R3
  CALL R8 3 1
  SETTABLEKS R8 R7 K23 ["RadioGroup"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_6:
  DUPTABLE R0 K3 [{"radius", "offset", "borderWidth"}]
  GETIMPORT R1 K6 [UDim.new]
  LOADN R2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["Radius"]
  GETTABLEKS R3 R4 K8 ["Medium"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["radius"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["Size"]
  GETTABLEKS R1 R2 K10 ["Size_150"]
  SETTABLEKS R1 R0 K1 ["offset"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["Stroke"]
  GETTABLEKS R1 R2 K12 ["Thicker"]
  SETTABLEKS R1 R0 K2 ["borderWidth"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Selected card:"]
  GETUPVAL R2 1
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K2 [{"tag"}]
  LOADK R6 K3 ["auto-xy col gap-small align-x-center padding-medium"]
  SETTABLEKS R6 R5 K1 ["tag"]
  DUPTABLE R6 K6 [{"ImageContainer", "RadioButton"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K9 [{"cursor", "onActivated", "tag"}]
  GETUPVAL R10 2
  SETTABLEKS R10 R9 K7 ["cursor"]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K8 ["onActivated"]
  LOADK R10 K10 ["radius-medium bg-surface-100 size-2000-2000"]
  SETTABLEKS R10 R9 K1 ["tag"]
  DUPTABLE R10 K12 [{"Image"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K15 [{"Image", "Size", "Position"}]
  SETTABLEKS R1 R13 K11 ["Image"]
  GETIMPORT R14 K18 [UDim2.fromScale]
  LOADK R15 K19 [0.8]
  LOADK R16 K19 [0.8]
  CALL R14 2 1
  SETTABLEKS R14 R13 K13 ["Size"]
  GETIMPORT R14 K18 [UDim2.fromScale]
  LOADK R15 K20 [0.1]
  LOADK R16 K20 [0.1]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Position"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Image"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["ImageContainer"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K21 ["Item"]
  DUPTABLE R9 K25 [{"value", "label", "placement"}]
  SETTABLEKS R0 R9 K22 ["value"]
  SETTABLEKS R2 R9 K23 ["label"]
  GETUPVAL R11 6
  JUMPIFNOT R11 [+4]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K24 ["placement"]
  JUMPIF R10 [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K24 ["placement"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K5 ["RadioButton"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADNIL R3
  CALL R2 1 2
  GETUPVAL R4 1
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["useMemo"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  NEWTABLE R7 0 1
  MOVE R8 R4
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  NEWCLOSURE R6 P1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K4 ["Root"]
  DUPTABLE R9 K8 [{"value", "onValueChanged", "Selectable"}]
  SETTABLEKS R2 R9 K5 ["value"]
  SETTABLEKS R3 R9 K6 ["onValueChanged"]
  LOADB R10 0
  SETTABLEKS R10 R9 K7 ["Selectable"]
  DUPTABLE R10 K10 [{"Container"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K12 [{"tag"}]
  LOADK R14 K13 ["auto-xy row gap-large wrap"]
  SETTABLEKS R14 R13 K11 ["tag"]
  DUPTABLE R14 K17 [{"CardA", "CardB", "CardC"}]
  MOVE R15 R6
  LOADK R16 K18 ["A"]
  LOADK R17 K19 ["icons/graphic/success_xlarge"]
  LOADK R18 K20 ["Success"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K14 ["CardA"]
  MOVE R15 R6
  LOADK R16 K21 ["B"]
  LOADK R17 K22 ["icons/graphic/error_xlarge"]
  LOADK R18 K23 ["Error"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K15 ["CardB"]
  MOVE R15 R6
  LOADK R16 K24 ["C"]
  LOADK R17 K25 ["icons/graphic/newclothing_xlarge"]
  LOADK R18 K26 ["Info"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["CardC"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Container"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R5 R6 K10 ["RadioGroup"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["Image"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K13 ["Providers"]
  GETTABLEKS R9 R10 K14 ["Style"]
  GETTABLEKS R8 R9 K15 ["useTokens"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K16 ["Enums"]
  GETTABLEKS R9 R10 K17 ["InputSize"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K16 ["Enums"]
  GETTABLEKS R10 R11 K18 ["InputPlacement"]
  CALL R9 1 1
  NEWTABLE R10 0 5
  LOADK R11 K19 ["A"]
  LOADK R12 K20 ["B"]
  LOADK R13 K21 ["C"]
  LOADK R14 K22 ["D"]
  LOADK R15 K23 ["E"]
  SETLIST R10 R11 5 [1]
  DUPCLOSURE R11 K24 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPCLOSURE R12 K25 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPCLOSURE R13 K26 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  DUPTABLE R14 K30 [{"summary", "stories", "controls"}]
  LOADK R15 K31 ["Radio Group component"]
  SETTABLEKS R15 R14 K27 ["summary"]
  NEWTABLE R15 0 3
  DUPTABLE R16 K34 [{"name", "story"}]
  LOADK R17 K35 ["Basic"]
  SETTABLEKS R17 R16 K32 ["name"]
  SETTABLEKS R11 R16 K33 ["story"]
  DUPTABLE R17 K36 [{"name", "summary", "story"}]
  LOADK R18 K37 ["Different Label Lengths"]
  SETTABLEKS R18 R17 K32 ["name"]
  LOADK R18 K38 ["Items with labels of varying length"]
  SETTABLEKS R18 R17 K27 ["summary"]
  SETTABLEKS R12 R17 K33 ["story"]
  DUPTABLE R18 K36 [{"name", "summary", "story"}]
  LOADK R19 K39 ["Custom Selection"]
  SETTABLEKS R19 R18 K32 ["name"]
  LOADK R19 K40 ["Select images instead of radio buttons"]
  SETTABLEKS R19 R18 K27 ["summary"]
  SETTABLEKS R13 R18 K33 ["story"]
  SETLIST R15 R16 3 [1]
  SETTABLEKS R15 R14 K28 ["stories"]
  DUPTABLE R15 K44 [{"optionLabel", "size", "placement"}]
  LOADK R16 K45 ["Option"]
  SETTABLEKS R16 R15 K41 ["optionLabel"]
  GETTABLEKS R16 R3 K46 ["values"]
  MOVE R17 R8
  CALL R16 1 1
  SETTABLEKS R16 R15 K42 ["size"]
  GETTABLEKS R16 R3 K46 ["values"]
  MOVE R17 R9
  CALL R16 1 1
  SETTABLEKS R16 R15 K43 ["placement"]
  SETTABLEKS R15 R14 K29 ["controls"]
  RETURN R14 1
