PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["MeshGenTool_%*"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K4 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R4 K3 [{"toolArgs", "handlerArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["toolArgs"]
        3 GETTABLEKS                       R5 R1 K1 ["handlerArgs"]
        5 SETTABLEKS                       R5 R4 K1 ["handlerArgs"]
        7 GETTABLEKS                       R5 R2 K4 ["toHost"]
        9 MOVE                             R6 R3
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K2 ["bridge"]
       14 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["toolArgs"]
       13 GETTABLEKS                       R6 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R6 R3 K4 ["handlerArgs"]
       17 GETTABLEKS                       R6 R5 K7 ["toHost"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R3 K5 ["bridge"]
       24 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toHost"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["updateContentHeader"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toHost"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["setPreviewStateAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toHost"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["setPreviewImage"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 DUPTABLE                         R2 K3 [{"updateContentHeader", "setPreviewStateAsync", "setPreviewImage"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["updateContentHeader"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["setPreviewStateAsync"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["setPreviewImage"]
       19 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K1 ["updateContentHeader"]
        9 GETUPVAL                         R11 0
       10 GETTABLE                         R10 R11 R8
       11 LOADK                            R12 K2 ["Invalid network key: "]
       12 MOVE                             R13 R8
       13 CONCAT                           R11 R12 R13
       14 FASTCALL2                        ASSERT R10 R11 ; [+3]
       16 GETIMPORT                        R9 K4 [assert]
       18 CALL                             R9 2 0
       19 LOADK                            R9 K5 ["MeshGenTool_%*"]
       20 MOVE                             R11 R8
       21 NAMECALL                         R9 R9 K6 ["format"]
       23 CALL                             R9 2 1
       24 MOVE                             R7 R9
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R5 R3 K7 ["OnGuestEvent"]
       31 CALL                             R5 3 1
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K8 ["setPreviewState"]
       35 GETUPVAL                         R12 0
       36 GETTABLE                         R11 R12 R9
       37 LOADK                            R13 K2 ["Invalid network key: "]
       38 MOVE                             R14 R9
       39 CONCAT                           R12 R13 R14
       40 FASTCALL2                        ASSERT R11 R12 ; [+3]
       42 GETIMPORT                        R10 K4 [assert]
       44 CALL                             R10 2 0
       45 LOADK                            R10 K5 ["MeshGenTool_%*"]
       46 MOVE                             R12 R9
       47 NAMECALL                         R10 R10 K6 ["format"]
       49 CALL                             R10 2 1
       50 MOVE                             R8 R10
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NAMECALL                         R6 R3 K9 ["OnGuestInvokeAsync"]
       57 CALL                             R6 3 1
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K10 ["setPreviewImage"]
       61 GETUPVAL                         R13 0
       62 GETTABLE                         R12 R13 R10
       63 LOADK                            R14 K2 ["Invalid network key: "]
       64 MOVE                             R15 R10
       65 CONCAT                           R13 R14 R15
       66 FASTCALL2                        ASSERT R12 R13 ; [+3]
       68 GETIMPORT                        R11 K4 [assert]
       70 CALL                             R11 2 0
       71 LOADK                            R11 K5 ["MeshGenTool_%*"]
       72 MOVE                             R13 R10
       73 NAMECALL                         R11 R11 K6 ["format"]
       75 CALL                             R11 2 1
       76 MOVE                             R9 R11
       77 NEWCLOSURE                       R10 P3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 NAMECALL                         R7 R3 K7 ["OnGuestEvent"]
       83 CALL                             R7 3 1
       84 NEWCLOSURE                       R8 P4
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 RETURN                           R8 1

PROTO_11:
        0 DUPTABLE                         R4 K3 [{"toolArgs", "handlerArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["toolArgs"]
        3 GETTABLEKS                       R5 R1 K1 ["handlerArgs"]
        5 SETTABLEKS                       R5 R4 K1 ["handlerArgs"]
        7 GETTABLEKS                       R5 R2 K4 ["toGuest"]
        9 MOVE                             R6 R3
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K2 ["bridge"]
       14 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["toolArgs"]
       13 GETTABLEKS                       R6 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R6 R3 K4 ["handlerArgs"]
       17 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R3 K5 ["bridge"]
       24 RETURN                           R2 2

PROTO_13:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["generateAssetsAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_14:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["cancelGenerationAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["selectLinkedAssets"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_16:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["publishAssetsAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_17:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["removeSelectedBoundsAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_18:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["insertAssetsAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_19:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["toolArgs"]
       13 GETTABLEKS                       R7 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R7 R4 K4 ["handlerArgs"]
       17 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       19 MOVE                             R8 R0
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R4 K5 ["bridge"]
       24 GETTABLEKS                       R5 R3 K8 ["listenToLinkChanges"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"toolArgs", "handlerArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["toolArgs"]
       13 GETTABLEKS                       R6 R1 K4 ["handlerArgs"]
       15 SETTABLEKS                       R6 R3 K4 ["handlerArgs"]
       17 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R3 K5 ["bridge"]
       24 GETTABLEKS                       R4 R2 K8 ["getSelectedBoundingBox"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

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
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_29:
        0 DUPTABLE                         R2 K8 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "selectLinkedAssets", "listenToLinkChanges", "getSelectedBoundingBox"}]
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
       35 SETTABLEKS                       R3 R2 K5 ["selectLinkedAssets"]
       37 NEWCLOSURE                       R3 P6
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R3 R2 K6 ["listenToLinkChanges"]
       43 NEWCLOSURE                       R3 P7
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R3 R2 K7 ["getSelectedBoundingBox"]
       49 RETURN                           R2 1

PROTO_30:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K1 ["generateAssets"]
        9 GETUPVAL                         R11 0
       10 GETTABLE                         R10 R11 R8
       11 LOADK                            R12 K2 ["Invalid network key: "]
       12 MOVE                             R13 R8
       13 CONCAT                           R11 R12 R13
       14 FASTCALL2                        ASSERT R10 R11 ; [+3]
       16 GETIMPORT                        R9 K4 [assert]
       18 CALL                             R9 2 0
       19 LOADK                            R9 K5 ["MeshGenTool_%*"]
       20 MOVE                             R11 R8
       21 NAMECALL                         R9 R9 K6 ["format"]
       23 CALL                             R9 2 1
       24 MOVE                             R7 R9
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R5 R3 K7 ["OnHostInvokeAsync"]
       31 CALL                             R5 3 1
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R9 R10 K8 ["cancelGeneration"]
       35 GETUPVAL                         R12 0
       36 GETTABLE                         R11 R12 R9
       37 LOADK                            R13 K2 ["Invalid network key: "]
       38 MOVE                             R14 R9
       39 CONCAT                           R12 R13 R14
       40 FASTCALL2                        ASSERT R11 R12 ; [+3]
       42 GETIMPORT                        R10 K4 [assert]
       44 CALL                             R10 2 0
       45 LOADK                            R10 K5 ["MeshGenTool_%*"]
       46 MOVE                             R12 R9
       47 NAMECALL                         R10 R10 K6 ["format"]
       49 CALL                             R10 2 1
       50 MOVE                             R8 R10
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NAMECALL                         R6 R3 K7 ["OnHostInvokeAsync"]
       57 CALL                             R6 3 1
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K9 ["selectLinkedAssets"]
       61 GETUPVAL                         R13 0
       62 GETTABLE                         R12 R13 R10
       63 LOADK                            R14 K2 ["Invalid network key: "]
       64 MOVE                             R15 R10
       65 CONCAT                           R13 R14 R15
       66 FASTCALL2                        ASSERT R12 R13 ; [+3]
       68 GETIMPORT                        R11 K4 [assert]
       70 CALL                             R11 2 0
       71 LOADK                            R11 K5 ["MeshGenTool_%*"]
       72 MOVE                             R13 R10
       73 NAMECALL                         R11 R11 K6 ["format"]
       75 CALL                             R11 2 1
       76 MOVE                             R9 R11
       77 NEWCLOSURE                       R10 P3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 NAMECALL                         R7 R3 K10 ["OnHostEvent"]
       83 CALL                             R7 3 1
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R11 R12 K11 ["publishAssets"]
       87 GETUPVAL                         R14 0
       88 GETTABLE                         R13 R14 R11
       89 LOADK                            R15 K2 ["Invalid network key: "]
       90 MOVE                             R16 R11
       91 CONCAT                           R14 R15 R16
       92 FASTCALL2                        ASSERT R13 R14 ; [+3]
       94 GETIMPORT                        R12 K4 [assert]
       96 CALL                             R12 2 0
       97 LOADK                            R12 K5 ["MeshGenTool_%*"]
       98 MOVE                             R14 R11
       99 NAMECALL                         R12 R12 K6 ["format"]
      101 CALL                             R12 2 1
      102 MOVE                             R10 R12
      103 NEWCLOSURE                       R11 P4
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 NAMECALL                         R8 R3 K7 ["OnHostInvokeAsync"]
      109 CALL                             R8 3 1
      110 GETUPVAL                         R13 0
      111 GETTABLEKS                       R12 R13 K12 ["removeSelectedBounds"]
      113 GETUPVAL                         R15 0
      114 GETTABLE                         R14 R15 R12
      115 LOADK                            R16 K2 ["Invalid network key: "]
      116 MOVE                             R17 R12
      117 CONCAT                           R15 R16 R17
      118 FASTCALL2                        ASSERT R14 R15 ; [+3]
      120 GETIMPORT                        R13 K4 [assert]
      122 CALL                             R13 2 0
      123 LOADK                            R13 K5 ["MeshGenTool_%*"]
      124 MOVE                             R15 R12
      125 NAMECALL                         R13 R13 K6 ["format"]
      127 CALL                             R13 2 1
      128 MOVE                             R11 R13
      129 NEWCLOSURE                       R12 P5
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R1
      133 NAMECALL                         R9 R3 K7 ["OnHostInvokeAsync"]
      135 CALL                             R9 3 1
      136 GETUPVAL                         R14 0
      137 GETTABLEKS                       R13 R14 K13 ["insertAssets"]
      139 GETUPVAL                         R16 0
      140 GETTABLE                         R15 R16 R13
      141 LOADK                            R17 K2 ["Invalid network key: "]
      142 MOVE                             R18 R13
      143 CONCAT                           R16 R17 R18
      144 FASTCALL2                        ASSERT R15 R16 ; [+3]
      146 GETIMPORT                        R14 K4 [assert]
      148 CALL                             R14 2 0
      149 LOADK                            R14 K5 ["MeshGenTool_%*"]
      150 MOVE                             R16 R13
      151 NAMECALL                         R14 R14 K6 ["format"]
      153 CALL                             R14 2 1
      154 MOVE                             R12 R14
      155 NEWCLOSURE                       R13 P6
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R0
      158 CAPTURE                          VAL R1
      159 NAMECALL                         R10 R3 K7 ["OnHostInvokeAsync"]
      161 CALL                             R10 3 1
      162 GETUPVAL                         R15 0
      163 GETTABLEKS                       R14 R15 K14 ["listenToLinkChanges"]
      165 GETUPVAL                         R17 0
      166 GETTABLE                         R16 R17 R14
      167 LOADK                            R18 K2 ["Invalid network key: "]
      168 MOVE                             R19 R14
      169 CONCAT                           R17 R18 R19
      170 FASTCALL2                        ASSERT R16 R17 ; [+3]
      172 GETIMPORT                        R15 K4 [assert]
      174 CALL                             R15 2 0
      175 LOADK                            R15 K5 ["MeshGenTool_%*"]
      176 MOVE                             R17 R14
      177 NAMECALL                         R15 R15 K6 ["format"]
      179 CALL                             R15 2 1
      180 MOVE                             R13 R15
      181 NEWCLOSURE                       R14 P7
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R1
      185 NAMECALL                         R11 R3 K10 ["OnHostEvent"]
      187 CALL                             R11 3 1
      188 GETUPVAL                         R16 0
      189 GETTABLEKS                       R15 R16 K15 ["getSelectedBoundingBox"]
      191 GETUPVAL                         R18 0
      192 GETTABLE                         R17 R18 R15
      193 LOADK                            R19 K2 ["Invalid network key: "]
      194 MOVE                             R20 R15
      195 CONCAT                           R18 R19 R20
      196 FASTCALL2                        ASSERT R17 R18 ; [+3]
      198 GETIMPORT                        R16 K4 [assert]
      200 CALL                             R16 2 0
      201 LOADK                            R16 K5 ["MeshGenTool_%*"]
      202 MOVE                             R18 R15
      203 NAMECALL                         R16 R16 K6 ["format"]
      205 CALL                             R16 2 1
      206 MOVE                             R14 R16
      207 NEWCLOSURE                       R15 P8
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R0
      210 CAPTURE                          VAL R1
      211 NAMECALL                         R12 R3 K7 ["OnHostInvokeAsync"]
      213 CALL                             R12 3 1
      214 NEWCLOSURE                       R13 P9
      215 CAPTURE                          VAL R5
      216 CAPTURE                          VAL R6
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R12
      223 RETURN                           R13 1

PROTO_31:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["createUnimplemented"]
        4 LOADK                            R5 K0 ["toGuest"]
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["createUnimplemented"]
       11 LOADK                            R5 K1 ["toHost"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K1 ["toHost"]
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R0
       17 MOVE                             R6 R3
       18 MOVE                             R7 R1
       19 CALL                             R4 3 1
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R0
       22 MOVE                             R7 R3
       23 MOVE                             R8 R2
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R4 R3 K1 ["toHost"]
       27 SETTABLEKS                       R5 R3 K0 ["toGuest"]
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [script]
       16 LOADK                            R4 K8 ["MeshGen"]
       17 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R2 K9 ["MeshGenTool"]
       24 GETTABLEKS                       R4 R5 K10 ["MeshGenBridgeTypes"]
       26 CALL                             R3 1 1
       27 DUPTABLE                         R4 K22 [{"updateContentHeader", "setPreviewState", "setPreviewImage", "generateAssets", "cancelGeneration", "selectLinkedAssets", "publishAssets", "removeSelectedBounds", "insertAssets", "listenToLinkChanges", "getSelectedBoundingBox"}]
       28 LOADK                            R5 K11 ["updateContentHeader"]
       29 SETTABLEKS                       R5 R4 K11 ["updateContentHeader"]
       31 LOADK                            R5 K12 ["setPreviewState"]
       32 SETTABLEKS                       R5 R4 K12 ["setPreviewState"]
       34 LOADK                            R5 K13 ["setPreviewImage"]
       35 SETTABLEKS                       R5 R4 K13 ["setPreviewImage"]
       37 LOADK                            R5 K14 ["generateAssets"]
       38 SETTABLEKS                       R5 R4 K14 ["generateAssets"]
       40 LOADK                            R5 K15 ["cancelGeneration"]
       41 SETTABLEKS                       R5 R4 K15 ["cancelGeneration"]
       43 LOADK                            R5 K16 ["selectLinkedAssets"]
       44 SETTABLEKS                       R5 R4 K16 ["selectLinkedAssets"]
       46 LOADK                            R5 K17 ["publishAssets"]
       47 SETTABLEKS                       R5 R4 K17 ["publishAssets"]
       49 LOADK                            R5 K18 ["removeSelectedBounds"]
       50 SETTABLEKS                       R5 R4 K18 ["removeSelectedBounds"]
       52 LOADK                            R5 K19 ["insertAssets"]
       53 SETTABLEKS                       R5 R4 K19 ["insertAssets"]
       55 LOADK                            R5 K20 ["listenToLinkChanges"]
       56 SETTABLEKS                       R5 R4 K20 ["listenToLinkChanges"]
       58 LOADK                            R5 K21 ["getSelectedBoundingBox"]
       59 SETTABLEKS                       R5 R4 K21 ["getSelectedBoundingBox"]
       61 DUPCLOSURE                       R5 K23 [PROTO_0]
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R6 K24 [PROTO_1]
       64 DUPCLOSURE                       R7 K25 [PROTO_10]
       65 CAPTURE                          VAL R4
       66 DUPCLOSURE                       R8 K26 [PROTO_11]
       67 DUPCLOSURE                       R9 K27 [PROTO_30]
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R10 K28 [PROTO_31]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 DUPTABLE                         R11 K31 [{"prepareBridges", "createGuestContext"}]
       74 SETTABLEKS                       R10 R11 K29 ["prepareBridges"]
       76 SETTABLEKS                       R6 R11 K30 ["createGuestContext"]
       78 RETURN                           R11 1
