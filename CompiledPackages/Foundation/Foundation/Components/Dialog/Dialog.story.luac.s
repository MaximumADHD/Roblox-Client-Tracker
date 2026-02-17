PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Join clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Share clicked!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["children"]
  JUMPIF R1 [+10]
  DUPTABLE R1 K4 [{"DialogMedia", "DialogContent", "DialogTitle"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["DialogMedia"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["DialogContent"]
  LOADNIL R2
  SETTABLEKS R2 R1 K3 ["DialogTitle"]
  GETTABLEKS R2 R0 K5 ["controls"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R5 1
  CALL R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["useState"]
  LOADB R7 1
  CALL R6 1 2
  NEWCLOSURE R8 P0
  CAPTURE VAL R7
  CAPTURE VAL R6
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K12 [{"ref", "backgroundStyle", "tag", "Size"}]
  SETTABLEKS R4 R11 K8 ["ref"]
  DUPTABLE R12 K15 [{"Color3", "Transparency"}]
  GETTABLEKS R16 R5 K16 ["Color"]
  GETTABLEKS R15 R16 K17 ["Shift"]
  GETTABLEKS R14 R15 K18 ["Shift_200"]
  GETTABLEKS R13 R14 K13 ["Color3"]
  SETTABLEKS R13 R12 K13 ["Color3"]
  GETTABLEKS R16 R5 K16 ["Color"]
  GETTABLEKS R15 R16 K17 ["Shift"]
  GETTABLEKS R14 R15 K18 ["Shift_200"]
  GETTABLEKS R13 R14 K14 ["Transparency"]
  SETTABLEKS R13 R12 K14 ["Transparency"]
  SETTABLEKS R12 R11 K9 ["backgroundStyle"]
  LOADK R12 K19 ["clip"]
  SETTABLEKS R12 R11 K10 ["tag"]
  GETIMPORT R12 K22 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 0
  GETTABLEKS R17 R2 K24 ["mockScreenYOffset"]
  ORK R16 R17 K23 [0]
  CALL R12 4 1
  SETTABLEKS R12 R11 K11 ["Size"]
  DUPTABLE R12 K26 [{"OverlayProvider"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K7 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K28 [{"gui"}]
  SETTABLEKS R3 R15 K27 ["gui"]
  DUPTABLE R16 K31 [{"ToggleButton", "DialogRoot"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K36 [{"text", "onActivated", "variant", "Position"}]
  JUMPIFNOT R6 [+2]
  LOADK R20 K37 ["Close Dialog"]
  JUMP [+1]
  LOADK R20 K38 ["Open Dialog"]
  SETTABLEKS R20 R19 K32 ["text"]
  SETTABLEKS R8 R19 K33 ["onActivated"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K39 ["Emphasis"]
  SETTABLEKS R20 R19 K34 ["variant"]
  GETIMPORT R20 K41 [UDim2.fromOffset]
  LOADN R21 20
  LOADN R22 20
  CALL R20 2 1
  SETTABLEKS R20 R19 K35 ["Position"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K29 ["ToggleButton"]
  JUMPIFNOT R6 [+98]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["createElement"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K42 ["Root"]
  DUPTABLE R19 K47 [{"size", "onClose", "hasBackdrop", "disablePortal"}]
  GETTABLEKS R20 R2 K43 ["size"]
  SETTABLEKS R20 R19 K43 ["size"]
  SETTABLEKS R8 R19 K44 ["onClose"]
  GETTABLEKS R20 R2 K45 ["hasBackdrop"]
  SETTABLEKS R20 R19 K45 ["hasBackdrop"]
  GETTABLEKS R20 R2 K46 ["disablePortal"]
  SETTABLEKS R20 R19 K46 ["disablePortal"]
  DUPTABLE R20 K49 [{"DialogMedia", "DialogTitle", "DialogContent", "DialogActions"}]
  GETTABLEKS R21 R1 K1 ["DialogMedia"]
  SETTABLEKS R21 R20 K1 ["DialogMedia"]
  GETTABLEKS R21 R1 K3 ["DialogTitle"]
  SETTABLEKS R21 R20 K3 ["DialogTitle"]
  GETTABLEKS R21 R1 K2 ["DialogContent"]
  SETTABLEKS R21 R20 K2 ["DialogContent"]
  GETTABLEKS R22 R2 K50 ["hasActions"]
  JUMPIFNOT R22 [+56]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K7 ["createElement"]
  GETUPVAL R23 6
  GETTABLEKS R22 R23 K51 ["Actions"]
  DUPTABLE R23 K56 [{"LayoutOrder", "orientation", "actions", "label"}]
  LOADN R24 3
  SETTABLEKS R24 R23 K52 ["LayoutOrder"]
  GETTABLEKS R24 R2 K57 ["actionsOrientation"]
  SETTABLEKS R24 R23 K53 ["orientation"]
  NEWTABLE R24 0 2
  DUPTABLE R25 K60 [{"text", "variant", "icon", "onActivated", "inputDelay"}]
  LOADK R26 K61 ["Join"]
  SETTABLEKS R26 R25 K32 ["text"]
  GETUPVAL R27 5
  GETTABLEKS R26 R27 K39 ["Emphasis"]
  SETTABLEKS R26 R25 K34 ["variant"]
  LOADK R26 K62 ["icons/common/robux"]
  SETTABLEKS R26 R25 K58 ["icon"]
  DUPCLOSURE R26 K63 [PROTO_1]
  SETTABLEKS R26 R25 K33 ["onActivated"]
  LOADN R26 3
  SETTABLEKS R26 R25 K59 ["inputDelay"]
  DUPTABLE R26 K64 [{"text", "variant", "onActivated"}]
  LOADK R27 K65 ["Share"]
  SETTABLEKS R27 R26 K32 ["text"]
  GETUPVAL R28 5
  GETTABLEKS R27 R28 K66 ["Standard"]
  SETTABLEKS R27 R26 K34 ["variant"]
  DUPCLOSURE R27 K67 [PROTO_2]
  SETTABLEKS R27 R26 K33 ["onActivated"]
  SETLIST R24 R25 2 [1]
  SETTABLEKS R24 R23 K54 ["actions"]
  GETTABLEKS R24 R2 K68 ["actionsLabel"]
  SETTABLEKS R24 R23 K55 ["label"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K48 ["DialogActions"]
  CALL R17 3 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R16 K30 ["DialogRoot"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K25 ["OverlayProvider"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R5 K3 ["auto-y size-full-0 row align-x-center %*"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K5 ["padding-top-large"]
  JUMP [+1]
  LOADK R7 K6 [""]
  NAMECALL R5 R5 K7 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K9 [{"Image"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K12 [{"tag", "aspectRatio", "Image", "Size"}]
  NEWTABLE R8 1 0
  GETTABLEKS R10 R0 K13 ["media"]
  JUMPIFEQKS R10 K14 ["pictograms/avatar_setup"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  SETTABLEKS R9 R8 K15 ["content-emphasis"]
  SETTABLEKS R8 R7 K1 ["tag"]
  GETTABLEKS R8 R0 K10 ["aspectRatio"]
  SETTABLEKS R8 R7 K10 ["aspectRatio"]
  GETTABLEKS R8 R0 K13 ["media"]
  SETTABLEKS R8 R7 K8 ["Image"]
  GETTABLEKS R8 R0 K11 ["Size"]
  SETTABLEKS R8 R7 K11 ["Size"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K8 ["Image"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K4 [{"DialogTitle", "DialogMedia", "DialogContent"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["Title"]
  DUPTABLE R8 K7 [{"text"}]
  GETTABLEKS R10 R0 K8 ["controls"]
  GETTABLEKS R9 R10 K9 ["title"]
  SETTABLEKS R9 R8 K6 ["text"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["DialogTitle"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K10 ["HeroMedia"]
  DUPTABLE R8 K16 [{"media", "mediaStyle", "backgroundStyle", "height", "aspectRatio"}]
  GETTABLEKS R10 R0 K8 ["controls"]
  GETTABLEKS R9 R10 K11 ["media"]
  SETTABLEKS R9 R8 K11 ["media"]
  GETTABLEKS R11 R0 K8 ["controls"]
  GETTABLEKS R10 R11 K11 ["media"]
  JUMPIFNOTEQKS R10 K17 ["pictograms/avatar_setup"] [+8]
  GETTABLEKS R11 R1 K18 ["Color"]
  GETTABLEKS R10 R11 K19 ["Content"]
  GETTABLEKS R9 R10 K20 ["Emphasis"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K12 ["mediaStyle"]
  GETTABLEKS R11 R0 K8 ["controls"]
  GETTABLEKS R10 R11 K21 ["heroMediaBackgroundStyle"]
  JUMPIFNOT R10 [+7]
  GETTABLEKS R11 R1 K18 ["Color"]
  GETTABLEKS R10 R11 K22 ["ActionSoftEmphasis"]
  GETTABLEKS R9 R10 K23 ["Background"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K13 ["backgroundStyle"]
  GETIMPORT R9 K26 [UDim.new]
  GETTABLEKS R12 R0 K8 ["controls"]
  GETTABLEKS R11 R12 K28 ["heroMediaHeightScale"]
  ORK R10 R11 K27 [0]
  GETTABLEKS R13 R0 K8 ["controls"]
  GETTABLEKS R12 R13 K29 ["heroMediaHeightOffset"]
  ORK R11 R12 K27 [0]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["height"]
  GETTABLEKS R11 R0 K8 ["controls"]
  GETTABLEKS R10 R11 K30 ["heroMediaAspectRatio"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+6]
  GETTABLEKS R10 R0 K8 ["controls"]
  GETTABLEKS R9 R10 K30 ["heroMediaAspectRatio"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K15 ["aspectRatio"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["DialogMedia"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K19 ["Content"]
  DUPTABLE R8 K32 [{"LayoutOrder"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K31 ["LayoutOrder"]
  DUPTABLE R9 K34 [{"DialogText"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K35 ["Text"]
  DUPTABLE R12 K36 [{"Text"}]
  GETTABLEKS R14 R0 K8 ["controls"]
  GETTABLEKS R13 R14 K37 ["content"]
  SETTABLEKS R13 R12 K35 ["Text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K33 ["DialogText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K3 ["DialogContent"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  DUPTABLE R4 K3 [{"DialogTitle", "DialogContent"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["Title"]
  DUPTABLE R7 K6 [{"text"}]
  GETTABLEKS R9 R0 K7 ["controls"]
  GETTABLEKS R8 R9 K8 ["title"]
  SETTABLEKS R8 R7 K5 ["text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K1 ["DialogTitle"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["Content"]
  DUPTABLE R7 K11 [{"LayoutOrder"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  DUPTABLE R8 K13 [{"DialogText"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K14 ["Text"]
  DUPTABLE R11 K15 [{"Text"}]
  GETTABLEKS R13 R0 K7 ["controls"]
  GETTABLEKS R12 R13 K16 ["content"]
  SETTABLEKS R12 R11 K14 ["Text"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["DialogText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["DialogContent"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_7:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K3 [{"DialogMedia", "DialogContent"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K4 ["HeroMedia"]
  DUPTABLE R8 K10 [{"media", "mediaStyle", "backgroundStyle", "height", "aspectRatio"}]
  GETTABLEKS R10 R0 K11 ["controls"]
  GETTABLEKS R9 R10 K5 ["media"]
  SETTABLEKS R9 R8 K5 ["media"]
  GETTABLEKS R11 R0 K11 ["controls"]
  GETTABLEKS R10 R11 K5 ["media"]
  JUMPIFNOTEQKS R10 K12 ["pictograms/avatar_setup"] [+8]
  GETTABLEKS R11 R1 K13 ["Color"]
  GETTABLEKS R10 R11 K14 ["Content"]
  GETTABLEKS R9 R10 K15 ["Emphasis"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K6 ["mediaStyle"]
  GETTABLEKS R11 R0 K11 ["controls"]
  GETTABLEKS R10 R11 K16 ["heroMediaBackgroundStyle"]
  JUMPIFNOT R10 [+7]
  GETTABLEKS R11 R1 K13 ["Color"]
  GETTABLEKS R10 R11 K17 ["ActionSoftEmphasis"]
  GETTABLEKS R9 R10 K18 ["Background"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K7 ["backgroundStyle"]
  GETIMPORT R9 K21 [UDim.new]
  GETTABLEKS R12 R0 K11 ["controls"]
  GETTABLEKS R11 R12 K23 ["heroMediaHeightScale"]
  ORK R10 R11 K22 [0]
  GETTABLEKS R13 R0 K11 ["controls"]
  GETTABLEKS R12 R13 K24 ["heroMediaHeightOffset"]
  ORK R11 R12 K22 [0]
  CALL R9 2 1
  SETTABLEKS R9 R8 K8 ["height"]
  GETTABLEKS R11 R0 K11 ["controls"]
  GETTABLEKS R10 R11 K25 ["heroMediaAspectRatio"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+6]
  GETTABLEKS R10 R0 K11 ["controls"]
  GETTABLEKS R9 R10 K25 ["heroMediaAspectRatio"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K9 ["aspectRatio"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["DialogMedia"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K14 ["Content"]
  DUPTABLE R8 K27 [{"LayoutOrder"}]
  LOADN R9 2
  SETTABLEKS R9 R8 K26 ["LayoutOrder"]
  DUPTABLE R9 K29 [{"DialogText"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K30 ["Text"]
  DUPTABLE R12 K31 [{"Text"}]
  GETTABLEKS R14 R0 K11 ["controls"]
  GETTABLEKS R13 R14 K32 ["content"]
  SETTABLEKS R13 R12 K30 ["Text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K28 ["DialogText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["DialogContent"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  MOVE R4 R0
  DUPTABLE R5 K2 [{"DialogMedia"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["HeroMedia"]
  DUPTABLE R8 K9 [{"media", "mediaStyle", "backgroundStyle", "height", "aspectRatio"}]
  GETTABLEKS R10 R0 K10 ["controls"]
  GETTABLEKS R9 R10 K4 ["media"]
  SETTABLEKS R9 R8 K4 ["media"]
  GETTABLEKS R11 R0 K10 ["controls"]
  GETTABLEKS R10 R11 K4 ["media"]
  JUMPIFNOTEQKS R10 K11 ["pictograms/avatar_setup"] [+8]
  GETTABLEKS R11 R1 K12 ["Color"]
  GETTABLEKS R10 R11 K13 ["Content"]
  GETTABLEKS R9 R10 K14 ["Emphasis"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K5 ["mediaStyle"]
  GETTABLEKS R11 R0 K10 ["controls"]
  GETTABLEKS R10 R11 K15 ["heroMediaBackgroundStyle"]
  JUMPIFNOT R10 [+7]
  GETTABLEKS R11 R1 K12 ["Color"]
  GETTABLEKS R10 R11 K16 ["ActionSoftEmphasis"]
  GETTABLEKS R9 R10 K17 ["Background"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K6 ["backgroundStyle"]
  GETIMPORT R9 K20 [UDim.new]
  GETTABLEKS R12 R0 K10 ["controls"]
  GETTABLEKS R11 R12 K22 ["heroMediaHeightScale"]
  ORK R10 R11 K21 [0]
  GETTABLEKS R13 R0 K10 ["controls"]
  GETTABLEKS R12 R13 K23 ["heroMediaHeightOffset"]
  ORK R11 R12 K21 [0]
  CALL R9 2 1
  SETTABLEKS R9 R8 K7 ["height"]
  GETTABLEKS R11 R0 K10 ["controls"]
  GETTABLEKS R10 R11 K24 ["heroMediaAspectRatio"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+6]
  GETTABLEKS R10 R0 K10 ["controls"]
  GETTABLEKS R9 R10 K24 ["heroMediaAspectRatio"]
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K8 ["aspectRatio"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["DialogMedia"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_9:
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

PROTO_10:
  RETURN R0 0

PROTO_11:
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
  DUPCLOSURE R5 K15 [PROTO_9]
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
  DUPCLOSURE R11 K31 [PROTO_10]
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
  DUPTABLE R8 K37 [{"DialogTitle", "DialogMedia", "DialogContent"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K38 ["Title"]
  DUPTABLE R11 K40 [{"text"}]
  GETTABLEKS R13 R0 K4 ["controls"]
  GETTABLEKS R12 R13 K41 ["title"]
  SETTABLEKS R12 R11 K39 ["text"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K34 ["DialogTitle"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETGLOBAL R10 K42 ["CustomMedia"]
  DUPTABLE R11 K46 [{"media", "Size", "aspectRatio"}]
  GETTABLEKS R13 R0 K4 ["controls"]
  GETTABLEKS R12 R13 K43 ["media"]
  SETTABLEKS R12 R11 K43 ["media"]
  SETTABLEKS R1 R11 K44 ["Size"]
  GETTABLEKS R14 R0 K4 ["controls"]
  GETTABLEKS R13 R14 K47 ["mediaAspectRatio"]
  LOADN R14 0
  JUMPIFNOTLT R14 R13 [+6]
  GETTABLEKS R13 R0 K4 ["controls"]
  GETTABLEKS R12 R13 K47 ["mediaAspectRatio"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K45 ["aspectRatio"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K35 ["DialogMedia"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["createElement"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K48 ["Content"]
  DUPTABLE R11 K49 [{"LayoutOrder"}]
  LOADN R12 2
  SETTABLEKS R12 R11 K24 ["LayoutOrder"]
  DUPTABLE R12 K51 [{"CustomContent"}]
  SETTABLEKS R4 R12 K50 ["CustomContent"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K36 ["DialogContent"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_12:
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
  LOADK R5 K12 ["auto-y size-full-0 col gap-xlarge"]
  SETTABLEKS R5 R4 K10 ["tag"]
  DUPTABLE R5 K15 [{"DialogMedia", "DialogText"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["createElement"]
  GETGLOBAL R7 K16 ["CustomMedia"]
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
  DUPTABLE R6 K28 [{"DialogTitle", "DialogContent"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K29 ["Title"]
  DUPTABLE R9 K31 [{"text"}]
  GETTABLEKS R11 R0 K4 ["controls"]
  GETTABLEKS R10 R11 K32 ["title"]
  SETTABLEKS R10 R9 K30 ["text"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K26 ["DialogTitle"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K33 ["Content"]
  DUPTABLE R9 K34 [{"LayoutOrder"}]
  LOADN R10 2
  SETTABLEKS R10 R9 K20 ["LayoutOrder"]
  DUPTABLE R10 K36 [{"CustomContent"}]
  SETTABLEKS R2 R10 K35 ["CustomContent"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K27 ["DialogContent"]
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
  GETTABLEKS R7 R8 K12 ["Button"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K13 ["Image"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K9 ["Components"]
  GETTABLEKS R9 R10 K14 ["Text"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K9 ["Components"]
  GETTABLEKS R10 R11 K15 ["RadioGroup"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K16 ["Enums"]
  GETTABLEKS R11 R12 K17 ["InputSize"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K16 ["Enums"]
  GETTABLEKS R12 R13 K18 ["ButtonVariant"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R14 R0 K16 ["Enums"]
  GETTABLEKS R13 R14 K19 ["DialogSize"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R15 R0 K16 ["Enums"]
  GETTABLEKS R14 R15 K20 ["Orientation"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K21 ["Providers"]
  GETTABLEKS R16 R17 K22 ["Overlay"]
  GETTABLEKS R15 R16 K23 ["OverlayProvider"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K21 ["Providers"]
  GETTABLEKS R17 R18 K24 ["Style"]
  GETTABLEKS R16 R17 K25 ["useTokens"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R18 R0 K26 ["Utility"]
  GETTABLEKS R17 R18 K27 ["Flags"]
  CALL R16 1 1
  DUPCLOSURE R17 K28 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R5
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R4
  DUPCLOSURE R18 K29 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R16
  CAPTURE VAL R7
  SETGLOBAL R18 K30 ["CustomMedia"]
  DUPTABLE R18 K34 [{"summary", "stories", "controls"}]
  LOADK R19 K10 ["Dialog"]
  SETTABLEKS R19 R18 K31 ["summary"]
  NEWTABLE R19 0 6
  DUPTABLE R20 K37 [{"name", "story"}]
  LOADK R21 K38 ["Hero Image & Title & Content"]
  SETTABLEKS R21 R20 K35 ["name"]
  DUPCLOSURE R21 K39 [PROTO_5]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R4
  SETTABLEKS R21 R20 K36 ["story"]
  DUPTABLE R21 K37 [{"name", "story"}]
  LOADK R22 K40 ["Title & Content"]
  SETTABLEKS R22 R21 K35 ["name"]
  DUPCLOSURE R22 K41 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R4
  SETTABLEKS R22 R21 K36 ["story"]
  DUPTABLE R22 K37 [{"name", "story"}]
  LOADK R23 K42 ["Hero Image & Content"]
  SETTABLEKS R23 R22 K35 ["name"]
  DUPCLOSURE R23 K43 [PROTO_7]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R4
  SETTABLEKS R23 R22 K36 ["story"]
  DUPTABLE R23 K37 [{"name", "story"}]
  LOADK R24 K44 ["Hero Image only"]
  SETTABLEKS R24 R23 K35 ["name"]
  DUPCLOSURE R24 K45 [PROTO_8]
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R4
  SETTABLEKS R24 R23 K36 ["story"]
  DUPTABLE R24 K37 [{"name", "story"}]
  LOADK R25 K46 ["Custom Content"]
  SETTABLEKS R25 R24 K35 ["name"]
  DUPCLOSURE R25 K47 [PROTO_11]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R17
  SETTABLEKS R25 R24 K36 ["story"]
  DUPTABLE R25 K37 [{"name", "story"}]
  LOADK R26 K48 ["Embedded Media"]
  SETTABLEKS R26 R25 K35 ["name"]
  DUPCLOSURE R26 K49 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R17
  SETTABLEKS R26 R25 K36 ["story"]
  SETLIST R19 R20 6 [1]
  SETTABLEKS R19 R18 K32 ["stories"]
  DUPTABLE R19 K69 [{"title", "content", "actionsLabel", "actionsOrientation", "hasActions", "disablePortal", "hasBackdrop", "media", "mediaSizeScaleX", "mediaSizeScaleY", "mediaSizeOffsetX", "mediaSizeOffsetY", "mediaAspectRatio", "heroMediaBackgroundStyle", "heroMediaAspectRatio", "heroMediaHeightScale", "heroMediaHeightOffset", "size", "mockScreenYOffset"}]
  LOADK R20 K70 ["Welcome Dialog"]
  SETTABLEKS R20 R19 K50 ["title"]
  LOADK R20 K71 ["This is a dialog with a very, very long description that spans multiple lines. Now, I'm not joking when I say that it has a lot to say. Really, a lot of things have a lot to say if you're willing to listen."]
  SETTABLEKS R20 R19 K51 ["content"]
  LOADK R20 K72 ["By selecting Primary, I consent to Roblox's collection, use, and storage of my data to enable services and for moderation, safety, and improvement of our services and tools."]
  SETTABLEKS R20 R19 K52 ["actionsLabel"]
  GETTABLEKS R20 R3 K73 ["values"]
  MOVE R21 R13
  CALL R20 1 1
  SETTABLEKS R20 R19 K53 ["actionsOrientation"]
  LOADB R20 1
  SETTABLEKS R20 R19 K54 ["hasActions"]
  LOADB R20 0
  SETTABLEKS R20 R19 K55 ["disablePortal"]
  LOADB R20 1
  SETTABLEKS R20 R19 K56 ["hasBackdrop"]
  NEWTABLE R20 0 2
  LOADK R21 K74 ["pictograms/avatar_setup"]
  LOADK R22 K75 ["component_assets/avatarBG_dark"]
  SETLIST R20 R21 2 [1]
  SETTABLEKS R20 R19 K57 ["media"]
  LOADN R20 1
  SETTABLEKS R20 R19 K58 ["mediaSizeScaleX"]
  LOADN R20 0
  SETTABLEKS R20 R19 K59 ["mediaSizeScaleY"]
  LOADN R20 0
  SETTABLEKS R20 R19 K60 ["mediaSizeOffsetX"]
  LOADN R20 100
  SETTABLEKS R20 R19 K61 ["mediaSizeOffsetY"]
  LOADN R20 0
  SETTABLEKS R20 R19 K62 ["mediaAspectRatio"]
  LOADB R20 0
  SETTABLEKS R20 R19 K63 ["heroMediaBackgroundStyle"]
  LOADK R20 K76 [2.5]
  SETTABLEKS R20 R19 K64 ["heroMediaAspectRatio"]
  LOADN R20 1
  SETTABLEKS R20 R19 K65 ["heroMediaHeightScale"]
  LOADN R20 0
  SETTABLEKS R20 R19 K66 ["heroMediaHeightOffset"]
  GETTABLEKS R20 R3 K73 ["values"]
  MOVE R21 R12
  CALL R20 1 1
  SETTABLEKS R20 R19 K67 ["size"]
  LOADN R20 32
  SETTABLEKS R20 R19 K68 ["mockScreenYOffset"]
  SETTABLEKS R19 R18 K33 ["controls"]
  RETURN R18 1
