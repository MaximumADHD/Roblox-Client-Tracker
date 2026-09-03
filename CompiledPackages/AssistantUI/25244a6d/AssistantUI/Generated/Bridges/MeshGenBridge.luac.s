PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["createMeshGenBridge_%*"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K4 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R4 K3 [{"initArgs", "callArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["initArgs"]
        3 SETTABLEKS                       R3 R4 K1 ["callArgs"]
        5 GETTABLEKS                       R5 R1 K4 ["toHost"]
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K2 ["bridge"]
       12 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toGuest"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 SETTABLEKS                       R3 R2 K0 ["toTarget"]
        6 RETURN                           R2 1

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R4 K3 [{"initArgs", "callArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["initArgs"]
        3 SETTABLEKS                       R3 R4 K1 ["callArgs"]
        5 GETTABLEKS                       R5 R1 K4 ["toGuest"]
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K2 ["bridge"]
       12 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R3 K4 ["callArgs"]
       15 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K5 ["bridge"]
       22 RETURN                           R2 2

PROTO_7:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["generateAssetsAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["cancelGenerationAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_9:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["publishAssetsAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["removeSelectedBoundsAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_11:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["insertAssetsAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_12:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R3 K4 ["callArgs"]
       15 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K5 ["bridge"]
       22 GETTABLEKS                       R4 R2 K8 ["getSelectedBoundingBox"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R3 K4 ["callArgs"]
       15 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K5 ["bridge"]
       22 GETTABLEKS                       R4 R2 K8 ["createViewportBoundingBoxAsync"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1

PROTO_14:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["destroyViewportBoundingBoxAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["capturePreviewImagesAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_16:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["isGenerationCachedAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toHost"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_28:
        0 DUPTABLE                         R2 K11 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "getSelectedBoundingBox", "createViewportBoundingBoxAsync", "destroyViewportBoundingBoxAsync", "capturePreviewImagesAsync", "isGenerationCachedAsync", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["generateAssetsAsync"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["cancelGenerationAsync"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["publishAssetsAsync"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K3 ["removeSelectedBoundsAsync"]
       25 NEWCLOSURE                       R3 P4
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R3 R2 K4 ["insertAssetsAsync"]
       31 NEWCLOSURE                       R3 P5
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K5 ["getSelectedBoundingBox"]
       37 NEWCLOSURE                       R3 P6
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R3 R2 K6 ["createViewportBoundingBoxAsync"]
       43 NEWCLOSURE                       R3 P7
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R3 R2 K7 ["destroyViewportBoundingBoxAsync"]
       49 NEWCLOSURE                       R3 P8
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R3 R2 K8 ["capturePreviewImagesAsync"]
       55 NEWCLOSURE                       R3 P9
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R3 R2 K9 ["isGenerationCachedAsync"]
       61 NEWCLOSURE                       R3 P10
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R3 R2 K10 ["toTarget"]
       66 RETURN                           R2 1

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K1 ["generateAssetsAsync"]
        9 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       11 LOADK                            R10 K2 ["Invalid network key: generateAssetsAsync"]
       12 GETIMPORT                        R8 K4 [assert]
       14 CALL                             R8 2 0
       15 LOADK                            R7 K5 ["createMeshGenBridge_generateAssetsAsync"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R5 R3 K6 ["OnHostInvokeAsync"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K7 ["cancelGenerationAsync"]
       26 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       28 LOADK                            R11 K8 ["Invalid network key: cancelGenerationAsync"]
       29 GETIMPORT                        R9 K4 [assert]
       31 CALL                             R9 2 0
       32 LOADK                            R8 K9 ["createMeshGenBridge_cancelGenerationAsync"]
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R6 R3 K6 ["OnHostInvokeAsync"]
       39 CALL                             R6 3 1
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K10 ["publishAssetsAsync"]
       43 FASTCALL2K                       ASSERT R11 K11 ; [+4]
       45 LOADK                            R12 K11 ["Invalid network key: publishAssetsAsync"]
       46 GETIMPORT                        R10 K4 [assert]
       48 CALL                             R10 2 0
       49 LOADK                            R9 K12 ["createMeshGenBridge_publishAssetsAsync"]
       50 NEWCLOSURE                       R10 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R3 K6 ["OnHostInvokeAsync"]
       56 CALL                             R7 3 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K13 ["removeSelectedBoundsAsync"]
       60 FASTCALL2K                       ASSERT R12 K14 ; [+4]
       62 LOADK                            R13 K14 ["Invalid network key: removeSelectedBoundsAsync"]
       63 GETIMPORT                        R11 K4 [assert]
       65 CALL                             R11 2 0
       66 LOADK                            R10 K15 ["createMeshGenBridge_removeSelectedBoundsAsync"]
       67 NEWCLOSURE                       R11 P4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 NAMECALL                         R8 R3 K6 ["OnHostInvokeAsync"]
       73 CALL                             R8 3 1
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K16 ["insertAssetsAsync"]
       77 FASTCALL2K                       ASSERT R13 K17 ; [+4]
       79 LOADK                            R14 K17 ["Invalid network key: insertAssetsAsync"]
       80 GETIMPORT                        R12 K4 [assert]
       82 CALL                             R12 2 0
       83 LOADK                            R11 K18 ["createMeshGenBridge_insertAssetsAsync"]
       84 NEWCLOSURE                       R12 P5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 NAMECALL                         R9 R3 K6 ["OnHostInvokeAsync"]
       90 CALL                             R9 3 1
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R14 R15 K19 ["getSelectedBoundingBox"]
       94 FASTCALL2K                       ASSERT R14 K20 ; [+4]
       96 LOADK                            R15 K20 ["Invalid network key: getSelectedBoundingBox"]
       97 GETIMPORT                        R13 K4 [assert]
       99 CALL                             R13 2 0
      100 LOADK                            R12 K21 ["createMeshGenBridge_getSelectedBoundingBox"]
      101 NEWCLOSURE                       R13 P6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R1
      105 NAMECALL                         R10 R3 K6 ["OnHostInvokeAsync"]
      107 CALL                             R10 3 1
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R15 R16 K22 ["createViewportBoundingBoxAsync"]
      111 FASTCALL2K                       ASSERT R15 K23 ; [+4]
      113 LOADK                            R16 K23 ["Invalid network key: createViewportBoundingBoxAsync"]
      114 GETIMPORT                        R14 K4 [assert]
      116 CALL                             R14 2 0
      117 LOADK                            R13 K24 ["createMeshGenBridge_createViewportBoundingBoxAsync"]
      118 NEWCLOSURE                       R14 P7
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R1
      122 NAMECALL                         R11 R3 K6 ["OnHostInvokeAsync"]
      124 CALL                             R11 3 1
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R16 R17 K25 ["destroyViewportBoundingBoxAsync"]
      128 FASTCALL2K                       ASSERT R16 K26 ; [+4]
      130 LOADK                            R17 K26 ["Invalid network key: destroyViewportBoundingBoxAsync"]
      131 GETIMPORT                        R15 K4 [assert]
      133 CALL                             R15 2 0
      134 LOADK                            R14 K27 ["createMeshGenBridge_destroyViewportBoundingBoxAsync"]
      135 NEWCLOSURE                       R15 P8
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R1
      139 NAMECALL                         R12 R3 K6 ["OnHostInvokeAsync"]
      141 CALL                             R12 3 1
      142 GETUPVAL                         R18 0
      143 GETTABLEKS                       R17 R18 K28 ["capturePreviewImagesAsync"]
      145 FASTCALL2K                       ASSERT R17 K29 ; [+4]
      147 LOADK                            R18 K29 ["Invalid network key: capturePreviewImagesAsync"]
      148 GETIMPORT                        R16 K4 [assert]
      150 CALL                             R16 2 0
      151 LOADK                            R15 K30 ["createMeshGenBridge_capturePreviewImagesAsync"]
      152 NEWCLOSURE                       R16 P9
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R1
      156 NAMECALL                         R13 R3 K6 ["OnHostInvokeAsync"]
      158 CALL                             R13 3 1
      159 GETUPVAL                         R19 0
      160 GETTABLEKS                       R18 R19 K31 ["isGenerationCachedAsync"]
      162 FASTCALL2K                       ASSERT R18 K32 ; [+4]
      164 LOADK                            R19 K32 ["Invalid network key: isGenerationCachedAsync"]
      165 GETIMPORT                        R17 K4 [assert]
      167 CALL                             R17 2 0
      168 LOADK                            R16 K33 ["createMeshGenBridge_isGenerationCachedAsync"]
      169 NEWCLOSURE                       R17 P10
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R1
      173 NAMECALL                         R14 R3 K6 ["OnHostInvokeAsync"]
      175 CALL                             R14 3 1
      176 NEWCLOSURE                       R15 P11
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R1
      188 RETURN                           R15 1

PROTO_30:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toGuest"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toHost"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R2 K3 [{"initArgs", "callArgs", "bridge"}]
        3 SETTABLEKS                       R3 R2 K0 ["initArgs"]
        5 SETTABLEKS                       R1 R2 K1 ["callArgs"]
        7 GETTABLEKS                       R5 R4 K4 ["toHost"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R2 K2 ["bridge"]
       14 RETURN                           R2 1

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R2 K3 [{"initArgs", "callArgs", "bridge"}]
        3 SETTABLEKS                       R3 R2 K0 ["initArgs"]
        5 SETTABLEKS                       R1 R2 K1 ["callArgs"]
        7 GETTABLEKS                       R5 R4 K4 ["toGuest"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R2 K2 ["bridge"]
       14 RETURN                           R2 1

PROTO_34:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 DUPCLOSURE                       R4 K3 [PROTO_30]
        2 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        4 DUPCLOSURE                       R4 K4 [PROTO_31]
        5 SETTABLEKS                       R4 R3 K1 ["toHost"]
        7 NEWCLOSURE                       R4 P2
        8 CAPTURE                          VAL R3
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R0
       11 MOVE                             R7 R3
       12 MOVE                             R8 R2
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R4 R3 K0 ["toGuest"]
       16 SETTABLEKS                       R5 R3 K1 ["toHost"]
       18 DUPTABLE                         R6 K7 [{"createGuestContext", "createHostContext"}]
       19 NEWCLOSURE                       R7 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R7 R6 K5 ["createGuestContext"]
       24 NEWCLOSURE                       R7 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 SETTABLEKS                       R7 R6 K6 ["createHostContext"]
       29 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["createMeshGenBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["MeshGenBridgeTypes"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K19 [{["generateAssetsAsync"] = "generateAssetsAsync", ["cancelGenerationAsync"] = "cancelGenerationAsync", ["publishAssetsAsync"] = "publishAssetsAsync", ["removeSelectedBoundsAsync"] = "removeSelectedBoundsAsync", ["insertAssetsAsync"] = "insertAssetsAsync", ["getSelectedBoundingBox"] = "getSelectedBoundingBox", ["createViewportBoundingBoxAsync"] = "createViewportBoundingBoxAsync", ["destroyViewportBoundingBoxAsync"] = "destroyViewportBoundingBoxAsync", ["capturePreviewImagesAsync"] = "capturePreviewImagesAsync", ["isGenerationCachedAsync"] = "isGenerationCachedAsync"}]
       17 DUPCLOSURE                       R3 K20 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 DUPCLOSURE                       R4 K21 [PROTO_1]
       20 DUPCLOSURE                       R5 K22 [PROTO_4]
       21 DUPCLOSURE                       R6 K23 [PROTO_5]
       22 DUPCLOSURE                       R7 K24 [PROTO_29]
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R8 K25 [PROTO_34]
       25 CAPTURE                          VAL R7
       26 DUPTABLE                         R9 K27 [{"prepareBridges"}]
       27 SETTABLEKS                       R8 R9 K26 ["prepareBridges"]
       29 RETURN                           R9 1
