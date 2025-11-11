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
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K0 ["GenerateGUID"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_16:
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
  GETTABLEKS R5 R0 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["Contexts"]
  GETTABLEKS R3 R4 K12 ["LLMProviderSelectionContext"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R4 R0 K13 ["Types"]
  CALL R3 1 1
  DUPTABLE R4 K31 [{"logUserMessageSent", "logAssistantMessageSent", "logApiKeyAdded", "logErrorEvent", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolEnded", "logToolConfirmationShown", "logToolConfirmationResult", "logRequestJourney", "getMessageGuid", "createMessageGuid"}]
  DUPCLOSURE R5 K32 [PROTO_0]
  SETTABLEKS R5 R4 K14 ["logUserMessageSent"]
  DUPCLOSURE R5 K33 [PROTO_1]
  SETTABLEKS R5 R4 K15 ["logAssistantMessageSent"]
  DUPCLOSURE R5 K34 [PROTO_2]
  SETTABLEKS R5 R4 K16 ["logApiKeyAdded"]
  DUPCLOSURE R5 K35 [PROTO_3]
  SETTABLEKS R5 R4 K17 ["logErrorEvent"]
  DUPCLOSURE R5 K36 [PROTO_4]
  SETTABLEKS R5 R4 K18 ["logThumbsUp"]
  DUPCLOSURE R5 K37 [PROTO_5]
  SETTABLEKS R5 R4 K19 ["logThumbsDown"]
  DUPCLOSURE R5 K38 [PROTO_6]
  SETTABLEKS R5 R4 K20 ["logInitialResponseLatency"]
  DUPCLOSURE R5 K39 [PROTO_7]
  SETTABLEKS R5 R4 K21 ["logMarkdownError"]
  DUPCLOSURE R5 K40 [PROTO_8]
  SETTABLEKS R5 R4 K22 ["logRetry"]
  DUPCLOSURE R5 K41 [PROTO_9]
  SETTABLEKS R5 R4 K23 ["logStopGeneration"]
  DUPCLOSURE R5 K42 [PROTO_10]
  SETTABLEKS R5 R4 K24 ["logToolStarted"]
  DUPCLOSURE R5 K43 [PROTO_11]
  SETTABLEKS R5 R4 K25 ["logToolEnded"]
  DUPCLOSURE R5 K44 [PROTO_12]
  SETTABLEKS R5 R4 K26 ["logToolConfirmationShown"]
  DUPCLOSURE R5 K45 [PROTO_13]
  SETTABLEKS R5 R4 K27 ["logToolConfirmationResult"]
  DUPCLOSURE R5 K46 [PROTO_14]
  SETTABLEKS R5 R4 K28 ["logRequestJourney"]
  DUPCLOSURE R5 K47 [PROTO_15]
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K29 ["getMessageGuid"]
  DUPCLOSURE R5 K48 [PROTO_16]
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K30 ["createMessageGuid"]
  RETURN R4 1
