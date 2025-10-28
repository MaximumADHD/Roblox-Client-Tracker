PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+2]
  LOADK R0 K0 ["Inverse"]
  JUMP [+1]
  LOADK R0 K1 ["Normal"]
  GETIMPORT R1 K3 [print]
  LOADK R3 K4 ["%* %* Button (%*) activated"]
  MOVE R5 R0
  GETUPVAL R6 1
  GETUPVAL R7 2
  NAMECALL R3 R3 K5 ["format"]
  CALL R3 4 1
  MOVE R2 R3
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K10 [{"icon", "text", "variant", "isLoading", "onActivated", "isDisabled", "size", "fillBehavior", "inputDelay"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["icon"]
  JUMPIFNOTEQKS R5 K11 [""] [+3]
  LOADNIL R4
  JUMP [+5]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K12 ["controls"]
  GETTABLEKS R4 R5 K1 ["icon"]
  SETTABLEKS R4 R3 K1 ["icon"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["text"]
  SETTABLEKS R4 R3 K2 ["text"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K3 ["variant"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["isLoading"]
  SETTABLEKS R4 R3 K4 ["isLoading"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K5 ["onActivated"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["isDisabled"]
  SETTABLEKS R4 R3 K6 ["isDisabled"]
  SETTABLEKS R0 R3 K7 ["size"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["fillBehavior"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["None"]
  JUMPIFNOTEQ R5 R6 [+3]
  LOADNIL R4
  JUMP [+3]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["fillBehavior"]
  SETTABLEKS R4 R3 K8 ["fillBehavior"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K9 ["inputDelay"]
  SETTABLEKS R4 R3 K9 ["inputDelay"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETTABLEKS R2 R1 K1 ["isInverse"]
  DUPTABLE R3 K2 [{"isInverse"}]
  SETTABLEKS R2 R3 K1 ["isInverse"]
  GETUPVAL R4 0
  CALL R4 0 1
  GETUPVAL R5 1
  GETTABLEKS R6 R1 K3 ["usePath2DSpinner"]
  SETTABLEKS R6 R5 K4 ["FoundationUsePath2DSpinner"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K8 [{"tag", "backgroundStyle"}]
  LOADK R8 K9 ["row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium"]
  SETTABLEKS R8 R7 K6 ["tag"]
  GETUPVAL R9 4
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K10 ["OverMedia"]
  JUMPIFNOTEQ R9 R10 [+10]
  GETTABLEKS R11 R4 K11 ["Color"]
  GETTABLEKS R10 R11 K12 ["Extended"]
  GETTABLEKS R9 R10 K13 ["White"]
  GETTABLEKS R8 R9 K14 ["White_100"]
  JUMP [+9]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R10 R4 K15 ["Inverse"]
  GETTABLEKS R9 R10 K16 ["Surface"]
  GETTABLEKS R8 R9 K17 ["Surface_0"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K7 ["backgroundStyle"]
  DUPTABLE R8 K20 [{"Gradient", "Buttons"}]
  GETUPVAL R10 4
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K10 ["OverMedia"]
  JUMPIFNOTEQ R10 R11 [+45]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K21 ["UIGradient"]
  DUPTABLE R11 K22 [{"Color"}]
  GETIMPORT R12 K25 [ColorSequence.new]
  NEWTABLE R13 0 2
  GETIMPORT R14 K27 [ColorSequenceKeypoint.new]
  LOADN R15 0
  GETTABLEKS R20 R4 K11 ["Color"]
  GETTABLEKS R19 R20 K12 ["Extended"]
  GETTABLEKS R18 R19 K28 ["Green"]
  GETTABLEKS R17 R18 K29 ["Green_500"]
  GETTABLEKS R16 R17 K30 ["Color3"]
  CALL R14 2 1
  GETIMPORT R15 K27 [ColorSequenceKeypoint.new]
  LOADN R16 1
  GETTABLEKS R21 R4 K11 ["Color"]
  GETTABLEKS R20 R21 K12 ["Extended"]
  GETTABLEKS R19 R20 K31 ["Blue"]
  GETTABLEKS R18 R19 K32 ["Blue_500"]
  GETTABLEKS R17 R18 K30 ["Color3"]
  CALL R15 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R12 1 1
  SETTABLEKS R12 R11 K11 ["Color"]
  CALL R9 2 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K18 ["Gradient"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K33 ["Provider"]
  DUPTABLE R11 K35 [{"value"}]
  SETTABLEKS R3 R11 K34 ["value"]
  GETUPVAL R13 7
  GETTABLEKS R12 R13 K36 ["map"]
  NEWTABLE R13 0 4
  GETUPVAL R15 8
  GETTABLEKS R14 R15 K37 ["Large"]
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K38 ["Medium"]
  GETUPVAL R17 8
  GETTABLEKS R16 R17 K39 ["Small"]
  GETUPVAL R18 8
  GETTABLEKS R17 R18 K40 ["XSmall"]
  SETLIST R13 R14 4 [1]
  NEWCLOSURE R14 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U9
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CALL R12 2 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K19 ["Buttons"]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_3:
  DUPTABLE R1 K2 [{"name", "story"}]
  SETTABLEKS R0 R1 K0 ["name"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  SETTABLEKS R2 R1 K1 ["story"]
  RETURN R1 1

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
  GETTABLEKS R6 R0 K9 ["Utility"]
  GETTABLEKS R5 R6 K10 ["Flags"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K11 ["Components"]
  GETTABLEKS R7 R8 K13 ["Button"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K14 ["Providers"]
  GETTABLEKS R9 R10 K15 ["Style"]
  GETTABLEKS R8 R9 K16 ["PresentationContext"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K14 ["Providers"]
  GETTABLEKS R10 R11 K15 ["Style"]
  GETTABLEKS R9 R10 K17 ["useTokens"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K18 ["Enums"]
  GETTABLEKS R10 R11 K19 ["InputSize"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K18 ["Enums"]
  GETTABLEKS R11 R12 K20 ["ButtonVariant"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K18 ["Enums"]
  GETTABLEKS R12 R13 K21 ["FillBehavior"]
  CALL R11 1 1
  DUPTABLE R12 K25 [{"summary", "stories", "controls"}]
  LOADK R13 K13 ["Button"]
  SETTABLEKS R13 R12 K22 ["summary"]
  GETTABLEKS R13 R3 K26 ["map"]
  MOVE R14 R10
  DUPCLOSURE R15 K27 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R6
  CALL R13 2 1
  SETTABLEKS R13 R12 K23 ["stories"]
  DUPTABLE R13 K36 [{"icon", "text", "isDisabled", "isLoading", "isInverse", "fillBehavior", "inputDelay", "usePath2DSpinner"}]
  NEWTABLE R14 0 16
  LOADK R15 K37 ["chain-link"]
  LOADK R16 K38 ["tilt"]
  LOADK R17 K39 ["icons/placeholder/placeholderOn"]
  LOADK R18 K40 ["icons/common/robux"]
  LOADK R19 K41 ["icons/common/play"]
  LOADK R20 K42 ["icons/controls/media-play-large"]
  LOADK R21 K43 ["icons/controls/media-play-medium"]
  LOADK R22 K44 ["icons/controls/media-play-small"]
  LOADK R23 K45 ["icons/actions/pumpkin_medium"]
  LOADK R24 K46 ["icons/actions/accept_small"]
  LOADK R25 K47 ["icons/actions/friends/friendAdd"]
  LOADK R26 K48 ["icons/actions/friends/friendAdd_small"]
  LOADK R27 K49 ["icons/navigation/externallink_medium"]
  LOADK R28 K50 ["icons/actions/info"]
  LOADK R29 K51 ["icons/actions/info_small"]
  LOADK R30 K52 [""]
  SETLIST R14 R15 16 [1]
  SETTABLEKS R14 R13 K28 ["icon"]
  LOADK R14 K53 ["Lorem ipsum"]
  SETTABLEKS R14 R13 K29 ["text"]
  LOADB R14 0
  SETTABLEKS R14 R13 K30 ["isDisabled"]
  LOADB R14 0
  SETTABLEKS R14 R13 K31 ["isLoading"]
  LOADB R14 0
  SETTABLEKS R14 R13 K32 ["isInverse"]
  NEWTABLE R14 0 3
  GETTABLEKS R15 R2 K54 ["None"]
  GETTABLEKS R16 R11 K55 ["Fit"]
  GETTABLEKS R17 R11 K56 ["Fill"]
  SETLIST R14 R15 3 [1]
  SETTABLEKS R14 R13 K33 ["fillBehavior"]
  LOADN R14 0
  SETTABLEKS R14 R13 K34 ["inputDelay"]
  GETTABLEKS R14 R4 K57 ["FoundationUsePath2DSpinner"]
  SETTABLEKS R14 R13 K35 ["usePath2DSpinner"]
  SETTABLEKS R13 R12 K24 ["controls"]
  RETURN R12 1
