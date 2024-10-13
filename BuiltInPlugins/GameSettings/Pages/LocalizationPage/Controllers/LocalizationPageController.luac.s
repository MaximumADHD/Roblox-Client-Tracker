PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["__networking"]
  LOADK R4 K1 ["locale"]
  LOADK R5 K2 ["/v1/locales/supported-locales"]
  NAMECALL R2 R1 K3 ["get"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["locale"]
  LOADK R6 K2 ["/v1/locales"]
  DUPTABLE R7 K4 [{"Params"}]
  DUPTABLE R8 K6 [{"displayValueLocale"}]
  SETTABLEKS R1 R8 K5 ["displayValueLocale"]
  SETTABLEKS R8 R7 K3 ["Params"]
  NAMECALL R3 R2 K7 ["get"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["gameinternationalization"]
  LOADK R7 K2 ["/v1/source-language/games/"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  NAMECALL R3 R2 K3 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["gameinternationalization"]
  LOADK R8 K2 ["/v1/source-language/games/"]
  MOVE R9 R1
  CONCAT R7 R8 R9
  DUPTABLE R8 K4 [{"Params"}]
  DUPTABLE R9 K6 [{"languageCode"}]
  SETTABLEKS R2 R9 K5 ["languageCode"]
  SETTABLEKS R9 R8 K3 ["Params"]
  NAMECALL R4 R3 K7 ["patch"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["gameinternationalization"]
  LOADK R7 K2 ["/v1/autolocalization/games/"]
  MOVE R8 R1
  LOADK R9 K3 ["/autolocalizationtable"]
  CONCAT R6 R7 R9
  DUPTABLE R7 K5 [{"Body"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K4 ["Body"]
  NAMECALL R3 R2 K6 ["post"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_6:
  GETTABLEKS R4 R0 K0 ["__networking"]
  LOADK R7 K1 ["gameinternationalization"]
  LOADK R9 K2 ["/v1/autolocalization/games/"]
  MOVE R10 R1
  LOADK R11 K3 ["/settings"]
  CONCAT R8 R9 R11
  DUPTABLE R9 K5 [{"Body"}]
  DUPTABLE R10 K8 [{"isAutolocalizationEnabled", "shouldUseLocalizationTable"}]
  SETTABLEKS R2 R10 K6 ["isAutolocalizationEnabled"]
  SETTABLEKS R3 R10 K7 ["shouldUseLocalizationTable"]
  SETTABLEKS R10 R9 K4 ["Body"]
  NAMECALL R5 R4 K9 ["patch"]
  CALL R5 4 -1
  RETURN R5 -1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["gameinternationalization"]
  LOADK R7 K2 ["/v1/automatic-translation/games/"]
  MOVE R8 R1
  LOADK R9 K3 ["/feature-status"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["gameinternationalization"]
  LOADK R7 K2 ["/v1/automatic-translation/languages/"]
  MOVE R8 R1
  LOADK R9 K3 ["/target-languages"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["gameinternationalization"]
  LOADK R7 K2 ["/v1/supported-languages/games/"]
  MOVE R8 R1
  LOADK R9 K3 ["/automatic-translation-status"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["gameinternationalization"]
  LOADK R8 K2 ["/v1/supported-languages/games/"]
  MOVE R9 R1
  CONCAT R7 R8 R9
  DUPTABLE R8 K4 [{"Body"}]
  SETTABLEKS R2 R8 K3 ["Body"]
  NAMECALL R4 R3 K5 ["patch"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_11:
  GETTABLEKS R3 R0 K0 ["__networking"]
  NEWTABLE R4 0 0
  GETIMPORT R5 K2 [pairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_NEXT R5
  LOADK R12 K3 ["gameinternationalization"]
  LOADK R14 K4 ["/v1/supported-languages/games/"]
  MOVE R15 R1
  LOADK R16 K5 ["/languages/"]
  MOVE R17 R8
  LOADK R18 K6 ["/automatic-translation-status"]
  CONCAT R13 R14 R18
  DUPTABLE R14 K8 [{"Body"}]
  SETTABLEKS R9 R14 K7 ["Body"]
  NAMECALL R10 R3 K9 ["patch"]
  CALL R10 4 1
  FASTCALL2 TABLE_INSERT R4 R10 [+5]
  MOVE R12 R4
  MOVE R13 R10
  GETIMPORT R11 K12 [table.insert]
  CALL R11 2 0
  FORGLOOP R5 2 [-21]
  RETURN R4 1

PROTO_12:
  NAMECALL R1 R0 K0 ["localeSupportedLocalesGET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  GETTABLEKS R3 R1 K2 ["responseBody"]
  GETIMPORT R4 K4 [pairs]
  GETTABLEKS R5 R3 K5 ["supportedLocales"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R10 R8 K6 ["language"]
  GETTABLEKS R9 R10 K7 ["languageCode"]
  GETTABLEKS R11 R8 K6 ["language"]
  GETTABLEKS R10 R11 K8 ["nativeName"]
  SETTABLE R10 R2 R9
  FORGLOOP R4 2 [-10]
  RETURN R2 1

PROTO_13:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["localeLocalesGET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [pairs]
  GETTABLEKS R7 R2 K4 ["responseBody"]
  GETTABLEKS R5 R7 K5 ["data"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R11 R8 K6 ["locale"]
  GETTABLEKS R10 R11 K7 ["language"]
  GETTABLEKS R9 R10 K8 ["languageCode"]
  GETTABLE R10 R3 R9
  JUMPIFNOTEQKNIL R10 [+8]
  GETTABLEKS R12 R8 K6 ["locale"]
  GETTABLEKS R11 R12 K7 ["language"]
  GETTABLEKS R10 R11 K9 ["name"]
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [-17]
  RETURN R3 1

PROTO_14:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["gameinternationalizationSourceLanguageGamesGET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["languageCode"]
  RETURN R3 1

PROTO_15:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["gameinternationalizationSourceLanguageGamesPATCH"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_16:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["gameinternationalizationAutoLocalizationGamesAutoLocalizationTablePOST"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K2 ["responseBody"]
  GETTABLEKS R4 R3 K3 ["isAutolocalizationEnabled"]
  GETTABLEKS R5 R3 K4 ["shouldUseLocalizationTable"]
  RETURN R4 2

PROTO_17:
  MOVE R6 R1
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R4 R0 K0 ["gameinternationalizationAutoLocalizationGamesSettingsPATCH"]
  CALL R4 4 1
  NAMECALL R4 R4 K1 ["await"]
  CALL R4 1 0
  RETURN R0 0

PROTO_18:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["gameinternationalizationAutomaticTranslationGamesFeatureStatusGET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isAutomaticTranslationAllowed"]
  RETURN R3 1

PROTO_19:
  JUMPIF R1 [+3]
  NEWTABLE R2 0 0
  RETURN R2 1
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["gameinternationalizationAutomaticTranslationLanguagesTargetLanguagesGET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [pairs]
  GETTABLEKS R7 R2 K4 ["responseBody"]
  GETTABLEKS R5 R7 K5 ["targetLanguages"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R8 K6 ["languageCode"]
  GETTABLEKS R10 R8 K7 ["isAutomaticTranslationAllowed"]
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [-6]
  RETURN R3 1

PROTO_20:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["gameinternationalizationSupportedLanguagesGamesAutomaticTranslationStatusGET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  GETIMPORT R4 K3 [pairs]
  GETTABLEKS R7 R2 K4 ["responseBody"]
  GETTABLEKS R5 R7 K5 ["data"]
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R8 K6 ["languageCode"]
  GETTABLEKS R10 R8 K7 ["isAutomaticTranslationEnabled"]
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [-6]
  RETURN R3 1

PROTO_21:
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  JUMPIFNOT R8 [+16]
  NEWTABLE R11 4 0
  LOADK R12 K2 ["Language"]
  SETTABLEKS R12 R11 K3 ["languageCodeType"]
  SETTABLEKS R7 R11 K4 ["languageCode"]
  LOADB R12 0
  SETTABLEKS R12 R11 K5 ["delete"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K8 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-18]
  MOVE R6 R1
  MOVE R7 R3
  NAMECALL R4 R0 K9 ["gameinternationalizationSupportedLanguagesGamesPATCH"]
  CALL R4 3 1
  NAMECALL R4 R4 K10 ["await"]
  CALL R4 1 0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R4 R0 K11 ["gameinternationalizationSupportedLanguagesGamesLanguagesAutomaticTranslationStatusPATCH"]
  CALL R4 3 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["all"]
  MOVE R6 R4
  CALL R5 1 1
  NAMECALL R5 R5 K10 ["await"]
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["Promise"]
  NEWTABLE R2 32 0
  SETTABLEKS R2 R2 K9 ["__index"]
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R3 R2 K11 ["new"]
  DUPCLOSURE R3 K12 [PROTO_1]
  SETTABLEKS R3 R2 K13 ["localeSupportedLocalesGET"]
  DUPCLOSURE R3 K14 [PROTO_2]
  SETTABLEKS R3 R2 K15 ["localeLocalesGET"]
  DUPCLOSURE R3 K16 [PROTO_3]
  SETTABLEKS R3 R2 K17 ["gameinternationalizationSourceLanguageGamesGET"]
  DUPCLOSURE R3 K18 [PROTO_4]
  SETTABLEKS R3 R2 K19 ["gameinternationalizationSourceLanguageGamesPATCH"]
  DUPCLOSURE R3 K20 [PROTO_5]
  SETTABLEKS R3 R2 K21 ["gameinternationalizationAutoLocalizationGamesAutoLocalizationTablePOST"]
  DUPCLOSURE R3 K22 [PROTO_6]
  SETTABLEKS R3 R2 K23 ["gameinternationalizationAutoLocalizationGamesSettingsPATCH"]
  DUPCLOSURE R3 K24 [PROTO_7]
  SETTABLEKS R3 R2 K25 ["gameinternationalizationAutomaticTranslationGamesFeatureStatusGET"]
  DUPCLOSURE R3 K26 [PROTO_8]
  SETTABLEKS R3 R2 K27 ["gameinternationalizationAutomaticTranslationLanguagesTargetLanguagesGET"]
  DUPCLOSURE R3 K28 [PROTO_9]
  SETTABLEKS R3 R2 K29 ["gameinternationalizationSupportedLanguagesGamesAutomaticTranslationStatusGET"]
  DUPCLOSURE R3 K30 [PROTO_10]
  SETTABLEKS R3 R2 K31 ["gameinternationalizationSupportedLanguagesGamesPATCH"]
  DUPCLOSURE R3 K32 [PROTO_11]
  SETTABLEKS R3 R2 K33 ["gameinternationalizationSupportedLanguagesGamesLanguagesAutomaticTranslationStatusPATCH"]
  DUPCLOSURE R3 K34 [PROTO_12]
  SETTABLEKS R3 R2 K35 ["getSupportedLanguages"]
  DUPCLOSURE R3 K36 [PROTO_13]
  SETTABLEKS R3 R2 K37 ["getLanguageCodeToNames"]
  DUPCLOSURE R3 K38 [PROTO_14]
  SETTABLEKS R3 R2 K39 ["getSourceLanguage"]
  DUPCLOSURE R3 K40 [PROTO_15]
  SETTABLEKS R3 R2 K41 ["setSourceLanguage"]
  DUPCLOSURE R3 K42 [PROTO_16]
  SETTABLEKS R3 R2 K43 ["getAutoLocalizationSettings"]
  DUPCLOSURE R3 K44 [PROTO_17]
  SETTABLEKS R3 R2 K45 ["setAutoLocalizationSettings"]
  DUPCLOSURE R3 K46 [PROTO_18]
  SETTABLEKS R3 R2 K47 ["getAutoTranslationFeatureStatus"]
  DUPCLOSURE R3 K48 [PROTO_19]
  SETTABLEKS R3 R2 K49 ["getAutoTranslationTargetLanguages"]
  DUPCLOSURE R3 K50 [PROTO_20]
  SETTABLEKS R3 R2 K51 ["getAutoTranslationSetings"]
  DUPCLOSURE R3 K52 [PROTO_21]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K53 ["setAutoTranslationSetings"]
  RETURN R2 1
