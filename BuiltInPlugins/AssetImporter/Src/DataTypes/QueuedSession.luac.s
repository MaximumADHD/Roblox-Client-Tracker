PROTO_0:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  GETIMPORT R1 K2 [table.clone]
  GETUPVAL R2 0
  CALL R1 1 1
  GETIMPORT R2 K4 [table.freeze]
  GETUPVAL R3 1
  MOVE R4 R1
  MOVE R5 R0
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_1:
  GETIMPORT R2 K2 [table.freeze]
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R3 R0 K0 ["timestamp"]
  GETTABLEKS R4 R1 K0 ["timestamp"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagAssetImporterPackageMigration"]
  CALL R2 1 1
  MOVE R4 R2
  CALL R4 0 1
  JUMPIFNOT R4 [+8]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Dash"]
  CALL R3 1 1
  JUMP [+2]
  GETTABLEKS R3 R1 K11 ["Dash"]
  GETTABLEKS R4 R3 K12 ["joinDeep"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K16 [table.freeze]
  DUPTABLE R7 K29 [{"assetName", "currentPreset", "enabled", "errors", "filepath", "importDataError", "progressValue", "session", "timestamp", "uploaded", "validSession", "warnings"}]
  LOADK R8 K30 [""]
  SETTABLEKS R8 R7 K17 ["assetName"]
  LOADK R8 K30 [""]
  SETTABLEKS R8 R7 K18 ["currentPreset"]
  LOADB R8 0
  SETTABLEKS R8 R7 K19 ["enabled"]
  LOADN R8 0
  SETTABLEKS R8 R7 K20 ["errors"]
  LOADK R8 K30 [""]
  SETTABLEKS R8 R7 K21 ["filepath"]
  LOADB R8 0
  SETTABLEKS R8 R7 K22 ["importDataError"]
  LOADN R8 0
  SETTABLEKS R8 R7 K23 ["progressValue"]
  LOADNIL R8
  SETTABLEKS R8 R7 K24 ["session"]
  LOADN R8 0
  SETTABLEKS R8 R7 K25 ["timestamp"]
  LOADB R8 0
  SETTABLEKS R8 R7 K26 ["uploaded"]
  LOADB R8 0
  SETTABLEKS R8 R7 K27 ["validSession"]
  LOADN R8 0
  SETTABLEKS R8 R7 K28 ["warnings"]
  CALL R6 1 1
  NEWTABLE R7 4 0
  DUPCLOSURE R8 K31 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K32 ["new"]
  DUPCLOSURE R8 K33 [PROTO_1]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K34 ["update"]
  DUPCLOSURE R8 K35 [PROTO_2]
  SETTABLEKS R8 R7 K36 ["compare"]
  RETURN R7 1
