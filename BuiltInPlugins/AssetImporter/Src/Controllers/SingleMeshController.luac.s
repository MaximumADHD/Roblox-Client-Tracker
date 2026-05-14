PROTO_0:
        0 DUPTABLE                         R2 K11 [{"_plugin", "_isMock", "_session", "_state", "_errorMessages", "_useLocation", "_filePath", "_instances", "_uploadConnection", "onStateChanged", "onErrorsChanged"}]
        1 SETTABLEKS                       R0 R2 K0 ["_plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["_isMock"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K2 ["_session"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K12 ["state"]
       11 GETTABLEKS                       R3 R3 K13 ["closed"]
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
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K14 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R2 K9 ["onStateChanged"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K14 ["new"]
       40 CALL                             R3 0 1
       41 SETTABLEKS                       R3 R2 K10 ["onErrorsChanged"]
       43 GETUPVAL                         R5 0
       44 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       46 MOVE                             R4 R2
       47 GETIMPORT                        R3 K16 [setmetatable]
       49 CALL                             R3 2 1
       50 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+15]
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["_loadSession"]
        6 CALL                             R0 1 1
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["state"]
       12 GETTABLEKS                       R2 R2 K2 ["location"]
       14 NAMECALL                         R0 R0 K3 ["_setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 NAMECALL                         R0 R0 K0 ["_loadSession"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["state"]
        3 GETTABLEKS                       R4 R4 K1 ["loading"]
        5 NAMECALL                         R2 R0 K2 ["_setState"]
        7 CALL                             R2 2 0
        8 SETTABLEKS                       R1 R0 K3 ["_filePath"]
       10 GETUPVAL                         R2 1
       11 NAMECALL                         R2 R2 K4 ["Get"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R0 K5 ["_instances"]
       16 GETIMPORT                        R2 K8 [task.defer]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_loadSession"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_session"]
        8 NAMECALL                         R0 R0 K2 ["GetImportTree"]
       10 CALL                             R0 1 1
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K3 ["InsertInWorkspace"]
       14 GETUPVAL                         R1 1
       15 SETTABLEKS                       R1 R0 K4 ["VersionedAssetId"]
       17 GETUPVAL                         R1 0
       18 NAMECALL                         R1 R1 K5 ["_doImport"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["state"]
        3 GETTABLEKS                       R5 R5 K1 ["loading"]
        5 NAMECALL                         R3 R0 K2 ["_setState"]
        7 CALL                             R3 2 0
        8 SETTABLEKS                       R1 R0 K3 ["_filePath"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R0 K4 ["_instances"]
       14 GETIMPORT                        R3 K7 [task.defer]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["/?([^/]+)$"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+3]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 LOADK                            R2 K4 [""]
       10 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["_filePath"]
        3 NAMECALL                         R1 R1 K1 ["StartSessionWithPathAsync"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K2 ["_session"]
        8 NAMECALL                         R1 R0 K3 ["_isClosed"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+14]
       12 GETTABLEKS                       R1 R0 K2 ["_session"]
       14 JUMPIFEQKNIL                     R1 ; [+9]
       16 GETTABLEKS                       R1 R0 K2 ["_session"]
       18 NAMECALL                         R1 R1 K4 ["Cancel"]
       20 CALL                             R1 1 0
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K2 ["_session"]
       24 LOADNIL                          R1
       25 RETURN                           R1 1
       26 GETTABLEKS                       R2 R0 K2 ["_session"]
       28 JUMPIFNOT                        R2 ; [+6]
       29 GETTABLEKS                       R1 R0 K2 ["_session"]
       31 NAMECALL                         R1 R1 K5 ["GetImportTree"]
       33 CALL                             R1 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R1
       36 JUMPIF                           R1 ; [+42]
       37 NEWTABLE                         R4 1 0
       39 GETTABLEKS                       R6 R0 K0 ["_filePath"]
       41 GETIMPORT                        R7 K8 [string.match]
       43 MOVE                             R8 R6
       44 LOADK                            R9 K9 ["/?([^/]+)$"]
       45 CALL                             R7 2 1
       46 JUMPIFEQKNIL                     R7 ; [+3]
       48 MOVE                             R5 R7
       49 JUMP                             ; [+1]
       50 LOADK                            R5 K10 [""]
       51 GETUPVAL                         R6 1
       52 DUPTABLE                         R8 K14 [{"httpResponse", "simpleErrorMessage", "operationId"}]
       53 NEWTABLE                         R9 0 0
       55 SETTABLEKS                       R9 R8 K11 ["httpResponse"]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K15 ["ErrorCode"]
       60 GETTABLEKS                       R9 R9 K16 ["CorruptedFile"]
       62 SETTABLEKS                       R9 R8 K12 ["simpleErrorMessage"]
       64 LOADN                            R9 255
       65 SETTABLEKS                       R9 R8 K13 ["operationId"]
       67 NAMECALL                         R6 R6 K17 ["JSONEncode"]
       69 CALL                             R6 2 1
       70 SETTABLE                         R6 R4 R5
       71 NAMECALL                         R2 R0 K18 ["_setErrors"]
       73 CALL                             R2 2 0
       74 NAMECALL                         R2 R0 K19 ["_importFailed"]
       76 CALL                             R2 1 0
       77 LOADNIL                          R2
       78 RETURN                           R2 1
       79 LOADB                            R2 0
       80 SETTABLEKS                       R2 R1 K20 ["AddModelToInventory"]
       82 LOADB                            R2 1
       83 SETTABLEKS                       R2 R1 K21 ["MergeMeshes"]
       85 NAMECALL                         R2 R1 K22 ["GetDescendants"]
       87 CALL                             R2 1 3
       88 FORGPREP                         R2
       89 LOADK                            R9 K23 ["AnimationImportData"]
       90 NAMECALL                         R7 R6 K24 ["IsA"]
       92 CALL                             R7 2 1
       93 JUMPIFNOT                        R7 ; [+3]
       94 LOADB                            R7 0
       95 SETTABLEKS                       R7 R6 K25 ["ShouldImport"]
       97 FORGLOOP                         R2 2 ; [-9]
       99 GETUPVAL                         R2 3
      100 CALL                             R2 0 1
      101 JUMPIFNOT                        R2 ; [+2]
      102 LOADB                            R2 1
      103 RETURN                           R2 1
      104 GETUPVAL                         R4 4
      105 GETTABLEKS                       R4 R4 K26 ["state"]
      107 GETTABLEKS                       R4 R4 K27 ["location"]
      109 NAMECALL                         R2 R0 K28 ["_setState"]
      111 CALL                             R2 2 0
      112 LOADNIL                          R2
      113 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["failed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["_close"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["state"]
        5 GETTABLEKS                       R3 R3 K2 ["closed"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["closed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K3 ["_errorMessages"]
       12 RETURN                           R0 0

PROTO_17:
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
       30 CALL                             R1 0 1
       31 JUMPIFNOT                        R1 ; [+26]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K6 ["_instances"]
       35 JUMPIFNOT                        R1 ; [+36]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K6 ["_instances"]
       39 LENGTH                           R1 R2
       40 LOADN                            R2 0
       41 JUMPIFNOTLT                      R2 R1 ; [+30]
       43 GETUPVAL                         R1 3
       44 MOVE                             R2 R0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K6 ["_instances"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K7 ["_useLocation"]
       51 CALL                             R1 3 1
       52 GETUPVAL                         R2 4
       53 MOVE                             R4 R1
       54 NAMECALL                         R2 R2 K8 ["Set"]
       56 CALL                             R2 2 0
       57 JUMP                             ; [+14]
       58 GETUPVAL                         R1 3
       59 MOVE                             R2 R0
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K6 ["_instances"]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K7 ["_useLocation"]
       66 CALL                             R1 3 1
       67 GETUPVAL                         R2 4
       68 MOVE                             R4 R1
       69 NAMECALL                         R2 R2 K8 ["Set"]
       71 CALL                             R2 2 0
       72 GETUPVAL                         R1 0
       73 NAMECALL                         R1 R1 K9 ["_close"]
       75 CALL                             R1 1 0
       76 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_session"]
        3 NAMECALL                         R0 R0 K1 ["Upload"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["importing"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["_session"]
       10 GETTABLEKS                       R1 R1 K4 ["UploadComplete"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 NAMECALL                         R1 R1 K5 ["Connect"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K6 ["_uploadConnection"]
       23 GETIMPORT                        R1 K9 [task.spawn]
       25 NEWCLOSURE                       R2 P1
       26 CAPTURE                          VAL R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_20:
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
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
       30 GETTABLEKS                       R6 R0 K13 ["Packages"]
       32 GETTABLEKS                       R6 R6 K14 ["Framework"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       37 GETTABLEKS                       R7 R6 K16 ["ContextItem"]
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R9 R0 K6 ["Src"]
       43 GETTABLEKS                       R9 R9 K17 ["Types"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R0 K6 ["Src"]
       50 GETTABLEKS                       R10 R10 K7 ["Utility"]
       52 GETTABLEKS                       R10 R10 K18 ["reportUploadedAssetId"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K6 ["Src"]
       59 GETTABLEKS                       R11 R11 K7 ["Utility"]
       61 GETTABLEKS                       R11 R11 K19 ["updateInstances"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K6 ["Src"]
       68 GETTABLEKS                       R12 R12 K20 ["Flags"]
       70 GETTABLEKS                       R12 R12 K21 ["getEFCinMeshVersioning"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R5 K22 ["Util"]
       75 GETTABLEKS                       R13 R12 K23 ["Signal"]
       77 LOADK                            R16 K24 ["ExportController"]
       78 NAMECALL                         R14 R7 K25 ["extend"]
       80 CALL                             R14 2 1
       81 DUPTABLE                         R15 K31 [{"closed", "loading", "importing", "location", "failed"}]
       82 LOADK                            R16 K26 ["closed"]
       83 SETTABLEKS                       R16 R15 K26 ["closed"]
       85 LOADK                            R16 K27 ["loading"]
       86 SETTABLEKS                       R16 R15 K27 ["loading"]
       88 LOADK                            R16 K28 ["importing"]
       89 SETTABLEKS                       R16 R15 K28 ["importing"]
       91 LOADK                            R16 K29 ["location"]
       92 SETTABLEKS                       R16 R15 K29 ["location"]
       94 LOADK                            R16 K30 ["failed"]
       95 SETTABLEKS                       R16 R15 K30 ["failed"]
       97 SETTABLEKS                       R15 R14 K32 ["state"]
       99 DUPCLOSURE                       R15 K33 [PROTO_0]
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R13
      102 SETTABLEKS                       R15 R14 K34 ["new"]
      104 DUPCLOSURE                       R15 K35 [PROTO_1]
      105 CAPTURE                          VAL R14
      106 SETTABLEKS                       R15 R14 K36 ["mock"]
      108 DUPCLOSURE                       R15 K37 [PROTO_2]
      109 SETTABLEKS                       R15 R14 K38 ["getState"]
      111 DUPCLOSURE                       R15 K39 [PROTO_3]
      112 SETTABLEKS                       R15 R14 K40 ["_setState"]
      114 DUPCLOSURE                       R15 K41 [PROTO_4]
      115 SETTABLEKS                       R15 R14 K42 ["_setErrors"]
      117 DUPCLOSURE                       R15 K43 [PROTO_5]
      118 SETTABLEKS                       R15 R14 K44 ["getErrors"]
      120 DUPCLOSURE                       R15 K45 [PROTO_6]
      121 SETTABLEKS                       R15 R14 K46 ["setUseLocation"]
      123 DUPCLOSURE                       R15 K47 [PROTO_8]
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R11
      127 SETTABLEKS                       R15 R14 K48 ["startImport"]
      129 DUPCLOSURE                       R15 K49 [PROTO_10]
      130 CAPTURE                          VAL R14
      131 SETTABLEKS                       R15 R14 K50 ["startVersionedImport"]
      133 DUPCLOSURE                       R15 K51 [PROTO_11]
      134 DUPCLOSURE                       R16 K52 [PROTO_12]
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R14
      140 SETTABLEKS                       R16 R14 K53 ["_loadSession"]
      142 DUPCLOSURE                       R16 K54 [PROTO_13]
      143 CAPTURE                          VAL R14
      144 SETTABLEKS                       R16 R14 K55 ["_importFailed"]
      146 DUPCLOSURE                       R16 K56 [PROTO_14]
      147 SETTABLEKS                       R16 R14 K57 ["cancelImport"]
      149 DUPCLOSURE                       R16 K58 [PROTO_15]
      150 CAPTURE                          VAL R14
      151 SETTABLEKS                       R16 R14 K59 ["_isClosed"]
      153 DUPCLOSURE                       R16 K60 [PROTO_16]
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R16 R14 K61 ["_close"]
      157 DUPCLOSURE                       R16 K62 [PROTO_19]
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R3
      163 SETTABLEKS                       R16 R14 K63 ["_doImport"]
      165 DUPCLOSURE                       R16 K64 [PROTO_20]
      166 SETTABLEKS                       R16 R14 K65 ["destroy"]
      168 RETURN                           R14 1
