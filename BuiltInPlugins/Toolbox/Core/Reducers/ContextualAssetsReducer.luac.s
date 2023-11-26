PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"assetsInCameraViewport", "assetsInCameraVicinity"}]
  GETTABLEKS R5 R1 K2 ["assetsInCameraViewport"]
  SETTABLEKS R5 R4 K2 ["assetsInCameraViewport"]
  GETTABLEKS R5 R1 K3 ["assetsInCameraVicinity"]
  SETTABLEKS R5 R4 K3 ["assetsInCameraVicinity"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"contextualRecommendationsPollingFrequencyInSeconds"}]
  GETTABLEKS R5 R1 K2 ["contextualRecommendationsPollingFrequencyInSeconds"]
  SETTABLEKS R5 R4 K2 ["contextualRecommendationsPollingFrequencyInSeconds"]
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
  DUPTABLE R7 K17 [{"assetsInCameraViewport", "assetsInCameraVicinity", "contextualRecommendationsPollingFrequencyInSeconds"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K14 ["assetsInCameraViewport"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K15 ["assetsInCameraVicinity"]
  GETTABLEKS R8 R4 K18 ["CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT"]
  SETTABLEKS R8 R7 K16 ["contextualRecommendationsPollingFrequencyInSeconds"]
  GETTABLEKS R8 R3 K19 ["createReducer"]
  NEWTABLE R9 0 1
  MOVE R10 R7
  SETLIST R9 R10 1 [1]
  NEWTABLE R10 2 0
  GETTABLEKS R11 R5 K20 ["name"]
  DUPCLOSURE R12 K21 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R6 K20 ["name"]
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1
