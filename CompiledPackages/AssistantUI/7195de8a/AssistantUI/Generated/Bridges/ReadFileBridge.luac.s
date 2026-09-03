PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["createReadFileBridge_%*"]
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
       22 GETTABLEKS                       R5 R3 K8 ["openScriptAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toHost"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 DUPTABLE                         R2 K2 [{"openScriptAsync", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["openScriptAsync"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K1 ["toTarget"]
       12 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["networking"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K1 ["openScriptAsync"]
        9 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       11 LOADK                            R10 K2 ["Invalid network key: openScriptAsync"]
       12 GETIMPORT                        R8 K4 [assert]
       14 CALL                             R8 2 0
       15 LOADK                            R7 K5 ["createReadFileBridge_openScriptAsync"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R5 R3 K6 ["OnHostInvokeAsync"]
       22 CALL                             R5 3 1
       23 NEWCLOSURE                       R6 P2
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R1
       26 RETURN                           R6 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toGuest"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toHost"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 DUPCLOSURE                       R4 K3 [PROTO_12]
        2 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        4 DUPCLOSURE                       R4 K4 [PROTO_13]
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
       11 GETTABLEKS                       R2 R2 K7 ["createReadFileBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["ReadFileBridgeTypes"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K10 [{["openScriptAsync"] = "openScriptAsync"}]
       17 DUPCLOSURE                       R3 K11 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 DUPCLOSURE                       R4 K12 [PROTO_1]
       20 DUPCLOSURE                       R5 K13 [PROTO_4]
       21 DUPCLOSURE                       R6 K14 [PROTO_5]
       22 DUPCLOSURE                       R7 K15 [PROTO_11]
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R8 K16 [PROTO_16]
       25 CAPTURE                          VAL R7
       26 DUPTABLE                         R9 K18 [{"prepareBridges"}]
       27 SETTABLEKS                       R8 R9 K17 ["prepareBridges"]
       29 RETURN                           R9 1
