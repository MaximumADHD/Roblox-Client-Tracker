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
  GETTABLEKS R3 R0 K0 ["sortOrder"]
  GETTABLEKS R4 R1 K0 ["sortOrder"]
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
  DUPTABLE R6 K32 [{"assetName", "fileType", "creatorId", "currentPreset", "enabled", "errors", "filepath", "importDataError", "progressValue", "settingsChanged", "session", "sortOrder", "state", "uploaded", "uploadResults", "validSession", "warnings"}]
  LOADK R7 K33 [""]
  SETTABLEKS R7 R6 K15 ["assetName"]
  GETTABLEKS R8 R4 K34 ["FileType"]
  GETTABLEKS R7 R8 K9 ["None"]
  SETTABLEKS R7 R6 K16 ["fileType"]
  LOADN R7 0
  SETTABLEKS R7 R6 K17 ["creatorId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K18 ["currentPreset"]
  LOADB R7 0
  SETTABLEKS R7 R6 K19 ["enabled"]
  LOADN R7 0
  SETTABLEKS R7 R6 K20 ["errors"]
  LOADK R7 K33 [""]
  SETTABLEKS R7 R6 K21 ["filepath"]
  LOADB R7 0
  SETTABLEKS R7 R6 K22 ["importDataError"]
  LOADN R7 0
  SETTABLEKS R7 R6 K23 ["progressValue"]
  LOADB R7 0
  SETTABLEKS R7 R6 K24 ["settingsChanged"]
  LOADNIL R7
  SETTABLEKS R7 R6 K25 ["session"]
  LOADN R7 255
  SETTABLEKS R7 R6 K26 ["sortOrder"]
  GETTABLEKS R8 R4 K35 ["SessionState"]
  GETTABLEKS R7 R8 K36 ["Invalid"]
  SETTABLEKS R7 R6 K27 ["state"]
  LOADB R7 0
  SETTABLEKS R7 R6 K28 ["uploaded"]
  SETTABLEKS R3 R6 K29 ["uploadResults"]
  LOADB R7 0
  SETTABLEKS R7 R6 K30 ["validSession"]
  LOADN R7 0
  SETTABLEKS R7 R6 K31 ["warnings"]
  CALL R5 1 1
  NEWTABLE R6 4 0
  DUPCLOSURE R7 K37 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K38 ["new"]
  DUPCLOSURE R7 K39 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K40 ["update"]
  DUPCLOSURE R7 K41 [PROTO_2]
  SETTABLEKS R7 R6 K42 ["compare"]
  RETURN R6 1
