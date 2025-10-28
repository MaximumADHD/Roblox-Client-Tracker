PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Hover"]
  JUMPIFEQ R0 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R4 K4 ["interaction"]
  SETTABLEKS R4 R3 K0 ["telemetryType"]
  LOADK R4 K5 ["tutorial_tile"]
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

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"telemetryType", "telemetrySubtype", "action"}]
  LOADK R4 K4 ["interaction"]
  SETTABLEKS R4 R3 K0 ["telemetryType"]
  LOADK R4 K5 ["tutorial_tile"]
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
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useBinding"]
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 1
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETUPVAL R4 2
  NAMECALL R4 R4 K1 ["use"]
  CALL R4 1 1
  GETUPVAL R5 3
  CALL R5 0 1
  GETUPVAL R6 4
  CALL R6 0 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["useCallback"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  NEWTABLE R9 0 1
  MOVE R10 R2
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 6
  DUPTABLE R10 K9 [{"ClipsDescendants", "tag", "stateLayer", "onStateChanged", "testId"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K4 ["ClipsDescendants"]
  LOADK R11 K10 ["size-full-0 auto-y radius-medium stroke-default"]
  SETTABLEKS R11 R10 K5 ["tag"]
  DUPTABLE R11 K12 [{"affordance"}]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K13 ["None"]
  SETTABLEKS R12 R11 K11 ["affordance"]
  SETTABLEKS R11 R10 K6 ["stateLayer"]
  SETTABLEKS R7 R10 K7 ["onStateChanged"]
  LOADK R11 K14 ["--start-page-TutorialTile"]
  SETTABLEKS R11 R10 K8 ["testId"]
  DUPTABLE R11 K16 [{"CityImage"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K18 [{"ZIndex", "tag"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K17 ["ZIndex"]
  LOADK R15 K19 ["size-full-0 auto-y"]
  SETTABLEKS R15 R14 K5 ["tag"]
  DUPTABLE R15 K22 [{"BackgroundImage", "Container"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 9
  DUPTABLE R18 K25 [{"Image", "ScaleType", "tag"}]
  LOADK R19 K26 ["rbxasset://textures/StartPage/Tour3Screenshot.png"]
  SETTABLEKS R19 R18 K23 ["Image"]
  GETIMPORT R19 K29 [Enum.ScaleType.Crop]
  SETTABLEKS R19 R18 K24 ["ScaleType"]
  LOADK R19 K30 ["radius-medium size-full align-x-right padding-medium bg-over-media-0"]
  SETTABLEKS R19 R18 K5 ["tag"]
  DUPTABLE R19 K33 [{"Gradient", "CancelButton"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  LOADK R21 K34 ["UIGradient"]
  DUPTABLE R22 K36 [{"Transparency"}]
  GETUPVAL R23 10
  SETTABLEKS R23 R22 K35 ["Transparency"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K31 ["Gradient"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K39 [{"onActivated", "Visible"}]
  NEWCLOSURE R23 P1
  CAPTURE VAL R3
  CAPTURE UPVAL U12
  CAPTURE VAL R0
  SETTABLEKS R23 R22 K37 ["onActivated"]
  SETTABLEKS R1 R22 K38 ["Visible"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K32 ["CancelButton"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K20 ["BackgroundImage"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 6
  DUPTABLE R18 K42 [{"ZIndex", "padding", "Size", "tag"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K17 ["ZIndex"]
  DUPTABLE R19 K46 [{"left", "top", "bottom"}]
  GETIMPORT R20 K49 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R6 K41 ["Size"]
  GETTABLEKS R22 R23 K50 ["Size_800"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K43 ["left"]
  GETIMPORT R20 K49 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R6 K41 ["Size"]
  GETTABLEKS R22 R23 K50 ["Size_800"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K44 ["top"]
  GETIMPORT R20 K49 [UDim.new]
  LOADN R21 0
  GETTABLEKS R23 R6 K41 ["Size"]
  GETTABLEKS R22 R23 K50 ["Size_800"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K45 ["bottom"]
  SETTABLEKS R19 R18 K40 ["padding"]
  GETIMPORT R19 K53 [UDim2.fromOffset]
  LOADN R20 89
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K41 ["Size"]
  LOADK R19 K54 ["col auto-y gap-xlarge"]
  SETTABLEKS R19 R18 K5 ["tag"]
  DUPTABLE R19 K57 [{"Text", "Button"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 8
  DUPTABLE R22 K58 [{"tag"}]
  LOADK R23 K59 ["col gap-small auto-xy"]
  SETTABLEKS R23 R22 K5 ["tag"]
  DUPTABLE R23 K62 [{"Title", "Description"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K3 ["createElement"]
  GETUPVAL R25 13
  DUPTABLE R26 K64 [{"Text", "LayoutOrder", "tag"}]
  LOADK R29 K65 ["Plugin"]
  LOADK R30 K66 ["TutorialTile.TourTitle"]
  NAMECALL R27 R4 K67 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K55 ["Text"]
  MOVE R27 R5
  CALL R27 0 1
  SETTABLEKS R27 R26 K63 ["LayoutOrder"]
  LOADK R27 K68 ["auto-xy text-align-x-left content-emphasis text-heading-medium"]
  SETTABLEKS R27 R26 K5 ["tag"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K60 ["Title"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K3 ["createElement"]
  GETUPVAL R25 13
  DUPTABLE R26 K70 [{"Text", "TextWrapped", "LayoutOrder", "tag"}]
  LOADK R29 K65 ["Plugin"]
  LOADK R30 K71 ["TutorialTile.TourDesc"]
  NAMECALL R27 R4 K67 ["getText"]
  CALL R27 3 1
  SETTABLEKS R27 R26 K55 ["Text"]
  LOADB R27 1
  SETTABLEKS R27 R26 K69 ["TextWrapped"]
  MOVE R27 R5
  CALL R27 0 1
  SETTABLEKS R27 R26 K63 ["LayoutOrder"]
  LOADK R27 K72 ["auto-xy text-align-x-left content-emphasis text-body-medium"]
  SETTABLEKS R27 R26 K5 ["tag"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K61 ["Description"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K55 ["Text"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 14
  DUPTABLE R22 K76 [{"size", "variant", "LayoutOrder", "onActivated", "text"}]
  GETUPVAL R24 15
  GETTABLEKS R23 R24 K77 ["Medium"]
  SETTABLEKS R23 R22 K73 ["size"]
  GETUPVAL R24 16
  GETTABLEKS R23 R24 K78 ["Emphasis"]
  SETTABLEKS R23 R22 K74 ["variant"]
  MOVE R23 R5
  CALL R23 0 1
  SETTABLEKS R23 R22 K63 ["LayoutOrder"]
  NEWCLOSURE R23 P2
  CAPTURE VAL R3
  CAPTURE UPVAL U12
  CAPTURE UPVAL U17
  SETTABLEKS R23 R22 K37 ["onActivated"]
  LOADK R25 K65 ["Plugin"]
  LOADK R26 K79 ["TutorialTile.StartButton"]
  NAMECALL R23 R4 K67 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K75 ["text"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K56 ["Button"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["Container"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K15 ["CityImage"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["counter"]
  GETTABLEKS R5 R2 K11 ["ContextServices"]
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K13 ["Src"]
  GETTABLEKS R8 R9 K9 ["Util"]
  GETTABLEKS R7 R8 K14 ["Telemetry"]
  GETTABLEKS R6 R7 K15 ["TelemetryContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K14 ["Telemetry"]
  GETTABLEKS R7 R8 K16 ["StartPageTelemetryEvent"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K13 ["Src"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K17 ["Services"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K18 ["StartPageManager"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K9 ["Util"]
  GETTABLEKS R10 R11 K19 ["Foundation"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K20 ["Text"]
  GETTABLEKS R11 R9 K21 ["Image"]
  GETTABLEKS R12 R9 K22 ["Button"]
  GETTABLEKS R13 R9 K23 ["View"]
  GETTABLEKS R15 R9 K24 ["Hooks"]
  GETTABLEKS R14 R15 K25 ["useTokens"]
  GETTABLEKS R16 R9 K26 ["Enums"]
  GETTABLEKS R15 R16 K27 ["ButtonVariant"]
  GETTABLEKS R17 R9 K26 ["Enums"]
  GETTABLEKS R16 R17 K28 ["InputSize"]
  GETTABLEKS R18 R9 K26 ["Enums"]
  GETTABLEKS R17 R18 K29 ["ControlState"]
  GETTABLEKS R19 R9 K26 ["Enums"]
  GETTABLEKS R18 R19 K30 ["StateLayerAffordance"]
  GETIMPORT R19 K5 [require]
  GETTABLEKS R23 R0 K13 ["Src"]
  GETTABLEKS R22 R23 K19 ["Foundation"]
  GETTABLEKS R21 R22 K31 ["Components"]
  GETTABLEKS R20 R21 K32 ["Frame"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R24 R0 K13 ["Src"]
  GETTABLEKS R23 R24 K19 ["Foundation"]
  GETTABLEKS R22 R23 K31 ["Components"]
  GETTABLEKS R21 R22 K33 ["OverMediaCloseButton"]
  CALL R20 1 1
  GETIMPORT R21 K36 [NumberSequence.new]
  NEWTABLE R22 0 3
  GETIMPORT R23 K38 [NumberSequenceKeypoint.new]
  LOADN R24 0
  LOADK R25 K39 [0.95]
  CALL R23 2 1
  GETIMPORT R24 K38 [NumberSequenceKeypoint.new]
  LOADK R25 K40 [0.7235]
  LOADK R26 K41 [0.1]
  CALL R24 2 1
  GETIMPORT R25 K38 [NumberSequenceKeypoint.new]
  LOADN R26 1
  LOADN R27 0
  CALL R25 2 -1
  SETLIST R22 R23 -1 [1]
  CALL R21 1 1
  DUPCLOSURE R22 K42 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R8
  RETURN R22 1
