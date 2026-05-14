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
       11 LOADK                            R6 K2 ["DownloadFailedMessage"]
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
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETIMPORT                        R2 K4 [ipairs]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 3
       13 FORGPREP_INEXT                   R2
       14 GETTABLEKS                       R7 R6 K5 ["identifier"]
       16 JUMPIFNOTEQKNIL                  R7 ; [+3]
       18 LOADB                            R7 0
       19 RETURN                           R7 1
       20 DUPTABLE                         R7 K7 [{"Values"}]
       21 NEWTABLE                         R8 0 0
       23 SETTABLEKS                       R8 R7 K6 ["Values"]
       25 GETTABLEKS                       R9 R6 K5 ["identifier"]
       27 GETTABLEKS                       R9 R9 K9 ["key"]
       29 ORK                              R8 R9 K8 [""]
       30 SETTABLEKS                       R8 R7 K10 ["Key"]
       32 GETTABLEKS                       R9 R6 K5 ["identifier"]
       34 GETTABLEKS                       R9 R9 K11 ["source"]
       36 ORK                              R8 R9 K8 [""]
       37 SETTABLEKS                       R8 R7 K12 ["Source"]
       39 GETTABLEKS                       R9 R6 K5 ["identifier"]
       41 GETTABLEKS                       R9 R9 K13 ["context"]
       43 ORK                              R8 R9 K8 [""]
       44 SETTABLEKS                       R8 R7 K14 ["Context"]
       46 GETTABLEKS                       R9 R6 K15 ["metadata"]
       48 JUMPIFNOT                        R9 ; [+5]
       49 GETTABLEKS                       R8 R6 K15 ["metadata"]
       51 GETTABLEKS                       R8 R8 K16 ["example"]
       53 JUMPIF                           R8 ; [+1]
       54 LOADK                            R8 K8 [""]
       55 SETTABLEKS                       R8 R7 K17 ["Example"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R9 R6 K18 ["translations"]
       60 CALL                             R8 1 1
       61 JUMPIF                           R8 ; [+26]
       62 GETIMPORT                        R8 K4 [ipairs]
       64 GETTABLEKS                       R9 R6 K18 ["translations"]
       66 CALL                             R8 1 3
       67 FORGPREP_INEXT                   R8
       68 GETTABLEKS                       R14 R12 K19 ["locale"]
       70 FASTCALL1                        TYPE R14 ; [+2]
       71 GETIMPORT                        R13 K1 [type]
       73 CALL                             R13 1 1
       74 JUMPIFEQKS                       R13 K20 ["string"] ; [+3]
       76 LOADB                            R13 0
       77 RETURN                           R13 1
       78 GETTABLEKS                       R13 R7 K6 ["Values"]
       80 GETTABLEKS                       R14 R12 K19 ["locale"]
       82 GETTABLEKS                       R16 R12 K21 ["translationText"]
       84 ORK                              R15 R16 K8 [""]
       85 SETTABLE                         R15 R13 R14
       86 FORGLOOP                         R8 2 [inext] ; [-19]
       88 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       90 MOVE                             R9 R1
       91 MOVE                             R10 R7
       92 GETIMPORT                        R8 K23 [table.insert]
       94 CALL                             R8 2 0
       95 FORGLOOP                         R2 2 [inext] ; [-82]
       97 LOADB                            R2 1
       98 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+33]
        1 GETTABLEKS                       R1 R0 K0 ["responseCode"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["StatusCodes"]
        6 GETTABLEKS                       R2 R2 K2 ["OK"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+25]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R2 R0 K3 ["responseBody"]
       13 GETTABLEKS                       R2 R2 K4 ["data"]
       15 GETUPVAL                         R3 2
       16 CALL                             R1 2 1
       17 JUMPIF                           R1 ; [+10]
       18 GETIMPORT                        R2 K6 [warn]
       20 GETUPVAL                         R3 3
       21 LOADK                            R5 K7 ["DownloadTable"]
       22 LOADK                            R6 K8 ["GetCloudTableFailed"]
       23 NAMECALL                         R3 R3 K9 ["getText"]
       25 CALL                             R3 3 -1
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0
       28 GETTABLEKS                       R2 R0 K3 ["responseBody"]
       30 GETTABLEKS                       R2 R2 K10 ["nextPageCursor"]
       32 SETUPVAL                         R2 4
       33 RETURN                           R0 0
       34 GETIMPORT                        R1 K6 [warn]
       36 GETUPVAL                         R2 3
       37 LOADK                            R4 K7 ["DownloadTable"]
       38 LOADK                            R5 K8 ["GetCloudTableFailed"]
       39 NAMECALL                         R2 R2 K9 ["getText"]
       41 CALL                             R2 3 -1
       42 CALL                             R1 -1 0
       43 RETURN                           R0 0
       44 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K2 ["DownloadTable"]
        4 LOADK                            R4 K3 ["GetCloudTableFailed"]
        5 NAMECALL                         R1 R1 K4 ["getText"]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetEntries"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 LOADK                            R4 K0 [""]
        3 JUMPIFNOT                        R4 ; [+35]
        4 GETTABLEKS                       R5 R0 K1 ["LocalizationTables"]
        6 GETTABLEKS                       R5 R5 K2 ["V1"]
        8 GETTABLEKS                       R5 R5 K3 ["LocalizationTable"]
       10 GETTABLEKS                       R5 R5 K4 ["Tables"]
       12 GETTABLEKS                       R5 R5 K5 ["entries"]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R4
       16 GETIMPORT                        R8 K7 [game]
       18 GETTABLEKS                       R8 R8 K8 ["GameId"]
       20 CALL                             R5 3 1
       21 NAMECALL                         R6 R5 K9 ["makeRequest"]
       23 CALL                             R6 1 1
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          REF R4
       30 NEWCLOSURE                       R9 P1
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R6 R6 K10 ["andThen"]
       34 CALL                             R6 3 1
       35 NAMECALL                         R6 R6 K11 ["await"]
       37 CALL                             R6 1 0
       38 JUMPBACK                         ; [-36]
       39 GETIMPORT                        R5 K14 [Instance.new]
       41 LOADK                            R6 K3 ["LocalizationTable"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K16 [pcall]
       45 NEWCLOSURE                       R7 P2
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R3
       48 CALL                             R6 1 2
       49 JUMPIF                           R6 ; [+14]
       50 GETIMPORT                        R8 K18 [warn]
       52 LOADK                            R15 K19 ["DownloadTable"]
       53 LOADK                            R16 K20 ["SetEntriesFailedWithErrorMessage"]
       54 NAMECALL                         R13 R1 K21 ["getText"]
       56 CALL                             R13 3 1
       57 MOVE                             R10 R13
       58 LOADK                            R11 K22 [" "]
       59 MOVE                             R12 R7
       60 CONCAT                           R9 R10 R12
       61 CALL                             R8 1 0
       62 CLOSEUPVALS                      R4
       63 RETURN                           R0 0
       64 CLOSEUPVALS                      R4
       65 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["PromptDownloadGameTableToCSV"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
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
       33 LOADK                            R10 K9 ["DownloadingTableMessage"]
       34 NAMECALL                         R7 R7 K7 ["getText"]
       36 CALL                             R7 3 -1
       37 CALL                             R6 -1 -1
       38 NAMECALL                         R4 R0 K8 ["dispatch"]
       40 CALL                             R4 -1 0
       41 GETUPVAL                         R4 3
       42 GETUPVAL                         R5 4
       43 GETUPVAL                         R6 0
       44 GETUPVAL                         R7 5
       45 CALL                             R4 3 1
       46 JUMPIFNOTEQKNIL                  R4 ; [+4]
       48 MOVE                             R5 R1
       49 CALL                             R5 0 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R7 2
       52 GETUPVAL                         R8 0
       53 LOADK                            R10 K5 ["MessageFrame"]
       54 LOADK                            R11 K10 ["SelectCSVFileMessage"]
       55 NAMECALL                         R8 R8 K7 ["getText"]
       57 CALL                             R8 3 -1
       58 CALL                             R7 -1 -1
       59 NAMECALL                         R5 R0 K8 ["dispatch"]
       61 CALL                             R5 -1 0
       62 GETIMPORT                        R5 K12 [pcall]
       64 NEWCLOSURE                       R6 P1
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          VAL R4
       67 CALL                             R5 1 2
       68 JUMPIF                           R5 ; [+7]
       69 MOVE                             R7 R1
       70 CALL                             R7 0 0
       71 GETIMPORT                        R7 K4 [warn]
       73 MOVE                             R8 R6
       74 CALL                             R7 1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R9 1
       77 LOADB                            R10 0
       78 CALL                             R9 1 -1
       79 NAMECALL                         R7 R0 K8 ["dispatch"]
       81 CALL                             R7 -1 0
       82 GETUPVAL                         R9 2
       83 GETUPVAL                         R10 0
       84 LOADK                            R12 K5 ["MessageFrame"]
       85 LOADK                            R13 K13 ["TableWrittenToFileMessage"]
       86 NAMECALL                         R10 R10 K7 ["getText"]
       88 CALL                             R10 3 -1
       89 CALL                             R9 -1 -1
       90 NAMECALL                         R7 R0 K8 ["dispatch"]
       92 CALL                             R7 -1 0
       93 GETUPVAL                         R7 7
       94 MOVE                             R9 R4
       95 LOADK                            R10 K14 ["download"]
       96 GETTABLEKS                       R11 R2 K15 ["PluginMetadata"]
       98 GETTABLEKS                       R11 R11 K16 ["AllLanguages"]
      100 GETTABLEKS                       R12 R2 K15 ["PluginMetadata"]
      102 GETTABLEKS                       R12 R12 K17 ["LocalesToLanguages"]
      104 NAMECALL                         R7 R7 K18 ["reportDownloadTable"]
      106 CALL                             R7 5 0
      107 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R3
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R2
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Framework"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R2 R2 K11 ["Http"]
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K12 ["Src"]
       28 GETTABLEKS                       R4 R4 K13 ["Actions"]
       30 GETTABLEKS                       R4 R4 K14 ["SetIsBusy"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K8 [require]
       35 GETTABLEKS                       R5 R1 K12 ["Src"]
       37 GETTABLEKS                       R5 R5 K13 ["Actions"]
       39 GETTABLEKS                       R5 R5 K15 ["SetMessage"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K8 [require]
       44 GETTABLEKS                       R6 R1 K12 ["Src"]
       46 GETTABLEKS                       R6 R6 K16 ["Util"]
       48 GETTABLEKS                       R6 R6 K17 ["isEmpty"]
       50 CALL                             R5 1 1
       51 DUPCLOSURE                       R6 K18 [PROTO_1]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R7 K19 [PROTO_2]
       55 CAPTURE                          VAL R5
       56 DUPCLOSURE                       R8 K20 [PROTO_6]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 DUPCLOSURE                       R9 K21 [PROTO_9]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R0
       64 DUPTABLE                         R10 K24 [{"Download", "DownloadAndSave"}]
       65 SETTABLEKS                       R8 R10 K22 ["Download"]
       67 SETTABLEKS                       R9 R10 K23 ["DownloadAndSave"]
       69 RETURN                           R10 1
