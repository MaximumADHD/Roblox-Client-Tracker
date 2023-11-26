PROTO_0:
  GETTABLEKS R2 R1 K0 ["animationData"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createReducer"]
  LOADNIL R3
  DUPTABLE R4 K10 [{"SetAnimationData"}]
  DUPCLOSURE R5 K11 [PROTO_0]
  SETTABLEKS R5 R4 K9 ["SetAnimationData"]
  CALL R2 2 -1
  RETURN R2 -1
