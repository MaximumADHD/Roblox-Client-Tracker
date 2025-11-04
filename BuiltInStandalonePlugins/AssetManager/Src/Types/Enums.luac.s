PROTO_0:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R8 R1
  MOVE R9 R6
  GETIMPORT R7 K2 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-8]
  RETURN R1 1

PROTO_1:
  JUMPIFLT R0 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getEnumAsList"]
  MOVE R2 R0
  CALL R1 1 1
  GETIMPORT R2 K3 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K4 [PROTO_1]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["enumerate"]
  CALL R1 1 1
  NEWTABLE R2 16 0
  DUPCLOSURE R3 K8 [PROTO_0]
  SETTABLEKS R3 R2 K9 ["getEnumAsList"]
  DUPCLOSURE R3 K10 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K11 ["getEnumAsSortedList"]
  DUPTABLE R3 K17 [{"User", "Group", "Universe", "ProjectShared", "ProjectPlaces"}]
  LOADK R4 K12 ["User"]
  SETTABLEKS R4 R3 K12 ["User"]
  LOADK R4 K13 ["Group"]
  SETTABLEKS R4 R3 K13 ["Group"]
  LOADK R4 K14 ["Universe"]
  SETTABLEKS R4 R3 K14 ["Universe"]
  LOADK R4 K15 ["ProjectShared"]
  SETTABLEKS R4 R3 K15 ["ProjectShared"]
  LOADK R4 K16 ["ProjectPlaces"]
  SETTABLEKS R4 R3 K16 ["ProjectPlaces"]
  SETTABLEKS R3 R2 K18 ["ScopeType"]
  DUPTABLE R4 K30 [{"Animation", "Audio", "Decal", "FontFamily", "Image", "Mesh", "MeshPart", "Model", "Place", "Plugin", "Video"}]
  LOADK R5 K19 ["Animation"]
  SETTABLEKS R5 R4 K19 ["Animation"]
  LOADK R5 K20 ["Audio"]
  SETTABLEKS R5 R4 K20 ["Audio"]
  LOADK R5 K21 ["Decal"]
  SETTABLEKS R5 R4 K21 ["Decal"]
  LOADK R5 K22 ["FontFamily"]
  SETTABLEKS R5 R4 K22 ["FontFamily"]
  LOADK R5 K23 ["Image"]
  SETTABLEKS R5 R4 K23 ["Image"]
  LOADK R5 K24 ["Mesh"]
  SETTABLEKS R5 R4 K24 ["Mesh"]
  LOADK R5 K25 ["MeshPart"]
  SETTABLEKS R5 R4 K25 ["MeshPart"]
  LOADK R5 K26 ["Model"]
  SETTABLEKS R5 R4 K26 ["Model"]
  LOADK R5 K27 ["Place"]
  SETTABLEKS R5 R4 K27 ["Place"]
  LOADK R5 K28 ["Plugin"]
  SETTABLEKS R5 R4 K28 ["Plugin"]
  LOADK R5 K29 ["Video"]
  SETTABLEKS R5 R4 K29 ["Video"]
  SETTABLEKS R4 R2 K31 ["AssetType"]
  DUPTABLE R5 K35 [{"Reviewing", "Rejected", "Approved"}]
  LOADK R6 K36 ["MODERATION_STATE_REVIEWING"]
  SETTABLEKS R6 R5 K32 ["Reviewing"]
  LOADK R6 K37 ["MODERATION_STATE_REJECTED"]
  SETTABLEKS R6 R5 K33 ["Rejected"]
  LOADK R6 K38 ["MODERATION_STATE_APPROVED"]
  SETTABLEKS R6 R5 K34 ["Approved"]
  SETTABLEKS R5 R2 K39 ["ModerationStatus"]
  DUPTABLE R6 K49 [{"AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage"}]
  LOADK R7 K40 ["AssetId"]
  SETTABLEKS R7 R6 K40 ["AssetId"]
  LOADK R7 K31 ["AssetType"]
  SETTABLEKS R7 R6 K31 ["AssetType"]
  LOADK R7 K41 ["DisplayName"]
  SETTABLEKS R7 R6 K41 ["DisplayName"]
  LOADK R7 K42 ["VersionNumber"]
  SETTABLEKS R7 R6 K42 ["VersionNumber"]
  LOADK R7 K43 ["Created"]
  SETTABLEKS R7 R6 K43 ["Created"]
  LOADK R7 K44 ["Modified"]
  SETTABLEKS R7 R6 K44 ["Modified"]
  LOADK R7 K39 ["ModerationStatus"]
  SETTABLEKS R7 R6 K39 ["ModerationStatus"]
  LOADK R7 K45 ["Creator"]
  SETTABLEKS R7 R6 K45 ["Creator"]
  LOADK R7 K46 ["Source"]
  SETTABLEKS R7 R6 K46 ["Source"]
  LOADK R7 K47 ["Archived"]
  SETTABLEKS R7 R6 K47 ["Archived"]
  LOADK R7 K48 ["IsPackage"]
  SETTABLEKS R7 R6 K48 ["IsPackage"]
  SETTABLEKS R6 R2 K50 ["AssetInfoField"]
  DUPTABLE R7 K54 [{"Uploaded", "CreatorStore", "SharedWithMe"}]
  LOADK R8 K51 ["Uploaded"]
  SETTABLEKS R8 R7 K51 ["Uploaded"]
  LOADK R8 K52 ["CreatorStore"]
  SETTABLEKS R8 R7 K52 ["CreatorStore"]
  LOADK R8 K53 ["SharedWithMe"]
  SETTABLEKS R8 R7 K53 ["SharedWithMe"]
  SETTABLEKS R7 R2 K55 ["AssetSource"]
  MOVE R8 R1
  LOADK R9 K56 ["ViewType"]
  DUPTABLE R10 K60 [{"List", "Grid", "Unsupported"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K57 ["List"]
  LOADN R11 2
  SETTABLEKS R11 R10 K58 ["Grid"]
  LOADN R11 3
  SETTABLEKS R11 R10 K59 ["Unsupported"]
  CALL R8 2 1
  SETTABLEKS R8 R2 K56 ["ViewType"]
  DUPTABLE R9 K65 [{"Asset", "Scope", "Column", "Sidebar"}]
  LOADK R10 K61 ["Asset"]
  SETTABLEKS R10 R9 K61 ["Asset"]
  LOADK R10 K62 ["Scope"]
  SETTABLEKS R10 R9 K62 ["Scope"]
  LOADK R10 K63 ["Column"]
  SETTABLEKS R10 R9 K63 ["Column"]
  LOADK R10 K64 ["Sidebar"]
  SETTABLEKS R10 R9 K64 ["Sidebar"]
  SETTABLEKS R9 R2 K66 ["MenuContext"]
  MOVE R10 R1
  LOADK R11 K67 ["ExplorerHeader"]
  DUPTABLE R12 K69 [{"User", "Groups"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["User"]
  LOADN R13 2
  SETTABLEKS R13 R12 K68 ["Groups"]
  CALL R10 2 1
  SETTABLEKS R10 R2 K67 ["ExplorerHeader"]
  DUPTABLE R11 K73 [{"Browser", "Explorer", "Filters"}]
  LOADK R12 K70 ["Browser"]
  SETTABLEKS R12 R11 K70 ["Browser"]
  LOADK R12 K71 ["Explorer"]
  SETTABLEKS R12 R11 K71 ["Explorer"]
  LOADK R12 K72 ["Filters"]
  SETTABLEKS R12 R11 K72 ["Filters"]
  SETTABLEKS R11 R2 K74 ["UiZone"]
  RETURN R2 1
