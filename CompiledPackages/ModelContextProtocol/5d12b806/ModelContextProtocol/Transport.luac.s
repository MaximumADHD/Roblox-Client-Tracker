PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["start"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Transport must be started before sending a response!"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["sendResponse"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Transport must be started before sending a notification!"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["sendNotification"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Transport must be started before sending a request!"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["sendRequest"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Transport must be started before closing!"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["close"]
       10 CALL                             R0 0 -1
       11 RETURN                           R0 -1

PROTO_5:
        0 NEWTABLE                         R2 16 0
        2 SETTABLEKS                       R0 R2 K0 ["sessionId"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 CALL                             R3 0 1
        8 SETTABLEKS                       R3 R2 K2 ["onTransportClose"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["new"]
       13 CALL                             R3 0 1
       14 SETTABLEKS                       R3 R2 K3 ["onTransportError"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["new"]
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R2 K4 ["onTransportMessage"]
       22 LOADB                            R3 0
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          REF R3
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R4 R2 K5 ["start"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          REF R3
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R2 K6 ["sendResponse"]
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          REF R3
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R4 R2 K7 ["sendNotification"]
       38 NEWCLOSURE                       R4 P3
       39 CAPTURE                          REF R3
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R4 R2 K8 ["sendRequest"]
       43 NEWCLOSURE                       R4 P4
       44 CAPTURE                          REF R3
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R4 R2 K9 ["close"]
       48 CLOSEUPVALS                      R3
       49 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_5]
       20 CAPTURE                          VAL R1
       21 DUPTABLE                         R4 K11 [{"makeTransport"}]
       22 SETTABLEKS                       R3 R4 K10 ["makeTransport"]
       24 RETURN                           R4 1
