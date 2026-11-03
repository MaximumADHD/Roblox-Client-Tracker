PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ALL"]
        3 JUMPIFEQ                         R1 R2 ; [+5]
        5 GETTABLEKS                       R2 R0 K1 ["identity"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+3]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 LOADB                            R2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["FOCUSED"]
       15 JUMPIFNOTEQ                      R1 R3 ; [+3]
       17 GETTABLEKS                       R2 R0 K3 ["isFocused"]
       19 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.find]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETIMPORT                        R3 K4 [table.remove]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R2
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      3
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 LOADK                            R5 K0 ["%* requires a target id for %*"]
        6 MOVE                             R7 R0
        7 MOVE                             R8 R1
        8 NAMECALL                         R5 R5 K1 ["format"]
       10 CALL                             R5 3 1
       11 FASTCALL2                        ASSERT R4 R5 ; [+3]
       13 GETIMPORT                        R3 K3 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R4 0
       17 DUPTABLE                         R5 K8 [{"kind", "key", "toId", "args"}]
       18 SETTABLEKS                       R0 R5 K4 ["kind"]
       20 SETTABLEKS                       R1 R5 K5 ["key"]
       22 SETTABLEKS                       R2 R5 K6 ["toId"]
       24 GETIMPORT                        R6 K11 [table.pack]
       26 GETVARARGS                       R7 -1
       27 CALL                             R6 -1 1
       28 SETTABLEKS                       R6 R5 K7 ["args"]
       30 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       32 GETIMPORT                        R3 K13 [table.insert]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETIMPORT                        R2 K2 [table.find]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETIMPORT                        R3 K4 [table.remove]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 SETTABLE                         R3 R4 R1
        7 DUPTABLE                         R4 K2 [{"endpoint", "callback"}]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K0 ["endpoint"]
       11 SETTABLEKS                       R2 R4 K1 ["callback"]
       13 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       15 MOVE                             R6 R3
       16 MOVE                             R7 R4
       17 GETIMPORT                        R5 K5 [table.insert]
       19 CALL                             R5 2 0
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 RETURN                           R5 1

PROTO_5:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["Fire"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 GETVARARGS                       R7 -1
        8 CALL                             R3 -1 0
        9 GETIMPORT                        R3 K3 [table.clone]
       11 GETUPVAL                         R5 2
       12 GETTABLE                         R4 R5 R1
       13 JUMPIF                           R4 ; [+2]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R3 1 1
       17 MOVE                             R4 R3
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLEKS                       R10 R8 K4 ["endpoint"]
       23 GETUPVAL                         R11 3
       24 GETTABLEKS                       R11 R11 K5 ["ALL"]
       26 JUMPIFEQ                         R2 R11 ; [+5]
       28 GETTABLEKS                       R11 R10 K6 ["identity"]
       30 JUMPIFNOTEQ                      R2 R11 ; [+3]
       32 LOADB                            R9 1
       33 JUMP                             ; [+8]
       34 LOADB                            R9 0
       35 GETUPVAL                         R11 3
       36 GETTABLEKS                       R11 R11 K7 ["FOCUSED"]
       38 JUMPIFNOTEQ                      R2 R11 ; [+3]
       40 GETTABLEKS                       R9 R10 K8 ["isFocused"]
       42 JUMPIFNOT                        R9 ; [+9]
       43 GETIMPORT                        R9 K11 [task.spawn]
       45 GETTABLEKS                       R10 R8 K12 ["callback"]
       47 GETUPVAL                         R11 4
       48 GETTABLEKS                       R11 R11 K6 ["identity"]
       50 GETVARARGS                       R12 -1
       51 CALL                             R9 -1 0
       52 FORGLOOP                         R4 2 ; [-32]
       54 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETIMPORT                        R2 K2 [table.find]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETIMPORT                        R3 K4 [table.remove]
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 SETTABLE                         R3 R4 R1
        7 MOVE                             R4 R3
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R11 R8 K0 ["endpoint"]
       13 GETUPVAL                         R12 1
       14 JUMPIFNOTEQ                      R11 R12 ; [+2]
       16 LOADB                            R10 0 +1
       17 LOADB                            R10 1
       18 LOADK                            R11 K1 ["Invoke connection for key %* already exists"]
       19 MOVE                             R13 R1
       20 NAMECALL                         R11 R11 K2 ["format"]
       22 CALL                             R11 2 1
       23 FASTCALL2                        ASSERT R10 R11 ; [+3]
       25 GETIMPORT                        R9 K4 [assert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 ; [-18]
       30 DUPTABLE                         R4 K6 [{"endpoint", "callback"}]
       31 GETUPVAL                         R5 1
       32 SETTABLEKS                       R5 R4 K0 ["endpoint"]
       34 SETTABLEKS                       R2 R4 K5 ["callback"]
       36 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       38 MOVE                             R6 R3
       39 MOVE                             R7 R4
       40 GETIMPORT                        R5 K9 [table.insert]
       42 CALL                             R5 2 0
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1

PROTO_8:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["InvokeAsync"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 GETVARARGS                       R7 -1
        8 CALL                             R3 -1 0
        9 GETUPVAL                         R4 2
       10 GETTABLE                         R3 R4 R1
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R10 R8 K1 ["endpoint"]
       20 GETUPVAL                         R11 3
       21 GETTABLEKS                       R11 R11 K2 ["ALL"]
       23 JUMPIFEQ                         R2 R11 ; [+5]
       25 GETTABLEKS                       R11 R10 K3 ["identity"]
       27 JUMPIFNOTEQ                      R2 R11 ; [+3]
       29 LOADB                            R9 1
       30 JUMP                             ; [+8]
       31 LOADB                            R9 0
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K4 ["FOCUSED"]
       35 JUMPIFNOTEQ                      R2 R11 ; [+3]
       37 GETTABLEKS                       R9 R10 K5 ["isFocused"]
       39 JUMPIFNOT                        R9 ; [+29]
       40 GETIMPORT                        R9 K8 [table.pack]
       42 GETIMPORT                        R10 K10 [pcall]
       44 GETTABLEKS                       R11 R8 K11 ["callback"]
       46 GETUPVAL                         R12 4
       47 GETTABLEKS                       R12 R12 K3 ["identity"]
       49 GETVARARGS                       R13 -1
       50 CALL                             R10 -1 -1
       51 CALL                             R9 -1 1
       52 GETTABLEN                        R10 R9 1
       53 JUMPIF                           R10 ; [+5]
       54 GETIMPORT                        R10 K13 [error]
       56 GETTABLEN                        R11 R9 2
       57 LOADN                            R12 0
       58 CALL                             R10 2 0
       59 LOADN                            R12 2
       60 GETTABLEKS                       R13 R9 K14 ["n"]
       62 FASTCALL3                        TABLE_UNPACK R9 R12 R13
       64 MOVE                             R11 R9
       65 GETIMPORT                        R10 K16 [table.unpack]
       67 CALL                             R10 3 -1
       68 RETURN                           R10 -1
       69 FORGLOOP                         R4 2 ; [-52]
       71 GETIMPORT                        R4 K13 [error]
       73 LOADK                            R5 K17 ["Network action %* sent to %* failed - Target is not reachable"]
       74 MOVE                             R7 R1
       75 MOVE                             R8 R2
       76 NAMECALL                         R5 R5 K18 ["format"]
       78 CALL                             R5 3 1
       79 LOADN                            R6 0
       80 CALL                             R4 2 0
       81 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["identity"]
        3 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LENGTH                           R8 R5
        5 LOADN                            R6 1
        6 LOADN                            R7 -1
        7 FORNPREP                         R6
        8 GETTABLE                         R9 R5 R8
        9 GETTABLEKS                       R9 R9 K0 ["endpoint"]
       11 GETUPVAL                         R10 1
       12 JUMPIFNOTEQ                      R9 R10 ; [+6]
       14 GETIMPORT                        R9 K3 [table.remove]
       16 MOVE                             R10 R5
       17 MOVE                             R11 R8
       18 CALL                             R9 2 0
       19 FORNLOOP                         R6
       20 FORGLOOP                         R1 2 ; [-17]
       22 GETUPVAL                         R1 2
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 FORGPREP                         R1
       26 LENGTH                           R8 R5
       27 LOADN                            R6 1
       28 LOADN                            R7 -1
       29 FORNPREP                         R6
       30 GETTABLE                         R9 R5 R8
       31 GETTABLEKS                       R9 R9 K0 ["endpoint"]
       33 GETUPVAL                         R10 1
       34 JUMPIFNOTEQ                      R9 R10 ; [+6]
       36 GETIMPORT                        R9 K3 [table.remove]
       38 MOVE                             R10 R5
       39 MOVE                             R11 R8
       40 CALL                             R9 2 0
       41 FORNLOOP                         R6
       42 FORGLOOP                         R1 2 ; [-17]
       44 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["key"]
        8 JUMPIFNOTEQ                      R7 R0 ; [+9]
       10 GETTABLEKS                       R9 R6 K1 ["toId"]
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K4 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["isFocused"]
        3 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K2 [{"identity", "isFocused"}]
        5 GETTABLEKS                       R3 R1 K0 ["identity"]
        7 JUMPIF                           R3 ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["Identity"]
       11 GETTABLEKS                       R3 R3 K4 ["Edit"]
       13 SETTABLEKS                       R3 R2 K0 ["identity"]
       15 GETTABLEKS                       R4 R1 K1 ["isFocused"]
       17 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K1 ["isFocused"]
       23 NEWTABLE                         R3 0 0
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R3
       27 DUPTABLE                         R5 K11 [{"OnFire", "Fire", "OnInvoke", "InvokeAsync", "GetIdentity", "Destroy"}]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R6 R5 K5 ["OnFire"]
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R6 R5 K6 ["Fire"]
       41 NEWCLOSURE                       R6 P3
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R6 R5 K7 ["OnInvoke"]
       46 NEWCLOSURE                       R6 P4
       47 CAPTURE                          VAL R4
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R6 R5 K8 ["InvokeAsync"]
       54 NEWCLOSURE                       R6 P5
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R6 R5 K9 ["GetIdentity"]
       58 NEWCLOSURE                       R6 P6
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U3
       62 SETTABLEKS                       R6 R5 K10 ["Destroy"]
       64 DUPTABLE                         R6 K16 [{"calls", "targetsFor", "clear", "setFocused"}]
       65 SETTABLEKS                       R3 R6 K12 ["calls"]
       67 NEWCLOSURE                       R7 P7
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R7 R6 K13 ["targetsFor"]
       71 NEWCLOSURE                       R7 P8
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R7 R6 K14 ["clear"]
       75 NEWCLOSURE                       R7 P9
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R7 R6 K15 ["setFocused"]
       79 RETURN                           R5 2

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 DUPCLOSURE                       R2 K0 [PROTO_0]
        5 CAPTURE                          UPVAL U0
        6 DUPCLOSURE                       R3 K1 [PROTO_1]
        7 NEWCLOSURE                       R4 P2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 DUPTABLE                         R5 K3 [{"endpoint"}]
       13 SETTABLEKS                       R4 R5 K2 ["endpoint"]
       15 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R1 R1 K0 ["endpoint"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K10 [{["Fire"] = "Fire", ["InvokeAsync"] = "InvokeAsync"}]
       15 DUPCLOSURE                       R4 K11 [PROTO_15]
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 DUPCLOSURE                       R5 K12 [PROTO_16]
       19 CAPTURE                          VAL R4
       20 DUPTABLE                         R6 K16 [{"CallKind", "create", "createBus"}]
       21 SETTABLEKS                       R3 R6 K13 ["CallKind"]
       23 SETTABLEKS                       R5 R6 K14 ["create"]
       25 SETTABLEKS                       R4 R6 K15 ["createBus"]
       27 RETURN                           R6 1
