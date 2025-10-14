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
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"tag"}]
  LOADK R5 K4 ["row gap-medium auto-y size-full-0 align-y-center"]
  SETTABLEKS R5 R4 K2 ["tag"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["map"]
  NEWTABLE R6 0 4
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["Large"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K7 ["Medium"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K8 ["Small"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K9 ["XSmall"]
  SETLIST R6 R7 4 [1]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U5
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
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Button"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["InputSize"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K12 ["Enums"]
  GETTABLEKS R8 R9 K14 ["ButtonVariant"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K12 ["Enums"]
  GETTABLEKS R9 R10 K15 ["FillBehavior"]
  CALL R8 1 1
  DUPTABLE R9 K19 [{"summary", "stories", "controls"}]
  LOADK R10 K11 ["Button"]
  SETTABLEKS R10 R9 K16 ["summary"]
  GETTABLEKS R10 R3 K20 ["map"]
  MOVE R11 R7
  DUPCLOSURE R12 K21 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CALL R10 2 1
  SETTABLEKS R10 R9 K17 ["stories"]
  DUPTABLE R10 K28 [{"icon", "text", "isDisabled", "isLoading", "fillBehavior", "inputDelay"}]
  NEWTABLE R11 0 16
  LOADK R12 K29 ["chain-link"]
  LOADK R13 K30 ["tilt"]
  LOADK R14 K31 ["icons/placeholder/placeholderOn"]
  LOADK R15 K32 ["icons/common/robux"]
  LOADK R16 K33 ["icons/common/play"]
  LOADK R17 K34 ["icons/controls/media-play-large"]
  LOADK R18 K35 ["icons/controls/media-play-medium"]
  LOADK R19 K36 ["icons/controls/media-play-small"]
  LOADK R20 K37 ["icons/actions/pumpkin_medium"]
  LOADK R21 K38 ["icons/actions/accept_small"]
  LOADK R22 K39 ["icons/actions/friends/friendAdd"]
  LOADK R23 K40 ["icons/actions/friends/friendAdd_small"]
  LOADK R24 K41 ["icons/navigation/externallink_medium"]
  LOADK R25 K42 ["icons/actions/info"]
  LOADK R26 K43 ["icons/actions/info_small"]
  LOADK R27 K44 [""]
  SETLIST R11 R12 16 [1]
  SETTABLEKS R11 R10 K22 ["icon"]
  LOADK R11 K45 ["Lorem ipsum"]
  SETTABLEKS R11 R10 K23 ["text"]
  LOADB R11 0
  SETTABLEKS R11 R10 K24 ["isDisabled"]
  LOADB R11 0
  SETTABLEKS R11 R10 K25 ["isLoading"]
  NEWTABLE R11 0 3
  GETTABLEKS R12 R2 K46 ["None"]
  GETTABLEKS R13 R8 K47 ["Fit"]
  GETTABLEKS R14 R8 K48 ["Fill"]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K26 ["fillBehavior"]
  LOADN R11 0
  SETTABLEKS R11 R10 K27 ["inputDelay"]
  SETTABLEKS R10 R9 K18 ["controls"]
  RETURN R9 1
