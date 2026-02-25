PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 SETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 GETUPVAL                         R5 4
        8 GETTABLEKS                       R4 R5 K1 ["Provider"]
       10 DUPTABLE                         R5 K4 [{"threadId", "setThreadId"}]
       11 SETTABLEKS                       R1 R5 K2 ["threadId"]
       13 SETTABLEKS                       R2 R5 K3 ["setThreadId"]
       15 GETTABLEKS                       R6 R0 K5 ["children"]
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R0 K0 ["mock-thread-id"]
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 MOVE                             R3 R2
        9 DUPTABLE                         R4 K3 [{"getThreadId", "setThreadId"}]
       10 NEWCLOSURE                       R5 P1
       11 CAPTURE                          REF R0
       12 SETTABLEKS                       R5 R4 K1 ["getThreadId"]
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          REF R0
       16 CAPTURE                          REF R1
       17 SETTABLEKS                       R5 R4 K2 ["setThreadId"]
       19 CLOSEUPVALS                      R0
       20 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ThreadIdContext"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K11 ["createElement"]
       25 DUPCLOSURE                       R4 K12 [PROTO_3]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 RETURN                           R4 1
