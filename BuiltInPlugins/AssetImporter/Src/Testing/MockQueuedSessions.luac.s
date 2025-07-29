MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Types"]
  GETTABLEKS R3 R4 K8 ["QueuedSession"]
  CALL R2 1 1
  DUPTABLE R3 K24 [{"Empty", "Cube", "Sphere", "Octahedron", "Dodecahedron", "Rhombicosidodecahedron", "RigAsset", "EnvironmentalAsset", "InvalidAsset", "HasImportDataError", "HasImportDataWarnings", "UploadSuccessAsset", "UploadFailedAsset", "ParsingAsset", "ImportingAsset"}]
  GETTABLEKS R4 R2 K25 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["Empty"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K10 ["Cube"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K32 ["my/path/Cube"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 1
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["Cube"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K11 ["Sphere"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K35 ["my/path/Sphere"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 2
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["Sphere"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K12 ["Octahedron"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K36 ["my/path/Octahedron"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 3
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["Octahedron"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K13 ["Dodecahedron"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K37 ["my/path/Dodecahedron"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 4
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["Dodecahedron"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K14 ["Rhombicosidodecahedron"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K38 ["my/path/Rhombicosidodecahedron"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 5
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["Rhombicosidodecahedron"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K15 ["RigAsset"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K39 ["my/path/RigAsset"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 6
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["RigAsset"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K16 ["EnvironmentalAsset"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K40 ["my/path/EnvironmentalAsset"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 7
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["EnvironmentalAsset"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K17 ["InvalidAsset"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K41 ["my/path/InvalidAsset"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 248
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K42 ["Invalid"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["InvalidAsset"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K45 [{"assetName", "enabled", "filepath", "sortOrder", "state", "importDataError", "errors"}]
  LOADK R6 K18 ["HasImportDataError"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K46 ["my/path/HasImportDataError"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 9
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  LOADB R6 1
  SETTABLEKS R6 R5 K43 ["importDataError"]
  LOADN R6 2
  SETTABLEKS R6 R5 K44 ["errors"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["HasImportDataError"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K48 [{"assetName", "enabled", "filepath", "sortOrder", "state", "warnings"}]
  LOADK R6 K19 ["HasImportDataWarnings"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K49 ["my/path/HasImportDataWarnings"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 10
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K34 ["Parsed"]
  SETTABLEKS R6 R5 K30 ["state"]
  LOADN R6 2
  SETTABLEKS R6 R5 K47 ["warnings"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["HasImportDataWarnings"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K51 [{"assetName", "enabled", "filepath", "sortOrder", "state", "uploadResults"}]
  LOADK R6 K20 ["UploadSuccessAsset"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K52 ["my/path/UploadSuccessAsset"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 11
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K53 ["Imported"]
  SETTABLEKS R6 R5 K30 ["state"]
  DUPTABLE R6 K58 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K54 ["AssetIds"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K55 ["ErrorMessages"]
  LOADK R7 K59 ["test"]
  SETTABLEKS R7 R6 K56 ["Instance"]
  LOADB R7 1
  SETTABLEKS R7 R6 K57 ["Succeeded"]
  SETTABLEKS R6 R5 K50 ["uploadResults"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["UploadSuccessAsset"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K51 [{"assetName", "enabled", "filepath", "sortOrder", "state", "uploadResults"}]
  LOADK R6 K21 ["UploadFailedAsset"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K60 ["my/path/UploadFailedAsset"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 12
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K53 ["Imported"]
  SETTABLEKS R6 R5 K30 ["state"]
  DUPTABLE R6 K58 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K54 ["AssetIds"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K55 ["ErrorMessages"]
  LOADK R7 K59 ["test"]
  SETTABLEKS R7 R6 K56 ["Instance"]
  LOADB R7 0
  SETTABLEKS R7 R6 K57 ["Succeeded"]
  SETTABLEKS R6 R5 K50 ["uploadResults"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["UploadFailedAsset"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K10 ["Cube"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K32 ["my/path/Cube"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 13
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K61 ["Parsing"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["ParsingAsset"]
  GETTABLEKS R4 R2 K25 ["new"]
  DUPTABLE R5 K31 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K10 ["Cube"]
  SETTABLEKS R6 R5 K26 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K27 ["enabled"]
  LOADK R6 K32 ["my/path/Cube"]
  SETTABLEKS R6 R5 K28 ["filepath"]
  LOADN R6 14
  SETTABLEKS R6 R5 K29 ["sortOrder"]
  GETTABLEKS R7 R1 K33 ["SessionState"]
  GETTABLEKS R6 R7 K62 ["Importing"]
  SETTABLEKS R6 R5 K30 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K23 ["ImportingAsset"]
  RETURN R3 1
