PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R2 K2 ["%*Button activated"]
  GETUPVAL R4 0
  NAMECALL R2 R2 K3 ["format"]
  CALL R2 2 1
  MOVE R1 R2
  CALL R0 1 0
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
  CAPTURE UPVAL U4
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
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K1 ["usePath2DSpinner"]
  SETTABLEKS R3 R2 K2 ["FoundationUsePath2DSpinner"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"tag"}]
  LOADK R5 K6 ["row gap-medium auto-y size-full-0 align-y-center"]
  SETTABLEKS R5 R4 K4 ["tag"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K7 ["map"]
  NEWTABLE R6 0 4
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K8 ["Large"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K9 ["Medium"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K10 ["Small"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K11 ["XSmall"]
  SETLIST R6 R7 4 [1]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CALL R5 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_3:
  DUPTABLE R1 K2 [{"name", "story"}]
  SETTABLEKS R0 R1 K0 ["name"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R0
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
  GETTABLEKS R9 R0 K14 ["Enums"]
  GETTABLEKS R8 R9 K15 ["InputSize"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K14 ["Enums"]
  GETTABLEKS R9 R10 K16 ["ButtonVariant"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K14 ["Enums"]
  GETTABLEKS R10 R11 K17 ["FillBehavior"]
  CALL R9 1 1
  DUPTABLE R10 K21 [{"summary", "stories", "controls"}]
  LOADK R11 K13 ["Button"]
  SETTABLEKS R11 R10 K18 ["summary"]
  GETTABLEKS R11 R3 K22 ["map"]
  MOVE R12 R8
  DUPCLOSURE R13 K23 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R6
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["stories"]
  DUPTABLE R11 K31 [{"icon", "text", "isDisabled", "isLoading", "fillBehavior", "inputDelay", "usePath2DSpinner"}]
  NEWTABLE R12 0 16
  LOADK R13 K32 ["chain-link"]
  LOADK R14 K33 ["tilt"]
  LOADK R15 K34 ["icons/placeholder/placeholderOn"]
  LOADK R16 K35 ["icons/common/robux"]
  LOADK R17 K36 ["icons/common/play"]
  LOADK R18 K37 ["icons/controls/media-play-large"]
  LOADK R19 K38 ["icons/controls/media-play-medium"]
  LOADK R20 K39 ["icons/controls/media-play-small"]
  LOADK R21 K40 ["icons/actions/pumpkin_medium"]
  LOADK R22 K41 ["icons/actions/accept_small"]
  LOADK R23 K42 ["icons/actions/friends/friendAdd"]
  LOADK R24 K43 ["icons/actions/friends/friendAdd_small"]
  LOADK R25 K44 ["icons/navigation/externallink_medium"]
  LOADK R26 K45 ["icons/actions/info"]
  LOADK R27 K46 ["icons/actions/info_small"]
  LOADK R28 K47 [""]
  SETLIST R12 R13 16 [1]
  SETTABLEKS R12 R11 K24 ["icon"]
  LOADK R12 K48 ["Lorem ipsum"]
  SETTABLEKS R12 R11 K25 ["text"]
  LOADB R12 0
  SETTABLEKS R12 R11 K26 ["isDisabled"]
  LOADB R12 0
  SETTABLEKS R12 R11 K27 ["isLoading"]
  NEWTABLE R12 0 3
  GETTABLEKS R13 R2 K49 ["None"]
  GETTABLEKS R14 R9 K50 ["Fit"]
  GETTABLEKS R15 R9 K51 ["Fill"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K28 ["fillBehavior"]
  LOADN R12 0
  SETTABLEKS R12 R11 K29 ["inputDelay"]
  GETTABLEKS R12 R4 K52 ["FoundationUsePath2DSpinner"]
  SETTABLEKS R12 R11 K30 ["usePath2DSpinner"]
  SETTABLEKS R11 R10 K20 ["controls"]
  RETURN R10 1
