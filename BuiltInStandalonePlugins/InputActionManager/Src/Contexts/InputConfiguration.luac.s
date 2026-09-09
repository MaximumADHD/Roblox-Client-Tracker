PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R2 K1 ["Fire"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETIMPORT                        R2 K3 [table.clone]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["current"]
        8 CALL                             R2 1 -1
        9 NAMECALL                         R0 R0 K4 ["Fire"]
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["Fire"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 LOADB                            R3 1
        8 SETTABLE                         R3 R2 R0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["current"]
       12 GETTABLE                         R2 R3 R0
       13 JUMPIFNOT                        R2 ; [+4]
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K1 ["Fire"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["current"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K2 [table.clear]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["current"]
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K2 [table.clear]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["current"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Request"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 GETUPVAL                         R0 3
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K0 ["current"]
       20 GETUPVAL                         R0 4
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 GETIMPORT                        R0 K3 [table.clear]
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R1 R1 K0 ["current"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 6
       31 CALL                             R0 0 1
       32 JUMPIFNOT                        R0 ; [+18]
       33 GETIMPORT                        R0 K3 [table.clear]
       35 GETUPVAL                         R1 7
       36 GETTABLEKS                       R1 R1 K0 ["current"]
       38 CALL                             R0 1 0
       39 GETIMPORT                        R0 K3 [table.clear]
       41 GETUPVAL                         R1 8
       42 GETTABLEKS                       R1 R1 K0 ["current"]
       44 CALL                             R0 1 0
       45 GETIMPORT                        R0 K3 [table.clear]
       47 GETUPVAL                         R1 9
       48 GETTABLEKS                       R1 R1 K0 ["current"]
       50 CALL                             R0 1 0
       51 GETUPVAL                         R0 10
       52 GETTABLEKS                       R0 R0 K0 ["current"]
       54 GETIMPORT                        R2 K5 [table.clone]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K0 ["current"]
       59 CALL                             R2 1 -1
       60 NAMECALL                         R0 R0 K6 ["Fire"]
       62 CALL                             R0 -1 0
       63 GETUPVAL                         R0 4
       64 LOADNIL                          R1
       65 SETTABLEKS                       R1 R0 K0 ["current"]
       67 GETUPVAL                         R0 11
       68 GETTABLEKS                       R0 R0 K0 ["current"]
       70 LOADNIL                          R2
       71 NAMECALL                         R0 R0 K6 ["Fire"]
       73 CALL                             R0 2 0
       74 GETUPVAL                         R0 6
       75 CALL                             R0 0 1
       76 JUMPIFNOT                        R0 ; [+6]
       77 GETIMPORT                        R0 K9 [task.defer]
       79 NEWCLOSURE                       R1 P0
       80 CAPTURE                          UPVAL U12
       81 CALL                             R0 1 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R0 12
       84 GETTABLEKS                       R0 R0 K10 ["Request"]
       86 CALL                             R0 0 0
       87 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["getActionState only available with FFlagIAMLiveDebugging"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["current"]
       11 GETTABLE                         R1 R2 R0
       12 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateContext"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "context", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["context"]
        9 GETUPVAL                         R7 1
       10 CALL                             R7 0 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 MOVE                             R6 R2
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K3 ["appendRecording"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateAction"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "action", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["action"]
        9 GETUPVAL                         R7 1
       10 CALL                             R7 0 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 MOVE                             R6 R2
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K3 ["appendRecording"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateBinding"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "binding", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["binding"]
        9 GETUPVAL                         R7 1
       10 CALL                             R7 0 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 MOVE                             R6 R2
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 SETTABLEKS                       R6 R5 K3 ["appendRecording"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["DuplicateContext"]
        6 LOADNIL                          R2
        7 DUPTABLE                         R3 K2 [{"uuid"}]
        8 SETTABLEKS                       R0 R3 K1 ["uuid"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["DuplicateAction"]
        6 LOADNIL                          R2
        7 DUPTABLE                         R3 K2 [{"uuid"}]
        8 SETTABLEKS                       R0 R3 K1 ["uuid"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+9]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 CALL                             R3 0 1
        9 MOVE                             R2 R3
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["current"]
       13 SETTABLE                         R2 R3 R0
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R2 K2 ["Connect"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R3
       20 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["subscribeStateChange only available with FFlagIAMLiveDebugging"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["current"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFNOT                        R2 ; [+6]
       13 MOVE                             R2 R1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["current"]
       17 GETTABLE                         R3 R4 R0
       18 CALL                             R2 1 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["current"]
       22 GETTABLE                         R2 R3 R0
       23 JUMPIF                           R2 ; [+9]
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K4 ["new"]
       27 CALL                             R3 0 1
       28 MOVE                             R2 R3
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K3 ["current"]
       32 SETTABLE                         R2 R3 R0
       33 MOVE                             R5 R1
       34 NAMECALL                         R3 R2 K5 ["Connect"]
       36 CALL                             R3 2 1
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R3
       39 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_26:
        0 DUPTABLE                         R0 K14 [{"getContextOrder", "getContext", "getAction", "getBinding", "getActionState", "updateContext", "updateAction", "updateBinding", "duplicateContext", "duplicateAction", "subscribe", "subscribeStateChange", "onContextOrderChanged", "onSelectionChanged"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getContextOrder"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K1 ["getContext"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R1 R0 K2 ["getAction"]
       13 NEWCLOSURE                       R1 P3
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R1 R0 K3 ["getBinding"]
       17 NEWCLOSURE                       R1 P4
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 SETTABLEKS                       R1 R0 K4 ["getActionState"]
       22 NEWCLOSURE                       R1 P5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 SETTABLEKS                       R1 R0 K5 ["updateContext"]
       27 NEWCLOSURE                       R1 P6
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 SETTABLEKS                       R1 R0 K6 ["updateAction"]
       32 NEWCLOSURE                       R1 P7
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 SETTABLEKS                       R1 R0 K7 ["updateBinding"]
       37 NEWCLOSURE                       R1 P8
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U6
       40 SETTABLEKS                       R1 R0 K8 ["duplicateContext"]
       42 NEWCLOSURE                       R1 P9
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          UPVAL U6
       45 SETTABLEKS                       R1 R0 K9 ["duplicateAction"]
       47 NEWCLOSURE                       R1 P10
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 SETTABLEKS                       R1 R0 K10 ["subscribe"]
       52 NEWCLOSURE                       R1 P11
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U11
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          UPVAL U10
       58 SETTABLEKS                       R1 R0 K11 ["subscribeStateChange"]
       60 NEWCLOSURE                       R1 P12
       61 CAPTURE                          UPVAL U13
       62 SETTABLEKS                       R1 R0 K12 ["onContextOrderChanged"]
       64 NEWCLOSURE                       R1 P13
       65 CAPTURE                          UPVAL U14
       66 SETTABLEKS                       R1 R0 K13 ["onSelectionChanged"]
       68 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R5 0
        1 SETTABLEKS                       R1 R5 K0 ["current"]
        3 GETUPVAL                         R5 1
        4 SETTABLEKS                       R2 R5 K0 ["current"]
        6 GETUPVAL                         R5 2
        7 SETTABLEKS                       R3 R5 K0 ["current"]
        9 GETUPVAL                         R5 3
       10 SETTABLEKS                       R4 R5 K0 ["current"]
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K0 ["current"]
       15 JUMPIF                           R5 ; [+12]
       16 GETUPVAL                         R5 5
       17 MOVE                             R6 R2
       18 MOVE                             R7 R3
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 4
       21 SETTABLEKS                       R5 R6 K0 ["current"]
       23 GETUPVAL                         R6 6
       24 GETTABLEKS                       R6 R6 K1 ["statSchemaSupport"]
       26 MOVE                             R7 R5
       27 CALL                             R6 1 0
       28 GETUPVAL                         R5 7
       29 GETTABLEKS                       R5 R5 K0 ["current"]
       31 GETIMPORT                        R7 K4 [table.clone]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K0 ["current"]
       36 CALL                             R7 1 -1
       37 NAMECALL                         R5 R5 K5 ["Fire"]
       39 CALL                             R5 -1 0
       40 RETURN                           R0 0

PROTO_28:
        0 JUMPIFNOT                        R2 ; [+43]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 SETTABLE                         R2 R3 R1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+53]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R3 K1 ["Fire"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 SETTABLE                         R2 R3 R1
       24 GETUPVAL                         R3 2
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K2 ["GetContextsAsync"]
       28 CALL                             R4 0 1
       29 SETTABLEKS                       R4 R3 K0 ["current"]
       31 GETUPVAL                         R3 4
       32 GETTABLEKS                       R3 R3 K0 ["current"]
       34 GETIMPORT                        R5 K5 [table.clone]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K0 ["current"]
       39 CALL                             R5 1 -1
       40 NAMECALL                         R3 R3 K1 ["Fire"]
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 2
       45 GETUPVAL                         R4 3
       46 GETTABLEKS                       R4 R4 K2 ["GetContextsAsync"]
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K0 ["current"]
       51 GETUPVAL                         R3 4
       52 GETTABLEKS                       R3 R3 K0 ["current"]
       54 GETIMPORT                        R5 K5 [table.clone]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K0 ["current"]
       59 CALL                             R5 1 -1
       60 NAMECALL                         R3 R3 K1 ["Fire"]
       62 CALL                             R3 -1 0
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K0 ["current"]
       66 LOADNIL                          R4
       67 SETTABLE                         R4 R3 R1
       68 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R2 ; [+39]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 SETTABLE                         R2 R3 R1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+54]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R3 K1 ["Fire"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 SETTABLE                         R2 R3 R1
       24 GETTABLEKS                       R3 R2 K2 ["parentUuid"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K0 ["current"]
       29 GETTABLE                         R4 R5 R3
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K0 ["current"]
       33 GETTABLE                         R5 R6 R3
       34 JUMPIFNOT                        R5 ; [+34]
       35 MOVE                             R8 R4
       36 NAMECALL                         R6 R5 K1 ["Fire"]
       38 CALL                             R6 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K0 ["current"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIFNOT                        R3 ; [+24]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["current"]
       48 GETTABLE                         R3 R4 R1
       49 GETTABLEKS                       R3 R3 K2 ["parentUuid"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R5 R5 K0 ["current"]
       54 GETTABLE                         R4 R5 R3
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K0 ["current"]
       58 GETTABLE                         R5 R6 R3
       59 JUMPIFNOT                        R5 ; [+4]
       60 MOVE                             R8 R4
       61 NAMECALL                         R6 R5 K1 ["Fire"]
       63 CALL                             R6 2 0
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K0 ["current"]
       67 LOADNIL                          R5
       68 SETTABLE                         R5 R4 R1
       69 RETURN                           R0 0

PROTO_30:
        0 JUMPIFNOT                        R2 ; [+39]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLE                         R3 R4 R1
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 SETTABLE                         R2 R3 R1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K0 ["current"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOT                        R3 ; [+54]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R3 K1 ["Fire"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 SETTABLE                         R2 R3 R1
       24 GETTABLEKS                       R3 R2 K2 ["parentUuid"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K0 ["current"]
       29 GETTABLE                         R4 R5 R3
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K0 ["current"]
       33 GETTABLE                         R5 R6 R3
       34 JUMPIFNOT                        R5 ; [+34]
       35 MOVE                             R8 R4
       36 NAMECALL                         R6 R5 K1 ["Fire"]
       38 CALL                             R6 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K0 ["current"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIFNOT                        R3 ; [+24]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K0 ["current"]
       48 GETTABLE                         R3 R4 R1
       49 GETTABLEKS                       R3 R3 K2 ["parentUuid"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K0 ["current"]
       54 GETTABLE                         R4 R5 R3
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K0 ["current"]
       58 GETTABLE                         R5 R6 R3
       59 JUMPIFNOT                        R5 ; [+4]
       60 MOVE                             R8 R4
       61 NAMECALL                         R6 R5 K1 ["Fire"]
       63 CALL                             R6 2 0
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K0 ["current"]
       67 LOADNIL                          R5
       68 SETTABLE                         R5 R4 R1
       69 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R1 K0 ["button"]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["current"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K2 ["Fire"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+18]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["current"]
        6 SETTABLE                         R2 R3 R1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["current"]
       10 LOADB                            R4 1
       11 SETTABLE                         R4 R3 R1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["current"]
       15 GETTABLE                         R3 R4 R1
       16 JUMPIFNOT                        R3 ; [+4]
       17 MOVE                             R6 R2
       18 NAMECALL                         R4 R3 K1 ["Fire"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+2]
       14 GETUPVAL                         R0 3
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 4
       17 JUMPIFNOT                        R0 ; [+2]
       18 GETUPVAL                         R0 4
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 5
       21 JUMPIFNOT                        R0 ; [+2]
       22 GETUPVAL                         R0 5
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Initialized"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       13 CALL                             R0 3 2
       14 GETUPVAL                         R2 0
       15 LOADK                            R4 K2 ["ContextUpdated"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U9
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U10
       21 CAPTURE                          UPVAL U8
       22 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       24 CALL                             R2 3 2
       25 GETUPVAL                         R4 0
       26 LOADK                            R6 K3 ["ActionUpdated"]
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U1
       31 NAMECALL                         R4 R4 K1 ["OnGuestEvent"]
       33 CALL                             R4 3 2
       34 GETUPVAL                         R6 0
       35 LOADK                            R8 K4 ["BindingUpdated"]
       36 NEWCLOSURE                       R9 P3
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U9
       39 NAMECALL                         R6 R6 K1 ["OnGuestEvent"]
       41 CALL                             R6 3 2
       42 GETUPVAL                         R8 0
       43 LOADK                            R10 K5 ["UpdateSelection"]
       44 NEWCLOSURE                       R11 P4
       45 CAPTURE                          UPVAL U11
       46 CAPTURE                          UPVAL U12
       47 NAMECALL                         R8 R8 K1 ["OnGuestEvent"]
       49 CALL                             R8 3 2
       50 GETUPVAL                         R10 0
       51 LOADK                            R12 K6 ["StateChange"]
       52 NEWCLOSURE                       R13 P5
       53 CAPTURE                          UPVAL U13
       54 CAPTURE                          UPVAL U14
       55 CAPTURE                          UPVAL U15
       56 CAPTURE                          UPVAL U16
       57 NAMECALL                         R10 R10 K1 ["OnGuestEvent"]
       59 CALL                             R10 3 2
       60 GETUPVAL                         R12 10
       61 GETTABLEKS                       R12 R12 K7 ["Request"]
       63 CALL                             R12 0 0
       64 NEWCLOSURE                       R12 P6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R11
       71 RETURN                           R12 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginEnabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K1 ["current"]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K2 ["countPluginOpened"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 CALL                             R0 2 1
       13 NEWTABLE                         R1 0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["current"]
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETTABLE                         R8 R0 R5
       22 SUB                              R7 R8 R6
       23 SETTABLE                         R7 R1 R5
       24 FORGLOOP                         R2 2 ; [-4]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K1 ["statSchemaSupportChanged"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["plugin"]
        8 GETTABLEKS                       R0 R0 K1 ["Unloading"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 NAMECALL                         R0 R0 K2 ["Connect"]
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       30 MOVE                             R6 R2
       31 LOADK                            R7 K2 ["Networking context is undefined"]
       32 GETIMPORT                        R5 K4 [assert]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K5 ["useRef"]
       38 NEWTABLE                         R6 0 0
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K5 ["useRef"]
       44 NEWTABLE                         R7 0 0
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K5 ["useRef"]
       50 NEWTABLE                         R8 0 0
       52 CALL                             R7 1 1
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K5 ["useRef"]
       56 NEWTABLE                         R9 0 0
       58 CALL                             R8 1 1
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K5 ["useRef"]
       62 CALL                             R9 0 1
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K5 ["useRef"]
       66 LOADNIL                          R11
       67 CALL                             R10 1 1
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K5 ["useRef"]
       71 LOADB                            R12 0
       72 CALL                             R11 1 1
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K5 ["useRef"]
       76 NEWTABLE                         R13 0 0
       78 CALL                             R12 1 1
       79 GETUPVAL                         R13 0
       80 GETTABLEKS                       R13 R13 K5 ["useRef"]
       82 NEWTABLE                         R14 0 0
       84 CALL                             R13 1 1
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K5 ["useRef"]
       88 NEWTABLE                         R15 0 0
       90 CALL                             R14 1 1
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R15 R15 K5 ["useRef"]
       94 NEWTABLE                         R16 0 0
       96 CALL                             R15 1 1
       97 GETUPVAL                         R16 0
       98 GETTABLEKS                       R16 R16 K5 ["useRef"]
      100 GETUPVAL                         R17 5
      101 GETTABLEKS                       R17 R17 K6 ["new"]
      103 CALL                             R17 0 -1
      104 CALL                             R16 -1 1
      105 GETUPVAL                         R17 0
      106 GETTABLEKS                       R17 R17 K5 ["useRef"]
      108 GETUPVAL                         R18 5
      109 GETTABLEKS                       R18 R18 K6 ["new"]
      111 CALL                             R18 0 -1
      112 CALL                             R17 -1 1
      113 NEWCLOSURE                       R18 P0
      114 CAPTURE                          VAL R12
      115 NEWCLOSURE                       R19 P1
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R5
      118 NEWCLOSURE                       R20 P2
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R17
      121 NEWCLOSURE                       R21 P3
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R13
      125 NEWCLOSURE                       R22 P4
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R13
      129 GETUPVAL                         R23 0
      130 GETTABLEKS                       R23 R23 K7 ["useCallback"]
      132 NEWCLOSURE                       R24 P5
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R12
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R3
      146 NEWTABLE                         R25 0 1
      148 MOVE                             R26 R3
      149 SETLIST                          R25 R26 1 [1]
      151 CALL                             R23 2 1
      152 GETUPVAL                         R24 0
      153 GETTABLEKS                       R24 R24 K8 ["useEffect"]
      155 NEWCLOSURE                       R25 P6
      156 CAPTURE                          VAL R23
      157 NEWTABLE                         R26 0 2
      159 MOVE                             R27 R1
      160 MOVE                             R28 R23
      161 SETLIST                          R26 R27 2 [1]
      163 CALL                             R24 2 0
      164 GETUPVAL                         R24 0
      165 GETTABLEKS                       R24 R24 K9 ["useMemo"]
      167 NEWCLOSURE                       R25 P7
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R8
      172 CAPTURE                          UPVAL U6
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R3
      175 CAPTURE                          UPVAL U7
      176 CAPTURE                          UPVAL U8
      177 CAPTURE                          VAL R12
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R17
      183 NEWTABLE                         R26 0 1
      185 MOVE                             R27 R3
      186 SETLIST                          R26 R27 1 [1]
      188 CALL                             R24 2 1
      189 GETUPVAL                         R25 0
      190 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      192 NEWCLOSURE                       R26 P8
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R10
      199 CAPTURE                          UPVAL U9
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R3
      204 CAPTURE                          VAL R9
      205 CAPTURE                          VAL R17
      206 CAPTURE                          UPVAL U6
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R13
      210 NEWTABLE                         R27 0 3
      212 MOVE                             R28 R3
      213 MOVE                             R29 R2
      214 MOVE                             R30 R4
      215 SETLIST                          R27 R28 3 [1]
      217 CALL                             R25 2 0
      218 GETUPVAL                         R25 0
      219 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      221 NEWCLOSURE                       R26 P9
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R11
      224 CAPTURE                          VAL R4
      225 NEWTABLE                         R27 0 2
      227 GETTABLEKS                       R28 R0 K10 ["pluginEnabled"]
      229 MOVE                             R29 R4
      230 SETLIST                          R27 R28 2 [1]
      232 CALL                             R25 2 0
      233 GETUPVAL                         R25 0
      234 GETTABLEKS                       R25 R25 K8 ["useEffect"]
      236 NEWCLOSURE                       R26 P10
      237 CAPTURE                          VAL R0
      238 CAPTURE                          VAL R10
      239 CAPTURE                          UPVAL U9
      240 CAPTURE                          VAL R7
      241 CAPTURE                          VAL R8
      242 CAPTURE                          VAL R4
      243 NEWTABLE                         R27 0 2
      245 GETTABLEKS                       R28 R0 K11 ["plugin"]
      247 MOVE                             R29 R4
      248 SETLIST                          R27 R28 2 [1]
      250 CALL                             R25 2 0
      251 GETUPVAL                         R25 0
      252 GETTABLEKS                       R25 R25 K12 ["createElement"]
      254 GETUPVAL                         R26 10
      255 GETTABLEKS                       R26 R26 K13 ["Provider"]
      257 DUPTABLE                         R27 K15 [{"value"}]
      258 SETTABLEKS                       R24 R27 K14 ["value"]
      260 GETTABLEKS                       R28 R0 K16 ["children"]
      262 CALL                             R25 3 -1
      263 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K13 ["Guest"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K14 ["Networking"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K12 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K15 ["Telemetry"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Util"]
       68 GETTABLEKS                       R9 R9 K17 ["Binding"]
       70 GETTABLEKS                       R9 R9 K18 ["getBindingCoverage"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K10 ["Src"]
       77 GETTABLEKS                       R10 R10 K12 ["Contexts"]
       79 GETTABLEKS                       R10 R10 K19 ["DatamodelConfiguration"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R0 K10 ["Src"]
       84 GETTABLEKS                       R10 R10 K20 ["Flags"]
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R10 K21 ["getFFlagIAMDuplicate"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K5 [require]
       93 GETTABLEKS                       R13 R10 K22 ["getFFlagIAMLiveDebugging"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R10 K23 ["getFFlagIAMUndoRedo"]
      100 CALL                             R13 1 1
      101 GETTABLEKS                       R14 R1 K24 ["createContext"]
      103 DUPTABLE                         R15 K40 [{"getContextOrder", "getContext", "getAction", "getBinding", "getActionState", "getSelection", "updateContext", "updateAction", "updateBinding", "duplicateContext", "duplicateAction", "subscribe", "subscribeStateChange", "onContextOrderChanged", "onSelectionChanged"}]
      104 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      106 LOADK                            R17 K25 ["getContextOrder"]
      107 CALL                             R16 1 1
      108 SETTABLEKS                       R16 R15 K25 ["getContextOrder"]
      110 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      112 LOADK                            R17 K26 ["getContext"]
      113 CALL                             R16 1 1
      114 SETTABLEKS                       R16 R15 K26 ["getContext"]
      116 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      118 LOADK                            R17 K27 ["getAction"]
      119 CALL                             R16 1 1
      120 SETTABLEKS                       R16 R15 K27 ["getAction"]
      122 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      124 LOADK                            R17 K28 ["getBinding"]
      125 CALL                             R16 1 1
      126 SETTABLEKS                       R16 R15 K28 ["getBinding"]
      128 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      130 LOADK                            R17 K29 ["getActionState"]
      131 CALL                             R16 1 1
      132 SETTABLEKS                       R16 R15 K29 ["getActionState"]
      134 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      136 LOADK                            R17 K30 ["getSelection"]
      137 CALL                             R16 1 1
      138 SETTABLEKS                       R16 R15 K30 ["getSelection"]
      140 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      142 LOADK                            R17 K31 ["updateContext"]
      143 CALL                             R16 1 1
      144 SETTABLEKS                       R16 R15 K31 ["updateContext"]
      146 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      148 LOADK                            R17 K32 ["updateAction"]
      149 CALL                             R16 1 1
      150 SETTABLEKS                       R16 R15 K32 ["updateAction"]
      152 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      154 LOADK                            R17 K33 ["updateBinding"]
      155 CALL                             R16 1 1
      156 SETTABLEKS                       R16 R15 K33 ["updateBinding"]
      158 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      160 LOADK                            R17 K34 ["duplicateContext"]
      161 CALL                             R16 1 1
      162 SETTABLEKS                       R16 R15 K34 ["duplicateContext"]
      164 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      166 LOADK                            R17 K35 ["duplicateAction"]
      167 CALL                             R16 1 1
      168 SETTABLEKS                       R16 R15 K35 ["duplicateAction"]
      170 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      172 LOADK                            R17 K36 ["subscribe"]
      173 CALL                             R16 1 1
      174 SETTABLEKS                       R16 R15 K36 ["subscribe"]
      176 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      178 LOADK                            R17 K37 ["subscribeStateChange"]
      179 CALL                             R16 1 1
      180 SETTABLEKS                       R16 R15 K37 ["subscribeStateChange"]
      182 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      184 LOADK                            R17 K38 ["onContextOrderChanged"]
      185 CALL                             R16 1 1
      186 SETTABLEKS                       R16 R15 K38 ["onContextOrderChanged"]
      188 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      190 LOADK                            R17 K39 ["onSelectionChanged"]
      191 CALL                             R16 1 1
      192 SETTABLEKS                       R16 R15 K39 ["onSelectionChanged"]
      194 CALL                             R14 1 1
      195 DUPCLOSURE                       R15 K42 [PROTO_39]
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R9
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R14
      207 DUPTABLE                         R16 K45 [{"Context", "Provider"}]
      208 SETTABLEKS                       R14 R16 K43 ["Context"]
      210 SETTABLEKS                       R15 R16 K44 ["Provider"]
      212 RETURN                           R16 1
