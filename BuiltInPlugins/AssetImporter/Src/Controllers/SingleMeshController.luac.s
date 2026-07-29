PROTO_0:
        0 DUPTABLE                         R2 K12 [{[1], ["_isMock"], ["_session"] = , ["_state"], ["_errorMessages"], ["_useLocation"] = , ["_filePath"] = , ["_instances"] = , ["_uploadConnection"] = , ["onStateChanged"], ["onErrorsChanged"]}]
        1 SETTABLEKS                       R0 R2 K0 ["_plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["_isMock"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K13 ["state"]
        8 GETTABLEKS                       R3 R3 K14 ["closed"]
       10 SETTABLEKS                       R3 R2 K4 ["_state"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K5 ["_errorMessages"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K15 ["new"]
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R2 K10 ["onStateChanged"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K15 ["new"]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K11 ["onErrorsChanged"]
       28 GETUPVAL                         R5 0
       29 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       31 MOVE                             R4 R2
       32 GETIMPORT                        R3 K17 [setmetatable]
       34 CALL                             R3 2 1
       35 RETURN                           R3 1

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
        8 GETTABLEKS                       R1 R0 K2 ["_session"]
       10 LOADK                            R2 K3 ["Properties Import"]
       11 SETTABLEKS                       R2 R1 K4 ["UploadSource"]
       13 NAMECALL                         R1 R0 K5 ["_isClosed"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+14]
       17 GETTABLEKS                       R1 R0 K2 ["_session"]
       19 JUMPIFEQKNIL                     R1 ; [+9]
       21 GETTABLEKS                       R1 R0 K2 ["_session"]
       23 NAMECALL                         R1 R1 K6 ["Cancel"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K2 ["_session"]
       29 LOADNIL                          R1
       30 RETURN                           R1 1
       31 GETTABLEKS                       R2 R0 K2 ["_session"]
       33 JUMPIFNOT                        R2 ; [+6]
       34 GETTABLEKS                       R1 R0 K2 ["_session"]
       36 NAMECALL                         R1 R1 K7 ["GetImportTree"]
       38 CALL                             R1 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R1
       41 JUMPIF                           R1 ; [+39]
       42 NEWTABLE                         R4 1 0
       44 GETTABLEKS                       R6 R0 K0 ["_filePath"]
       46 GETIMPORT                        R7 K10 [string.match]
       48 MOVE                             R8 R6
       49 LOADK                            R9 K11 ["/?([^/]+)$"]
       50 CALL                             R7 2 1
       51 JUMPIFEQKNIL                     R7 ; [+3]
       53 MOVE                             R5 R7
       54 JUMP                             ; [+1]
       55 LOADK                            R5 K12 [""]
       56 GETUPVAL                         R6 1
       57 DUPTABLE                         R8 K17 [{["httpResponse"], ["simpleErrorMessage"], ["operationId"] = -1}]
       58 NEWTABLE                         R9 0 0
       60 SETTABLEKS                       R9 R8 K13 ["httpResponse"]
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R9 R9 K18 ["ErrorCode"]
       65 GETTABLEKS                       R9 R9 K19 ["CorruptedFile"]
       67 SETTABLEKS                       R9 R8 K14 ["simpleErrorMessage"]
       69 NAMECALL                         R6 R6 K20 ["JSONEncode"]
       71 CALL                             R6 2 1
       72 SETTABLE                         R6 R4 R5
       73 NAMECALL                         R2 R0 K21 ["_setErrors"]
       75 CALL                             R2 2 0
       76 NAMECALL                         R2 R0 K22 ["_importFailed"]
       78 CALL                             R2 1 0
       79 LOADNIL                          R2
       80 RETURN                           R2 1
       81 LOADB                            R2 0
       82 SETTABLEKS                       R2 R1 K23 ["AddModelToInventory"]
       84 LOADB                            R2 1
       85 SETTABLEKS                       R2 R1 K24 ["MergeMeshes"]
       87 NAMECALL                         R2 R1 K25 ["GetDescendants"]
       89 CALL                             R2 1 3
       90 FORGPREP                         R2
       91 LOADK                            R9 K26 ["AnimationImportData"]
       92 NAMECALL                         R7 R6 K27 ["IsA"]
       94 CALL                             R7 2 1
       95 JUMPIFNOT                        R7 ; [+3]
       96 LOADB                            R7 0
       97 SETTABLEKS                       R7 R6 K28 ["ShouldImport"]
       99 FORGLOOP                         R2 2 ; [-9]
      101 GETUPVAL                         R2 3
      102 CALL                             R2 0 1
      103 JUMPIFNOT                        R2 ; [+2]
      104 LOADB                            R2 1
      105 RETURN                           R2 1
      106 GETUPVAL                         R4 4
      107 GETTABLEKS                       R4 R4 K29 ["state"]
      109 GETTABLEKS                       R4 R4 K30 ["location"]
      111 NAMECALL                         R2 R0 K31 ["_setState"]
      113 CALL                             R2 2 0
      114 LOADNIL                          R2
      115 RETURN                           R2 1

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
       81 DUPTABLE                         R15 K31 [{["closed"] = "closed", ["loading"] = "loading", ["importing"] = "importing", ["location"] = "location", ["failed"] = "failed"}]
       82 SETTABLEKS                       R15 R14 K32 ["state"]
       84 DUPCLOSURE                       R15 K33 [PROTO_0]
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R13
       87 SETTABLEKS                       R15 R14 K34 ["new"]
       89 DUPCLOSURE                       R15 K35 [PROTO_1]
       90 CAPTURE                          VAL R14
       91 SETTABLEKS                       R15 R14 K36 ["mock"]
       93 DUPCLOSURE                       R15 K37 [PROTO_2]
       94 SETTABLEKS                       R15 R14 K38 ["getState"]
       96 DUPCLOSURE                       R15 K39 [PROTO_3]
       97 SETTABLEKS                       R15 R14 K40 ["_setState"]
       99 DUPCLOSURE                       R15 K41 [PROTO_4]
      100 SETTABLEKS                       R15 R14 K42 ["_setErrors"]
      102 DUPCLOSURE                       R15 K43 [PROTO_5]
      103 SETTABLEKS                       R15 R14 K44 ["getErrors"]
      105 DUPCLOSURE                       R15 K45 [PROTO_6]
      106 SETTABLEKS                       R15 R14 K46 ["setUseLocation"]
      108 DUPCLOSURE                       R15 K47 [PROTO_8]
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R11
      112 SETTABLEKS                       R15 R14 K48 ["startImport"]
      114 DUPCLOSURE                       R15 K49 [PROTO_10]
      115 CAPTURE                          VAL R14
      116 SETTABLEKS                       R15 R14 K50 ["startVersionedImport"]
      118 DUPCLOSURE                       R15 K51 [PROTO_11]
      119 DUPCLOSURE                       R16 K52 [PROTO_12]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R14
      125 SETTABLEKS                       R16 R14 K53 ["_loadSession"]
      127 DUPCLOSURE                       R16 K54 [PROTO_13]
      128 CAPTURE                          VAL R14
      129 SETTABLEKS                       R16 R14 K55 ["_importFailed"]
      131 DUPCLOSURE                       R16 K56 [PROTO_14]
      132 SETTABLEKS                       R16 R14 K57 ["cancelImport"]
      134 DUPCLOSURE                       R16 K58 [PROTO_15]
      135 CAPTURE                          VAL R14
      136 SETTABLEKS                       R16 R14 K59 ["_isClosed"]
      138 DUPCLOSURE                       R16 K60 [PROTO_16]
      139 CAPTURE                          VAL R14
      140 SETTABLEKS                       R16 R14 K61 ["_close"]
      142 DUPCLOSURE                       R16 K62 [PROTO_19]
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R3
      148 SETTABLEKS                       R16 R14 K63 ["_doImport"]
      150 DUPCLOSURE                       R16 K64 [PROTO_20]
      151 SETTABLEKS                       R16 R14 K65 ["destroy"]
      153 RETURN                           R14 1
