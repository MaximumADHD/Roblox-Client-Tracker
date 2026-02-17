PROTO_0:
  GETTABLEKS R4 R0 K0 ["folder"]
  DUPTABLE R5 K12 [{"AssetId", "AssetType", "DisplayName", "Created", "Modified", "ModerationStatus", "Creator", "Source", "Archived", "SearchRank", "Path"}]
  GETTABLEKS R6 R4 K13 ["folderId"]
  SETTABLEKS R6 R5 K1 ["AssetId"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["AssetType"]
  GETTABLEKS R6 R7 K14 ["Folder"]
  SETTABLEKS R6 R5 K2 ["AssetType"]
  GETTABLEKS R6 R4 K15 ["displayName"]
  SETTABLEKS R6 R5 K3 ["DisplayName"]
  GETTABLEKS R6 R4 K16 ["createTime"]
  SETTABLEKS R6 R5 K4 ["Created"]
  GETTABLEKS R6 R4 K17 ["updateTime"]
  SETTABLEKS R6 R5 K5 ["Modified"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["ModerationStatus"]
  GETTABLEKS R6 R7 K18 ["Placeholder"]
  SETTABLEKS R6 R5 K6 ["ModerationStatus"]
  SETTABLEKS R1 R5 K7 ["Creator"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K19 ["AssetSource"]
  GETTABLEKS R6 R7 K20 ["Uploaded"]
  SETTABLEKS R6 R5 K8 ["Source"]
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["Archived"]
  SETTABLEKS R3 R5 K10 ["SearchRank"]
  SETTABLEKS R2 R5 K11 ["Path"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
