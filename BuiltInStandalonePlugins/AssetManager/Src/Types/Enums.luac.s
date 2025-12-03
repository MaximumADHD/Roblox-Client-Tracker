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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagAmrOrganizationFoundation"]
  CALL R2 1 1
  NEWTABLE R3 16 0
  DUPCLOSURE R4 K11 [PROTO_0]
  SETTABLEKS R4 R3 K12 ["getEnumAsList"]
  DUPCLOSURE R4 K13 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K14 ["getEnumAsSortedList"]
  DUPTABLE R4 K22 [{"User", "Group", "Universe", "ProjectShared", "ProjectPlaces", "Folder", "Header"}]
  LOADK R5 K15 ["User"]
  SETTABLEKS R5 R4 K15 ["User"]
  LOADK R5 K16 ["Group"]
  SETTABLEKS R5 R4 K16 ["Group"]
  LOADK R5 K17 ["Universe"]
  SETTABLEKS R5 R4 K17 ["Universe"]
  LOADK R5 K18 ["ProjectShared"]
  SETTABLEKS R5 R4 K18 ["ProjectShared"]
  LOADK R5 K19 ["ProjectPlaces"]
  SETTABLEKS R5 R4 K19 ["ProjectPlaces"]
  MOVE R6 R2
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADK R5 K20 ["Folder"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K20 ["Folder"]
  MOVE R6 R2
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADK R5 K21 ["Header"]
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K21 ["Header"]
  SETTABLEKS R4 R3 K23 ["ScopeType"]
  DUPTABLE R5 K35 [{"Animation", "Audio", "Decal", "FontFamily", "Image", "Mesh", "MeshPart", "Model", "Place", "Plugin", "Video", "Folder"}]
  LOADK R6 K24 ["Animation"]
  SETTABLEKS R6 R5 K24 ["Animation"]
  LOADK R6 K25 ["Audio"]
  SETTABLEKS R6 R5 K25 ["Audio"]
  LOADK R6 K26 ["Decal"]
  SETTABLEKS R6 R5 K26 ["Decal"]
  LOADK R6 K27 ["FontFamily"]
  SETTABLEKS R6 R5 K27 ["FontFamily"]
  LOADK R6 K28 ["Image"]
  SETTABLEKS R6 R5 K28 ["Image"]
  LOADK R6 K29 ["Mesh"]
  SETTABLEKS R6 R5 K29 ["Mesh"]
  LOADK R6 K30 ["MeshPart"]
  SETTABLEKS R6 R5 K30 ["MeshPart"]
  LOADK R6 K31 ["Model"]
  SETTABLEKS R6 R5 K31 ["Model"]
  LOADK R6 K32 ["Place"]
  SETTABLEKS R6 R5 K32 ["Place"]
  LOADK R6 K33 ["Plugin"]
  SETTABLEKS R6 R5 K33 ["Plugin"]
  LOADK R6 K34 ["Video"]
  SETTABLEKS R6 R5 K34 ["Video"]
  MOVE R7 R2
  CALL R7 0 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K20 ["Folder"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K20 ["Folder"]
  SETTABLEKS R5 R3 K36 ["AssetType"]
  DUPTABLE R6 K40 [{"Reviewing", "Rejected", "Approved"}]
  LOADK R7 K41 ["MODERATION_STATE_REVIEWING"]
  SETTABLEKS R7 R6 K37 ["Reviewing"]
  LOADK R7 K42 ["MODERATION_STATE_REJECTED"]
  SETTABLEKS R7 R6 K38 ["Rejected"]
  LOADK R7 K43 ["MODERATION_STATE_APPROVED"]
  SETTABLEKS R7 R6 K39 ["Approved"]
  SETTABLEKS R6 R3 K44 ["ModerationStatus"]
  DUPTABLE R7 K54 [{"AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "IsPackage"}]
  LOADK R8 K45 ["AssetId"]
  SETTABLEKS R8 R7 K45 ["AssetId"]
  LOADK R8 K36 ["AssetType"]
  SETTABLEKS R8 R7 K36 ["AssetType"]
  LOADK R8 K46 ["DisplayName"]
  SETTABLEKS R8 R7 K46 ["DisplayName"]
  LOADK R8 K47 ["VersionNumber"]
  SETTABLEKS R8 R7 K47 ["VersionNumber"]
  LOADK R8 K48 ["Created"]
  SETTABLEKS R8 R7 K48 ["Created"]
  LOADK R8 K49 ["Modified"]
  SETTABLEKS R8 R7 K49 ["Modified"]
  LOADK R8 K44 ["ModerationStatus"]
  SETTABLEKS R8 R7 K44 ["ModerationStatus"]
  LOADK R8 K50 ["Creator"]
  SETTABLEKS R8 R7 K50 ["Creator"]
  LOADK R8 K51 ["Source"]
  SETTABLEKS R8 R7 K51 ["Source"]
  LOADK R8 K52 ["Archived"]
  SETTABLEKS R8 R7 K52 ["Archived"]
  LOADK R8 K53 ["IsPackage"]
  SETTABLEKS R8 R7 K53 ["IsPackage"]
  SETTABLEKS R7 R3 K55 ["AssetInfoField"]
  DUPTABLE R8 K59 [{"Uploaded", "CreatorStore", "SharedWithMe"}]
  LOADK R9 K56 ["Uploaded"]
  SETTABLEKS R9 R8 K56 ["Uploaded"]
  LOADK R9 K57 ["CreatorStore"]
  SETTABLEKS R9 R8 K57 ["CreatorStore"]
  LOADK R9 K58 ["SharedWithMe"]
  SETTABLEKS R9 R8 K58 ["SharedWithMe"]
  SETTABLEKS R8 R3 K60 ["AssetSource"]
  MOVE R9 R1
  LOADK R10 K61 ["ViewType"]
  DUPTABLE R11 K65 [{"List", "Grid", "Unsupported"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K62 ["List"]
  LOADN R12 2
  SETTABLEKS R12 R11 K63 ["Grid"]
  LOADN R12 3
  SETTABLEKS R12 R11 K64 ["Unsupported"]
  CALL R9 2 1
  SETTABLEKS R9 R3 K61 ["ViewType"]
  DUPTABLE R10 K70 [{"Asset", "Scope", "Column", "Sidebar"}]
  LOADK R11 K66 ["Asset"]
  SETTABLEKS R11 R10 K66 ["Asset"]
  LOADK R11 K67 ["Scope"]
  SETTABLEKS R11 R10 K67 ["Scope"]
  LOADK R11 K68 ["Column"]
  SETTABLEKS R11 R10 K68 ["Column"]
  LOADK R11 K69 ["Sidebar"]
  SETTABLEKS R11 R10 K69 ["Sidebar"]
  SETTABLEKS R10 R3 K71 ["MenuContext"]
  MOVE R11 R1
  LOADK R12 K72 ["ExplorerHeader"]
  DUPTABLE R13 K76 [{"User", "Groups", "Project", "Library"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K15 ["User"]
  LOADN R14 2
  SETTABLEKS R14 R13 K73 ["Groups"]
  LOADN R14 3
  SETTABLEKS R14 R13 K74 ["Project"]
  LOADN R14 4
  SETTABLEKS R14 R13 K75 ["Library"]
  CALL R11 2 1
  SETTABLEKS R11 R3 K72 ["ExplorerHeader"]
  DUPTABLE R12 K80 [{"Browser", "Explorer", "Filters"}]
  LOADK R13 K77 ["Browser"]
  SETTABLEKS R13 R12 K77 ["Browser"]
  LOADK R13 K78 ["Explorer"]
  SETTABLEKS R13 R12 K78 ["Explorer"]
  LOADK R13 K79 ["Filters"]
  SETTABLEKS R13 R12 K79 ["Filters"]
  SETTABLEKS R12 R3 K81 ["UiZone"]
  RETURN R3 1
