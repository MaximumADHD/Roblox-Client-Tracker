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
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K9 ["Flags"]
  GETTABLEKS R4 R5 K10 ["getFFlagImportQueuePerSessionState"]
  CALL R3 1 1
  LOADNIL R4
  MOVE R5 R3
  CALL R5 0 1
  JUMPIFNOT R5 [+387]
  DUPTABLE R5 K26 [{"Empty", "Cube", "Sphere", "Octahedron", "Dodecahedron", "Rhombicosidodecahedron", "RigAsset", "EnvironmentalAsset", "InvalidAsset", "HasImportDataError", "HasImportDataWarnings", "UploadSuccessAsset", "UploadFailedAsset", "ParsingAsset", "ImportingAsset"}]
  GETTABLEKS R6 R2 K27 ["new"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K11 ["Empty"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K12 ["Cube"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K34 ["my/path/Cube"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 1
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["Cube"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K13 ["Sphere"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K37 ["my/path/Sphere"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 2
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["Sphere"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K14 ["Octahedron"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K38 ["my/path/Octahedron"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 3
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["Octahedron"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K15 ["Dodecahedron"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K39 ["my/path/Dodecahedron"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 4
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["Dodecahedron"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K16 ["Rhombicosidodecahedron"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K40 ["my/path/Rhombicosidodecahedron"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 5
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["Rhombicosidodecahedron"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K17 ["RigAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K41 ["my/path/RigAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 6
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["RigAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K18 ["EnvironmentalAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K42 ["my/path/EnvironmentalAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 7
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["EnvironmentalAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K19 ["InvalidAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K43 ["my/path/InvalidAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 248
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K44 ["Invalid"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["InvalidAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K47 [{"assetName", "enabled", "filepath", "sortOrder", "state", "importDataError", "errors"}]
  LOADK R8 K20 ["HasImportDataError"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K48 ["my/path/HasImportDataError"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 9
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  LOADB R8 1
  SETTABLEKS R8 R7 K45 ["importDataError"]
  LOADN R8 2
  SETTABLEKS R8 R7 K46 ["errors"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["HasImportDataError"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K50 [{"assetName", "enabled", "filepath", "sortOrder", "state", "warnings"}]
  LOADK R8 K21 ["HasImportDataWarnings"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K51 ["my/path/HasImportDataWarnings"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 10
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K36 ["Parsed"]
  SETTABLEKS R8 R7 K32 ["state"]
  LOADN R8 2
  SETTABLEKS R8 R7 K49 ["warnings"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["HasImportDataWarnings"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K53 [{"assetName", "enabled", "filepath", "sortOrder", "state", "uploadResults"}]
  LOADK R8 K22 ["UploadSuccessAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K54 ["my/path/UploadSuccessAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 11
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K55 ["Imported"]
  SETTABLEKS R8 R7 K32 ["state"]
  DUPTABLE R8 K60 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K56 ["AssetIds"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K57 ["ErrorMessages"]
  LOADK R9 K61 ["test"]
  SETTABLEKS R9 R8 K58 ["Instance"]
  LOADB R9 1
  SETTABLEKS R9 R8 K59 ["Succeeded"]
  SETTABLEKS R8 R7 K52 ["uploadResults"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K22 ["UploadSuccessAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K53 [{"assetName", "enabled", "filepath", "sortOrder", "state", "uploadResults"}]
  LOADK R8 K23 ["UploadFailedAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K62 ["my/path/UploadFailedAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 12
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K55 ["Imported"]
  SETTABLEKS R8 R7 K32 ["state"]
  DUPTABLE R8 K60 [{"AssetIds", "ErrorMessages", "Instance", "Succeeded"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K56 ["AssetIds"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K57 ["ErrorMessages"]
  LOADK R9 K61 ["test"]
  SETTABLEKS R9 R8 K58 ["Instance"]
  LOADB R9 0
  SETTABLEKS R9 R8 K59 ["Succeeded"]
  SETTABLEKS R8 R7 K52 ["uploadResults"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K23 ["UploadFailedAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K12 ["Cube"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K34 ["my/path/Cube"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 13
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K63 ["Parsing"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K24 ["ParsingAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K33 [{"assetName", "enabled", "filepath", "sortOrder", "state"}]
  LOADK R8 K12 ["Cube"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K34 ["my/path/Cube"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 14
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  GETTABLEKS R9 R1 K35 ["SessionState"]
  GETTABLEKS R8 R9 K64 ["Importing"]
  SETTABLEKS R8 R7 K32 ["state"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K25 ["ImportingAsset"]
  MOVE R4 R5
  RETURN R4 1
  DUPTABLE R5 K68 [{"Empty", "Cube", "Sphere", "Octahedron", "Dodecahedron", "Rhombicosidodecahedron", "RigAsset", "EnvironmentalAsset", "InvalidAsset", "EnabledInvalidAsset", "HasImportDataError", "DisabledImportDataError", "UploadedAsset"}]
  GETTABLEKS R6 R2 K27 ["new"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K11 ["Empty"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K12 ["Cube"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K34 ["my/path/Cube"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 1
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K12 ["Cube"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K13 ["Sphere"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K37 ["my/path/Sphere"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 2
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["Sphere"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K14 ["Octahedron"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K38 ["my/path/Octahedron"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 3
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["Octahedron"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K15 ["Dodecahedron"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K39 ["my/path/Dodecahedron"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 4
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["Dodecahedron"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K16 ["Rhombicosidodecahedron"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K40 ["my/path/Rhombicosidodecahedron"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 5
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["Rhombicosidodecahedron"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K17 ["RigAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K41 ["my/path/RigAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 6
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["RigAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K18 ["EnvironmentalAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K42 ["my/path/EnvironmentalAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 7
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["EnvironmentalAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K19 ["InvalidAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K43 ["my/path/InvalidAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 248
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 0
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["InvalidAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K70 [{"assetName", "enabled", "filepath", "sortOrder", "validSession"}]
  LOADK R8 K65 ["EnabledInvalidAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K71 ["my/path/EnabledInvalidAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 9
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 0
  SETTABLEKS R8 R7 K69 ["validSession"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K65 ["EnabledInvalidAsset"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K72 [{"assetName", "enabled", "filepath", "sortOrder", "validSession", "importDataError"}]
  LOADK R8 K20 ["HasImportDataError"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 1
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K48 ["my/path/HasImportDataError"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 10
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  LOADB R8 1
  SETTABLEKS R8 R7 K45 ["importDataError"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["HasImportDataError"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K72 [{"assetName", "enabled", "filepath", "sortOrder", "validSession", "importDataError"}]
  LOADK R8 K66 ["DisabledImportDataError"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K73 ["my/path/DisabledImportDataError"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 11
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K69 ["validSession"]
  LOADB R8 1
  SETTABLEKS R8 R7 K45 ["importDataError"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K66 ["DisabledImportDataError"]
  GETTABLEKS R6 R2 K27 ["new"]
  DUPTABLE R7 K75 [{"assetName", "enabled", "filepath", "sortOrder", "validSession", "uploaded"}]
  LOADK R8 K67 ["UploadedAsset"]
  SETTABLEKS R8 R7 K28 ["assetName"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enabled"]
  LOADK R8 K76 ["my/path/UploadedAsset"]
  SETTABLEKS R8 R7 K30 ["filepath"]
  LOADN R8 12
  SETTABLEKS R8 R7 K31 ["sortOrder"]
  LOADB R8 0
  SETTABLEKS R8 R7 K69 ["validSession"]
  LOADB R8 1
  SETTABLEKS R8 R7 K74 ["uploaded"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K67 ["UploadedAsset"]
  MOVE R4 R5
  RETURN R4 1
