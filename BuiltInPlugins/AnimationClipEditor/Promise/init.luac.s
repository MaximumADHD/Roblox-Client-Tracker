PROTO_0:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 MOVE                             R1 R0
        8 NEWTABLE                         R2 0 0
       10 GETVARARGS                       R3 -1
       11 SETLIST                          R2 R3 -1 [1]
       13 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 2
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R1
        8 GETUPVAL                         R4 0
        9 GETIMPORT                        R5 K1 [xpcall]
       11 MOVE                             R6 R3
       12 GETIMPORT                        R7 K4 [debug.traceback]
       14 CALL                             R5 2 -1
       15 CALL                             R4 -1 2
       16 RETURN                           R4 2

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 2
        5 GETTABLEN                        R2 R1 1
        6 JUMPIFNOT                        R2 ; [+11]
        7 GETUPVAL                         R3 2
        8 LOADN                            R6 2
        9 FASTCALL3                        TABLE_UNPACK R1 R6 R0
       11 MOVE                             R5 R1
       12 MOVE                             R7 R0
       13 GETIMPORT                        R4 K1 [unpack]
       15 CALL                             R4 3 -1
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 3
       19 LOADN                            R6 2
       20 FASTCALL3                        TABLE_UNPACK R1 R6 R0
       22 MOVE                             R5 R1
       23 MOVE                             R7 R0
       24 GETIMPORT                        R4 K1 [unpack]
       26 CALL                             R4 3 -1
       27 CALL                             R3 -1 0
       28 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

PROTO_5:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R0 K0 ["Symbol(%s)"]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R0 R0 K1 ["format"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["createSymbol requires `name` to be a string."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K7 [newproxy]
       17 LOADB                            R2 1
       18 CALL                             R1 1 1
       19 FASTCALL1                        GETMETATABLE R1 ; [+3]
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K9 [getmetatable]
       23 CALL                             R2 1 1
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R3 R2 K10 ["__tostring"]
       28 RETURN                           R1 1

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_reject"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 8 0
        2 GETIMPORT                        R2 K2 [debug.traceback]
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K3 ["_source"]
        7 GETUPVAL                         R2 0
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R1 R2
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Status"]
       13 GETTABLEKS                       R2 R2 K5 ["Started"]
       15 SETTABLEKS                       R2 R1 K6 ["_status"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K7 ["_values"]
       20 LOADN                            R2 255
       21 SETTABLEKS                       R2 R1 K8 ["_valuesLength"]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K9 ["_unhandledRejection"]
       26 NEWTABLE                         R2 0 0
       28 SETTABLEKS                       R2 R1 K10 ["_queuedResolve"]
       30 NEWTABLE                         R2 0 0
       32 SETTABLEKS                       R2 R1 K11 ["_queuedReject"]
       34 GETUPVAL                         R4 1
       35 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       37 MOVE                             R3 R1
       38 GETIMPORT                        R2 K13 [setmetatable]
       40 CALL                             R2 2 0
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          VAL R1
       43 NEWCLOSURE                       R3 P1
       44 CAPTURE                          VAL R1
       45 GETUPVAL                         R4 2
       46 MOVE                             R5 R0
       47 MOVE                             R6 R2
       48 MOVE                             R7 R3
       49 CALL                             R4 3 2
       50 GETTABLEN                        R6 R5 1
       51 GETTABLEN                        R7 R5 2
       52 JUMPIF                           R6 ; [+12]
       53 GETTABLEKS                       R8 R1 K6 ["_status"]
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R9 R9 K4 ["Status"]
       58 GETTABLEKS                       R9 R9 K5 ["Started"]
       60 JUMPIFNOTEQ                      R8 R9 ; [+4]
       62 MOVE                             R8 R3
       63 MOVE                             R9 R7
       64 CALL                             R8 1 0
       65 RETURN                           R1 1

PROTO_11:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_13:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_15:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 1
        3 SETTABLE                         R2 R1 R0
        4 GETUPVAL                         R2 1
        5 ADDK                             R1 R2 K0 [1]
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 LENGTH                           R2 R3
       10 JUMPIFNOTEQ                      R1 R2 ; [+4]
       12 GETUPVAL                         R1 3
       13 GETUPVAL                         R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_16:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          REF R3
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 LOADN                            R7 1
        9 GETUPVAL                         R8 0
       10 LENGTH                           R5 R8
       11 LOADN                            R6 1
       12 FORNPREP                         R5
       13 GETUPVAL                         R9 0
       14 GETTABLE                         R8 R9 R7
       15 NEWCLOSURE                       R10 P1
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R7
       18 NEWCLOSURE                       R11 P2
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R8 R8 K0 ["andThen"]
       22 CALL                             R8 3 0
       23 FORNLOOP                         R5
       24 CLOSEUPVALS                      R3
       25 RETURN                           R0 0

PROTO_19:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+6]
        7 GETIMPORT                        R1 K4 [error]
        9 LOADK                            R2 K5 ["Please pass a list of promises to Promise.all"]
       10 LOADN                            R3 2
       11 CALL                             R1 2 0
       12 LENGTH                           R1 R0
       13 JUMPIFNOTEQKN                    R1 K6 [0] ; [+8]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K7 ["resolve"]
       18 NEWTABLE                         R2 0 0
       20 CALL                             R1 1 -1
       21 RETURN                           R1 -1
       22 LOADN                            R3 1
       23 LENGTH                           R1 R0
       24 LOADN                            R2 1
       25 FORNPREP                         R1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K8 ["is"]
       29 GETTABLE                         R5 R0 R3
       30 CALL                             R4 1 1
       31 JUMPIF                           R4 ; [+9]
       32 GETIMPORT                        R4 K4 [error]
       34 LOADK                            R5 K9 ["Non-promise value passed into Promise.all at index #%d"]
       35 MOVE                             R7 R3
       36 NAMECALL                         R5 R5 K10 ["format"]
       38 CALL                             R5 2 1
       39 LOADN                            R6 2
       40 CALL                             R4 2 0
       41 FORNLOOP                         R1
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K11 ["new"]
       45 NEWCLOSURE                       R2 P0
       46 CAPTURE                          VAL R0
       47 CALL                             R1 1 -1
       48 RETURN                           R1 -1

PROTO_20:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETUPVAL                         R3 0
       10 GETTABLE                         R2 R0 R3
       11 JUMPIFEQKB                       R2 TRUE ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 RETURN                           R1 1

PROTO_22:
        0 MOVE                             R2 R0
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R3 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 MOVE                             R3 R1
       10 GETUPVAL                         R4 2
       11 JUMPIFNOT                        R4 ; [+6]
       12 GETUPVAL                         R4 2
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K0 ["_status"]
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K1 ["Status"]
       24 GETTABLEKS                       R5 R5 K2 ["Started"]
       26 JUMPIFNOTEQ                      R4 R5 ; [+20]
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K3 ["_queuedResolve"]
       31 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       33 MOVE                             R6 R2
       34 GETIMPORT                        R4 K6 [table.insert]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R5 R5 K7 ["_queuedReject"]
       40 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       42 MOVE                             R6 R3
       43 GETIMPORT                        R4 K6 [table.insert]
       45 CALL                             R4 2 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R4 R4 K0 ["_status"]
       50 GETUPVAL                         R5 4
       51 GETTABLEKS                       R5 R5 K1 ["Status"]
       53 GETTABLEKS                       R5 R5 K8 ["Resolved"]
       55 JUMPIFNOTEQ                      R4 R5 ; [+15]
       57 MOVE                             R4 R2
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K9 ["_values"]
       61 LOADN                            R7 1
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K10 ["_valuesLength"]
       65 FASTCALL                         TABLE_UNPACK ; [+2]
       66 GETIMPORT                        R5 K12 [unpack]
       68 CALL                             R5 3 -1
       69 CALL                             R4 -1 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R4 3
       72 GETTABLEKS                       R4 R4 K0 ["_status"]
       74 GETUPVAL                         R5 4
       75 GETTABLEKS                       R5 R5 K1 ["Status"]
       77 GETTABLEKS                       R5 R5 K13 ["Rejected"]
       79 JUMPIFNOTEQ                      R4 R5 ; [+14]
       81 MOVE                             R4 R3
       82 GETUPVAL                         R6 3
       83 GETTABLEKS                       R6 R6 K9 ["_values"]
       85 LOADN                            R7 1
       86 GETUPVAL                         R8 3
       87 GETTABLEKS                       R8 R8 K10 ["_valuesLength"]
       89 FASTCALL                         TABLE_UNPACK ; [+2]
       90 GETIMPORT                        R5 K12 [unpack]
       92 CALL                             R5 3 -1
       93 CALL                             R4 -1 0
       94 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R3 0
        1 SETTABLEKS                       R3 R0 K0 ["_unhandledRejection"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["new"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CALL                             R3 1 -1
       13 RETURN                           R3 -1

PROTO_24:
        0 LOADNIL                          R4
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K0 ["andThen"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_25:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 2
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 2
        4 SETUPVAL                         R0 0
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R0 3
        7 LOADB                            R2 1
        8 NAMECALL                         R0 R0 K0 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_26:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 2
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 2
        4 SETUPVAL                         R0 0
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R0 3
        7 LOADB                            R2 0
        8 NAMECALL                         R0 R0 K0 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_27:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_unhandledRejection"]
        3 GETTABLEKS                       R1 R0 K1 ["_status"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["Status"]
        8 GETTABLEKS                       R2 R2 K3 ["Started"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+40]
       12 LOADNIL                          R1
       13 LOADNIL                          R2
       14 GETIMPORT                        R3 K6 [Instance.new]
       16 LOADK                            R4 K7 ["BindableEvent"]
       17 CALL                             R3 1 1
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          REF R2
       20 CAPTURE                          REF R1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R3
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          REF R2
       25 CAPTURE                          REF R1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R4 R0 K8 ["andThen"]
       30 CALL                             R4 3 0
       31 GETTABLEKS                       R4 R3 K9 ["Event"]
       33 NAMECALL                         R4 R4 K10 ["Wait"]
       35 CALL                             R4 1 1
       36 NAMECALL                         R5 R3 K11 ["Destroy"]
       38 CALL                             R5 1 0
       39 MOVE                             R5 R4
       40 LOADN                            R8 1
       41 FASTCALL3                        TABLE_UNPACK R1 R8 R2
       43 MOVE                             R7 R1
       44 MOVE                             R9 R2
       45 GETIMPORT                        R6 K13 [unpack]
       47 CALL                             R6 3 -1
       48 CLOSEUPVALS                      R1
       49 RETURN                           R5 -1
       50 CLOSEUPVALS                      R1
       51 GETTABLEKS                       R1 R0 K1 ["_status"]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K2 ["Status"]
       56 GETTABLEKS                       R2 R2 K14 ["Resolved"]
       58 JUMPIFNOTEQ                      R1 R2 ; [+12]
       60 LOADB                            R1 1
       61 GETTABLEKS                       R3 R0 K15 ["_values"]
       63 LOADN                            R4 1
       64 GETTABLEKS                       R5 R0 K16 ["_valuesLength"]
       66 FASTCALL                         TABLE_UNPACK ; [+2]
       67 GETIMPORT                        R2 K13 [unpack]
       69 CALL                             R2 3 -1
       70 RETURN                           R1 -1
       71 GETTABLEKS                       R1 R0 K1 ["_status"]
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K2 ["Status"]
       76 GETTABLEKS                       R2 R2 K17 ["Rejected"]
       78 JUMPIFNOTEQ                      R1 R2 ; [+12]
       80 LOADB                            R1 0
       81 GETTABLEKS                       R3 R0 K15 ["_values"]
       83 LOADN                            R4 1
       84 GETTABLEKS                       R5 R0 K16 ["_valuesLength"]
       86 FASTCALL                         TABLE_UNPACK ; [+2]
       87 GETIMPORT                        R2 K13 [unpack]
       89 CALL                             R2 3 -1
       90 RETURN                           R1 -1
       91 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["Started"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+6]
        9 GETIMPORT                        R1 K4 [error]
       11 LOADK                            R2 K5 ["Promise has not resolved or rejected."]
       12 LOADN                            R3 2
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["_status"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["Status"]
       19 GETTABLEKS                       R3 R3 K6 ["Resolved"]
       21 JUMPIFEQ                         R2 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 MOVE                             R2 R1
       26 GETTABLEKS                       R4 R0 K7 ["_values"]
       28 LOADN                            R5 1
       29 GETTABLEKS                       R6 R0 K8 ["_valuesLength"]
       31 FASTCALL                         TABLE_UNPACK ; [+2]
       32 GETIMPORT                        R3 K10 [unpack]
       34 CALL                             R3 3 -1
       35 RETURN                           R2 -1

PROTO_29:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_30:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_reject"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_31:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_status"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Status"]
        6 GETTABLEKS                       R2 R2 K2 ["Started"]
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["is"]
       14 GETVARARGS                       R2 1
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+28]
       17 LOADK                            R2 K4 ["#"]
       18 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       19 GETIMPORT                        R1 K6 [select]
       21 GETVARARGS                       R3 -1
       22 CALL                             R1 -1 1
       23 LOADN                            R2 1
       24 JUMPIFNOTLT                      R2 R1 ; [+11]
       26 LOADK                            R1 K7 ["When returning a Promise from andThen, extra arguments are discarded! See:\n\n%s"]
       27 GETTABLEKS                       R3 R0 K8 ["_source"]
       29 NAMECALL                         R1 R1 K9 ["format"]
       31 CALL                             R1 2 1
       32 GETIMPORT                        R2 K11 [warn]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 GETVARARGS                       R1 1
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          VAL R0
       39 NEWCLOSURE                       R4 P1
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R1 R1 K12 ["andThen"]
       43 CALL                             R1 3 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K1 ["Status"]
       48 GETTABLEKS                       R1 R1 K13 ["Resolved"]
       50 SETTABLEKS                       R1 R0 K0 ["_status"]
       52 GETUPVAL                         R1 1
       53 GETVARARGS                       R2 -1
       54 CALL                             R1 -1 2
       55 SETTABLEKS                       R1 R0 K14 ["_valuesLength"]
       57 SETTABLEKS                       R2 R0 K15 ["_values"]
       59 GETIMPORT                        R1 K17 [ipairs]
       61 GETTABLEKS                       R2 R0 K18 ["_queuedResolve"]
       63 CALL                             R1 1 3
       64 FORGPREP_INEXT                   R1
       65 MOVE                             R6 R5
       66 GETVARARGS                       R7 -1
       67 CALL                             R6 -1 0
       68 FORGLOOP                         R1 2 [inext] ; [-4]
       70 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_unhandledRejection"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADK                            R0 K1 ["Unhandled promise rejection:\n\n%s\n\n%s"]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["_source"]
       10 NAMECALL                         R0 R0 K3 ["format"]
       12 CALL                             R0 3 1
       13 GETIMPORT                        R1 K5 [warn]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_33:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_status"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Status"]
        6 GETTABLEKS                       R2 R2 K2 ["Started"]
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["Status"]
       14 GETTABLEKS                       R1 R1 K3 ["Rejected"]
       16 SETTABLEKS                       R1 R0 K0 ["_status"]
       18 GETUPVAL                         R1 1
       19 GETVARARGS                       R2 -1
       20 CALL                             R1 -1 2
       21 SETTABLEKS                       R1 R0 K4 ["_valuesLength"]
       23 SETTABLEKS                       R2 R0 K5 ["_values"]
       25 GETTABLEKS                       R2 R0 K6 ["_queuedReject"]
       27 GETIMPORT                        R3 K8 [next]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 JUMPIFEQKNIL                     R3 ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 JUMPIF                           R1 ; [+12]
       36 GETIMPORT                        R1 K10 [ipairs]
       38 GETTABLEKS                       R2 R0 K6 ["_queuedReject"]
       40 CALL                             R1 1 3
       41 FORGPREP_INEXT                   R1
       42 MOVE                             R6 R5
       43 GETVARARGS                       R7 -1
       44 CALL                             R6 -1 0
       45 FORGLOOP                         R1 2 [inext] ; [-4]
       47 RETURN                           R0 0
       48 LOADB                            R1 1
       49 SETTABLEKS                       R1 R0 K11 ["_unhandledRejection"]
       51 GETVARARGS                       R2 1
       52 FASTCALL1                        TOSTRING R2 ; [+2]
       53 GETIMPORT                        R1 K13 [tostring]
       55 CALL                             R1 1 1
       56 GETIMPORT                        R2 K15 [spawn]
       58 NEWCLOSURE                       R3 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 CALL                             R2 1 0
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_2]
        3 CAPTURE                          VAL R0
        4 DUPCLOSURE                       R2 K2 [PROTO_4]
        5 CAPTURE                          VAL R1
        6 DUPCLOSURE                       R3 K3 [PROTO_5]
        7 DUPCLOSURE                       R4 K4 [PROTO_7]
        8 LOADB                            R7 1
        9 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       11 LOADK                            R8 K5 ["createSymbol requires `name` to be a string."]
       12 GETIMPORT                        R6 K7 [assert]
       14 CALL                             R6 2 0
       15 GETIMPORT                        R6 K9 [newproxy]
       17 LOADB                            R7 1
       18 CALL                             R6 1 1
       19 FASTCALL1                        GETMETATABLE R6 ; [+3]
       20 MOVE                             R8 R6
       21 GETIMPORT                        R7 K11 [getmetatable]
       23 CALL                             R7 1 1
       24 LOADK                            R9 K12 ["PromiseMarker"]
       25 NEWCLOSURE                       R8 P5
       26 CAPTURE                          VAL R9
       27 SETTABLEKS                       R8 R7 K13 ["__tostring"]
       29 MOVE                             R5 R6
       30 NEWTABLE                         R6 8 0
       32 NEWTABLE                         R7 0 0
       34 SETTABLEKS                       R7 R6 K14 ["prototype"]
       36 GETTABLEKS                       R7 R6 K14 ["prototype"]
       38 SETTABLEKS                       R7 R6 K15 ["__index"]
       40 DUPTABLE                         R7 K19 [{"Started", "Resolved", "Rejected"}]
       41 LOADB                            R10 1
       42 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       44 LOADK                            R11 K5 ["createSymbol requires `name` to be a string."]
       45 GETIMPORT                        R9 K7 [assert]
       47 CALL                             R9 2 0
       48 GETIMPORT                        R9 K9 [newproxy]
       50 LOADB                            R10 1
       51 CALL                             R9 1 1
       52 FASTCALL1                        GETMETATABLE R9 ; [+3]
       53 MOVE                             R11 R9
       54 GETIMPORT                        R10 K11 [getmetatable]
       56 CALL                             R10 1 1
       57 LOADK                            R12 K16 ["Started"]
       58 NEWCLOSURE                       R11 P5
       59 CAPTURE                          VAL R12
       60 SETTABLEKS                       R11 R10 K13 ["__tostring"]
       62 MOVE                             R8 R9
       63 SETTABLEKS                       R8 R7 K16 ["Started"]
       65 LOADB                            R10 1
       66 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       68 LOADK                            R11 K5 ["createSymbol requires `name` to be a string."]
       69 GETIMPORT                        R9 K7 [assert]
       71 CALL                             R9 2 0
       72 GETIMPORT                        R9 K9 [newproxy]
       74 LOADB                            R10 1
       75 CALL                             R9 1 1
       76 FASTCALL1                        GETMETATABLE R9 ; [+3]
       77 MOVE                             R11 R9
       78 GETIMPORT                        R10 K11 [getmetatable]
       80 CALL                             R10 1 1
       81 LOADK                            R12 K17 ["Resolved"]
       82 NEWCLOSURE                       R11 P5
       83 CAPTURE                          VAL R12
       84 SETTABLEKS                       R11 R10 K13 ["__tostring"]
       86 MOVE                             R8 R9
       87 SETTABLEKS                       R8 R7 K17 ["Resolved"]
       89 LOADB                            R10 1
       90 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       92 LOADK                            R11 K5 ["createSymbol requires `name` to be a string."]
       93 GETIMPORT                        R9 K7 [assert]
       95 CALL                             R9 2 0
       96 GETIMPORT                        R9 K9 [newproxy]
       98 LOADB                            R10 1
       99 CALL                             R9 1 1
      100 FASTCALL1                        GETMETATABLE R9 ; [+3]
      101 MOVE                             R11 R9
      102 GETIMPORT                        R10 K11 [getmetatable]
      104 CALL                             R10 1 1
      105 LOADK                            R12 K18 ["Rejected"]
      106 NEWCLOSURE                       R11 P5
      107 CAPTURE                          VAL R12
      108 SETTABLEKS                       R11 R10 K13 ["__tostring"]
      110 MOVE                             R8 R9
      111 SETTABLEKS                       R8 R7 K18 ["Rejected"]
      113 SETTABLEKS                       R7 R6 K20 ["Status"]
      115 DUPCLOSURE                       R7 K21 [PROTO_10]
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R7 R6 K22 ["new"]
      121 DUPCLOSURE                       R7 K23 [PROTO_12]
      122 CAPTURE                          VAL R6
      123 SETTABLEKS                       R7 R6 K24 ["resolve"]
      125 DUPCLOSURE                       R7 K25 [PROTO_14]
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R7 R6 K26 ["reject"]
      129 DUPCLOSURE                       R7 K27 [PROTO_19]
      130 CAPTURE                          VAL R6
      131 SETTABLEKS                       R7 R6 K28 ["all"]
      133 DUPCLOSURE                       R7 K29 [PROTO_20]
      134 CAPTURE                          VAL R5
      135 SETTABLEKS                       R7 R6 K30 ["is"]
      137 DUPCLOSURE                       R7 K31 [PROTO_21]
      138 GETTABLEKS                       R8 R6 K14 ["prototype"]
      140 SETTABLEKS                       R7 R8 K32 ["getStatus"]
      142 DUPCLOSURE                       R7 K33 [PROTO_23]
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R1
      145 GETTABLEKS                       R8 R6 K14 ["prototype"]
      147 SETTABLEKS                       R7 R8 K34 ["andThen"]
      149 DUPCLOSURE                       R7 K35 [PROTO_24]
      150 GETTABLEKS                       R8 R6 K14 ["prototype"]
      152 SETTABLEKS                       R7 R8 K36 ["catch"]
      154 DUPCLOSURE                       R7 K37 [PROTO_27]
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R0
      157 GETTABLEKS                       R8 R6 K14 ["prototype"]
      159 SETTABLEKS                       R7 R8 K38 ["await"]
      161 DUPCLOSURE                       R7 K39 [PROTO_28]
      162 CAPTURE                          VAL R6
      163 GETTABLEKS                       R8 R6 K14 ["prototype"]
      165 SETTABLEKS                       R7 R8 K40 ["_unwrap"]
      167 DUPCLOSURE                       R7 K41 [PROTO_31]
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R0
      170 GETTABLEKS                       R8 R6 K14 ["prototype"]
      172 SETTABLEKS                       R7 R8 K42 ["_resolve"]
      174 DUPCLOSURE                       R7 K43 [PROTO_33]
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R0
      177 GETTABLEKS                       R8 R6 K14 ["prototype"]
      179 SETTABLEKS                       R7 R8 K44 ["_reject"]
      181 RETURN                           R6 1
