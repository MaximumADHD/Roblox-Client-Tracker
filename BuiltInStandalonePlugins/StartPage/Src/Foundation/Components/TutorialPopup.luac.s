PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R4 K4 ["interaction"]
  SETTABLEKS R4 R3 K0 ["telemetryType"]
  LOADK R4 K5 ["tutorial_popup"]
  SETTABLEKS R4 R3 K1 ["telemetrySubtype"]
  LOADK R4 K6 ["close"]
  SETTABLEKS R4 R3 K2 ["action"]
  NAMECALL R0 R0 K7 ["log"]
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K8 ["onClose"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K8 ["onClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R4 K4 ["interaction"]
  SETTABLEKS R4 R3 K0 ["telemetryType"]
  LOADK R4 K5 ["tutorial_popup"]
  SETTABLEKS R4 R3 K1 ["telemetrySubtype"]
  LOADK R4 K6 ["go_home"]
  SETTABLEKS R4 R3 K2 ["action"]
  NAMECALL R0 R0 K7 ["log"]
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K8 ["onClose"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K8 ["onClose"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R4 K4 ["interaction"]
  SETTABLEKS R4 R3 K0 ["telemetryType"]
  LOADK R4 K5 ["tutorial_popup"]
  SETTABLEKS R4 R3 K1 ["telemetrySubtype"]
  LOADK R4 K6 ["start_tour"]
  SETTABLEKS R4 R3 K2 ["action"]
  NAMECALL R0 R0 K7 ["log"]
  CALL R0 3 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K8 ["startTutorial"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["createElement"]
  GETUPVAL R5 4
  DUPTABLE R6 K6 [{"Size", "ClipsDescendants", "tag", "testId"}]
  GETIMPORT R7 K9 [UDim2.new]
  LOADN R8 0
  LOADN R9 128
  LOADN R10 0
  LOADN R11 34
  CALL R7 4 1
  SETTABLEKS R7 R6 K2 ["Size"]
  LOADB R7 1
  SETTABLEKS R7 R6 K3 ["ClipsDescendants"]
  LOADK R7 K10 ["bg-surface-100 radius-medium col"]
  SETTABLEKS R7 R6 K4 ["tag"]
  LOADK R7 K11 ["--start-page-TutorialPopup"]
  SETTABLEKS R7 R6 K5 ["testId"]
  DUPTABLE R7 K14 [{"CityImage", "Content"}]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K1 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K16 [{"Image", "Size", "tag"}]
  LOADK R11 K17 ["rbxasset://textures/StartPage/Tour2Screenshot.png"]
  SETTABLEKS R11 R10 K15 ["Image"]
  GETIMPORT R11 K9 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 1
  CALL R11 4 1
  SETTABLEKS R11 R10 K2 ["Size"]
  LOADK R11 K18 ["align-x-right padding-medium"]
  SETTABLEKS R11 R10 K4 ["tag"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 6
  DUPTABLE R13 K20 [{"onActivated"}]
  NEWCLOSURE R14 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K19 ["onActivated"]
  CALL R11 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K12 ["CityImage"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K1 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K21 [{"tag"}]
  LOADK R11 K22 ["col auto-y size-full-0 padding-xxlarge fill"]
  SETTABLEKS R11 R10 K4 ["tag"]
  DUPTABLE R11 K25 [{"Text", "Actions"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K1 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K27 [{"LayoutOrder", "tag"}]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K26 ["LayoutOrder"]
  LOADK R15 K28 ["auto-y size-full-0 col gap-medium fill"]
  SETTABLEKS R15 R14 K4 ["tag"]
  DUPTABLE R15 K31 [{"Heading", "Body"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K1 ["createElement"]
  GETUPVAL R17 8
  DUPTABLE R18 K32 [{"Text", "LayoutOrder", "tag"}]
  LOADK R21 K33 ["Plugin"]
  LOADK R22 K34 ["TutorialPopup.Heading"]
  NAMECALL R19 R2 K35 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K23 ["Text"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  LOADK R19 K36 ["auto-y size-full-0 text-heading-medium"]
  SETTABLEKS R19 R18 K4 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K29 ["Heading"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K1 ["createElement"]
  GETUPVAL R17 8
  DUPTABLE R18 K39 [{"Text", "TextWrapped", "TextYAlignment", "LayoutOrder", "tag"}]
  LOADK R21 K33 ["Plugin"]
  LOADK R22 K40 ["TutorialPopup.Body"]
  NAMECALL R19 R2 K35 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K23 ["Text"]
  LOADB R19 1
  SETTABLEKS R19 R18 K37 ["TextWrapped"]
  GETIMPORT R19 K43 [Enum.TextYAlignment.Top]
  SETTABLEKS R19 R18 K38 ["TextYAlignment"]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  LOADK R19 K44 ["auto-y size-full-0 text-body-medium"]
  SETTABLEKS R19 R18 K4 ["tag"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["Body"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K23 ["Text"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K1 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K27 [{"LayoutOrder", "tag"}]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K26 ["LayoutOrder"]
  LOADK R15 K45 ["auto-y size-full-0 row gap-medium"]
  SETTABLEKS R15 R14 K4 ["tag"]
  DUPTABLE R15 K48 [{"GoHome", "TakeTour"}]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K1 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K52 [{"LayoutOrder", "variant", "fillBehavior", "text", "onActivated", "testId"}]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K23 ["Text"]
  SETTABLEKS R19 R18 K49 ["variant"]
  GETUPVAL R20 11
  GETTABLEKS R19 R20 K53 ["Fill"]
  SETTABLEKS R19 R18 K50 ["fillBehavior"]
  LOADK R21 K33 ["Plugin"]
  LOADK R22 K54 ["TutorialPopup.BackButton"]
  NAMECALL R19 R2 K35 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K51 ["text"]
  NEWCLOSURE R19 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  SETTABLEKS R19 R18 K19 ["onActivated"]
  LOADK R19 K55 ["--start-page-TutorialPopup-go-home"]
  SETTABLEKS R19 R18 K5 ["testId"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K46 ["GoHome"]
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K1 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K56 [{"LayoutOrder", "variant", "fillBehavior", "text", "onActivated"}]
  MOVE R19 R3
  CALL R19 0 1
  SETTABLEKS R19 R18 K26 ["LayoutOrder"]
  GETUPVAL R20 10
  GETTABLEKS R19 R20 K57 ["Emphasis"]
  SETTABLEKS R19 R18 K49 ["variant"]
  GETUPVAL R20 11
  GETTABLEKS R19 R20 K53 ["Fill"]
  SETTABLEKS R19 R18 K50 ["fillBehavior"]
  LOADK R21 K33 ["Plugin"]
  LOADK R22 K58 ["TutorialPopup.StartButton"]
  NAMECALL R19 R2 K35 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K51 ["text"]
  NEWCLOSURE R19 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  CAPTURE UPVAL U12
  SETTABLEKS R19 R18 K19 ["onActivated"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K47 ["TakeTour"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K24 ["Actions"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["Content"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  LOADNIL R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K2 [{"OnFocusLost"}]
  DUPCLOSURE R7 K3 [PROTO_4]
  SETTABLEKS R7 R6 K1 ["OnFocusLost"]
  DUPTABLE R7 K6 [{"DarkBackground", "PopupContainer"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K8 [{"tag"}]
  LOADK R11 K9 ["size-full bg-over-media-0"]
  SETTABLEKS R11 R10 K7 ["tag"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K4 ["DarkBackground"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K8 [{"tag"}]
  LOADK R11 K10 ["size-full align-x-center align-y-center"]
  SETTABLEKS R11 R10 K7 ["tag"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["createElement"]
  GETUPVAL R12 4
  MOVE R13 R0
  CALL R11 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K5 ["PopupContainer"]
  CALL R4 3 -1
  CALL R1 -1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["ContextServices"]
  GETTABLEKS R3 R4 K10 ["Localization"]
  GETTABLEKS R5 R2 K11 ["Util"]
  GETTABLEKS R4 R5 K12 ["counter"]
  GETTABLEKS R5 R2 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["CaptureFocus"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K16 ["Foundation"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K17 ["Image"]
  GETTABLEKS R9 R7 K18 ["Text"]
  GETTABLEKS R10 R7 K19 ["Button"]
  GETTABLEKS R12 R7 K20 ["Enums"]
  GETTABLEKS R11 R12 K21 ["ButtonVariant"]
  GETTABLEKS R13 R7 K20 ["Enums"]
  GETTABLEKS R12 R13 K22 ["FillBehavior"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K15 ["Src"]
  GETTABLEKS R15 R16 K23 ["Components"]
  GETTABLEKS R14 R15 K24 ["CursorScope"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R18 R0 K15 ["Src"]
  GETTABLEKS R17 R18 K16 ["Foundation"]
  GETTABLEKS R16 R17 K23 ["Components"]
  GETTABLEKS R15 R16 K25 ["Frame"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R19 R0 K15 ["Src"]
  GETTABLEKS R18 R19 K16 ["Foundation"]
  GETTABLEKS R17 R18 K23 ["Components"]
  GETTABLEKS R16 R17 K26 ["OverMediaCloseButton"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R20 R0 K15 ["Src"]
  GETTABLEKS R19 R20 K11 ["Util"]
  GETTABLEKS R18 R19 K27 ["Telemetry"]
  GETTABLEKS R17 R18 K28 ["TelemetryContext"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R21 R0 K15 ["Src"]
  GETTABLEKS R20 R21 K11 ["Util"]
  GETTABLEKS R19 R20 K27 ["Telemetry"]
  GETTABLEKS R18 R19 K29 ["StartPageTelemetryEvent"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K15 ["Src"]
  GETTABLEKS R20 R21 K11 ["Util"]
  GETTABLEKS R19 R20 K30 ["Services"]
  CALL R18 1 1
  GETTABLEKS R19 R18 K31 ["StartPageManager"]
  DUPCLOSURE R20 K32 [PROTO_3]
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R19
  DUPCLOSURE R21 K33 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R14
  CAPTURE VAL R20
  RETURN R21 1
