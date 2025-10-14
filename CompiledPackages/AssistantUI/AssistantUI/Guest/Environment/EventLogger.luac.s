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
  GETUPVAL R1 0
  LOADB R3 0
  NAMECALL R1 R1 K0 ["GenerateGUID"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
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
  DUPTABLE R3 K25 [{"logUserMessageSent", "logAssistantMessageSent", "logErrorEvent", "logThumbsUp", "logThumbsDown", "logInitialResponseLatency", "logMarkdownError", "logRetry", "logStopGeneration", "logToolStarted", "logToolConfirmationShown", "logToolConfirmationResult", "getMessageGuid", "createMessageGuid"}]
  DUPCLOSURE R4 K26 [PROTO_0]
  SETTABLEKS R4 R3 K11 ["logUserMessageSent"]
  DUPCLOSURE R4 K27 [PROTO_1]
  SETTABLEKS R4 R3 K12 ["logAssistantMessageSent"]
  DUPCLOSURE R4 K28 [PROTO_2]
  SETTABLEKS R4 R3 K13 ["logErrorEvent"]
  DUPCLOSURE R4 K29 [PROTO_3]
  SETTABLEKS R4 R3 K14 ["logThumbsUp"]
  DUPCLOSURE R4 K30 [PROTO_4]
  SETTABLEKS R4 R3 K15 ["logThumbsDown"]
  DUPCLOSURE R4 K31 [PROTO_5]
  SETTABLEKS R4 R3 K16 ["logInitialResponseLatency"]
  DUPCLOSURE R4 K32 [PROTO_6]
  SETTABLEKS R4 R3 K17 ["logMarkdownError"]
  DUPCLOSURE R4 K33 [PROTO_7]
  SETTABLEKS R4 R3 K18 ["logRetry"]
  DUPCLOSURE R4 K34 [PROTO_8]
  SETTABLEKS R4 R3 K19 ["logStopGeneration"]
  DUPCLOSURE R4 K35 [PROTO_9]
  SETTABLEKS R4 R3 K20 ["logToolStarted"]
  DUPCLOSURE R4 K36 [PROTO_10]
  SETTABLEKS R4 R3 K21 ["logToolConfirmationShown"]
  DUPCLOSURE R4 K37 [PROTO_11]
  SETTABLEKS R4 R3 K22 ["logToolConfirmationResult"]
  DUPCLOSURE R4 K38 [PROTO_12]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K23 ["getMessageGuid"]
  DUPCLOSURE R4 K39 [PROTO_13]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K24 ["createMessageGuid"]
  RETURN R3 1
