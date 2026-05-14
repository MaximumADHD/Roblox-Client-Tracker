PROTO_0:
        0 DUPTABLE                         R2 K5 [{"sender", "context", "target", "userId", "logEvents"}]
        1 MOVE                             R3 R0
        2 JUMPIF                           R3 ; [+1]
        3 GETUPVAL                         R3 0
        4 SETTABLEKS                       R3 R2 K0 ["sender"]
        6 LOADK                            R3 K6 ["localizationPlugin"]
        7 SETTABLEKS                       R3 R2 K1 ["context"]
        9 LOADK                            R3 K7 ["studio"]
       10 SETTABLEKS                       R3 R2 K2 ["target"]
       12 GETUPVAL                         R3 1
       13 NAMECALL                         R3 R3 K8 ["GetUserId"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K3 ["userId"]
       18 SETTABLEKS                       R1 R2 K4 ["logEvents"]
       20 GETUPVAL                         R5 2
       21 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K10 [setmetatable]
       26 CALL                             R3 2 0
       27 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["logEvents"]
        2 JUMPIFNOT                        R3 ; [+14]
        3 GETUPVAL                         R3 0
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R3 K1 ["JSONEncode"]
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K3 [print]
       10 GETIMPORT                        R5 K6 [string.format]
       12 LOADK                            R6 K7 ["Analytics: sendEventDeferred: \"%s\", %s"]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R3
       15 CALL                             R5 3 -1
       16 CALL                             R4 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R3 K1 ["join"]
        5 MOVE                             R4 R2
        6 DUPTABLE                         R5 K5 [{"uid", "gameId", "placeId"}]
        7 GETTABLEKS                       R6 R0 K6 ["userId"]
        9 SETTABLEKS                       R6 R5 K2 ["uid"]
       11 GETIMPORT                        R6 K8 [game]
       13 GETTABLEKS                       R6 R6 K9 ["GameId"]
       15 SETTABLEKS                       R6 R5 K3 ["gameId"]
       17 GETIMPORT                        R6 K8 [game]
       19 GETTABLEKS                       R6 R6 K10 ["PlaceId"]
       21 SETTABLEKS                       R6 R5 K4 ["placeId"]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R4 R0 K11 ["sender"]
       26 GETTABLEKS                       R6 R0 K12 ["target"]
       28 GETTABLEKS                       R7 R0 K13 ["context"]
       30 MOVE                             R8 R1
       31 MOVE                             R9 R3
       32 NAMECALL                         R4 R4 K14 ["SendEventDeferred"]
       34 CALL                             R4 5 0
       35 MOVE                             R6 R1
       36 MOVE                             R7 R3
       37 NAMECALL                         R4 R0 K15 ["logEvent"]
       39 CALL                             R4 3 0
       40 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R3 K2 [{"btnName", "status"}]
        1 SETTABLEKS                       R1 R3 K0 ["btnName"]
        3 SETTABLEKS                       R2 R3 K1 ["status"]
        5 LOADK                            R6 K3 ["buttonPressed"]
        6 MOVE                             R7 R3
        7 NAMECALL                         R4 R0 K4 ["sendEventDeferred"]
        9 CALL                             R4 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"method"}]
        1 SETTABLEKS                       R1 R2 K0 ["method"]
        3 LOADK                            R5 K2 ["toolOpened"]
        4 MOVE                             R6 R2
        5 NAMECALL                         R3 R0 K3 ["sendEventDeferred"]
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K9 [{"btnName", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales", "numChangedTranslations", "numRemovedTranslations", "numAddedTranslations", "addedSupportedLanguages"}]
        1 SETTABLEKS                       R2 R3 K0 ["btnName"]
        3 GETTABLEKS                       R4 R1 K1 ["totalRows"]
        5 SETTABLEKS                       R4 R3 K1 ["totalRows"]
        7 GETTABLEKS                       R4 R1 K2 ["totalTranslations"]
        9 SETTABLEKS                       R4 R3 K2 ["totalTranslations"]
       11 GETTABLEKS                       R4 R1 K3 ["supportedLocales"]
       13 SETTABLEKS                       R4 R3 K3 ["supportedLocales"]
       15 GETTABLEKS                       R4 R1 K4 ["unsupportedLocales"]
       17 SETTABLEKS                       R4 R3 K4 ["unsupportedLocales"]
       19 GETTABLEKS                       R4 R1 K5 ["numChangedTranslations"]
       21 SETTABLEKS                       R4 R3 K5 ["numChangedTranslations"]
       23 GETTABLEKS                       R4 R1 K6 ["numRemovedTranslations"]
       25 SETTABLEKS                       R4 R3 K6 ["numRemovedTranslations"]
       27 GETTABLEKS                       R4 R1 K7 ["numAddedTranslations"]
       29 SETTABLEKS                       R4 R3 K7 ["numAddedTranslations"]
       31 GETTABLEKS                       R4 R1 K10 ["newLanguages"]
       33 SETTABLEKS                       R4 R3 K8 ["addedSupportedLanguages"]
       35 LOADK                            R6 K11 ["logLocalizationPerfStats"]
       36 MOVE                             R7 R3
       37 NAMECALL                         R4 R0 K12 ["sendEventDeferred"]
       39 CALL                             R4 3 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R6 R1 K0 ["GetEntries"]
        3 CALL                             R6 1 1
        4 MOVE                             R7 R3
        5 MOVE                             R8 R4
        6 CALL                             R5 3 1
        7 DUPTABLE                         R6 K6 [{"btnName", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales"}]
        8 SETTABLEKS                       R2 R6 K1 ["btnName"]
       10 GETTABLEKS                       R7 R5 K2 ["totalRows"]
       12 SETTABLEKS                       R7 R6 K2 ["totalRows"]
       14 GETTABLEKS                       R7 R5 K3 ["totalTranslations"]
       16 SETTABLEKS                       R7 R6 K3 ["totalTranslations"]
       18 GETTABLEKS                       R7 R5 K4 ["supportedLocales"]
       20 SETTABLEKS                       R7 R6 K4 ["supportedLocales"]
       22 GETTABLEKS                       R7 R5 K5 ["unsupportedLocales"]
       24 SETTABLEKS                       R7 R6 K5 ["unsupportedLocales"]
       26 LOADK                            R9 K7 ["logLocalizationPerfStats"]
       27 MOVE                             R10 R6
       28 NAMECALL                         R7 R0 K8 ["sendEventDeferred"]
       30 CALL                             R7 3 0
       31 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R3 K9 [{"btnName", "totalRows", "totalTranslations", "supportedLocales", "unsupportedLocales", "numChangedTranslations", "numRemovedTranslations", "numAddedTranslations", "addedSupportedLanguages"}]
        1 SETTABLEKS                       R2 R3 K0 ["btnName"]
        3 GETTABLEKS                       R4 R1 K1 ["totalRows"]
        5 SETTABLEKS                       R4 R3 K1 ["totalRows"]
        7 GETTABLEKS                       R4 R1 K2 ["totalTranslations"]
        9 SETTABLEKS                       R4 R3 K2 ["totalTranslations"]
       11 GETTABLEKS                       R4 R1 K3 ["supportedLocales"]
       13 SETTABLEKS                       R4 R3 K3 ["supportedLocales"]
       15 GETTABLEKS                       R4 R1 K4 ["unsupportedLocales"]
       17 SETTABLEKS                       R4 R3 K4 ["unsupportedLocales"]
       19 GETTABLEKS                       R4 R1 K5 ["numChangedTranslations"]
       21 SETTABLEKS                       R4 R3 K5 ["numChangedTranslations"]
       23 GETTABLEKS                       R4 R1 K6 ["numRemovedTranslations"]
       25 SETTABLEKS                       R4 R3 K6 ["numRemovedTranslations"]
       27 GETTABLEKS                       R4 R1 K7 ["numAddedTranslations"]
       29 SETTABLEKS                       R4 R3 K7 ["numAddedTranslations"]
       31 GETTABLEKS                       R4 R1 K10 ["newLanguages"]
       33 SETTABLEKS                       R4 R3 K8 ["addedSupportedLanguages"]
       35 LOADK                            R6 K11 ["logLocalizationPerfStats"]
       36 MOVE                             R7 R3
       37 NAMECALL                         R4 R0 K12 ["sendEventDeferred"]
       39 CALL                             R4 3 0
       40 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"SendEventDeferred"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_8]
        2 SETTABLEKS                       R1 R0 K0 ["SendEventDeferred"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K3 ["new"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StudioService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Cryo"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R3 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Util"]
       40 GETTABLEKS                       R6 R6 K15 ["RbxEntriesToWebEntries"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 16 0
       45 SETTABLEKS                       R6 R6 K16 ["__index"]
       47 DUPCLOSURE                       R7 K17 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R7 R6 K18 ["new"]
       53 DUPCLOSURE                       R7 K19 [PROTO_1]
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R7 R6 K20 ["logEvent"]
       57 DUPCLOSURE                       R7 K21 [PROTO_2]
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R7 R6 K22 ["sendEventDeferred"]
       61 DUPCLOSURE                       R7 K23 [PROTO_3]
       62 SETTABLEKS                       R7 R6 K24 ["reportButtonPress"]
       64 DUPCLOSURE                       R7 K25 [PROTO_4]
       65 SETTABLEKS                       R7 R6 K26 ["reportToolOpened"]
       67 DUPCLOSURE                       R7 K27 [PROTO_5]
       68 SETTABLEKS                       R7 R6 K28 ["reportUploadPatch"]
       70 DUPCLOSURE                       R7 K29 [PROTO_6]
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R7 R6 K30 ["reportDownloadTable"]
       74 DUPCLOSURE                       R7 K31 [PROTO_7]
       75 SETTABLEKS                       R7 R6 K32 ["reportUploadTable"]
       77 DUPCLOSURE                       R7 K33 [PROTO_9]
       78 CAPTURE                          VAL R6
       79 SETTABLEKS                       R7 R6 K34 ["mock"]
       81 RETURN                           R6 1
