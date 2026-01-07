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
  DUPTABLE R3 K27 [{"Empty", "Cube", "Sphere", "Octahedron", "Dodecahedron", "Rhombicosidodecahedron", "RigAsset", "EnvironmentalAsset", "InvalidAsset", "HasImportDataError", "HasImportDataWarnings", "UploadSuccessAsset", "UploadFailedAsset", "ParsingAsset", "ImportingAsset", "AudioAsset", "VideoAsset", "ImageAsset"}]
  GETTABLEKS R4 R2 K28 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K9 ["Empty"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K35 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
  LOADK R6 K10 ["Cube"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K36 ["my/path/Cube"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K38 ["Scene"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 1
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["Cube"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K41 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K11 ["Sphere"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K42 ["my/path/Sphere"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  LOADN R6 2
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["Sphere"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K41 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K12 ["Octahedron"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K43 ["my/path/Octahedron"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  LOADN R6 3
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["Octahedron"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K41 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K13 ["Dodecahedron"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K44 ["my/path/Dodecahedron"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  LOADN R6 4
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["Dodecahedron"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K41 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K14 ["Rhombicosidodecahedron"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K45 ["my/path/Rhombicosidodecahedron"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  LOADN R6 5
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["Rhombicosidodecahedron"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K41 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K15 ["RigAsset"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K46 ["my/path/RigAsset"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  LOADN R6 6
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["RigAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K41 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K16 ["EnvironmentalAsset"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K47 ["my/path/EnvironmentalAsset"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  LOADN R6 7
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["EnvironmentalAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K41 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R6 K17 ["InvalidAsset"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K48 ["my/path/InvalidAsset"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  LOADN R6 248
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K49 ["Invalid"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["InvalidAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K52 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "importDataError", "errors"}]
  LOADK R6 K18 ["HasImportDataError"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K53 ["my/path/HasImportDataError"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K38 ["Scene"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 9
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  LOADB R6 1
  SETTABLEKS R6 R5 K50 ["importDataError"]
  LOADN R6 2
  SETTABLEKS R6 R5 K51 ["errors"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["HasImportDataError"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K55 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "warnings"}]
  LOADK R6 K19 ["HasImportDataWarnings"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K56 ["my/path/HasImportDataWarnings"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K38 ["Scene"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 10
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  LOADN R6 2
  SETTABLEKS R6 R5 K54 ["warnings"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["HasImportDataWarnings"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K58 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "uploadResults"}]
  LOADK R6 K20 ["UploadSuccessAsset"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K59 ["my/path/UploadSuccessAsset"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K38 ["Scene"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 11
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K60 ["Imported"]
  SETTABLEKS R6 R5 K34 ["state"]
  DUPTABLE R6 K65 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K61 ["AssetIds"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K62 ["ErrorMessages"]
  LOADK R7 K66 ["test"]
  SETTABLEKS R7 R6 K63 ["Instance"]
  LOADB R7 1
  SETTABLEKS R7 R6 K64 ["Succeeded"]
  SETTABLEKS R6 R5 K57 ["uploadResults"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["UploadSuccessAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K58 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state", "uploadResults"}]
  LOADK R6 K21 ["UploadFailedAsset"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 0
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K67 ["my/path/UploadFailedAsset"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K38 ["Scene"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 12
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K60 ["Imported"]
  SETTABLEKS R6 R5 K34 ["state"]
  DUPTABLE R6 K65 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K61 ["AssetIds"]
  NEWTABLE R7 1 0
  LOADK R8 K68 ["Test Error Message"]
  SETTABLEKS R8 R7 K69 ["Asset1"]
  SETTABLEKS R7 R6 K62 ["ErrorMessages"]
  LOADK R7 K66 ["test"]
  SETTABLEKS R7 R6 K63 ["Instance"]
  LOADB R7 0
  SETTABLEKS R7 R6 K64 ["Succeeded"]
  SETTABLEKS R6 R5 K57 ["uploadResults"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["UploadFailedAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K35 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
  LOADK R6 K10 ["Cube"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K36 ["my/path/Cube"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K38 ["Scene"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 13
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K70 ["Parsing"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["ParsingAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K35 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
  LOADK R6 K10 ["Cube"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K36 ["my/path/Cube"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K38 ["Scene"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 14
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K71 ["Importing"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K23 ["ImportingAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K35 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
  LOADK R6 K72 ["Audio"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K73 ["my/path/Audio.mp3"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K72 ["Audio"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 15
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["AudioAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K35 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
  LOADK R6 K74 ["Video"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K75 ["my/path/Video.mp4"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K74 ["Video"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 16
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K25 ["VideoAsset"]
  GETTABLEKS R4 R2 K28 ["new"]
  DUPTABLE R5 K35 [{"assetName", "enabled", "filepath", "fileType", "sortOrder", "state"}]
  LOADK R6 K76 ["Image"]
  SETTABLEKS R6 R5 K29 ["assetName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["enabled"]
  LOADK R6 K77 ["my/path/Image.png"]
  SETTABLEKS R6 R5 K31 ["filepath"]
  GETTABLEKS R7 R1 K37 ["FileType"]
  GETTABLEKS R6 R7 K76 ["Image"]
  SETTABLEKS R6 R5 K32 ["fileType"]
  LOADN R6 17
  SETTABLEKS R6 R5 K33 ["sortOrder"]
  GETTABLEKS R7 R1 K39 ["SessionState"]
  GETTABLEKS R6 R7 K40 ["Parsed"]
  SETTABLEKS R6 R5 K34 ["state"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K26 ["ImageAsset"]
  RETURN R3 1
