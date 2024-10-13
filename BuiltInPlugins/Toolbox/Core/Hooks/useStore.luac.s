PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["useContext"]
  GETUPVAL R1 1
  CALL R0 1 1
  FASTCALL2K ASSERT R0 K1 [+5]
  MOVE R2 R0
  LOADK R3 K1 ["useDispatch and useSelector can only be called from a descendant of the Rodux Store Provider"]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["StoreContext"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
