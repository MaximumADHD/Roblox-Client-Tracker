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
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["joinDeep"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K13 [table.freeze]
  DUPTABLE R5 K26 [{"assetName", "currentPreset", "enabled", "errors", "filepath", "importDataError", "progressValue", "session", "timestamp", "uploaded", "validSession", "warnings"}]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K14 ["assetName"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K15 ["currentPreset"]
  LOADB R6 0
  SETTABLEKS R6 R5 K16 ["enabled"]
  LOADN R6 0
  SETTABLEKS R6 R5 K17 ["errors"]
  LOADK R6 K27 [""]
  SETTABLEKS R6 R5 K18 ["filepath"]
  LOADB R6 0
  SETTABLEKS R6 R5 K19 ["importDataError"]
  LOADN R6 0
  SETTABLEKS R6 R5 K20 ["progressValue"]
  LOADNIL R6
  SETTABLEKS R6 R5 K21 ["session"]
  LOADN R6 0
  SETTABLEKS R6 R5 K22 ["timestamp"]
  LOADB R6 0
  SETTABLEKS R6 R5 K23 ["uploaded"]
  LOADB R6 0
  SETTABLEKS R6 R5 K24 ["validSession"]
  LOADN R6 0
  SETTABLEKS R6 R5 K25 ["warnings"]
  CALL R4 1 1
  NEWTABLE R5 4 0
  DUPCLOSURE R6 K28 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K29 ["new"]
  DUPCLOSURE R6 K30 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K31 ["update"]
  DUPCLOSURE R6 K32 [PROTO_2]
  SETTABLEKS R6 R5 K33 ["compare"]
  RETURN R5 1
