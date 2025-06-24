PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["DEBUG: studioContext.openPlaceVersion: SUCCESS"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["DEBUG: studioContext.openPlaceVersion: FAIL"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["openPlaceVersion"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["metadata"]
  GETTABLEKS R1 R2 K2 ["Version"]
  CALL R0 1 1
  DUPCLOSURE R2 K3 [PROTO_0]
  NAMECALL R0 R0 K4 ["andThen"]
  CALL R0 2 1
  DUPCLOSURE R2 K5 [PROTO_1]
  NAMECALL R0 R0 K6 ["catch"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K2 ["View"]
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K5 ["size-full-0 auto-y row align-y-center gap-small radius-small bg-surface-200"]
  SETTABLEKS R6 R5 K3 ["tag"]
  DUPTABLE R6 K12 [{"PublishedIcon", "VersionNumber", "Notes", "Date", "Authors", "Autosave"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K13 ["IconButton"]
  DUPTABLE R9 K18 [{"icon", "onActivated", "size", "LayoutOrder"}]
  LOADK R10 K19 ["icons/actions/accept"]
  SETTABLEKS R10 R9 K14 ["icon"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R10 R9 K15 ["onActivated"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K20 ["Enums"]
  GETTABLEKS R11 R12 K21 ["IconSize"]
  GETTABLEKS R10 R11 K22 ["Small"]
  SETTABLEKS R10 R9 K16 ["size"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K17 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["PublishedIcon"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K23 ["Text"]
  DUPTABLE R9 K24 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K25 ["size-0-0 auto-xy radius-small padding-small text-label-small text-no-wrap"]
  SETTABLEKS R10 R9 K3 ["tag"]
  GETTABLEKS R12 R0 K26 ["metadata"]
  GETTABLEKS R11 R12 K27 ["Version"]
  FASTCALL1 TOSTRING R11 [+2]
  GETIMPORT R10 K29 [tostring]
  CALL R10 1 1
  SETTABLEKS R10 R9 K23 ["Text"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K17 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["VersionNumber"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K23 ["Text"]
  DUPTABLE R9 K24 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K25 ["size-0-0 auto-xy radius-small padding-small text-label-small text-no-wrap"]
  SETTABLEKS R10 R9 K3 ["tag"]
  GETTABLEKS R12 R0 K26 ["metadata"]
  GETTABLEKS R11 R12 K8 ["Notes"]
  GETTABLEKS R10 R11 K30 ["Title"]
  SETTABLEKS R10 R9 K23 ["Text"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K17 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["Notes"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K23 ["Text"]
  DUPTABLE R9 K24 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K25 ["size-0-0 auto-xy radius-small padding-small text-label-small text-no-wrap"]
  SETTABLEKS R10 R9 K3 ["tag"]
  GETTABLEKS R11 R0 K26 ["metadata"]
  GETTABLEKS R10 R11 K9 ["Date"]
  LOADK R12 K31 ["L LT"]
  LOADK R13 K32 ["en-us"]
  NAMECALL R10 R10 K33 ["FormatLocalTime"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K23 ["Text"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K17 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["Date"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K23 ["Text"]
  DUPTABLE R9 K24 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K25 ["size-0-0 auto-xy radius-small padding-small text-label-small text-no-wrap"]
  SETTABLEKS R10 R9 K3 ["tag"]
  GETIMPORT R10 K36 [table.concat]
  GETTABLEKS R12 R0 K26 ["metadata"]
  GETTABLEKS R11 R12 K10 ["Authors"]
  LOADK R12 K37 [", "]
  CALL R10 2 1
  SETTABLEKS R10 R9 K23 ["Text"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K17 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["Authors"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K23 ["Text"]
  DUPTABLE R9 K24 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K25 ["size-0-0 auto-xy radius-small padding-small text-label-small text-no-wrap"]
  SETTABLEKS R10 R9 K3 ["tag"]
  GETTABLEKS R12 R0 K26 ["metadata"]
  GETTABLEKS R11 R12 K11 ["Autosave"]
  JUMPIFNOT R11 [+2]
  LOADK R10 K38 ["<autosave>"]
  JUMP [+1]
  LOADK R10 K39 ["<manualsave>"]
  SETTABLEKS R10 R9 K23 ["Text"]
  MOVE R10 R1
  CALL R10 0 1
  SETTABLEKS R10 R9 K17 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Autosave"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["ReactUtils"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K12 ["Contexts"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K13 ["StudioContext"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K14 ["createNextOrder"]
  DUPCLOSURE R8 K15 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R3
  RETURN R8 1
