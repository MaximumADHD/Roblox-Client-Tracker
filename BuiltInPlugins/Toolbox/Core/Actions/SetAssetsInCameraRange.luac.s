PROTO_0:
  GETUPVAL R4 0
  CALL R4 0 1
  NOT R3 R4
  LOADK R5 K0 ["%* marked for removal by FFlagToolboxPortContextualReccomendationsToNewPackage"]
  GETIMPORT R8 K2 [script]
  GETTABLEKS R7 R8 K3 ["Name"]
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  DUPTABLE R2 K9 [{"assetsInCameraViewport", "assetsInCameraVicinity"}]
  SETTABLEKS R0 R2 K7 ["assetsInCameraViewport"]
  SETTABLEKS R1 R2 K8 ["assetsInCameraVicinity"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K8 ["Util"]
  GETTABLEKS R3 R2 K9 ["Action"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R7 R0 K10 ["Core"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagToolboxPortContextualReccomendationsToNewPackage"]
  CALL R4 1 1
  MOVE R5 R3
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["Name"]
  DUPCLOSURE R7 K14 [PROTO_0]
  CAPTURE VAL R4
  CALL R5 2 -1
  RETURN R5 -1
