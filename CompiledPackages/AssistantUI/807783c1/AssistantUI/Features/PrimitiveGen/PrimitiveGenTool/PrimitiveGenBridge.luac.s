PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["PrimitiveGenTool_%*"]
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
       24 GETTABLEKS                       R5 R3 K8 ["setPreviewImage"]
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
       24 GETTABLEKS                       R5 R3 K8 ["reportGeneratedInstanceDeleted"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toGuest"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 DUPTABLE                         R2 K4 [{"updateContentHeader", "setPreviewImage", "reportGeneratedInstanceDeleted", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["updateContentHeader"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["setPreviewImage"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["reportGeneratedInstanceDeleted"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K3 ["toTarget"]
       24 RETURN                           R2 1

PROTO_11:
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
       19 LOADK                            R9 K5 ["PrimitiveGenTool_%*"]
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
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K8 ["setPreviewImage"]
       35 GETUPVAL                         R12 0
       36 GETTABLE                         R11 R12 R9
       37 LOADK                            R13 K2 ["Invalid network key: "]
       38 MOVE                             R14 R9
       39 CONCAT                           R12 R13 R14
       40 FASTCALL2                        ASSERT R11 R12 ; [+3]
       42 GETIMPORT                        R10 K4 [assert]
       44 CALL                             R10 2 0
       45 LOADK                            R10 K5 ["PrimitiveGenTool_%*"]
       46 MOVE                             R12 R9
       47 NAMECALL                         R10 R10 K6 ["format"]
       49 CALL                             R10 2 1
       50 MOVE                             R8 R10
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 NAMECALL                         R6 R3 K7 ["OnGuestEvent"]
       57 CALL                             R6 3 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K9 ["reportGeneratedInstanceDeleted"]
       61 GETUPVAL                         R13 0
       62 GETTABLE                         R12 R13 R10
       63 LOADK                            R14 K2 ["Invalid network key: "]
       64 MOVE                             R15 R10
       65 CONCAT                           R13 R14 R15
       66 FASTCALL2                        ASSERT R12 R13 ; [+3]
       68 GETIMPORT                        R11 K4 [assert]
       70 CALL                             R11 2 0
       71 LOADK                            R11 K5 ["PrimitiveGenTool_%*"]
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
       88 CAPTURE                          VAL R1
       89 RETURN                           R8 1

PROTO_12:
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

PROTO_13:
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
       24 GETTABLEKS                       R5 R3 K8 ["addWorkspaceModelAsync"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_15:
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
       24 GETTABLEKS                       R4 R2 K8 ["pingAssetDmAsync"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

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
       24 GETTABLEKS                       R5 R3 K8 ["selectModel"]
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
       24 GETTABLEKS                       R5 R3 K8 ["listenToLinkChanges"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 CALL                             R5 2 -1
       29 RETURN                           R5 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toHost"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_23:
        0 DUPTABLE                         R2 K5 [{"addWorkspaceModelAsync", "pingAssetDmAsync", "selectModel", "listenToLinkChanges", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["addWorkspaceModelAsync"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["pingAssetDmAsync"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["selectModel"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K3 ["listenToLinkChanges"]
       25 NEWCLOSURE                       R3 P4
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R3 R2 K4 ["toTarget"]
       30 RETURN                           R2 1

PROTO_24:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K1 ["addWorkspaceModelAsync"]
        9 GETUPVAL                         R11 0
       10 GETTABLE                         R10 R11 R8
       11 LOADK                            R12 K2 ["Invalid network key: "]
       12 MOVE                             R13 R8
       13 CONCAT                           R11 R12 R13
       14 FASTCALL2                        ASSERT R10 R11 ; [+3]
       16 GETIMPORT                        R9 K4 [assert]
       18 CALL                             R9 2 0
       19 LOADK                            R9 K5 ["PrimitiveGenTool_%*"]
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
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K8 ["pingAssetDmAsync"]
       35 GETUPVAL                         R12 0
       36 GETTABLE                         R11 R12 R9
       37 LOADK                            R13 K2 ["Invalid network key: "]
       38 MOVE                             R14 R9
       39 CONCAT                           R12 R13 R14
       40 FASTCALL2                        ASSERT R11 R12 ; [+3]
       42 GETIMPORT                        R10 K4 [assert]
       44 CALL                             R10 2 0
       45 LOADK                            R10 K5 ["PrimitiveGenTool_%*"]
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
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K9 ["selectModel"]
       61 GETUPVAL                         R13 0
       62 GETTABLE                         R12 R13 R10
       63 LOADK                            R14 K2 ["Invalid network key: "]
       64 MOVE                             R15 R10
       65 CONCAT                           R13 R14 R15
       66 FASTCALL2                        ASSERT R12 R13 ; [+3]
       68 GETIMPORT                        R11 K4 [assert]
       70 CALL                             R11 2 0
       71 LOADK                            R11 K5 ["PrimitiveGenTool_%*"]
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
       84 GETUPVAL                         R11 0
       85 GETTABLEKS                       R11 R11 K11 ["listenToLinkChanges"]
       87 GETUPVAL                         R14 0
       88 GETTABLE                         R13 R14 R11
       89 LOADK                            R15 K2 ["Invalid network key: "]
       90 MOVE                             R16 R11
       91 CONCAT                           R14 R15 R16
       92 FASTCALL2                        ASSERT R13 R14 ; [+3]
       94 GETIMPORT                        R12 K4 [assert]
       96 CALL                             R12 2 0
       97 LOADK                            R12 K5 ["PrimitiveGenTool_%*"]
       98 MOVE                             R14 R11
       99 NAMECALL                         R12 R12 K6 ["format"]
      101 CALL                             R12 2 1
      102 MOVE                             R10 R12
      103 NEWCLOSURE                       R11 P4
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 NAMECALL                         R8 R3 K10 ["OnHostEvent"]
      109 CALL                             R8 3 1
      110 NEWCLOSURE                       R9 P5
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R1
      116 RETURN                           R9 1

PROTO_25:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toGuest"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toHost"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 DUPCLOSURE                       R4 K3 [PROTO_25]
        2 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        4 DUPCLOSURE                       R4 K4 [PROTO_26]
        5 SETTABLEKS                       R4 R3 K1 ["toHost"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R0
        9 MOVE                             R6 R3
       10 MOVE                             R7 R1
       11 CALL                             R4 3 1
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R0
       14 MOVE                             R7 R3
       15 MOVE                             R8 R2
       16 CALL                             R5 3 1
       17 SETTABLEKS                       R4 R3 K1 ["toHost"]
       19 SETTABLEKS                       R5 R3 K0 ["toGuest"]
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["PrimitiveGenBridgeTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K13 [{"updateContentHeader", "setPreviewImage", "reportGeneratedInstanceDeleted", "addWorkspaceModelAsync", "pingAssetDmAsync", "selectModel", "listenToLinkChanges"}]
       11 LOADK                            R2 K6 ["updateContentHeader"]
       12 SETTABLEKS                       R2 R1 K6 ["updateContentHeader"]
       14 LOADK                            R2 K7 ["setPreviewImage"]
       15 SETTABLEKS                       R2 R1 K7 ["setPreviewImage"]
       17 LOADK                            R2 K8 ["reportGeneratedInstanceDeleted"]
       18 SETTABLEKS                       R2 R1 K8 ["reportGeneratedInstanceDeleted"]
       20 LOADK                            R2 K9 ["addWorkspaceModelAsync"]
       21 SETTABLEKS                       R2 R1 K9 ["addWorkspaceModelAsync"]
       23 LOADK                            R2 K10 ["pingAssetDmAsync"]
       24 SETTABLEKS                       R2 R1 K10 ["pingAssetDmAsync"]
       26 LOADK                            R2 K11 ["selectModel"]
       27 SETTABLEKS                       R2 R1 K11 ["selectModel"]
       29 LOADK                            R2 K12 ["listenToLinkChanges"]
       30 SETTABLEKS                       R2 R1 K12 ["listenToLinkChanges"]
       32 DUPCLOSURE                       R2 K14 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R3 K15 [PROTO_1]
       35 DUPCLOSURE                       R4 K16 [PROTO_11]
       36 CAPTURE                          VAL R1
       37 DUPCLOSURE                       R5 K17 [PROTO_12]
       38 DUPCLOSURE                       R6 K18 [PROTO_24]
       39 CAPTURE                          VAL R1
       40 DUPCLOSURE                       R7 K19 [PROTO_27]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R4
       43 DUPTABLE                         R8 K22 [{"prepareBridges", "createGuestContext"}]
       44 SETTABLEKS                       R7 R8 K20 ["prepareBridges"]
       46 SETTABLEKS                       R3 R8 K21 ["createGuestContext"]
       48 RETURN                           R8 1
