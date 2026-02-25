PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["locale"]
        3 LOADK                            R5 K2 ["/v1/locales/supported-locales"]
        4 NAMECALL                         R2 R1 K3 ["get"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["locale"]
        3 LOADK                            R6 K2 ["/v1/locales"]
        4 DUPTABLE                         R7 K4 [{"Params"}]
        5 DUPTABLE                         R8 K6 [{"displayValueLocale"}]
        6 SETTABLEKS                       R1 R8 K5 ["displayValueLocale"]
        8 SETTABLEKS                       R8 R7 K3 ["Params"]
       10 NAMECALL                         R3 R2 K7 ["get"]
       12 CALL                             R3 4 -1
       13 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["gameinternationalization"]
        3 LOADK                            R7 K2 ["/v1/source-language/games/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 NAMECALL                         R3 R2 K3 ["get"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["gameinternationalization"]
        3 LOADK                            R8 K2 ["/v1/source-language/games/"]
        4 MOVE                             R9 R1
        5 CONCAT                           R7 R8 R9
        6 DUPTABLE                         R8 K4 [{"Params"}]
        7 DUPTABLE                         R9 K6 [{"languageCode"}]
        8 SETTABLEKS                       R2 R9 K5 ["languageCode"]
       10 SETTABLEKS                       R9 R8 K3 ["Params"]
       12 NAMECALL                         R4 R3 K7 ["patch"]
       14 CALL                             R4 4 -1
       15 RETURN                           R4 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["localizationtables"]
        3 LOADK                            R7 K2 ["/v1/autolocalization/games/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/autolocalizationtable"]
        6 CONCAT                           R6 R7 R9
        7 DUPTABLE                         R7 K5 [{"Body"}]
        8 NEWTABLE                         R8 0 0
       10 SETTABLEKS                       R8 R7 K4 ["Body"]
       12 NAMECALL                         R3 R2 K6 ["post"]
       14 CALL                             R3 4 -1
       15 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["gameinternationalization"]
        3 LOADK                            R7 K2 ["/v1/autolocalization/games/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/autolocalizationtable"]
        6 CONCAT                           R6 R7 R9
        7 DUPTABLE                         R7 K5 [{"Body"}]
        8 NEWTABLE                         R8 0 0
       10 SETTABLEKS                       R8 R7 K4 ["Body"]
       12 NAMECALL                         R3 R2 K6 ["post"]
       14 CALL                             R3 4 -1
       15 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["__networking"]
        2 LOADK                            R7 K1 ["gameinternationalization"]
        3 LOADK                            R9 K2 ["/v1/autolocalization/games/"]
        4 MOVE                             R10 R1
        5 LOADK                            R11 K3 ["/settings"]
        6 CONCAT                           R8 R9 R11
        7 DUPTABLE                         R9 K5 [{"Body"}]
        8 DUPTABLE                         R10 K8 [{"isAutolocalizationEnabled", "shouldUseLocalizationTable"}]
        9 SETTABLEKS                       R2 R10 K6 ["isAutolocalizationEnabled"]
       11 SETTABLEKS                       R3 R10 K7 ["shouldUseLocalizationTable"]
       13 SETTABLEKS                       R10 R9 K4 ["Body"]
       15 NAMECALL                         R5 R4 K9 ["patch"]
       17 CALL                             R5 4 -1
       18 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R5 R0 K0 ["__networking"]
        2 LOADK                            R8 K1 ["localizationtables"]
        3 LOADK                            R10 K2 ["/v1/autolocalization/games/"]
        4 MOVE                             R11 R1
        5 LOADK                            R12 K3 ["/settings"]
        6 CONCAT                           R9 R10 R12
        7 DUPTABLE                         R10 K5 [{"Body"}]
        8 DUPTABLE                         R11 K9 [{"shouldUseLocalizationTable", "isAutomaticEntriesSettingEnabled", "isAutomaticEntriesDeletionsEnabled"}]
        9 SETTABLEKS                       R4 R11 K6 ["shouldUseLocalizationTable"]
       11 SETTABLEKS                       R2 R11 K7 ["isAutomaticEntriesSettingEnabled"]
       13 SETTABLEKS                       R3 R11 K8 ["isAutomaticEntriesDeletionsEnabled"]
       15 SETTABLEKS                       R11 R10 K4 ["Body"]
       17 NAMECALL                         R6 R5 K10 ["patch"]
       19 CALL                             R6 4 -1
       20 RETURN                           R6 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["gameinternationalization"]
        3 LOADK                            R7 K2 ["/v1/automatic-translation/games/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/feature-status"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["gameinternationalization"]
        3 LOADK                            R7 K2 ["/v1/automatic-translation/languages/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/target-languages"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["gameinternationalization"]
        3 LOADK                            R7 K2 ["/v1/supported-languages/games/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/automatic-translation-status"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["gameinternationalization"]
        3 LOADK                            R8 K2 ["/v1/supported-languages/games/"]
        4 MOVE                             R9 R1
        5 CONCAT                           R7 R8 R9
        6 DUPTABLE                         R8 K4 [{"Body"}]
        7 SETTABLEKS                       R2 R8 K3 ["Body"]
        9 NAMECALL                         R4 R3 K5 ["patch"]
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 GETIMPORT                        R4 K2 [pairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 LOADK                            R11 K3 ["gameinternationalization"]
        8 LOADK                            R13 K4 ["/v1/supported-languages/games/"]
        9 MOVE                             R14 R1
       10 LOADK                            R15 K5 ["/languages/"]
       11 MOVE                             R16 R7
       12 LOADK                            R17 K6 ["/automatic-translation-status"]
       13 CONCAT                           R12 R13 R17
       14 DUPTABLE                         R13 K8 [{"Body"}]
       15 SETTABLEKS                       R8 R13 K7 ["Body"]
       17 NAMECALL                         R9 R3 K9 ["patch"]
       19 CALL                             R9 4 1
       20 NAMECALL                         R10 R9 K10 ["await"]
       22 CALL                             R10 1 0
       23 FORGLOOP                         R4 2 ; [-17]
       25 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["localeSupportedLocalesGET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 NEWTABLE                         R2 0 0
        8 GETTABLEKS                       R3 R1 K2 ["responseBody"]
       10 GETIMPORT                        R4 K4 [pairs]
       12 GETTABLEKS                       R5 R3 K5 ["supportedLocales"]
       14 CALL                             R4 1 3
       15 FORGPREP_NEXT                    R4
       16 GETTABLEKS                       R10 R8 K6 ["language"]
       18 GETTABLEKS                       R9 R10 K7 ["languageCode"]
       20 GETTABLEKS                       R11 R8 K6 ["language"]
       22 GETTABLEKS                       R10 R11 K8 ["nativeName"]
       24 SETTABLE                         R10 R2 R9
       25 FORGLOOP                         R4 2 ; [-10]
       27 RETURN                           R2 1

PROTO_15:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["localeLocalesGET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K3 [pairs]
       11 GETTABLEKS                       R7 R2 K4 ["responseBody"]
       13 GETTABLEKS                       R5 R7 K5 ["data"]
       15 CALL                             R4 1 3
       16 FORGPREP_NEXT                    R4
       17 GETTABLEKS                       R11 R8 K6 ["locale"]
       19 GETTABLEKS                       R10 R11 K7 ["language"]
       21 GETTABLEKS                       R9 R10 K8 ["languageCode"]
       23 GETTABLE                         R10 R3 R9
       24 JUMPIFNOTEQKNIL                  R10 ; [+8]
       26 GETTABLEKS                       R12 R8 K6 ["locale"]
       28 GETTABLEKS                       R11 R12 K7 ["language"]
       30 GETTABLEKS                       R10 R11 K9 ["name"]
       32 SETTABLE                         R10 R3 R9
       33 FORGLOOP                         R4 2 ; [-17]
       35 RETURN                           R3 1

PROTO_16:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["gameinternationalizationSourceLanguageGamesGET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["languageCode"]
       11 RETURN                           R3 1

PROTO_17:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["gameinternationalizationSourceLanguageGamesPATCH"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["localizationtablesAutoLocalizationGamesAutoLocalizationTablePOST"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R4 R3 K3 ["isAutomaticEntriesSettingEnabled"]
       11 GETTABLEKS                       R5 R3 K4 ["isAutomaticEntriesDeletionEnabled"]
       13 GETTABLEKS                       R6 R3 K5 ["shouldUseLocalizationTable"]
       15 RETURN                           R4 3

PROTO_19:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["gameinternationalizationAutoLocalizationGamesAutoLocalizationTablePOST"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R4 R3 K3 ["isAutolocalizationEnabled"]
       11 GETTABLEKS                       R5 R3 K4 ["shouldUseLocalizationTable"]
       13 RETURN                           R4 2

PROTO_20:
        0 MOVE                             R7 R1
        1 MOVE                             R8 R2
        2 MOVE                             R9 R3
        3 MOVE                             R10 R4
        4 NAMECALL                         R5 R0 K0 ["localizationtablesAutoLocalizationGamesSettingsPATCH"]
        6 CALL                             R5 5 1
        7 NAMECALL                         R5 R5 K1 ["await"]
        9 CALL                             R5 1 0
       10 RETURN                           R0 0

PROTO_21:
        0 MOVE                             R6 R1
        1 MOVE                             R7 R2
        2 MOVE                             R8 R3
        3 NAMECALL                         R4 R0 K0 ["gameinternationalizationAutoLocalizationGamesSettingsPATCH"]
        5 CALL                             R4 4 1
        6 NAMECALL                         R4 R4 K1 ["await"]
        8 CALL                             R4 1 0
        9 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["gameinternationalizationAutomaticTranslationGamesFeatureStatusGET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R4 K3 ["isAutomaticTranslationAllowed"]
       11 RETURN                           R3 1

PROTO_23:
        0 JUMPIF                           R1 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K0 ["gameinternationalizationAutomaticTranslationLanguagesTargetLanguagesGET"]
        7 CALL                             R2 2 1
        8 NAMECALL                         R2 R2 K1 ["await"]
       10 CALL                             R2 1 1
       11 NEWTABLE                         R3 0 0
       13 GETIMPORT                        R4 K3 [pairs]
       15 GETTABLEKS                       R7 R2 K4 ["responseBody"]
       17 GETTABLEKS                       R5 R7 K5 ["targetLanguages"]
       19 CALL                             R4 1 3
       20 FORGPREP_NEXT                    R4
       21 GETTABLEKS                       R9 R8 K6 ["languageCode"]
       23 GETTABLEKS                       R10 R8 K7 ["isAutomaticTranslationAllowed"]
       25 SETTABLE                         R10 R3 R9
       26 FORGLOOP                         R4 2 ; [-6]
       28 RETURN                           R3 1

PROTO_24:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["gameinternationalizationSupportedLanguagesGamesAutomaticTranslationStatusGET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K3 [pairs]
       11 GETTABLEKS                       R7 R2 K4 ["responseBody"]
       13 GETTABLEKS                       R5 R7 K5 ["data"]
       15 CALL                             R4 1 3
       16 FORGPREP_NEXT                    R4
       17 GETTABLEKS                       R9 R8 K6 ["languageCode"]
       19 GETTABLEKS                       R10 R8 K7 ["isAutomaticTranslationEnabled"]
       21 SETTABLE                         R10 R3 R9
       22 FORGLOOP                         R4 2 ; [-6]
       24 RETURN                           R3 1

PROTO_25:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 JUMPIFNOT                        R8 ; [+16]
        8 NEWTABLE                         R11 4 0
       10 LOADK                            R12 K2 ["Language"]
       11 SETTABLEKS                       R12 R11 K3 ["languageCodeType"]
       13 SETTABLEKS                       R7 R11 K4 ["languageCode"]
       15 LOADB                            R12 0
       16 SETTABLEKS                       R12 R11 K5 ["delete"]
       18 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       20 MOVE                             R10 R3
       21 GETIMPORT                        R9 K8 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-18]
       26 MOVE                             R6 R1
       27 MOVE                             R7 R3
       28 NAMECALL                         R4 R0 K9 ["gameinternationalizationSupportedLanguagesGamesPATCH"]
       30 CALL                             R4 3 1
       31 NAMECALL                         R4 R4 K10 ["await"]
       33 CALL                             R4 1 0
       34 MOVE                             R6 R1
       35 MOVE                             R7 R2
       36 NAMECALL                         R4 R0 K11 ["gameinternationalizationSupportedLanguagesGamesLanguagesAutomaticTranslationStatusPATCH"]
       38 CALL                             R4 3 0
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Packages"]
       15 GETTABLEKS                       R4 R5 K6 ["Framework"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETTABLEKS                       R1 R2 K8 ["Promise"]
       22 NEWTABLE                         R2 32 0
       24 SETTABLEKS                       R2 R2 K9 ["__index"]
       26 DUPCLOSURE                       R3 K10 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R3 R2 K11 ["new"]
       30 DUPCLOSURE                       R3 K12 [PROTO_1]
       31 SETTABLEKS                       R3 R2 K13 ["localeSupportedLocalesGET"]
       33 DUPCLOSURE                       R3 K14 [PROTO_2]
       34 SETTABLEKS                       R3 R2 K15 ["localeLocalesGET"]
       36 DUPCLOSURE                       R3 K16 [PROTO_3]
       37 SETTABLEKS                       R3 R2 K17 ["gameinternationalizationSourceLanguageGamesGET"]
       39 DUPCLOSURE                       R3 K18 [PROTO_4]
       40 SETTABLEKS                       R3 R2 K19 ["gameinternationalizationSourceLanguageGamesPATCH"]
       42 DUPCLOSURE                       R3 K20 [PROTO_5]
       43 SETTABLEKS                       R3 R2 K21 ["localizationtablesAutoLocalizationGamesAutoLocalizationTablePOST"]
       45 DUPCLOSURE                       R3 K22 [PROTO_6]
       46 SETTABLEKS                       R3 R2 K23 ["gameinternationalizationAutoLocalizationGamesAutoLocalizationTablePOST"]
       48 DUPCLOSURE                       R3 K24 [PROTO_7]
       49 SETTABLEKS                       R3 R2 K25 ["gameinternationalizationAutoLocalizationGamesSettingsPATCH"]
       51 DUPCLOSURE                       R3 K26 [PROTO_8]
       52 SETTABLEKS                       R3 R2 K27 ["localizationtablesAutoLocalizationGamesSettingsPATCH"]
       54 DUPCLOSURE                       R3 K28 [PROTO_9]
       55 SETTABLEKS                       R3 R2 K29 ["gameinternationalizationAutomaticTranslationGamesFeatureStatusGET"]
       57 DUPCLOSURE                       R3 K30 [PROTO_10]
       58 SETTABLEKS                       R3 R2 K31 ["gameinternationalizationAutomaticTranslationLanguagesTargetLanguagesGET"]
       60 DUPCLOSURE                       R3 K32 [PROTO_11]
       61 SETTABLEKS                       R3 R2 K33 ["gameinternationalizationSupportedLanguagesGamesAutomaticTranslationStatusGET"]
       63 DUPCLOSURE                       R3 K34 [PROTO_12]
       64 SETTABLEKS                       R3 R2 K35 ["gameinternationalizationSupportedLanguagesGamesPATCH"]
       66 DUPCLOSURE                       R3 K36 [PROTO_13]
       67 SETTABLEKS                       R3 R2 K37 ["gameinternationalizationSupportedLanguagesGamesLanguagesAutomaticTranslationStatusPATCH"]
       69 DUPCLOSURE                       R3 K38 [PROTO_14]
       70 SETTABLEKS                       R3 R2 K39 ["getSupportedLanguages"]
       72 DUPCLOSURE                       R3 K40 [PROTO_15]
       73 SETTABLEKS                       R3 R2 K41 ["getLanguageCodeToNames"]
       75 DUPCLOSURE                       R3 K42 [PROTO_16]
       76 SETTABLEKS                       R3 R2 K43 ["getSourceLanguage"]
       78 DUPCLOSURE                       R3 K44 [PROTO_17]
       79 SETTABLEKS                       R3 R2 K45 ["setSourceLanguage"]
       81 DUPCLOSURE                       R3 K46 [PROTO_18]
       82 SETTABLEKS                       R3 R2 K47 ["getAutoLocalizationSettings"]
       84 DUPCLOSURE                       R3 K48 [PROTO_19]
       85 SETTABLEKS                       R3 R2 K49 ["getAutoLocalizationSettings_Deprecated"]
       87 DUPCLOSURE                       R3 K50 [PROTO_20]
       88 SETTABLEKS                       R3 R2 K51 ["setAutoLocalizationSettings"]
       90 DUPCLOSURE                       R3 K52 [PROTO_21]
       91 SETTABLEKS                       R3 R2 K53 ["setAutoLocalizationSettings_Deprecated"]
       93 DUPCLOSURE                       R3 K54 [PROTO_22]
       94 SETTABLEKS                       R3 R2 K55 ["getAutoTranslationFeatureStatus"]
       96 DUPCLOSURE                       R3 K56 [PROTO_23]
       97 SETTABLEKS                       R3 R2 K57 ["getAutoTranslationTargetLanguages"]
       99 DUPCLOSURE                       R3 K58 [PROTO_24]
      100 SETTABLEKS                       R3 R2 K59 ["getAutoTranslationSetings"]
      102 DUPCLOSURE                       R3 K60 [PROTO_25]
      103 SETTABLEKS                       R3 R2 K61 ["setAutoTranslationSetings"]
      105 RETURN                           R2 1
