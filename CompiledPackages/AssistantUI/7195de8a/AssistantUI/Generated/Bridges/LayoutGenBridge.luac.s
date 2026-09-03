PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["createLayoutGenBridge_%*"]
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
       22 GETTABLEKS                       R5 R3 K8 ["generateTopDownMapAsync"]
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
       22 GETTABLEKS                       R5 R3 K8 ["generateLayoutAsync"]
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
       22 GETTABLEKS                       R5 R3 K8 ["executeAndStoreScriptAsync"]
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
       22 GETTABLEKS                       R5 R3 K8 ["cancelGenerationAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toHost"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 DUPTABLE                         R2 K5 [{"generateTopDownMapAsync", "generateLayoutAsync", "executeAndStoreScriptAsync", "cancelGenerationAsync", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["generateTopDownMapAsync"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["generateLayoutAsync"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["executeAndStoreScriptAsync"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K3 ["cancelGenerationAsync"]
       25 NEWCLOSURE                       R3 P4
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R3 R2 K4 ["toTarget"]
       30 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K1 ["generateTopDownMapAsync"]
        9 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       11 LOADK                            R10 K2 ["Invalid network key: generateTopDownMapAsync"]
       12 GETIMPORT                        R8 K4 [assert]
       14 CALL                             R8 2 0
       15 LOADK                            R7 K5 ["createLayoutGenBridge_generateTopDownMapAsync"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R5 R3 K6 ["OnHostInvokeAsync"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K7 ["generateLayoutAsync"]
       26 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       28 LOADK                            R11 K8 ["Invalid network key: generateLayoutAsync"]
       29 GETIMPORT                        R9 K4 [assert]
       31 CALL                             R9 2 0
       32 LOADK                            R8 K9 ["createLayoutGenBridge_generateLayoutAsync"]
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R6 R3 K6 ["OnHostInvokeAsync"]
       39 CALL                             R6 3 1
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K10 ["executeAndStoreScriptAsync"]
       43 FASTCALL2K                       ASSERT R11 K11 ; [+4]
       45 LOADK                            R12 K11 ["Invalid network key: executeAndStoreScriptAsync"]
       46 GETIMPORT                        R10 K4 [assert]
       48 CALL                             R10 2 0
       49 LOADK                            R9 K12 ["createLayoutGenBridge_executeAndStoreScriptAsync"]
       50 NEWCLOSURE                       R10 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R3 K6 ["OnHostInvokeAsync"]
       56 CALL                             R7 3 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K13 ["cancelGenerationAsync"]
       60 FASTCALL2K                       ASSERT R12 K14 ; [+4]
       62 LOADK                            R13 K14 ["Invalid network key: cancelGenerationAsync"]
       63 GETIMPORT                        R11 K4 [assert]
       65 CALL                             R11 2 0
       66 LOADK                            R10 K15 ["createLayoutGenBridge_cancelGenerationAsync"]
       67 NEWCLOSURE                       R11 P4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 NAMECALL                         R8 R3 K6 ["OnHostInvokeAsync"]
       73 CALL                             R8 3 1
       74 NEWCLOSURE                       R9 P5
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R1
       80 RETURN                           R9 1

PROTO_18:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toGuest"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toHost"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 DUPCLOSURE                       R4 K3 [PROTO_18]
        2 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        4 DUPCLOSURE                       R4 K4 [PROTO_19]
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
       11 GETTABLEKS                       R2 R2 K7 ["createLayoutGenBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["LayoutGenBridgeTypes"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K13 [{["generateTopDownMapAsync"] = "generateTopDownMapAsync", ["generateLayoutAsync"] = "generateLayoutAsync", ["executeAndStoreScriptAsync"] = "executeAndStoreScriptAsync", ["cancelGenerationAsync"] = "cancelGenerationAsync"}]
       17 DUPCLOSURE                       R3 K14 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 DUPCLOSURE                       R4 K15 [PROTO_1]
       20 DUPCLOSURE                       R5 K16 [PROTO_4]
       21 DUPCLOSURE                       R6 K17 [PROTO_5]
       22 DUPCLOSURE                       R7 K18 [PROTO_17]
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R8 K19 [PROTO_22]
       25 CAPTURE                          VAL R7
       26 DUPTABLE                         R9 K21 [{"prepareBridges"}]
       27 SETTABLEKS                       R8 R9 K20 ["prepareBridges"]
       29 RETURN                           R9 1
