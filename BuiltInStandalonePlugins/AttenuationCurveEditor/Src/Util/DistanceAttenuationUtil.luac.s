PROTO_0:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["SetDistanceAttenuation"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NAMECALL R1 R0 K0 ["GetDistanceAttenuation"]
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  NEWTABLE R2 2 0
  DUPCLOSURE R3 K8 [PROTO_0]
  SETTABLEKS R3 R2 K9 ["setDistanceAttenuation"]
  DUPCLOSURE R3 K10 [PROTO_1]
  SETTABLEKS R3 R2 K11 ["getDistanceAttenuation"]
  RETURN R2 1
