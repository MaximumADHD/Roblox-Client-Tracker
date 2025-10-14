PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"isDisabled", "onActivated", "size", "icon", "isCircular"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K2 ["isDisabled"]
  DUPCLOSURE R5 K8 [PROTO_0]
  SETTABLEKS R5 R4 K3 ["onActivated"]
  GETTABLEKS R5 R1 K4 ["size"]
  SETTABLEKS R5 R4 K4 ["size"]
  GETTABLEKS R5 R1 K9 ["name"]
  SETTABLEKS R5 R4 K5 ["icon"]
  GETTABLEKS R5 R1 K6 ["isCircular"]
  SETTABLEKS R5 R4 K6 ["isCircular"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"controls"}]
  DUPTABLE R3 K5 [{"size", "name", "isCircular"}]
  SETTABLEKS R0 R3 K2 ["size"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["controls"]
  GETTABLEKS R4 R5 K3 ["name"]
  SETTABLEKS R4 R3 K3 ["name"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["controls"]
  GETTABLEKS R4 R5 K4 ["isCircular"]
  SETTABLEKS R4 R3 K4 ["isCircular"]
  SETTABLEKS R3 R2 K0 ["controls"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K1 ["updateIconButtonSizes"]
  SETTABLEKS R2 R1 K2 ["FoundationUpdateIconButtonSizes"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K5 [{"tag"}]
  LOADK R4 K6 ["row gap-medium auto-y size-full-0 align-y-center"]
  SETTABLEKS R4 R3 K4 ["tag"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["map"]
  GETUPVAL R5 4
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R0
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
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["IconButton"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K12 ["Enums"]
  GETTABLEKS R7 R8 K13 ["IconSize"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K14 ["Utility"]
  GETTABLEKS R8 R9 K15 ["Flags"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  NEWTABLE R9 0 5
  GETTABLEKS R10 R6 K17 ["Small"]
  GETTABLEKS R11 R6 K18 ["Medium"]
  GETTABLEKS R12 R6 K19 ["Large"]
  GETTABLEKS R13 R6 K20 ["XLarge"]
  GETTABLEKS R14 R6 K21 ["XXLarge"]
  SETLIST R9 R10 5 [1]
  DUPTABLE R10 K25 [{"summary", "story", "controls"}]
  LOADK R11 K26 ["Icon component for displaying icons"]
  SETTABLEKS R11 R10 K22 ["summary"]
  DUPCLOSURE R11 K27 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K23 ["story"]
  DUPTABLE R11 K31 [{"name", "isCircular", "updateIconButtonSizes"}]
  NEWTABLE R12 0 5
  LOADK R13 K32 ["icons/common/notificationOff"]
  LOADK R14 K33 ["icons/common/robux"]
  LOADK R15 K34 ["icons/common/search_small"]
  LOADK R16 K35 ["icons/controls/voice/microphone_off_light"]
  LOADK R17 K36 ["icons/controls/voice/video_on_light"]
  SETLIST R12 R13 5 [1]
  SETTABLEKS R12 R11 K28 ["name"]
  LOADB R12 0
  SETTABLEKS R12 R11 K29 ["isCircular"]
  GETTABLEKS R12 R7 K37 ["FoundationUpdateIconButtonSizes"]
  SETTABLEKS R12 R11 K30 ["updateIconButtonSizes"]
  SETTABLEKS R11 R10 K24 ["controls"]
  RETURN R10 1
