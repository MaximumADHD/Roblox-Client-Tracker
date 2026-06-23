PROTO_0:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 1
        3 GETIMPORT                        R2 K1 [pcall]
        5 MOVE                             R3 R0
        6 GETVARARGS                       R4 -1
        7 CALL                             R2 -1 -1
        8 SETLIST                          R1 R2 -1 [1]
       10 GETTABLEN                        R2 R1 1
       11 JUMPIF                           R2 ; [+4]
       12 GETIMPORT                        R2 K3 [warn]
       14 GETTABLEN                        R3 R1 2
       15 CALL                             R2 1 0
       16 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K5 [unpack]
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 -1
        7 SETLIST                          R0 R1 -1 [1]
        9 GETIMPORT                        R1 K2 [table.remove]
       11 MOVE                             R2 R0
       12 LOADN                            R3 1
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+8]
       15 GETUPVAL                         R2 2
       16 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K4 [unpack]
       20 CALL                             R3 1 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 3
       24 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       25 MOVE                             R4 R0
       26 GETIMPORT                        R3 K4 [unpack]
       28 CALL                             R3 1 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_reject"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K7 [{"_source", "_type", "_status", "_value", "_queuedResolve", "_queuedReject", "_unhandledRejection"}]
        1 GETIMPORT                        R2 K10 [debug.traceback]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["_source"]
        6 LOADK                            R2 K11 ["Promise"]
        7 SETTABLEKS                       R2 R1 K1 ["_type"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K12 ["Status"]
       12 GETTABLEKS                       R2 R2 K13 ["Started"]
       14 SETTABLEKS                       R2 R1 K2 ["_status"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K3 ["_value"]
       19 NEWTABLE                         R2 0 0
       21 SETTABLEKS                       R2 R1 K4 ["_queuedResolve"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K5 ["_queuedReject"]
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K6 ["_unhandledRejection"]
       30 GETUPVAL                         R4 0
       31 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K15 [setmetatable]
       36 CALL                             R2 2 0
       37 NEWCLOSURE                       R2 P0
       38 CAPTURE                          VAL R1
       39 NEWCLOSURE                       R3 P1
       40 CAPTURE                          VAL R1
       41 GETUPVAL                         R4 1
       42 MOVE                             R5 R0
       43 MOVE                             R6 R2
       44 MOVE                             R7 R3
       45 CALL                             R4 3 2
       46 JUMPIF                           R4 ; [+12]
       47 GETTABLEKS                       R6 R1 K2 ["_status"]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K12 ["Status"]
       52 GETTABLEKS                       R7 R7 K13 ["Started"]
       54 JUMPIFNOTEQ                      R6 R7 ; [+4]
       56 MOVE                             R6 R3
       57 MOVE                             R7 R5
       58 CALL                             R6 1 0
       59 RETURN                           R1 1

PROTO_7:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 FASTCALL3                        TABLE_INSERT R3 R0 R1
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 GETIMPORT                        R2 K2 [table.insert]
       10 CALL                             R2 3 0
       11 GETUPVAL                         R3 2
       12 ADDK                             R2 R3 K3 [1]
       13 SETUPVAL                         R2 2
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 3
       16 LENGTH                           R3 R4
       17 JUMPIFNOTEQ                      R2 R3 ; [+6]
       19 GETUPVAL                         R2 4
       20 GETUPVAL                         R3 1
       21 CALL                             R2 1 0
       22 LOADB                            R2 1
       23 SETUPVAL                         R2 0
       24 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 2
        5 FASTCALL3                        TABLE_INSERT R3 R1 R0
        7 MOVE                             R4 R1
        8 MOVE                             R5 R0
        9 GETIMPORT                        R2 K2 [table.insert]
       11 CALL                             R2 3 0
       12 GETUPVAL                         R3 3
       13 ADDK                             R2 R3 K3 [1]
       14 SETUPVAL                         R2 3
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R4 4
       17 LENGTH                           R3 R4
       18 JUMPIFNOTEQ                      R2 R3 ; [+6]
       20 GETUPVAL                         R2 5
       21 GETUPVAL                         R3 2
       22 CALL                             R2 1 0
       23 LOADB                            R2 1
       24 SETUPVAL                         R2 1
       25 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R2 0
        1 NEWTABLE                         R3 0 0
        3 LOADN                            R4 0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          REF R4
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 GETIMPORT                        R6 K1 [ipairs]
       12 GETUPVAL                         R7 0
       13 CALL                             R6 1 3
       14 FORGPREP_INEXT                   R6
       15 GETTABLEKS                       R11 R10 K2 ["_status"]
       17 GETUPVAL                         R12 1
       18 GETTABLEKS                       R12 R12 K3 ["Status"]
       20 GETTABLEKS                       R12 R12 K4 ["Started"]
       22 JUMPIFNOTEQ                      R11 R12 ; [+18]
       24 NEWCLOSURE                       R13 P1
       25 CAPTURE                          VAL R9
       26 CAPTURE                          REF R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          REF R4
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R11 R10 K5 ["andThen"]
       33 CALL                             R11 2 1
       34 NEWCLOSURE                       R13 P2
       35 CAPTURE                          REF R2
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R11 R11 K6 ["catch"]
       39 CALL                             R11 2 0
       40 JUMP                             ; [+44]
       41 GETTABLEKS                       R11 R10 K2 ["_status"]
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R12 R12 K3 ["Status"]
       46 GETTABLEKS                       R12 R12 K7 ["Resolved"]
       48 JUMPIFNOTEQ                      R11 R12 ; [+27]
       50 GETTABLEKS                       R12 R10 K8 ["_value"]
       52 FASTCALL1                        TABLE_UNPACK R12 ; [+2]
       53 GETIMPORT                        R11 K10 [unpack]
       55 CALL                             R11 1 1
       56 JUMPIFNOT                        R2 ; [+1]
       57 JUMP                             ; [+27]
       58 FASTCALL3                        TABLE_INSERT R3 R9 R11
       60 MOVE                             R13 R3
       61 MOVE                             R14 R9
       62 MOVE                             R15 R11
       63 GETIMPORT                        R12 K13 [table.insert]
       65 CALL                             R12 3 0
       66 ADDK                             R4 R4 K14 [1]
       67 GETUPVAL                         R13 0
       68 LENGTH                           R12 R13
       69 JUMPIFNOTEQ                      R4 R12 ; [+15]
       71 MOVE                             R12 R0
       72 MOVE                             R13 R3
       73 CALL                             R12 1 0
       74 LOADB                            R2 1
       75 JUMP                             ; [+9]
       76 LOADB                            R2 1
       77 MOVE                             R11 R1
       78 GETTABLEKS                       R13 R10 K8 ["_value"]
       80 FASTCALL1                        TABLE_UNPACK R13 ; [+2]
       81 GETIMPORT                        R12 K10 [unpack]
       83 CALL                             R12 1 -1
       84 CALL                             R11 -1 0
       85 FORGLOOP                         R6 2 [inext] ; [-71]
       87 CLOSEUPVALS                      R2
       88 RETURN                           R0 0

PROTO_15:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETTABLEN                        R2 R0 1
        7 FASTCALL1                        TYPE R2 ; [+2]
        8 GETIMPORT                        R1 K1 [type]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+7]
       13 GETTABLEN                        R1 R0 1
       14 GETTABLEKS                       R1 R1 K3 ["_type"]
       16 JUMPIFEQKS                       R1 K4 ["Promise"] ; [+2]
       18 GETTABLEN                        R0 R0 1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["new"]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          REF R0
       24 CAPTURE                          UPVAL U0
       25 CALL                             R1 1 -1
       26 CLOSEUPVALS                      R0
       27 RETURN                           R1 -1

PROTO_16:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETTABLEKS                       R2 R0 K3 ["_type"]
       11 JUMPIFEQKS                       R2 K4 ["Promise"] ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_17:
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
       55 JUMPIFNOTEQ                      R4 R5 ; [+11]
       57 MOVE                             R4 R2
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K9 ["_value"]
       61 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       62 GETIMPORT                        R5 K11 [unpack]
       64 CALL                             R5 1 -1
       65 CALL                             R4 -1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R4 3
       68 GETTABLEKS                       R4 R4 K0 ["_status"]
       70 GETUPVAL                         R5 4
       71 GETTABLEKS                       R5 R5 K1 ["Status"]
       73 GETTABLEKS                       R5 R5 K12 ["Rejected"]
       75 JUMPIFNOTEQ                      R4 R5 ; [+10]
       77 MOVE                             R4 R3
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R6 R6 K9 ["_value"]
       81 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       82 GETIMPORT                        R5 K11 [unpack]
       84 CALL                             R5 1 -1
       85 CALL                             R4 -1 0
       86 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
        0 LOADNIL                          R4
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K0 ["andThen"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_20:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 1
        8 LOADB                            R2 1
        9 NAMECALL                         R0 R0 K0 ["Fire"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_21:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 1
        8 LOADB                            R2 0
        9 NAMECALL                         R0 R0 K0 ["Fire"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_unhandledRejection"]
        3 GETTABLEKS                       R1 R0 K1 ["_status"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["Status"]
        8 GETTABLEKS                       R2 R2 K3 ["Started"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+41]
       12 LOADNIL                          R1
       13 GETIMPORT                        R2 K6 [Instance.new]
       15 LOADK                            R3 K7 ["BindableEvent"]
       16 CALL                             R2 1 1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          REF R1
       19 CAPTURE                          VAL R2
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          REF R1
       22 CAPTURE                          VAL R2
       23 NAMECALL                         R3 R0 K8 ["andThen"]
       25 CALL                             R3 3 0
       26 GETTABLEKS                       R3 R2 K9 ["Event"]
       28 NAMECALL                         R3 R3 K10 ["Wait"]
       30 CALL                             R3 1 1
       31 NAMECALL                         R4 R2 K11 ["Destroy"]
       33 CALL                             R4 1 0
       34 JUMPIF                           R3 ; [+9]
       35 GETIMPORT                        R4 K13 [error]
       37 GETTABLEN                        R6 R1 1
       38 FASTCALL1                        TOSTRING R6 ; [+2]
       39 GETIMPORT                        R5 K15 [tostring]
       41 CALL                             R5 1 1
       42 LOADN                            R6 2
       43 CALL                             R4 2 0
       44 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       45 MOVE                             R5 R1
       46 GETIMPORT                        R4 K17 [unpack]
       48 CALL                             R4 1 -1
       49 CLOSEUPVALS                      R1
       50 RETURN                           R4 -1
       51 CLOSEUPVALS                      R1
       52 GETTABLEKS                       R1 R0 K1 ["_status"]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K2 ["Status"]
       57 GETTABLEKS                       R2 R2 K18 ["Resolved"]
       59 JUMPIFNOTEQ                      R1 R2 ; [+8]
       61 GETTABLEKS                       R2 R0 K19 ["_value"]
       63 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
       64 GETIMPORT                        R1 K17 [unpack]
       66 CALL                             R1 1 -1
       67 RETURN                           R1 -1
       68 GETTABLEKS                       R1 R0 K1 ["_status"]
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K2 ["Status"]
       73 GETTABLEKS                       R2 R2 K20 ["Rejected"]
       75 JUMPIFNOTEQ                      R1 R2 ; [+12]
       77 GETIMPORT                        R1 K13 [error]
       79 GETTABLEKS                       R4 R0 K19 ["_value"]
       81 GETTABLEN                        R3 R4 1
       82 FASTCALL1                        TOSTRING R3 ; [+2]
       83 GETIMPORT                        R2 K15 [tostring]
       85 CALL                             R2 1 1
       86 LOADN                            R3 2
       87 CALL                             R1 2 0
       88 RETURN                           R0 0

PROTO_23:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_reject"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_25:
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
       16 JUMPIFNOT                        R1 ; [+18]
       17 LOADK                            R2 K4 ["#"]
       18 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       19 GETIMPORT                        R1 K6 [select]
       21 GETVARARGS                       R3 -1
       22 CALL                             R1 -1 1
       23 LOADN                            R2 1
       24 JUMPIFNOTLT                      R2 R1 ; [+1]
       26 GETVARARGS                       R1 1
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          VAL R0
       29 NEWCLOSURE                       R4 P1
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R1 R1 K7 ["andThen"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K1 ["Status"]
       38 GETTABLEKS                       R1 R1 K8 ["Resolved"]
       40 SETTABLEKS                       R1 R0 K0 ["_status"]
       42 NEWTABLE                         R1 0 0
       44 GETVARARGS                       R2 -1
       45 SETLIST                          R1 R2 -1 [1]
       47 SETTABLEKS                       R1 R0 K9 ["_value"]
       49 GETIMPORT                        R1 K11 [ipairs]
       51 GETTABLEKS                       R2 R0 K12 ["_queuedResolve"]
       53 CALL                             R1 1 3
       54 FORGPREP_INEXT                   R1
       55 MOVE                             R6 R5
       56 GETVARARGS                       R7 -1
       57 CALL                             R6 -1 0
       58 FORGLOOP                         R1 2 [inext] ; [-4]
       60 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onUnhandledRejection"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onUnhandledRejection"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_27:
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
       13 GETIMPORT                        R1 K5 [pcall]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_28:
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
       18 NEWTABLE                         R1 0 0
       20 GETVARARGS                       R2 -1
       21 SETLIST                          R1 R2 -1 [1]
       23 SETTABLEKS                       R1 R0 K4 ["_value"]
       25 GETTABLEKS                       R2 R0 K5 ["_queuedReject"]
       27 GETIMPORT                        R3 K7 [next]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 JUMPIFEQKNIL                     R3 ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 JUMPIF                           R1 ; [+12]
       36 GETIMPORT                        R1 K9 [ipairs]
       38 GETTABLEKS                       R2 R0 K5 ["_queuedReject"]
       40 CALL                             R1 1 3
       41 FORGPREP_INEXT                   R1
       42 MOVE                             R6 R5
       43 GETVARARGS                       R7 -1
       44 CALL                             R6 -1 0
       45 FORGLOOP                         R1 2 [inext] ; [-4]
       47 RETURN                           R0 0
       48 LOADB                            R1 1
       49 SETTABLEKS                       R1 R0 K10 ["_unhandledRejection"]
       51 GETVARARGS                       R2 1
       52 FASTCALL1                        TOSTRING R2 ; [+2]
       53 GETIMPORT                        R1 K12 [tostring]
       55 CALL                             R1 1 1
       56 GETIMPORT                        R2 K14 [spawn]
       58 NEWCLOSURE                       R3 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U0
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          REF R0
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 NEWTABLE                         R3 16 0
        9 SETTABLEKS                       R3 R3 K3 ["__index"]
       11 DUPTABLE                         R4 K7 [{"Started", "Resolved", "Rejected"}]
       12 LOADK                            R5 K4 ["Started"]
       13 SETTABLEKS                       R5 R4 K4 ["Started"]
       15 LOADK                            R5 K5 ["Resolved"]
       16 SETTABLEKS                       R5 R4 K5 ["Resolved"]
       18 LOADK                            R5 K6 ["Rejected"]
       19 SETTABLEKS                       R5 R4 K6 ["Rejected"]
       21 SETTABLEKS                       R4 R3 K8 ["Status"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K9 ["onUnhandledRejection"]
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          REF R0
       29 SETTABLEKS                       R4 R3 K10 ["new"]
       31 DUPCLOSURE                       R4 K11 [PROTO_8]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R4 R3 K12 ["resolve"]
       35 DUPCLOSURE                       R4 K13 [PROTO_10]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R3 K14 ["reject"]
       39 DUPCLOSURE                       R4 K15 [PROTO_15]
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R4 R3 K16 ["all"]
       43 DUPCLOSURE                       R4 K17 [PROTO_16]
       44 SETTABLEKS                       R4 R3 K18 ["is"]
       46 NEWCLOSURE                       R4 P7
       47 CAPTURE                          VAL R3
       48 CAPTURE                          REF R0
       49 SETTABLEKS                       R4 R3 K19 ["andThen"]
       51 DUPCLOSURE                       R4 K20 [PROTO_19]
       52 SETTABLEKS                       R4 R3 K21 ["catch"]
       54 DUPCLOSURE                       R4 K22 [PROTO_22]
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R4 R3 K23 ["await"]
       58 DUPCLOSURE                       R4 K24 [PROTO_25]
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R4 R3 K25 ["_resolve"]
       62 DUPCLOSURE                       R4 K26 [PROTO_28]
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R4 R3 K27 ["_reject"]
       66 CLOSEUPVALS                      R0
       67 RETURN                           R3 1
