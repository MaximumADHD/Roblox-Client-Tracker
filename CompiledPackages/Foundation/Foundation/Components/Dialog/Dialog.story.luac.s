PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Dialog closed!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["No clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Yes clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["children"]
  JUMPIF R1 [+7]
  DUPTABLE R1 K3 [{"DialogMedia", "DialogContent"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["DialogMedia"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["DialogContent"]
  GETTABLEKS R2 R0 K4 ["controls"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R5 1
  CALL R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K10 [{"ref", "backgroundStyle", "Size"}]
  SETTABLEKS R4 R8 K7 ["ref"]
  DUPTABLE R9 K13 [{"Color3", "Transparency"}]
  GETTABLEKS R13 R5 K14 ["Color"]
  GETTABLEKS R12 R13 K15 ["Shift"]
  GETTABLEKS R11 R12 K16 ["Shift_200"]
  GETTABLEKS R10 R11 K11 ["Color3"]
  SETTABLEKS R10 R9 K11 ["Color3"]
  GETTABLEKS R13 R5 K14 ["Color"]
  GETTABLEKS R12 R13 K15 ["Shift"]
  GETTABLEKS R11 R12 K16 ["Shift_200"]
  GETTABLEKS R10 R11 K12 ["Transparency"]
  SETTABLEKS R10 R9 K12 ["Transparency"]
  SETTABLEKS R9 R8 K8 ["backgroundStyle"]
  GETIMPORT R9 K19 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R14 R2 K21 ["mockScreenYOffset"]
  ORK R13 R14 K20 [0]
  CALL R9 4 1
  SETTABLEKS R9 R8 K9 ["Size"]
  DUPTABLE R9 K23 [{"OverlayProvider"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K25 [{"gui"}]
  SETTABLEKS R3 R12 K24 ["gui"]
  DUPTABLE R13 K27 [{"DialogRoot"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["createElement"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K28 ["Root"]
  DUPTABLE R16 K32 [{"title", "size", "onClose"}]
  GETTABLEKS R18 R2 K29 ["title"]
  JUMPIFNOTEQKS R18 K33 [""] [+3]
  LOADNIL R17
  JUMP [+2]
  GETTABLEKS R17 R2 K29 ["title"]
  SETTABLEKS R17 R16 K29 ["title"]
  GETTABLEKS R17 R2 K30 ["size"]
  SETTABLEKS R17 R16 K30 ["size"]
  GETTABLEKS R18 R2 K34 ["isDismissable"]
  JUMPIFNOT R18 [+2]
  DUPCLOSURE R17 K35 [PROTO_0]
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K31 ["onClose"]
  DUPTABLE R17 K37 [{"DialogMedia", "DialogContent", "DialogActions"}]
  GETTABLEKS R18 R1 K1 ["DialogMedia"]
  SETTABLEKS R18 R17 K1 ["DialogMedia"]
  GETTABLEKS R18 R1 K2 ["DialogContent"]
  SETTABLEKS R18 R17 K2 ["DialogContent"]
  GETTABLEKS R19 R2 K38 ["hasActions"]
  JUMPIFNOT R19 [+52]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K6 ["createElement"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K39 ["Actions"]
  DUPTABLE R20 K43 [{"LayoutOrder", "actions", "label"}]
  LOADN R21 3
  SETTABLEKS R21 R20 K40 ["LayoutOrder"]
  NEWTABLE R21 0 2
  DUPTABLE R22 K47 [{"text", "variant", "onActivated"}]
  LOADK R23 K48 ["No"]
  SETTABLEKS R23 R22 K44 ["text"]
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K49 ["Standard"]
  SETTABLEKS R23 R22 K45 ["variant"]
  DUPCLOSURE R23 K50 [PROTO_1]
  SETTABLEKS R23 R22 K46 ["onActivated"]
  DUPTABLE R23 K53 [{"text", "variant", "icon", "onActivated", "inputDelay"}]
  LOADK R24 K54 ["Yes"]
  SETTABLEKS R24 R23 K44 ["text"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K55 ["Emphasis"]
  SETTABLEKS R24 R23 K45 ["variant"]
  LOADK R24 K56 ["icons/common/robux"]
  SETTABLEKS R24 R23 K51 ["icon"]
  DUPCLOSURE R24 K57 [PROTO_2]
  SETTABLEKS R24 R23 K46 ["onActivated"]
  LOADN R24 3
  SETTABLEKS R24 R23 K52 ["inputDelay"]
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K41 ["actions"]
  GETTABLEKS R21 R2 K58 ["actionsLabel"]
  SETTABLEKS R21 R20 K42 ["label"]
  CALL R18 2 1
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K36 ["DialogActions"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K26 ["DialogRoot"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K22 ["OverlayProvider"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  DUPTABLE R4 K3 [{"DialogMedia", "DialogContent"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["HeroMedia"]
  DUPTABLE R7 K9 [{"media", "hasBleed", "height", "aspectRatio"}]
  GETTABLEKS R9 R0 K10 ["controls"]
  GETTABLEKS R8 R9 K5 ["media"]
  SETTABLEKS R8 R7 K5 ["media"]
  GETTABLEKS R9 R0 K10 ["controls"]
  GETTABLEKS R8 R9 K11 ["hasHeroMediaBleed"]
  SETTABLEKS R8 R7 K6 ["hasBleed"]
  GETIMPORT R8 K14 [UDim.new]
  GETTABLEKS R11 R0 K10 ["controls"]
  GETTABLEKS R10 R11 K16 ["heroMediaHeightScale"]
  ORK R9 R10 K15 [0]
  GETTABLEKS R12 R0 K10 ["controls"]
  GETTABLEKS R11 R12 K17 ["heroMediaHeightOffset"]
  ORK R10 R11 K15 [0]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["height"]
  GETTABLEKS R10 R0 K10 ["controls"]
  GETTABLEKS R9 R10 K18 ["heroMediaAspectRatio"]
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+6]
  GETTABLEKS R9 R0 K10 ["controls"]
  GETTABLEKS R8 R9 K18 ["heroMediaAspectRatio"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K8 ["aspectRatio"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["DialogMedia"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K19 ["Content"]
  DUPTABLE R7 K21 [{"LayoutOrder"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K20 ["LayoutOrder"]
  DUPTABLE R8 K23 [{"DialogText"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K24 ["Text"]
  DUPTABLE R11 K25 [{"Text"}]
  GETTABLEKS R13 R0 K10 ["controls"]
  GETTABLEKS R12 R13 K26 ["content"]
  SETTABLEKS R12 R11 K24 ["Text"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["DialogText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["DialogContent"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_5:
  GETIMPORT R1 K2 [UDim2.new]
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K5 ["mediaSizeScaleX"]
  ORK R2 R3 K3 [0]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K6 ["mediaSizeOffsetX"]
  ORK R3 R4 K3 [0]
  GETTABLEKS R6 R0 K4 ["controls"]
  GETTABLEKS R5 R6 K7 ["mediaSizeScaleY"]
  ORK R4 R5 K3 [0]
  GETTABLEKS R7 R0 K4 ["controls"]
  GETTABLEKS R6 R7 K8 ["mediaSizeOffsetY"]
  ORK R5 R6 K3 [0]
  CALL R1 4 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["createElement"]
  GETUPVAL R3 1
  MOVE R4 R0
  DUPTABLE R5 K12 [{"DialogMedia", "DialogContent"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K13 ["Media"]
  DUPTABLE R8 K17 [{"media", "Size", "aspectRatio"}]
  GETTABLEKS R10 R0 K4 ["controls"]
  GETTABLEKS R9 R10 K14 ["media"]
  SETTABLEKS R9 R8 K14 ["media"]
  SETTABLEKS R1 R8 K15 ["Size"]
  GETTABLEKS R11 R0 K4 ["controls"]
  GETTABLEKS R10 R11 K18 ["mediaAspectRatio"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+6]
  GETTABLEKS R10 R0 K4 ["controls"]
  GETTABLEKS R9 R10 K18 ["mediaAspectRatio"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K16 ["aspectRatio"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["DialogMedia"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K19 ["Content"]
  DUPTABLE R8 K21 [{"LayoutOrder"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  DUPTABLE R9 K23 [{"DialogText"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K24 ["Text"]
  DUPTABLE R12 K25 [{"Text"}]
  GETTABLEKS R14 R0 K4 ["controls"]
  GETTABLEKS R13 R14 K26 ["content"]
  SETTABLEKS R13 R12 K24 ["Text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K22 ["DialogText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["DialogContent"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  DUPTABLE R4 K2 [{"DialogContent"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["Content"]
  DUPTABLE R7 K5 [{"LayoutOrder"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  DUPTABLE R8 K7 [{"DialogText"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K8 ["Text"]
  DUPTABLE R11 K9 [{"Text"}]
  GETTABLEKS R13 R0 K10 ["controls"]
  GETTABLEKS R12 R13 K11 ["content"]
  SETTABLEKS R12 R11 K8 ["Text"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K6 ["DialogText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K1 ["DialogContent"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Item"]
  DUPTABLE R3 K5 [{"value", "label", "size"}]
  SETTABLEKS R0 R3 K2 ["value"]
  LOADK R5 K6 ["Dialog Option "]
  MOVE R6 R0
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K3 ["label"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["Medium"]
  SETTABLEKS R4 R3 K4 ["size"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  RETURN R0 0

PROTO_9:
  GETIMPORT R1 K2 [UDim2.new]
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K5 ["mediaSizeScaleX"]
  ORK R2 R3 K3 [0]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K6 ["mediaSizeOffsetX"]
  ORK R3 R4 K3 [0]
  GETTABLEKS R6 R0 K4 ["controls"]
  GETTABLEKS R5 R6 K7 ["mediaSizeScaleY"]
  ORK R4 R5 K3 [0]
  GETTABLEKS R7 R0 K4 ["controls"]
  GETTABLEKS R6 R7 K8 ["mediaSizeOffsetY"]
  ORK R5 R6 K3 [0]
  CALL R1 4 1
  NEWTABLE R2 0 5
  LOADK R3 K9 ["A"]
  LOADK R4 K10 ["B"]
  LOADK R5 K11 ["C"]
  LOADK R6 K12 ["D"]
  LOADK R7 K13 ["E"]
  SETLIST R2 R3 5 [1]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K14 ["map"]
  MOVE R4 R2
  DUPCLOSURE R5 K15 [PROTO_7]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R3 2 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K18 [{"tag"}]
  LOADK R7 K19 ["auto-y size-full-0 col gap-xxlarge"]
  SETTABLEKS R7 R6 K17 ["tag"]
  DUPTABLE R7 K23 [{"Text", "RadioGroup", "DialogText"}]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K25 [{"tag", "Text", "LayoutOrder"}]
  LOADK R11 K26 ["text-body-large text-wrap text-align-x-left text-align-y-top auto-y size-full-0"]
  SETTABLEKS R11 R10 K17 ["tag"]
  LOADK R11 K27 ["Some text"]
  SETTABLEKS R11 R10 K20 ["Text"]
  LOADN R11 2
  SETTABLEKS R11 R10 K24 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K20 ["Text"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K28 ["Root"]
  DUPTABLE R10 K30 [{"onValueChanged", "LayoutOrder"}]
  DUPCLOSURE R11 K31 [PROTO_8]
  SETTABLEKS R11 R10 K29 ["onValueChanged"]
  LOADN R11 3
  SETTABLEKS R11 R10 K24 ["LayoutOrder"]
  MOVE R11 R3
  CALL R8 3 1
  SETTABLEKS R8 R7 K21 ["RadioGroup"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K16 ["createElement"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Text"]
  DUPTABLE R10 K32 [{"Text", "LayoutOrder"}]
  GETTABLEKS R12 R0 K4 ["controls"]
  GETTABLEKS R11 R12 K33 ["content"]
  SETTABLEKS R11 R10 K20 ["Text"]
  LOADN R11 4
  SETTABLEKS R11 R10 K24 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K22 ["DialogText"]
  CALL R4 3 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K16 ["createElement"]
  GETUPVAL R6 7
  MOVE R7 R0
  DUPTABLE R8 K36 [{"DialogMedia", "DialogContent"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K37 ["Media"]
  DUPTABLE R11 K41 [{"media", "Size", "aspectRatio"}]
  GETTABLEKS R13 R0 K4 ["controls"]
  GETTABLEKS R12 R13 K38 ["media"]
  SETTABLEKS R12 R11 K38 ["media"]
  SETTABLEKS R1 R11 K39 ["Size"]
  GETTABLEKS R14 R0 K4 ["controls"]
  GETTABLEKS R13 R14 K42 ["mediaAspectRatio"]
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+6]
  GETTABLEKS R13 R0 K4 ["controls"]
  GETTABLEKS R12 R13 K42 ["mediaAspectRatio"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K40 ["aspectRatio"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["DialogMedia"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K43 ["Content"]
  DUPTABLE R11 K44 [{"LayoutOrder"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K24 ["LayoutOrder"]
  DUPTABLE R12 K46 [{"CustomContent"}]
  SETTABLEKS R4 R12 K45 ["CustomContent"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K35 ["DialogContent"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_10:
  GETIMPORT R1 K2 [UDim2.new]
  GETTABLEKS R4 R0 K4 ["controls"]
  GETTABLEKS R3 R4 K5 ["mediaSizeScaleX"]
  ORK R2 R3 K3 [0]
  GETTABLEKS R5 R0 K4 ["controls"]
  GETTABLEKS R4 R5 K6 ["mediaSizeOffsetX"]
  ORK R3 R4 K3 [0]
  GETTABLEKS R6 R0 K4 ["controls"]
  GETTABLEKS R5 R6 K7 ["mediaSizeScaleY"]
  ORK R4 R5 K3 [0]
  GETTABLEKS R7 R0 K4 ["controls"]
  GETTABLEKS R6 R7 K8 ["mediaSizeOffsetY"]
  ORK R5 R6 K3 [0]
  CALL R1 4 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K9 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K11 [{"tag"}]
  LOADK R5 K12 ["auto-y size-full-0 col gap-xxlarge"]
  SETTABLEKS R5 R4 K10 ["tag"]
  DUPTABLE R5 K15 [{"DialogMedia", "DialogText"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K16 ["Media"]
  DUPTABLE R8 K21 [{"media", "Size", "aspectRatio", "LayoutOrder"}]
  GETTABLEKS R10 R0 K4 ["controls"]
  GETTABLEKS R9 R10 K17 ["media"]
  SETTABLEKS R9 R8 K17 ["media"]
  SETTABLEKS R1 R8 K18 ["Size"]
  GETTABLEKS R11 R0 K4 ["controls"]
  GETTABLEKS R10 R11 K22 ["mediaAspectRatio"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+6]
  GETTABLEKS R10 R0 K4 ["controls"]
  GETTABLEKS R9 R10 K22 ["mediaAspectRatio"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K19 ["aspectRatio"]
  LOADN R9 1
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K13 ["DialogMedia"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K23 ["Text"]
  DUPTABLE R8 K24 [{"Text", "LayoutOrder"}]
  GETTABLEKS R10 R0 K4 ["controls"]
  GETTABLEKS R9 R10 K25 ["content"]
  SETTABLEKS R9 R8 K23 ["Text"]
  LOADN R9 4
  SETTABLEKS R9 R8 K20 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K14 ["DialogText"]
  CALL R2 3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["createElement"]
  GETUPVAL R4 3
  MOVE R5 R0
  DUPTABLE R6 K27 [{"DialogContent"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K28 ["Content"]
  DUPTABLE R9 K29 [{"LayoutOrder"}]
  LOADN R10 2
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  DUPTABLE R10 K31 [{"CustomContent"}]
  SETTABLEKS R2 R10 K30 ["CustomContent"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K26 ["DialogContent"]
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
  GETTABLEKS R5 R6 K10 ["Dialog"]
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
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K13 ["RadioGroup"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Enums"]
  GETTABLEKS R9 R10 K15 ["InputSize"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K14 ["Enums"]
  GETTABLEKS R10 R11 K16 ["ButtonVariant"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K14 ["Enums"]
  GETTABLEKS R11 R12 K17 ["DialogSize"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R14 R0 K18 ["Providers"]
  GETTABLEKS R13 R14 K19 ["Overlay"]
  GETTABLEKS R12 R13 K20 ["OverlayProvider"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K18 ["Providers"]
  GETTABLEKS R14 R15 K21 ["Style"]
  GETTABLEKS R13 R14 K22 ["useTokens"]
  CALL R12 1 1
  DUPCLOSURE R13 K23 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R9
  DUPTABLE R14 K27 [{"summary", "stories", "controls"}]
  LOADK R15 K10 ["Dialog"]
  SETTABLEKS R15 R14 K24 ["summary"]
  NEWTABLE R15 0 5
  DUPTABLE R16 K30 [{"name", "story"}]
  LOADK R17 K31 ["Hero Image"]
  SETTABLEKS R17 R16 K28 ["name"]
  DUPCLOSURE R17 K32 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R4
  SETTABLEKS R17 R16 K29 ["story"]
  DUPTABLE R17 K30 [{"name", "story"}]
  LOADK R18 K33 ["Default Image"]
  SETTABLEKS R18 R17 K28 ["name"]
  DUPCLOSURE R18 K34 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R4
  SETTABLEKS R18 R17 K29 ["story"]
  DUPTABLE R18 K30 [{"name", "story"}]
  LOADK R19 K35 ["No Image"]
  SETTABLEKS R19 R18 K28 ["name"]
  DUPCLOSURE R19 K36 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R4
  SETTABLEKS R19 R18 K29 ["story"]
  DUPTABLE R19 K30 [{"name", "story"}]
  LOADK R20 K37 ["Custom Content"]
  SETTABLEKS R20 R19 K28 ["name"]
  DUPCLOSURE R20 K38 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R20 R19 K29 ["story"]
  DUPTABLE R20 K30 [{"name", "story"}]
  LOADK R21 K39 ["Embedded Media"]
  SETTABLEKS R21 R20 K28 ["name"]
  DUPCLOSURE R21 K40 [PROTO_10]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K29 ["story"]
  SETLIST R15 R16 5 [1]
  SETTABLEKS R15 R14 K25 ["stories"]
  DUPTABLE R15 K59 [{"title", "content", "closeIcon", "isDismissable", "actionsLabel", "hasActions", "media", "mediaSizeScaleX", "mediaSizeScaleY", "mediaSizeOffsetX", "mediaSizeOffsetY", "mediaAspectRatio", "hasHeroMediaBleed", "heroMediaAspectRatio", "heroMediaHeightScale", "heroMediaHeightOffset", "size", "mockScreenYOffset"}]
  LOADK R16 K60 ["Welcome Dialog"]
  SETTABLEKS R16 R15 K41 ["title"]
  LOADK R16 K61 ["This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen. Do you hear that? That's the sound of the universe vibrating. It's beautiful, but you really have to listen. This may be the most important decision of your life. You need to decide: are you willing to listen?"]
  SETTABLEKS R16 R15 K42 ["content"]
  LOADK R16 K62 ["icons/navigation/close"]
  SETTABLEKS R16 R15 K43 ["closeIcon"]
  LOADB R16 1
  SETTABLEKS R16 R15 K44 ["isDismissable"]
  LOADK R16 K63 ["Actions Label"]
  SETTABLEKS R16 R15 K45 ["actionsLabel"]
  LOADB R16 1
  SETTABLEKS R16 R15 K46 ["hasActions"]
  LOADK R16 K64 ["component_assets/avatarBG_dark"]
  SETTABLEKS R16 R15 K47 ["media"]
  LOADN R16 1
  SETTABLEKS R16 R15 K48 ["mediaSizeScaleX"]
  LOADN R16 0
  SETTABLEKS R16 R15 K49 ["mediaSizeScaleY"]
  LOADN R16 0
  SETTABLEKS R16 R15 K50 ["mediaSizeOffsetX"]
  LOADN R16 100
  SETTABLEKS R16 R15 K51 ["mediaSizeOffsetY"]
  LOADN R16 0
  SETTABLEKS R16 R15 K52 ["mediaAspectRatio"]
  LOADB R16 1
  SETTABLEKS R16 R15 K53 ["hasHeroMediaBleed"]
  LOADK R16 K65 [2.5]
  SETTABLEKS R16 R15 K54 ["heroMediaAspectRatio"]
  LOADN R16 1
  SETTABLEKS R16 R15 K55 ["heroMediaHeightScale"]
  LOADN R16 0
  SETTABLEKS R16 R15 K56 ["heroMediaHeightOffset"]
  GETTABLEKS R16 R3 K66 ["values"]
  MOVE R17 R10
  CALL R16 1 1
  SETTABLEKS R16 R15 K57 ["size"]
  LOADN R16 32
  SETTABLEKS R16 R15 K58 ["mockScreenYOffset"]
  SETTABLEKS R15 R14 K26 ["controls"]
  RETURN R14 1
