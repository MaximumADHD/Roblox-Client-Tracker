PROTO_0:
  GETTABLEKS R3 R1 K0 ["qualityResults"]
  GETTABLEKS R2 R3 K1 ["is_Dynamic_Head"]
  JUMPIFEQKS R2 K2 ["True"] [+9]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K3 ["Keys"]
  GETTABLEKS R4 R5 K4 ["HeadNotDynamic"]
  NAMECALL R2 R0 K5 ["fail"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["util"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["validationSystem"]
  GETTABLEKS R3 R4 K8 ["ValidationEnums"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["validationSystem"]
  GETTABLEKS R4 R5 K9 ["ErrorSourceStrings"]
  CALL R3 1 1
  NEWTABLE R4 4 0
  NEWTABLE R5 0 1
  GETTABLEKS R7 R2 K10 ["UploadCategory"]
  GETTABLEKS R6 R7 K11 ["DYNAMIC_HEAD"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K12 ["categories"]
  NEWTABLE R5 0 1
  GETTABLEKS R7 R2 K13 ["SharedDataMember"]
  GETTABLEKS R6 R7 K14 ["qualityResults"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K15 ["required_data"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K16 ["flags"]
  GETTABLEKS R6 R7 K17 ["getEngineFeatureEngineUGCValidationFetchQualityIsDynamicHead"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["fflag"]
  DUPCLOSURE R5 K19 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K20 ["run"]
  RETURN R4 1
