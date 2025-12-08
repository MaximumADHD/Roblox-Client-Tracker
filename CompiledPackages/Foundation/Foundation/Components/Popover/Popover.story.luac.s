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

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADB R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"Size", "tag"}]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 232
  CALL R7 4 1
  SETTABLEKS R7 R6 K3 ["Size"]
  LOADK R7 K9 ["row align-x-center align-y-center"]
  SETTABLEKS R7 R6 K4 ["tag"]
  DUPTABLE R7 K12 [{"Button", "Popover"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K17 [{"text", "size", "ref", "onActivated"}]
  LOADK R11 K18 ["Click me to toggle!"]
  SETTABLEKS R11 R10 K13 ["text"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K19 ["Medium"]
  SETTABLEKS R11 R10 K14 ["size"]
  SETTABLEKS R1 R10 K15 ["ref"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K16 ["onActivated"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["Button"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K2 ["createElement"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K20 ["Root"]
  DUPTABLE R10 K22 [{"isOpen"}]
  SETTABLEKS R2 R10 K21 ["isOpen"]
  DUPTABLE R11 K25 [{"Anchor", "Content"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K23 ["Anchor"]
  DUPTABLE R14 K27 [{"anchorRef"}]
  SETTABLEKS R1 R14 K26 ["anchorRef"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K23 ["Anchor"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K2 ["createElement"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K24 ["Content"]
  DUPTABLE R14 K31 [{"align", "side", "onPressedOutside"}]
  GETTABLEKS R16 R0 K32 ["controls"]
  GETTABLEKS R15 R16 K28 ["align"]
  SETTABLEKS R15 R14 K28 ["align"]
  GETTABLEKS R16 R0 K32 ["controls"]
  GETTABLEKS R15 R16 K29 ["side"]
  SETTABLEKS R15 R14 K29 ["side"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K30 ["onPressedOutside"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K2 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K33 [{"tag"}]
  LOADK R18 K34 ["col gap-small padding-medium auto-xy"]
  SETTABLEKS R18 R17 K4 ["tag"]
  DUPTABLE R18 K37 [{"Title", "Subtitle"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K2 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K39 [{"Text", "tag"}]
  LOADK R22 K40 ["Anchor Reference Example"]
  SETTABLEKS R22 R21 K38 ["Text"]
  LOADK R22 K41 ["auto-xy text-title-medium content-emphasis"]
  SETTABLEKS R22 R21 K4 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K35 ["Title"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K2 ["createElement"]
  GETUPVAL R20 5
  DUPTABLE R21 K39 [{"Text", "tag"}]
  LOADK R22 K42 ["This popover is anchored to a button using anchorRef"]
  SETTABLEKS R22 R21 K38 ["Text"]
  LOADK R22 K43 ["auto-xy text-body-small"]
  SETTABLEKS R22 R21 K4 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K36 ["Subtitle"]
  CALL R15 3 -1
  CALL R12 -1 1
  SETTABLEKS R12 R11 K24 ["Content"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["Popover"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_9:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R0 K2 [task.wait]
  LOADK R1 K3 [0.1]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R0 K2 [task.spawn]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K1 ["keyboardAware"]
  SETTABLEKS R2 R1 K2 ["FoundationPopoverOnScreenKeyboard"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useState"]
  LOADK R4 K4 [""]
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K7 [{"tag"}]
  LOADK R8 K8 ["col align-x-center align-y-center size-full-0 auto-y gap-large"]
  SETTABLEKS R8 R7 K6 ["tag"]
  DUPTABLE R8 K11 [{"Instructions", "Popover"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K14 [{"Text", "tag", "padding"}]
  LOADK R12 K15 ["Focus the input field to test keyboard-aware positioning"]
  SETTABLEKS R12 R11 K12 ["Text"]
  LOADK R12 K16 ["auto-xy text-body-medium content-emphasis"]
  SETTABLEKS R12 R11 K6 ["tag"]
  DUPTABLE R12 K18 [{"bottom"}]
  GETIMPORT R13 K21 [UDim.new]
  LOADN R14 0
  LOADN R15 244
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["bottom"]
  SETTABLEKS R12 R11 K13 ["padding"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K9 ["Instructions"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K22 ["Root"]
  DUPTABLE R11 K24 [{"isOpen"}]
  SETTABLEKS R1 R11 K23 ["isOpen"]
  DUPTABLE R12 K27 [{"Anchor", "Content"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K25 ["Anchor"]
  LOADNIL R15
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K7 [{"tag"}]
  LOADK R19 K28 ["col gap-medium auto-xy"]
  SETTABLEKS R19 R18 K6 ["tag"]
  DUPTABLE R19 K31 [{"TextInputField", "ToggleButton"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K5 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K39 [{"size", "label", "placeholder", "text", "onChanged", "onFocusGained", "onFocusLost"}]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K40 ["Medium"]
  SETTABLEKS R23 R22 K32 ["size"]
  LOADK R23 K41 ["Test Input"]
  SETTABLEKS R23 R22 K33 ["label"]
  LOADK R23 K42 ["Type something here..."]
  SETTABLEKS R23 R22 K34 ["placeholder"]
  SETTABLEKS R3 R22 K35 ["text"]
  NEWCLOSURE R23 P0
  CAPTURE VAL R4
  SETTABLEKS R23 R22 K36 ["onChanged"]
  NEWCLOSURE R23 P1
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K37 ["onFocusGained"]
  NEWCLOSURE R23 P2
  CAPTURE VAL R2
  SETTABLEKS R23 R22 K38 ["onFocusLost"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K29 ["TextInputField"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K5 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K44 [{"text", "size", "onActivated"}]
  JUMPIFNOT R1 [+2]
  LOADK R23 K45 ["Close Popover"]
  JUMP [+1]
  LOADK R23 K46 ["Open Popover"]
  SETTABLEKS R23 R22 K35 ["text"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K40 ["Medium"]
  SETTABLEKS R23 R22 K32 ["size"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R23 R22 K43 ["onActivated"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K30 ["ToggleButton"]
  CALL R16 3 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K25 ["Anchor"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K26 ["Content"]
  DUPTABLE R15 K50 [{"side", "align", "onPressedOutside"}]
  GETUPVAL R17 8
  GETTABLEKS R16 R17 K51 ["Bottom"]
  SETTABLEKS R16 R15 K47 ["side"]
  GETUPVAL R17 9
  GETTABLEKS R16 R17 K52 ["Start"]
  SETTABLEKS R16 R15 K48 ["align"]
  NEWCLOSURE R16 P4
  CAPTURE VAL R2
  SETTABLEKS R16 R15 K49 ["onPressedOutside"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K5 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K54 [{"tag", "Size"}]
  LOADK R19 K55 ["col gap-small padding-medium auto-xy"]
  SETTABLEKS R19 R18 K6 ["tag"]
  GETIMPORT R19 K58 [UDim2.fromOffset]
  LOADN R20 44
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K53 ["Size"]
  DUPTABLE R19 K62 [{"Title", "Description", "CurrentText"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K5 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K63 [{"Text", "tag"}]
  LOADK R23 K64 ["Keyboard-Aware Popover"]
  SETTABLEKS R23 R22 K12 ["Text"]
  LOADK R23 K65 ["auto-xy text-title-medium content-emphasis"]
  SETTABLEKS R23 R22 K6 ["tag"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["Title"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K5 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K63 [{"Text", "tag"}]
  LOADK R23 K66 ["This popover should avoid the on-screen keyboard on touch devices."]
  SETTABLEKS R23 R22 K12 ["Text"]
  LOADK R23 K67 ["auto-xy text-body-small"]
  SETTABLEKS R23 R22 K6 ["tag"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["Description"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K5 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K63 [{"Text", "tag"}]
  LOADK R24 K68 ["Current input: \"%*\""]
  MOVE R26 R3
  NAMECALL R24 R24 K69 ["format"]
  CALL R24 2 1
  MOVE R23 R24
  SETTABLEKS R23 R22 K12 ["Text"]
  LOADK R23 K70 ["auto-xy text-body-small content-subtle"]
  SETTABLEKS R23 R22 K6 ["tag"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["CurrentText"]
  CALL R16 3 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K26 ["Content"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["Popover"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETIMPORT R4 K3 [Vector2.new]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K4 ["SetPosition"]
  CALL R2 -1 0
  GETUPVAL R2 1
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["MouseMoved"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K2 ["Connect"]
  CALL R0 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETTABLEKS R1 R2 K3 ["MouseLeave"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U2
  NAMECALL R1 R1 K2 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_20:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 1
  GETIMPORT R4 K3 [Vector2.zero]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["useRef"]
  LOADNIL R5
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["useEffect"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  NEWTABLE R7 0 0
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K9 [{"tag", "ref"}]
  LOADK R8 K10 ["row align-x-center align-y-center size-full-3000 bg-surface-200"]
  SETTABLEKS R8 R7 K7 ["tag"]
  SETTABLEKS R4 R7 K8 ["ref"]
  DUPTABLE R8 K13 [{"Text", "Popover"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 3
  DUPTABLE R11 K14 [{"Text", "tag"}]
  LOADK R12 K15 ["Move the mouse over this area to see a tooltip"]
  SETTABLEKS R12 R11 K11 ["Text"]
  LOADK R12 K16 ["text-align-x-center"]
  SETTABLEKS R12 R11 K7 ["tag"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["Text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K17 ["Root"]
  DUPTABLE R11 K19 [{"isOpen"}]
  SETTABLEKS R1 R11 K18 ["isOpen"]
  DUPTABLE R12 K22 [{"Anchor", "Content"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K20 ["Anchor"]
  DUPTABLE R15 K24 [{"anchorRef"}]
  SETTABLEKS R3 R15 K23 ["anchorRef"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Anchor"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K21 ["Content"]
  DUPTABLE R15 K27 [{"align", "side"}]
  GETTABLEKS R17 R0 K28 ["controls"]
  GETTABLEKS R16 R17 K25 ["align"]
  SETTABLEKS R16 R15 K25 ["align"]
  GETTABLEKS R17 R0 K28 ["controls"]
  GETTABLEKS R16 R17 K26 ["side"]
  SETTABLEKS R16 R15 K26 ["side"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K29 [{"tag"}]
  LOADK R19 K30 ["col gap-small padding-medium auto-xy"]
  SETTABLEKS R19 R18 K7 ["tag"]
  DUPTABLE R19 K32 [{"Title"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K14 [{"Text", "tag"}]
  LOADK R23 K33 ["Can't close unless you are in the area"]
  SETTABLEKS R23 R22 K11 ["Text"]
  LOADK R23 K34 ["auto-xy text-title-medium content-emphasis"]
  SETTABLEKS R23 R22 K7 ["tag"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K31 ["Title"]
  CALL R16 3 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K21 ["Content"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["Popover"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_21:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETIMPORT R4 K3 [Vector2.new]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 -1
  NAMECALL R2 R2 K4 ["SetPosition"]
  CALL R2 -1 0
  GETUPVAL R2 1
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["MouseButton2Up"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K2 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_24:
  RETURN R0 0

PROTO_25:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 1
  GETIMPORT R4 K3 [Vector2.zero]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["useRef"]
  LOADNIL R5
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["useEffect"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  NEWTABLE R7 0 0
  CALL R5 2 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K11 [{"tag", "stateLayer", "onActivated", "ref"}]
  LOADK R8 K12 ["align-x-center align-y-center size-full-3000 bg-surface-200"]
  SETTABLEKS R8 R7 K7 ["tag"]
  DUPTABLE R8 K14 [{"affordance"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K15 ["None"]
  SETTABLEKS R9 R8 K13 ["affordance"]
  SETTABLEKS R8 R7 K8 ["stateLayer"]
  DUPCLOSURE R8 K16 [PROTO_24]
  SETTABLEKS R8 R7 K9 ["onActivated"]
  SETTABLEKS R4 R7 K10 ["ref"]
  DUPTABLE R8 K19 [{"Text", "Popover"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K20 [{"Text", "tag"}]
  LOADK R12 K21 ["Right-click on this area to open the context menu."]
  SETTABLEKS R12 R11 K17 ["Text"]
  LOADK R12 K22 ["text-align-x-center size-full-full"]
  SETTABLEKS R12 R11 K7 ["tag"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["Text"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["createElement"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K23 ["Root"]
  DUPTABLE R11 K25 [{"isOpen"}]
  SETTABLEKS R1 R11 K24 ["isOpen"]
  DUPTABLE R12 K28 [{"Anchor", "Content"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K26 ["Anchor"]
  DUPTABLE R15 K30 [{"anchorRef"}]
  SETTABLEKS R3 R15 K29 ["anchorRef"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K26 ["Anchor"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["createElement"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K27 ["Content"]
  DUPTABLE R15 K34 [{"align", "side", "onPressedOutside"}]
  GETTABLEKS R17 R0 K35 ["controls"]
  GETTABLEKS R16 R17 K31 ["align"]
  SETTABLEKS R16 R15 K31 ["align"]
  GETTABLEKS R17 R0 K35 ["controls"]
  GETTABLEKS R16 R17 K32 ["side"]
  SETTABLEKS R16 R15 K32 ["side"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R2
  SETTABLEKS R16 R15 K33 ["onPressedOutside"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K36 [{"tag"}]
  LOADK R19 K37 ["col gap-small padding-medium auto-xy"]
  SETTABLEKS R19 R18 K7 ["tag"]
  DUPTABLE R19 K40 [{"Text1", "Text2"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K20 [{"Text", "tag"}]
  LOADK R23 K41 ["Context Menu"]
  SETTABLEKS R23 R22 K17 ["Text"]
  LOADK R23 K42 ["auto-xy text-title-medium content-emphasis"]
  SETTABLEKS R23 R22 K7 ["tag"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K38 ["Text1"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K6 ["createElement"]
  GETUPVAL R21 4
  DUPTABLE R22 K20 [{"Text", "tag"}]
  LOADK R23 K43 ["Right-click functionality enabled."]
  SETTABLEKS R23 R22 K17 ["Text"]
  LOADK R23 K44 ["auto-xy text-body-small"]
  SETTABLEKS R23 R22 K7 ["tag"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K39 ["Text2"]
  CALL R16 3 -1
  CALL R13 -1 1
  SETTABLEKS R13 R12 K27 ["Content"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K18 ["Popover"]
  CALL R5 3 -1
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
  GETTABLEKS R8 R9 K13 ["TextInput"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K9 ["Components"]
  GETTABLEKS R9 R10 K14 ["Popover"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K15 ["Enums"]
  GETTABLEKS R10 R11 K16 ["InputSize"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K15 ["Enums"]
  GETTABLEKS R11 R12 K17 ["PopoverSide"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K15 ["Enums"]
  GETTABLEKS R12 R13 K18 ["PopoverAlign"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K15 ["Enums"]
  GETTABLEKS R13 R14 K19 ["Radius"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K20 ["Providers"]
  GETTABLEKS R15 R16 K21 ["Style"]
  GETTABLEKS R14 R15 K22 ["useTokens"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R16 R0 K9 ["Components"]
  GETTABLEKS R15 R16 K23 ["Types"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K9 ["Components"]
  GETTABLEKS R17 R18 K14 ["Popover"]
  GETTABLEKS R16 R17 K24 ["useMeasurableRef"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R18 R0 K15 ["Enums"]
  GETTABLEKS R17 R18 K25 ["StateLayerAffordance"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R19 R0 K26 ["Utility"]
  GETTABLEKS R18 R19 K27 ["Flags"]
  CALL R17 1 1
  DUPCLOSURE R18 K28 [PROTO_0]
  CAPTURE VAL R13
  NEWTABLE R19 0 4
  LOADK R20 K29 ["Default"]
  LOADK R21 K30 ["Surface_0"]
  LOADK R22 K31 ["Surface_200"]
  LOADK R23 K32 ["ActionAlert"]
  SETLIST R19 R20 4 [1]
  DUPTABLE R20 K36 [{"summary", "stories", "controls"}]
  LOADK R21 K14 ["Popover"]
  SETTABLEKS R21 R20 K33 ["summary"]
  DUPTABLE R21 K43 [{"Basic", "ClickOutside", "AnchorRef", "KeyboardAware", "MousePositionTooltip", "ContextMenu"}]
  DUPTABLE R22 K46 [{"name", "story"}]
  LOADK R23 K37 ["Basic"]
  SETTABLEKS R23 R22 K44 ["name"]
  DUPCLOSURE R23 K47 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R9
  SETTABLEKS R23 R22 K45 ["story"]
  SETTABLEKS R22 R21 K37 ["Basic"]
  DUPTABLE R22 K46 [{"name", "story"}]
  LOADK R23 K48 ["Click Outside"]
  SETTABLEKS R23 R22 K44 ["name"]
  DUPCLOSURE R23 K49 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R9
  SETTABLEKS R23 R22 K45 ["story"]
  SETTABLEKS R22 R21 K38 ["ClickOutside"]
  DUPTABLE R22 K46 [{"name", "story"}]
  LOADK R23 K50 ["Anchor Reference"]
  SETTABLEKS R23 R22 K44 ["name"]
  DUPCLOSURE R23 K51 [PROTO_8]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R23 R22 K45 ["story"]
  SETTABLEKS R22 R21 K39 ["AnchorRef"]
  DUPTABLE R22 K46 [{"name", "story"}]
  LOADK R23 K52 ["Keyboard Aware Input"]
  SETTABLEKS R23 R22 K44 ["name"]
  DUPCLOSURE R23 K53 [PROTO_15]
  CAPTURE VAL R17
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R11
  SETTABLEKS R23 R22 K45 ["story"]
  SETTABLEKS R22 R21 K40 ["KeyboardAware"]
  DUPTABLE R22 K46 [{"name", "story"}]
  LOADK R23 K41 ["MousePositionTooltip"]
  SETTABLEKS R23 R22 K44 ["name"]
  DUPCLOSURE R23 K54 [PROTO_20]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R23 R22 K45 ["story"]
  SETTABLEKS R22 R21 K41 ["MousePositionTooltip"]
  DUPTABLE R22 K46 [{"name", "story"}]
  LOADK R23 K55 ["Context menu"]
  SETTABLEKS R23 R22 K44 ["name"]
  DUPCLOSURE R23 K56 [PROTO_26]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R23 R22 K45 ["story"]
  SETTABLEKS R22 R21 K42 ["ContextMenu"]
  SETTABLEKS R21 R20 K34 ["stories"]
  DUPTABLE R21 K62 [{"side", "align", "radius", "backgroundStyle", "keyboardAware"}]
  GETTABLEKS R22 R3 K63 ["values"]
  MOVE R23 R10
  CALL R22 1 1
  SETTABLEKS R22 R21 K57 ["side"]
  GETTABLEKS R22 R3 K63 ["values"]
  MOVE R23 R11
  CALL R22 1 1
  SETTABLEKS R22 R21 K58 ["align"]
  NEWTABLE R22 0 3
  GETTABLEKS R23 R12 K64 ["Small"]
  GETTABLEKS R24 R12 K65 ["Medium"]
  GETTABLEKS R25 R12 K66 ["Circle"]
  SETLIST R22 R23 3 [1]
  SETTABLEKS R22 R21 K59 ["radius"]
  SETTABLEKS R19 R21 K60 ["backgroundStyle"]
  GETTABLEKS R22 R17 K67 ["FoundationPopoverOnScreenKeyboard"]
  SETTABLEKS R22 R21 K61 ["keyboardAware"]
  SETTABLEKS R21 R20 K35 ["controls"]
  RETURN R20 1
