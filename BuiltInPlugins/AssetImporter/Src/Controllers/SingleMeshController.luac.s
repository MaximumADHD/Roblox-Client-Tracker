PROTO_0:
        0 DUPTABLE                         R2 K9 [{"_plugin", "_isMock", "_session", "_state", "_useLocation", "_filePath", "_instances", "_uploadConnection", "onStateChanged"}]
        1 SETTABLEKS                       R0 R2 K0 ["_plugin"]
        3 SETTABLEKS                       R1 R2 K1 ["_isMock"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K2 ["_session"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K10 ["state"]
       11 GETTABLEKS                       R3 R4 K11 ["closed"]
       13 SETTABLEKS                       R3 R2 K3 ["_state"]
       15 LOADNIL                          R3
       16 SETTABLEKS                       R3 R2 K4 ["_useLocation"]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R2 K5 ["_filePath"]
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K6 ["_instances"]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K7 ["_uploadConnection"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R3 R4 K12 ["new"]
       30 CALL                             R3 0 1
       31 SETTABLEKS                       R3 R2 K8 ["onStateChanged"]
       33 GETUPVAL                         R5 0
       34 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K14 [setmetatable]
       39 CALL                             R3 2 1
       40 RETURN                           R3 1

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
        0 SETTABLEKS                       R1 R0 K0 ["_useLocation"]
        2 NAMECALL                         R2 R0 K1 ["_doImport"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_loadSession"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       35 JUMPIF                           R1 ; [+4]
       36 NAMECALL                         R2 R0 K6 ["_importFailed"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0
       40 LOADB                            R2 0
       41 SETTABLEKS                       R2 R1 K7 ["AddModelToInventory"]
       43 LOADB                            R2 1
       44 SETTABLEKS                       R2 R1 K8 ["MergeMeshes"]
       46 NAMECALL                         R2 R1 K9 ["GetDescendants"]
       48 CALL                             R2 1 3
       49 FORGPREP                         R2
       50 LOADK                            R9 K10 ["AnimationImportData"]
       51 NAMECALL                         R7 R6 K11 ["IsA"]
       53 CALL                             R7 2 1
       54 JUMPIFNOT                        R7 ; [+3]
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R6 K12 ["ShouldImport"]
       58 FORGLOOP                         R2 2 ; [-9]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R5 R6 K13 ["state"]
       63 GETTABLEKS                       R4 R5 K14 ["location"]
       65 NAMECALL                         R2 R0 K15 ["_setState"]
       67 CALL                             R2 2 0
       68 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["failed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["_close"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["state"]
        5 GETTABLEKS                       R3 R4 K2 ["closed"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["state"]
        3 GETTABLEKS                       R3 R4 K1 ["closed"]
        5 NAMECALL                         R1 R0 K2 ["_setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_isClosed"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R0 ; [+12]
        7 GETTABLEKS                       R1 R0 K1 ["Succeeded"]
        9 JUMPIFEQKNIL                     R1 ; [+9]
       11 GETTABLEKS                       R1 R0 K1 ["Succeeded"]
       13 JUMPIF                           R1 ; [+5]
       14 GETIMPORT                        R1 K3 [print]
       16 LOADK                            R2 K4 ["Failed!"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R2 R0 K5 ["AssetIds"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 2
       24 MOVE                             R2 R0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K6 ["_instances"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K7 ["_useLocation"]
       31 CALL                             R1 3 1
       32 GETUPVAL                         R2 3
       33 MOVE                             R4 R1
       34 NAMECALL                         R2 R2 K8 ["Set"]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 0
       38 NAMECALL                         R2 R2 K9 ["_close"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_session"]
        3 NAMECALL                         R0 R0 K1 ["Upload"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R6 R0 K12 ["Packages"]
       28 GETTABLEKS                       R5 R6 K13 ["Framework"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K14 ["ContextServices"]
       33 GETTABLEKS                       R6 R5 K15 ["ContextItem"]
       35 GETIMPORT                        R7 K5 [require]
       37 GETTABLEKS                       R10 R0 K6 ["Src"]
       39 GETTABLEKS                       R9 R10 K7 ["Utility"]
       41 GETTABLEKS                       R8 R9 K16 ["reportUploadedAssetId"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K5 [require]
       46 GETTABLEKS                       R11 R0 K6 ["Src"]
       48 GETTABLEKS                       R10 R11 K7 ["Utility"]
       50 GETTABLEKS                       R9 R10 K17 ["updateInstances"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R4 K18 ["Util"]
       55 GETTABLEKS                       R10 R9 K19 ["Signal"]
       57 LOADK                            R13 K20 ["ExportController"]
       58 NAMECALL                         R11 R6 K21 ["extend"]
       60 CALL                             R11 2 1
       61 DUPTABLE                         R12 K27 [{"closed", "loading", "importing", "location", "failed"}]
       62 LOADK                            R13 K22 ["closed"]
       63 SETTABLEKS                       R13 R12 K22 ["closed"]
       65 LOADK                            R13 K23 ["loading"]
       66 SETTABLEKS                       R13 R12 K23 ["loading"]
       68 LOADK                            R13 K24 ["importing"]
       69 SETTABLEKS                       R13 R12 K24 ["importing"]
       71 LOADK                            R13 K25 ["location"]
       72 SETTABLEKS                       R13 R12 K25 ["location"]
       74 LOADK                            R13 K26 ["failed"]
       75 SETTABLEKS                       R13 R12 K26 ["failed"]
       77 SETTABLEKS                       R12 R11 K28 ["state"]
       79 DUPCLOSURE                       R12 K29 [PROTO_0]
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R10
       82 SETTABLEKS                       R12 R11 K30 ["new"]
       84 DUPCLOSURE                       R12 K31 [PROTO_1]
       85 CAPTURE                          VAL R11
       86 SETTABLEKS                       R12 R11 K32 ["mock"]
       88 DUPCLOSURE                       R12 K33 [PROTO_2]
       89 SETTABLEKS                       R12 R11 K34 ["getState"]
       91 DUPCLOSURE                       R12 K35 [PROTO_3]
       92 SETTABLEKS                       R12 R11 K36 ["_setState"]
       94 DUPCLOSURE                       R12 K37 [PROTO_4]
       95 SETTABLEKS                       R12 R11 K38 ["setUseLocation"]
       97 DUPCLOSURE                       R12 K39 [PROTO_6]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R3
      100 SETTABLEKS                       R12 R11 K40 ["startImport"]
      102 DUPCLOSURE                       R12 K41 [PROTO_7]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R11
      105 SETTABLEKS                       R12 R11 K42 ["_loadSession"]
      107 DUPCLOSURE                       R12 K43 [PROTO_8]
      108 CAPTURE                          VAL R11
      109 SETTABLEKS                       R12 R11 K44 ["_importFailed"]
      111 DUPCLOSURE                       R12 K45 [PROTO_9]
      112 SETTABLEKS                       R12 R11 K46 ["cancelImport"]
      114 DUPCLOSURE                       R12 K47 [PROTO_10]
      115 CAPTURE                          VAL R11
      116 SETTABLEKS                       R12 R11 K48 ["_isClosed"]
      118 DUPCLOSURE                       R12 K49 [PROTO_11]
      119 CAPTURE                          VAL R11
      120 SETTABLEKS                       R12 R11 K50 ["_close"]
      122 DUPCLOSURE                       R12 K51 [PROTO_14]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R3
      127 SETTABLEKS                       R12 R11 K52 ["_doImport"]
      129 DUPCLOSURE                       R12 K53 [PROTO_15]
      130 SETTABLEKS                       R12 R11 K54 ["destroy"]
      132 RETURN                           R11 1
