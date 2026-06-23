PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R2 K3 ["ReadFileBridge_%*"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K4 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R4 K2 [{"bridgeArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["bridgeArgs"]
        3 GETTABLEKS                       R5 R2 K3 ["toHost"]
        5 MOVE                             R6 R3
        6 MOVE                             R7 R1
        7 CALL                             R5 2 1
        8 SETTABLEKS                       R5 R4 K1 ["bridge"]
       10 RETURN                           R4 1

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
        0 DUPTABLE                         R4 K2 [{"bridgeArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["bridgeArgs"]
        3 GETTABLEKS                       R5 R2 K3 ["toGuest"]
        5 MOVE                             R6 R3
        6 MOVE                             R7 R1
        7 CALL                             R5 2 1
        8 SETTABLEKS                       R5 R4 K1 ["bridge"]
       10 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K5 [{"bridgeArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["bridgeArgs"]
       13 GETTABLEKS                       R6 R5 K6 ["toGuest"]
       15 MOVE                             R7 R0
       16 MOVE                             R8 R1
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R3 K4 ["bridge"]
       20 RETURN                           R2 2

PROTO_7:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K5 [{"bridgeArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["bridgeArgs"]
       13 GETTABLEKS                       R7 R6 K6 ["toGuest"]
       15 MOVE                             R8 R0
       16 MOVE                             R9 R1
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R4 K4 ["bridge"]
       20 GETTABLEKS                       R5 R3 K7 ["openScriptAsync"]
       22 MOVE                             R6 R2
       23 MOVE                             R7 R4
       24 CALL                             R5 2 -1
       25 RETURN                           R5 -1

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
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K1 ["openScriptAsync"]
        9 GETUPVAL                         R11 0
       10 GETTABLE                         R10 R11 R8
       11 LOADK                            R12 K2 ["Invalid network key: "]
       12 MOVE                             R13 R8
       13 CONCAT                           R11 R12 R13
       14 FASTCALL2                        ASSERT R10 R11 ; [+3]
       16 GETIMPORT                        R9 K4 [assert]
       18 CALL                             R9 2 0
       19 LOADK                            R9 K5 ["ReadFileBridge_%*"]
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
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 RETURN                           R6 1

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
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 DUPCLOSURE                       R4 K3 [PROTO_12]
        2 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        4 DUPCLOSURE                       R4 K4 [PROTO_13]
        5 SETTABLEKS                       R4 R3 K1 ["toHost"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R0
        9 MOVE                             R6 R3
       10 MOVE                             R7 R1
       11 CALL                             R4 3 1
       12 NEWCLOSURE                       R5 P2
       13 CAPTURE                          VAL R3
       14 SETTABLEKS                       R4 R3 K1 ["toHost"]
       16 SETTABLEKS                       R5 R3 K0 ["toGuest"]
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ReadFileBridgeTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K7 [{"openScriptAsync"}]
       11 LOADK                            R2 K6 ["openScriptAsync"]
       12 SETTABLEKS                       R2 R1 K6 ["openScriptAsync"]
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R3 K9 [PROTO_1]
       17 DUPCLOSURE                       R4 K10 [PROTO_4]
       18 DUPCLOSURE                       R5 K11 [PROTO_5]
       19 DUPCLOSURE                       R6 K12 [PROTO_11]
       20 CAPTURE                          VAL R1
       21 DUPCLOSURE                       R7 K13 [PROTO_14]
       22 CAPTURE                          VAL R6
       23 DUPTABLE                         R8 K16 [{"prepareBridges", "createGuestContext"}]
       24 SETTABLEKS                       R7 R8 K14 ["prepareBridges"]
       26 SETTABLEKS                       R3 R8 K15 ["createGuestContext"]
       28 RETURN                           R8 1
