PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  DUPTABLE R3 K4 [{"Default", "Surface_0", "Surface_200", "ActionAlert"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K0 ["Default"]
  GETTABLEKS R6 R1 K5 ["Color"]
  GETTABLEKS R5 R6 K6 ["Surface"]
  GETTABLEKS R4 R5 K1 ["Surface_0"]
  SETTABLEKS R4 R3 K1 ["Surface_0"]
  GETTABLEKS R6 R1 K5 ["Color"]
  GETTABLEKS R5 R6 K6 ["Surface"]
  GETTABLEKS R4 R5 K2 ["Surface_200"]
  SETTABLEKS R4 R3 K2 ["Surface_200"]
  GETTABLEKS R6 R1 K5 ["Color"]
  GETTABLEKS R5 R6 K3 ["ActionAlert"]
  GETTABLEKS R4 R5 K7 ["Background"]
  SETTABLEKS R4 R3 K3 ["ActionAlert"]
  GETTABLE R2 R3 R0
  RETURN R2 1

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Button activated"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K1 ["backgroundStyle"]
  GETUPVAL R3 0
  CALL R3 0 1
  DUPTABLE R4 K6 [{"Default", "Surface_0", "Surface_200", "ActionAlert"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["Default"]
  GETTABLEKS R7 R3 K7 ["Color"]
  GETTABLEKS R6 R7 K8 ["Surface"]
  GETTABLEKS R5 R6 K3 ["Surface_0"]
  SETTABLEKS R5 R4 K3 ["Surface_0"]
  GETTABLEKS R7 R3 K7 ["Color"]
  GETTABLEKS R6 R7 K8 ["Surface"]
  GETTABLEKS R5 R6 K4 ["Surface_200"]
  SETTABLEKS R5 R4 K4 ["Surface_200"]
  GETTABLEKS R7 R3 K7 ["Color"]
  GETTABLEKS R6 R7 K5 ["ActionAlert"]
  GETTABLEKS R5 R6 K9 ["Background"]
  SETTABLEKS R5 R4 K5 ["ActionAlert"]
  GETTABLE R1 R4 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K13 [{"Size", "tag"}]
  GETIMPORT R5 K16 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 0
  LOADN R9 232
  CALL R5 4 1
  SETTABLEKS R5 R4 K11 ["Size"]
  LOADK R5 K17 ["row align-x-center align-y-center"]
  SETTABLEKS R5 R4 K12 ["tag"]
  DUPTABLE R5 K19 [{"Popover"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K20 ["Root"]
  DUPTABLE R8 K22 [{"isOpen"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K21 ["isOpen"]
  DUPTABLE R9 K25 [{"Anchor", "Content"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K23 ["Anchor"]
  LOADNIL R12
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K26 [{"tag"}]
  LOADK R16 K27 ["bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large"]
  SETTABLEKS R16 R15 K12 ["tag"]
  DUPTABLE R16 K30 [{"Text", "Button"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K31 [{"Text", "tag"}]
  LOADK R20 K32 ["I am a card"]
  SETTABLEKS R20 R19 K28 ["Text"]
  LOADK R20 K33 ["auto-xy text-heading-medium"]
  SETTABLEKS R20 R19 K12 ["tag"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["Text"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 5
  DUPTABLE R19 K37 [{"text", "size", "onActivated"}]
  LOADK R20 K38 ["Just a button!"]
  SETTABLEKS R20 R19 K34 ["text"]
  GETUPVAL R21 6
  GETTABLEKS R20 R21 K39 ["Medium"]
  SETTABLEKS R20 R19 K35 ["size"]
  DUPCLOSURE R20 K40 [PROTO_1]
  SETTABLEKS R20 R19 K36 ["onActivated"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["Button"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K23 ["Anchor"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K10 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K24 ["Content"]
  DUPTABLE R12 K44 [{"align", "side", "backgroundStyle", "radius"}]
  GETTABLEKS R14 R0 K0 ["controls"]
  GETTABLEKS R13 R14 K41 ["align"]
  SETTABLEKS R13 R12 K41 ["align"]
  GETTABLEKS R14 R0 K0 ["controls"]
  GETTABLEKS R13 R14 K42 ["side"]
  SETTABLEKS R13 R12 K42 ["side"]
  SETTABLEKS R1 R12 K1 ["backgroundStyle"]
  GETTABLEKS R14 R0 K0 ["controls"]
  GETTABLEKS R13 R14 K43 ["radius"]
  SETTABLEKS R13 R12 K43 ["radius"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K10 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K26 [{"tag"}]
  LOADK R16 K45 ["col gap-small padding-medium auto-xy"]
  SETTABLEKS R16 R15 K12 ["tag"]
  DUPTABLE R16 K48 [{"Title", "Subtitle"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K31 [{"Text", "tag"}]
  LOADK R20 K49 ["Tooltip Title"]
  SETTABLEKS R20 R19 K28 ["Text"]
  LOADK R20 K50 ["auto-xy text-title-medium content-emphasis"]
  SETTABLEKS R20 R19 K12 ["tag"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K46 ["Title"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K10 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K31 [{"Text", "tag"}]
  LOADK R20 K51 ["Here's the tootip's subtitle and content."]
  SETTABLEKS R20 R19 K28 ["Text"]
  LOADK R20 K52 ["auto-xy text-body-small"]
  SETTABLEKS R20 R19 K12 ["tag"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K47 ["Subtitle"]
  CALL R13 3 -1
  CALL R10 -1 1
  SETTABLEKS R10 R9 K24 ["Content"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K18 ["Popover"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K3 [{"tag"}]
  LOADK R6 K4 ["row align-x-center align-y-center size-full-0 auto-y"]
  SETTABLEKS R6 R5 K2 ["tag"]
  DUPTABLE R6 K6 [{"Popover"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["Root"]
  DUPTABLE R9 K9 [{"isOpen"}]
  SETTABLEKS R1 R9 K8 ["isOpen"]
  DUPTABLE R10 K12 [{"Anchor", "Content"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K10 ["Anchor"]
  LOADNIL R13
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K3 [{"tag"}]
  LOADK R17 K13 ["bg-surface-100 padding-large auto-xy radius-medium stroke-neutral col gap-large"]
  SETTABLEKS R17 R16 K2 ["tag"]
  DUPTABLE R17 K16 [{"Text", "Button"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K17 [{"Text", "tag"}]
  LOADK R21 K18 ["I am a card"]
  SETTABLEKS R21 R20 K14 ["Text"]
  LOADK R21 K19 ["auto-xy text-heading-medium"]
  SETTABLEKS R21 R20 K2 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K14 ["Text"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K23 [{"text", "size", "onActivated"}]
  LOADK R21 K24 ["Click me to toggle!"]
  SETTABLEKS R21 R20 K20 ["text"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K25 ["Medium"]
  SETTABLEKS R21 R20 K21 ["size"]
  NEWCLOSURE R21 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R21 R20 K22 ["onActivated"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K15 ["Button"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K10 ["Anchor"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K11 ["Content"]
  DUPTABLE R13 K29 [{"align", "side", "onPressedOutside"}]
  GETTABLEKS R15 R0 K30 ["controls"]
  GETTABLEKS R14 R15 K26 ["align"]
  SETTABLEKS R14 R13 K26 ["align"]
  GETTABLEKS R15 R0 K30 ["controls"]
  GETTABLEKS R14 R15 K27 ["side"]
  SETTABLEKS R14 R13 K27 ["side"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R2
  SETTABLEKS R14 R13 K28 ["onPressedOutside"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K3 [{"tag"}]
  LOADK R17 K31 ["col gap-small padding-medium auto-xy"]
  SETTABLEKS R17 R16 K2 ["tag"]
  DUPTABLE R17 K34 [{"Title", "Subtitle"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K17 [{"Text", "tag"}]
  LOADK R21 K35 ["Click outside example"]
  SETTABLEKS R21 R20 K14 ["Text"]
  LOADK R21 K36 ["auto-xy text-title-medium content-emphasis"]
  SETTABLEKS R21 R20 K2 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K32 ["Title"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K1 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K17 [{"Text", "tag"}]
  LOADK R21 K37 ["Click anywhere outside to close this"]
  SETTABLEKS R21 R20 K14 ["Text"]
  LOADK R21 K38 ["auto-xy text-body-small"]
  SETTABLEKS R21 R20 K2 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K33 ["Subtitle"]
  CALL R14 3 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K11 ["Content"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Popover"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Text"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["Button"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K13 ["Popover"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Enums"]
  GETTABLEKS R9 R10 K15 ["InputSize"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K14 ["Enums"]
  GETTABLEKS R10 R11 K16 ["PopoverSide"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K14 ["Enums"]
  GETTABLEKS R11 R12 K17 ["PopoverAlign"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K14 ["Enums"]
  GETTABLEKS R12 R13 K18 ["Radius"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K19 ["Providers"]
  GETTABLEKS R14 R15 K20 ["Style"]
  GETTABLEKS R13 R14 K21 ["useTokens"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K9 ["Components"]
  GETTABLEKS R14 R15 K22 ["Types"]
  CALL R13 1 1
  DUPCLOSURE R14 K23 [PROTO_0]
  CAPTURE VAL R12
  NEWTABLE R15 0 4
  LOADK R16 K24 ["Default"]
  LOADK R17 K25 ["Surface_0"]
  LOADK R18 K26 ["Surface_200"]
  LOADK R19 K27 ["ActionAlert"]
  SETLIST R15 R16 4 [1]
  DUPTABLE R16 K31 [{"summary", "stories", "controls"}]
  LOADK R17 K13 ["Popover"]
  SETTABLEKS R17 R16 K28 ["summary"]
  DUPTABLE R17 K34 [{"Basic", "ClickOutside"}]
  DUPTABLE R18 K37 [{"name", "story"}]
  LOADK R19 K32 ["Basic"]
  SETTABLEKS R19 R18 K35 ["name"]
  DUPCLOSURE R19 K38 [PROTO_2]
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K36 ["story"]
  SETTABLEKS R18 R17 K32 ["Basic"]
  DUPTABLE R18 K37 [{"name", "story"}]
  LOADK R19 K39 ["Click Outside"]
  SETTABLEKS R19 R18 K35 ["name"]
  DUPCLOSURE R19 K40 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R19 R18 K36 ["story"]
  SETTABLEKS R18 R17 K33 ["ClickOutside"]
  SETTABLEKS R17 R16 K29 ["stories"]
  DUPTABLE R17 K45 [{"side", "align", "radius", "backgroundStyle"}]
  GETTABLEKS R18 R3 K46 ["values"]
  MOVE R19 R9
  CALL R18 1 1
  SETTABLEKS R18 R17 K41 ["side"]
  GETTABLEKS R18 R3 K46 ["values"]
  MOVE R19 R10
  CALL R18 1 1
  SETTABLEKS R18 R17 K42 ["align"]
  NEWTABLE R18 0 2
  GETTABLEKS R19 R11 K47 ["Small"]
  GETTABLEKS R20 R11 K48 ["Medium"]
  SETLIST R18 R19 2 [1]
  SETTABLEKS R18 R17 K43 ["radius"]
  SETTABLEKS R15 R17 K44 ["backgroundStyle"]
  SETTABLEKS R17 R16 K30 ["controls"]
  RETURN R16 1
