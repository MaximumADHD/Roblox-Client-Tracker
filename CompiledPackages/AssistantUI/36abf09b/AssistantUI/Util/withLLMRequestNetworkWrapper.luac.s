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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{[1], ["success"] = True, ["data"]}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["uid"]
        6 SETTABLEKS                       R0 R3 K3 ["data"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 2
        9 GETUPVAL                         R1 0
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          REF R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+12]
       11 DUPTABLE                         R5 K6 [{["uid"], ["success"] = False, ["data"]}]
       12 SETTABLEKS                       R1 R5 K2 ["uid"]
       14 FASTCALL1                        TOSTRING R4 ; [+3]
       15 MOVE                             R7 R4
       16 GETIMPORT                        R6 K8 [tostring]
       18 CALL                             R6 1 1
       19 SETTABLEKS                       R6 R5 K5 ["data"]
       21 CLOSEUPVALS                      R2
       22 RETURN                           R5 1
       23 CLOSEUPVALS                      R2
       24 RETURN                           R0 0

PROTO_4:
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
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["isTerminalEventType"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R3 3
       23 LOADNIL                          R4
       24 SETTABLE                         R4 R2 R3
       25 RETURN                           R0 0

PROTO_5:
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
       25 GETUPVAL                         R2 6
       26 GETTABLEKS                       R2 R2 K7 ["Json"]
       28 GETTABLEKS                       R2 R2 K8 ["encode"]
       30 GETUPVAL                         R3 5
       31 CALL                             R2 1 1
       32 SETUPVAL                         R2 5
       33 GETUPVAL                         R2 7
       34 GETUPVAL                         R3 8
       35 GETTABLEKS                       R3 R3 K9 ["Types"]
       37 GETTABLEKS                       R3 R3 K10 ["Edit"]
       39 MOVE                             R4 R0
       40 GETUPVAL                         R5 5
       41 CALL                             R2 3 1
       42 JUMPIFNOT                        R2 ; [+24]
       43 GETTABLEKS                       R3 R2 K11 ["success"]
       45 JUMPIF                           R3 ; [+7]
       46 GETIMPORT                        R3 K13 [warn]
       48 LOADK                            R4 K14 ["Error in LLM request:"]
       49 GETTABLEKS                       R5 R2 K15 ["data"]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R3 R2 K15 ["data"]
       55 GETUPVAL                         R4 2
       56 MOVE                             R5 R3
       57 CALL                             R4 1 0
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R4 R4 K16 ["isTerminalEventType"]
       61 MOVE                             R5 R3
       62 CALL                             R4 1 1
       63 JUMPIFNOT                        R4 ; [+3]
       64 GETUPVAL                         R4 4
       65 LOADNIL                          R5
       66 SETTABLE                         R5 R4 R0
       67 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          REF R0
        9 CAPTURE                          UPVAL U4
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 LOADK                            R4 K0 ["%*LLMRequest"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 NEWTABLE                         R4 0 0
        8 LOADN                            R5 0
        9 LOADK                            R7 K2 ["%*StreamEvent"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K1 ["format"]
       13 CALL                             R7 2 1
       14 MOVE                             R6 R7
       15 MOVE                             R9 R6
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          VAL R4
       18 NAMECALL                         R7 R0 K3 ["OnGuestInvokeAsync"]
       20 CALL                             R7 3 1
       21 MOVE                             R10 R3
       22 NEWCLOSURE                       R11 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R7
       26 NAMECALL                         R8 R0 K4 ["OnHostInvokeAsync"]
       28 CALL                             R8 3 1
       29 NEWCLOSURE                       R9 P2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          REF R5
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R4
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R8
       36 CAPTURE                          UPVAL U2
       37 NEWCLOSURE                       R10 P3
       38 CAPTURE                          VAL R9
       39 CLOSEUPVALS                      R5
       40 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["DataModelType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["DefaultLLMProvider"]
       29 GETTABLEKS                       R4 R4 K13 ["LLMRequest"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["ModelContextProtocol"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["StreamEventUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Types"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K17 [PROTO_8]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R2
       55 RETURN                           R7 1
