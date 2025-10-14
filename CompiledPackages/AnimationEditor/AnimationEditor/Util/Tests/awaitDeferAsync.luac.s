PROTO_0:
  GETIMPORT R0 K2 [task.defer]
  GETIMPORT R1 K5 [coroutine.resume]
  GETIMPORT R2 K7 [coroutine.running]
  CALL R2 0 -1
  CALL R0 -1 0
  GETIMPORT R0 K9 [coroutine.yield]
  CALL R0 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
