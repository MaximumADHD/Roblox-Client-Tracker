PROTO_0:
  GETIMPORT R2 K1 [error]
  LOADK R4 K2 ["Invalid ValidationEnums."]
  GETUPVAL R5 0
  LOADK R6 K3 [" enum value: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K5 [tostring]
  CALL R7 1 1
  CONCAT R3 R4 R7
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R3 K1 [error]
  LOADK R4 K2 ["Cannot add new keys to ValidationEnums"]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K3 [{"__index", "__newindex", "__metatable"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K0 ["__index"]
  DUPCLOSURE R2 K4 [PROTO_1]
  SETTABLEKS R2 R1 K1 ["__newindex"]
  LOADK R2 K5 ["This metatable is protected"]
  SETTABLEKS R2 R1 K2 ["__metatable"]
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOTEQKNIL R1 [+7]
  GETIMPORT R1 K1 [error]
  MOVE R3 R0
  LOADK R4 K2 [" enum table is not found"]
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETUPVAL R4 0
  GETTABLE R1 R4 R0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  FASTCALL1 TYPEOF R4 [+3]
  MOVE R7 R4
  GETIMPORT R6 K4 [typeof]
  CALL R6 1 1
  JUMPIFEQKS R6 K5 ["string"] [+13]
  GETIMPORT R6 K1 [error]
  MOVE R8 R0
  LOADK R9 K6 [" enum table has non string key "]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R11 R4
  GETIMPORT R10 K8 [tostring]
  CALL R10 1 1
  CONCAT R7 R8 R10
  CALL R6 1 0
  JUMP [+13]
  JUMPIFEQ R4 R5 [+12]
  GETIMPORT R6 K1 [error]
  MOVE R8 R0
  LOADK R9 K9 [" enum table has non-matching key and value for key "]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R11 R4
  GETIMPORT R10 K8 [tostring]
  CALL R10 1 1
  CONCAT R7 R8 R10
  CALL R6 1 0
  FORGLOOP R1 2 [-33]
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  GETUPVAL R3 1
  MOVE R4 R0
  CALL R3 1 1
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K11 [setmetatable]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  DUPCLOSURE R1 K0 [PROTO_2]
  DUPCLOSURE R2 K1 [PROTO_3]
  CAPTURE VAL R0
  CAPTURE VAL R1
  DUPTABLE R3 K6 [{"ExpectedRootSchema", "SingleInstanceSelected", "NoExtraTags", "HeadIsDynamic"}]
  LOADK R4 K2 ["ExpectedRootSchema"]
  SETTABLEKS R4 R3 K2 ["ExpectedRootSchema"]
  LOADK R4 K3 ["SingleInstanceSelected"]
  SETTABLEKS R4 R3 K3 ["SingleInstanceSelected"]
  LOADK R4 K4 ["NoExtraTags"]
  SETTABLEKS R4 R3 K4 ["NoExtraTags"]
  LOADK R4 K5 ["HeadIsDynamic"]
  SETTABLEKS R4 R3 K5 ["HeadIsDynamic"]
  SETTABLEKS R3 R0 K7 ["ValidationModule"]
  MOVE R3 R2
  LOADK R4 K7 ["ValidationModule"]
  CALL R3 1 0
  DUPTABLE R3 K20 [{"jobId", "entrypointInput", "rootInstance", "uploadCategory", "uploadEnum", "consumerConfig", "aqsFetchMetrics", "aqsSummaryData", "renderMeshesData", "innerCagesData", "outerCagesData", "meshTextures"}]
  LOADK R4 K8 ["jobId"]
  SETTABLEKS R4 R3 K8 ["jobId"]
  LOADK R4 K9 ["entrypointInput"]
  SETTABLEKS R4 R3 K9 ["entrypointInput"]
  LOADK R4 K10 ["rootInstance"]
  SETTABLEKS R4 R3 K10 ["rootInstance"]
  LOADK R4 K11 ["uploadCategory"]
  SETTABLEKS R4 R3 K11 ["uploadCategory"]
  LOADK R4 K12 ["uploadEnum"]
  SETTABLEKS R4 R3 K12 ["uploadEnum"]
  LOADK R4 K13 ["consumerConfig"]
  SETTABLEKS R4 R3 K13 ["consumerConfig"]
  LOADK R4 K14 ["aqsFetchMetrics"]
  SETTABLEKS R4 R3 K14 ["aqsFetchMetrics"]
  LOADK R4 K15 ["aqsSummaryData"]
  SETTABLEKS R4 R3 K15 ["aqsSummaryData"]
  LOADK R4 K16 ["renderMeshesData"]
  SETTABLEKS R4 R3 K16 ["renderMeshesData"]
  LOADK R4 K17 ["innerCagesData"]
  SETTABLEKS R4 R3 K17 ["innerCagesData"]
  LOADK R4 K18 ["outerCagesData"]
  SETTABLEKS R4 R3 K18 ["outerCagesData"]
  LOADK R4 K19 ["meshTextures"]
  SETTABLEKS R4 R3 K19 ["meshTextures"]
  SETTABLEKS R3 R0 K21 ["SharedDataMember"]
  MOVE R3 R2
  LOADK R4 K21 ["SharedDataMember"]
  CALL R3 1 0
  DUPTABLE R3 K32 [{"categories", "fflag", "shadowFlag", "prereqTests", "requiredData", "conditionalData", "expectedAqsData", "knownAqsUserErrors", "expectedFailures", "run"}]
  LOADK R4 K22 ["categories"]
  SETTABLEKS R4 R3 K22 ["categories"]
  LOADK R4 K23 ["fflag"]
  SETTABLEKS R4 R3 K23 ["fflag"]
  LOADK R4 K24 ["shadowFlag"]
  SETTABLEKS R4 R3 K24 ["shadowFlag"]
  LOADK R4 K25 ["prereqTests"]
  SETTABLEKS R4 R3 K25 ["prereqTests"]
  LOADK R4 K26 ["requiredData"]
  SETTABLEKS R4 R3 K26 ["requiredData"]
  LOADK R4 K27 ["conditionalData"]
  SETTABLEKS R4 R3 K27 ["conditionalData"]
  LOADK R4 K28 ["expectedAqsData"]
  SETTABLEKS R4 R3 K28 ["expectedAqsData"]
  LOADK R4 K29 ["knownAqsUserErrors"]
  SETTABLEKS R4 R3 K29 ["knownAqsUserErrors"]
  LOADK R4 K30 ["expectedFailures"]
  SETTABLEKS R4 R3 K30 ["expectedFailures"]
  LOADK R4 K31 ["run"]
  SETTABLEKS R4 R3 K31 ["run"]
  SETTABLEKS R3 R0 K33 ["ValidationConfig"]
  MOVE R3 R2
  LOADK R4 K33 ["ValidationConfig"]
  CALL R3 1 0
  DUPTABLE R3 K39 [{"CANNOT_START", "TIMEOUT", "ERROR", "FAIL", "PASS"}]
  LOADK R4 K34 ["CANNOT_START"]
  SETTABLEKS R4 R3 K34 ["CANNOT_START"]
  LOADK R4 K35 ["TIMEOUT"]
  SETTABLEKS R4 R3 K35 ["TIMEOUT"]
  LOADK R4 K36 ["ERROR"]
  SETTABLEKS R4 R3 K36 ["ERROR"]
  LOADK R4 K37 ["FAIL"]
  SETTABLEKS R4 R3 K37 ["FAIL"]
  LOADK R4 K38 ["PASS"]
  SETTABLEKS R4 R3 K38 ["PASS"]
  SETTABLEKS R3 R0 K40 ["Status"]
  MOVE R3 R2
  LOADK R4 K40 ["Status"]
  CALL R3 1 0
  DUPTABLE R3 K49 [{"TORSO_AND_LIMBS", "DYNAMIC_HEAD", "LAYERED_CLOTHING", "RIGID_ACCESSORY", "EMOTE_ANIMATION", "MAKEUP", "FULL_BODY", "BOTH_SHOES"}]
  LOADK R4 K41 ["TORSO_AND_LIMBS"]
  SETTABLEKS R4 R3 K41 ["TORSO_AND_LIMBS"]
  LOADK R4 K42 ["DYNAMIC_HEAD"]
  SETTABLEKS R4 R3 K42 ["DYNAMIC_HEAD"]
  LOADK R4 K43 ["LAYERED_CLOTHING"]
  SETTABLEKS R4 R3 K43 ["LAYERED_CLOTHING"]
  LOADK R4 K44 ["RIGID_ACCESSORY"]
  SETTABLEKS R4 R3 K44 ["RIGID_ACCESSORY"]
  LOADK R4 K45 ["EMOTE_ANIMATION"]
  SETTABLEKS R4 R3 K45 ["EMOTE_ANIMATION"]
  LOADK R4 K46 ["MAKEUP"]
  SETTABLEKS R4 R3 K46 ["MAKEUP"]
  LOADK R4 K47 ["FULL_BODY"]
  SETTABLEKS R4 R3 K47 ["FULL_BODY"]
  LOADK R4 K48 ["BOTH_SHOES"]
  SETTABLEKS R4 R3 K48 ["BOTH_SHOES"]
  SETTABLEKS R3 R0 K50 ["UploadCategory"]
  MOVE R3 R2
  LOADK R4 K50 ["UploadCategory"]
  CALL R3 1 0
  RETURN R0 1
