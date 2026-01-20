PROTO_0:
  ORK R0 R0 K0 ["blender-cube-default.fbx"]
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["This function can only be called in a FTF test runner"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["Plugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  LOADK R4 K8 ["FTFUtil"]
  NAMECALL R2 R1 K9 ["GetPluginComponent"]
  CALL R2 2 1
  LOADK R4 K10 ["%*/AssetImport/AssetImportTest.Lib/resources/%*"]
  NAMECALL R6 R2 K11 ["ClientFolderPathAsync"]
  CALL R6 1 1
  MOVE R7 R0
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["isFTF"]
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
