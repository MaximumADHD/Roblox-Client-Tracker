PROTO_0:
  GETUPVAL R4 0
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  GETUPVAL R9 1
  NAMECALL R4 R4 K0 ["GetTextSize"]
  CALL R4 5 1
  GETTABLEKS R3 R4 K1 ["X"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TextService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 1 0
  GETIMPORT R2 K6 [Vector2.new]
  LOADK R3 K7 [1000000]
  LOADN R4 50
  CALL R2 2 1
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R3 R1 K9 ["getTextWidth"]
  RETURN R1 1
