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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 GETUPVAL                         R3 4
        9 GETTABLEKS                       R3 R3 K0 ["current"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 GETUPVAL                         R0 5
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K0 ["current"]
       19 GETUPVAL                         R0 6
       20 NEWTABLE                         R1 0 0
       22 SETTABLEKS                       R1 R0 K0 ["current"]
       24 GETUPVAL                         R0 3
       25 NEWTABLE                         R1 0 0
       27 SETTABLEKS                       R1 R0 K0 ["current"]
       29 GETUPVAL                         R0 4
       30 NEWTABLE                         R1 0 0
       32 SETTABLEKS                       R1 R0 K0 ["current"]
       34 GETUPVAL                         R0 7
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K0 ["current"]
       38 GETUPVAL                         R0 8
       39 LOADB                            R1 0
       40 SETTABLEKS                       R1 R0 K0 ["current"]
       42 GETIMPORT                        R0 K3 [table.clear]
       44 GETUPVAL                         R1 9
       45 GETTABLEKS                       R1 R1 K0 ["current"]
       47 CALL                             R0 1 0
       48 GETIMPORT                        R0 K3 [table.clear]
       50 GETUPVAL                         R1 10
       51 GETTABLEKS                       R1 R1 K0 ["current"]
       53 CALL                             R0 1 0
       54 GETIMPORT                        R0 K3 [table.clear]
       56 GETUPVAL                         R1 11
       57 GETTABLEKS                       R1 R1 K0 ["current"]
       59 CALL                             R0 1 0
       60 GETIMPORT                        R0 K3 [table.clear]
       62 GETUPVAL                         R1 12
       63 GETTABLEKS                       R1 R1 K0 ["current"]
       65 CALL                             R0 1 0
       66 GETUPVAL                         R0 13
       67 GETTABLEKS                       R0 R0 K0 ["current"]
       69 GETIMPORT                        R2 K5 [table.clone]
       71 GETUPVAL                         R3 5
       72 GETTABLEKS                       R3 R3 K0 ["current"]
       74 CALL                             R2 1 -1
       75 NAMECALL                         R0 R0 K6 ["Fire"]
       77 CALL                             R0 -1 0
       78 GETUPVAL                         R0 7
       79 LOADNIL                          R1
       80 SETTABLEKS                       R1 R0 K0 ["current"]
       82 GETUPVAL                         R0 14
       83 GETTABLEKS                       R0 R0 K0 ["current"]
       85 LOADNIL                          R2
       86 NAMECALL                         R0 R0 K6 ["Fire"]
       88 CALL                             R0 2 0
       89 GETIMPORT                        R0 K9 [task.defer]
       91 NEWCLOSURE                       R1 P0
       92 CAPTURE                          UPVAL U15
       93 CALL                             R0 1 0
       94 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K3 ["current"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["current"]
       10 JUMPIFNOT                        R1 ; [+17]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["contextOrder"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K3 ["current"]
       20 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       22 MOVE                             R8 R5
       23 GETIMPORT                        R6 K6 [table.insert]
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 2 ; [-10]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K3 ["current"]
       31 GETIMPORT                        R3 K2 [table.clone]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K3 ["current"]
       36 CALL                             R3 1 -1
       37 NAMECALL                         R1 R1 K7 ["Fire"]
       39 CALL                             R1 -1 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R0 1
        6 GETIMPORT                        R1 K2 [next]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["current"]
       11 CALL                             R1 1 1
       12 JUMPIFEQKNIL                     R1 ; [+11]
       14 GETIMPORT                        R1 K2 [next]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K0 ["current"]
       19 CALL                             R1 1 1
       20 JUMPIFEQKNIL                     R1 ; [+2]
       22 LOADB                            R0 0 +1
       23 LOADB                            R0 1
       24 JUMPIFNOT                        R0 ; [+9]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K0 ["current"]
       28 JUMPIFEQKNIL                     R2 ; [+5]
       30 GETUPVAL                         R1 3
       31 GETTABLEKS                       R1 R1 K0 ["current"]
       33 JUMP                             ; [+8]
       34 GETUPVAL                         R1 4
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K0 ["current"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K0 ["current"]
       41 CALL                             R1 2 1
       42 NEWTABLE                         R2 0 0
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K0 ["current"]
       47 LOADNIL                          R4
       48 LOADNIL                          R5
       49 FORGPREP                         R3
       50 GETTABLE                         R9 R1 R6
       51 SUB                              R8 R9 R7
       52 SETTABLE                         R8 R2 R6
       53 FORGLOOP                         R3 2 ; [-4]
       55 GETUPVAL                         R3 5
       56 GETTABLEKS                       R3 R3 K3 ["statSchemaSupportChanged"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 0
       60 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateContext"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "context", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["context"]
        9 SETTABLEKS                       R2 R5 K3 ["appendRecording"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateAction"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "action", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["action"]
        9 SETTABLEKS                       R2 R5 K3 ["appendRecording"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["UpdateBinding"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K4 [{"uuid", "binding", "appendRecording"}]
        5 SETTABLEKS                       R0 R5 K1 ["uuid"]
        7 SETTABLEKS                       R1 R5 K2 ["binding"]
        9 SETTABLEKS                       R2 R5 K3 ["appendRecording"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DuplicateContext"]
        3 LOADNIL                          R2
        4 DUPTABLE                         R3 K2 [{"uuid"}]
        5 SETTABLEKS                       R0 R3 K1 ["uuid"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["DuplicateAction"]
        3 LOADNIL                          R2
        4 DUPTABLE                         R3 K2 [{"uuid"}]
        5 SETTABLEKS                       R0 R3 K1 ["uuid"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetSelection"]
        3 LOADNIL                          R2
        4 DUPTABLE                         R3 K2 [{"uuid"}]
        5 SETTABLEKS                       R0 R3 K1 ["uuid"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_30:
        0 DUPTABLE                         R0 K15 [{"getContextOrder", "getContext", "getAction", "getBinding", "getActionState", "updateContext", "updateAction", "updateBinding", "duplicateContext", "duplicateAction", "showInExplorer", "subscribe", "subscribeStateChange", "onContextOrderChanged", "onSelectionChanged"}]
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
       42 CAPTURE                          UPVAL U5
       43 SETTABLEKS                       R1 R0 K10 ["showInExplorer"]
       45 NEWCLOSURE                       R1 P11
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 SETTABLEKS                       R1 R0 K11 ["subscribe"]
       50 NEWCLOSURE                       R1 P12
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U7
       55 SETTABLEKS                       R1 R0 K12 ["subscribeStateChange"]
       57 NEWCLOSURE                       R1 P13
       58 CAPTURE                          UPVAL U10
       59 SETTABLEKS                       R1 R0 K13 ["onContextOrderChanged"]
       61 NEWCLOSURE                       R1 P14
       62 CAPTURE                          UPVAL U11
       63 SETTABLEKS                       R1 R0 K14 ["onSelectionChanged"]
       65 RETURN                           R0 1

PROTO_31:
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
       29 GETTABLEKS                       R5 R5 K2 ["contexts"]
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 FORGPREP                         R5
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R10 R10 K0 ["current"]
       37 SETTABLE                         R9 R10 R8
       38 FORGLOOP                         R5 2 ; [-5]
       40 GETUPVAL                         R5 7
       41 GETTABLEKS                       R5 R5 K3 ["actions"]
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 FORGPREP                         R5
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K0 ["current"]
       49 SETTABLE                         R9 R10 R8
       50 FORGLOOP                         R5 2 ; [-5]
       52 GETUPVAL                         R5 7
       53 GETTABLEKS                       R5 R5 K4 ["bindings"]
       55 LOADNIL                          R6
       56 LOADNIL                          R7
       57 FORGPREP                         R5
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R10 R10 K0 ["current"]
       61 SETTABLE                         R9 R10 R8
       62 FORGLOOP                         R5 2 ; [-5]
       64 GETUPVAL                         R5 7
       65 GETTABLEKS                       R5 R5 K5 ["contextOrder"]
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K0 ["current"]
       73 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       75 MOVE                             R12 R9
       76 GETIMPORT                        R10 K8 [table.insert]
       78 CALL                             R10 2 0
       79 FORGLOOP                         R5 2 ; [-10]
       81 GETUPVAL                         R5 8
       82 LOADB                            R6 1
       83 SETTABLEKS                       R6 R5 K0 ["current"]
       85 GETUPVAL                         R5 9
       86 GETTABLEKS                       R5 R5 K0 ["current"]
       88 GETIMPORT                        R7 K10 [table.clone]
       90 GETUPVAL                         R8 3
       91 GETTABLEKS                       R8 R8 K0 ["current"]
       93 CALL                             R7 1 -1
       94 NAMECALL                         R5 R5 K11 ["Fire"]
       96 CALL                             R5 -1 0
       97 RETURN                           R0 0

PROTO_32:
        0 JUMPIFNOT                        R2 ; [+27]
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
       14 JUMPIFNOT                        R4 ; [+21]
       15 MOVE                             R7 R2
       16 NAMECALL                         R5 R4 K1 ["Fire"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["current"]
       23 SETTABLE                         R2 R4 R1
       24 GETUPVAL                         R4 2
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["current"]
       34 LOADNIL                          R5
       35 SETTABLE                         R5 R4 R1
       36 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
        0 GETTABLEKS                       R2 R1 K0 ["button"]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["current"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K2 ["Fire"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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
       13 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       15 CALL                             R0 3 2
       16 GETUPVAL                         R2 0
       17 LOADK                            R4 K2 ["ContextUpdated"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          UPVAL U12
       22 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       24 CALL                             R2 3 2
       25 GETUPVAL                         R4 0
       26 LOADK                            R6 K3 ["ActionUpdated"]
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U11
       30 CAPTURE                          UPVAL U1
       31 NAMECALL                         R4 R4 K1 ["OnGuestEvent"]
       33 CALL                             R4 3 2
       34 GETUPVAL                         R6 0
       35 LOADK                            R8 K4 ["BindingUpdated"]
       36 NEWCLOSURE                       R9 P3
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U11
       39 NAMECALL                         R6 R6 K1 ["OnGuestEvent"]
       41 CALL                             R6 3 2
       42 GETUPVAL                         R8 0
       43 LOADK                            R10 K5 ["UpdateSelection"]
       44 NEWCLOSURE                       R11 P4
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U14
       47 NAMECALL                         R8 R8 K1 ["OnGuestEvent"]
       49 CALL                             R8 3 2
       50 GETUPVAL                         R10 0
       51 LOADK                            R12 K6 ["StateChange"]
       52 NEWCLOSURE                       R13 P5
       53 CAPTURE                          UPVAL U15
       54 CAPTURE                          UPVAL U16
       55 CAPTURE                          UPVAL U17
       56 NAMECALL                         R10 R10 K1 ["OnGuestEvent"]
       58 CALL                             R10 3 2
       59 GETUPVAL                         R12 0
       60 LOADK                            R14 K7 ["ContextOrderChanged"]
       61 NEWCLOSURE                       R15 P6
       62 CAPTURE                          UPVAL U12
       63 NAMECALL                         R12 R12 K1 ["OnGuestEvent"]
       65 CALL                             R12 3 2
       66 NEWCLOSURE                       R14 P7
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R13
       74 RETURN                           R14 1

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
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
       71 LOADNIL                          R12
       72 CALL                             R11 1 1
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K5 ["useRef"]
       76 LOADB                            R13 0
       77 CALL                             R12 1 1
       78 GETUPVAL                         R13 0
       79 GETTABLEKS                       R13 R13 K5 ["useRef"]
       81 NEWTABLE                         R14 0 0
       83 CALL                             R13 1 1
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R14 R14 K5 ["useRef"]
       87 NEWTABLE                         R15 0 0
       89 CALL                             R14 1 1
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R15 R15 K5 ["useRef"]
       93 NEWTABLE                         R16 0 0
       95 CALL                             R15 1 1
       96 GETUPVAL                         R16 0
       97 GETTABLEKS                       R16 R16 K5 ["useRef"]
       99 NEWTABLE                         R17 0 0
      101 CALL                             R16 1 1
      102 GETUPVAL                         R17 0
      103 GETTABLEKS                       R17 R17 K5 ["useRef"]
      105 GETUPVAL                         R18 5
      106 GETTABLEKS                       R18 R18 K6 ["new"]
      108 CALL                             R18 0 -1
      109 CALL                             R17 -1 1
      110 GETUPVAL                         R18 0
      111 GETTABLEKS                       R18 R18 K5 ["useRef"]
      113 GETUPVAL                         R19 5
      114 GETTABLEKS                       R19 R19 K6 ["new"]
      116 CALL                             R19 0 -1
      117 CALL                             R18 -1 1
      118 GETUPVAL                         R19 0
      119 GETTABLEKS                       R19 R19 K5 ["useRef"]
      121 LOADB                            R20 0
      122 CALL                             R19 1 1
      123 NEWCLOSURE                       R20 P0
      124 CAPTURE                          VAL R13
      125 NEWCLOSURE                       R21 P1
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R5
      128 NEWCLOSURE                       R22 P2
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R18
      131 NEWCLOSURE                       R23 P3
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R14
      135 NEWCLOSURE                       R24 P4
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R14
      139 GETUPVAL                         R25 0
      140 GETTABLEKS                       R25 R25 K7 ["useCallback"]
      142 NEWCLOSURE                       R26 P5
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          VAL R11
      145 CAPTURE                          UPVAL U7
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R3
      159 NEWTABLE                         R27 0 1
      161 MOVE                             R28 R3
      162 SETLIST                          R27 R28 1 [1]
      164 CALL                             R25 2 1
      165 GETUPVAL                         R26 0
      166 GETTABLEKS                       R26 R26 K7 ["useCallback"]
      168 NEWCLOSURE                       R27 P6
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R19
      171 CAPTURE                          UPVAL U8
      172 CAPTURE                          VAL R17
      173 NEWTABLE                         R28 0 0
      175 CALL                             R26 2 1
      176 GETUPVAL                         R27 6
      177 CALL                             R27 0 1
      178 JUMPIFNOT                        R27 ; [+13]
      179 GETUPVAL                         R27 0
      180 GETTABLEKS                       R27 R27 K8 ["useEffect"]
      182 NEWCLOSURE                       R28 P7
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R11
      187 CAPTURE                          UPVAL U7
      188 CAPTURE                          VAL R4
      189 NEWTABLE                         R29 0 0
      191 CALL                             R27 2 0
      192 GETUPVAL                         R27 0
      193 GETTABLEKS                       R27 R27 K8 ["useEffect"]
      195 NEWCLOSURE                       R28 P8
      196 CAPTURE                          VAL R25
      197 NEWTABLE                         R29 0 2
      199 MOVE                             R30 R1
      200 MOVE                             R31 R25
      201 SETLIST                          R29 R30 2 [1]
      203 CALL                             R27 2 0
      204 GETUPVAL                         R27 0
      205 GETTABLEKS                       R27 R27 K9 ["useMemo"]
      207 NEWCLOSURE                       R28 P9
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R13
      215 CAPTURE                          UPVAL U5
      216 CAPTURE                          VAL R16
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R18
      220 NEWTABLE                         R29 0 1
      222 MOVE                             R30 R3
      223 SETLIST                          R29 R30 1 [1]
      225 CALL                             R27 2 1
      226 GETUPVAL                         R28 0
      227 GETTABLEKS                       R28 R28 K8 ["useEffect"]
      229 NEWCLOSURE                       R29 P10
      230 CAPTURE                          VAL R2
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R7
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R10
      236 CAPTURE                          UPVAL U7
      237 CAPTURE                          VAL R4
      238 CAPTURE                          UPVAL U8
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R13
      242 CAPTURE                          VAL R26
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R18
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R14
      248 NEWTABLE                         R30 0 3
      250 MOVE                             R31 R3
      251 MOVE                             R32 R2
      252 MOVE                             R33 R4
      253 SETLIST                          R30 R31 3 [1]
      255 CALL                             R28 2 0
      256 GETUPVAL                         R28 0
      257 GETTABLEKS                       R28 R28 K8 ["useEffect"]
      259 NEWCLOSURE                       R29 P11
      260 CAPTURE                          VAL R0
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R4
      263 NEWTABLE                         R30 0 2
      265 GETTABLEKS                       R31 R0 K10 ["pluginEnabled"]
      267 MOVE                             R32 R4
      268 SETLIST                          R30 R31 2 [1]
      270 CALL                             R28 2 0
      271 GETUPVAL                         R28 6
      272 CALL                             R28 0 1
      273 JUMPIF                           R28 ; [+18]
      274 GETUPVAL                         R28 0
      275 GETTABLEKS                       R28 R28 K8 ["useEffect"]
      277 NEWCLOSURE                       R29 P12
      278 CAPTURE                          VAL R0
      279 CAPTURE                          VAL R10
      280 CAPTURE                          UPVAL U7
      281 CAPTURE                          VAL R7
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R4
      284 NEWTABLE                         R30 0 2
      286 GETTABLEKS                       R31 R0 K11 ["plugin"]
      288 MOVE                             R32 R4
      289 SETLIST                          R30 R31 2 [1]
      291 CALL                             R28 2 0
      292 GETUPVAL                         R28 0
      293 GETTABLEKS                       R28 R28 K12 ["createElement"]
      295 GETUPVAL                         R29 9
      296 GETTABLEKS                       R29 R29 K13 ["Provider"]
      298 DUPTABLE                         R30 K15 [{"value"}]
      299 SETTABLEKS                       R27 R30 K14 ["value"]
      301 GETTABLEKS                       R31 R0 K16 ["children"]
      303 CALL                             R28 3 -1
      304 RETURN                           R28 -1

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
       99 GETTABLEKS                       R13 R11 K23 ["getFFlagIAMFixCoverageDiffTelemetry"]
      101 CALL                             R12 1 1
      102 MOVE                             R13 R9
      103 CALL                             R13 0 1
      104 GETTABLEKS                       R14 R1 K24 ["createContext"]
      106 DUPTABLE                         R15 K41 [{"getContextOrder", "getContext", "getAction", "getBinding", "getActionState", "getSelection", "updateContext", "updateAction", "updateBinding", "duplicateContext", "duplicateAction", "showInExplorer", "subscribe", "subscribeStateChange", "onContextOrderChanged", "onSelectionChanged"}]
      107 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      109 LOADK                            R17 K25 ["getContextOrder"]
      110 CALL                             R16 1 1
      111 SETTABLEKS                       R16 R15 K25 ["getContextOrder"]
      113 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      115 LOADK                            R17 K26 ["getContext"]
      116 CALL                             R16 1 1
      117 SETTABLEKS                       R16 R15 K26 ["getContext"]
      119 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      121 LOADK                            R17 K27 ["getAction"]
      122 CALL                             R16 1 1
      123 SETTABLEKS                       R16 R15 K27 ["getAction"]
      125 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      127 LOADK                            R17 K28 ["getBinding"]
      128 CALL                             R16 1 1
      129 SETTABLEKS                       R16 R15 K28 ["getBinding"]
      131 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      133 LOADK                            R17 K29 ["getActionState"]
      134 CALL                             R16 1 1
      135 SETTABLEKS                       R16 R15 K29 ["getActionState"]
      137 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      139 LOADK                            R17 K30 ["getSelection"]
      140 CALL                             R16 1 1
      141 SETTABLEKS                       R16 R15 K30 ["getSelection"]
      143 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      145 LOADK                            R17 K31 ["updateContext"]
      146 CALL                             R16 1 1
      147 SETTABLEKS                       R16 R15 K31 ["updateContext"]
      149 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      151 LOADK                            R17 K32 ["updateAction"]
      152 CALL                             R16 1 1
      153 SETTABLEKS                       R16 R15 K32 ["updateAction"]
      155 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      157 LOADK                            R17 K33 ["updateBinding"]
      158 CALL                             R16 1 1
      159 SETTABLEKS                       R16 R15 K33 ["updateBinding"]
      161 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      163 LOADK                            R17 K34 ["duplicateContext"]
      164 CALL                             R16 1 1
      165 SETTABLEKS                       R16 R15 K34 ["duplicateContext"]
      167 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      169 LOADK                            R17 K35 ["duplicateAction"]
      170 CALL                             R16 1 1
      171 SETTABLEKS                       R16 R15 K35 ["duplicateAction"]
      173 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      175 LOADK                            R17 K36 ["showInExplorer"]
      176 CALL                             R16 1 1
      177 SETTABLEKS                       R16 R15 K36 ["showInExplorer"]
      179 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      181 LOADK                            R17 K37 ["subscribe"]
      182 CALL                             R16 1 1
      183 SETTABLEKS                       R16 R15 K37 ["subscribe"]
      185 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      187 LOADK                            R17 K38 ["subscribeStateChange"]
      188 CALL                             R16 1 1
      189 SETTABLEKS                       R16 R15 K38 ["subscribeStateChange"]
      191 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      193 LOADK                            R17 K39 ["onContextOrderChanged"]
      194 CALL                             R16 1 1
      195 SETTABLEKS                       R16 R15 K39 ["onContextOrderChanged"]
      197 GETTABLEKS                       R16 R2 K42 ["createUnimplemented"]
      199 LOADK                            R17 K40 ["onSelectionChanged"]
      200 CALL                             R16 1 1
      201 SETTABLEKS                       R16 R15 K40 ["onSelectionChanged"]
      203 CALL                             R14 1 1
      204 DUPCLOSURE                       R15 K43 [PROTO_44]
      205 CAPTURE                          VAL R1
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R5
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R14
      215 DUPTABLE                         R16 K46 [{"Context", "Provider"}]
      216 SETTABLEKS                       R14 R16 K44 ["Context"]
      218 SETTABLEKS                       R15 R16 K45 ["Provider"]
      220 RETURN                           R16 1
