PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  RETURN R0 0

PROTO_6:
  RETURN R0 0

PROTO_7:
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  RETURN R0 0

PROTO_10:
  RETURN R0 0

PROTO_11:
  RETURN R0 0

PROTO_12:
  RETURN R0 0

PROTO_13:
  RETURN R0 0

PROTO_14:
  RETURN R0 0

PROTO_15:
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K0 ["GenerateGUID"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_17:
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K0 ["GenerateGUID"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R3 R0 K10 ["Types"]
  CALL R2 1 1
  DUPTABLE R3 K29 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logExternalAPIError", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "getMessageGuid", "createMessageGuid"}]
  DUPCLOSURE R4 K30 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["logUserMessageSent"]
  DUPCLOSURE R4 K31 [PROTO_1]
  SETTABLEKS R4 R3 K12 ["logAssistantMessageSent"]
  DUPCLOSURE R4 K32 [PROTO_2]
  SETTABLEKS R4 R3 K13 ["logApiKeyAdded"]
  DUPCLOSURE R4 K33 [PROTO_3]
  SETTABLEKS R4 R3 K14 ["logErrorEvent"]
  DUPCLOSURE R4 K34 [PROTO_4]
  SETTABLEKS R4 R3 K15 ["logExternalAPIError"]
  DUPCLOSURE R4 K35 [PROTO_5]
  SETTABLEKS R4 R3 K16 ["logThumbsUp"]
  DUPCLOSURE R4 K36 [PROTO_6]
  SETTABLEKS R4 R3 K17 ["logThumbsDown"]
  DUPCLOSURE R4 K37 [PROTO_7]
  SETTABLEKS R4 R3 K18 ["logInitialResponseLatency"]
  DUPCLOSURE R4 K38 [PROTO_8]
  SETTABLEKS R4 R3 K19 ["logMarkdownError"]
  DUPCLOSURE R4 K39 [PROTO_9]
  SETTABLEKS R4 R3 K20 ["logRetry"]
  DUPCLOSURE R4 K40 [PROTO_10]
  SETTABLEKS R4 R3 K21 ["logStopGeneration"]
  DUPCLOSURE R4 K41 [PROTO_11]
  SETTABLEKS R4 R3 K22 ["logToolStarted"]
  DUPCLOSURE R4 K42 [PROTO_12]
  SETTABLEKS R4 R3 K23 ["logToolEnded"]
  DUPCLOSURE R4 K43 [PROTO_13]
  SETTABLEKS R4 R3 K24 ["logToolConfirmationShown"]
  DUPCLOSURE R4 K44 [PROTO_14]
  SETTABLEKS R4 R3 K25 ["logToolConfirmationResult"]
  DUPCLOSURE R4 K45 [PROTO_15]
  SETTABLEKS R4 R3 K26 ["logRequestJourney"]
  DUPCLOSURE R4 K46 [PROTO_16]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K27 ["getMessageGuid"]
  DUPCLOSURE R4 K47 [PROTO_17]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K28 ["createMessageGuid"]
  RETURN R3 1
