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
  DUPTABLE R3 K12 [{"User", "Group"}]
  LOADK R4 K10 ["User"]
  SETTABLEKS R4 R3 K10 ["User"]
  LOADK R4 K11 ["Group"]
  SETTABLEKS R4 R3 K11 ["Group"]
  SETTABLEKS R3 R2 K13 ["Scope"]
  DUPTABLE R4 K21 [{"Model", "Package", "Mesh", "Image", "Audio", "Video", "Animation"}]
  LOADK R5 K14 ["Model"]
  SETTABLEKS R5 R4 K14 ["Model"]
  LOADK R5 K15 ["Package"]
  SETTABLEKS R5 R4 K15 ["Package"]
  LOADK R5 K16 ["Mesh"]
  SETTABLEKS R5 R4 K16 ["Mesh"]
  LOADK R5 K17 ["Image"]
  SETTABLEKS R5 R4 K17 ["Image"]
  LOADK R5 K18 ["Audio"]
  SETTABLEKS R5 R4 K18 ["Audio"]
  LOADK R5 K19 ["Video"]
  SETTABLEKS R5 R4 K19 ["Video"]
  LOADK R5 K20 ["Animation"]
  SETTABLEKS R5 R4 K20 ["Animation"]
  SETTABLEKS R4 R2 K22 ["AssetType"]
  DUPTABLE R5 K26 [{"Reviewing", "Rejected", "Approved"}]
  LOADK R6 K27 ["MODERATION_STATE_REVIEWING"]
  SETTABLEKS R6 R5 K23 ["Reviewing"]
  LOADK R6 K28 ["MODERATION_STATE_REJECTED"]
  SETTABLEKS R6 R5 K24 ["Rejected"]
  LOADK R6 K29 ["MODERATION_STATE_APPROVED"]
  SETTABLEKS R6 R5 K25 ["Approved"]
  SETTABLEKS R5 R2 K30 ["ModerationStatus"]
  DUPTABLE R6 K37 [{"AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Creator"}]
  LOADK R7 K31 ["AssetId"]
  SETTABLEKS R7 R6 K31 ["AssetId"]
  LOADK R7 K22 ["AssetType"]
  SETTABLEKS R7 R6 K22 ["AssetType"]
  LOADK R7 K32 ["DisplayName"]
  SETTABLEKS R7 R6 K32 ["DisplayName"]
  LOADK R7 K33 ["VersionNumber"]
  SETTABLEKS R7 R6 K33 ["VersionNumber"]
  LOADK R7 K34 ["Created"]
  SETTABLEKS R7 R6 K34 ["Created"]
  LOADK R7 K35 ["Modified"]
  SETTABLEKS R7 R6 K35 ["Modified"]
  LOADK R7 K30 ["ModerationStatus"]
  SETTABLEKS R7 R6 K30 ["ModerationStatus"]
  LOADK R7 K36 ["Creator"]
  SETTABLEKS R7 R6 K36 ["Creator"]
  SETTABLEKS R6 R2 K38 ["AssetInfoField"]
  MOVE R7 R1
  LOADK R8 K39 ["ViewType"]
  DUPTABLE R9 K43 [{"List", "Grid", "Unsupported"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K40 ["List"]
  LOADN R10 2
  SETTABLEKS R10 R9 K41 ["Grid"]
  LOADN R10 3
  SETTABLEKS R10 R9 K42 ["Unsupported"]
  CALL R7 2 1
  SETTABLEKS R7 R2 K39 ["ViewType"]
  DUPTABLE R8 K47 [{"Asset", "Scope", "Column", "Sidebar"}]
  LOADK R9 K44 ["Asset"]
  SETTABLEKS R9 R8 K44 ["Asset"]
  LOADK R9 K13 ["Scope"]
  SETTABLEKS R9 R8 K13 ["Scope"]
  LOADK R9 K45 ["Column"]
  SETTABLEKS R9 R8 K45 ["Column"]
  LOADK R9 K46 ["Sidebar"]
  SETTABLEKS R9 R8 K46 ["Sidebar"]
  SETTABLEKS R8 R2 K48 ["MenuContext"]
  RETURN R2 1
