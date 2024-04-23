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
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["Dictionary"]
  GETTABLEKS R2 R3 K8 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K11 [{"assetsInCameraViewport", "assetsInCameraVicinity"}]
  GETTABLEKS R5 R1 K9 ["assetsInCameraViewport"]
  SETTABLEKS R5 R4 K9 ["assetsInCameraViewport"]
  GETTABLEKS R5 R1 K10 ["assetsInCameraVicinity"]
  SETTABLEKS R5 R4 K10 ["assetsInCameraVicinity"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
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
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["Dictionary"]
  GETTABLEKS R2 R3 K8 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K10 [{"contextualRecommendationsPollingFrequencyInSeconds"}]
  GETTABLEKS R5 R1 K9 ["contextualRecommendationsPollingFrequencyInSeconds"]
  SETTABLEKS R5 R4 K9 ["contextualRecommendationsPollingFrequencyInSeconds"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K11 ["Actions"]
  GETTABLEKS R6 R7 K12 ["SetAssetsInCameraRange"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Core"]
  GETTABLEKS R8 R9 K11 ["Actions"]
  GETTABLEKS R7 R8 K13 ["SetContextualRecommendationsPollingFrequency"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Core"]
  GETTABLEKS R9 R10 K14 ["Flags"]
  GETTABLEKS R8 R9 K15 ["getFFlagToolboxFixContextualRecommendationsDefaultState"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Core"]
  GETTABLEKS R10 R11 K14 ["Flags"]
  GETTABLEKS R9 R10 K16 ["getFFlagToolboxPortContextualReccomendationsToNewPackage"]
  CALL R8 1 1
  DUPTABLE R9 K20 [{"assetsInCameraViewport", "assetsInCameraVicinity", "contextualRecommendationsPollingFrequencyInSeconds"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K17 ["assetsInCameraViewport"]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K18 ["assetsInCameraVicinity"]
  GETTABLEKS R10 R4 K21 ["CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT"]
  SETTABLEKS R10 R9 K19 ["contextualRecommendationsPollingFrequencyInSeconds"]
  GETTABLEKS R10 R3 K22 ["createReducer"]
  MOVE R12 R7
  CALL R12 0 1
  JUMPIFNOT R12 [+2]
  MOVE R11 R9
  JUMP [+5]
  NEWTABLE R11 0 1
  MOVE R12 R9
  SETLIST R11 R12 1 [1]
  NEWTABLE R12 2 0
  GETTABLEKS R13 R5 K23 ["name"]
  DUPCLOSURE R14 K24 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R6 K23 ["name"]
  DUPCLOSURE R14 K25 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLE R14 R12 R13
  CALL R10 2 -1
  RETURN R10 -1
