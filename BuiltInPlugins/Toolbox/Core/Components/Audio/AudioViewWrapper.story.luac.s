PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["createElement"]
  GETUPVAL R2 2
  DUPTABLE R3 K3 [{"networkInterface"}]
  SETTABLEKS R0 R3 K2 ["networkInterface"]
  DUPTABLE R4 K5 [{"AudioViewWrapper"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["createElement"]
  GETUPVAL R6 3
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["AudioViewWrapper"]
  CALL R1 3 -1
  RETURN R1 -1

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
  GETTABLEKS R5 R0 K8 ["Core"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["MockWrapper"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K11 ["Networking"]
  GETTABLEKS R4 R5 K12 ["NetworkInterface"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Parent"]
  GETTABLEKS R5 R6 K14 ["AudioViewWrapper"]
  CALL R4 1 1
  DUPTABLE R5 K16 [{"story"}]
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K15 ["story"]
  RETURN R5 1
