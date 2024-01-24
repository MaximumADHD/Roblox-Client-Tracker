PROTO_0:
  DUPTABLE R3 K3 [{"history", "writeIndex", "lastTimestamp"}]
  SETTABLEKS R0 R3 K0 ["history"]
  SETTABLEKS R1 R3 K1 ["writeIndex"]
  SETTABLEKS R2 R3 K2 ["lastTimestamp"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Util"]
  GETTABLEKS R3 R2 K9 ["Action"]
  GETTABLEKS R4 R1 K10 ["Dash"]
  GETTABLEKS R5 R4 K11 ["None"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  MOVE R7 R3
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K14 ["Name"]
  DUPCLOSURE R9 K15 [PROTO_0]
  CALL R7 2 -1
  RETURN R7 -1
