PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETVARARGS                       R3 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+5]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 RETURN                           R3 1
       13 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K6 [{[1], ["_mockFiles"], ["_isMockGlobalLibrary"] = False, ["_mockSessions"], ["_versionedUploadErrors"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_mockTemplateCache"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["_mockFiles"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K4 ["_mockSessions"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K5 ["_versionedUploadErrors"]
       17 GETUPVAL                         R3 0
       18 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K8 [setmetatable]
       23 CALL                             R1 2 1
       24 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_mockTemplateCache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_mockTemplateCache"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_mockTemplateCache"]
        2 NEWTABLE                         R3 0 0
        4 SETTABLE                         R3 R2 R1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_mockTemplateCache"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_mockTemplateCache"]
        4 RETURN                           R0 0

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["_mockFiles"]
        2 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_mockFiles"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["_mockFiles"]
        5 GETTABLEN                        R1 R2 1
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_mockFiles"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["_mockFiles"]
        5 GETTABLEN                        R1 R2 1
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_mockFiles"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["_mockFiles"]
        5 GETTABLEN                        R1 R2 1
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_mockFiles"]
        2 RETURN                           R1 1

PROTO_13:
        0 LOADN                            R3 0
        1 LOADK                            R4 K0 [""]
        2 RETURN                           R3 2

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["_versionedUploadErrors"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R5 R0 K0 ["_versionedUploadErrors"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIFNOT                        R4 ; [+3]
        4 LOADNIL                          R5
        5 MOVE                             R6 R4
        6 RETURN                           R5 2
        7 DUPTABLE                         R5 K4 [{["assetId"], ["versionNumber"] = 1}]
        8 SETTABLEKS                       R3 R5 K1 ["assetId"]
       10 LOADNIL                          R6
       11 RETURN                           R5 2

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_mockSessions"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_mockSessions"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+2]
        5 RETURN                           R2 1
        6 GETUPVAL                         R3 0
        7 MOVE                             R5 R1
        8 NAMECALL                         R3 R3 K1 ["StartSessionWithPathAsync"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetImportService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 DUPCLOSURE                       R2 K4 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["__index"]
       13 NEWTABLE                         R3 32 0
       15 FASTCALL2                        SETMETATABLE R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K7 [setmetatable]
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R2 K5 ["__index"]
       23 DUPCLOSURE                       R3 K8 [PROTO_2]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R2 K9 ["new"]
       27 DUPCLOSURE                       R3 K10 [PROTO_3]
       28 SETTABLEKS                       R3 R2 K11 ["GetPreset"]
       30 DUPCLOSURE                       R3 K12 [PROTO_4]
       31 SETTABLEKS                       R3 R2 K13 ["GetAllPresets"]
       33 DUPCLOSURE                       R3 K14 [PROTO_5]
       34 SETTABLEKS                       R3 R2 K15 ["SavePreset"]
       36 DUPCLOSURE                       R3 K16 [PROTO_6]
       37 SETTABLEKS                       R3 R2 K17 ["RemovePreset"]
       39 DUPCLOSURE                       R3 K18 [PROTO_7]
       40 SETTABLEKS                       R3 R2 K19 ["_clearPresets"]
       42 DUPCLOSURE                       R3 K20 [PROTO_8]
       43 SETTABLEKS                       R3 R2 K21 ["_setMockFiles"]
       45 DUPCLOSURE                       R3 K22 [PROTO_9]
       46 SETTABLEKS                       R3 R2 K23 ["PickMeshFileWithPrompt"]
       48 DUPCLOSURE                       R3 K24 [PROTO_10]
       49 SETTABLEKS                       R3 R2 K25 ["PickFileWithPromptAsync"]
       51 DUPCLOSURE                       R3 K26 [PROTO_11]
       52 SETTABLEKS                       R3 R2 K27 ["PickImageFileWithPrompt"]
       54 DUPCLOSURE                       R3 K28 [PROTO_12]
       55 SETTABLEKS                       R3 R2 K29 ["PickMultipleFilesWithPrompt"]
       57 DUPCLOSURE                       R3 K30 [PROTO_13]
       58 SETTABLEKS                       R3 R2 K31 ["UploadAssetFromPathAsync"]
       60 DUPCLOSURE                       R3 K32 [PROTO_14]
       61 SETTABLEKS                       R3 R2 K33 ["_setVersionedUploadErrorForPath"]
       63 DUPCLOSURE                       R3 K34 [PROTO_15]
       64 SETTABLEKS                       R3 R2 K35 ["UploadVersionedAssetFromPathAsync"]
       66 DUPCLOSURE                       R3 K36 [PROTO_16]
       67 SETTABLEKS                       R3 R2 K37 ["_setSessionFromPath"]
       69 DUPCLOSURE                       R3 K38 [PROTO_17]
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R3 R2 K39 ["StartSessionWithPathAsync"]
       73 RETURN                           R2 1
