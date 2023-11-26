PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["RootInstance"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R5 R1 K1 ["Status"]
  GETTABLEKS R4 R5 K3 ["FaceControlsEditorEnabled"]
  NOT R3 R4
  GETUPVAL R6 0
  MOVE R7 R3
  CALL R6 1 -1
  NAMECALL R4 R0 K4 ["dispatch"]
  CALL R4 -1 0
  JUMPIFNOT R3 [+14]
  GETUPVAL R4 1
  LOADK R6 K5 ["onFaceControlsEditorEnabled"]
  NAMECALL R4 R4 K6 ["report"]
  CALL R4 2 0
  GETUPVAL R6 2
  GETIMPORT R7 K9 [os.time]
  CALL R7 0 -1
  CALL R6 -1 -1
  NAMECALL R4 R0 K4 ["dispatch"]
  CALL R4 -1 0
  RETURN R0 0
  GETUPVAL R4 1
  LOADK R6 K10 ["onFaceControlsEditorDisabled"]
  GETIMPORT R8 K9 [os.time]
  CALL R8 0 1
  GETTABLEKS R10 R1 K1 ["Status"]
  GETTABLEKS R9 R10 K11 ["FaceControlsEditorOpenedTimestamp"]
  SUB R7 R8 R9
  NAMECALL R4 R4 K6 ["report"]
  CALL R4 3 0
  GETTABLEKS R4 R1 K1 ["Status"]
  LOADNIL R5
  SETTABLEKS R5 R4 K11 ["FaceControlsEditorOpenedTimestamp"]
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["SetFaceControlsEditorEnabled"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Actions"]
  GETTABLEKS R3 R4 K9 ["SetFaceControlsEditorOpenedTimestamp"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
