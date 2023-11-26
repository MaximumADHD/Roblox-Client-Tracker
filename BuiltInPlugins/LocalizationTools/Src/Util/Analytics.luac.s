PROTO_0:
  DUPTABLE R2 K5 [{"sender", "context", "target", "userId", "logEvents"}]
  MOVE R3 R0
  JUMPIF R3 [+1]
  GETUPVAL R3 0
  SETTABLEKS R3 R2 K0 ["sender"]
  LOADK R3 K6 ["localizationPlugin"]
  SETTABLEKS R3 R2 K1 ["context"]
  LOADK R3 K7 ["studio"]
  SETTABLEKS R3 R2 K2 ["target"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K8 ["GetUserId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["userId"]
  SETTABLEKS R1 R2 K4 ["logEvents"]
  GETUPVAL R5 2
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K10 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["logEvents"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K1 ["JSONEncode"]
  CALL R3 2 1
  GETIMPORT R4 K3 [print]
  GETIMPORT R5 K6 [string.format]
  LOADK R6 K7 ["Analytics: sendEventDeferred: \"%s\", %s"]
  MOVE R7 R1
  MOVE R8 R3
  CALL R5 3 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Dictionary"]
  GETTABLEKS R3 R4 K1 ["join"]
  MOVE R4 R2
  DUPTABLE R5 K5 [{"uid", "gameId", "placeId"}]
  GETTABLEKS R6 R0 K6 ["userId"]
  SETTABLEKS R6 R5 K2 ["uid"]
  GETIMPORT R7 K8 [game]
  GETTABLEKS R6 R7 K9 ["GameId"]
  SETTABLEKS R6 R5 K3 ["gameId"]
  GETIMPORT R7 K8 [game]
  GETTABLEKS R6 R7 K10 ["PlaceId"]
  SETTABLEKS R6 R5 K4 ["placeId"]
  CALL R3 2 1
  GETTABLEKS R4 R0 K11 ["sender"]
  GETTABLEKS R6 R0 K12 ["target"]
  GETTABLEKS R7 R0 K13 ["context"]
  MOVE R8 R1
  MOVE R9 R3
  NAMECALL R4 R4 K14 ["SendEventDeferred"]
  CALL R4 5 0
  MOVE R6 R1
  MOVE R7 R3
  NAMECALL R4 R0 K15 ["logEvent"]
  CALL R4 3 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R3 K2 [{"btnName", "status"}]
  SETTABLEKS R1 R3 K0 ["btnName"]
  SETTABLEKS R2 R3 K1 ["status"]
  LOADK R6 K3 ["buttonPressed"]
  MOVE R7 R3
  NAMECALL R4 R0 K4 ["sendEventDeferred"]
  CALL R4 3 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R2 K1 [{"method"}]
  SETTABLEKS R1 R2 K0 ["method"]
  LOADK R5 K2 ["toolOpened"]
  MOVE R6 R2
  NAMECALL R3 R0 K3 ["sendEventDeferred"]
  CALL R3 3 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R3 K9 [{"btnName", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales", "numChangedTranslations", "numRemovedTranslations", "numAddedTranslations", "addedSupportedLanguages"}]
  SETTABLEKS R2 R3 K0 ["btnName"]
  GETTABLEKS R4 R1 K1 ["totalRows"]
  SETTABLEKS R4 R3 K1 ["totalRows"]
  GETTABLEKS R4 R1 K2 ["totalTranslations"]
  SETTABLEKS R4 R3 K2 ["totalTranslations"]
  GETTABLEKS R4 R1 K3 ["supportedLocales"]
  SETTABLEKS R4 R3 K3 ["supportedLocales"]
  GETTABLEKS R4 R1 K4 ["unsupportedLocales"]
  SETTABLEKS R4 R3 K4 ["unsupportedLocales"]
  GETTABLEKS R4 R1 K5 ["numChangedTranslations"]
  SETTABLEKS R4 R3 K5 ["numChangedTranslations"]
  GETTABLEKS R4 R1 K6 ["numRemovedTranslations"]
  SETTABLEKS R4 R3 K6 ["numRemovedTranslations"]
  GETTABLEKS R4 R1 K7 ["numAddedTranslations"]
  SETTABLEKS R4 R3 K7 ["numAddedTranslations"]
  GETTABLEKS R4 R1 K10 ["newLanguages"]
  SETTABLEKS R4 R3 K8 ["addedSupportedLanguages"]
  LOADK R6 K11 ["logLocalizationPerfStats"]
  MOVE R7 R3
  NAMECALL R4 R0 K12 ["sendEventDeferred"]
  CALL R4 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R5 0
  NAMECALL R6 R1 K0 ["GetEntries"]
  CALL R6 1 1
  MOVE R7 R3
  MOVE R8 R4
  CALL R5 3 1
  DUPTABLE R6 K6 [{"btnName", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales"}]
  SETTABLEKS R2 R6 K1 ["btnName"]
  GETTABLEKS R7 R5 K2 ["totalRows"]
  SETTABLEKS R7 R6 K2 ["totalRows"]
  GETTABLEKS R7 R5 K3 ["totalTranslations"]
  SETTABLEKS R7 R6 K3 ["totalTranslations"]
  GETTABLEKS R7 R5 K4 ["supportedLocales"]
  SETTABLEKS R7 R6 K4 ["supportedLocales"]
  GETTABLEKS R7 R5 K5 ["unsupportedLocales"]
  SETTABLEKS R7 R6 K5 ["unsupportedLocales"]
  LOADK R9 K7 ["logLocalizationPerfStats"]
  MOVE R10 R6
  NAMECALL R7 R0 K8 ["sendEventDeferred"]
  CALL R7 3 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R3 K9 [{"btnName", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales", "numChangedTranslations", "numRemovedTranslations", "numAddedTranslations", "addedSupportedLanguages"}]
  SETTABLEKS R2 R3 K0 ["btnName"]
  GETTABLEKS R4 R1 K1 ["totalRows"]
  SETTABLEKS R4 R3 K1 ["totalRows"]
  GETTABLEKS R4 R1 K2 ["totalTranslations"]
  SETTABLEKS R4 R3 K2 ["totalTranslations"]
  GETTABLEKS R4 R1 K3 ["supportedLocales"]
  SETTABLEKS R4 R3 K3 ["supportedLocales"]
  GETTABLEKS R4 R1 K4 ["unsupportedLocales"]
  SETTABLEKS R4 R3 K4 ["unsupportedLocales"]
  GETTABLEKS R4 R1 K5 ["numChangedTranslations"]
  SETTABLEKS R4 R3 K5 ["numChangedTranslations"]
  GETTABLEKS R4 R1 K6 ["numRemovedTranslations"]
  SETTABLEKS R4 R3 K6 ["numRemovedTranslations"]
  GETTABLEKS R4 R1 K7 ["numAddedTranslations"]
  SETTABLEKS R4 R3 K7 ["numAddedTranslations"]
  GETTABLEKS R4 R1 K10 ["newLanguages"]
  SETTABLEKS R4 R3 K8 ["addedSupportedLanguages"]
  LOADK R6 K11 ["logLocalizationPerfStats"]
  MOVE R7 R3
  NAMECALL R4 R0 K12 ["sendEventDeferred"]
  CALL R4 3 0
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  DUPTABLE R0 K1 [{"SendEventDeferred"}]
  DUPCLOSURE R1 K2 [PROTO_8]
  SETTABLEKS R1 R0 K0 ["SendEventDeferred"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["new"]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RbxAnalyticsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["StudioService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R8 R3 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Util"]
  GETTABLEKS R6 R7 K15 ["RbxEntriesToWebEntries"]
  CALL R5 1 1
  NEWTABLE R6 16 0
  SETTABLEKS R6 R6 K16 ["__index"]
  DUPCLOSURE R7 K17 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K18 ["new"]
  DUPCLOSURE R7 K19 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K20 ["logEvent"]
  DUPCLOSURE R7 K21 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K22 ["sendEventDeferred"]
  DUPCLOSURE R7 K23 [PROTO_3]
  SETTABLEKS R7 R6 K24 ["reportButtonPress"]
  DUPCLOSURE R7 K25 [PROTO_4]
  SETTABLEKS R7 R6 K26 ["reportToolOpened"]
  DUPCLOSURE R7 K27 [PROTO_5]
  SETTABLEKS R7 R6 K28 ["reportUploadPatch"]
  DUPCLOSURE R7 K29 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R7 R6 K30 ["reportDownloadTable"]
  DUPCLOSURE R7 K31 [PROTO_7]
  SETTABLEKS R7 R6 K32 ["reportUploadTable"]
  DUPCLOSURE R7 K33 [PROTO_9]
  CAPTURE VAL R6
  SETTABLEKS R7 R6 K34 ["mock"]
  RETURN R6 1
