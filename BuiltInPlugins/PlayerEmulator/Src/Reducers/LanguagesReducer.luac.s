PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["displayText"]
        2 GETTABLEKS                       R4 R1 K0 ["displayText"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["data"]
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 GETIMPORT                        R5 K2 [pairs]
        8 MOVE                             R6 R2
        9 CALL                             R5 1 3
       10 FORGPREP_NEXT                    R5
       11 GETTABLEKS                       R10 R9 K3 ["locale"]
       13 GETTABLEKS                       R10 R10 K3 ["locale"]
       15 DUPTABLE                         R11 K7 [{"localeId", "languageCode", "displayText"}]
       16 GETTABLEKS                       R12 R9 K3 ["locale"]
       18 GETTABLEKS                       R12 R12 K3 ["locale"]
       20 SETTABLEKS                       R12 R11 K4 ["localeId"]
       22 GETTABLEKS                       R12 R9 K3 ["locale"]
       24 GETTABLEKS                       R12 R12 K8 ["language"]
       26 GETTABLEKS                       R12 R12 K5 ["languageCode"]
       28 SETTABLEKS                       R12 R11 K5 ["languageCode"]
       30 GETTABLEKS                       R12 R9 K3 ["locale"]
       32 GETTABLEKS                       R12 R12 K8 ["language"]
       34 GETTABLEKS                       R12 R12 K9 ["name"]
       36 SETTABLEKS                       R12 R11 K6 ["displayText"]
       38 SETTABLE                         R11 R3 R10
       39 DUPTABLE                         R12 K10 [{"localeId", "displayText"}]
       40 GETTABLEKS                       R13 R9 K3 ["locale"]
       42 GETTABLEKS                       R13 R13 K3 ["locale"]
       44 SETTABLEKS                       R13 R12 K4 ["localeId"]
       46 GETTABLEKS                       R13 R9 K3 ["locale"]
       48 GETTABLEKS                       R13 R13 K8 ["language"]
       50 GETTABLEKS                       R13 R13 K9 ["name"]
       52 SETTABLEKS                       R13 R12 K6 ["displayText"]
       54 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       56 MOVE                             R11 R4
       57 GETIMPORT                        R10 K13 [table.insert]
       59 CALL                             R10 2 0
       60 FORGLOOP                         R5 2 ; [-50]
       62 GETIMPORT                        R5 K15 [table.sort]
       64 MOVE                             R6 R4
       65 DUPCLOSURE                       R7 K16 [PROTO_0]
       66 CALL                             R5 2 0
       67 DUPTABLE                         R5 K23 [{["isCustom"] = True, ["displayTextSectionKey"] = "LanguageSection", ["displayTextStringKey"] = "CustomLanguageDisplayText"}]
       68 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
       70 MOVE                             R7 R4
       71 MOVE                             R8 R5
       72 GETIMPORT                        R6 K13 [table.insert]
       74 CALL                             R6 2 0
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K24 ["Dictionary"]
       78 GETTABLEKS                       R6 R6 K25 ["join"]
       80 MOVE                             R7 R0
       81 DUPTABLE                         R8 K28 [{"languagesTable", "languagesList"}]
       82 SETTABLEKS                       R3 R8 K26 ["languagesTable"]
       84 SETTABLEKS                       R4 R8 K27 ["languagesList"]
       86 CALL                             R6 2 -1
       87 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["createReducer"]
       25 DUPTABLE                         R4 K11 [{"languagesTable", "languagesList"}]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K9 ["languagesTable"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K10 ["languagesList"]
       34 DUPTABLE                         R5 K13 [{"LoadLanguages"}]
       35 DUPCLOSURE                       R6 K14 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R6 R5 K12 ["LoadLanguages"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1
