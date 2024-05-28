MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetAccess"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K8 ["AssetMetadata"]
  GETTABLEKS R3 R2 K8 ["AssetMetadata"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K17 [{"id", "visibility", "name", "owner", "type"}]
  LOADN R6 123
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K18 ["Public"]
  SETTABLEKS R6 R5 K13 ["visibility"]
  LOADK R6 K19 ["Asset1"]
  SETTABLEKS R6 R5 K14 ["name"]
  LOADK R6 K20 ["User1"]
  SETTABLEKS R6 R5 K15 ["owner"]
  GETIMPORT R6 K24 [Enum.AssetType.Audio]
  SETTABLEKS R6 R5 K16 ["type"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K25 ["PUBLIC"]
  GETTABLEKS R3 R2 K8 ["AssetMetadata"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K26 [{"id", "visibility"}]
  LOADN R6 200
  SETTABLEKS R6 R5 K12 ["id"]
  LOADK R6 K27 ["Private"]
  SETTABLEKS R6 R5 K13 ["visibility"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["PRIVATE"]
  GETIMPORT R3 K11 [table.freeze]
  GETTABLEKS R4 R2 K8 ["AssetMetadata"]
  CALL R3 1 0
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K29 ["AssetModel"]
  GETTABLEKS R3 R2 K29 ["AssetModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K32 [{"state", "metadata"}]
  LOADK R6 K33 ["Loaded"]
  SETTABLEKS R6 R5 K30 ["state"]
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R9 R2 K8 ["AssetMetadata"]
  GETTABLEKS R8 R9 K25 ["PUBLIC"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K31 ["metadata"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K36 ["LOADED_PUBLIC"]
  GETTABLEKS R3 R2 K29 ["AssetModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K32 [{"state", "metadata"}]
  LOADK R6 K33 ["Loaded"]
  SETTABLEKS R6 R5 K30 ["state"]
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R9 R2 K8 ["AssetMetadata"]
  GETTABLEKS R8 R9 K28 ["PRIVATE"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K31 ["metadata"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K37 ["LOADED_PRIVATE"]
  GETTABLEKS R3 R2 K29 ["AssetModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K38 [{"state"}]
  LOADK R6 K39 ["Loading"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K40 ["LOADING"]
  GETTABLEKS R3 R2 K29 ["AssetModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K38 [{"state"}]
  LOADK R6 K41 ["Failed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K42 ["FAILED"]
  GETIMPORT R3 K11 [table.freeze]
  GETTABLEKS R4 R2 K29 ["AssetModel"]
  CALL R3 1 0
  GETIMPORT R3 K11 [table.freeze]
  NEWTABLE R4 4 0
  GETIMPORT R5 K11 [table.freeze]
  GETIMPORT R6 K35 [table.clone]
  GETTABLEKS R8 R2 K29 ["AssetModel"]
  GETTABLEKS R7 R8 K36 ["LOADED_PUBLIC"]
  CALL R6 1 -1
  CALL R5 -1 1
  SETTABLEN R5 R4 123
  LOADN R5 200
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R9 R2 K29 ["AssetModel"]
  GETTABLEKS R8 R9 K37 ["LOADED_PRIVATE"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLE R6 R4 R5
  LOADN R5 21
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R9 R2 K29 ["AssetModel"]
  GETTABLEKS R8 R9 K40 ["LOADING"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLE R6 R4 R5
  LOADK R5 K43 [101112]
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R9 R2 K29 ["AssetModel"]
  GETTABLEKS R8 R9 K42 ["FAILED"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLE R6 R4 R5
  CALL R3 1 1
  SETTABLEKS R3 R2 K44 ["ASSET_MODELS"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K45 ["ShareDialogModel"]
  GETTABLEKS R3 R2 K45 ["ShareDialogModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K38 [{"state"}]
  LOADK R6 K46 ["Inactive"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K47 ["INACTIVE"]
  GETTABLEKS R3 R2 K45 ["ShareDialogModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K49 [{"state", "assetModels"}]
  LOADK R6 K50 ["Prompt"]
  SETTABLEKS R6 R5 K30 ["state"]
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R8 R2 K44 ["ASSET_MODELS"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K48 ["assetModels"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K51 ["PROMPT"]
  GETTABLEKS R3 R2 K45 ["ShareDialogModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K49 [{"state", "assetModels"}]
  LOADK R6 K52 ["Sharing"]
  SETTABLEKS R6 R5 K30 ["state"]
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R8 R2 K44 ["ASSET_MODELS"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K48 ["assetModels"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K53 ["SHARING"]
  GETTABLEKS R3 R2 K45 ["ShareDialogModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K49 [{"state", "assetModels"}]
  LOADK R6 K54 ["CantShare"]
  SETTABLEKS R6 R5 K30 ["state"]
  GETIMPORT R6 K11 [table.freeze]
  GETIMPORT R7 K35 [table.clone]
  GETTABLEKS R8 R2 K44 ["ASSET_MODELS"]
  CALL R7 1 -1
  CALL R6 -1 1
  SETTABLEKS R6 R5 K48 ["assetModels"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K55 ["CANT_SHARE"]
  GETTABLEKS R3 R2 K45 ["ShareDialogModel"]
  GETIMPORT R4 K11 [table.freeze]
  DUPTABLE R5 K38 [{"state"}]
  LOADK R6 K56 ["UnexpectedError"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K57 ["UNEXPECTED_ERROR"]
  GETIMPORT R3 K11 [table.freeze]
  GETTABLEKS R4 R2 K45 ["ShareDialogModel"]
  CALL R3 1 0
  GETIMPORT R3 K11 [table.freeze]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
