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
  NEWTABLE R2 8 0
  DUPCLOSURE R3 K8 [PROTO_0]
  SETTABLEKS R3 R2 K9 ["getEnumAsList"]
  DUPTABLE R3 K13 [{"User", "Group", "Universe"}]
  LOADK R4 K10 ["User"]
  SETTABLEKS R4 R3 K10 ["User"]
  LOADK R4 K11 ["Group"]
  SETTABLEKS R4 R3 K11 ["Group"]
  LOADK R4 K12 ["Universe"]
  SETTABLEKS R4 R3 K12 ["Universe"]
  SETTABLEKS R3 R2 K14 ["Scope"]
  DUPTABLE R4 K26 [{"Model", "Package", "Decal", "Audio", "Animation", "Plugin", "MeshPart", "Video", "FontFamily", "Image", "Mesh"}]
  LOADK R5 K15 ["Model"]
  SETTABLEKS R5 R4 K15 ["Model"]
  LOADK R5 K16 ["Package"]
  SETTABLEKS R5 R4 K16 ["Package"]
  LOADK R5 K17 ["Decal"]
  SETTABLEKS R5 R4 K17 ["Decal"]
  LOADK R5 K18 ["Audio"]
  SETTABLEKS R5 R4 K18 ["Audio"]
  LOADK R5 K19 ["Animation"]
  SETTABLEKS R5 R4 K19 ["Animation"]
  LOADK R5 K20 ["Plugin"]
  SETTABLEKS R5 R4 K20 ["Plugin"]
  LOADK R5 K21 ["MeshPart"]
  SETTABLEKS R5 R4 K21 ["MeshPart"]
  LOADK R5 K22 ["Video"]
  SETTABLEKS R5 R4 K22 ["Video"]
  LOADK R5 K23 ["FontFamily"]
  SETTABLEKS R5 R4 K23 ["FontFamily"]
  LOADK R5 K24 ["Image"]
  SETTABLEKS R5 R4 K24 ["Image"]
  LOADK R5 K25 ["Mesh"]
  SETTABLEKS R5 R4 K25 ["Mesh"]
  SETTABLEKS R4 R2 K27 ["AssetType"]
  DUPTABLE R5 K31 [{"Reviewing", "Rejected", "Approved"}]
  LOADK R6 K32 ["MODERATION_STATE_REVIEWING"]
  SETTABLEKS R6 R5 K28 ["Reviewing"]
  LOADK R6 K33 ["MODERATION_STATE_REJECTED"]
  SETTABLEKS R6 R5 K29 ["Rejected"]
  LOADK R6 K34 ["MODERATION_STATE_APPROVED"]
  SETTABLEKS R6 R5 K30 ["Approved"]
  SETTABLEKS R5 R2 K35 ["ModerationStatus"]
  DUPTABLE R6 K42 [{"AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator"}]
  LOADK R7 K36 ["AssetId"]
  SETTABLEKS R7 R6 K36 ["AssetId"]
  LOADK R7 K27 ["AssetType"]
  SETTABLEKS R7 R6 K27 ["AssetType"]
  LOADK R7 K37 ["DisplayName"]
  SETTABLEKS R7 R6 K37 ["DisplayName"]
  LOADK R7 K38 ["VersionNumber"]
  SETTABLEKS R7 R6 K38 ["VersionNumber"]
  LOADK R7 K39 ["Created"]
  SETTABLEKS R7 R6 K39 ["Created"]
  LOADK R7 K40 ["Modified"]
  SETTABLEKS R7 R6 K40 ["Modified"]
  LOADK R7 K35 ["ModerationStatus"]
  SETTABLEKS R7 R6 K35 ["ModerationStatus"]
  LOADK R7 K41 ["Creator"]
  SETTABLEKS R7 R6 K41 ["Creator"]
  SETTABLEKS R6 R2 K43 ["AssetInfoField"]
  MOVE R7 R1
  LOADK R8 K44 ["ViewType"]
  DUPTABLE R9 K48 [{"List", "Grid", "Unsupported"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K45 ["List"]
  LOADN R10 2
  SETTABLEKS R10 R9 K46 ["Grid"]
  LOADN R10 3
  SETTABLEKS R10 R9 K47 ["Unsupported"]
  CALL R7 2 1
  SETTABLEKS R7 R2 K44 ["ViewType"]
  DUPTABLE R8 K52 [{"Asset", "Scope", "Column", "Sidebar"}]
  LOADK R9 K49 ["Asset"]
  SETTABLEKS R9 R8 K49 ["Asset"]
  LOADK R9 K14 ["Scope"]
  SETTABLEKS R9 R8 K14 ["Scope"]
  LOADK R9 K50 ["Column"]
  SETTABLEKS R9 R8 K50 ["Column"]
  LOADK R9 K51 ["Sidebar"]
  SETTABLEKS R9 R8 K51 ["Sidebar"]
  SETTABLEKS R8 R2 K53 ["MenuContext"]
  RETURN R2 1
