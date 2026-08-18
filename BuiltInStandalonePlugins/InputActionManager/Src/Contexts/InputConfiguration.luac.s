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
       31 GETTABLEKS                       R0 R0 K0 ["current"]
       33 GETIMPORT                        R2 K5 [table.clone]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K0 ["current"]
       38 CALL                             R2 1 -1
       39 NAMECALL                         R0 R0 K6 ["Fire"]
       41 CALL                             R0 -1 0
       42 GETUPVAL                         R0 4
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K0 ["current"]
       46 GETUPVAL                         R0 7
       47 GETTABLEKS                       R0 R0 K0 ["current"]
       49 LOADNIL                          R2
       50 NAMECALL                         R0 R0 K6 ["Fire"]
       52 CALL                             R0 2 0
       53 GETUPVAL                         R0 8
       54 GETTABLEKS                       R0 R0 K7 ["Request"]
       56 CALL                             R0 0 0
       57 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UpdateContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"uuid", "context"}]
        5 SETTABLEKS                       R0 R4 K1 ["uuid"]
        7 SETTABLEKS                       R1 R4 K2 ["context"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UpdateAction"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"uuid", "action"}]
        5 SETTABLEKS                       R0 R4 K1 ["uuid"]
        7 SETTABLEKS                       R1 R4 K2 ["action"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["UpdateBinding"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K3 [{"uuid", "binding"}]
        5 SETTABLEKS                       R0 R4 K1 ["uuid"]
        7 SETTABLEKS                       R1 R4 K2 ["binding"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

PROTO_20:
        0 DUPTABLE                         R0 K12 [{"getContextOrder", "getContext", "getAction", "getBinding", "updateContext", "updateAction", "updateBinding", "duplicateContext", "duplicateAction", "subscribe", "onContextOrderChanged", "onSelectionChanged"}]
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
       19 SETTABLEKS                       R1 R0 K4 ["updateContext"]
       21 NEWCLOSURE                       R1 P5
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R1 R0 K5 ["updateAction"]
       25 NEWCLOSURE                       R1 P6
       26 CAPTURE                          UPVAL U4
       27 SETTABLEKS                       R1 R0 K6 ["updateBinding"]
       29 NEWCLOSURE                       R1 P7
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U4
       32 SETTABLEKS                       R1 R0 K7 ["duplicateContext"]
       34 NEWCLOSURE                       R1 P8
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U4
       37 SETTABLEKS                       R1 R0 K8 ["duplicateAction"]
       39 NEWCLOSURE                       R1 P9
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 SETTABLEKS                       R1 R0 K9 ["subscribe"]
       44 NEWCLOSURE                       R1 P10
       45 CAPTURE                          UPVAL U8
       46 SETTABLEKS                       R1 R0 K10 ["onContextOrderChanged"]
       48 NEWCLOSURE                       R1 P11
       49 CAPTURE                          UPVAL U9
       50 SETTABLEKS                       R1 R0 K11 ["onSelectionChanged"]
       52 RETURN                           R0 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETTABLEKS                       R2 R1 K0 ["button"]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["current"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K2 ["Fire"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_26:
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
       20 RETURN                           R0 0

PROTO_27:
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
       50 GETUPVAL                         R10 10
       51 GETTABLEKS                       R10 R10 K6 ["Request"]
       53 CALL                             R10 0 0
       54 NEWCLOSURE                       R10 P5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R9
       60 RETURN                           R10 1

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K2 ["useRef"]
       31 NEWTABLE                         R6 0 0
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K2 ["useRef"]
       37 NEWTABLE                         R7 0 0
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K2 ["useRef"]
       43 NEWTABLE                         R8 0 0
       45 CALL                             R7 1 1
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K2 ["useRef"]
       49 NEWTABLE                         R9 0 0
       51 CALL                             R8 1 1
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K2 ["useRef"]
       55 CALL                             R9 0 1
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K2 ["useRef"]
       59 LOADNIL                          R11
       60 CALL                             R10 1 1
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K2 ["useRef"]
       64 LOADB                            R12 0
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K2 ["useRef"]
       69 NEWTABLE                         R13 0 0
       71 CALL                             R12 1 1
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K2 ["useRef"]
       75 GETUPVAL                         R14 5
       76 GETTABLEKS                       R14 R14 K3 ["new"]
       78 CALL                             R14 0 -1
       79 CALL                             R13 -1 1
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R14 R14 K2 ["useRef"]
       83 GETUPVAL                         R15 5
       84 GETTABLEKS                       R15 R15 K3 ["new"]
       86 CALL                             R15 0 -1
       87 CALL                             R14 -1 1
       88 NEWCLOSURE                       R15 P0
       89 CAPTURE                          VAL R12
       90 NEWCLOSURE                       R16 P1
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R5
       93 NEWCLOSURE                       R17 P2
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R14
       96 GETUPVAL                         R18 0
       97 GETTABLEKS                       R18 R18 K4 ["useCallback"]
       99 NEWCLOSURE                       R19 P3
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R3
      109 NEWTABLE                         R20 0 1
      111 MOVE                             R21 R3
      112 SETLIST                          R20 R21 1 [1]
      114 CALL                             R18 2 1
      115 GETUPVAL                         R19 0
      116 GETTABLEKS                       R19 R19 K5 ["useEffect"]
      118 NEWCLOSURE                       R20 P4
      119 CAPTURE                          VAL R18
      120 NEWTABLE                         R21 0 2
      122 MOVE                             R22 R1
      123 MOVE                             R23 R18
      124 SETLIST                          R21 R22 2 [1]
      126 CALL                             R19 2 0
      127 GETUPVAL                         R19 0
      128 GETTABLEKS                       R19 R19 K6 ["useMemo"]
      130 NEWCLOSURE                       R20 P5
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R3
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          VAL R12
      138 CAPTURE                          UPVAL U5
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R14
      141 NEWTABLE                         R21 0 1
      143 MOVE                             R22 R3
      144 SETLIST                          R21 R22 1 [1]
      146 CALL                             R19 2 1
      147 GETUPVAL                         R20 0
      148 GETTABLEKS                       R20 R20 K5 ["useEffect"]
      150 NEWCLOSURE                       R21 P6
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R10
      157 CAPTURE                          UPVAL U7
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R14
      164 NEWTABLE                         R22 0 3
      166 MOVE                             R23 R3
      167 MOVE                             R24 R2
      168 MOVE                             R25 R4
      169 SETLIST                          R22 R23 3 [1]
      171 CALL                             R20 2 0
      172 GETUPVAL                         R20 0
      173 GETTABLEKS                       R20 R20 K5 ["useEffect"]
      175 NEWCLOSURE                       R21 P7
      176 CAPTURE                          VAL R0
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R4
      179 NEWTABLE                         R22 0 2
      181 GETTABLEKS                       R23 R0 K7 ["pluginEnabled"]
      183 MOVE                             R24 R4
      184 SETLIST                          R22 R23 2 [1]
      186 CALL                             R20 2 0
      187 GETUPVAL                         R20 0
      188 GETTABLEKS                       R20 R20 K5 ["useEffect"]
      190 NEWCLOSURE                       R21 P8
      191 CAPTURE                          VAL R0
      192 CAPTURE                          VAL R10
      193 CAPTURE                          UPVAL U7
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R4
      197 NEWTABLE                         R22 0 2
      199 GETTABLEKS                       R23 R0 K8 ["plugin"]
      201 MOVE                             R24 R4
      202 SETLIST                          R22 R23 2 [1]
      204 CALL                             R20 2 0
      205 GETUPVAL                         R20 0
      206 GETTABLEKS                       R20 R20 K9 ["createElement"]
      208 GETUPVAL                         R21 8
      209 GETTABLEKS                       R21 R21 K10 ["Provider"]
      211 DUPTABLE                         R22 K12 [{"value"}]
      212 SETTABLEKS                       R19 R22 K11 ["value"]
      214 GETTABLEKS                       R23 R0 K13 ["children"]
      216 CALL                             R20 3 -1
      217 RETURN                           R20 -1

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
       41 GETTABLEKS                       R6 R6 K13 ["DatamodelConfiguration"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K14 ["Guest"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K12 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K15 ["Networking"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K12 ["Contexts"]
       68 GETTABLEKS                       R9 R9 K16 ["Telemetry"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K17 ["Util"]
       77 GETTABLEKS                       R10 R10 K18 ["Binding"]
       79 GETTABLEKS                       R10 R10 K19 ["getBindingCoverage"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R0 K10 ["Src"]
       84 GETTABLEKS                       R10 R10 K20 ["Flags"]
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R10 K21 ["getFFlagIAMDuplicate"]
       90 CALL                             R11 1 1
       91 GETTABLEKS                       R12 R1 K22 ["createContext"]
       93 DUPTABLE                         R13 K36 [{"getContextOrder", "getContext", "getAction", "getBinding", "getSelection", "updateContext", "updateAction", "updateBinding", "duplicateContext", "duplicateAction", "subscribe", "onContextOrderChanged", "onSelectionChanged"}]
       94 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
       96 LOADK                            R15 K23 ["getContextOrder"]
       97 CALL                             R14 1 1
       98 SETTABLEKS                       R14 R13 K23 ["getContextOrder"]
      100 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      102 LOADK                            R15 K24 ["getContext"]
      103 CALL                             R14 1 1
      104 SETTABLEKS                       R14 R13 K24 ["getContext"]
      106 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      108 LOADK                            R15 K25 ["getAction"]
      109 CALL                             R14 1 1
      110 SETTABLEKS                       R14 R13 K25 ["getAction"]
      112 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      114 LOADK                            R15 K26 ["getBinding"]
      115 CALL                             R14 1 1
      116 SETTABLEKS                       R14 R13 K26 ["getBinding"]
      118 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      120 LOADK                            R15 K27 ["getSelection"]
      121 CALL                             R14 1 1
      122 SETTABLEKS                       R14 R13 K27 ["getSelection"]
      124 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      126 LOADK                            R15 K28 ["updateContext"]
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K28 ["updateContext"]
      130 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      132 LOADK                            R15 K29 ["updateAction"]
      133 CALL                             R14 1 1
      134 SETTABLEKS                       R14 R13 K29 ["updateAction"]
      136 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      138 LOADK                            R15 K30 ["updateBinding"]
      139 CALL                             R14 1 1
      140 SETTABLEKS                       R14 R13 K30 ["updateBinding"]
      142 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      144 LOADK                            R15 K31 ["duplicateContext"]
      145 CALL                             R14 1 1
      146 SETTABLEKS                       R14 R13 K31 ["duplicateContext"]
      148 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      150 LOADK                            R15 K32 ["duplicateAction"]
      151 CALL                             R14 1 1
      152 SETTABLEKS                       R14 R13 K32 ["duplicateAction"]
      154 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      156 LOADK                            R15 K33 ["subscribe"]
      157 CALL                             R14 1 1
      158 SETTABLEKS                       R14 R13 K33 ["subscribe"]
      160 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      162 LOADK                            R15 K34 ["onContextOrderChanged"]
      163 CALL                             R14 1 1
      164 SETTABLEKS                       R14 R13 K34 ["onContextOrderChanged"]
      166 GETTABLEKS                       R14 R2 K37 ["createUnimplemented"]
      168 LOADK                            R15 K35 ["onSelectionChanged"]
      169 CALL                             R14 1 1
      170 SETTABLEKS                       R14 R13 K35 ["onSelectionChanged"]
      172 CALL                             R12 1 1
      173 DUPCLOSURE                       R13 K38 [PROTO_32]
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R12
      183 DUPTABLE                         R14 K41 [{"Context", "Provider"}]
      184 SETTABLEKS                       R12 R14 K39 ["Context"]
      186 SETTABLEKS                       R13 R14 K40 ["Provider"]
      188 RETURN                           R14 1
