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
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Util"]
  GETTABLEKS R2 R3 K9 ["enumerate"]
  NEWTABLE R3 8 0
  DUPCLOSURE R4 K10 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["getEnumAsList"]
  DUPTABLE R4 K14 [{"User", "Group"}]
  LOADK R5 K12 ["User"]
  SETTABLEKS R5 R4 K12 ["User"]
  LOADK R5 K13 ["Group"]
  SETTABLEKS R5 R4 K13 ["Group"]
  SETTABLEKS R4 R3 K15 ["Scope"]
  DUPTABLE R5 K23 [{"Model", "Package", "Mesh", "Image", "Audio", "Video", "Animation"}]
  LOADK R6 K16 ["Model"]
  SETTABLEKS R6 R5 K16 ["Model"]
  LOADK R6 K17 ["Package"]
  SETTABLEKS R6 R5 K17 ["Package"]
  LOADK R6 K18 ["Mesh"]
  SETTABLEKS R6 R5 K18 ["Mesh"]
  LOADK R6 K19 ["Image"]
  SETTABLEKS R6 R5 K19 ["Image"]
  LOADK R6 K20 ["Audio"]
  SETTABLEKS R6 R5 K20 ["Audio"]
  LOADK R6 K21 ["Video"]
  SETTABLEKS R6 R5 K21 ["Video"]
  LOADK R6 K22 ["Animation"]
  SETTABLEKS R6 R5 K22 ["Animation"]
  SETTABLEKS R5 R3 K24 ["AssetType"]
  DUPTABLE R6 K28 [{"Reviewing", "Rejected", "Approved"}]
  LOADK R7 K29 ["MODERATION_STATE_REVIEWING"]
  SETTABLEKS R7 R6 K25 ["Reviewing"]
  LOADK R7 K30 ["MODERATION_STATE_REJECTED"]
  SETTABLEKS R7 R6 K26 ["Rejected"]
  LOADK R7 K31 ["MODERATION_STATE_APPROVED"]
  SETTABLEKS R7 R6 K27 ["Approved"]
  SETTABLEKS R6 R3 K32 ["ModerationStatus"]
  DUPTABLE R7 K39 [{"AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Owner"}]
  LOADK R8 K33 ["AssetId"]
  SETTABLEKS R8 R7 K33 ["AssetId"]
  LOADK R8 K24 ["AssetType"]
  SETTABLEKS R8 R7 K24 ["AssetType"]
  LOADK R8 K34 ["DisplayName"]
  SETTABLEKS R8 R7 K34 ["DisplayName"]
  LOADK R8 K35 ["VersionNumber"]
  SETTABLEKS R8 R7 K35 ["VersionNumber"]
  LOADK R8 K36 ["Created"]
  SETTABLEKS R8 R7 K36 ["Created"]
  LOADK R8 K37 ["Modified"]
  SETTABLEKS R8 R7 K37 ["Modified"]
  LOADK R8 K32 ["ModerationStatus"]
  SETTABLEKS R8 R7 K32 ["ModerationStatus"]
  LOADK R8 K38 ["Owner"]
  SETTABLEKS R8 R7 K38 ["Owner"]
  SETTABLEKS R7 R3 K40 ["AssetInfoField"]
  MOVE R8 R2
  LOADK R9 K41 ["ViewType"]
  DUPTABLE R10 K45 [{"List", "Grid", "Unsupported"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K42 ["List"]
  LOADN R11 2
  SETTABLEKS R11 R10 K43 ["Grid"]
  LOADN R11 3
  SETTABLEKS R11 R10 K44 ["Unsupported"]
  CALL R8 2 1
  SETTABLEKS R8 R3 K41 ["ViewType"]
  RETURN R3 1
