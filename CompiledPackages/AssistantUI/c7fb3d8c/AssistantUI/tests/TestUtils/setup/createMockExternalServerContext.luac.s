PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 DUPTABLE                         R0 K2 [{"disconnect"}]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R1 R0 K1 ["disconnect"]
        8 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useExternalServer"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R1 R2 K1 ["current"]
        7 GETTABLEKS                       R2 R0 K2 ["children"]
        9 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Provider"]
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
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K2 ["start"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 JUMPIFNOTEQKS                    R0 K1 ["disconnected"] ; [+8]
       14 GETUPVAL                         R0 1
       15 JUMPIFEQKS                       R0 K1 ["disconnected"] ; [+5]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R0 R1 K3 ["stop"]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 LOADN                            R0 0
        1 LOADN                            R1 0
        2 DUPTABLE                         R2 K1 [{"current"}]
        3 LOADNIL                          R3
        4 SETTABLEKS                       R3 R2 K0 ["current"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          REF R0
        8 CAPTURE                          REF R1
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R2
       12 NEWCLOSURE                       R5 P2
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R4
       17 MOVE                             R6 R5
       18 DUPTABLE                         R7 K6 [{"setState", "getState", "getStartCallCount", "getStopCallCount"}]
       19 NEWCLOSURE                       R8 P3
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R8 R7 K2 ["setState"]
       24 NEWCLOSURE                       R8 P4
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R8 R7 K3 ["getState"]
       28 NEWCLOSURE                       R8 P5
       29 CAPTURE                          REF R0
       30 SETTABLEKS                       R8 R7 K4 ["getStartCallCount"]
       32 NEWCLOSURE                       R8 P6
       33 CAPTURE                          REF R1
       34 SETTABLEKS                       R8 R7 K5 ["getStopCallCount"]
       36 CLOSEUPVALS                      R0
       37 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ExternalServerContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 LOADK                            R6 K11 ["Packages"]
       24 NAMECALL                         R4 R0 K3 ["FindFirstAncestor"]
       26 CALL                             R4 2 1
       27 GETTABLEKS                       R3 R4 K12 ["Dev"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R3 K13 ["ReactTestingLibrary"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["act"]
       36 GETTABLEKS                       R6 R2 K15 ["createElement"]
       38 DUPCLOSURE                       R7 K16 [PROTO_9]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R5
       42 RETURN                           R7 1
