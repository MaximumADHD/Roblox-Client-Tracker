PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["new"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K6 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable", "authRejectedObservable"}]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R2 R1 K2 ["disconnect"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K1 ["new"]
       16 LOADN                            R3 0
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K3 ["connectionCountObservable"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K1 ["new"]
       23 NEWTABLE                         R3 0 0
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K4 ["activeConnectionsObservable"]
       28 SETTABLEKS                       R0 R1 K5 ["authRejectedObservable"]
       30 RETURN                           R1 1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K1 ["Context not captured yet - ensure component is mounted"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K4 ["authRejectedObservable"]
       12 RETURN                           R1 1

PROTO_12:
        0 LOADN                            R0 0
        1 LOADN                            R1 0
        2 DUPTABLE                         R2 K2 [{[1] = }]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          REF R1
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R2
       10 NEWCLOSURE                       R5 P2
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 MOVE                             R6 R5
       16 DUPTABLE                         R7 K10 [{"setState", "getState", "getStartCallCount", "getStopCallCount", "getConnectionCountObservable", "getActiveConnectionsObservable", "getAuthRejectedObservable"}]
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
       42 NEWCLOSURE                       R8 P9
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R8 R7 K9 ["getAuthRejectedObservable"]
       46 CLOSEUPVALS                      R0
       47 RETURN                           R6 2

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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Types"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K13 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["Observable"]
       39 LOADK                            R8 K15 ["Packages"]
       40 NAMECALL                         R6 R0 K3 ["FindFirstAncestor"]
       42 CALL                             R6 2 1
       43 GETTABLEKS                       R6 R6 K16 ["Dev"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R6 K17 ["ReactTestingLibrary"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R7 K18 ["act"]
       52 GETTABLEKS                       R9 R3 K19 ["createElement"]
       54 DUPCLOSURE                       R10 K20 [PROTO_12]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R8
       59 RETURN                           R10 1
