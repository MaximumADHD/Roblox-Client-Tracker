PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["beginEditingAsync"]
  CALL R1 0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["setPart"]
  LOADK R2 K2 ["value"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["finishEditing"]
  GETIMPORT R2 K7 [Enum.FinishRecordingOperation.Commit]
  CALL R1 1 0
  LOADB R1 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["info"]
  GETTABLEKS R3 R4 K1 ["parts"]
  GETTABLEKS R2 R3 K2 ["value"]
  GETTABLEKS R1 R2 K3 ["multiple"]
  JUMPIFNOT R1 [+2]
  LOADB R2 1
  JUMP [+8]
  GETTABLEKS R5 R0 K0 ["info"]
  GETTABLEKS R4 R5 K1 ["parts"]
  GETTABLEKS R3 R4 K2 ["value"]
  GETTABLEKS R2 R3 K2 ["value"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K11 [{"isChecked", "isIndeterminate", "label", "onActivated", "isDisabled", "size"}]
  SETTABLEKS R2 R5 K5 ["isChecked"]
  SETTABLEKS R1 R5 K6 ["isIndeterminate"]
  LOADK R6 K12 [""]
  SETTABLEKS R6 R5 K7 ["label"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K8 ["onActivated"]
  GETTABLEKS R7 R0 K0 ["info"]
  GETTABLEKS R6 R7 K13 ["readonly"]
  SETTABLEKS R6 R5 K9 ["isDisabled"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["XSmall"]
  SETTABLEKS R6 R5 K10 ["size"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["PropertyEditorTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K10 ["Checkbox"]
  GETTABLEKS R6 R1 K11 ["Enums"]
  GETTABLEKS R5 R6 K12 ["InputSize"]
  DUPCLOSURE R6 K13 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
