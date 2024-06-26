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
  NEWTABLE R0 8 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["getEnumAsList"]
  DUPTABLE R1 K4 [{"User", "Group"}]
  LOADK R2 K2 ["User"]
  SETTABLEKS R2 R1 K2 ["User"]
  LOADK R2 K3 ["Group"]
  SETTABLEKS R2 R1 K3 ["Group"]
  SETTABLEKS R1 R0 K5 ["Scope"]
  DUPTABLE R2 K13 [{"Model", "Mesh", "Image", "Decal", "Audio", "Video", "Animation"}]
  LOADK R3 K6 ["Model"]
  SETTABLEKS R3 R2 K6 ["Model"]
  LOADK R3 K7 ["Mesh"]
  SETTABLEKS R3 R2 K7 ["Mesh"]
  LOADK R3 K8 ["Image"]
  SETTABLEKS R3 R2 K8 ["Image"]
  LOADK R3 K9 ["Decal"]
  SETTABLEKS R3 R2 K9 ["Decal"]
  LOADK R3 K10 ["Audio"]
  SETTABLEKS R3 R2 K10 ["Audio"]
  LOADK R3 K11 ["Video"]
  SETTABLEKS R3 R2 K11 ["Video"]
  LOADK R3 K12 ["Animation"]
  SETTABLEKS R3 R2 K12 ["Animation"]
  SETTABLEKS R2 R0 K14 ["AssetType"]
  DUPTABLE R3 K18 [{"Reviewing", "Rejected", "Approved"}]
  LOADK R4 K19 ["MODERATION_STATE_REVIEWING"]
  SETTABLEKS R4 R3 K15 ["Reviewing"]
  LOADK R4 K20 ["MODERATION_STATE_REJECTED"]
  SETTABLEKS R4 R3 K16 ["Rejected"]
  LOADK R4 K21 ["MODERATION_STATE_APPROVED"]
  SETTABLEKS R4 R3 K17 ["Approved"]
  SETTABLEKS R3 R0 K22 ["ModerationStatus"]
  DUPTABLE R4 K29 [{"AssetId", "AssetType", "DisplayName", "VersionNumber", "Created", "Modified", "ModerationStatus", "Owner"}]
  LOADK R5 K23 ["AssetId"]
  SETTABLEKS R5 R4 K23 ["AssetId"]
  LOADK R5 K14 ["AssetType"]
  SETTABLEKS R5 R4 K14 ["AssetType"]
  LOADK R5 K24 ["DisplayName"]
  SETTABLEKS R5 R4 K24 ["DisplayName"]
  LOADK R5 K25 ["VersionNumber"]
  SETTABLEKS R5 R4 K25 ["VersionNumber"]
  LOADK R5 K26 ["Created"]
  SETTABLEKS R5 R4 K26 ["Created"]
  LOADK R5 K27 ["Modified"]
  SETTABLEKS R5 R4 K27 ["Modified"]
  LOADK R5 K22 ["ModerationStatus"]
  SETTABLEKS R5 R4 K22 ["ModerationStatus"]
  LOADK R5 K28 ["Owner"]
  SETTABLEKS R5 R4 K28 ["Owner"]
  SETTABLEKS R4 R0 K30 ["AssetInfoField"]
  RETURN R0 1
