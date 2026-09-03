PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 2
        6 SETUPVAL                         R1 2
        7 SETUPVAL                         R2 3
        8 GETUPVAL                         R3 4
        9 GETUPVAL                         R4 5
       10 GETTABLEKS                       R4 R4 K2 ["Provider"]
       12 DUPTABLE                         R5 K4 [{"sessionId"}]
       13 SETTABLEKS                       R1 R5 K3 ["sessionId"]
       15 GETTABLEKS                       R6 R0 K5 ["children"]
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["lastSessionId is not initialized yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["lastSetSessionId is not initialized yet"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 MOVE                             R3 R2
       10 DUPTABLE                         R4 K2 [{"getSessionId", "setSessionId"}]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          REF R0
       13 SETTABLEKS                       R5 R4 K0 ["getSessionId"]
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          REF R1
       17 SETTABLEKS                       R5 R4 K1 ["setSessionId"]
       19 CLOSEUPVALS                      R0
       20 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Components"]
       24 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K14 ["SessionIdContext"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R2 K15 ["createElement"]
       31 DUPCLOSURE                       R5 K16 [PROTO_4]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
