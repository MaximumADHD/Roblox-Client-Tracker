PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+36]
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Clone"]
  CALL R1 1 1
  LOADK R4 K1 ["KeyframeSequence"]
  NAMECALL R2 R1 K2 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+20]
  NAMECALL R2 R0 K3 ["getState"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K4 ["assetImportSession"]
  NAMECALL R4 R3 K5 ["GetImportTree"]
  CALL R4 1 1
  NAMECALL R5 R4 K6 ["GetPreview"]
  CALL R5 1 1
  GETIMPORT R6 K9 [Instance.new]
  LOADK R7 K10 ["WorldModel"]
  CALL R6 1 1
  SETTABLEKS R5 R1 K11 ["Parent"]
  SETTABLEKS R6 R5 K11 ["Parent"]
  MOVE R1 R6
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R0 K12 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0
  GETUPVAL R3 1
  LOADNIL R4
  CALL R3 1 -1
  NAMECALL R1 R0 K12 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["SetPreviewInstance"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_1]
  CAPTURE VAL R1
  RETURN R2 1
