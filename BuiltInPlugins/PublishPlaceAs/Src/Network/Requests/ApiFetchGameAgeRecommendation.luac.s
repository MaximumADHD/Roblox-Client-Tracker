PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  DUPTABLE R2 K3 [{"minimumAgeByUniverse", "ratingByUniverse"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["minimumAgeByUniverse"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["ratingByUniverse"]
  GETIMPORT R3 K5 [pairs]
  GETTABLEKS R4 R1 K6 ["ageRecommendationDetailsByUniverse"]
  CALL R3 1 3
  FORGPREP_NEXT R3
  GETTABLEKS R8 R7 K7 ["ageRecommendationDetails"]
  JUMPIFNOT R8 [+11]
  GETTABLEKS R9 R7 K7 ["ageRecommendationDetails"]
  GETTABLEKS R8 R9 K8 ["ageRecommendationSummary"]
  JUMPIFNOT R8 [+6]
  GETTABLEKS R10 R7 K7 ["ageRecommendationDetails"]
  GETTABLEKS R9 R10 K8 ["ageRecommendationSummary"]
  GETTABLEKS R8 R9 K9 ["ageRecommendation"]
  JUMPIFNOT R8 [+3]
  GETTABLEKS R9 R8 K10 ["minimumAge"]
  JUMPIF R9 [+1]
  LOADN R9 0
  JUMPIFNOT R8 [+3]
  GETTABLEKS R10 R8 K11 ["contentMaturity"]
  JUMPIF R10 [+1]
  LOADK R10 K12 ["unrated"]
  GETTABLEKS R11 R7 K13 ["universeId"]
  GETTABLEKS R12 R2 K1 ["minimumAgeByUniverse"]
  SETTABLE R9 R12 R11
  GETTABLEKS R12 R2 K2 ["ratingByUniverse"]
  SETTABLE R10 R12 R11
  FORGLOOP R3 2 [-33]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K3 [{"Url", "Method", "Body"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["BuildRobloxUrl"]
  LOADK R3 K5 ["apis"]
  LOADK R4 K6 ["experience-guidelines-service/v1beta1/multi-age-recommendation"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["Url"]
  LOADK R2 K7 ["POST"]
  SETTABLEKS R2 R1 K1 ["Method"]
  GETUPVAL R2 1
  DUPTABLE R4 K9 [{"universeIds"}]
  SETTABLEKS R0 R4 K8 ["universeIds"]
  NAMECALL R2 R2 K10 ["JSONEncode"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["Body"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["Request"]
  MOVE R3 R1
  CALL R2 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE UPVAL U1
  NAMECALL R2 R2 K13 ["andThen"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Network"]
  GETTABLEKS R2 R3 K7 ["Http"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["HttpService"]
  NAMECALL R2 R2 K11 ["GetService"]
  CALL R2 2 1
  DUPCLOSURE R3 K12 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
