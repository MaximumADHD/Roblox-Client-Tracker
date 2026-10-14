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
       24 GETUPVAL                         R0 5
       25 LOADB                            R1 0
       26 SETTABLEKS                       R1 R0 K0 ["current"]
       28 GETIMPORT                        R0 K3 [table.clear]
       30 GETUPVAL                         R1 6
       31 GETTABLEKS                       R1 R1 K0 ["current"]
       33 CALL                             R0 1 0
       34 GETIMPORT                        R0 K3 [table.clear]
       36 GETUPVAL                         R1 7
       37 GETTABLEKS                       R1 R1 K0 ["current"]
       39 CALL                             R0 1 0
       40 GETIMPORT                        R0 K3 [table.clear]
       42 GETUPVAL                         R1 8
       43 GETTABLEKS                       R1 R1 K0 ["current"]
       45 CALL                             R0 1 0
       46 GETIMPORT                        R0 K3 [table.clear]
       48 GETUPVAL                         R1 9
       49 GETTABLEKS                       R1 R1 K0 ["current"]
       51 CALL                             R0 1 0
       52 GETUPVAL                         R0 10
       53 GETTABLEKS                       R0 R0 K0 ["current"]
       55 GETIMPORT                        R2 K5 [table.clone]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K0 ["current"]
       60 CALL                             R2 1 -1
       61 NAMECALL                         R0 R0 K6 ["Fire"]
       63 CALL                             R0 -1 0
       64 GETUPVAL                         R0 4
       65 LOADNIL                          R1
       66 SETTABLEKS                       R1 R0 K0 ["current"]
       68 GETUPVAL                         R0 11
       69 GETTABLEKS                       R0 R0 K0 ["current"]
       71 LOADNIL                          R2
       72 NAMECALL                         R0 R0 K6 ["Fire"]
       74 CALL                             R0 2 0
       75 GETIMPORT                        R0 K9 [task.defer]
       77 NEWCLOSURE                       R1 P0
       78 CAPTURE                          UPVAL U12
       79 CALL                             R0 1 0
       80 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K3 ["current"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["current"]
       10 JUMPIFNOT                        R1 ; [+20]
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+17]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K4 ["contextOrder"]
       17 LOADNIL                          R2
       18 LOADNIL                          R3
       19 FORGPREP                         R1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K3 ["current"]
       23 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       25 MOVE                             R8 R5
       26 GETIMPORT                        R6 K6 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-10]
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K3 ["current"]
       34 GETIMPORT                        R3 K2 [table.clone]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K3 ["current"]
       39 CALL                             R3 1 -1
       40 NAMECALL                         R1 R1 K7 ["Fire"]
       42 CALL                             R1 -1 0
       43 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

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
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateContext"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "context", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["context"]
        9 SETTABLEKS                       R2 R5 K3 ["appendRecording"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateAction"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "action", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["action"]
        9 SETTABLEKS                       R2 R5 K3 ["appendRecording"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateBinding"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "binding", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["binding"]
        9 SETTABLEKS                       R2 R5 K3 ["appendRecording"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DuplicateContext"]
        3 LOADNIL                          R2
        4 DUPTABLE                         R3 K2 [{"uuid"}]
        5 SETTABLEKS                       R0 R3 K1 ["uuid"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DuplicateAction"]
        3 LOADNIL                          R2
        4 DUPTABLE                         R3 K2 [{"uuid"}]
        5 SETTABLEKS                       R0 R3 K1 ["uuid"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+6]
        5 MOVE                             R2 R1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["current"]
        9 GETTABLE                         R3 R4 R0
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K0 ["current"]
       14 GETTABLE                         R2 R3 R0
       15 JUMPIF                           R2 ; [+9]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K1 ["new"]
       19 CALL                             R3 0 1
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K0 ["current"]
       24 SETTABLE                         R2 R3 R0
       25 MOVE                             R5 R1
       26 NAMECALL                         R3 R2 K2 ["Connect"]
       28 CALL                             R3 2 1
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_27:
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
       19 SETTABLEKS                       R1 R0 K4 ["getActionState"]
       21 NEWCLOSURE                       R1 P5
       22 CAPTURE                          UPVAL U5
       23 SETTABLEKS                       R1 R0 K5 ["updateContext"]
       25 NEWCLOSURE                       R1 P6
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R1 R0 K6 ["updateAction"]
       29 NEWCLOSURE                       R1 P7
       30 CAPTURE                          UPVAL U5
       31 SETTABLEKS                       R1 R0 K7 ["updateBinding"]
       33 NEWCLOSURE                       R1 P8
       34 CAPTURE                          UPVAL U5
       35 SETTABLEKS                       R1 R0 K8 ["duplicateContext"]
       37 NEWCLOSURE                       R1 P9
       38 CAPTURE                          UPVAL U5
       39 SETTABLEKS                       R1 R0 K9 ["duplicateAction"]
       41 NEWCLOSURE                       R1 P10
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 SETTABLEKS                       R1 R0 K10 ["subscribe"]
       46 NEWCLOSURE                       R1 P11
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U9
       50 CAPTURE                          UPVAL U7
       51 SETTABLEKS                       R1 R0 K11 ["subscribeStateChange"]
       53 NEWCLOSURE                       R1 P12
       54 CAPTURE                          UPVAL U10
       55 SETTABLEKS                       R1 R0 K12 ["onContextOrderChanged"]
       57 NEWCLOSURE                       R1 P13
       58 CAPTURE                          UPVAL U11
       59 SETTABLEKS                       R1 R0 K13 ["onSelectionChanged"]
       61 RETURN                           R0 1

PROTO_28:
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
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+57]
       31 GETUPVAL                         R5 8
       32 GETTABLEKS                       R5 R5 K2 ["contexts"]
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K0 ["current"]
       40 SETTABLE                         R9 R10 R8
       41 FORGLOOP                         R5 2 ; [-5]
       43 GETUPVAL                         R5 8
       44 GETTABLEKS                       R5 R5 K3 ["actions"]
       46 LOADNIL                          R6
       47 LOADNIL                          R7
       48 FORGPREP                         R5
       49 GETUPVAL                         R10 1
       50 GETTABLEKS                       R10 R10 K0 ["current"]
       52 SETTABLE                         R9 R10 R8
       53 FORGLOOP                         R5 2 ; [-5]
       55 GETUPVAL                         R5 8
       56 GETTABLEKS                       R5 R5 K4 ["bindings"]
       58 LOADNIL                          R6
       59 LOADNIL                          R7
       60 FORGPREP                         R5
       61 GETUPVAL                         R10 2
       62 GETTABLEKS                       R10 R10 K0 ["current"]
       64 SETTABLE                         R9 R10 R8
       65 FORGLOOP                         R5 2 ; [-5]
       67 GETUPVAL                         R5 8
       68 GETTABLEKS                       R5 R5 K5 ["contextOrder"]
       70 LOADNIL                          R6
       71 LOADNIL                          R7
       72 FORGPREP                         R5
       73 GETUPVAL                         R11 3
       74 GETTABLEKS                       R11 R11 K0 ["current"]
       76 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       78 MOVE                             R12 R9
       79 GETIMPORT                        R10 K8 [table.insert]
       81 CALL                             R10 2 0
       82 FORGLOOP                         R5 2 ; [-10]
       84 GETUPVAL                         R5 9
       85 LOADB                            R6 1
       86 SETTABLEKS                       R6 R5 K0 ["current"]
       88 GETUPVAL                         R5 10
       89 GETTABLEKS                       R5 R5 K0 ["current"]
       91 GETIMPORT                        R7 K10 [table.clone]
       93 GETUPVAL                         R8 3
       94 GETTABLEKS                       R8 R8 K0 ["current"]
       96 CALL                             R7 1 -1
       97 NAMECALL                         R5 R5 K11 ["Fire"]
       99 CALL                             R5 -1 0
      100 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R2 ; [+46]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R5 R5 K0 ["current"]
        4 GETTABLE                         R4 R5 R1
        5 JUMPIFNOT                        R4 ; [+14]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["current"]
        9 SETTABLE                         R2 R4 R1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K0 ["current"]
       13 GETTABLE                         R4 R5 R1
       14 JUMPIFNOT                        R4 ; [+59]
       15 MOVE                             R7 R2
       16 NAMECALL                         R5 R4 K1 ["Fire"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["current"]
       23 SETTABLE                         R2 R4 R1
       24 GETUPVAL                         R4 2
       25 CALL                             R4 0 1
       26 JUMPIFNOT                        R4 ; [+4]
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 4
       32 SETTABLEKS                       R3 R4 K0 ["current"]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R4 R4 K0 ["current"]
       37 GETIMPORT                        R6 K4 [table.clone]
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K0 ["current"]
       42 CALL                             R6 1 -1
       43 NAMECALL                         R4 R4 K1 ["Fire"]
       45 CALL                             R4 -1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R4 2
       48 CALL                             R4 0 1
       49 JUMPIFNOT                        R4 ; [+4]
       50 GETUPVAL                         R4 3
       51 MOVE                             R5 R3
       52 CALL                             R4 1 0
       53 JUMP                             ; [+15]
       54 GETUPVAL                         R4 4
       55 SETTABLEKS                       R3 R4 K0 ["current"]
       57 GETUPVAL                         R4 5
       58 GETTABLEKS                       R4 R4 K0 ["current"]
       60 GETIMPORT                        R6 K4 [table.clone]
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R7 R7 K0 ["current"]
       65 CALL                             R6 1 -1
       66 NAMECALL                         R4 R4 K1 ["Fire"]
       68 CALL                             R4 -1 0
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K0 ["current"]
       72 LOADNIL                          R5
       73 SETTABLE                         R5 R4 R1
       74 RETURN                           R0 0

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

PROTO_31:
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

PROTO_32:
        0 GETTABLEKS                       R2 R1 K0 ["button"]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["current"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K2 ["Fire"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 SETTABLE                         R2 R3 R1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["current"]
        7 LOADB                            R4 1
        8 SETTABLE                         R4 R3 R1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["current"]
       12 GETTABLE                         R3 R4 R1
       13 JUMPIFNOT                        R3 ; [+4]
       14 MOVE                             R6 R2
       15 NAMECALL                         R4 R3 K1 ["Fire"]
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R1 R2 K0 ["current"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K0 ["current"]
       13 GETIMPORT                        R4 K3 [table.clone]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K0 ["current"]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R2 K4 ["Fire"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0

PROTO_35:
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
       24 GETUPVAL                         R0 6
       25 JUMPIFNOT                        R0 ; [+2]
       26 GETUPVAL                         R0 6
       27 CALL                             R0 0 0
       28 RETURN                           R0 0

PROTO_36:
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
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       16 CALL                             R0 3 2
       17 GETUPVAL                         R2 0
       18 LOADK                            R4 K2 ["ContextUpdated"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U12
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          UPVAL U13
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U11
       26 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       28 CALL                             R2 3 2
       29 GETUPVAL                         R4 0
       30 LOADK                            R6 K3 ["ActionUpdated"]
       31 NEWCLOSURE                       R7 P2
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          UPVAL U1
       35 NAMECALL                         R4 R4 K1 ["OnGuestEvent"]
       37 CALL                             R4 3 2
       38 GETUPVAL                         R6 0
       39 LOADK                            R8 K4 ["BindingUpdated"]
       40 NEWCLOSURE                       R9 P3
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U12
       43 NAMECALL                         R6 R6 K1 ["OnGuestEvent"]
       45 CALL                             R6 3 2
       46 GETUPVAL                         R8 0
       47 LOADK                            R10 K5 ["UpdateSelection"]
       48 NEWCLOSURE                       R11 P4
       49 CAPTURE                          UPVAL U14
       50 CAPTURE                          UPVAL U15
       51 NAMECALL                         R8 R8 K1 ["OnGuestEvent"]
       53 CALL                             R8 3 2
       54 GETUPVAL                         R10 0
       55 LOADK                            R12 K6 ["StateChange"]
       56 NEWCLOSURE                       R13 P5
       57 CAPTURE                          UPVAL U16
       58 CAPTURE                          UPVAL U17
       59 CAPTURE                          UPVAL U18
       60 NAMECALL                         R10 R10 K1 ["OnGuestEvent"]
       62 CALL                             R10 3 2
       63 GETUPVAL                         R12 0
       64 LOADK                            R14 K7 ["ContextOrderChanged"]
       65 NEWCLOSURE                       R15 P6
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U13
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U11
       70 NAMECALL                         R12 R12 K1 ["OnGuestEvent"]
       72 CALL                             R12 3 2
       73 NEWCLOSURE                       R14 P7
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R13
       81 RETURN                           R14 1

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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
      113 GETUPVAL                         R18 0
      114 GETTABLEKS                       R18 R18 K5 ["useRef"]
      116 LOADB                            R19 0
      117 CALL                             R18 1 1
      118 NEWCLOSURE                       R19 P0
      119 CAPTURE                          VAL R12
      120 NEWCLOSURE                       R20 P1
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R5
      123 NEWCLOSURE                       R21 P2
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R17
      126 NEWCLOSURE                       R22 P3
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R13
      130 NEWCLOSURE                       R23 P4
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R13
      134 GETUPVAL                         R24 0
      135 GETTABLEKS                       R24 R24 K7 ["useCallback"]
      137 NEWCLOSURE                       R25 P5
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R18
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R3
      151 NEWTABLE                         R26 0 1
      153 MOVE                             R27 R3
      154 SETLIST                          R26 R27 1 [1]
      156 CALL                             R24 2 1
      157 GETUPVAL                         R25 0
      158 GETTABLEKS                       R25 R25 K7 ["useCallback"]
      160 NEWCLOSURE                       R26 P6
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R18
      163 CAPTURE                          UPVAL U6
      164 CAPTURE                          UPVAL U7
      165 CAPTURE                          VAL R16
      166 NEWTABLE                         R27 0 0
      168 CALL                             R25 2 1
      169 GETUPVAL                         R26 0
      170 GETTABLEKS                       R26 R26 K8 ["useEffect"]
      172 NEWCLOSURE                       R27 P7
      173 CAPTURE                          VAL R24
      174 NEWTABLE                         R28 0 2
      176 MOVE                             R29 R1
      177 MOVE                             R30 R24
      178 SETLIST                          R28 R29 2 [1]
      180 CALL                             R26 2 0
      181 GETUPVAL                         R26 0
      182 GETTABLEKS                       R26 R26 K9 ["useMemo"]
      184 NEWCLOSURE                       R27 P8
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R12
      192 CAPTURE                          UPVAL U5
      193 CAPTURE                          VAL R15
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R16
      196 CAPTURE                          VAL R17
      197 NEWTABLE                         R28 0 1
      199 MOVE                             R29 R3
      200 SETLIST                          R28 R29 1 [1]
      202 CALL                             R26 2 1
      203 GETUPVAL                         R27 0
      204 GETTABLEKS                       R27 R27 K8 ["useEffect"]
      206 NEWCLOSURE                       R28 P9
      207 CAPTURE                          VAL R2
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R5
      212 CAPTURE                          VAL R10
      213 CAPTURE                          UPVAL U8
      214 CAPTURE                          VAL R4
      215 CAPTURE                          UPVAL U6
      216 CAPTURE                          UPVAL U7
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R12
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R17
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R13
      226 NEWTABLE                         R29 0 3
      228 MOVE                             R30 R3
      229 MOVE                             R31 R2
      230 MOVE                             R32 R4
      231 SETLIST                          R29 R30 3 [1]
      233 CALL                             R27 2 0
      234 GETUPVAL                         R27 0
      235 GETTABLEKS                       R27 R27 K8 ["useEffect"]
      237 NEWCLOSURE                       R28 P10
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R4
      241 NEWTABLE                         R29 0 2
      243 GETTABLEKS                       R30 R0 K10 ["pluginEnabled"]
      245 MOVE                             R31 R4
      246 SETLIST                          R29 R30 2 [1]
      248 CALL                             R27 2 0
      249 GETUPVAL                         R27 0
      250 GETTABLEKS                       R27 R27 K8 ["useEffect"]
      252 NEWCLOSURE                       R28 P11
      253 CAPTURE                          VAL R0
      254 CAPTURE                          VAL R10
      255 CAPTURE                          UPVAL U8
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R8
      258 CAPTURE                          VAL R4
      259 NEWTABLE                         R29 0 2
      261 GETTABLEKS                       R30 R0 K11 ["plugin"]
      263 MOVE                             R31 R4
      264 SETLIST                          R29 R30 2 [1]
      266 CALL                             R27 2 0
      267 GETUPVAL                         R27 0
      268 GETTABLEKS                       R27 R27 K12 ["createElement"]
      270 GETUPVAL                         R28 9
      271 GETTABLEKS                       R28 R28 K13 ["Provider"]
      273 DUPTABLE                         R29 K15 [{"value"}]
      274 SETTABLEKS                       R26 R29 K14 ["value"]
      276 GETTABLEKS                       R30 R0 K16 ["children"]
      278 CALL                             R27 3 -1
      279 RETURN                           R27 -1

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
       77 GETTABLEKS                       R10 R10 K16 ["Util"]
       79 GETTABLEKS                       R10 R10 K19 ["Constants"]
       81 GETTABLEKS                       R10 R10 K20 ["getDefaultPlayerScripts"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K10 ["Src"]
       88 GETTABLEKS                       R11 R11 K12 ["Contexts"]
       90 GETTABLEKS                       R11 R11 K21 ["DatamodelConfiguration"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R11 R0 K10 ["Src"]
       95 GETTABLEKS                       R11 R11 K22 ["Flags"]
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R11 K23 ["getFFlagIAMPlayerScripts"]
      101 CALL                             R12 1 1
      102 MOVE                             R13 R9
      103 CALL                             R13 0 1
      104 GETTABLEKS                       R14 R1 K24 ["createContext"]
      106 DUPTABLE                         R15 K40 [{"getContextOrder", "getContext", "getAction", "getBinding", "getActionState", "getSelection", "updateContext", "updateAction", "updateBinding", "duplicateContext", "duplicateAction", "subscribe", "subscribeStateChange", "onContextOrderChanged", "onSelectionChanged"}]
      107 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      109 LOADK                            R17 K25 ["getContextOrder"]
      110 CALL                             R16 1 1
      111 SETTABLEKS                       R16 R15 K25 ["getContextOrder"]
      113 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      115 LOADK                            R17 K26 ["getContext"]
      116 CALL                             R16 1 1
      117 SETTABLEKS                       R16 R15 K26 ["getContext"]
      119 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      121 LOADK                            R17 K27 ["getAction"]
      122 CALL                             R16 1 1
      123 SETTABLEKS                       R16 R15 K27 ["getAction"]
      125 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      127 LOADK                            R17 K28 ["getBinding"]
      128 CALL                             R16 1 1
      129 SETTABLEKS                       R16 R15 K28 ["getBinding"]
      131 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      133 LOADK                            R17 K29 ["getActionState"]
      134 CALL                             R16 1 1
      135 SETTABLEKS                       R16 R15 K29 ["getActionState"]
      137 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      139 LOADK                            R17 K30 ["getSelection"]
      140 CALL                             R16 1 1
      141 SETTABLEKS                       R16 R15 K30 ["getSelection"]
      143 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      145 LOADK                            R17 K31 ["updateContext"]
      146 CALL                             R16 1 1
      147 SETTABLEKS                       R16 R15 K31 ["updateContext"]
      149 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      151 LOADK                            R17 K32 ["updateAction"]
      152 CALL                             R16 1 1
      153 SETTABLEKS                       R16 R15 K32 ["updateAction"]
      155 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      157 LOADK                            R17 K33 ["updateBinding"]
      158 CALL                             R16 1 1
      159 SETTABLEKS                       R16 R15 K33 ["updateBinding"]
      161 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      163 LOADK                            R17 K34 ["duplicateContext"]
      164 CALL                             R16 1 1
      165 SETTABLEKS                       R16 R15 K34 ["duplicateContext"]
      167 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      169 LOADK                            R17 K35 ["duplicateAction"]
      170 CALL                             R16 1 1
      171 SETTABLEKS                       R16 R15 K35 ["duplicateAction"]
      173 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      175 LOADK                            R17 K36 ["subscribe"]
      176 CALL                             R16 1 1
      177 SETTABLEKS                       R16 R15 K36 ["subscribe"]
      179 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      181 LOADK                            R17 K37 ["subscribeStateChange"]
      182 CALL                             R16 1 1
      183 SETTABLEKS                       R16 R15 K37 ["subscribeStateChange"]
      185 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      187 LOADK                            R17 K38 ["onContextOrderChanged"]
      188 CALL                             R16 1 1
      189 SETTABLEKS                       R16 R15 K38 ["onContextOrderChanged"]
      191 GETTABLEKS                       R16 R2 K41 ["createUnimplemented"]
      193 LOADK                            R17 K39 ["onSelectionChanged"]
      194 CALL                             R16 1 1
      195 SETTABLEKS                       R16 R15 K39 ["onSelectionChanged"]
      197 CALL                             R14 1 1
      198 DUPCLOSURE                       R15 K42 [PROTO_41]
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R7
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R14
      209 DUPTABLE                         R16 K45 [{"Context", "Provider"}]
      210 SETTABLEKS                       R14 R16 K43 ["Context"]
      212 SETTABLEKS                       R15 R16 K44 ["Provider"]
      214 RETURN                           R16 1
