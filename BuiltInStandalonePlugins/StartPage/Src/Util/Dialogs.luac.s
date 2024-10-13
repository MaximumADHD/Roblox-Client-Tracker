PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["createContext"]
  DUPTABLE R3 K11 [{"showVerifyAge", "showAgeRestricted"}]
  DUPCLOSURE R4 K12 [PROTO_0]
  SETTABLEKS R4 R3 K9 ["showVerifyAge"]
  DUPCLOSURE R4 K13 [PROTO_1]
  SETTABLEKS R4 R3 K10 ["showAgeRestricted"]
  CALL R2 1 -1
  RETURN R2 -1
