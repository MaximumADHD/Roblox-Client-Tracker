PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 LOADK                            R5 K1 ["MessageFrame"]
       11 LOADK                            R6 K2 ["UploadFailedMessage"]
       12 NAMECALL                         R3 R3 K3 ["getText"]
       14 CALL                             R3 3 -1
       15 CALL                             R2 -1 -1
       16 NAMECALL                         R0 R0 K0 ["dispatch"]
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+25]
        1 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["StatusCodes"]
        6 GETTABLEKS                       R2 R3 K2 ["OK"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+17]
       10 GETIMPORT                        R1 K4 [ipairs]
       12 GETTABLEKS                       R4 R0 K5 ["responseBody"]
       14 GETTABLEKS                       R2 R4 K6 ["data"]
       16 CALL                             R1 1 3
       17 FORGPREP_INEXT                   R1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R7 R5 K7 ["languageCode"]
       21 LOADB                            R8 1
       22 SETTABLE                         R8 R6 R7
       23 FORGLOOP                         R1 2 [inext] ; [-6]
       25 RETURN                           R0 0
       26 RETURN                           R0 0
       27 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["makeRequest"]
        4 CALL                             R2 1 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 DUPCLOSURE                       R5 K1 [PROTO_3]
        9 NAMECALL                         R2 R2 K2 ["andThen"]
       11 CALL                             R2 3 1
       12 NAMECALL                         R2 R2 K3 ["await"]
       14 CALL                             R2 1 0
       15 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["StatusCodes"]
        6 GETTABLEKS                       R2 R3 K2 ["OK"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+7]
       10 GETTABLEKS                       R3 R0 K4 ["responseBody"]
       12 GETTABLEKS                       R2 R3 K5 ["languageCode"]
       14 ORK                              R1 R2 K3 [""]
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R1
        1 NAMECALL                         R2 R0 K0 ["makeRequest"]
        3 CALL                             R2 1 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          REF R1
        7 DUPCLOSURE                       R5 K1 [PROTO_6]
        8 NAMECALL                         R2 R2 K2 ["andThen"]
       10 CALL                             R2 3 1
       11 NAMECALL                         R2 R2 K3 ["await"]
       13 CALL                             R2 1 0
       14 CLOSEUPVALS                      R1
       15 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["StatusCodes"]
        5 GETTABLEKS                       R2 R3 K2 ["OK"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+4]
        9 LOADB                            R1 1
       10 SETUPVAL                         R1 1
       11 RETURN                           R0 0
       12 LOADB                            R1 0
       13 SETUPVAL                         R1 1
       14 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 NEWTABLE                         R9 4 0
        9 LOADK                            R10 K2 ["Language"]
       10 SETTABLEKS                       R10 R9 K3 ["languageCodeType"]
       12 SETTABLEKS                       R7 R9 K4 ["languageCode"]
       14 LOADB                            R10 0
       15 SETTABLEKS                       R10 R9 K5 ["delete"]
       17 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       19 MOVE                             R11 R3
       20 MOVE                             R12 R9
       21 GETIMPORT                        R10 K8 [table.insert]
       23 CALL                             R10 2 0
       24 FORGLOOP                         R4 2 ; [-18]
       26 GETUPVAL                         R4 0
       27 MOVE                             R6 R3
       28 NAMECALL                         R4 R4 K9 ["JSONEncode"]
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R9 R0 K10 ["GameInternationalization"]
       33 GETTABLEKS                       R8 R9 K11 ["V1"]
       35 GETTABLEKS                       R7 R8 K12 ["SupportedLanguages"]
       37 GETTABLEKS                       R6 R7 K13 ["Games"]
       39 GETTABLEKS                       R5 R6 K14 ["patch"]
       41 MOVE                             R6 R1
       42 MOVE                             R7 R4
       43 CALL                             R5 2 1
       44 LOADNIL                          R6
       45 NAMECALL                         R7 R5 K15 ["makeRequest"]
       47 CALL                             R7 1 1
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          REF R6
       51 NEWCLOSURE                       R10 P1
       52 CAPTURE                          REF R6
       53 NAMECALL                         R7 R7 K16 ["andThen"]
       55 CALL                             R7 3 1
       56 NAMECALL                         R7 R7 K17 ["await"]
       58 CALL                             R7 1 0
       59 CLOSEUPVALS                      R6
       60 RETURN                           R6 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["identifier"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["38"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+5]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["38"]
       13 GETTABLEKS                       R3 R1 K1 ["38"]
       15 GETTABLEKS                       R4 R0 K0 ["identifier"]
       17 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       19 GETIMPORT                        R2 K4 [table.insert]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["translations"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["43"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+5]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["43"]
       13 GETIMPORT                        R2 K3 [pairs]
       15 GETTABLEKS                       R3 R0 K0 ["translations"]
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 GETTABLEKS                       R8 R1 K1 ["43"]
       21 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       23 MOVE                             R9 R6
       24 GETIMPORT                        R7 K6 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-9]
       29 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETTABLEKS                       R7 R6 K2 ["responseBody"]
        9 JUMPIFEQKNIL                     R7 ; [+50]
       11 GETIMPORT                        R7 K4 [next]
       13 GETTABLEKS                       R8 R6 K2 ["responseBody"]
       15 CALL                             R7 1 1
       16 JUMPIFEQKNIL                     R7 ; [+43]
       18 GETTABLEKS                       R8 R6 K2 ["responseBody"]
       20 GETTABLEKS                       R7 R8 K5 ["failedEntriesAndTranslations"]
       22 JUMPIFEQKNIL                     R7 ; [+37]
       24 GETIMPORT                        R7 K4 [next]
       26 GETTABLEKS                       R9 R6 K2 ["responseBody"]
       28 GETTABLEKS                       R8 R9 K5 ["failedEntriesAndTranslations"]
       30 CALL                             R7 1 1
       31 JUMPIFNOT                        R7 ; [+28]
       32 GETIMPORT                        R7 K1 [pairs]
       34 GETTABLEKS                       R10 R6 K2 ["responseBody"]
       36 GETTABLEKS                       R8 R10 K5 ["failedEntriesAndTranslations"]
       38 CALL                             R7 1 3
       39 FORGPREP_NEXT                    R7
       40 GETTABLEKS                       R12 R11 K6 ["error"]
       42 JUMPIFNOT                        R12 ; [+15]
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R16 R11 K6 ["error"]
       46 GETTABLEKS                       R15 R16 K7 ["errorCode"]
       48 FASTCALL1                        TOSTRING R15 ; [+2]
       49 GETIMPORT                        R14 K9 [tostring]
       51 CALL                             R14 1 1
       52 GETTABLE                         R12 R13 R14
       53 JUMPIFNOT                        R12 ; [+4]
       54 MOVE                             R13 R12
       55 MOVE                             R14 R11
       56 MOVE                             R15 R1
       57 CALL                             R13 2 0
       58 FORGLOOP                         R7 2 ; [-19]
       60 FORGLOOP                         R2 2 ; [-54]
       62 GETIMPORT                        R2 K4 [next]
       64 MOVE                             R3 R1
       65 CALL                             R2 1 1
       66 JUMPIFNOT                        R2 ; [+42]
       67 NEWTABLE                         R2 2 0
       69 GETUPVAL                         R3 1
       70 LOADK                            R5 K10 ["UploadDialogContent"]
       71 LOADK                            R6 K11 ["InvalidIdentifier"]
       72 NAMECALL                         R3 R3 K12 ["getText"]
       74 CALL                             R3 3 1
       75 SETTABLEKS                       R3 R2 K13 ["38"]
       77 GETUPVAL                         R3 1
       78 LOADK                            R5 K10 ["UploadDialogContent"]
       79 LOADK                            R6 K14 ["InvalidTranslation"]
       80 NAMECALL                         R3 R3 K12 ["getText"]
       82 CALL                             R3 3 1
       83 SETTABLEKS                       R3 R2 K15 ["43"]
       85 GETIMPORT                        R3 K17 [warn]
       87 GETUPVAL                         R4 1
       88 LOADK                            R6 K10 ["UploadDialogContent"]
       89 LOADK                            R7 K18 ["UploadCompleteWithInvalidEntries"]
       90 NAMECALL                         R4 R4 K12 ["getText"]
       92 CALL                             R4 3 -1
       93 CALL                             R3 -1 0
       94 GETIMPORT                        R3 K1 [pairs]
       96 MOVE                             R4 R1
       97 CALL                             R3 1 3
       98 FORGPREP_NEXT                    R3
       99 GETIMPORT                        R8 K20 [print]
      101 GETTABLE                         R9 R2 R6
      102 CALL                             R8 1 0
      103 GETIMPORT                        R8 K20 [print]
      105 MOVE                             R9 R7
      106 CALL                             R8 1 0
      107 FORGLOOP                         R3 2 ; [-9]
      109 LOADB                            R2 1
      110 RETURN                           R2 1

PROTO_14:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["SplitByLimits"]
        3 GETTABLEKS                       R6 R3 K1 ["makePatch"]
        5 CALL                             R6 0 1
        6 GETIMPORT                        R7 K3 [game]
        8 LOADK                            R9 K4 ["LocalizationTableUploadRowMax"]
        9 NAMECALL                         R7 R7 K5 ["GetFastInt"]
       11 CALL                             R7 2 1
       12 GETIMPORT                        R8 K3 [game]
       14 LOADK                            R10 K6 ["LocalizationTableUploadTranslationMax"]
       15 NAMECALL                         R8 R8 K5 ["GetFastInt"]
       17 CALL                             R8 2 -1
       18 CALL                             R5 -1 1
       19 GETUPVAL                         R6 1
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 JUMPIFNOT                        R6 ; [+2]
       23 LOADB                            R6 1
       24 RETURN                           R6 1
       25 NEWTABLE                         R6 0 0
       27 GETIMPORT                        R7 K8 [pairs]
       29 MOVE                             R8 R5
       30 CALL                             R7 1 3
       31 FORGPREP_NEXT                    R7
       32 GETUPVAL                         R12 2
       33 MOVE                             R14 R11
       34 NAMECALL                         R12 R12 K9 ["JSONEncode"]
       36 CALL                             R12 2 1
       37 MOVE                             R14 R6
       38 GETTABLEKS                       R18 R0 K10 ["LocalizationTables"]
       40 GETTABLEKS                       R17 R18 K11 ["V1"]
       42 GETTABLEKS                       R16 R17 K12 ["LocalizationTable"]
       44 GETTABLEKS                       R15 R16 K13 ["tables"]
       46 MOVE                             R16 R1
       47 MOVE                             R17 R2
       48 MOVE                             R18 R12
       49 CALL                             R15 3 1
       50 NAMECALL                         R15 R15 K14 ["makeRequest"]
       52 CALL                             R15 1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R13 K17 [table.insert]
       56 CALL                             R13 -1 0
       57 FORGLOOP                         R7 2 ; [-26]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R7 R8 K18 ["all"]
       62 MOVE                             R8 R6
       63 CALL                             R7 1 1
       64 NEWCLOSURE                       R9 P0
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R4
       67 DUPCLOSURE                       R10 K19 [PROTO_14]
       68 NAMECALL                         R7 R7 K20 ["andThen"]
       70 CALL                             R7 3 1
       71 NAMECALL                         R7 R7 K21 ["await"]
       73 CALL                             R7 1 -1
       74 RETURN                           R7 -1

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R4 R0 K0 ["API"]
        2 GETTABLEKS                       R3 R4 K1 ["Loc"]
        4 GETTABLEKS                       R2 R3 K2 ["assetsGenerationRequest"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 NAMECALL                         R3 R2 K3 ["makeRequest"]
       10 CALL                             R3 1 1
       11 DUPCLOSURE                       R5 K4 [PROTO_16]
       12 DUPCLOSURE                       R6 K5 [PROTO_17]
       13 NAMECALL                         R3 R3 K6 ["andThen"]
       15 CALL                             R3 3 1
       16 NAMECALL                         R3 R3 K7 ["await"]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"PatchInfo", "OkCallback", "CancelCallback"}]
        5 GETUPVAL                         R5 2
        6 SETTABLEKS                       R5 R4 K1 ["PatchInfo"]
        8 SETTABLEKS                       R0 R4 K2 ["OkCallback"]
       10 SETTABLEKS                       R1 R4 K3 ["CancelCallback"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"OkCallback", "CancelCallback", "Text"}]
        5 SETTABLEKS                       R0 R4 K1 ["OkCallback"]
        7 SETTABLEKS                       R1 R4 K2 ["CancelCallback"]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K3 ["Text"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_22:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"OkCallback", "CancelCallback", "Text"}]
        5 SETTABLEKS                       R0 R4 K1 ["OkCallback"]
        7 SETTABLEKS                       R1 R4 K2 ["CancelCallback"]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K3 ["Text"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_24:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["PromptUploadCSVToGameTable"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 NAMECALL                         R2 R0 K0 ["getState"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R2 K1 ["CloudTable"]
       11 GETTABLEKS                       R3 R4 K2 ["IsBusy"]
       13 JUMPIFNOT                        R3 ; [+10]
       14 GETIMPORT                        R4 K4 [warn]
       16 GETUPVAL                         R5 0
       17 LOADK                            R7 K5 ["MessageFrame"]
       18 LOADK                            R8 K6 ["BusyMessage"]
       19 NAMECALL                         R5 R5 K7 ["getText"]
       21 CALL                             R5 3 -1
       22 CALL                             R4 -1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R6 1
       25 LOADB                            R7 1
       26 CALL                             R6 1 -1
       27 NAMECALL                         R4 R0 K8 ["dispatch"]
       29 CALL                             R4 -1 0
       30 GETUPVAL                         R6 2
       31 GETUPVAL                         R7 0
       32 LOADK                            R9 K5 ["MessageFrame"]
       33 LOADK                            R10 K9 ["OpenCSVFileMessage"]
       34 NAMECALL                         R7 R7 K7 ["getText"]
       36 CALL                             R7 3 -1
       37 CALL                             R6 -1 -1
       38 NAMECALL                         R4 R0 K8 ["dispatch"]
       40 CALL                             R4 -1 0
       41 LOADNIL                          R4
       42 GETIMPORT                        R5 K11 [pcall]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          REF R4
       46 CAPTURE                          UPVAL U3
       47 CALL                             R5 1 2
       48 JUMPIFNOT                        R5 ; [+2]
       49 JUMPIFNOTEQKNIL                  R4 ; [+21]
       51 MOVE                             R7 R1
       52 CALL                             R7 0 0
       53 GETUPVAL                         R7 4
       54 JUMPIFNOT                        R7 ; [+10]
       55 GETIMPORT                        R7 K4 [warn]
       57 GETUPVAL                         R9 5
       58 GETTABLEKS                       R8 R9 K12 ["getTranslationForEngineError"]
       60 MOVE                             R9 R6
       61 GETUPVAL                         R10 0
       62 CALL                             R8 2 -1
       63 CALL                             R7 -1 0
       64 JUMP                             ; [+4]
       65 GETIMPORT                        R7 K4 [warn]
       67 MOVE                             R8 R6
       68 CALL                             R7 1 0
       69 CLOSEUPVALS                      R4
       70 RETURN                           R0 0
       71 GETUPVAL                         R7 6
       72 JUMPIFNOT                        R7 ; [+35]
       73 GETUPVAL                         R8 7
       74 GETTABLEKS                       R7 R8 K13 ["isTableEmpty"]
       76 NAMECALL                         R8 R4 K14 ["GetEntries"]
       78 CALL                             R8 1 -1
       79 CALL                             R7 -1 1
       80 JUMPIFNOT                        R7 ; [+27]
       81 MOVE                             R7 R1
       82 CALL                             R7 0 0
       83 GETUPVAL                         R7 8
       84 GETUPVAL                         R8 0
       85 LOADK                            R10 K15 ["UploadTable"]
       86 LOADK                            R11 K16 ["EmptyCSVDialogTitle"]
       87 NAMECALL                         R8 R8 K7 ["getText"]
       89 CALL                             R8 3 1
       90 GETUPVAL                         R9 9
       91 GETUPVAL                         R11 0
       92 LOADK                            R13 K15 ["UploadTable"]
       93 LOADK                            R14 K17 ["EmptyCSVWarning"]
       94 NAMECALL                         R11 R11 K7 ["getText"]
       96 CALL                             R11 3 1
       97 NEWCLOSURE                       R10 P2
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R11
      101 CALL                             R7 3 1
      102 NAMECALL                         R7 R7 K18 ["await"]
      104 CALL                             R7 1 1
      105 JUMPIF                           R7 ; [+2]
      106 CLOSEUPVALS                      R4
      107 RETURN                           R0 0
      108 GETUPVAL                         R8 7
      109 GETTABLEKS                       R7 R8 K19 ["tableContainsInvalidEntries"]
      111 NAMECALL                         R8 R4 K14 ["GetEntries"]
      113 CALL                             R8 1 1
      114 GETUPVAL                         R9 0
      115 CALL                             R7 2 2
      116 JUMPIFNOT                        R7 ; [+37]
      117 MOVE                             R9 R1
      118 CALL                             R9 0 0
      119 GETIMPORT                        R9 K21 [ipairs]
      121 MOVE                             R10 R8
      122 CALL                             R9 1 3
      123 FORGPREP_INEXT                   R9
      124 GETIMPORT                        R14 K4 [warn]
      126 MOVE                             R15 R13
      127 CALL                             R14 1 0
      128 FORGLOOP                         R9 2 [inext] ; [-5]
      130 GETUPVAL                         R9 8
      131 GETUPVAL                         R10 0
      132 LOADK                            R12 K15 ["UploadTable"]
      133 LOADK                            R13 K22 ["InvalidTableDialogTitle"]
      134 NAMECALL                         R10 R10 K7 ["getText"]
      136 CALL                             R10 3 1
      137 GETUPVAL                         R11 9
      138 GETUPVAL                         R13 0
      139 LOADK                            R15 K15 ["UploadTable"]
      140 LOADK                            R16 K23 ["InvalidEntryDialogError"]
      141 NAMECALL                         R13 R13 K7 ["getText"]
      143 CALL                             R13 3 1
      144 NEWCLOSURE                       R12 P3
      145 CAPTURE                          UPVAL U10
      146 CAPTURE                          UPVAL U12
      147 CAPTURE                          VAL R13
      148 CALL                             R9 3 1
      149 NAMECALL                         R9 R9 K18 ["await"]
      151 CALL                             R9 1 0
      152 CLOSEUPVALS                      R4
      153 RETURN                           R0 0
      154 GETUPVAL                         R11 2
      155 GETUPVAL                         R12 0
      156 LOADK                            R14 K5 ["MessageFrame"]
      157 LOADK                            R15 K24 ["ComputingPatchMessage"]
      158 NAMECALL                         R12 R12 K7 ["getText"]
      160 CALL                             R12 3 -1
      161 CALL                             R11 -1 -1
      162 NAMECALL                         R9 R0 K8 ["dispatch"]
      164 CALL                             R9 -1 0
      165 GETUPVAL                         R9 13
      166 GETUPVAL                         R15 14
      167 GETTABLEKS                       R14 R15 K25 ["GameInternationalization"]
      169 GETTABLEKS                       R13 R14 K26 ["V1"]
      171 GETTABLEKS                       R12 R13 K27 ["SourceLanguage"]
      173 GETTABLEKS                       R11 R12 K28 ["Games"]
      175 GETTABLEKS                       R10 R11 K29 ["get"]
      177 GETIMPORT                        R12 K31 [game]
      179 GETTABLEKS                       R11 R12 K32 ["GameId"]
      181 CALL                             R10 1 -1
      182 CALL                             R9 -1 1
      183 JUMPIFNOTEQKNIL                  R9 ; [+14]
      185 MOVE                             R10 R1
      186 CALL                             R10 0 0
      187 GETIMPORT                        R10 K4 [warn]
      189 GETUPVAL                         R11 0
      190 LOADK                            R13 K15 ["UploadTable"]
      191 LOADK                            R14 K33 ["GetGameSourceLanguageFailed"]
      192 NAMECALL                         R11 R11 K7 ["getText"]
      194 CALL                             R11 3 -1
      195 CALL                             R10 -1 0
      196 CLOSEUPVALS                      R4
      197 RETURN                           R0 0
      198 GETUPVAL                         R10 15
      199 GETUPVAL                         R16 14
      200 GETTABLEKS                       R15 R16 K25 ["GameInternationalization"]
      202 GETTABLEKS                       R14 R15 K26 ["V1"]
      204 GETTABLEKS                       R13 R14 K34 ["SupportedLanguages"]
      206 GETTABLEKS                       R12 R13 K28 ["Games"]
      208 GETTABLEKS                       R11 R12 K29 ["get"]
      210 GETIMPORT                        R13 K31 [game]
      212 GETTABLEKS                       R12 R13 K32 ["GameId"]
      214 CALL                             R11 1 -1
      215 CALL                             R10 -1 1
      216 JUMPIFNOTEQKNIL                  R10 ; [+14]
      218 MOVE                             R11 R1
      219 CALL                             R11 0 0
      220 GETIMPORT                        R11 K4 [warn]
      222 GETUPVAL                         R12 0
      223 LOADK                            R14 K15 ["UploadTable"]
      224 LOADK                            R15 K35 ["GetSupportedLanguagesFailedMessage"]
      225 NAMECALL                         R12 R12 K7 ["getText"]
      227 CALL                             R12 3 -1
      228 CALL                             R11 -1 0
      229 CLOSEUPVALS                      R4
      230 RETURN                           R0 0
      231 GETTABLEKS                       R12 R2 K36 ["PluginMetadata"]
      233 GETTABLEKS                       R11 R12 K37 ["CloudTableId"]
      235 GETUPVAL                         R13 16
      236 GETTABLEKS                       R12 R13 K38 ["Download"]
      238 GETUPVAL                         R13 14
      239 GETUPVAL                         R14 0
      240 MOVE                             R15 R11
      241 CALL                             R12 3 1
      242 JUMPIFNOTEQKNIL                  R12 ; [+14]
      244 MOVE                             R13 R1
      245 CALL                             R13 0 0
      246 GETIMPORT                        R13 K4 [warn]
      248 GETUPVAL                         R14 0
      249 LOADK                            R16 K15 ["UploadTable"]
      250 LOADK                            R17 K39 ["GetCloudTableFailed"]
      251 NAMECALL                         R14 R14 K7 ["getText"]
      253 CALL                             R14 3 -1
      254 CALL                             R13 -1 0
      255 CLOSEUPVALS                      R4
      256 RETURN                           R0 0
      257 GETTABLEKS                       R14 R2 K36 ["PluginMetadata"]
      259 GETTABLEKS                       R13 R14 K40 ["AllLanguages"]
      261 GETTABLEKS                       R15 R2 K36 ["PluginMetadata"]
      263 GETTABLEKS                       R14 R15 K41 ["LocalesToLanguages"]
      265 GETUPVAL                         R15 17
      266 NAMECALL                         R16 R12 K14 ["GetEntries"]
      268 CALL                             R16 1 1
      269 MOVE                             R17 R13
      270 MOVE                             R18 R14
      271 CALL                             R15 3 1
      272 GETUPVAL                         R16 17
      273 NAMECALL                         R17 R4 K14 ["GetEntries"]
      275 CALL                             R17 1 1
      276 MOVE                             R18 R13
      277 MOVE                             R19 R14
      278 MOVE                             R20 R10
      279 CALL                             R16 4 1
      280 GETUPVAL                         R18 18
      281 GETTABLEKS                       R17 R18 K42 ["DiffTables"]
      283 LOADK                            R18 K43 ["MyLocalizationTable"]
      284 GETTABLEKS                       R19 R15 K44 ["entries"]
      286 GETTABLEKS                       R20 R16 K44 ["entries"]
      288 GETUPVAL                         R21 6
      289 MOVE                             R22 R9
      290 MOVE                             R23 R14
      291 GETUPVAL                         R24 0
      292 CALL                             R17 7 1
      293 GETTABLEKS                       R18 R16 K45 ["totalRows"]
      295 SETTABLEKS                       R18 R17 K45 ["totalRows"]
      297 GETTABLEKS                       R18 R16 K46 ["totalTranslations"]
      299 SETTABLEKS                       R18 R17 K46 ["totalTranslations"]
      301 GETTABLEKS                       R18 R16 K47 ["supportedLocales"]
      303 SETTABLEKS                       R18 R17 K47 ["supportedLocales"]
      305 GETTABLEKS                       R18 R16 K48 ["unsupportedLocales"]
      307 SETTABLEKS                       R18 R17 K48 ["unsupportedLocales"]
      309 GETUPVAL                         R18 6
      310 SETTABLEKS                       R18 R17 K49 ["includeDeletes"]
      312 GETTABLEKS                       R18 R16 K50 ["newLanguages"]
      314 SETTABLEKS                       R18 R17 K50 ["newLanguages"]
      316 GETTABLEKS                       R18 R16 K51 ["newLanguagesSet"]
      318 SETTABLEKS                       R18 R17 K51 ["newLanguagesSet"]
      320 GETUPVAL                         R20 2
      321 GETUPVAL                         R21 0
      322 LOADK                            R23 K5 ["MessageFrame"]
      323 LOADK                            R24 K52 ["ConfirmUploadMessage"]
      324 NAMECALL                         R21 R21 K7 ["getText"]
      326 CALL                             R21 3 -1
      327 CALL                             R20 -1 -1
      328 NAMECALL                         R18 R0 K8 ["dispatch"]
      330 CALL                             R18 -1 0
      331 GETUPVAL                         R18 0
      332 LOADK                            R20 K53 ["UploadDialogContent"]
      333 LOADK                            R21 K54 ["ConfirmUploadDialogTitle"]
      334 NAMECALL                         R18 R18 K7 ["getText"]
      336 CALL                             R18 3 1
      337 GETUPVAL                         R19 8
      338 MOVE                             R20 R18
      339 GETUPVAL                         R21 19
      340 NEWCLOSURE                       R22 P4
      341 CAPTURE                          UPVAL U10
      342 CAPTURE                          UPVAL U20
      343 CAPTURE                          VAL R17
      344 CALL                             R19 3 1
      345 NAMECALL                         R19 R19 K18 ["await"]
      347 CALL                             R19 1 1
      348 JUMPIF                           R19 ; [+19]
      349 GETUPVAL                         R22 1
      350 LOADB                            R23 0
      351 CALL                             R22 1 -1
      352 NAMECALL                         R20 R0 K8 ["dispatch"]
      354 CALL                             R20 -1 0
      355 GETUPVAL                         R22 2
      356 GETUPVAL                         R23 0
      357 LOADK                            R25 K5 ["MessageFrame"]
      358 LOADK                            R26 K55 ["UploadCanceledMessage"]
      359 NAMECALL                         R23 R23 K7 ["getText"]
      361 CALL                             R23 3 -1
      362 CALL                             R22 -1 -1
      363 NAMECALL                         R20 R0 K8 ["dispatch"]
      365 CALL                             R20 -1 0
      366 CLOSEUPVALS                      R4
      367 RETURN                           R0 0
      368 GETUPVAL                         R22 2
      369 GETUPVAL                         R23 0
      370 LOADK                            R25 K5 ["MessageFrame"]
      371 LOADK                            R26 K56 ["UploadingPatchMessage"]
      372 NAMECALL                         R23 R23 K7 ["getText"]
      374 CALL                             R23 3 -1
      375 CALL                             R22 -1 -1
      376 NAMECALL                         R20 R0 K8 ["dispatch"]
      378 CALL                             R20 -1 0
      379 GETTABLEKS                       R20 R17 K51 ["newLanguagesSet"]
      381 JUMPIFEQKNIL                     R20 ; [+29]
      383 GETUPVAL                         R20 21
      384 GETTABLEKS                       R21 R17 K51 ["newLanguagesSet"]
      386 CALL                             R20 1 1
      387 JUMPIF                           R20 ; [+23]
      388 GETUPVAL                         R20 22
      389 GETUPVAL                         R21 14
      390 GETIMPORT                        R23 K31 [game]
      392 GETTABLEKS                       R22 R23 K32 ["GameId"]
      394 GETTABLEKS                       R23 R17 K51 ["newLanguagesSet"]
      396 CALL                             R20 3 1
      397 JUMPIF                           R20 ; [+13]
      398 MOVE                             R21 R1
      399 CALL                             R21 0 0
      400 GETIMPORT                        R21 K4 [warn]
      402 GETUPVAL                         R22 0
      403 LOADK                            R24 K15 ["UploadTable"]
      404 LOADK                            R25 K57 ["PatchSupportedLangugesFailed"]
      405 NAMECALL                         R22 R22 K7 ["getText"]
      407 CALL                             R22 3 -1
      408 CALL                             R21 -1 0
      409 CLOSEUPVALS                      R4
      410 RETURN                           R0 0
      411 GETUPVAL                         R20 23
      412 GETUPVAL                         R21 14
      413 MOVE                             R22 R11
      414 GETIMPORT                        R24 K31 [game]
      416 GETTABLEKS                       R23 R24 K32 ["GameId"]
      418 MOVE                             R24 R17
      419 GETUPVAL                         R25 0
      420 CALL                             R20 5 1
      421 JUMPIF                           R20 ; [+13]
      422 MOVE                             R21 R1
      423 CALL                             R21 0 0
      424 GETIMPORT                        R21 K4 [warn]
      426 GETUPVAL                         R22 0
      427 LOADK                            R24 K15 ["UploadTable"]
      428 LOADK                            R25 K58 ["PatchCloudTableFailed"]
      429 NAMECALL                         R22 R22 K7 ["getText"]
      431 CALL                             R22 3 -1
      432 CALL                             R21 -1 0
      433 CLOSEUPVALS                      R4
      434 RETURN                           R0 0
      435 GETUPVAL                         R23 1
      436 LOADB                            R24 0
      437 CALL                             R23 1 -1
      438 NAMECALL                         R21 R0 K8 ["dispatch"]
      440 CALL                             R21 -1 0
      441 GETUPVAL                         R23 2
      442 GETUPVAL                         R24 0
      443 LOADK                            R26 K5 ["MessageFrame"]
      444 LOADK                            R27 K59 ["UploadCompletedMessage"]
      445 NAMECALL                         R24 R24 K7 ["getText"]
      447 CALL                             R24 3 -1
      448 CALL                             R23 -1 -1
      449 NAMECALL                         R21 R0 K8 ["dispatch"]
      451 CALL                             R21 -1 0
      452 GETUPVAL                         R22 6
      453 JUMPIFNOT                        R22 ; [+2]
      454 LOADK                            R21 K60 ["replace"]
      455 JUMP                             ; [+1]
      456 LOADK                            R21 K61 ["update"]
      457 GETUPVAL                         R22 24
      458 MOVE                             R24 R17
      459 MOVE                             R25 R21
      460 NAMECALL                         R22 R22 K62 ["reportUploadTable"]
      462 CALL                             R22 3 0
      463 GETUPVAL                         R22 25
      464 GETUPVAL                         R23 14
      465 GETIMPORT                        R25 K31 [game]
      467 GETTABLEKS                       R24 R25 K32 ["GameId"]
      469 CALL                             R22 2 0
      470 CLOSEUPVALS                      R4
      471 RETURN                           R0 0

PROTO_27:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CAPTURE                          UPVAL U16
       22 CAPTURE                          UPVAL U17
       23 CAPTURE                          UPVAL U18
       24 CAPTURE                          UPVAL U19
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U20
       27 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R6 K12 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K13 ["Http"]
       37 GETTABLEKS                       R7 R4 K14 ["Util"]
       39 GETTABLEKS                       R6 R7 K15 ["Promise"]
       41 GETIMPORT                        R7 K9 [require]
       43 GETTABLEKS                       R10 R2 K16 ["Src"]
       45 GETTABLEKS                       R9 R10 K17 ["Actions"]
       47 GETTABLEKS                       R8 R9 K18 ["SetIsBusy"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K9 [require]
       52 GETTABLEKS                       R11 R2 K16 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Actions"]
       56 GETTABLEKS                       R9 R10 K19 ["SetMessage"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K9 [require]
       61 GETTABLEKS                       R12 R2 K16 ["Src"]
       63 GETTABLEKS                       R11 R12 K20 ["Components"]
       65 GETTABLEKS                       R10 R11 K21 ["UploadDialogContent"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K9 [require]
       70 GETTABLEKS                       R13 R2 K16 ["Src"]
       72 GETTABLEKS                       R12 R13 K20 ["Components"]
       74 GETTABLEKS                       R11 R12 K22 ["ErrorDialog"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K9 [require]
       79 GETTABLEKS                       R14 R2 K16 ["Src"]
       81 GETTABLEKS                       R13 R14 K20 ["Components"]
       83 GETTABLEKS                       R12 R13 K23 ["WarningDialog"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K9 [require]
       88 GETTABLEKS                       R15 R2 K16 ["Src"]
       90 GETTABLEKS                       R14 R15 K24 ["Thunks"]
       92 GETTABLEKS                       R13 R14 K25 ["DownloadCloudTable"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K9 [require]
       97 GETTABLEKS                       R16 R2 K16 ["Src"]
       99 GETTABLEKS                       R15 R16 K14 ["Util"]
      101 GETTABLEKS                       R14 R15 K26 ["RbxEntriesToWebEntries"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K9 [require]
      106 GETTABLEKS                       R17 R2 K16 ["Src"]
      108 GETTABLEKS                       R16 R17 K14 ["Util"]
      110 GETTABLEKS                       R15 R16 K27 ["PatchInfo"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K9 [require]
      115 GETTABLEKS                       R18 R2 K16 ["Src"]
      117 GETTABLEKS                       R17 R18 K14 ["Util"]
      119 GETTABLEKS                       R16 R17 K28 ["isEmpty"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K9 [require]
      124 GETTABLEKS                       R19 R2 K16 ["Src"]
      126 GETTABLEKS                       R18 R19 K14 ["Util"]
      128 GETTABLEKS                       R17 R18 K29 ["ValidateCloudTable"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K32 [Vector2.new]
      133 LOADN                            R18 44
      134 LOADN                            R19 114
      135 CALL                             R17 2 1
      136 GETIMPORT                        R18 K32 [Vector2.new]
      138 LOADN                            R19 244
      139 LOADN                            R20 200
      140 CALL                             R18 2 1
      141 GETIMPORT                        R19 K1 [game]
      143 LOADK                            R21 K33 ["EnableLocalizedLocalizationToolsErrorsApi"]
      144 NAMECALL                         R19 R19 K34 ["GetEngineFeature"]
      146 CALL                             R19 2 1
      147 LOADNIL                          R20
      148 JUMPIFNOT                        R19 ; [+10]
      149 GETIMPORT                        R21 K9 [require]
      151 GETTABLEKS                       R24 R2 K16 ["Src"]
      153 GETTABLEKS                       R23 R24 K14 ["Util"]
      155 GETTABLEKS                       R22 R23 K35 ["MapEngineErrors"]
      157 CALL                             R21 1 1
      158 MOVE                             R20 R21
      159 DUPCLOSURE                       R21 K36 [PROTO_1]
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R8
      162 DUPCLOSURE                       R22 K37 [PROTO_4]
      163 CAPTURE                          VAL R5
      164 DUPCLOSURE                       R23 K38 [PROTO_7]
      165 CAPTURE                          VAL R5
      166 DUPCLOSURE                       R24 K39 [PROTO_10]
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R5
      169 NEWTABLE                         R25 2 0
      171 DUPCLOSURE                       R26 K40 [PROTO_11]
      172 SETTABLEKS                       R26 R25 K41 ["38"]
      174 DUPCLOSURE                       R26 K42 [PROTO_12]
      175 SETTABLEKS                       R26 R25 K43 ["43"]
      177 DUPCLOSURE                       R26 K44 [PROTO_15]
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R25
      183 DUPCLOSURE                       R27 K45 [PROTO_18]
      184 DUPCLOSURE                       R28 K46 [PROTO_20]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R9
      187 DUPCLOSURE                       R29 K47 [PROTO_22]
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R10
      190 DUPCLOSURE                       R30 K48 [PROTO_24]
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R11
      193 NEWCLOSURE                       R31 P11
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R0
      197 CAPTURE                          VAL R19
      198 CAPTURE                          REF R20
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R11
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R23
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R12
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R24
      213 CAPTURE                          VAL R26
      214 CAPTURE                          VAL R27
      215 CLOSEUPVALS                      R20
      216 RETURN                           R31 1
