PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["start"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Transport must be started before closing"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["close"]
       10 CALL                             R0 0 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Transport must be started before sending a request"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["sendRequest"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Transport must be started before sending a notification"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["sendNotification"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Transport must be started before sending a response"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["sendResponse"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"onTransportMessage"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["new"]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K0 ["onTransportMessage"]
        7 LOADB                            R2 0
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          REF R2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R3 R1 K3 ["start"]
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          REF R2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R3 R1 K4 ["close"]
       18 NEWCLOSURE                       R3 P2
       19 CAPTURE                          REF R2
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R3 R1 K5 ["sendRequest"]
       23 NEWCLOSURE                       R3 P3
       24 CAPTURE                          REF R2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R3 R1 K6 ["sendNotification"]
       28 NEWCLOSURE                       R3 P4
       29 CAPTURE                          REF R2
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R3 R1 K7 ["sendResponse"]
       33 CLOSEUPVALS                      R2
       34 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AgentClientProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K9 [PROTO_5]
       24 CAPTURE                          VAL R1
       25 DUPTABLE                         R4 K11 [{"makeTransport"}]
       26 SETTABLEKS                       R3 R4 K10 ["makeTransport"]
       28 RETURN                           R4 1
