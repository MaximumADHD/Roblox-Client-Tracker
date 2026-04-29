PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["LOCALIZATION_TABLE_NAME"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIFEQKNIL                     R1 ; [+11]
        9 LOADK                            R4 K2 ["LocalizationTable"]
       10 NAMECALL                         R2 R1 K3 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+5]
       14 GETUPVAL                         R4 2
       15 NAMECALL                         R2 R1 K4 ["SetEntries"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K7 [Instance.new]
       21 LOADK                            R3 K2 ["LocalizationTable"]
       22 CALL                             R2 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K0 ["LOCALIZATION_TABLE_NAME"]
       26 SETTABLEKS                       R3 R2 K8 ["Name"]
       28 LOADB                            R3 0
       29 SETTABLEKS                       R3 R2 K9 ["Archivable"]
       31 LOADK                            R3 K10 ["en-us"]
       32 SETTABLEKS                       R3 R2 K11 ["SourceLocaleId"]
       34 GETUPVAL                         R5 2
       35 NAMECALL                         R3 R2 K4 ["SetEntries"]
       37 CALL                             R3 2 0
       38 SETTABLEKS                       R0 R2 K12 ["Parent"]
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K0 ["LOCALIZATION_TABLE_NAME"]
        8 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K2 ["GetTranslator"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 GETUPVAL                         R2 0
       17 SETTABLE                         R1 R2 R0
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RobloxLocaleId"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+2]
        6 MOVE                             R0 R2
        7 RETURN                           R0 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K1 ["LOCALIZATION_TABLE_NAME"]
       12 NAMECALL                         R3 R3 K2 ["FindFirstChild"]
       14 CALL                             R3 2 1
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R3 K3 ["GetTranslator"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 GETUPVAL                         R3 1
       21 SETTABLE                         R2 R3 R1
       22 MOVE                             R0 R2
       23 RETURN                           R0 1

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
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 NAMECALL                         R5 R5 K5 ["FormatByKey"]
       20 CALL                             R5 3 -1
       21 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K0 ["RobloxLocaleId"]
        6 GETUPVAL                         R9 2
        7 GETTABLE                         R8 R9 R7
        8 JUMPIFNOT                        R8 ; [+2]
        9 MOVE                             R6 R8
       10 JUMP                             ; [+15]
       11 GETUPVAL                         R9 3
       12 GETUPVAL                         R12 4
       13 GETTABLEKS                       R11 R12 K1 ["LOCALIZATION_TABLE_NAME"]
       15 NAMECALL                         R9 R9 K2 ["FindFirstChild"]
       17 CALL                             R9 2 1
       18 MOVE                             R11 R7
       19 NAMECALL                         R9 R9 K3 ["GetTranslator"]
       21 CALL                             R9 2 1
       22 MOVE                             R8 R9
       23 GETUPVAL                         R9 2
       24 SETTABLE                         R8 R9 R7
       25 MOVE                             R6 R8
       26 CALL                             R3 3 -1
       27 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R3
        3 GETUPVAL                         R9 1
        4 GETTABLE                         R8 R9 R2
        5 JUMPIFNOT                        R8 ; [+2]
        6 MOVE                             R7 R8
        7 JUMP                             ; [+15]
        8 GETUPVAL                         R9 2
        9 GETUPVAL                         R12 3
       10 GETTABLEKS                       R11 R12 K0 ["LOCALIZATION_TABLE_NAME"]
       12 NAMECALL                         R9 R9 K1 ["FindFirstChild"]
       14 CALL                             R9 2 1
       15 MOVE                             R11 R2
       16 NAMECALL                         R9 R9 K2 ["GetTranslator"]
       18 CALL                             R9 2 1
       19 MOVE                             R8 R9
       20 GETUPVAL                         R9 1
       21 SETTABLE                         R8 R9 R2
       22 MOVE                             R7 R8
       23 CALL                             R4 3 -1
       24 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Utility"]
       15 GETTABLEKS                       R3 R4 K8 ["Wrappers"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R4 R2 K9 ["Services"]
       20 GETTABLEKS                       R3 R4 K10 ["LocalizationService"]
       22 GETTABLEKS                       R5 R2 K9 ["Services"]
       24 GETTABLEKS                       R4 R5 K11 ["GuiService"]
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K12 ["Constants"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R9 R1 K13 ["Generated"]
       35 GETTABLEKS                       R8 R9 K14 ["Translations"]
       37 GETTABLEKS                       R7 R8 K15 ["GeneratedTranslations"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K16 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 MOVE                             R8 R7
       45 MOVE                             R9 R4
       46 CALL                             R8 1 0
       47 GETTABLEKS                       R10 R5 K17 ["LOCALIZATION_TABLE_NAME"]
       49 NAMECALL                         R8 R4 K18 ["FindFirstChild"]
       51 CALL                             R8 2 1
       52 LOADK                            R10 K19 ["en-us"]
       53 NAMECALL                         R8 R8 K20 ["GetTranslator"]
       55 CALL                             R8 2 1
       56 NEWTABLE                         R9 0 0
       58 DUPCLOSURE                       R10 K21 [PROTO_1]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R11 K22 [PROTO_2]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 DUPCLOSURE                       R12 K23 [PROTO_4]
       68 CAPTURE                          VAL R8
       69 NEWTABLE                         R13 2 0
       71 DUPCLOSURE                       R14 K24 [PROTO_5]
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R14 R13 K25 ["FormatByKey"]
       79 DUPCLOSURE                       R14 K26 [PROTO_6]
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R14 R13 K27 ["FormatByKeyForLocale"]
       86 RETURN                           R13 1
