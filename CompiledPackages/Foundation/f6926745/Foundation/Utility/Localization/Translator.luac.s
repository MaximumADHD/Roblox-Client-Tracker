PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["LOCALIZATION_TABLE_NAME"]
        3 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        5 CALL                             R1 2 1
        6 JUMPIFEQKNIL                     R1 ; [+17]
        8 LOADK                            R4 K2 ["LocalizationTable"]
        9 NAMECALL                         R2 R1 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K4 ["SetEntries"]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K5 ["FoundationTranslatorLocalizationRecovery"]
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R1 1
       22 LOADNIL                          R2
       23 RETURN                           R2 1
       24 GETIMPORT                        R2 K8 [Instance.new]
       26 LOADK                            R3 K2 ["LocalizationTable"]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K0 ["LOCALIZATION_TABLE_NAME"]
       31 SETTABLEKS                       R3 R2 K9 ["Name"]
       33 LOADB                            R3 0
       34 SETTABLEKS                       R3 R2 K10 ["Archivable"]
       36 LOADK                            R3 K11 ["en-us"]
       37 SETTABLEKS                       R3 R2 K12 ["SourceLocaleId"]
       39 GETUPVAL                         R5 1
       40 NAMECALL                         R3 R2 K4 ["SetEntries"]
       42 CALL                             R3 2 0
       43 SETTABLEKS                       R0 R2 K13 ["Parent"]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K5 ["FoundationTranslatorLocalizationRecovery"]
       48 JUMPIFNOT                        R3 ; [+1]
       49 RETURN                           R2 1
       50 LOADNIL                          R3
       51 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationTranslatorLocalizationRecovery"]
        3 JUMPIFNOT                        R1 ; [+15]
        4 GETUPVAL                         R1 1
        5 JUMPIFEQKNIL                     R1 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["Parent"]
       10 JUMPIFNOTEQKNIL                  R1 ; [+8]
       12 GETUPVAL                         R1 2
       13 GETUPVAL                         R2 3
       14 CALL                             R1 1 1
       15 SETUPVAL                         R1 1
       16 NEWTABLE                         R1 0 0
       18 SETUPVAL                         R1 4
       19 GETUPVAL                         R2 4
       20 GETTABLE                         R1 R2 R0
       21 JUMPIFNOT                        R1 ; [+1]
       22 RETURN                           R1 1
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R4 5
       25 GETTABLEKS                       R4 R4 K2 ["LOCALIZATION_TABLE_NAME"]
       27 NAMECALL                         R2 R2 K3 ["FindFirstChild"]
       29 CALL                             R2 2 1
       30 MOVE                             R4 R0
       31 NAMECALL                         R2 R2 K4 ["GetTranslator"]
       33 CALL                             R2 2 1
       34 MOVE                             R1 R2
       35 GETUPVAL                         R2 4
       36 SETTABLE                         R1 R2 R0
       37 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["RobloxLocaleId"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R4 1
        9 GETTABLEKS                       R5 R2 K2 ["LocaleId"]
       11 JUMPIFNOTEQKS                    R5 K3 ["zh-cjv"] ; [+3]
       13 LOADK                            R5 K4 [""]
       14 RETURN                           R5 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["FoundationTranslatorLocalizationRecovery"]
       18 JUMPIFNOT                        R5 ; [+9]
       19 GETUPVAL                         R5 1
       20 LOADK                            R6 K6 ["en-us"]
       21 CALL                             R5 1 1
       22 MOVE                             R7 R0
       23 MOVE                             R8 R1
       24 NAMECALL                         R5 R5 K7 ["FormatByKey"]
       26 CALL                             R5 3 -1
       27 RETURN                           R5 -1
       28 GETUPVAL                         R5 2
       29 MOVE                             R7 R0
       30 MOVE                             R8 R1
       31 NAMECALL                         R5 R5 K7 ["FormatByKey"]
       33 CALL                             R5 3 -1
       34 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 GETUPVAL                         R6 1
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R7 R7 K0 ["RobloxLocaleId"]
        7 CALL                             R6 1 1
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R3
        3 GETUPVAL                         R7 1
        4 MOVE                             R8 R2
        5 CALL                             R7 1 1
        6 CALL                             R4 3 -1
        7 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Utility"]
       15 GETTABLEKS                       R3 R3 K8 ["Wrappers"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["Services"]
       20 GETTABLEKS                       R3 R3 K10 ["LocalizationService"]
       22 GETTABLEKS                       R4 R2 K9 ["Services"]
       24 GETTABLEKS                       R4 R4 K11 ["GuiService"]
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K12 ["Constants"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K7 ["Utility"]
       35 GETTABLEKS                       R7 R7 K13 ["Flags"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R1 K14 ["Generated"]
       42 GETTABLEKS                       R8 R8 K15 ["Translations"]
       44 GETTABLEKS                       R8 R8 K16 ["GeneratedTranslations"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R9 R6 K17 ["FoundationTranslatorUseScript"]
       49 JUMPIFNOT                        R9 ; [+2]
       50 MOVE                             R8 R1
       51 JUMP                             ; [+1]
       52 MOVE                             R8 R4
       53 DUPCLOSURE                       R9 K18 [PROTO_0]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 MOVE                             R10 R9
       58 MOVE                             R11 R8
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R13 R5 K19 ["LOCALIZATION_TABLE_NAME"]
       62 NAMECALL                         R11 R8 K20 ["FindFirstChild"]
       64 CALL                             R11 2 1
       65 LOADK                            R13 K21 ["en-us"]
       66 NAMECALL                         R11 R11 K22 ["GetTranslator"]
       68 CALL                             R11 2 1
       69 NEWTABLE                         R12 0 0
       71 NEWCLOSURE                       R13 P1
       72 CAPTURE                          VAL R6
       73 CAPTURE                          REF R10
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          REF R12
       77 CAPTURE                          VAL R5
       78 DUPCLOSURE                       R14 K23 [PROTO_2]
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R3
       81 DUPCLOSURE                       R15 K24 [PROTO_4]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R11
       85 NEWTABLE                         R16 2 0
       87 DUPCLOSURE                       R17 K25 [PROTO_5]
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R17 R16 K26 ["FormatByKey"]
       93 DUPCLOSURE                       R17 K27 [PROTO_6]
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R13
       96 SETTABLEKS                       R17 R16 K28 ["FormatByKeyForLocale"]
       98 CLOSEUPVALS                      R10
       99 RETURN                           R16 1
