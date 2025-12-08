PROTO_0:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["warnOnce"]
  LOADK R1 K1 ["Roact.reify has been renamed to Roact.mount and will be removed in a future release.
Check the call to Roact.reify at:
"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["mountVirtualTree"]
  GETVARARGS R1 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_1:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["warnOnce"]
  LOADK R1 K1 ["Roact.teardown has been renamed to Roact.unmount and will be removed in a future release.
Check the call to Roact.teardown at:
"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["unmountVirtualTree"]
  GETVARARGS R1 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_2:
  PREPVARARGS 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["warnOnce"]
  LOADK R1 K1 ["Roact.reconcile has been renamed to Roact.update and will be removed in a future release.
Check the call to Roact.reconcile at:
"]
  CALL R0 1 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["updateVirtualTree"]
  GETVARARGS R1 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_3:
  NEWTABLE R1 4 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K0 ["reify"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K1 ["teardown"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K2 ["reconcile"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Logging"]
  CALL R0 1 1
  DUPCLOSURE R1 K6 [PROTO_3]
  CAPTURE VAL R0
  RETURN R1 1
