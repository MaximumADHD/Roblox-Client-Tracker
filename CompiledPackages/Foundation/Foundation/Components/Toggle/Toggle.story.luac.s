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
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  DUPCLOSURE R10 K19 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  DUPTABLE R11 K23 [{"summary", "stories", "controls"}]
  LOADK R12 K24 ["Toggle component"]
  SETTABLEKS R12 R11 K20 ["summary"]
  NEWTABLE R12 0 2
  DUPTABLE R13 K27 [{"name", "story"}]
  LOADK R14 K28 ["Basic"]
  SETTABLEKS R14 R13 K25 ["name"]
  SETTABLEKS R9 R13 K26 ["story"]
  DUPTABLE R14 K29 [{"name", "summary", "story"}]
  LOADK R15 K30 ["Custom Selection"]
  SETTABLEKS R15 R14 K25 ["name"]
  LOADK R15 K31 ["Select card containers instead of toggles"]
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
