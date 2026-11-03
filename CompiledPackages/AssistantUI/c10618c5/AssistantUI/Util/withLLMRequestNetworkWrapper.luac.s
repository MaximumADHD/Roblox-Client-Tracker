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
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 2
        9 JUMPIF                           R2 ; [+13]
       10 DUPTABLE                         R4 K6 [{["uid"], ["success"] = False, ["data"]}]
       11 GETTABLEKS                       R5 R1 K2 ["uid"]
       13 SETTABLEKS                       R5 R4 K2 ["uid"]
       15 FASTCALL1                        TOSTRING R3 ; [+3]
       16 MOVE                             R6 R3
       17 GETIMPORT                        R5 K8 [tostring]
       19 CALL                             R5 1 1
       20 SETTABLEKS                       R5 R4 K5 ["data"]
       22 RETURN                           R4 1
       23 LOADNIL                          R4
       24 RETURN                           R4 1

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
        8 GETIMPORT                        R3 K4 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CALL                             R3 1 2
       20 JUMPIF                           R3 ; [+8]
       21 GETUPVAL                         R5 1
       22 LOADNIL                          R6
       23 SETTABLE                         R6 R5 R2
       24 GETIMPORT                        R5 K6 [warn]
       26 LOADK                            R6 K7 ["Error in LLM request:"]
       27 MOVE                             R7 R4
       28 CALL                             R5 2 0
       29 RETURN                           R4 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{[1], ["success"] = True, ["data"]}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["uid"]
        6 SETTABLEKS                       R0 R3 K3 ["data"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R4 ; [+65]
        4 LOADK                            R4 K1 ["%*LLMRequest"]
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R4 K2 ["format"]
        8 CALL                             R4 2 1
        9 LOADK                            R5 K3 ["%*StreamEvent"]
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R5 K2 ["format"]
       13 CALL                             R5 2 1
       14 NEWTABLE                         R6 0 0
       16 LOADN                            R7 0
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K4 ["invoke"]
       20 MOVE                             R9 R0
       21 MOVE                             R10 R4
       22 CALL                             R8 2 1
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R9 R9 K4 ["invoke"]
       26 MOVE                             R10 R0
       27 MOVE                             R11 R5
       28 CALL                             R9 2 1
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K5 ["new"]
       32 CALL                             R10 0 1
       33 NEWCLOSURE                       R15 P0
       34 CAPTURE                          VAL R6
       35 NAMECALL                         R13 R9 K6 ["Connect"]
       37 CALL                             R13 2 -1
       38 NAMECALL                         R11 R10 K7 ["Add"]
       40 CALL                             R11 -1 0
       41 NEWCLOSURE                       R15 P1
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R9
       45 NAMECALL                         R13 R8 K6 ["Connect"]
       47 CALL                             R13 2 -1
       48 NAMECALL                         R11 R10 K7 ["Add"]
       50 CALL                             R11 -1 0
       51 GETTABLEKS                       R11 R3 K8 ["Destroying"]
       53 NEWCLOSURE                       R13 P2
       54 CAPTURE                          VAL R10
       55 NAMECALL                         R11 R11 K9 ["Once"]
       57 CALL                             R11 2 0
       58 NEWCLOSURE                       R11 P3
       59 CAPTURE                          REF R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U5
       65 NEWCLOSURE                       R12 P4
       66 CAPTURE                          VAL R11
       67 CLOSEUPVALS                      R7
       68 RETURN                           R12 1
       69 LOADK                            R4 K1 ["%*LLMRequest"]
       70 MOVE                             R6 R1
       71 NAMECALL                         R4 R4 K2 ["format"]
       73 CALL                             R4 2 1
       74 NEWTABLE                         R5 0 0
       76 LOADN                            R6 0
       77 LOADK                            R7 K3 ["%*StreamEvent"]
       78 MOVE                             R9 R4
       79 NAMECALL                         R7 R7 K2 ["format"]
       81 CALL                             R7 2 1
       82 MOVE                             R10 R7
       83 NEWCLOSURE                       R11 P5
       84 CAPTURE                          VAL R5
       85 NAMECALL                         R8 R0 K10 ["OnGuestInvokeAsync"]
       87 CALL                             R8 3 1
       88 MOVE                             R11 R4
       89 NEWCLOSURE                       R12 P6
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R8
       93 NAMECALL                         R9 R0 K11 ["OnHostInvokeAsync"]
       95 CALL                             R9 3 1
       96 NEWCLOSURE                       R10 P7
       97 CAPTURE                          VAL R0
       98 CAPTURE                          REF R6
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R5
      101 CAPTURE                          UPVAL U3
      102 CAPTURE                          VAL R9
      103 CAPTURE                          UPVAL U6
      104 NEWCLOSURE                       R11 P8
      105 CAPTURE                          VAL R10
      106 CLOSEUPVALS                      R6
      107 RETURN                           R11 1

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
       26 GETTABLEKS                       R6 R1 K10 ["DMNetworkingOLD"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ModelContextProtocol"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Util"]
       38 GETTABLEKS                       R8 R8 K13 ["DataModelType"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Guest"]
       45 GETTABLEKS                       R9 R9 K15 ["Environment"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K16 ["Flags"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R11 R0 K17 ["Types"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R11 R2 K18 ["Engine"]
       60 GETTABLEKS                       R11 R11 K19 ["StreamEventUtils"]
       62 GETTABLEKS                       R12 R4 K20 ["Remote"]
       64 DUPCLOSURE                       R13 K21 [PROTO_17]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 RETURN                           R13 1
