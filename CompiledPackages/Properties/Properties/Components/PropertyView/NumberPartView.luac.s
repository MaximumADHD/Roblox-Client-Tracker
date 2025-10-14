PROTO_0:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [tonumber]
  CALL R1 1 1
  JUMPIFNOT R1 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["setPart"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["part"]
  MOVE R4 R1
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["finishEditing"]
  GETIMPORT R3 K8 [Enum.FinishRecordingOperation.Commit]
  CALL R2 1 0
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["finishEditing"]
  GETIMPORT R3 K10 [Enum.FinishRecordingOperation.Cancel]
  CALL R2 1 0
  LOADB R2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["beginEditingAsync"]
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"text", "textEditable", "finishEditing", "beginEditingAsync", "position", "size", "chipColor"}]
  GETTABLEKS R5 R0 K9 ["value"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K11 [tostring]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["text"]
  GETTABLEKS R4 R0 K12 ["editable"]
  SETTABLEKS R4 R3 K2 ["textEditable"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K3 ["finishEditing"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K4 ["beginEditingAsync"]
  GETTABLEKS R4 R0 K5 ["position"]
  SETTABLEKS R4 R3 K5 ["position"]
  GETTABLEKS R4 R0 K6 ["size"]
  SETTABLEKS R4 R3 K6 ["size"]
  GETTABLEKS R4 R0 K13 ["color"]
  SETTABLEKS R4 R3 K7 ["chipColor"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["EditorTextbox"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
