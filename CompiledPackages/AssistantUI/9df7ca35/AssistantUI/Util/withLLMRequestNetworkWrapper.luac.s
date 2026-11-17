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
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K4 [{[1], ["success"] = True, ["data"]}]
        3 GETUPVAL                         R5 2
        4 GETTABLEKS                       R5 R5 K0 ["uid"]
        6 SETTABLEKS                       R5 R4 K0 ["uid"]
        8 SETTABLEKS                       R0 R4 K3 ["data"]
       10 NAMECALL                         R1 R1 K5 ["InvokeAsync"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["body"]
        8 CALL                             R0 1 1
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U1
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K1 [pcall]
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+13]
       11 DUPTABLE                         R4 K6 [{["uid"], ["success"] = False, ["data"]}]
       12 GETTABLEKS                       R5 R1 K2 ["uid"]
       14 SETTABLEKS                       R5 R4 K2 ["uid"]
       16 FASTCALL1                        TOSTRING R3 ; [+3]
       17 MOVE                             R6 R3
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 SETTABLEKS                       R5 R4 K5 ["data"]
       23 RETURN                           R4 1
       24 LOADNIL                          R4
       25 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["success"]
        2 JUMPIF                           R1 ; [+11]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 LOADNIL                          R3
        6 SETTABLE                         R3 R1 R2
        7 GETIMPORT                        R1 K2 [warn]
        9 LOADK                            R2 K3 ["Error in LLM request:"]
       10 GETTABLEKS                       R3 R0 K4 ["data"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R1 R0 K4 ["data"]
       16 GETUPVAL                         R2 2
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K5 ["isTerminalEventType"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 JUMPIFNOT                        R2 ; [+4]
       25 GETUPVAL                         R2 0
       26 GETUPVAL                         R3 1
       27 LOADNIL                          R4
       28 SETTABLE                         R4 R2 R3
       29 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 SETTABLE                         R0 R1 R2
        8 GETUPVAL                         R1 4
        9 GETTABLEKS                       R1 R1 K0 ["Json"]
       11 GETTABLEKS                       R1 R1 K1 ["encode"]
       13 GETUPVAL                         R2 5
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 6
       16 GETUPVAL                         R4 7
       17 GETTABLEKS                       R4 R4 K2 ["Identity"]
       19 GETTABLEKS                       R4 R4 K3 ["Edit"]
       21 DUPTABLE                         R5 K6 [{"uid", "body"}]
       22 GETUPVAL                         R6 1
       23 SETTABLEKS                       R6 R5 K4 ["uid"]
       25 SETTABLEKS                       R1 R5 K5 ["body"]
       27 NAMECALL                         R2 R2 K7 ["InvokeAsync"]
       29 CALL                             R2 3 1
       30 JUMPIFNOT                        R2 ; [+29]
       31 GETTABLEKS                       R3 R2 K8 ["success"]
       33 JUMPIF                           R3 ; [+11]
       34 GETUPVAL                         R3 0
       35 GETUPVAL                         R4 1
       36 LOADNIL                          R5
       37 SETTABLE                         R5 R3 R4
       38 GETIMPORT                        R3 K10 [warn]
       40 LOADK                            R4 K11 ["Error in LLM request:"]
       41 GETTABLEKS                       R5 R2 K12 ["data"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R3 R2 K12 ["data"]
       47 GETUPVAL                         R4 2
       48 MOVE                             R5 R3
       49 CALL                             R4 1 0
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K13 ["isTerminalEventType"]
       53 MOVE                             R5 R3
       54 CALL                             R4 1 1
       55 JUMPIFNOT                        R4 ; [+4]
       56 GETUPVAL                         R4 0
       57 GETUPVAL                         R5 1
       58 LOADNIL                          R6
       59 SETTABLE                         R6 R4 R5
       60 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R3 0
        4 FASTCALL1                        TOSTRING R3 ; [+2]
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R3 K4 [pcall]
       20 CALL                             R3 1 2
       21 JUMPIF                           R3 ; [+8]
       22 GETUPVAL                         R5 1
       23 LOADNIL                          R6
       24 SETTABLE                         R6 R5 R2
       25 GETIMPORT                        R5 K6 [warn]
       27 LOADK                            R6 K7 ["Error in LLM request:"]
       28 MOVE                             R7 R4
       29 CALL                             R5 2 0
       30 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R4 K0 ["%*LLMRequest"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 LOADK                            R5 K2 ["%*StreamEvent"]
        6 MOVE                             R7 R4
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 NEWTABLE                         R6 0 0
       12 LOADN                            R7 0
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K3 ["invoke"]
       16 MOVE                             R9 R0
       17 MOVE                             R10 R4
       18 CALL                             R8 2 1
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K3 ["invoke"]
       22 MOVE                             R10 R0
       23 MOVE                             R11 R5
       24 CALL                             R9 2 1
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K4 ["new"]
       28 CALL                             R10 0 1
       29 NEWCLOSURE                       R15 P0
       30 CAPTURE                          VAL R6
       31 NAMECALL                         R13 R9 K5 ["Connect"]
       33 CALL                             R13 2 -1
       34 NAMECALL                         R11 R10 K6 ["Add"]
       36 CALL                             R11 -1 0
       37 NEWCLOSURE                       R15 P1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R9
       41 NAMECALL                         R13 R8 K5 ["Connect"]
       43 CALL                             R13 2 -1
       44 NAMECALL                         R11 R10 K6 ["Add"]
       46 CALL                             R11 -1 0
       47 GETTABLEKS                       R11 R3 K7 ["Destroying"]
       49 NEWCLOSURE                       R13 P2
       50 CAPTURE                          VAL R10
       51 NAMECALL                         R11 R11 K8 ["Once"]
       53 CALL                             R11 2 0
       54 NEWCLOSURE                       R11 P3
       55 CAPTURE                          REF R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R8
       60 CAPTURE                          UPVAL U4
       61 NEWCLOSURE                       R12 P4
       62 CAPTURE                          VAL R11
       63 CLOSEUPVALS                      R7
       64 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantHarness"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Bin"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworking"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ModelContextProtocol"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Guest"]
       33 GETTABLEKS                       R7 R7 K12 ["Environment"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Types"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R2 K14 ["Engine"]
       43 GETTABLEKS                       R8 R8 K15 ["StreamEventUtils"]
       45 GETTABLEKS                       R9 R4 K16 ["Remote"]
       47 DUPCLOSURE                       R10 K17 [PROTO_9]
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R4
       53 RETURN                           R10 1
