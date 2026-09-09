PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 DUPTABLE                         R0 K4 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable"}]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R1 R0 K1 ["disconnect"]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K5 ["new"]
       11 LOADN                            R2 0
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K2 ["connectionCountObservable"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K5 ["new"]
       18 NEWTABLE                         R2 0 0
       20 CALL                             R1 1 1
       21 SETTABLEKS                       R1 R0 K3 ["activeConnectionsObservable"]
       23 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useExternalServer"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R1 R2 K1 ["current"]
        7 GETTABLEKS                       R2 R0 K2 ["children"]
        9 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Provider"]
        4 DUPTABLE                         R3 K2 [{"onConnect"}]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["onConnect"]
        8 DUPTABLE                         R4 K4 [{"ContextCapture"}]
        9 GETUPVAL                         R5 0
       10 GETUPVAL                         R6 3
       11 NEWTABLE                         R7 0 0
       13 GETTABLEKS                       R8 R0 K5 ["children"]
       15 CALL                             R5 3 1
       16 SETTABLEKS                       R5 R4 K3 ["ContextCapture"]
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["connected"] ; [+9]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKS                    R0 K1 ["disconnected"] ; [+6]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["start"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 JUMPIFNOTEQKS                    R0 K1 ["disconnected"] ; [+8]
       14 GETUPVAL                         R0 1
       15 JUMPIFEQKS                       R0 K1 ["disconnected"] ; [+5]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K3 ["stop"]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K1 ["Context not captured yet - ensure component is mounted"]
        7 GETIMPORT                        R2 K3 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R2 R1 K4 ["state"]
       12 GETUPVAL                         R3 1
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CALL                             R3 1 0
       18 GETIMPORT                        R3 K7 [task.wait]
       20 CALL                             R3 0 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["Context not captured yet - ensure component is mounted"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["state"]
       12 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["Context not captured yet - ensure component is mounted"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["connectionCountObservable"]
       12 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["Context not captured yet - ensure component is mounted"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["activeConnectionsObservable"]
       12 RETURN                           R1 1

PROTO_11:
        0 LOADN                            R0 0
        1 LOADN                            R1 0
        2 DUPTABLE                         R2 K2 [{[1] = }]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U0
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R2
       10 NEWCLOSURE                       R5 P2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 MOVE                             R6 R5
       16 DUPTABLE                         R7 K9 [{"setState", "getState", "getStartCallCount", "getStopCallCount", "getConnectionCountObservable", "getActiveConnectionsObservable"}]
       17 NEWCLOSURE                       R8 P3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R8 R7 K3 ["setState"]
       22 NEWCLOSURE                       R8 P4
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R8 R7 K4 ["getState"]
       26 NEWCLOSURE                       R8 P5
       27 CAPTURE                          REF R0
       28 SETTABLEKS                       R8 R7 K5 ["getStartCallCount"]
       30 NEWCLOSURE                       R8 P6
       31 CAPTURE                          REF R1
       32 SETTABLEKS                       R8 R7 K6 ["getStopCallCount"]
       34 NEWCLOSURE                       R8 P7
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R8 R7 K7 ["getConnectionCountObservable"]
       38 NEWCLOSURE                       R8 P8
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R8 R7 K8 ["getActiveConnectionsObservable"]
       42 CLOSEUPVALS                      R0
       43 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ExternalServerContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["Util"]
       32 GETTABLEKS                       R4 R4 K13 ["Observable"]
       34 LOADK                            R7 K14 ["Packages"]
       35 NAMECALL                         R5 R0 K3 ["FindFirstAncestor"]
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R5 R5 K15 ["Dev"]
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R5 K16 ["ReactTestingLibrary"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R6 K17 ["act"]
       47 GETTABLEKS                       R8 R3 K18 ["createElement"]
       49 DUPCLOSURE                       R9 K19 [PROTO_11]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 RETURN                           R9 1
