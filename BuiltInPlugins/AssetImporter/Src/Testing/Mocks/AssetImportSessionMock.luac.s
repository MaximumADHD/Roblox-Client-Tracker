PROTO_0:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["new"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K3 ["UploadProgress"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["new"]
       17 CALL                             R1 0 1
       18 SETTABLEKS                       R1 R0 K4 ["UploadComplete"]
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K5 ["_isAvatar"]
       23 LOADB                            R1 0
       24 SETTABLEKS                       R1 R0 K6 ["_isR15"]
       26 LOADB                            R1 0
       27 SETTABLEKS                       R1 R0 K7 ["_isGltf"]
       29 LOADB                            R1 0
       30 SETTABLEKS                       R1 R0 K8 ["_didUpload"]
       32 LOADB                            R1 0
       33 SETTABLEKS                       R1 R0 K9 ["_didCancel"]
       35 NEWTABLE                         R1 0 0
       37 SETTABLEKS                       R1 R0 K10 ["_statuses"]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K11 ["_importTree"]
       42 LOADB                            R1 0
       43 SETTABLEKS                       R1 R0 K12 ["_hasAnimation"]
       45 NEWTABLE                         R1 0 0
       47 SETTABLEKS                       R1 R0 K13 ["_results"]
       49 NEWTABLE                         R1 0 0
       51 SETTABLEKS                       R1 R0 K14 ["_uploadRequestStatusMap"]
       53 RETURN                           R0 1

PROTO_1:
        0 SETTABLEKS                       R1 R0 K0 ["_fileName"]
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_fileName"]
        2 RETURN                           R1 1

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["_isAvatar"]
        2 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_isAvatar"]
        2 RETURN                           R1 1

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["_isGltf"]
        2 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_isGltf"]
        2 RETURN                           R1 1

PROTO_7:
        0 SETTABLEKS                       R1 R0 K0 ["_hasAnimation"]
        2 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_hasAnimation"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_isR15"]
        2 RETURN                           R1 1

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_results"]
        2 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["_didUpload"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETTABLEKS                       R2 R0 K1 ["UploadComplete"]
        6 GETTABLEKS                       R4 R0 K2 ["_results"]
        8 NAMECALL                         R2 R2 K3 ["Fire"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_didCancel"]
        3 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_statuses"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 DUPTABLE                         R8 K2 [{"DebugMessage"}]
        6 SETTABLEKS                       R3 R8 K1 ["DebugMessage"]
        8 CALL                             R5 3 1
        9 SETTABLE                         R5 R4 R2
       10 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_statuses"]
        2 RETURN                           R1 1

PROTO_15:
        0 SETTABLEKS                       R1 R0 K0 ["_uploadRequestStatusMap"]
        2 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_uploadRequestStatusMap"]
        2 RETURN                           R1 1

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["_importTree"]
        2 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_importTree"]
        2 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R4 R1 K1 ["ClassName"]
        4 ORK                              R3 R4 K0 [""]
        5 NEWTABLE                         R4 0 0
        7 SETTABLE                         R4 R2 R3
        8 MOVE                             R4 R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLE                         R9 R2 R3
       13 SETTABLE                         R8 R9 R7
       14 FORGLOOP                         R4 2 ; [-3]
       16 RETURN                           R2 1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["UploadProgress"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["UploadComplete"]
        7 NAMECALL                         R1 R1 K1 ["Destroy"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K6 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Testing"]
       20 GETTABLEKS                       R4 R5 K9 ["Mocks"]
       22 GETTABLEKS                       R3 R4 K10 ["EventMock"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R7 K8 ["Testing"]
       31 GETTABLEKS                       R5 R6 K9 ["Mocks"]
       33 GETTABLEKS                       R4 R5 K11 ["MakeMockStatus"]
       35 CALL                             R3 1 1
       36 NEWTABLE                         R4 32 0
       38 SETTABLEKS                       R4 R4 K12 ["__index"]
       40 DUPCLOSURE                       R5 K13 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R4 K14 ["new"]
       45 DUPCLOSURE                       R5 K15 [PROTO_1]
       46 SETTABLEKS                       R5 R4 K16 ["SetFilename"]
       48 DUPCLOSURE                       R5 K17 [PROTO_2]
       49 SETTABLEKS                       R5 R4 K18 ["GetFilename"]
       51 DUPCLOSURE                       R5 K19 [PROTO_3]
       52 SETTABLEKS                       R5 R4 K20 ["SetIsAvatar"]
       54 DUPCLOSURE                       R5 K21 [PROTO_4]
       55 SETTABLEKS                       R5 R4 K22 ["IsAvatar"]
       57 DUPCLOSURE                       R5 K23 [PROTO_5]
       58 SETTABLEKS                       R5 R4 K24 ["SetIsGltf"]
       60 DUPCLOSURE                       R5 K25 [PROTO_6]
       61 SETTABLEKS                       R5 R4 K26 ["IsGltf"]
       63 DUPCLOSURE                       R5 K27 [PROTO_7]
       64 SETTABLEKS                       R5 R4 K28 ["SetHasAnimation"]
       66 DUPCLOSURE                       R5 K29 [PROTO_8]
       67 SETTABLEKS                       R5 R4 K30 ["HasAnimation"]
       69 DUPCLOSURE                       R5 K31 [PROTO_9]
       70 SETTABLEKS                       R5 R4 K32 ["IsR15"]
       72 DUPCLOSURE                       R5 K33 [PROTO_10]
       73 SETTABLEKS                       R5 R4 K34 ["SetResults"]
       75 DUPCLOSURE                       R5 K35 [PROTO_11]
       76 SETTABLEKS                       R5 R4 K36 ["Upload"]
       78 DUPCLOSURE                       R5 K37 [PROTO_12]
       79 SETTABLEKS                       R5 R4 K38 ["Cancel"]
       81 DUPCLOSURE                       R5 K39 [PROTO_13]
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R5 R4 K40 ["AddMockStatus"]
       85 DUPCLOSURE                       R5 K41 [PROTO_14]
       86 SETTABLEKS                       R5 R4 K42 ["GetStatuses"]
       88 DUPCLOSURE                       R5 K43 [PROTO_15]
       89 SETTABLEKS                       R5 R4 K44 ["SetUploadStatus"]
       91 DUPCLOSURE                       R5 K45 [PROTO_16]
       92 SETTABLEKS                       R5 R4 K46 ["GetUploadStatus"]
       94 DUPCLOSURE                       R5 K47 [PROTO_17]
       95 SETTABLEKS                       R5 R4 K48 ["SetImportTree"]
       97 DUPCLOSURE                       R5 K49 [PROTO_18]
       98 SETTABLEKS                       R5 R4 K50 ["GetImportTree"]
      100 DUPCLOSURE                       R5 K51 [PROTO_19]
      101 SETTABLEKS                       R5 R4 K52 ["CreatePresetFromData"]
      103 DUPCLOSURE                       R5 K53 [PROTO_20]
      104 SETTABLEKS                       R5 R4 K54 ["Reset"]
      106 DUPCLOSURE                       R5 K55 [PROTO_21]
      107 SETTABLEKS                       R5 R4 K56 ["ApplyPreset"]
      109 DUPCLOSURE                       R5 K57 [PROTO_22]
      110 SETTABLEKS                       R5 R4 K58 ["Destroy"]
      112 RETURN                           R4 1
