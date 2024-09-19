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
  GETTABLEKS R4 R0 K0 ["timestamp"]
  GETTABLEKS R3 R4 K1 ["UnixTimestampMillis"]
  GETTABLEKS R5 R1 K0 ["timestamp"]
  GETTABLEKS R4 R5 K1 ["UnixTimestampMillis"]
  JUMPIFLT R4 R3 [+2]
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
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["joinDeep"]
  GETTABLEKS R3 R1 K9 ["None"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K14 [table.freeze]
  DUPTABLE R6 K28 [{"assetName", "currentPreset", "enabled", "errors", "filepath", "importDataError", "progressValue", "session", "timestamp", "uploaded", "uploadResults", "validSession", "warnings"}]
  LOADK R7 K29 [""]
  SETTABLEKS R7 R6 K15 ["assetName"]
  LOADK R7 K29 [""]
  SETTABLEKS R7 R6 K16 ["currentPreset"]
  LOADB R7 0
  SETTABLEKS R7 R6 K17 ["enabled"]
  LOADN R7 0
  SETTABLEKS R7 R6 K18 ["errors"]
  LOADK R7 K29 [""]
  SETTABLEKS R7 R6 K19 ["filepath"]
  LOADB R7 0
  SETTABLEKS R7 R6 K20 ["importDataError"]
  LOADN R7 0
  SETTABLEKS R7 R6 K21 ["progressValue"]
  LOADNIL R7
  SETTABLEKS R7 R6 K22 ["session"]
  GETIMPORT R7 K32 [DateTime.now]
  CALL R7 0 1
  SETTABLEKS R7 R6 K23 ["timestamp"]
  LOADB R7 0
  SETTABLEKS R7 R6 K24 ["uploaded"]
  SETTABLEKS R3 R6 K25 ["uploadResults"]
  LOADB R7 0
  SETTABLEKS R7 R6 K26 ["validSession"]
  LOADN R7 0
  SETTABLEKS R7 R6 K27 ["warnings"]
  CALL R5 1 1
  NEWTABLE R6 4 0
  DUPCLOSURE R7 K33 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K34 ["new"]
  DUPCLOSURE R7 K35 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K36 ["update"]
  DUPCLOSURE R7 K37 [PROTO_2]
  SETTABLEKS R7 R6 K38 ["compare"]
  RETURN R6 1
