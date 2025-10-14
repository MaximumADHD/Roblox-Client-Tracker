PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["create"]
  LOADB R1 0
  CALL R0 1 2
  DUPTABLE R2 K3 [{"instancePickerActiveChanged", "instancePickerActiveObservable"}]
  SETTABLEKS R1 R2 K1 ["instancePickerActiveChanged"]
  SETTABLEKS R0 R2 K2 ["instancePickerActiveObservable"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Observable"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
