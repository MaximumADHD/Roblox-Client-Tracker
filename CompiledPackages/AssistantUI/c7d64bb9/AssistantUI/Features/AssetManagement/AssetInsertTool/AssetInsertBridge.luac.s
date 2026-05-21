PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["AssetInsertTool_%*"]
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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"updateContentHeader"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["updateContentHeader"]
        7 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K1 ["updateContentHeader"]
        9 GETUPVAL                         R11 0
       10 GETTABLE                         R10 R11 R8
       11 LOADK                            R12 K2 ["Invalid network key: "]
       12 MOVE                             R13 R8
       13 CONCAT                           R11 R12 R13
       14 FASTCALL2                        ASSERT R10 R11 ; [+3]
       16 GETIMPORT                        R9 K4 [assert]
       18 CALL                             R9 2 0
       19 LOADK                            R9 K5 ["AssetInsertTool_%*"]
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
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          VAL R5
       34 RETURN                           R6 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       24 GETTABLEKS                       R5 R3 K8 ["selectInsertedAssets"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_10:
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

PROTO_11:
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
       24 GETTABLEKS                       R5 R3 K8 ["insertAssetAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 DUPTABLE                         R2 K3 [{"selectInsertedAssets", "listenToLinkChanges", "insertAssetAsync"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["selectInsertedAssets"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["listenToLinkChanges"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["insertAssetAsync"]
       19 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K1 ["selectInsertedAssets"]
        9 GETUPVAL                         R11 0
       10 GETTABLE                         R10 R11 R8
       11 LOADK                            R12 K2 ["Invalid network key: "]
       12 MOVE                             R13 R8
       13 CONCAT                           R11 R12 R13
       14 FASTCALL2                        ASSERT R10 R11 ; [+3]
       16 GETIMPORT                        R9 K4 [assert]
       18 CALL                             R9 2 0
       19 LOADK                            R9 K5 ["AssetInsertTool_%*"]
       20 MOVE                             R11 R8
       21 NAMECALL                         R9 R9 K6 ["format"]
       23 CALL                             R9 2 1
       24 MOVE                             R7 R9
       25 NEWCLOSURE                       R8 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R5 R3 K7 ["OnHostEvent"]
       31 CALL                             R5 3 1
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K8 ["listenToLinkChanges"]
       35 GETUPVAL                         R12 0
       36 GETTABLE                         R11 R12 R9
       37 LOADK                            R13 K2 ["Invalid network key: "]
       38 MOVE                             R14 R9
       39 CONCAT                           R12 R13 R14
       40 FASTCALL2                        ASSERT R11 R12 ; [+3]
       42 GETIMPORT                        R10 K4 [assert]
       44 CALL                             R10 2 0
       45 LOADK                            R10 K5 ["AssetInsertTool_%*"]
       46 MOVE                             R12 R9
       47 NAMECALL                         R10 R10 K6 ["format"]
       49 CALL                             R10 2 1
       50 MOVE                             R8 R10
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NAMECALL                         R6 R3 K7 ["OnHostEvent"]
       57 CALL                             R6 3 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K9 ["insertAssetAsync"]
       61 GETUPVAL                         R13 0
       62 GETTABLE                         R12 R13 R10
       63 LOADK                            R14 K2 ["Invalid network key: "]
       64 MOVE                             R15 R10
       65 CONCAT                           R13 R14 R15
       66 FASTCALL2                        ASSERT R12 R13 ; [+3]
       68 GETIMPORT                        R11 K4 [assert]
       70 CALL                             R11 2 0
       71 LOADK                            R11 K5 ["AssetInsertTool_%*"]
       72 MOVE                             R13 R10
       73 NAMECALL                         R11 R11 K6 ["format"]
       75 CALL                             R11 2 1
       76 MOVE                             R9 R11
       77 NEWCLOSURE                       R10 P3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R1
       81 NAMECALL                         R7 R3 K10 ["OnHostInvokeAsync"]
       83 CALL                             R7 3 1
       84 NEWCLOSURE                       R8 P4
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 RETURN                           R8 1

PROTO_17:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K3 ["createUnimplemented"]
        4 LOADK                            R5 K0 ["toGuest"]
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createUnimplemented"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R2 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["AssetInsertBridgeTypes"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K14 [{"updateContentHeader", "selectInsertedAssets", "listenToLinkChanges", "insertAssetAsync"}]
       24 LOADK                            R4 K10 ["updateContentHeader"]
       25 SETTABLEKS                       R4 R3 K10 ["updateContentHeader"]
       27 LOADK                            R4 K11 ["selectInsertedAssets"]
       28 SETTABLEKS                       R4 R3 K11 ["selectInsertedAssets"]
       30 LOADK                            R4 K12 ["listenToLinkChanges"]
       31 SETTABLEKS                       R4 R3 K12 ["listenToLinkChanges"]
       33 LOADK                            R4 K13 ["insertAssetAsync"]
       34 SETTABLEKS                       R4 R3 K13 ["insertAssetAsync"]
       36 DUPCLOSURE                       R4 K15 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R5 K16 [PROTO_1]
       39 DUPCLOSURE                       R6 K17 [PROTO_6]
       40 CAPTURE                          VAL R3
       41 DUPCLOSURE                       R7 K18 [PROTO_7]
       42 DUPCLOSURE                       R8 K19 [PROTO_16]
       43 CAPTURE                          VAL R3
       44 DUPCLOSURE                       R9 K20 [PROTO_17]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R6
       48 DUPTABLE                         R10 K23 [{"prepareBridges", "createGuestContext"}]
       49 SETTABLEKS                       R9 R10 K21 ["prepareBridges"]
       51 SETTABLEKS                       R5 R10 K22 ["createGuestContext"]
       53 RETURN                           R10 1
