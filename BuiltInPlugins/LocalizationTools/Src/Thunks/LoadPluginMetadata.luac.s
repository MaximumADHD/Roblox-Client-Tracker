PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [ipairs]
        6 GETTABLEKS                       R4 R0 K2 ["responseBody"]
        8 GETTABLEKS                       R4 R4 K3 ["data"]
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 GETTABLEKS                       R8 R7 K4 ["isEnabledForInGameUgc"]
       14 JUMPIFNOT                        R8 ; [+8]
       15 GETTABLEKS                       R8 R7 K5 ["locale"]
       17 GETTABLEKS                       R8 R8 K6 ["language"]
       19 GETTABLEKS                       R8 R8 K7 ["languageCode"]
       21 LOADB                            R9 1
       22 SETTABLE                         R9 R1 R8
       23 FORGLOOP                         R3 2 [inext] ; [-12]
       25 LOADK                            R3 K8 ["zh-hans"]
       26 SETTABLEKS                       R3 R2 K9 ["zh-cjv"]
       28 GETUPVAL                         R3 0
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R1
       31 MOVE                             R7 R2
       32 CALL                             R5 2 -1
       33 NAMECALL                         R3 R3 K10 ["dispatch"]
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K2 ["PluginMetadata"]
        4 LOADK                            R4 K3 ["GetAllLocalesFailed"]
        5 NAMECALL                         R1 R1 K4 ["getText"]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Locale"]
        3 GETTABLEKS                       R1 R1 K1 ["V1"]
        5 GETTABLEKS                       R1 R1 K2 ["locales"]
        7 CALL                             R1 0 1
        8 NAMECALL                         R2 R1 K3 ["makeRequest"]
       10 CALL                             R2 1 1
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R2 R2 K4 ["andThen"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["responseBody"]
        4 GETTABLEKS                       R2 R2 K3 ["data"]
        6 CALL                             R1 1 3
        7 FORGPREP_INEXT                   R1
        8 GETUPVAL                         R7 0
        9 GETTABLE                         R6 R7 R5
       10 JUMPIFNOT                        R6 ; [+9]
       11 GETUPVAL                         R6 1
       12 GETUPVAL                         R8 2
       13 LOADB                            R9 1
       14 CALL                             R8 1 -1
       15 NAMECALL                         R6 R6 K4 ["dispatch"]
       17 CALL                             R6 -1 0
       18 LOADB                            R6 1
       19 RETURN                           R6 1
       20 FORGLOOP                         R1 2 [inext] ; [-13]
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K2 ["PluginMetadata"]
        4 LOADK                            R4 K3 ["GetPermissionFailedMessage"]
        5 NAMECALL                         R1 R1 K4 ["getText"]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 0
        9 LOADB                            R0 0
       10 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["API"]
        3 GETTABLEKS                       R1 R1 K1 ["Loc"]
        5 GETTABLEKS                       R1 R1 K2 ["TranslationRoles"]
        7 GETIMPORT                        R2 K4 [game]
        9 GETTABLEKS                       R2 R2 K5 ["GameId"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R4 1
       13 LOADB                            R5 0
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R0 K6 ["dispatch"]
       17 CALL                             R2 -1 0
       18 NAMECALL                         R2 R1 K7 ["makeRequest"]
       20 CALL                             R2 1 1
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U3
       27 NAMECALL                         R2 R2 K8 ["andThen"]
       29 CALL                             R2 3 1
       30 NAMECALL                         R2 R2 K9 ["await"]
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+20]
        1 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["StatusCodes"]
        6 GETTABLEKS                       R2 R2 K2 ["OK"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+12]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R4 R0 K3 ["responseBody"]
       14 GETTABLEKS                       R4 R4 K4 ["autoLocalizationTableId"]
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R1 K5 ["dispatch"]
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R1 K7 [warn]
       23 GETUPVAL                         R2 3
       24 LOADK                            R4 K8 ["PluginMetadata"]
       25 LOADK                            R5 K9 ["GetOrCreateCloudTableFailedMessage"]
       26 NAMECALL                         R2 R2 K10 ["getText"]
       28 CALL                             R2 3 -1
       29 CALL                             R1 -1 0
       30 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K2 ["PluginMetadata"]
        4 LOADK                            R4 K3 ["GetOrCreateCloudTableFailedMessage"]
        5 NAMECALL                         R1 R1 K4 ["getText"]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GameInternationalization"]
        3 GETTABLEKS                       R1 R1 K1 ["V1"]
        5 GETTABLEKS                       R1 R1 K2 ["AutoLocalization"]
        7 GETTABLEKS                       R1 R1 K3 ["games"]
        9 GETIMPORT                        R2 K5 [game]
       11 GETTABLEKS                       R2 R2 K6 ["GameId"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R2 R1 K7 ["makeRequest"]
       16 CALL                             R2 1 1
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U3
       24 NAMECALL                         R2 R2 K8 ["andThen"]
       26 CALL                             R2 3 0
       27 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R1 K3 [0] ; [+14]
        6 GETUPVAL                         R3 0
        7 LOADB                            R4 0
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R0 K4 ["dispatch"]
       11 CALL                             R1 -1 0
       12 GETUPVAL                         R3 1
       13 LOADK                            R4 K5 [""]
       14 CALL                             R3 1 -1
       15 NAMECALL                         R1 R0 K4 ["dispatch"]
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 2
       20 GETUPVAL                         R5 3
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R4
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R5
       26 NAMECALL                         R1 R0 K4 ["dispatch"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R4 2
       30 GETUPVAL                         R5 3
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R5
       36 NAMECALL                         R1 R0 K4 ["dispatch"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R4
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R5
        6 NAMECALL                         R1 R0 K0 ["dispatch"]
        8 CALL                             R1 2 0
        9 GETIMPORT                        R1 K2 [game]
       11 GETTABLEKS                       R1 R1 K3 ["GameId"]
       13 JUMPIFEQKN                       R1 K4 [0] ; [+21]
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 1
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R4
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R5
       22 NAMECALL                         R1 R0 K0 ["dispatch"]
       24 CALL                             R1 2 0
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 NEWCLOSURE                       R3 P2
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          VAL R5
       32 NAMECALL                         R1 R0 K0 ["dispatch"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Http"]
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Src"]
       22 GETTABLEKS                       R3 R3 K9 ["Actions"]
       24 GETTABLEKS                       R3 R3 K10 ["LoadLanguagesAndLocalesInfo"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K8 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Actions"]
       33 GETTABLEKS                       R4 R4 K11 ["LoadManageTranslationPermission"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K8 ["Src"]
       40 GETTABLEKS                       R5 R5 K9 ["Actions"]
       42 GETTABLEKS                       R5 R5 K12 ["SetCloudTableId"]
       44 CALL                             R4 1 1
       45 DUPTABLE                         R5 K16 [{"owner", "collaborator", "translator"}]
       46 LOADB                            R6 1
       47 SETTABLEKS                       R6 R5 K13 ["owner"]
       49 LOADB                            R6 1
       50 SETTABLEKS                       R6 R5 K14 ["collaborator"]
       52 LOADB                            R6 1
       53 SETTABLEKS                       R6 R5 K15 ["translator"]
       55 DUPCLOSURE                       R6 K17 [PROTO_3]
       56 CAPTURE                          VAL R2
       57 DUPCLOSURE                       R7 K18 [PROTO_7]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 DUPCLOSURE                       R8 K19 [PROTO_11]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R9 K20 [PROTO_13]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R1
       68 DUPCLOSURE                       R10 K21 [PROTO_15]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R4
       74 DUPTABLE                         R11 K25 [{"GetAll", "OnGameIdChanged", "GetManageTranslationPermission"}]
       75 SETTABLEKS                       R10 R11 K22 ["GetAll"]
       77 SETTABLEKS                       R9 R11 K23 ["OnGameIdChanged"]
       79 SETTABLEKS                       R7 R11 K24 ["GetManageTranslationPermission"]
       81 RETURN                           R11 1
