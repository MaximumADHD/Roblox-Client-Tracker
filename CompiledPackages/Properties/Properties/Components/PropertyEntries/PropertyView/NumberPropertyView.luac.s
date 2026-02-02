PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["beginEditingAsync"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setPart"]
  LOADK R2 K1 ["value"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["finishEditing"]
  GETIMPORT R1 K4 [Enum.FinishRecordingOperation.Commit]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R4 R0 K0 ["info"]
  GETTABLEKS R3 R4 K1 ["parts"]
  GETTABLEKS R2 R3 K2 ["value"]
  GETTABLEKS R1 R2 K2 ["value"]
  GETTABLEKS R4 R0 K0 ["info"]
  GETTABLEKS R3 R4 K3 ["readonly"]
  NOT R2 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K11 [{"value", "onFocusGained", "onChange", "onFocusLost", "step", "multiple", "editable"}]
  SETTABLEKS R1 R5 K2 ["value"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K5 ["onFocusGained"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K6 ["onChange"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K7 ["onFocusLost"]
  LOADN R6 1
  SETTABLEKS R6 R5 K8 ["step"]
  GETTABLEKS R9 R0 K0 ["info"]
  GETTABLEKS R8 R9 K1 ["parts"]
  GETTABLEKS R7 R8 K2 ["value"]
  GETTABLEKS R6 R7 K9 ["multiple"]
  SETTABLEKS R6 R5 K9 ["multiple"]
  SETTABLEKS R2 R5 K10 ["editable"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["PropertyEditorTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["NumberPartInput"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
