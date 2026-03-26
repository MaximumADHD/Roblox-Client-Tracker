PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["uid"]
        3 GETTABLE                         R2 R3 R4
        4 LOADK                            R6 K1 ["No request handler found for uid: "]
        5 GETTABLEKS                       R7 R1 K0 ["uid"]
        7 CONCAT                           R5 R6 R7
        8 FASTCALL2                        ASSERT R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 MOVE                             R3 R2
       15 MOVE                             R4 R1
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["uid"]
        3 GETTABLE                         R2 R3 R4
        4 LOADK                            R6 K1 ["No request handler found for uid: "]
        5 GETTABLEKS                       R7 R1 K0 ["uid"]
        7 CONCAT                           R5 R6 R7
        8 FASTCALL2                        ASSERT R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 MOVE                             R3 R2
       15 MOVE                             R4 R1
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K3 [{"uid", "success", "data"}]
        6 GETUPVAL                         R4 3
        7 SETTABLEKS                       R4 R3 K0 ["uid"]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K1 ["success"]
       12 SETTABLEKS                       R0 R3 K2 ["data"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 2
       18 DUPTABLE                         R3 K3 [{"uid", "success", "data"}]
       19 GETUPVAL                         R4 3
       20 SETTABLEKS                       R4 R3 K0 ["uid"]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K1 ["success"]
       25 SETTABLEKS                       R0 R3 K2 ["data"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U5
       12 CALL                             R3 1 2
       13 JUMPIF                           R3 ; [+15]
       14 DUPTABLE                         R5 K5 [{"uid", "success", "data"}]
       15 SETTABLEKS                       R1 R5 K2 ["uid"]
       17 LOADB                            R6 0
       18 SETTABLEKS                       R6 R5 K3 ["success"]
       20 FASTCALL1                        TOSTRING R4 ; [+3]
       21 MOVE                             R7 R4
       22 GETIMPORT                        R6 K7 [tostring]
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R6 R5 K4 ["data"]
       27 CLOSEUPVALS                      R2
       28 RETURN                           R5 1
       29 CLOSEUPVALS                      R2
       30 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIF                           R1 ; [+7]
        3 GETIMPORT                        R1 K2 [warn]
        5 LOADK                            R2 K3 ["Error in LLM request:"]
        6 GETTABLEKS                       R3 R0 K4 ["data"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K4 ["data"]
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K5 ["isTerminalEventType"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 3
       23 LOADNIL                          R4
       24 SETTABLE                         R4 R2 R3
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsGuest"]
        3 CALL                             R1 1 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["requestHandler should be used from the Guest DataModel"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 1
       11 ADDK                             R0 R0 K4 [1]
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R1 1
       14 FASTCALL1                        TOSTRING R1 ; [+2]
       15 GETIMPORT                        R0 K6 [tostring]
       17 CALL                             R0 1 1
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R0
       23 GETUPVAL                         R2 4
       24 SETTABLE                         R1 R2 R0
       25 GETUPVAL                         R2 5
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+8]
       28 GETUPVAL                         R4 7
       29 GETTABLEKS                       R3 R4 K7 ["Json"]
       31 GETTABLEKS                       R2 R3 K8 ["encode"]
       33 GETUPVAL                         R3 6
       34 CALL                             R2 1 1
       35 SETUPVAL                         R2 6
       36 GETUPVAL                         R2 8
       37 LOADNIL                          R3
       38 MOVE                             R4 R0
       39 GETUPVAL                         R5 6
       40 CALL                             R2 3 1
       41 JUMPIFNOT                        R2 ; [+24]
       42 GETTABLEKS                       R3 R2 K9 ["success"]
       44 JUMPIF                           R3 ; [+7]
       45 GETIMPORT                        R3 K11 [warn]
       47 LOADK                            R4 K12 ["Error in LLM request:"]
       48 GETTABLEKS                       R5 R2 K13 ["data"]
       50 CALL                             R3 2 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R3 R2 K13 ["data"]
       54 GETUPVAL                         R4 2
       55 MOVE                             R5 R3
       56 CALL                             R4 1 0
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R4 R5 K14 ["isTerminalEventType"]
       60 MOVE                             R5 R3
       61 CALL                             R4 1 1
       62 JUMPIFNOT                        R4 ; [+3]
       63 GETUPVAL                         R4 4
       64 LOADNIL                          R5
       65 SETTABLE                         R5 R4 R0
       66 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          REF R0
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CALL                             R2 1 2
       13 JUMPIF                           R2 ; [+5]
       14 GETIMPORT                        R4 K3 [warn]
       16 LOADK                            R5 K4 ["Error in LLM request:"]
       17 MOVE                             R6 R3
       18 CALL                             R4 2 0
       19 CLOSEUPVALS                      R0
       20 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R4 K0 ["%*LLMRequest"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 NEWTABLE                         R4 0 0
        8 LOADN                            R5 0
        9 MOVE                             R8 R3
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          VAL R4
       12 NAMECALL                         R6 R0 K2 ["OnGuestEvent"]
       14 CALL                             R6 3 1
       15 LOADK                            R8 K3 ["%*StreamEvent"]
       16 MOVE                             R10 R3
       17 NAMECALL                         R8 R8 K1 ["format"]
       19 CALL                             R8 2 1
       20 MOVE                             R7 R8
       21 MOVE                             R10 R7
       22 NEWCLOSURE                       R11 P1
       23 CAPTURE                          VAL R4
       24 NAMECALL                         R8 R0 K4 ["OnGuestInvokeAsync"]
       26 CALL                             R8 3 1
       27 MOVE                             R11 R3
       28 NEWCLOSURE                       R12 P2
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R8
       34 CAPTURE                          VAL R6
       35 NAMECALL                         R9 R0 K5 ["OnHostInvokeAsync"]
       37 CALL                             R9 3 1
       38 NEWCLOSURE                       R10 P3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          REF R5
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R9
       46 NEWCLOSURE                       R11 P4
       47 CAPTURE                          VAL R10
       48 CLOSEUPVALS                      R5
       49 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["Contexts"]
       20 GETTABLEKS                       R4 R5 K10 ["DefaultLLMProvider"]
       22 GETTABLEKS                       R3 R4 K11 ["LLMRequest"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["ModelContextProtocol"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Util"]
       36 GETTABLEKS                       R5 R6 K14 ["StreamEventUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Flags"]
       48 GETTABLEKS                       R7 R8 K17 ["FFlagAssistantBYOKEventQueue"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R9 K18 ["FFlagAssistantBYOKNewJsonEncoder"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K19 [PROTO_9]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R4
       63 RETURN                           R8 1
