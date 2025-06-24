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
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K12 ["Flags"]
  GETTABLEKS R6 R7 K13 ["getFFlagImportQueuePerSessionState"]
  CALL R5 1 1
  GETIMPORT R6 K16 [utf8.char]
  LOADN R7 38
  CALL R6 1 1
  LOADNIL R7
  MOVE R8 R5
  CALL R8 0 1
  JUMPIFNOT R8 [+59]
  GETIMPORT R8 K19 [table.freeze]
  DUPTABLE R9 K37 [{"assetName", "creatorId", "currentPreset", "enabled", "errors", "uploadErrorsExpanded", "filepath", "importDataError", "progressValue", "settingsChanged", "session", "sortOrder", "state", "uploaded", "uploadResults", "validSession", "warnings"}]
  LOADK R10 K38 [""]
  SETTABLEKS R10 R9 K20 ["assetName"]
  LOADN R10 0
  SETTABLEKS R10 R9 K21 ["creatorId"]
  SETTABLEKS R6 R9 K22 ["currentPreset"]
  LOADB R10 0
  SETTABLEKS R10 R9 K23 ["enabled"]
  LOADN R10 0
  SETTABLEKS R10 R9 K24 ["errors"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K25 ["uploadErrorsExpanded"]
  LOADK R10 K38 [""]
  SETTABLEKS R10 R9 K26 ["filepath"]
  LOADB R10 0
  SETTABLEKS R10 R9 K27 ["importDataError"]
  LOADN R10 0
  SETTABLEKS R10 R9 K28 ["progressValue"]
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["settingsChanged"]
  LOADNIL R10
  SETTABLEKS R10 R9 K30 ["session"]
  LOADN R10 255
  SETTABLEKS R10 R9 K31 ["sortOrder"]
  GETTABLEKS R11 R4 K39 ["SessionState"]
  GETTABLEKS R10 R11 K40 ["Invalid"]
  SETTABLEKS R10 R9 K32 ["state"]
  LOADB R10 0
  SETTABLEKS R10 R9 K33 ["uploaded"]
  SETTABLEKS R3 R9 K34 ["uploadResults"]
  LOADB R10 0
  SETTABLEKS R10 R9 K35 ["validSession"]
  LOADN R10 0
  SETTABLEKS R10 R9 K36 ["warnings"]
  CALL R8 1 1
  MOVE R7 R8
  JUMP [+58]
  GETIMPORT R8 K19 [table.freeze]
  DUPTABLE R9 K37 [{"assetName", "creatorId", "currentPreset", "enabled", "errors", "uploadErrorsExpanded", "filepath", "importDataError", "progressValue", "settingsChanged", "session", "sortOrder", "state", "uploaded", "uploadResults", "validSession", "warnings"}]
  LOADK R10 K38 [""]
  SETTABLEKS R10 R9 K20 ["assetName"]
  LOADN R10 255
  SETTABLEKS R10 R9 K21 ["creatorId"]
  SETTABLEKS R6 R9 K22 ["currentPreset"]
  LOADB R10 0
  SETTABLEKS R10 R9 K23 ["enabled"]
  LOADN R10 0
  SETTABLEKS R10 R9 K24 ["errors"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K25 ["uploadErrorsExpanded"]
  LOADK R10 K38 [""]
  SETTABLEKS R10 R9 K26 ["filepath"]
  LOADB R10 0
  SETTABLEKS R10 R9 K27 ["importDataError"]
  LOADN R10 0
  SETTABLEKS R10 R9 K28 ["progressValue"]
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["settingsChanged"]
  LOADNIL R10
  SETTABLEKS R10 R9 K30 ["session"]
  LOADN R10 255
  SETTABLEKS R10 R9 K31 ["sortOrder"]
  GETTABLEKS R11 R4 K39 ["SessionState"]
  GETTABLEKS R10 R11 K40 ["Invalid"]
  SETTABLEKS R10 R9 K32 ["state"]
  LOADB R10 0
  SETTABLEKS R10 R9 K33 ["uploaded"]
  SETTABLEKS R3 R9 K34 ["uploadResults"]
  LOADB R10 0
  SETTABLEKS R10 R9 K35 ["validSession"]
  LOADN R10 0
  SETTABLEKS R10 R9 K36 ["warnings"]
  CALL R8 1 1
  MOVE R7 R8
  NEWTABLE R8 4 0
  NEWCLOSURE R9 P0
  CAPTURE REF R7
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K41 ["new"]
  DUPCLOSURE R9 K42 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K43 ["update"]
  DUPCLOSURE R9 K44 [PROTO_2]
  SETTABLEKS R9 R8 K45 ["compare"]
  CLOSEUPVALS R7
  RETURN R8 1
