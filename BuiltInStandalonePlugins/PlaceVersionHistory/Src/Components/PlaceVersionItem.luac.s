PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETTABLEKS R6 R0 K0 ["metadata"]
  GETTABLEKS R5 R6 K1 ["notes"]
  GETTABLEKS R4 R5 K2 ["description"]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R7 R0 K0 ["metadata"]
  GETTABLEKS R6 R7 K3 ["contributors"]
  LENGTH R5 R6
  JUMPIFNOTEQKN R5 K4 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  OR R5 R3 R4
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K6 ["View"]
  DUPTABLE R8 K10 [{"tag", "onActivated", "LayoutOrder"}]
  LOADK R9 K11 ["size-full-0 auto-y row align-y-top gap-small padding-small radius-small"]
  SETTABLEKS R9 R8 K7 ["tag"]
  GETTABLEKS R9 R2 K12 ["toggle"]
  SETTABLEKS R9 R8 K8 ["onActivated"]
  GETTABLEKS R9 R0 K9 ["LayoutOrder"]
  SETTABLEKS R9 R8 K9 ["LayoutOrder"]
  DUPTABLE R9 K17 [{"ExpandButton", "VersionChip", "VersionNote", "OverflowMenu"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K18 ["IconButton"]
  DUPTABLE R12 K23 [{"onActivated", "icon", "size", "testId", "isDisabled", "LayoutOrder"}]
  GETTABLEKS R13 R2 K12 ["toggle"]
  SETTABLEKS R13 R12 K8 ["onActivated"]
  JUMPIF R5 [+2]
  LOADNIL R13
  JUMP [+18]
  GETTABLEKS R14 R2 K24 ["enabled"]
  JUMPIFNOT R14 [+8]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K25 ["Enums"]
  GETTABLEKS R14 R15 K26 ["IconName"]
  GETTABLEKS R13 R14 K27 ["ChevronSmallUp"]
  JUMP [+7]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K25 ["Enums"]
  GETTABLEKS R14 R15 K26 ["IconName"]
  GETTABLEKS R13 R14 K28 ["ChevronSmallDown"]
  SETTABLEKS R13 R12 K19 ["icon"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K25 ["Enums"]
  GETTABLEKS R14 R15 K29 ["InputSize"]
  GETTABLEKS R13 R14 K30 ["XSmall"]
  SETTABLEKS R13 R12 K20 ["size"]
  LOADK R13 K31 ["--place-version-item-expand-button"]
  SETTABLEKS R13 R12 K21 ["testId"]
  NOT R13 R5
  SETTABLEKS R13 R12 K22 ["isDisabled"]
  MOVE R13 R1
  CALL R13 0 1
  SETTABLEKS R13 R12 K9 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K13 ["ExpandButton"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K32 ["Chip"]
  DUPTABLE R12 K34 [{"onActivated", "size", "text", "LayoutOrder"}]
  LOADNIL R13
  SETTABLEKS R13 R12 K8 ["onActivated"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K25 ["Enums"]
  GETTABLEKS R14 R15 K35 ["ChipSize"]
  GETTABLEKS R13 R14 K36 ["Small"]
  SETTABLEKS R13 R12 K20 ["size"]
  LOADK R14 K37 ["v%*"]
  GETTABLEKS R17 R0 K0 ["metadata"]
  GETTABLEKS R16 R17 K38 ["version"]
  NAMECALL R14 R14 K39 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K33 ["text"]
  MOVE R13 R1
  CALL R13 0 1
  SETTABLEKS R13 R12 K9 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K14 ["VersionChip"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K41 [{"metadata", "isExpanded", "LayoutOrder"}]
  GETTABLEKS R13 R0 K0 ["metadata"]
  SETTABLEKS R13 R12 K0 ["metadata"]
  GETTABLEKS R13 R2 K24 ["enabled"]
  SETTABLEKS R13 R12 K40 ["isExpanded"]
  MOVE R13 R1
  CALL R13 0 1
  SETTABLEKS R13 R12 K9 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["VersionNote"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K42 [{"metadata", "LayoutOrder"}]
  GETTABLEKS R13 R0 K0 ["metadata"]
  SETTABLEKS R13 R12 K0 ["metadata"]
  MOVE R13 R1
  CALL R13 0 1
  SETTABLEKS R13 R12 K9 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["OverflowMenu"]
  CALL R6 3 -1
  RETURN R6 -1

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
