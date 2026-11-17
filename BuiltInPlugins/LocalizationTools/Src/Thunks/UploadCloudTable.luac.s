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
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["StatusCodes"]
        6 GETTABLEKS                       R2 R2 K2 ["OK"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+17]
       10 GETIMPORT                        R1 K4 [ipairs]
       12 GETTABLEKS                       R2 R0 K5 ["responseBody"]
       14 GETTABLEKS                       R2 R2 K6 ["data"]
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
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["StatusCodes"]
        6 GETTABLEKS                       R2 R2 K2 ["OK"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+7]
       10 GETTABLEKS                       R2 R0 K4 ["responseBody"]
       12 GETTABLEKS                       R2 R2 K5 ["languageCode"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["StatusCodes"]
        5 GETTABLEKS                       R2 R2 K2 ["OK"]
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
       31 GETTABLEKS                       R5 R0 K10 ["GameInternationalization"]
       33 GETTABLEKS                       R5 R5 K11 ["V1"]
       35 GETTABLEKS                       R5 R5 K12 ["SupportedLanguages"]
       37 GETTABLEKS                       R5 R5 K13 ["Games"]
       39 GETTABLEKS                       R5 R5 K14 ["patch"]
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
       18 GETTABLEKS                       R7 R6 K2 ["responseBody"]
       20 GETTABLEKS                       R7 R7 K5 ["failedEntriesAndTranslations"]
       22 JUMPIFEQKNIL                     R7 ; [+37]
       24 GETIMPORT                        R7 K4 [next]
       26 GETTABLEKS                       R8 R6 K2 ["responseBody"]
       28 GETTABLEKS                       R8 R8 K5 ["failedEntriesAndTranslations"]
       30 CALL                             R7 1 1
       31 JUMPIFNOT                        R7 ; [+28]
       32 GETIMPORT                        R7 K1 [pairs]
       34 GETTABLEKS                       R8 R6 K2 ["responseBody"]
       36 GETTABLEKS                       R8 R8 K5 ["failedEntriesAndTranslations"]
       38 CALL                             R7 1 3
       39 FORGPREP_NEXT                    R7
       40 GETTABLEKS                       R12 R11 K6 ["error"]
       42 JUMPIFNOT                        R12 ; [+15]
       43 GETUPVAL                         R13 0
       44 GETTABLEKS                       R15 R11 K6 ["error"]
       46 GETTABLEKS                       R15 R15 K7 ["errorCode"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["SplitByLimits"]
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
       38 GETTABLEKS                       R15 R0 K10 ["LocalizationTables"]
       40 GETTABLEKS                       R15 R15 K11 ["V1"]
       42 GETTABLEKS                       R15 R15 K12 ["LocalizationTable"]
       44 GETTABLEKS                       R15 R15 K13 ["tables"]
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
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R7 R7 K18 ["all"]
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
        0 GETTABLEKS                       R2 R0 K0 ["API"]
        2 GETTABLEKS                       R2 R2 K1 ["Loc"]
        4 GETTABLEKS                       R2 R2 K2 ["assetsGenerationRequest"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
        9 GETTABLEKS                       R3 R2 K1 ["CloudTable"]
       11 GETTABLEKS                       R3 R3 K2 ["IsBusy"]
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
       42 NEWCLOSURE                       R6 P1
       43 CAPTURE                          REF R4
       44 CAPTURE                          UPVAL U3
       45 FASTPCALL                        pcall 1 ; [+2]
       46 GETIMPORT                        R5 K11 [pcall]
       48 CALL                             R5 1 2
       49 JUMPIFNOT                        R5 ; [+2]
       50 JUMPIFNOTEQKNIL                  R4 ; [+21]
       52 MOVE                             R7 R1
       53 CALL                             R7 0 0
       54 GETUPVAL                         R7 4
       55 JUMPIFNOT                        R7 ; [+10]
       56 GETIMPORT                        R7 K4 [warn]
       58 GETUPVAL                         R8 5
       59 GETTABLEKS                       R8 R8 K12 ["getTranslationForEngineError"]
       61 MOVE                             R9 R6
       62 GETUPVAL                         R10 0
       63 CALL                             R8 2 -1
       64 CALL                             R7 -1 0
       65 JUMP                             ; [+4]
       66 GETIMPORT                        R7 K4 [warn]
       68 MOVE                             R8 R6
       69 CALL                             R7 1 0
       70 CLOSEUPVALS                      R4
       71 RETURN                           R0 0
       72 GETUPVAL                         R7 6
       73 JUMPIFNOT                        R7 ; [+35]
       74 GETUPVAL                         R7 7
       75 GETTABLEKS                       R7 R7 K13 ["isTableEmpty"]
       77 NAMECALL                         R8 R4 K14 ["GetEntries"]
       79 CALL                             R8 1 -1
       80 CALL                             R7 -1 1
       81 JUMPIFNOT                        R7 ; [+27]
       82 MOVE                             R7 R1
       83 CALL                             R7 0 0
       84 GETUPVAL                         R7 8
       85 GETUPVAL                         R8 0
       86 LOADK                            R10 K15 ["UploadTable"]
       87 LOADK                            R11 K16 ["EmptyCSVDialogTitle"]
       88 NAMECALL                         R8 R8 K7 ["getText"]
       90 CALL                             R8 3 1
       91 GETUPVAL                         R9 9
       92 GETUPVAL                         R11 0
       93 LOADK                            R13 K15 ["UploadTable"]
       94 LOADK                            R14 K17 ["EmptyCSVWarning"]
       95 NAMECALL                         R11 R11 K7 ["getText"]
       97 CALL                             R11 3 1
       98 NEWCLOSURE                       R10 P2
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          UPVAL U11
      101 CAPTURE                          VAL R11
      102 CALL                             R7 3 1
      103 NAMECALL                         R7 R7 K18 ["await"]
      105 CALL                             R7 1 1
      106 JUMPIF                           R7 ; [+2]
      107 CLOSEUPVALS                      R4
      108 RETURN                           R0 0
      109 GETUPVAL                         R7 7
      110 GETTABLEKS                       R7 R7 K19 ["tableContainsInvalidEntries"]
      112 NAMECALL                         R8 R4 K14 ["GetEntries"]
      114 CALL                             R8 1 1
      115 GETUPVAL                         R9 0
      116 CALL                             R7 2 2
      117 JUMPIFNOT                        R7 ; [+37]
      118 MOVE                             R9 R1
      119 CALL                             R9 0 0
      120 GETIMPORT                        R9 K21 [ipairs]
      122 MOVE                             R10 R8
      123 CALL                             R9 1 3
      124 FORGPREP_INEXT                   R9
      125 GETIMPORT                        R14 K4 [warn]
      127 MOVE                             R15 R13
      128 CALL                             R14 1 0
      129 FORGLOOP                         R9 2 [inext] ; [-5]
      131 GETUPVAL                         R9 8
      132 GETUPVAL                         R10 0
      133 LOADK                            R12 K15 ["UploadTable"]
      134 LOADK                            R13 K22 ["InvalidTableDialogTitle"]
      135 NAMECALL                         R10 R10 K7 ["getText"]
      137 CALL                             R10 3 1
      138 GETUPVAL                         R11 9
      139 GETUPVAL                         R13 0
      140 LOADK                            R15 K15 ["UploadTable"]
      141 LOADK                            R16 K23 ["InvalidEntryDialogError"]
      142 NAMECALL                         R13 R13 K7 ["getText"]
      144 CALL                             R13 3 1
      145 NEWCLOSURE                       R12 P3
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          UPVAL U12
      148 CAPTURE                          VAL R13
      149 CALL                             R9 3 1
      150 NAMECALL                         R9 R9 K18 ["await"]
      152 CALL                             R9 1 0
      153 CLOSEUPVALS                      R4
      154 RETURN                           R0 0
      155 GETUPVAL                         R11 2
      156 GETUPVAL                         R12 0
      157 LOADK                            R14 K5 ["MessageFrame"]
      158 LOADK                            R15 K24 ["ComputingPatchMessage"]
      159 NAMECALL                         R12 R12 K7 ["getText"]
      161 CALL                             R12 3 -1
      162 CALL                             R11 -1 -1
      163 NAMECALL                         R9 R0 K8 ["dispatch"]
      165 CALL                             R9 -1 0
      166 GETUPVAL                         R9 13
      167 GETUPVAL                         R10 14
      168 GETTABLEKS                       R10 R10 K25 ["GameInternationalization"]
      170 GETTABLEKS                       R10 R10 K26 ["V1"]
      172 GETTABLEKS                       R10 R10 K27 ["SourceLanguage"]
      174 GETTABLEKS                       R10 R10 K28 ["Games"]
      176 GETTABLEKS                       R10 R10 K29 ["get"]
      178 GETIMPORT                        R11 K31 [game]
      180 GETTABLEKS                       R11 R11 K32 ["GameId"]
      182 CALL                             R10 1 -1
      183 CALL                             R9 -1 1
      184 JUMPIFNOTEQKNIL                  R9 ; [+14]
      186 MOVE                             R10 R1
      187 CALL                             R10 0 0
      188 GETIMPORT                        R10 K4 [warn]
      190 GETUPVAL                         R11 0
      191 LOADK                            R13 K15 ["UploadTable"]
      192 LOADK                            R14 K33 ["GetGameSourceLanguageFailed"]
      193 NAMECALL                         R11 R11 K7 ["getText"]
      195 CALL                             R11 3 -1
      196 CALL                             R10 -1 0
      197 CLOSEUPVALS                      R4
      198 RETURN                           R0 0
      199 GETUPVAL                         R10 15
      200 GETUPVAL                         R11 14
      201 GETTABLEKS                       R11 R11 K25 ["GameInternationalization"]
      203 GETTABLEKS                       R11 R11 K26 ["V1"]
      205 GETTABLEKS                       R11 R11 K34 ["SupportedLanguages"]
      207 GETTABLEKS                       R11 R11 K28 ["Games"]
      209 GETTABLEKS                       R11 R11 K29 ["get"]
      211 GETIMPORT                        R12 K31 [game]
      213 GETTABLEKS                       R12 R12 K32 ["GameId"]
      215 CALL                             R11 1 -1
      216 CALL                             R10 -1 1
      217 JUMPIFNOTEQKNIL                  R10 ; [+14]
      219 MOVE                             R11 R1
      220 CALL                             R11 0 0
      221 GETIMPORT                        R11 K4 [warn]
      223 GETUPVAL                         R12 0
      224 LOADK                            R14 K15 ["UploadTable"]
      225 LOADK                            R15 K35 ["GetSupportedLanguagesFailedMessage"]
      226 NAMECALL                         R12 R12 K7 ["getText"]
      228 CALL                             R12 3 -1
      229 CALL                             R11 -1 0
      230 CLOSEUPVALS                      R4
      231 RETURN                           R0 0
      232 GETTABLEKS                       R11 R2 K36 ["PluginMetadata"]
      234 GETTABLEKS                       R11 R11 K37 ["CloudTableId"]
      236 GETUPVAL                         R12 16
      237 GETTABLEKS                       R12 R12 K38 ["Download"]
      239 GETUPVAL                         R13 14
      240 GETUPVAL                         R14 0
      241 MOVE                             R15 R11
      242 CALL                             R12 3 1
      243 JUMPIFNOTEQKNIL                  R12 ; [+14]
      245 MOVE                             R13 R1
      246 CALL                             R13 0 0
      247 GETIMPORT                        R13 K4 [warn]
      249 GETUPVAL                         R14 0
      250 LOADK                            R16 K15 ["UploadTable"]
      251 LOADK                            R17 K39 ["GetCloudTableFailed"]
      252 NAMECALL                         R14 R14 K7 ["getText"]
      254 CALL                             R14 3 -1
      255 CALL                             R13 -1 0
      256 CLOSEUPVALS                      R4
      257 RETURN                           R0 0
      258 GETTABLEKS                       R13 R2 K36 ["PluginMetadata"]
      260 GETTABLEKS                       R13 R13 K40 ["AllLanguages"]
      262 GETTABLEKS                       R14 R2 K36 ["PluginMetadata"]
      264 GETTABLEKS                       R14 R14 K41 ["LocalesToLanguages"]
      266 GETUPVAL                         R15 17
      267 NAMECALL                         R16 R12 K14 ["GetEntries"]
      269 CALL                             R16 1 1
      270 MOVE                             R17 R13
      271 MOVE                             R18 R14
      272 CALL                             R15 3 1
      273 GETUPVAL                         R16 17
      274 NAMECALL                         R17 R4 K14 ["GetEntries"]
      276 CALL                             R17 1 1
      277 MOVE                             R18 R13
      278 MOVE                             R19 R14
      279 MOVE                             R20 R10
      280 CALL                             R16 4 1
      281 GETUPVAL                         R17 18
      282 GETTABLEKS                       R17 R17 K42 ["DiffTables"]
      284 LOADK                            R18 K43 ["MyLocalizationTable"]
      285 GETTABLEKS                       R19 R15 K44 ["entries"]
      287 GETTABLEKS                       R20 R16 K44 ["entries"]
      289 GETUPVAL                         R21 6
      290 MOVE                             R22 R9
      291 MOVE                             R23 R14
      292 GETUPVAL                         R24 0
      293 CALL                             R17 7 1
      294 GETTABLEKS                       R18 R16 K45 ["totalRows"]
      296 SETTABLEKS                       R18 R17 K45 ["totalRows"]
      298 GETTABLEKS                       R18 R16 K46 ["totalTranslations"]
      300 SETTABLEKS                       R18 R17 K46 ["totalTranslations"]
      302 GETTABLEKS                       R18 R16 K47 ["supportedLocales"]
      304 SETTABLEKS                       R18 R17 K47 ["supportedLocales"]
      306 GETTABLEKS                       R18 R16 K48 ["unsupportedLocales"]
      308 SETTABLEKS                       R18 R17 K48 ["unsupportedLocales"]
      310 GETUPVAL                         R18 6
      311 SETTABLEKS                       R18 R17 K49 ["includeDeletes"]
      313 GETTABLEKS                       R18 R16 K50 ["newLanguages"]
      315 SETTABLEKS                       R18 R17 K50 ["newLanguages"]
      317 GETTABLEKS                       R18 R16 K51 ["newLanguagesSet"]
      319 SETTABLEKS                       R18 R17 K51 ["newLanguagesSet"]
      321 GETUPVAL                         R20 2
      322 GETUPVAL                         R21 0
      323 LOADK                            R23 K5 ["MessageFrame"]
      324 LOADK                            R24 K52 ["ConfirmUploadMessage"]
      325 NAMECALL                         R21 R21 K7 ["getText"]
      327 CALL                             R21 3 -1
      328 CALL                             R20 -1 -1
      329 NAMECALL                         R18 R0 K8 ["dispatch"]
      331 CALL                             R18 -1 0
      332 GETUPVAL                         R18 0
      333 LOADK                            R20 K53 ["UploadDialogContent"]
      334 LOADK                            R21 K54 ["ConfirmUploadDialogTitle"]
      335 NAMECALL                         R18 R18 K7 ["getText"]
      337 CALL                             R18 3 1
      338 GETUPVAL                         R19 8
      339 MOVE                             R20 R18
      340 GETUPVAL                         R21 19
      341 NEWCLOSURE                       R22 P4
      342 CAPTURE                          UPVAL U10
      343 CAPTURE                          UPVAL U20
      344 CAPTURE                          VAL R17
      345 CALL                             R19 3 1
      346 NAMECALL                         R19 R19 K18 ["await"]
      348 CALL                             R19 1 1
      349 JUMPIF                           R19 ; [+19]
      350 GETUPVAL                         R22 1
      351 LOADB                            R23 0
      352 CALL                             R22 1 -1
      353 NAMECALL                         R20 R0 K8 ["dispatch"]
      355 CALL                             R20 -1 0
      356 GETUPVAL                         R22 2
      357 GETUPVAL                         R23 0
      358 LOADK                            R25 K5 ["MessageFrame"]
      359 LOADK                            R26 K55 ["UploadCanceledMessage"]
      360 NAMECALL                         R23 R23 K7 ["getText"]
      362 CALL                             R23 3 -1
      363 CALL                             R22 -1 -1
      364 NAMECALL                         R20 R0 K8 ["dispatch"]
      366 CALL                             R20 -1 0
      367 CLOSEUPVALS                      R4
      368 RETURN                           R0 0
      369 GETUPVAL                         R22 2
      370 GETUPVAL                         R23 0
      371 LOADK                            R25 K5 ["MessageFrame"]
      372 LOADK                            R26 K56 ["UploadingPatchMessage"]
      373 NAMECALL                         R23 R23 K7 ["getText"]
      375 CALL                             R23 3 -1
      376 CALL                             R22 -1 -1
      377 NAMECALL                         R20 R0 K8 ["dispatch"]
      379 CALL                             R20 -1 0
      380 GETTABLEKS                       R20 R17 K51 ["newLanguagesSet"]
      382 JUMPIFEQKNIL                     R20 ; [+29]
      384 GETUPVAL                         R20 21
      385 GETTABLEKS                       R21 R17 K51 ["newLanguagesSet"]
      387 CALL                             R20 1 1
      388 JUMPIF                           R20 ; [+23]
      389 GETUPVAL                         R20 22
      390 GETUPVAL                         R21 14
      391 GETIMPORT                        R22 K31 [game]
      393 GETTABLEKS                       R22 R22 K32 ["GameId"]
      395 GETTABLEKS                       R23 R17 K51 ["newLanguagesSet"]
      397 CALL                             R20 3 1
      398 JUMPIF                           R20 ; [+13]
      399 MOVE                             R21 R1
      400 CALL                             R21 0 0
      401 GETIMPORT                        R21 K4 [warn]
      403 GETUPVAL                         R22 0
      404 LOADK                            R24 K15 ["UploadTable"]
      405 LOADK                            R25 K57 ["PatchSupportedLangugesFailed"]
      406 NAMECALL                         R22 R22 K7 ["getText"]
      408 CALL                             R22 3 -1
      409 CALL                             R21 -1 0
      410 CLOSEUPVALS                      R4
      411 RETURN                           R0 0
      412 GETUPVAL                         R20 23
      413 GETUPVAL                         R21 14
      414 MOVE                             R22 R11
      415 GETIMPORT                        R23 K31 [game]
      417 GETTABLEKS                       R23 R23 K32 ["GameId"]
      419 MOVE                             R24 R17
      420 GETUPVAL                         R25 0
      421 CALL                             R20 5 1
      422 JUMPIF                           R20 ; [+13]
      423 MOVE                             R21 R1
      424 CALL                             R21 0 0
      425 GETIMPORT                        R21 K4 [warn]
      427 GETUPVAL                         R22 0
      428 LOADK                            R24 K15 ["UploadTable"]
      429 LOADK                            R25 K58 ["PatchCloudTableFailed"]
      430 NAMECALL                         R22 R22 K7 ["getText"]
      432 CALL                             R22 3 -1
      433 CALL                             R21 -1 0
      434 CLOSEUPVALS                      R4
      435 RETURN                           R0 0
      436 GETUPVAL                         R23 1
      437 LOADB                            R24 0
      438 CALL                             R23 1 -1
      439 NAMECALL                         R21 R0 K8 ["dispatch"]
      441 CALL                             R21 -1 0
      442 GETUPVAL                         R23 2
      443 GETUPVAL                         R24 0
      444 LOADK                            R26 K5 ["MessageFrame"]
      445 LOADK                            R27 K59 ["UploadCompletedMessage"]
      446 NAMECALL                         R24 R24 K7 ["getText"]
      448 CALL                             R24 3 -1
      449 CALL                             R23 -1 -1
      450 NAMECALL                         R21 R0 K8 ["dispatch"]
      452 CALL                             R21 -1 0
      453 GETUPVAL                         R22 6
      454 JUMPIFNOT                        R22 ; [+2]
      455 LOADK                            R21 K60 ["replace"]
      456 JUMP                             ; [+1]
      457 LOADK                            R21 K61 ["update"]
      458 GETUPVAL                         R22 24
      459 MOVE                             R24 R17
      460 MOVE                             R25 R21
      461 NAMECALL                         R22 R22 K62 ["reportUploadTable"]
      463 CALL                             R22 3 0
      464 GETUPVAL                         R22 25
      465 GETUPVAL                         R23 14
      466 GETIMPORT                        R24 K31 [game]
      468 GETTABLEKS                       R24 R24 K32 ["GameId"]
      470 CALL                             R22 2 0
      471 CLOSEUPVALS                      R4
      472 RETURN                           R0 0

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
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R4 K11 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R5 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R5 K12 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K13 ["Http"]
       37 GETTABLEKS                       R6 R4 K14 ["Util"]
       39 GETTABLEKS                       R6 R6 K15 ["Promise"]
       41 GETIMPORT                        R7 K9 [require]
       43 GETTABLEKS                       R8 R2 K16 ["Src"]
       45 GETTABLEKS                       R8 R8 K17 ["Actions"]
       47 GETTABLEKS                       R8 R8 K18 ["SetIsBusy"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K9 [require]
       52 GETTABLEKS                       R9 R2 K16 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Actions"]
       56 GETTABLEKS                       R9 R9 K19 ["SetMessage"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K9 [require]
       61 GETTABLEKS                       R10 R2 K16 ["Src"]
       63 GETTABLEKS                       R10 R10 K20 ["Components"]
       65 GETTABLEKS                       R10 R10 K21 ["UploadDialogContent"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K9 [require]
       70 GETTABLEKS                       R11 R2 K16 ["Src"]
       72 GETTABLEKS                       R11 R11 K20 ["Components"]
       74 GETTABLEKS                       R11 R11 K22 ["ErrorDialog"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K9 [require]
       79 GETTABLEKS                       R12 R2 K16 ["Src"]
       81 GETTABLEKS                       R12 R12 K20 ["Components"]
       83 GETTABLEKS                       R12 R12 K23 ["WarningDialog"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K9 [require]
       88 GETTABLEKS                       R13 R2 K16 ["Src"]
       90 GETTABLEKS                       R13 R13 K24 ["Thunks"]
       92 GETTABLEKS                       R13 R13 K25 ["DownloadCloudTable"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K9 [require]
       97 GETTABLEKS                       R14 R2 K16 ["Src"]
       99 GETTABLEKS                       R14 R14 K14 ["Util"]
      101 GETTABLEKS                       R14 R14 K26 ["RbxEntriesToWebEntries"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K9 [require]
      106 GETTABLEKS                       R15 R2 K16 ["Src"]
      108 GETTABLEKS                       R15 R15 K14 ["Util"]
      110 GETTABLEKS                       R15 R15 K27 ["PatchInfo"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K9 [require]
      115 GETTABLEKS                       R16 R2 K16 ["Src"]
      117 GETTABLEKS                       R16 R16 K14 ["Util"]
      119 GETTABLEKS                       R16 R16 K28 ["isEmpty"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K9 [require]
      124 GETTABLEKS                       R17 R2 K16 ["Src"]
      126 GETTABLEKS                       R17 R17 K14 ["Util"]
      128 GETTABLEKS                       R17 R17 K29 ["ValidateCloudTable"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K32 [Vector2.new]
      133 LOADN                            R18 300
      134 LOADN                            R19 370
      135 CALL                             R17 2 1
      136 GETIMPORT                        R18 K32 [Vector2.new]
      138 LOADN                            R19 500
      139 LOADN                            R20 200
      140 CALL                             R18 2 1
      141 GETIMPORT                        R19 K1 [game]
      143 LOADK                            R21 K33 ["EnableLocalizedLocalizationToolsErrorsApi"]
      144 NAMECALL                         R19 R19 K34 ["GetEngineFeature"]
      146 CALL                             R19 2 1
      147 LOADNIL                          R20
      148 JUMPIFNOT                        R19 ; [+10]
      149 GETIMPORT                        R21 K9 [require]
      151 GETTABLEKS                       R22 R2 K16 ["Src"]
      153 GETTABLEKS                       R22 R22 K14 ["Util"]
      155 GETTABLEKS                       R22 R22 K35 ["MapEngineErrors"]
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
