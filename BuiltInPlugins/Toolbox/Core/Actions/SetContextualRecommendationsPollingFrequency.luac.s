PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* marked for removal by FFlagToolboxPortContextualReccomendationsToNewPackage"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  DUPTABLE R1 K8 [{"contextualRecommendationsPollingFrequencyInSeconds"}]
  SETTABLEKS R0 R1 K7 ["contextualRecommendationsPollingFrequencyInSeconds"]
  RETURN R1 1

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
