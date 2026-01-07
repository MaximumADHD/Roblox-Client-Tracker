PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADK R1 K1 ["1"]
  CALL R0 1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["col auto-y size-full-0"]
  SETTABLEKS R5 R4 K3 ["tag"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K12 [{"LayoutOrder", "activeTabId", "onActivated", "tabs", "size", "fillBehavior"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K6 ["LayoutOrder"]
  SETTABLEKS R0 R7 K7 ["activeTabId"]
  SETTABLEKS R1 R7 K8 ["onActivated"]
  NEWTABLE R8 0 2
  DUPTABLE R9 K15 [{"id", "text"}]
  LOADK R10 K1 ["1"]
  SETTABLEKS R10 R9 K13 ["id"]
  LOADK R10 K16 ["Nested tab 1"]
  SETTABLEKS R10 R9 K14 ["text"]
  DUPTABLE R10 K15 [{"id", "text"}]
  LOADK R11 K17 ["2"]
  SETTABLEKS R11 R10 K13 ["id"]
  LOADK R11 K18 ["Nested tab 2"]
  SETTABLEKS R11 R10 K14 ["text"]
  SETLIST R8 R9 2 [1]
  SETTABLEKS R8 R7 K9 ["tabs"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K19 ["Medium"]
  SETTABLEKS R8 R7 K10 ["size"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K20 ["Fill"]
  SETTABLEKS R8 R7 K11 ["fillBehavior"]
  CALL R5 2 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K22 [{"LayoutOrder", "tag", "Visible"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K6 ["LayoutOrder"]
  LOADK R9 K23 ["auto-y size-full-0"]
  SETTABLEKS R9 R8 K3 ["tag"]
  JUMPIFEQKS R0 K1 ["1"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K21 ["Visible"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K25 [{"tag", "Text"}]
  LOADK R12 K26 ["text-align-x-left auto-xy text-wrap"]
  SETTABLEKS R12 R11 K3 ["tag"]
  LOADK R12 K27 ["Content of nested tab 1"]
  SETTABLEKS R12 R11 K24 ["Text"]
  CALL R9 2 -1
  CALL R6 -1 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K22 [{"LayoutOrder", "tag", "Visible"}]
  LOADN R10 2
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  LOADK R10 K23 ["auto-y size-full-0"]
  SETTABLEKS R10 R9 K3 ["tag"]
  JUMPIFEQKS R0 K17 ["2"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  SETTABLEKS R10 R9 K21 ["Visible"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K25 [{"tag", "Text"}]
  LOADK R13 K26 ["text-align-x-left auto-xy text-wrap"]
  SETTABLEKS R13 R12 K3 ["tag"]
  LOADK R13 K28 ["Content of nested tab 2"]
  SETTABLEKS R13 R12 K24 ["Text"]
  CALL R10 2 -1
  CALL R7 -1 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["col auto-y size-full-0"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K8 [{"defaultActiveTabId", "tabs", "size", "fillBehavior"}]
  LOADK R7 K9 ["1"]
  SETTABLEKS R7 R6 K4 ["defaultActiveTabId"]
  NEWTABLE R7 0 5
  DUPTABLE R8 K13 [{"id", "text", "content"}]
  LOADK R9 K9 ["1"]
  SETTABLEKS R9 R8 K10 ["id"]
  LOADK R9 K14 ["lll"]
  SETTABLEKS R9 R8 K11 ["text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K2 [{"tag"}]
  LOADK R12 K15 ["auto-y size-full-0"]
  SETTABLEKS R12 R11 K1 ["tag"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K17 [{"tag", "Text"}]
  LOADK R15 K18 ["text-align-x-left auto-xy text-wrap"]
  SETTABLEKS R15 R14 K1 ["tag"]
  LOADK R15 K19 ["You fully controll how content is rendered. No padding or other styles are applied by default"]
  SETTABLEKS R15 R14 K16 ["Text"]
  CALL R12 2 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K12 ["content"]
  DUPTABLE R9 K13 [{"id", "text", "content"}]
  LOADK R10 K20 ["2"]
  SETTABLEKS R10 R9 K10 ["id"]
  LOADK R10 K21 ["A big one"]
  SETTABLEKS R10 R9 K11 ["text"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K2 [{"tag"}]
  LOADK R13 K22 ["padding-xxlarge auto-y size-full-0"]
  SETTABLEKS R13 R12 K1 ["tag"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K17 [{"tag", "Text"}]
  LOADK R16 K23 ["text-align-x-left auto-xy"]
  SETTABLEKS R16 R15 K1 ["tag"]
  LOADK R16 K24 ["The Jurassic ranges from 200 million years to 145 million years ago."]
  SETTABLEKS R16 R15 K16 ["Text"]
  CALL R13 2 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K12 ["content"]
  DUPTABLE R10 K26 [{"id", "text", "icon", "content"}]
  LOADK R11 K27 ["3"]
  SETTABLEKS R11 R10 K10 ["id"]
  LOADK R11 K28 ["With builder icon"]
  SETTABLEKS R11 R10 K11 ["text"]
  LOADK R11 K29 ["star"]
  SETTABLEKS R11 R10 K25 ["icon"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K2 [{"tag"}]
  LOADK R14 K22 ["padding-xxlarge auto-y size-full-0"]
  SETTABLEKS R14 R13 K1 ["tag"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K0 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K17 [{"tag", "Text"}]
  LOADK R17 K23 ["text-align-x-left auto-xy"]
  SETTABLEKS R17 R16 K1 ["tag"]
  LOADK R17 K30 ["You are perfect!"]
  SETTABLEKS R17 R16 K16 ["Text"]
  CALL R14 2 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K12 ["content"]
  DUPTABLE R11 K26 [{"id", "text", "icon", "content"}]
  LOADK R12 K31 ["4"]
  SETTABLEKS R12 R11 K10 ["id"]
  LOADK R12 K32 ["With filled builder icon"]
  SETTABLEKS R12 R11 K11 ["text"]
  GETUPVAL R12 4
  SETTABLEKS R12 R11 K25 ["icon"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K2 [{"tag"}]
  LOADK R15 K22 ["padding-xxlarge auto-y size-full-0"]
  SETTABLEKS R15 R14 K1 ["tag"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K17 [{"tag", "Text"}]
  LOADK R18 K23 ["text-align-x-left auto-xy"]
  SETTABLEKS R18 R17 K1 ["tag"]
  LOADK R18 K33 ["You are still perfect!"]
  SETTABLEKS R18 R17 K16 ["Text"]
  CALL R15 2 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K12 ["content"]
  DUPTABLE R12 K35 [{"id", "text", "icon", "isDisabled"}]
  LOADK R13 K36 ["5"]
  SETTABLEKS R13 R12 K10 ["id"]
  LOADK R13 K37 ["With icon"]
  SETTABLEKS R13 R12 K11 ["text"]
  LOADK R13 K38 ["icons/menu/clothing/limited_on"]
  SETTABLEKS R13 R12 K25 ["icon"]
  LOADB R13 1
  SETTABLEKS R13 R12 K34 ["isDisabled"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K5 ["tabs"]
  GETTABLEKS R8 R0 K39 ["controls"]
  GETTABLEKS R7 R8 K6 ["size"]
  SETTABLEKS R7 R6 K6 ["size"]
  GETTABLEKS R8 R0 K39 ["controls"]
  GETTABLEKS R7 R8 K7 ["fillBehavior"]
  SETTABLEKS R7 R6 K7 ["fillBehavior"]
  CALL R4 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_2:
  GETIMPORT R1 K1 [print]
  LOADK R3 K2 ["Tab %* activated"]
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["col auto-y size-full-0"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K9 [{"defaultActiveTabId", "onActivated", "tabs", "size", "fillBehavior"}]
  LOADK R7 K10 ["1"]
  SETTABLEKS R7 R6 K4 ["defaultActiveTabId"]
  DUPCLOSURE R7 K11 [PROTO_2]
  SETTABLEKS R7 R6 K5 ["onActivated"]
  NEWTABLE R7 0 5
  DUPTABLE R8 K15 [{"id", "text", "content"}]
  LOADK R9 K10 ["1"]
  SETTABLEKS R9 R8 K12 ["id"]
  LOADK R9 K16 ["With nested tabs"]
  SETTABLEKS R9 R8 K13 ["text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 3
  CALL R9 1 1
  SETTABLEKS R9 R8 K14 ["content"]
  DUPTABLE R9 K15 [{"id", "text", "content"}]
  LOADK R10 K17 ["2"]
  SETTABLEKS R10 R9 K12 ["id"]
  LOADK R10 K18 ["Regular tab"]
  SETTABLEKS R10 R9 K13 ["text"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K2 [{"tag"}]
  LOADK R13 K19 ["padding-xxlarge auto-y size-full-0"]
  SETTABLEKS R13 R12 K1 ["tag"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K21 [{"tag", "Text"}]
  LOADK R16 K22 ["text-align-x-left auto-xy"]
  SETTABLEKS R16 R15 K1 ["tag"]
  LOADK R16 K23 ["Regular tab content."]
  SETTABLEKS R16 R15 K20 ["Text"]
  CALL R13 2 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K14 ["content"]
  DUPTABLE R10 K25 [{"id", "text", "icon", "content"}]
  LOADK R11 K26 ["3"]
  SETTABLEKS R11 R10 K12 ["id"]
  LOADK R11 K27 ["With builder icon"]
  SETTABLEKS R11 R10 K13 ["text"]
  LOADK R11 K28 ["star"]
  SETTABLEKS R11 R10 K24 ["icon"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K2 [{"tag"}]
  LOADK R14 K19 ["padding-xxlarge auto-y size-full-0"]
  SETTABLEKS R14 R13 K1 ["tag"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K0 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K21 [{"tag", "Text"}]
  LOADK R17 K22 ["text-align-x-left auto-xy"]
  SETTABLEKS R17 R16 K1 ["tag"]
  LOADK R17 K29 ["You are perfect!"]
  SETTABLEKS R17 R16 K20 ["Text"]
  CALL R14 2 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K14 ["content"]
  DUPTABLE R11 K25 [{"id", "text", "icon", "content"}]
  LOADK R12 K30 ["4"]
  SETTABLEKS R12 R11 K12 ["id"]
  LOADK R12 K31 ["With filled builder icon"]
  SETTABLEKS R12 R11 K13 ["text"]
  GETUPVAL R12 5
  SETTABLEKS R12 R11 K24 ["icon"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K0 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K2 [{"tag"}]
  LOADK R15 K19 ["padding-xxlarge auto-y size-full-0"]
  SETTABLEKS R15 R14 K1 ["tag"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K21 [{"tag", "Text"}]
  LOADK R18 K22 ["text-align-x-left auto-xy"]
  SETTABLEKS R18 R17 K1 ["tag"]
  LOADK R18 K32 ["You are still perfect!"]
  SETTABLEKS R18 R17 K20 ["Text"]
  CALL R15 2 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K14 ["content"]
  DUPTABLE R12 K34 [{"id", "text", "icon", "isDisabled", "content"}]
  LOADK R13 K35 ["5"]
  SETTABLEKS R13 R12 K12 ["id"]
  LOADK R13 K36 ["With icon"]
  SETTABLEKS R13 R12 K13 ["text"]
  LOADK R13 K37 ["icons/menu/clothing/limited_on"]
  SETTABLEKS R13 R12 K24 ["icon"]
  LOADB R13 1
  SETTABLEKS R13 R12 K33 ["isDisabled"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K2 [{"tag"}]
  LOADK R16 K19 ["padding-xxlarge auto-y size-full-0"]
  SETTABLEKS R16 R15 K1 ["tag"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K0 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K21 [{"tag", "Text"}]
  LOADK R19 K22 ["text-align-x-left auto-xy"]
  SETTABLEKS R19 R18 K1 ["tag"]
  LOADK R19 K32 ["You are still perfect!"]
  SETTABLEKS R19 R18 K20 ["Text"]
  CALL R16 2 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K14 ["content"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K6 ["tabs"]
  GETTABLEKS R8 R0 K38 ["controls"]
  GETTABLEKS R7 R8 K7 ["size"]
  SETTABLEKS R7 R6 K7 ["size"]
  GETTABLEKS R8 R0 K38 ["controls"]
  GETTABLEKS R7 R8 K8 ["fillBehavior"]
  SETTABLEKS R7 R6 K8 ["fillBehavior"]
  CALL R4 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

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
  GETTABLEKS R6 R7 K11 ["Tabs"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["Text"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K13 ["View"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Enums"]
  GETTABLEKS R9 R10 K15 ["InputSize"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K14 ["Enums"]
  GETTABLEKS R10 R11 K16 ["FillBehavior"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R1 K17 ["BuilderIcons"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K18 ["IconVariant"]
  DUPTABLE R12 K21 [{"name", "variant"}]
  LOADK R13 K22 ["star"]
  SETTABLEKS R13 R12 K19 ["name"]
  GETTABLEKS R13 R11 K23 ["Filled"]
  SETTABLEKS R13 R12 K20 ["variant"]
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R6
  DUPTABLE R14 K28 [{"summary", "stories", "controls"}]
  LOADK R15 K11 ["Tabs"]
  SETTABLEKS R15 R14 K25 ["summary"]
  DUPTABLE R15 K31 [{"Basic", "Uncontrolled"}]
  DUPTABLE R16 K33 [{"name", "story"}]
  LOADK R17 K29 ["Basic"]
  SETTABLEKS R17 R16 K19 ["name"]
  DUPCLOSURE R17 K34 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K32 ["story"]
  SETTABLEKS R16 R15 K29 ["Basic"]
  DUPTABLE R16 K33 [{"name", "story"}]
  LOADK R17 K35 ["Uncontrolled with nested controlled tabs"]
  SETTABLEKS R17 R16 K19 ["name"]
  DUPCLOSURE R17 K36 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R12
  SETTABLEKS R17 R16 K32 ["story"]
  SETTABLEKS R16 R15 K30 ["Uncontrolled"]
  SETTABLEKS R15 R14 K26 ["stories"]
  DUPTABLE R15 K39 [{"size", "fillBehavior"}]
  GETTABLEKS R16 R3 K40 ["values"]
  MOVE R17 R8
  CALL R16 1 1
  SETTABLEKS R16 R15 K37 ["size"]
  GETTABLEKS R16 R3 K40 ["values"]
  MOVE R17 R9
  CALL R16 1 1
  SETTABLEKS R16 R15 K38 ["fillBehavior"]
  SETTABLEKS R15 R14 K27 ["controls"]
  RETURN R14 1
