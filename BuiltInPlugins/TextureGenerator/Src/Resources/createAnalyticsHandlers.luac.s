PROTO_0:
        0 NEWTABLE                         R9 0 0
        2 MOVE                             R10 R1
        3 LOADNIL                          R11
        4 LOADNIL                          R12
        5 FORGPREP                         R10
        6 GETTABLEKS                       R17 R14 K0 ["MeshId"]
        8 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       10 MOVE                             R16 R9
       11 GETIMPORT                        R15 K3 [table.insert]
       13 CALL                             R15 2 0
       14 FORGLOOP                         R10 2 ; [-9]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K4 ["join"]
       19 DUPTABLE                         R11 K17 [{"studioSid", "clientId", "userId", "placeId", "meshIds", "prompt", "seed", "rotation", "smartUVUnwrap", "specifyFrontView", "timestampMilliseconds", "isStyleControl"}]
       20 GETUPVAL                         R12 1
       21 NAMECALL                         R12 R12 K18 ["GetSessionId"]
       23 CALL                             R12 1 1
       24 SETTABLEKS                       R12 R11 K5 ["studioSid"]
       26 GETUPVAL                         R12 1
       27 NAMECALL                         R12 R12 K19 ["GetClientId"]
       29 CALL                             R12 1 1
       30 SETTABLEKS                       R12 R11 K6 ["clientId"]
       32 GETUPVAL                         R12 2
       33 NAMECALL                         R12 R12 K20 ["GetUserId"]
       35 CALL                             R12 1 1
       36 SETTABLEKS                       R12 R11 K7 ["userId"]
       38 GETIMPORT                        R12 K22 [game]
       40 GETTABLEKS                       R12 R12 K23 ["PlaceId"]
       42 SETTABLEKS                       R12 R11 K8 ["placeId"]
       44 GETIMPORT                        R12 K25 [table.concat]
       46 MOVE                             R13 R9
       47 LOADK                            R14 K26 [","]
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K9 ["meshIds"]
       51 SETTABLEKS                       R2 R11 K10 ["prompt"]
       53 SETTABLEKS                       R3 R11 K11 ["seed"]
       55 SETTABLEKS                       R4 R11 K12 ["rotation"]
       57 SETTABLEKS                       R5 R11 K13 ["smartUVUnwrap"]
       59 SETTABLEKS                       R6 R11 K14 ["specifyFrontView"]
       61 GETIMPORT                        R12 K29 [DateTime.now]
       63 CALL                             R12 0 1
       64 GETTABLEKS                       R12 R12 K30 ["UnixTimestampMillis"]
       66 SETTABLEKS                       R12 R11 K15 ["timestampMilliseconds"]
       68 ORK                              R12 R8 K31 [False]
       69 SETTABLEKS                       R12 R11 K16 ["isStyleControl"]
       71 MOVE                             R12 R7
       72 CALL                             R10 2 1
       73 GETUPVAL                         R11 1
       74 LOADK                            R13 K32 ["studio"]
       75 LOADK                            R14 K33 ["TextureGenerator"]
       76 MOVE                             R15 R0
       77 MOVE                             R16 R10
       78 NAMECALL                         R11 R11 K34 ["SendEventDeferred"]
       80 CALL                             R11 5 0
       81 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R9 0
        1 LOADK                            R10 K0 ["GeneratedPreview"]
        2 MOVE                             R11 R1
        3 MOVE                             R12 R2
        4 MOVE                             R13 R3
        5 MOVE                             R14 R4
        6 MOVE                             R15 R5
        7 MOVE                             R16 R6
        8 DUPTABLE                         R17 K2 [{"localId"}]
        9 SETTABLEKS                       R7 R17 K1 ["localId"]
       11 MOVE                             R18 R8
       12 CALL                             R9 9 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R9 0
        1 LOADK                            R10 K0 ["ReceivedPreview"]
        2 MOVE                             R11 R2
        3 MOVE                             R12 R3
        4 MOVE                             R13 R4
        5 MOVE                             R14 R5
        6 MOVE                             R15 R6
        7 MOVE                             R16 R7
        8 DUPTABLE                         R17 K3 [{"jobId", "localId"}]
        9 SETTABLEKS                       R1 R17 K1 ["jobId"]
       11 SETTABLEKS                       R8 R17 K2 ["localId"]
       13 CALL                             R9 8 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R9 0
        1 LOADK                            R10 K0 ["GeneratedTexture"]
        2 MOVE                             R11 R2
        3 MOVE                             R12 R3
        4 MOVE                             R13 R4
        5 MOVE                             R14 R5
        6 MOVE                             R15 R6
        7 MOVE                             R16 R7
        8 DUPTABLE                         R17 K3 [{"previewJobId", "localId"}]
        9 SETTABLEKS                       R1 R17 K1 ["previewJobId"]
       11 SETTABLEKS                       R8 R17 K2 ["localId"]
       13 CALL                             R9 8 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R10 0
        1 LOADK                            R11 K0 ["ReceivedTexture"]
        2 MOVE                             R12 R2
        3 MOVE                             R13 R3
        4 MOVE                             R14 R4
        5 MOVE                             R15 R5
        6 MOVE                             R16 R6
        7 MOVE                             R17 R7
        8 DUPTABLE                         R18 K4 [{"jobId", "colorMapId", "localId"}]
        9 SETTABLEKS                       R1 R18 K1 ["jobId"]
       11 SETTABLEKS                       R8 R18 K2 ["colorMapId"]
       13 SETTABLEKS                       R9 R18 K3 ["localId"]
       15 CALL                             R10 8 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R9 0
        1 LOADK                            R10 K0 ["CancelTextureGeneration"]
        2 MOVE                             R11 R2
        3 MOVE                             R12 R3
        4 MOVE                             R13 R4
        5 MOVE                             R14 R5
        6 MOVE                             R15 R6
        7 MOVE                             R16 R7
        8 DUPTABLE                         R17 K3 [{"jobId", "localId"}]
        9 SETTABLEKS                       R1 R17 K1 ["jobId"]
       11 SETTABLEKS                       R8 R17 K2 ["localId"]
       13 CALL                             R9 8 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R10 0
        1 LOADK                            R11 K0 ["ExportGeneratedTexture"]
        2 MOVE                             R12 R2
        3 MOVE                             R13 R3
        4 MOVE                             R14 R4
        5 MOVE                             R15 R5
        6 MOVE                             R16 R6
        7 MOVE                             R17 R7
        8 DUPTABLE                         R18 K4 [{"jobId", "colorMapId", "localId"}]
        9 SETTABLEKS                       R1 R18 K1 ["jobId"]
       11 SETTABLEKS                       R8 R18 K2 ["colorMapId"]
       13 SETTABLEKS                       R9 R18 K3 ["localId"]
       15 CALL                             R10 8 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R10 0
        1 LOADK                            R11 K0 ["RemoveGeneratedTexture"]
        2 MOVE                             R12 R2
        3 MOVE                             R13 R3
        4 MOVE                             R14 R4
        5 MOVE                             R15 R5
        6 MOVE                             R16 R6
        7 MOVE                             R17 R7
        8 DUPTABLE                         R18 K4 [{"jobId", "colorMapId", "localId"}]
        9 SETTABLEKS                       R1 R18 K1 ["jobId"]
       11 SETTABLEKS                       R8 R18 K2 ["colorMapId"]
       13 SETTABLEKS                       R9 R18 K3 ["localId"]
       15 CALL                             R10 8 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R12 0
        1 LOADK                            R13 K0 ["SendFeedback"]
        2 MOVE                             R14 R2
        3 MOVE                             R15 R3
        4 MOVE                             R16 R4
        5 MOVE                             R17 R5
        6 MOVE                             R18 R6
        7 MOVE                             R19 R7
        8 DUPTABLE                         R20 K6 [{"acceptance", "feedback", "jobId", "colorMapId", "localId"}]
        9 SETTABLEKS                       R10 R20 K1 ["acceptance"]
       11 SETTABLEKS                       R11 R20 K2 ["feedback"]
       13 SETTABLEKS                       R1 R20 K3 ["jobId"]
       15 SETTABLEKS                       R8 R20 K4 ["colorMapId"]
       17 SETTABLEKS                       R9 R20 K5 ["localId"]
       19 CALL                             R12 8 0
       20 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 DUPTABLE                         R2 K8 [{"GeneratedPreview", "ReceivedPreview", "GeneratedTexture", "ReceivedTexture", "CancelTextureGeneration", "ExportGeneratedTexture", "RemoveGeneratedTexture", "SendFeedback"}]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["GeneratedPreview"]
        9 NEWCLOSURE                       R3 P2
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["ReceivedPreview"]
       13 NEWCLOSURE                       R3 P3
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K2 ["GeneratedTexture"]
       17 NEWCLOSURE                       R3 P4
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R2 K3 ["ReceivedTexture"]
       21 NEWCLOSURE                       R3 P5
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K4 ["CancelTextureGeneration"]
       25 NEWCLOSURE                       R3 P6
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R2 K5 ["ExportGeneratedTexture"]
       29 NEWCLOSURE                       R3 P7
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R3 R2 K6 ["RemoveGeneratedTexture"]
       33 NEWCLOSURE                       R3 P8
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K7 ["SendFeedback"]
       37 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_9]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
