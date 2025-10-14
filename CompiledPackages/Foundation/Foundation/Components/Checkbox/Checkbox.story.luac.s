PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K8 [{"isChecked", "isDisabled", "onActivated", "size", "label"}]
  SETTABLEKS R2 R6 K3 ["isChecked"]
  GETTABLEKS R7 R1 K4 ["isDisabled"]
  SETTABLEKS R7 R6 K4 ["isDisabled"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K5 ["onActivated"]
  GETTABLEKS R7 R1 K6 ["size"]
  SETTABLEKS R7 R6 K6 ["size"]
  GETTABLEKS R8 R1 K7 ["label"]
  ORK R7 R8 K9 [""]
  SETTABLEKS R7 R6 K7 ["label"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
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

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADB R3 0
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
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K8 [{"cursor", "onActivated", "tag", "Size"}]
  SETTABLEKS R5 R8 K4 ["cursor"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K5 ["onActivated"]
  LOADK R9 K9 ["auto-y col align-x-center align-y-center gap-medium padding-large radius-medium bg-surface-100 stroke-muted"]
  SETTABLEKS R9 R8 K6 ["tag"]
  GETIMPORT R9 K12 [UDim2.fromOffset]
  LOADN R10 44
  LOADN R11 120
  CALL R9 2 1
  SETTABLEKS R9 R8 K7 ["Size"]
  DUPTABLE R9 K15 [{"Checkbox", "Description"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K21 [{"isChecked", "onActivated", "size", "label", "Selectable", "LayoutOrder"}]
  SETTABLEKS R2 R12 K16 ["isChecked"]
  NEWCLOSURE R13 P2
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K5 ["onActivated"]
  GETTABLEKS R13 R1 K17 ["size"]
  SETTABLEKS R13 R12 K17 ["size"]
  LOADK R13 K22 ["Enable notifications"]
  SETTABLEKS R13 R12 K18 ["label"]
  LOADB R13 0
  SETTABLEKS R13 R12 K19 ["Selectable"]
  LOADN R13 1
  SETTABLEKS R13 R12 K20 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["Checkbox"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K24 [{"Text", "tag", "LayoutOrder"}]
  LOADK R13 K25 ["Get notified when someone mentions you or sends you a message"]
  SETTABLEKS R13 R12 K23 ["Text"]
  LOADK R13 K26 ["text-body-small content-muted auto-y size-full-0 text-wrap"]
  SETTABLEKS R13 R12 K6 ["tag"]
  LOADN R13 2
  SETTABLEKS R13 R12 K20 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["Description"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R5 R6 K10 ["Checkbox"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["Text"]
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
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPCLOSURE R10 K19 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  DUPTABLE R11 K23 [{"summary", "stories", "controls"}]
  LOADK R12 K24 ["Checkbox component"]
  SETTABLEKS R12 R11 K20 ["summary"]
  NEWTABLE R12 0 2
  DUPTABLE R13 K27 [{"name", "story"}]
  LOADK R14 K28 ["Basic"]
  SETTABLEKS R14 R13 K25 ["name"]
  SETTABLEKS R9 R13 K26 ["story"]
  DUPTABLE R14 K29 [{"name", "summary", "story"}]
  LOADK R15 K30 ["Custom Selection"]
  SETTABLEKS R15 R14 K25 ["name"]
  LOADK R15 K31 ["Select card container instead of checkbox"]
  SETTABLEKS R15 R14 K20 ["summary"]
  SETTABLEKS R10 R14 K26 ["story"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K21 ["stories"]
  DUPTABLE R12 K35 [{"isDisabled", "label", "size"}]
  LOADB R13 0
  SETTABLEKS R13 R12 K32 ["isDisabled"]
  LOADK R13 K36 ["Label"]
  SETTABLEKS R13 R12 K33 ["label"]
  GETTABLEKS R13 R3 K37 ["values"]
  MOVE R14 R8
  CALL R13 1 1
  SETTABLEKS R13 R12 K34 ["size"]
  SETTABLEKS R12 R11 K22 ["controls"]
  RETURN R11 1
