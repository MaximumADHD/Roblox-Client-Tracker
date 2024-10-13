MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["DataTypes"]
  GETTABLEKS R2 R3 K8 ["QueuedSession"]
  CALL R1 1 1
  DUPTABLE R2 K21 [{"Empty", "Cube", "Sphere", "Octahedron", "Dodecahedron", "Rhombicosidodecahedron", "RigAsset", "EnvironmentalAsset", "InvalidAsset", "HasImportDataError", "EnabledInvalidAsset", "UploadedAsset"}]
  GETTABLEKS R3 R1 K22 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K9 ["Empty"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K10 ["Cube"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K29 ["my/path/Cube"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K10 ["Cube"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K11 ["Sphere"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K33 ["my/path/Sphere"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K11 ["Sphere"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K12 ["Octahedron"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K34 ["my/path/Octahedron"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K12 ["Octahedron"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K13 ["Dodecahedron"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K35 ["my/path/Dodecahedron"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K13 ["Dodecahedron"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K14 ["Rhombicosidodecahedron"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K36 ["my/path/Rhombicosidodecahedron"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K14 ["Rhombicosidodecahedron"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K15 ["RigAsset"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K37 ["my/path/RigAsset"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K15 ["RigAsset"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K16 ["EnvironmentalAsset"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 0
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K38 ["my/path/EnvironmentalAsset"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K16 ["EnvironmentalAsset"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K17 ["InvalidAsset"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 0
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K39 ["my/path/InvalidAsset"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 0
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K17 ["InvalidAsset"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K41 [{"assetName", "enabled", "filepath", "timestamp", "validSession", "importDataError"}]
  LOADK R5 K18 ["HasImportDataError"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K42 ["my/path/HasImportDataError"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 1
  SETTABLEKS R5 R4 K27 ["validSession"]
  LOADB R5 1
  SETTABLEKS R5 R4 K40 ["importDataError"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K18 ["HasImportDataError"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K28 [{"assetName", "enabled", "filepath", "timestamp", "validSession"}]
  LOADK R5 K19 ["EnabledInvalidAsset"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 1
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K43 ["my/path/EnabledInvalidAsset"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 0
  SETTABLEKS R5 R4 K27 ["validSession"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K19 ["EnabledInvalidAsset"]
  GETTABLEKS R3 R1 K22 ["new"]
  DUPTABLE R4 K45 [{"assetName", "enabled", "filepath", "timestamp", "validSession", "uploaded"}]
  LOADK R5 K20 ["UploadedAsset"]
  SETTABLEKS R5 R4 K23 ["assetName"]
  LOADB R5 0
  SETTABLEKS R5 R4 K24 ["enabled"]
  LOADK R5 K46 ["my/path/UploadedAsset"]
  SETTABLEKS R5 R4 K25 ["filepath"]
  GETIMPORT R5 K32 [DateTime.now]
  CALL R5 0 1
  SETTABLEKS R5 R4 K26 ["timestamp"]
  LOADB R5 0
  SETTABLEKS R5 R4 K27 ["validSession"]
  LOADB R5 1
  SETTABLEKS R5 R4 K44 ["uploaded"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K20 ["UploadedAsset"]
  RETURN R2 1
