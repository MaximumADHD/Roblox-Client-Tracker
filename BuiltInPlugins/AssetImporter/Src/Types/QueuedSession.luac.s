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
  GETTABLEKS R6 R7 K13 ["getFFlagImporterAdHocDialogue"]
  CALL R5 1 1
  GETIMPORT R6 K16 [table.freeze]
  DUPTABLE R7 K34 [{"assetName", "creatorId", "currentPreset", "enabled", "errors", "uploadErrorsExpanded", "filepath", "importDataError", "progressValue", "settingsChanged", "session", "sortOrder", "state", "uploaded", "uploadResults", "validSession", "warnings"}]
  LOADK R8 K35 [""]
  SETTABLEKS R8 R7 K17 ["assetName"]
  LOADN R8 0
  SETTABLEKS R8 R7 K18 ["creatorId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K19 ["currentPreset"]
  LOADB R8 0
  SETTABLEKS R8 R7 K20 ["enabled"]
  LOADN R8 0
  SETTABLEKS R8 R7 K21 ["errors"]
  MOVE R9 R5
  CALL R9 0 1
  JUMPIFNOT R9 [+2]
  LOADNIL R8
  JUMP [+2]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K22 ["uploadErrorsExpanded"]
  LOADK R8 K35 [""]
  SETTABLEKS R8 R7 K23 ["filepath"]
  LOADB R8 0
  SETTABLEKS R8 R7 K24 ["importDataError"]
  LOADN R8 0
  SETTABLEKS R8 R7 K25 ["progressValue"]
  LOADB R8 0
  SETTABLEKS R8 R7 K26 ["settingsChanged"]
  LOADNIL R8
  SETTABLEKS R8 R7 K27 ["session"]
  LOADN R8 255
  SETTABLEKS R8 R7 K28 ["sortOrder"]
  GETTABLEKS R9 R4 K36 ["SessionState"]
  GETTABLEKS R8 R9 K37 ["Invalid"]
  SETTABLEKS R8 R7 K29 ["state"]
  LOADB R8 0
  SETTABLEKS R8 R7 K30 ["uploaded"]
  SETTABLEKS R3 R7 K31 ["uploadResults"]
  LOADB R8 0
  SETTABLEKS R8 R7 K32 ["validSession"]
  LOADN R8 0
  SETTABLEKS R8 R7 K33 ["warnings"]
  CALL R6 1 1
  NEWTABLE R7 4 0
  DUPCLOSURE R8 K38 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K39 ["new"]
  DUPCLOSURE R8 K40 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K41 ["update"]
  DUPCLOSURE R8 K42 [PROTO_2]
  SETTABLEKS R8 R7 K43 ["compare"]
  RETURN R7 1
