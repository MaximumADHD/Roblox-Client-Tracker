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
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 LOADN                            R6 -1
        3 GETUPVAL                         R7 1
        4 NAMECALL                         R2 R0 K0 ["createVersionedImagePromise"]
        6 CALL                             R2 5 -1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R0 R0 K0 ["_doUploadVersion"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 LOADN                            R6 -1
        3 GETUPVAL                         R7 1
        4 NAMECALL                         R2 R0 K0 ["createVersionedTextPromise"]
        6 CALL                             R2 5 -1
        7 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 NAMECALL                         R0 R0 K0 ["_doUploadVersion"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["state"]
        3 GETTABLEKS                       R7 R7 K1 ["loading"]
        5 NAMECALL                         R5 R0 K2 ["_setState"]
        7 CALL                             R5 2 0
        8 SETTABLEKS                       R1 R0 K3 ["_filePath"]
       10 MOVE                             R5 R3
       11 JUMPIF                           R5 ; [+2]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R0 K4 ["_instances"]
       16 GETUPVAL                         R5 1
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+12]
       19 GETIMPORT                        R5 K8 [Enum.AssetType.Image]
       21 JUMPIFNOTEQ                      R4 R5 ; [+9]
       23 GETIMPORT                        R5 K11 [task.defer]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CALL                             R5 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R5 2
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+12]
       34 GETIMPORT                        R5 K13 [Enum.AssetType.TextDocument]
       36 JUMPIFNOTEQ                      R4 R5 ; [+9]
       38 GETIMPORT                        R5 K11 [task.defer]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CALL                             R5 1 0
       45 RETURN                           R0 0
       46 GETIMPORT                        R5 K11 [task.defer]
       48 NEWCLOSURE                       R6 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CALL                             R5 1 0
       52 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["/?([^/]+)$"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+3]
        7 MOVE                             R2 R1
        8 RETURN                           R2 1
        9 LOADK                            R2 K4 [""]
       10 RETURN                           R2 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["failed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["_close"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["state"]
        5 GETTABLEKS                       R3 R3 K2 ["closed"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R3 K1 ["closed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K3 ["_errorMessages"]
       12 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_session"]
        3 NAMECALL                         R0 R0 K1 ["Upload"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isClosed"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 NEWTABLE                         R2 1 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R4 R0 K1 ["assetId"]
       12 SETTABLE                         R4 R2 R3
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 NAMECALL                         R1 R1 K2 ["_close"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isClosed"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 NEWTABLE                         R3 1 0
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R7 K5 [{["httpResponse"], ["simpleErrorMessage"], ["operationId"] = -1}]
       12 NEWTABLE                         R8 0 0
       14 SETTABLEKS                       R8 R7 K1 ["httpResponse"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R9 R0
       18 GETIMPORT                        R8 K7 [tostring]
       20 CALL                             R8 1 1
       21 SETTABLEKS                       R8 R7 K2 ["simpleErrorMessage"]
       23 NAMECALL                         R5 R5 K8 ["JSONEncode"]
       25 CALL                             R5 2 1
       26 SETTABLE                         R5 R3 R4
       27 NAMECALL                         R1 R1 K9 ["_setErrors"]
       29 CALL                             R1 2 0
       30 GETUPVAL                         R1 0
       31 NAMECALL                         R1 R1 K10 ["_importFailed"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_26:
        0 NAMECALL                         R3 R0 K0 ["_isClosed"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["state"]
        8 GETTABLEKS                       R5 R5 K2 ["importing"]
       10 NAMECALL                         R3 R0 K3 ["_setState"]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 MOVE                             R4 R2
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["new"]
       20 CALL                             R5 0 1
       21 MOVE                             R6 R3
       22 CALL                             R4 2 1
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R3
       27 NAMECALL                         R4 R4 K5 ["andThen"]
       29 CALL                             R4 2 1
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U4
       34 NAMECALL                         R4 R4 K6 ["catch"]
       36 CALL                             R4 2 0
       37 RETURN                           R0 0

PROTO_27:
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
       50 GETTABLEKS                       R10 R10 K18 ["Controllers"]
       52 GETTABLEKS                       R10 R10 K19 ["Uploader"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K6 ["Src"]
       59 GETTABLEKS                       R11 R11 K7 ["Utility"]
       61 GETTABLEKS                       R11 R11 K20 ["parseFilename"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K6 ["Src"]
       68 GETTABLEKS                       R12 R12 K7 ["Utility"]
       70 GETTABLEKS                       R12 R12 K21 ["reportUploadedAssetId"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R0 K6 ["Src"]
       77 GETTABLEKS                       R13 R13 K7 ["Utility"]
       79 GETTABLEKS                       R13 R13 K22 ["updateInstances"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K6 ["Src"]
       86 GETTABLEKS                       R14 R14 K23 ["Flags"]
       88 GETTABLEKS                       R14 R14 K24 ["getEFCinMeshVersioning"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K5 [require]
       93 GETTABLEKS                       R15 R0 K6 ["Src"]
       95 GETTABLEKS                       R15 R15 K23 ["Flags"]
       97 GETTABLEKS                       R15 R15 K25 ["getFFlagAmrImageVersioning"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K5 [require]
      102 GETTABLEKS                       R16 R0 K6 ["Src"]
      104 GETTABLEKS                       R16 R16 K23 ["Flags"]
      106 GETTABLEKS                       R16 R16 K26 ["getFFlagAmrTextDocumentVersioning"]
      108 CALL                             R15 1 1
      109 GETTABLEKS                       R16 R5 K27 ["Util"]
      111 GETTABLEKS                       R17 R16 K28 ["Signal"]
      113 LOADK                            R20 K29 ["ExportController"]
      114 NAMECALL                         R18 R7 K30 ["extend"]
      116 CALL                             R18 2 1
      117 DUPTABLE                         R19 K36 [{["closed"] = "closed", ["loading"] = "loading", ["importing"] = "importing", ["location"] = "location", ["failed"] = "failed"}]
      118 SETTABLEKS                       R19 R18 K37 ["state"]
      120 DUPCLOSURE                       R19 K38 [PROTO_0]
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R17
      123 SETTABLEKS                       R19 R18 K39 ["new"]
      125 DUPCLOSURE                       R19 K40 [PROTO_1]
      126 CAPTURE                          VAL R18
      127 SETTABLEKS                       R19 R18 K41 ["mock"]
      129 DUPCLOSURE                       R19 K42 [PROTO_2]
      130 SETTABLEKS                       R19 R18 K43 ["getState"]
      132 DUPCLOSURE                       R19 K44 [PROTO_3]
      133 SETTABLEKS                       R19 R18 K45 ["_setState"]
      135 DUPCLOSURE                       R19 K46 [PROTO_4]
      136 SETTABLEKS                       R19 R18 K47 ["_setErrors"]
      138 DUPCLOSURE                       R19 K48 [PROTO_5]
      139 SETTABLEKS                       R19 R18 K49 ["getErrors"]
      141 DUPCLOSURE                       R19 K50 [PROTO_6]
      142 SETTABLEKS                       R19 R18 K51 ["setUseLocation"]
      144 DUPCLOSURE                       R19 K52 [PROTO_8]
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R13
      148 SETTABLEKS                       R19 R18 K53 ["startImport"]
      150 DUPCLOSURE                       R19 K54 [PROTO_14]
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R15
      154 SETTABLEKS                       R19 R18 K55 ["startVersionedImport"]
      156 DUPCLOSURE                       R19 K56 [PROTO_15]
      157 DUPCLOSURE                       R20 K57 [PROTO_16]
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R18
      163 SETTABLEKS                       R20 R18 K58 ["_loadSession"]
      165 DUPCLOSURE                       R20 K59 [PROTO_17]
      166 CAPTURE                          VAL R18
      167 SETTABLEKS                       R20 R18 K60 ["_importFailed"]
      169 DUPCLOSURE                       R20 K61 [PROTO_18]
      170 SETTABLEKS                       R20 R18 K62 ["cancelImport"]
      172 DUPCLOSURE                       R20 K63 [PROTO_19]
      173 CAPTURE                          VAL R18
      174 SETTABLEKS                       R20 R18 K64 ["_isClosed"]
      176 DUPCLOSURE                       R20 K65 [PROTO_20]
      177 CAPTURE                          VAL R18
      178 SETTABLEKS                       R20 R18 K66 ["_close"]
      180 DUPCLOSURE                       R20 K67 [PROTO_23]
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R3
      186 SETTABLEKS                       R20 R18 K68 ["_doImport"]
      188 DUPCLOSURE                       R20 K69 [PROTO_26]
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R4
      194 SETTABLEKS                       R20 R18 K70 ["_doUploadVersion"]
      196 DUPCLOSURE                       R20 K71 [PROTO_27]
      197 SETTABLEKS                       R20 R18 K72 ["destroy"]
      199 RETURN                           R18 1
