PROTO_0:
  GETTABLEKS R3 R1 K0 ["aqsSummaryData"]
  GETTABLEKS R2 R3 K1 ["Measure_Dynamic_Head"]
  LOADN R3 1
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  FASTCALL2 MATH_MIN R3 R8 [+5]
  MOVE R10 R3
  MOVE R11 R8
  GETIMPORT R9 K4 [math.min]
  CALL R9 2 1
  MOVE R3 R9
  FORGLOOP R4 2 [-9]
  JUMPIFNOTEQKN R3 K5 [-1] [+10]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Keys"]
  GETTABLEKS R6 R7 K7 ["DynamicHeadCageMisaligned"]
  NAMECALL R4 R0 K8 ["fail"]
  CALL R4 2 0
  RETURN R0 0
  GETUPVAL R5 1
  CALL R5 0 1
  DIVK R4 R5 K9 [100]
  JUMPIFNOTLT R3 R4 [+9]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["Keys"]
  GETTABLEKS R6 R7 K10 ["HeadNotDynamic"]
  NAMECALL R4 R0 K8 ["fail"]
  CALL R4 2 0
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
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K10 ["flags"]
  GETTABLEKS R5 R6 K11 ["getFIntUGCValidationDynamicHeadMinimumQualityPercent"]
  CALL R4 1 1
  NEWTABLE R5 8 0
  NEWTABLE R6 0 1
  GETTABLEKS R8 R2 K12 ["UploadCategory"]
  GETTABLEKS R7 R8 K13 ["DYNAMIC_HEAD"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K14 ["categories"]
  NEWTABLE R6 0 1
  GETTABLEKS R8 R2 K15 ["SharedDataMember"]
  GETTABLEKS R7 R8 K16 ["aqsSummaryData"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K17 ["requiredData"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K10 ["flags"]
  GETTABLEKS R7 R8 K18 ["getFFlagUGCValidateIsDynamicHead"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["fflag"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K10 ["flags"]
  GETTABLEKS R7 R8 K20 ["getFFlagUGCValidationShadowIsDynamicHead"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["shadowFlag"]
  DUPTABLE R6 K23 [{"Measure_Dynamic_Head"}]
  NEWTABLE R7 0 5
  LOADK R8 K24 ["left_eye_close"]
  LOADK R9 K25 ["right_eye_close"]
  LOADK R10 K26 ["mouth_open"]
  LOADK R11 K27 ["is_happy"]
  LOADK R12 K28 ["is_sad"]
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K22 ["Measure_Dynamic_Head"]
  SETTABLEKS R6 R5 K29 ["requiredAqsReturnSchema"]
  DUPCLOSURE R6 K30 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K31 ["run"]
  RETURN R5 1
