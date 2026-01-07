PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["View"]
  DUPTABLE R5 K5 [{"tag", "onActivated", "LayoutOrder"}]
  LOADK R6 K6 ["size-full-0 auto-y row align-y-top gap-small padding-small radius-small"]
  SETTABLEKS R6 R5 K2 ["tag"]
  GETTABLEKS R6 R2 K7 ["toggle"]
  SETTABLEKS R6 R5 K3 ["onActivated"]
  GETTABLEKS R6 R0 K4 ["LayoutOrder"]
  SETTABLEKS R6 R5 K4 ["LayoutOrder"]
  DUPTABLE R6 K12 [{"ExpandButton", "VersionChip", "VersionNote", "OverflowMenu"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["IconButton"]
  DUPTABLE R9 K17 [{"onActivated", "icon", "size", "testId", "LayoutOrder"}]
  GETTABLEKS R10 R2 K7 ["toggle"]
  SETTABLEKS R10 R9 K3 ["onActivated"]
  GETTABLEKS R11 R2 K18 ["enabled"]
  JUMPIFNOT R11 [+8]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K19 ["Enums"]
  GETTABLEKS R11 R12 K20 ["IconName"]
  GETTABLEKS R10 R11 K21 ["ChevronSmallUp"]
  JUMP [+7]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K19 ["Enums"]
  GETTABLEKS R11 R12 K20 ["IconName"]
  GETTABLEKS R10 R11 K22 ["ChevronSmallDown"]
  SETTABLEKS R10 R9 K14 ["icon"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K19 ["Enums"]
  GETTABLEKS R11 R12 K23 ["InputSize"]
  GETTABLEKS R10 R11 K24 ["XSmall"]
  SETTABLEKS R10 R9 K15 ["size"]
  LOADK R10 K25 ["--place-version-item-expand-button"]
  SETTABLEKS R10 R9 K16 ["testId"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["ExpandButton"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K26 ["Chip"]
  DUPTABLE R9 K28 [{"onActivated", "size", "text", "LayoutOrder"}]
  LOADNIL R10
  SETTABLEKS R10 R9 K3 ["onActivated"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K19 ["Enums"]
  GETTABLEKS R11 R12 K29 ["ChipSize"]
  GETTABLEKS R10 R11 K30 ["Small"]
  SETTABLEKS R10 R9 K15 ["size"]
  LOADK R11 K31 ["v.%*"]
  GETTABLEKS R14 R0 K32 ["metadata"]
  GETTABLEKS R13 R14 K33 ["version"]
  NAMECALL R11 R11 K34 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K27 ["text"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["VersionChip"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K36 [{"metadata", "isExpanded", "LayoutOrder"}]
  GETTABLEKS R10 R0 K32 ["metadata"]
  SETTABLEKS R10 R9 K32 ["metadata"]
  GETTABLEKS R10 R2 K18 ["enabled"]
  SETTABLEKS R10 R9 K35 ["isExpanded"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["VersionNote"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 5
  DUPTABLE R9 K37 [{"metadata", "LayoutOrder"}]
  GETTABLEKS R10 R0 K32 ["metadata"]
  SETTABLEKS R10 R9 K32 ["metadata"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K4 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["OverflowMenu"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Components"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["OverflowMenu"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K13 ["PlaceVersionNote"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K14 ["createNextOrder"]
  GETTABLEKS R8 R2 K15 ["useToggleState"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K16 ["Types"]
  CALL R9 1 1
  DUPCLOSURE R10 K17 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R10 1
