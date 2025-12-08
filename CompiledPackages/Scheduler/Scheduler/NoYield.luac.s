PROTO_0:
  PREPVARARGS 2
  JUMPIF R1 [+23]
  GETVARARGS R2 1
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K2 ["string"] [+11]
  GETIMPORT R3 K4 [error]
  GETIMPORT R4 K7 [debug.traceback]
  MOVE R5 R0
  MOVE R6 R2
  CALL R4 2 1
  LOADN R5 3
  CALL R3 2 0
  JUMP [+5]
  GETIMPORT R3 K4 [error]
  MOVE R4 R2
  LOADN R5 3
  CALL R3 2 0
  GETIMPORT R2 K10 [coroutine.status]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFEQKS R2 K11 ["dead"] [+10]
  GETIMPORT R2 K4 [error]
  GETIMPORT R3 K7 [debug.traceback]
  MOVE R4 R0
  LOADK R5 K12 ["Yielding is not currently supported inside components or hooks. Move this yield into a new thread with `task.spawn` or `task.defer`."]
  CALL R3 2 1
  LOADN R4 3
  CALL R2 2 0
  GETVARARGS R2 -1
  RETURN R2 -1

PROTO_1:
  PREPVARARGS 1
  GETIMPORT R1 K2 [coroutine.create]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 0
  MOVE R3 R1
  GETIMPORT R4 K4 [coroutine.resume]
  MOVE R5 R1
  GETVARARGS R6 -1
  CALL R4 -1 -1
  CALL R2 -1 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  CAPTURE VAL R0
  RETURN R1 1
