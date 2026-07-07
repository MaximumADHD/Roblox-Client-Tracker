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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 RETURN                           R2 1

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
        0 DUPTABLE                         R0 K10 [{"getContextOrder", "getContext", "getAction", "getBinding", "updateContext", "updateAction", "updateBinding", "subscribe", "onContextOrderChanged", "onSelectionChanged"}]
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
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R1 R0 K7 ["subscribe"]
       34 NEWCLOSURE                       R1 P8
       35 CAPTURE                          UPVAL U7
       36 SETTABLEKS                       R1 R0 K8 ["onContextOrderChanged"]
       38 NEWCLOSURE                       R1 P9
       39 CAPTURE                          UPVAL U8
       40 SETTABLEKS                       R1 R0 K9 ["onSelectionChanged"]
       42 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R5 0
        1 SETTABLEKS                       R1 R5 K0 ["current"]
        3 GETUPVAL                         R5 1
        4 SETTABLEKS                       R2 R5 K0 ["current"]
        6 GETUPVAL                         R5 2
        7 SETTABLEKS                       R3 R5 K0 ["current"]
        9 GETUPVAL                         R5 3
       10 SETTABLEKS                       R4 R5 K0 ["current"]
       12 GETUPVAL                         R5 4
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+16]
       15 GETUPVAL                         R5 5
       16 GETTABLEKS                       R5 R5 K0 ["current"]
       18 JUMPIF                           R5 ; [+12]
       19 GETUPVAL                         R5 6
       20 MOVE                             R6 R2
       21 MOVE                             R7 R3
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 5
       24 SETTABLEKS                       R5 R6 K0 ["current"]
       26 GETUPVAL                         R6 7
       27 GETTABLEKS                       R6 R6 K1 ["statSchemaSupport"]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 0
       31 GETUPVAL                         R5 8
       32 GETTABLEKS                       R5 R5 K0 ["current"]
       34 GETIMPORT                        R7 K4 [table.clone]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K0 ["current"]
       39 CALL                             R7 1 -1
       40 NAMECALL                         R5 R5 K5 ["Fire"]
       42 CALL                             R5 -1 0
       43 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["button"]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K1 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["current"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K2 ["Fire"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       12 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       14 CALL                             R0 3 2
       15 GETUPVAL                         R2 0
       16 LOADK                            R4 K2 ["ContextUpdated"]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U10
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U11
       22 CAPTURE                          UPVAL U9
       23 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       25 CALL                             R2 3 2
       26 GETUPVAL                         R4 0
       27 LOADK                            R6 K3 ["ActionUpdated"]
       28 NEWCLOSURE                       R7 P2
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U10
       31 CAPTURE                          UPVAL U1
       32 NAMECALL                         R4 R4 K1 ["OnGuestEvent"]
       34 CALL                             R4 3 2
       35 GETUPVAL                         R6 0
       36 LOADK                            R8 K4 ["BindingUpdated"]
       37 NEWCLOSURE                       R9 P3
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U10
       40 NAMECALL                         R6 R6 K1 ["OnGuestEvent"]
       42 CALL                             R6 3 2
       43 GETUPVAL                         R8 0
       44 LOADK                            R10 K5 ["UpdateSelection"]
       45 NEWCLOSURE                       R11 P4
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 NAMECALL                         R8 R8 K1 ["OnGuestEvent"]
       50 CALL                             R8 3 2
       51 GETUPVAL                         R10 11
       52 GETTABLEKS                       R10 R10 K6 ["Request"]
       54 CALL                             R10 0 0
       55 NEWCLOSURE                       R10 P5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R9
       61 RETURN                           R10 1

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K0 ["useContext"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K1 ["Context"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K0 ["useContext"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K1 ["Context"]
       25 CALL                             R3 1 1
       26 GETUPVAL                         R5 5
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K0 ["useContext"]
       32 GETUPVAL                         R5 6
       33 GETTABLEKS                       R5 R5 K1 ["Context"]
       35 CALL                             R4 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R4
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K2 ["useRef"]
       41 NEWTABLE                         R6 0 0
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K2 ["useRef"]
       47 NEWTABLE                         R7 0 0
       49 CALL                             R6 1 1
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K2 ["useRef"]
       53 NEWTABLE                         R8 0 0
       55 CALL                             R7 1 1
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K2 ["useRef"]
       59 NEWTABLE                         R9 0 0
       61 CALL                             R8 1 1
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K2 ["useRef"]
       65 CALL                             R9 0 1
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K2 ["useRef"]
       69 LOADNIL                          R11
       70 CALL                             R10 1 1
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K2 ["useRef"]
       74 LOADB                            R12 0
       75 CALL                             R11 1 1
       76 GETUPVAL                         R12 1
       77 GETTABLEKS                       R12 R12 K2 ["useRef"]
       79 NEWTABLE                         R13 0 0
       81 CALL                             R12 1 1
       82 GETUPVAL                         R13 1
       83 GETTABLEKS                       R13 R13 K2 ["useRef"]
       85 GETUPVAL                         R14 7
       86 GETTABLEKS                       R14 R14 K3 ["new"]
       88 CALL                             R14 0 -1
       89 CALL                             R13 -1 1
       90 GETUPVAL                         R14 1
       91 GETTABLEKS                       R14 R14 K2 ["useRef"]
       93 GETUPVAL                         R15 7
       94 GETTABLEKS                       R15 R15 K3 ["new"]
       96 CALL                             R15 0 -1
       97 CALL                             R14 -1 1
       98 NEWCLOSURE                       R15 P0
       99 CAPTURE                          VAL R12
      100 NEWCLOSURE                       R16 P1
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R5
      103 NEWCLOSURE                       R17 P2
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R14
      106 GETUPVAL                         R18 1
      107 GETTABLEKS                       R18 R18 K4 ["useCallback"]
      109 NEWCLOSURE                       R19 P3
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R3
      119 NEWTABLE                         R20 0 1
      121 MOVE                             R21 R3
      122 SETLIST                          R20 R21 1 [1]
      124 CALL                             R18 2 1
      125 GETUPVAL                         R19 0
      126 CALL                             R19 0 1
      127 JUMPIFNOT                        R19 ; [+12]
      128 GETUPVAL                         R19 1
      129 GETTABLEKS                       R19 R19 K5 ["useEffect"]
      131 NEWCLOSURE                       R20 P4
      132 CAPTURE                          VAL R18
      133 NEWTABLE                         R21 0 2
      135 MOVE                             R22 R1
      136 MOVE                             R23 R18
      137 SETLIST                          R21 R22 2 [1]
      139 CALL                             R19 2 0
      140 GETUPVAL                         R19 1
      141 GETTABLEKS                       R19 R19 K6 ["useMemo"]
      143 NEWCLOSURE                       R20 P5
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R12
      150 CAPTURE                          UPVAL U7
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R14
      153 NEWTABLE                         R21 0 1
      155 MOVE                             R22 R3
      156 SETLIST                          R21 R22 1 [1]
      158 CALL                             R19 2 1
      159 GETUPVAL                         R20 1
      160 GETTABLEKS                       R20 R20 K5 ["useEffect"]
      162 NEWCLOSURE                       R21 P6
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R5
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          VAL R10
      170 CAPTURE                          UPVAL U8
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R14
      177 NEWTABLE                         R22 0 3
      179 MOVE                             R23 R3
      180 MOVE                             R24 R2
      181 MOVE                             R25 R4
      182 SETLIST                          R22 R23 3 [1]
      184 CALL                             R20 2 0
      185 GETUPVAL                         R20 5
      186 CALL                             R20 0 1
      187 JUMPIFNOT                        R20 ; [+33]
      188 GETUPVAL                         R20 1
      189 GETTABLEKS                       R20 R20 K5 ["useEffect"]
      191 NEWCLOSURE                       R21 P7
      192 CAPTURE                          VAL R0
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R4
      195 NEWTABLE                         R22 0 2
      197 GETTABLEKS                       R23 R0 K7 ["pluginEnabled"]
      199 MOVE                             R24 R4
      200 SETLIST                          R22 R23 2 [1]
      202 CALL                             R20 2 0
      203 GETUPVAL                         R20 1
      204 GETTABLEKS                       R20 R20 K5 ["useEffect"]
      206 NEWCLOSURE                       R21 P8
      207 CAPTURE                          VAL R0
      208 CAPTURE                          VAL R10
      209 CAPTURE                          UPVAL U8
      210 CAPTURE                          VAL R7
      211 CAPTURE                          VAL R8
      212 CAPTURE                          VAL R4
      213 NEWTABLE                         R22 0 2
      215 GETTABLEKS                       R23 R0 K8 ["plugin"]
      217 MOVE                             R24 R4
      218 SETLIST                          R22 R23 2 [1]
      220 CALL                             R20 2 0
      221 GETUPVAL                         R20 1
      222 GETTABLEKS                       R20 R20 K9 ["createElement"]
      224 GETUPVAL                         R21 9
      225 GETTABLEKS                       R21 R21 K10 ["Provider"]
      227 DUPTABLE                         R22 K12 [{"value"}]
      228 SETTABLEKS                       R19 R22 K11 ["value"]
      230 GETTABLEKS                       R23 R0 K13 ["children"]
      232 CALL                             R20 3 -1
      233 RETURN                           R20 -1

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
       88 GETTABLEKS                       R12 R10 K21 ["getFFlagIAMTelemetry"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K5 [require]
       93 GETTABLEKS                       R13 R10 K22 ["getFFlagIAMFocusedDatamodelChanged"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R13 R1 K23 ["createContext"]
       98 DUPTABLE                         R14 K35 [{"getContextOrder", "getContext", "getAction", "getBinding", "getSelection", "updateContext", "updateAction", "updateBinding", "subscribe", "onContextOrderChanged", "onSelectionChanged"}]
       99 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      101 LOADK                            R16 K24 ["getContextOrder"]
      102 CALL                             R15 1 1
      103 SETTABLEKS                       R15 R14 K24 ["getContextOrder"]
      105 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      107 LOADK                            R16 K25 ["getContext"]
      108 CALL                             R15 1 1
      109 SETTABLEKS                       R15 R14 K25 ["getContext"]
      111 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      113 LOADK                            R16 K26 ["getAction"]
      114 CALL                             R15 1 1
      115 SETTABLEKS                       R15 R14 K26 ["getAction"]
      117 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      119 LOADK                            R16 K27 ["getBinding"]
      120 CALL                             R15 1 1
      121 SETTABLEKS                       R15 R14 K27 ["getBinding"]
      123 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      125 LOADK                            R16 K28 ["getSelection"]
      126 CALL                             R15 1 1
      127 SETTABLEKS                       R15 R14 K28 ["getSelection"]
      129 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      131 LOADK                            R16 K29 ["updateContext"]
      132 CALL                             R15 1 1
      133 SETTABLEKS                       R15 R14 K29 ["updateContext"]
      135 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      137 LOADK                            R16 K30 ["updateAction"]
      138 CALL                             R15 1 1
      139 SETTABLEKS                       R15 R14 K30 ["updateAction"]
      141 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      143 LOADK                            R16 K31 ["updateBinding"]
      144 CALL                             R15 1 1
      145 SETTABLEKS                       R15 R14 K31 ["updateBinding"]
      147 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      149 LOADK                            R16 K32 ["subscribe"]
      150 CALL                             R15 1 1
      151 SETTABLEKS                       R15 R14 K32 ["subscribe"]
      153 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      155 LOADK                            R16 K33 ["onContextOrderChanged"]
      156 CALL                             R15 1 1
      157 SETTABLEKS                       R15 R14 K33 ["onContextOrderChanged"]
      159 GETTABLEKS                       R15 R2 K36 ["createUnimplemented"]
      161 LOADK                            R16 K34 ["onSelectionChanged"]
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K34 ["onSelectionChanged"]
      165 CALL                             R13 1 1
      166 DUPCLOSURE                       R14 K37 [PROTO_30]
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R13
      177 DUPTABLE                         R15 K40 [{"Context", "Provider"}]
      178 SETTABLEKS                       R13 R15 K38 ["Context"]
      180 SETTABLEKS                       R14 R15 K39 ["Provider"]
      182 RETURN                           R15 1
