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
  DUPTABLE R6 K4 [{"tag"}]
  LOADK R7 K5 ["col auto-xy size-3000-0"]
  SETTABLEKS R7 R6 K3 ["tag"]
  NEWTABLE R7 0 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K12 [{"isChecked", "isDisabled", "onActivated", "size", "label", "placement"}]
  SETTABLEKS R2 R10 K6 ["isChecked"]
  GETTABLEKS R11 R1 K7 ["isDisabled"]
  SETTABLEKS R11 R10 K7 ["isDisabled"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K8 ["onActivated"]
  GETTABLEKS R11 R1 K9 ["size"]
  SETTABLEKS R11 R10 K9 ["size"]
  GETTABLEKS R12 R1 K10 ["label"]
  ORK R11 R12 K13 [""]
  SETTABLEKS R11 R10 K10 ["label"]
  GETTABLEKS R11 R1 K11 ["placement"]
  SETTABLEKS R11 R10 K11 ["placement"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R4 3 -1
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
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"cursor", "onActivated", "tag", "Size"}]
  GETUPVAL R7 2
  SETTABLEKS R7 R6 K1 ["cursor"]
  SETTABLEKS R3 R6 K2 ["onActivated"]
  LOADK R7 K6 ["col padding-large radius-medium gap-medium bg-surface-100 stroke-muted"]
  SETTABLEKS R7 R6 K3 ["tag"]
  GETIMPORT R7 K9 [UDim2.fromOffset]
  LOADN R8 64
  LOADN R9 100
  CALL R7 2 1
  SETTABLEKS R7 R6 K4 ["Size"]
  DUPTABLE R7 K12 [{"TextContainer", "Description"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K14 [{"tag", "LayoutOrder"}]
  LOADK R11 K15 ["auto-y size-full-0 row gap-small flex-x-between"]
  SETTABLEKS R11 R10 K3 ["tag"]
  LOADN R11 1
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  DUPTABLE R11 K18 [{"Label", "Toggle"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K20 [{"Text", "tag", "LayoutOrder"}]
  SETTABLEKS R0 R14 K19 ["Text"]
  LOADK R15 K21 ["text-body-medium content-emphasis auto-xy"]
  SETTABLEKS R15 R14 K3 ["tag"]
  LOADN R15 1
  SETTABLEKS R15 R14 K13 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Label"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K25 [{"isChecked", "onActivated", "label", "Selectable", "LayoutOrder"}]
  SETTABLEKS R2 R14 K22 ["isChecked"]
  SETTABLEKS R3 R14 K2 ["onActivated"]
  LOADK R15 K26 [""]
  SETTABLEKS R15 R14 K23 ["label"]
  LOADB R15 0
  SETTABLEKS R15 R14 K24 ["Selectable"]
  LOADN R15 2
  SETTABLEKS R15 R14 K13 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["Toggle"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K10 ["TextContainer"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K20 [{"Text", "tag", "LayoutOrder"}]
  SETTABLEKS R1 R10 K19 ["Text"]
  LOADK R11 K27 ["text-body-small content-muted auto-xy text-wrap"]
  SETTABLEKS R11 R10 K3 ["tag"]
  LOADN R11 2
  SETTABLEKS R11 R10 K13 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["Description"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADB R1 0
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useState"]
  LOADB R3 1
  CALL R2 1 2
  GETUPVAL R4 1
  CALL R4 0 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["useMemo"]
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
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K4 [{"tag"}]
  LOADK R10 K5 ["auto-xy col gap-large"]
  SETTABLEKS R10 R9 K3 ["tag"]
  DUPTABLE R10 K8 [{"NotificationsCard", "ChatCard"}]
  MOVE R11 R6
  LOADK R12 K9 ["Push Notifications"]
  LOADK R13 K10 ["Receive notifications for messages and updates"]
  MOVE R14 R2
  NEWCLOSURE R15 P2
  CAPTURE VAL R3
  CAPTURE VAL R2
  CALL R11 4 1
  SETTABLEKS R11 R10 K6 ["NotificationsCard"]
  MOVE R11 R6
  LOADK R12 K11 ["Chat"]
  LOADK R13 K12 ["Enable chat for real-time communication"]
  MOVE R14 R0
  NEWCLOSURE R15 P3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R11 4 1
  SETTABLEKS R11 R10 K7 ["ChatCard"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_7:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["isChecked: "]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"tag"}]
  LOADK R5 K4 ["col auto-xy size-3000-0"]
  SETTABLEKS R5 R4 K2 ["tag"]
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K10 [{"isDisabled", "onActivated", "size", "label", "placement"}]
  GETTABLEKS R9 R1 K5 ["isDisabled"]
  SETTABLEKS R9 R8 K5 ["isDisabled"]
  DUPCLOSURE R9 K11 [PROTO_7]
  SETTABLEKS R9 R8 K6 ["onActivated"]
  GETTABLEKS R9 R1 K7 ["size"]
  SETTABLEKS R9 R8 K7 ["size"]
  GETTABLEKS R10 R1 K8 ["label"]
  ORK R9 R10 K12 [""]
  SETTABLEKS R9 R8 K8 ["label"]
  GETTABLEKS R9 R1 K9 ["placement"]
  SETTABLEKS R9 R8 K9 ["placement"]
  CALL R6 2 -1
  SETLIST R5 R6 -1 [1]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R5 R6 K10 ["Toggle"]
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
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K16 ["Enums"]
  GETTABLEKS R10 R11 K18 ["InputPlacement"]
  CALL R9 1 1
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  DUPCLOSURE R11 K20 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  DUPCLOSURE R12 K21 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  DUPTABLE R13 K25 [{"summary", "stories", "controls"}]
  LOADK R14 K26 ["Toggle component"]
  SETTABLEKS R14 R13 K22 ["summary"]
  NEWTABLE R14 0 3
  DUPTABLE R15 K29 [{"name", "story"}]
  LOADK R16 K30 ["Basic"]
  SETTABLEKS R16 R15 K27 ["name"]
  SETTABLEKS R10 R15 K28 ["story"]
  DUPTABLE R16 K31 [{"name", "summary", "story"}]
  LOADK R17 K32 ["Custom Selection"]
  SETTABLEKS R17 R16 K27 ["name"]
  LOADK R17 K33 ["Select card containers instead of toggles"]
  SETTABLEKS R17 R16 K22 ["summary"]
  SETTABLEKS R11 R16 K28 ["story"]
  DUPTABLE R17 K31 [{"name", "summary", "story"}]
  LOADK R18 K34 ["Uncontrolled"]
  SETTABLEKS R18 R17 K27 ["name"]
  LOADK R18 K35 ["State is controlled by the toggle itself"]
  SETTABLEKS R18 R17 K22 ["summary"]
  SETTABLEKS R12 R17 K28 ["story"]
  SETLIST R14 R15 3 [1]
  SETTABLEKS R14 R13 K23 ["stories"]
  DUPTABLE R14 K40 [{"isDisabled", "label", "size", "placement"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K36 ["isDisabled"]
  LOADK R15 K41 ["Label"]
  SETTABLEKS R15 R14 K37 ["label"]
  GETTABLEKS R15 R3 K42 ["values"]
  MOVE R16 R8
  CALL R15 1 1
  SETTABLEKS R15 R14 K38 ["size"]
  GETTABLEKS R15 R3 K42 ["values"]
  MOVE R16 R9
  CALL R15 1 1
  SETTABLEKS R15 R14 K39 ["placement"]
  SETTABLEKS R14 R13 K24 ["controls"]
  RETURN R13 1
