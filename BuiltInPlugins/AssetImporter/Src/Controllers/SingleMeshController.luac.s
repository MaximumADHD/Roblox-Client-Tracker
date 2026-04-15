PROTO_0:
        0 DUPTABLE                         R2 K11 [{"_plugin", "_isMock", "_session", "_state", "_errorMessages", "_useLocation", "_filePath", "_instances", "_uploadConnection", "onStateChanged", "onErrorsChanged"}]
        1 SETTABLEKS                       R0 R2 K0 ["_plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["_isMock"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K2 ["_session"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K12 ["state"]
       11 GETTABLEKS                       R3 R4 K13 ["closed"]
       13 SETTABLEKS                       R3 R2 K3 ["_state"]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K4 ["_errorMessages"]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K5 ["_useLocation"]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K6 ["_filePath"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K7 ["_instances"]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K8 ["_uploadConnection"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K14 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K9 ["onStateChanged"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R3 R4 K14 ["new"]
       40 CALL                             R3 0 1
       41 SETTABLEKS                       R3 R2 K10 ["onErrorsChanged"]
       43 GETUPVAL                         R5 0
       44 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       46 MOVE                             R4 R2
       47 GETIMPORT                        R3 K16 [setmetatable]
       49 CALL                             R3 2 1
       50 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_state"]
        6 GETTABLEKS                       R2 R0 K1 ["onStateChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_errorMessages"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_errorMessages"]
        6 GETTABLEKS                       R2 R0 K1 ["onErrorsChanged"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["Fire"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_errorMessages"]
        2 RETURN                           R1 1

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["_useLocation"]
        2 NAMECALL                         R2 R0 K1 ["_doImport"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_loadSession"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["state"]
        3 GETTABLEKS                       R4 R5 K1 ["loading"]
        5 NAMECALL                         R2 R0 K2 ["_setState"]
        7 CALL                             R2 2 0
        8 SETTABLEKS                       R1 R0 K3 ["_filePath"]
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K4 ["Get"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R0 K5 ["_instances"]
       16 GETIMPORT                        R2 K8 [task.defer]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["/?([^/]+)$"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+3]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 LOADK                            R2 K4 [""]
       10 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["_filePath"]
        3 NAMECALL                         R1 R1 K1 ["StartSessionWithPathAsync"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K2 ["_session"]
        8 NAMECALL                         R1 R0 K3 ["_isClosed"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+13]
       12 GETTABLEKS                       R1 R0 K2 ["_session"]
       14 JUMPIFEQKNIL                     R1 ; [+9]
       16 GETTABLEKS                       R1 R0 K2 ["_session"]
       18 NAMECALL                         R1 R1 K4 ["Cancel"]
       20 CALL                             R1 1 0
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K2 ["_session"]
       24 RETURN                           R0 0
       25 GETTABLEKS                       R2 R0 K2 ["_session"]
       27 JUMPIFNOT                        R2 ; [+6]
       28 GETTABLEKS                       R1 R0 K2 ["_session"]
       30 NAMECALL                         R1 R1 K5 ["GetImportTree"]
       32 CALL                             R1 1 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R1
       35 JUMPIF                           R1 ; [+41]
       36 NEWTABLE                         R4 1 0
       38 GETTABLEKS                       R6 R0 K0 ["_filePath"]
       40 GETIMPORT                        R7 K8 [string.match]
       42 MOVE                             R8 R6
       43 LOADK                            R9 K9 ["/?([^/]+)$"]
       44 CALL                             R7 2 1
       45 JUMPIFEQKNIL                     R7 ; [+3]
       47 MOVE                             R5 R7
       48 JUMP                             ; [+1]
       49 LOADK                            R5 K10 [""]
       50 GETUPVAL                         R6 1
       51 DUPTABLE                         R8 K14 [{"httpResponse", "simpleErrorMessage", "operationId"}]
       52 NEWTABLE                         R9 0 0
       54 SETTABLEKS                       R9 R8 K11 ["httpResponse"]
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R10 R11 K15 ["ErrorCode"]
       59 GETTABLEKS                       R9 R10 K16 ["CorruptedFile"]
       61 SETTABLEKS                       R9 R8 K12 ["simpleErrorMessage"]
       63 LOADN                            R9 255
       64 SETTABLEKS                       R9 R8 K13 ["operationId"]
       66 NAMECALL                         R6 R6 K17 ["JSONEncode"]
       68 CALL                             R6 2 1
       69 SETTABLE                         R6 R4 R5
       70 NAMECALL                         R2 R0 K18 ["_setErrors"]
       72 CALL                             R2 2 0
       73 NAMECALL                         R2 R0 K19 ["_importFailed"]
       75 CALL                             R2 1 0
       76 RETURN                           R0 0
       77 LOADB                            R2 0
       78 SETTABLEKS                       R2 R1 K20 ["AddModelToInventory"]
       80 LOADB                            R2 1
       81 SETTABLEKS                       R2 R1 K21 ["MergeMeshes"]
       83 NAMECALL                         R2 R1 K22 ["GetDescendants"]
       85 CALL                             R2 1 3
       86 FORGPREP                         R2
       87 LOADK                            R9 K23 ["AnimationImportData"]
       88 NAMECALL                         R7 R6 K24 ["IsA"]
       90 CALL                             R7 2 1
       91 JUMPIFNOT                        R7 ; [+3]
       92 LOADB                            R7 0
       93 SETTABLEKS                       R7 R6 K25 ["ShouldImport"]
       95 FORGLOOP                         R2 2 ; [-9]
       97 GETUPVAL                         R6 3
       98 GETTABLEKS                       R5 R6 K26 ["state"]
      100 GETTABLEKS                       R4 R5 K27 ["location"]
      102 NAMECALL                         R2 R0 K28 ["_setState"]
      104 CALL                             R2 2 0
      105 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["failed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 NAMECALL                         R1 R0 K0 ["_close"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["state"]
        5 GETTABLEKS                       R3 R4 K2 ["closed"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["closed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K3 ["_errorMessages"]
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isClosed"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R0 ; [+18]
        7 GETTABLEKS                       R1 R0 K1 ["Succeeded"]
        9 JUMPIFEQKNIL                     R1 ; [+15]
       11 GETTABLEKS                       R1 R0 K1 ["Succeeded"]
       13 JUMPIF                           R1 ; [+11]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R3 R0 K2 ["ErrorMessages"]
       17 NAMECALL                         R1 R1 K3 ["_setErrors"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 0
       21 NAMECALL                         R1 R1 K4 ["_importFailed"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R2 R0 K5 ["AssetIds"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 2
       30 MOVE                             R2 R0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K6 ["_instances"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K7 ["_useLocation"]
       37 CALL                             R1 3 1
       38 GETUPVAL                         R2 3
       39 MOVE                             R4 R1
       40 NAMECALL                         R2 R2 K8 ["Set"]
       42 CALL                             R2 2 0
       43 GETUPVAL                         R2 0
       44 NAMECALL                         R2 R2 K9 ["_close"]
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_session"]
        3 NAMECALL                         R0 R0 K1 ["Upload"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["importing"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K3 ["_session"]
       10 GETTABLEKS                       R1 R2 K4 ["UploadComplete"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 NAMECALL                         R1 R1 K5 ["Connect"]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K6 ["_uploadConnection"]
       22 GETIMPORT                        R1 K9 [task.spawn]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_session"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["_session"]
        6 NAMECALL                         R1 R1 K1 ["Cancel"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["_session"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K2 ["onStateChanged"]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["AssetImportService"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["Selection"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K9 ["GetService"]
       26 LOADK                            R5 K12 ["HttpService"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R7 R0 K13 ["Packages"]
       32 GETTABLEKS                       R6 R7 K14 ["Framework"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       37 GETTABLEKS                       R7 R6 K16 ["ContextItem"]
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R10 R0 K6 ["Src"]
       43 GETTABLEKS                       R9 R10 K17 ["Types"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R12 R0 K6 ["Src"]
       50 GETTABLEKS                       R11 R12 K7 ["Utility"]
       52 GETTABLEKS                       R10 R11 K18 ["reportUploadedAssetId"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R13 R0 K6 ["Src"]
       59 GETTABLEKS                       R12 R13 K7 ["Utility"]
       61 GETTABLEKS                       R11 R12 K19 ["updateInstances"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R5 K20 ["Util"]
       66 GETTABLEKS                       R12 R11 K21 ["Signal"]
       68 LOADK                            R15 K22 ["ExportController"]
       69 NAMECALL                         R13 R7 K23 ["extend"]
       71 CALL                             R13 2 1
       72 DUPTABLE                         R14 K29 [{"closed", "loading", "importing", "location", "failed"}]
       73 LOADK                            R15 K24 ["closed"]
       74 SETTABLEKS                       R15 R14 K24 ["closed"]
       76 LOADK                            R15 K25 ["loading"]
       77 SETTABLEKS                       R15 R14 K25 ["loading"]
       79 LOADK                            R15 K26 ["importing"]
       80 SETTABLEKS                       R15 R14 K26 ["importing"]
       82 LOADK                            R15 K27 ["location"]
       83 SETTABLEKS                       R15 R14 K27 ["location"]
       85 LOADK                            R15 K28 ["failed"]
       86 SETTABLEKS                       R15 R14 K28 ["failed"]
       88 SETTABLEKS                       R14 R13 K30 ["state"]
       90 DUPCLOSURE                       R14 K31 [PROTO_0]
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R12
       93 SETTABLEKS                       R14 R13 K32 ["new"]
       95 DUPCLOSURE                       R14 K33 [PROTO_1]
       96 CAPTURE                          VAL R13
       97 SETTABLEKS                       R14 R13 K34 ["mock"]
       99 DUPCLOSURE                       R14 K35 [PROTO_2]
      100 SETTABLEKS                       R14 R13 K36 ["getState"]
      102 DUPCLOSURE                       R14 K37 [PROTO_3]
      103 SETTABLEKS                       R14 R13 K38 ["_setState"]
      105 DUPCLOSURE                       R14 K39 [PROTO_4]
      106 SETTABLEKS                       R14 R13 K40 ["_setErrors"]
      108 DUPCLOSURE                       R14 K41 [PROTO_5]
      109 SETTABLEKS                       R14 R13 K42 ["getErrors"]
      111 DUPCLOSURE                       R14 K43 [PROTO_6]
      112 SETTABLEKS                       R14 R13 K44 ["setUseLocation"]
      114 DUPCLOSURE                       R14 K45 [PROTO_8]
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R14 R13 K46 ["startImport"]
      119 DUPCLOSURE                       R14 K47 [PROTO_9]
      120 DUPCLOSURE                       R15 K48 [PROTO_10]
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R13
      125 SETTABLEKS                       R15 R13 K49 ["_loadSession"]
      127 DUPCLOSURE                       R15 K50 [PROTO_11]
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R15 R13 K51 ["_importFailed"]
      131 DUPCLOSURE                       R15 K52 [PROTO_12]
      132 SETTABLEKS                       R15 R13 K53 ["cancelImport"]
      134 DUPCLOSURE                       R15 K54 [PROTO_13]
      135 CAPTURE                          VAL R13
      136 SETTABLEKS                       R15 R13 K55 ["_isClosed"]
      138 DUPCLOSURE                       R15 K56 [PROTO_14]
      139 CAPTURE                          VAL R13
      140 SETTABLEKS                       R15 R13 K57 ["_close"]
      142 DUPCLOSURE                       R15 K58 [PROTO_17]
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R3
      147 SETTABLEKS                       R15 R13 K59 ["_doImport"]
      149 DUPCLOSURE                       R15 K60 [PROTO_18]
      150 SETTABLEKS                       R15 R13 K61 ["destroy"]
      152 RETURN                           R13 1
