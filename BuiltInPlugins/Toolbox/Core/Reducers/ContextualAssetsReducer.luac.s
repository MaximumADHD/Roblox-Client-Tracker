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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Core"]
  GETTABLEKS R9 R10 K14 ["Flags"]
  GETTABLEKS R8 R9 K15 ["getFFlagToolboxFixContextualRecommendationsDefaultState"]
  CALL R7 1 1
  DUPTABLE R8 K19 [{"assetsInCameraViewport", "assetsInCameraVicinity", "contextualRecommendationsPollingFrequencyInSeconds"}]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K16 ["assetsInCameraViewport"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K17 ["assetsInCameraVicinity"]
  GETTABLEKS R9 R4 K20 ["CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT"]
  SETTABLEKS R9 R8 K18 ["contextualRecommendationsPollingFrequencyInSeconds"]
  GETTABLEKS R9 R3 K21 ["createReducer"]
  MOVE R11 R7
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  MOVE R10 R8
  JUMP [+5]
  NEWTABLE R10 0 1
  MOVE R11 R8
  SETLIST R10 R11 1 [1]
  NEWTABLE R11 2 0
  GETTABLEKS R12 R5 K22 ["name"]
  DUPCLOSURE R13 K23 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  GETTABLEKS R12 R6 K22 ["name"]
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R13 R11 R12
  CALL R9 2 -1
  RETURN R9 -1
