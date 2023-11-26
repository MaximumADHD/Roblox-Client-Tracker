PROTO_0:
  GETTABLEKS R5 R0 K0 ["getMouseTarget"]
  JUMPIFEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["You accidentally called schema:addUndoWaypoint intead of schema.addUndoWaypoint"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  GETTABLEKS R3 R0 K4 ["addWaypoint"]
  MOVE R4 R1
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
