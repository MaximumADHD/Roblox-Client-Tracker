PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useState"]
  LOADNIL R1
  CALL R0 1 2
  GETUPVAL R2 1
  MOVE R3 R0
  LOADK R4 K1 ["AbsolutePosition"]
  GETIMPORT R5 K4 [Vector2.new]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 -1
  CALL R2 -1 1
  GETUPVAL R3 1
  MOVE R4 R0
  LOADK R5 K5 ["AbsoluteSize"]
  GETIMPORT R6 K4 [Vector2.new]
  LOADN R7 0
  LOADN R8 0
  CALL R6 2 -1
  CALL R3 -1 1
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFEQKS R6 K2 ["Vector2"] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K8 [+4]
  LOADK R6 K8 ["Expected absolutePosition to be a Vector2"]
  GETIMPORT R4 K10 [assert]
  CALL R4 2 0
  FASTCALL1 TYPEOF R3 [+3]
  MOVE R7 R3
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFEQKS R6 K2 ["Vector2"] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K11 [+4]
  LOADK R6 K11 ["Expected absoluteSize to be a Vector2"]
  GETIMPORT R4 K10 [assert]
  CALL R4 2 0
  DUPTABLE R4 K15 [{"setFrame", "absolutePosition", "absoluteSize"}]
  SETTABLEKS R1 R4 K12 ["setFrame"]
  SETTABLEKS R2 R4 K13 ["absolutePosition"]
  SETTABLEKS R3 R4 K14 ["absoluteSize"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Hooks"]
  GETTABLEKS R3 R4 K9 ["useProperty"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
