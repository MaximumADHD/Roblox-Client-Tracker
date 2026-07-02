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
        0 DUPTABLE                         R1 K8 [{[1], ["_type"] = "Promise", ["_status"], ["_value"] = , ["_queuedResolve"], ["_queuedReject"]}]
        1 GETIMPORT                        R2 K11 [debug.traceback]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["_source"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K12 ["Status"]
        9 GETTABLEKS                       R2 R2 K13 ["Started"]
       11 SETTABLEKS                       R2 R1 K3 ["_status"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K6 ["_queuedResolve"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K7 ["_queuedReject"]
       21 GETUPVAL                         R4 0
       22 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K15 [setmetatable]
       27 CALL                             R2 2 0
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          VAL R1
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          VAL R1
       32 GETUPVAL                         R4 1
       33 MOVE                             R5 R0
       34 MOVE                             R6 R2
       35 MOVE                             R7 R3
       36 CALL                             R4 3 2
       37 JUMPIF                           R4 ; [+12]
       38 GETTABLEKS                       R6 R1 K3 ["_status"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K12 ["Status"]
       43 GETTABLEKS                       R7 R7 K13 ["Started"]
       45 JUMPIFNOTEQ                      R6 R7 ; [+4]
       47 MOVE                             R6 R3
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 RETURN                           R1 1

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
       40 JUMP                             ; [+36]
       41 GETTABLEKS                       R11 R10 K2 ["_status"]
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R12 R12 K3 ["Status"]
       46 GETTABLEKS                       R12 R12 K7 ["Resolved"]
       48 JUMPIFNOTEQ                      R11 R12 ; [+23]
       50 GETTABLEKS                       R11 R10 K8 ["_value"]
       52 JUMPIFNOT                        R2 ; [+1]
       53 JUMP                             ; [+23]
       54 FASTCALL3                        TABLE_INSERT R3 R9 R11
       56 MOVE                             R13 R3
       57 MOVE                             R14 R9
       58 MOVE                             R15 R11
       59 GETIMPORT                        R12 K11 [table.insert]
       61 CALL                             R12 3 0
       62 ADDK                             R4 R4 K12 [1]
       63 GETUPVAL                         R13 0
       64 LENGTH                           R12 R13
       65 JUMPIFNOTEQ                      R4 R12 ; [+11]
       67 MOVE                             R12 R0
       68 MOVE                             R13 R3
       69 CALL                             R12 1 0
       70 LOADB                            R2 1
       71 JUMP                             ; [+5]
       72 LOADB                            R2 1
       73 MOVE                             R11 R1
       74 GETTABLEKS                       R12 R10 K8 ["_value"]
       76 CALL                             R11 1 0
       77 FORGLOOP                         R6 2 [inext] ; [-63]
       79 CLOSEUPVALS                      R2
       80 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["Started"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+41]
        9 LOADNIL                          R1
       10 GETIMPORT                        R2 K5 [Instance.new]
       12 LOADK                            R3 K6 ["BindableEvent"]
       13 CALL                             R2 1 1
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          REF R1
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          REF R1
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R3 R0 K7 ["andThen"]
       22 CALL                             R3 3 0
       23 GETTABLEKS                       R3 R2 K8 ["Event"]
       25 NAMECALL                         R3 R3 K9 ["Wait"]
       27 CALL                             R3 1 1
       28 NAMECALL                         R4 R2 K10 ["Destroy"]
       30 CALL                             R4 1 0
       31 JUMPIF                           R3 ; [+9]
       32 GETIMPORT                        R4 K12 [error]
       34 GETTABLEN                        R6 R1 1
       35 FASTCALL1                        TOSTRING R6 ; [+2]
       36 GETIMPORT                        R5 K14 [tostring]
       38 CALL                             R5 1 1
       39 LOADN                            R6 2
       40 CALL                             R4 2 0
       41 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       42 MOVE                             R5 R1
       43 GETIMPORT                        R4 K16 [unpack]
       45 CALL                             R4 1 -1
       46 CLOSEUPVALS                      R1
       47 RETURN                           R4 -1
       48 CLOSEUPVALS                      R1
       49 GETTABLEKS                       R1 R0 K0 ["_status"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K1 ["Status"]
       54 GETTABLEKS                       R2 R2 K17 ["Resolved"]
       56 JUMPIFNOTEQ                      R1 R2 ; [+8]
       58 GETTABLEKS                       R2 R0 K18 ["_value"]
       60 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
       61 GETIMPORT                        R1 K16 [unpack]
       63 CALL                             R1 1 -1
       64 RETURN                           R1 -1
       65 GETTABLEKS                       R1 R0 K0 ["_status"]
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R2 R2 K1 ["Status"]
       70 GETTABLEKS                       R2 R2 K19 ["Rejected"]
       72 JUMPIFNOTEQ                      R1 R2 ; [+12]
       74 GETIMPORT                        R1 K12 [error]
       76 GETTABLEKS                       R4 R0 K18 ["_value"]
       78 GETTABLEN                        R3 R4 1
       79 FASTCALL1                        TOSTRING R3 ; [+2]
       80 GETIMPORT                        R2 K14 [tostring]
       82 CALL                             R2 1 1
       83 LOADN                            R3 2
       84 CALL                             R1 2 0
       85 RETURN                           R0 0

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
       35 JUMPIF                           R1 ; [+11]
       36 GETIMPORT                        R1 K9 [ipairs]
       38 GETTABLEKS                       R2 R0 K5 ["_queuedReject"]
       40 CALL                             R1 1 3
       41 FORGPREP_INEXT                   R1
       42 MOVE                             R6 R5
       43 GETVARARGS                       R7 -1
       44 CALL                             R6 -1 0
       45 FORGLOOP                         R1 2 [inext] ; [-4]
       47 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          REF R0
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 NEWTABLE                         R3 16 0
        9 SETTABLEKS                       R3 R3 K3 ["__index"]
       11 DUPTABLE                         R4 K7 [{["Started"] = "Started", ["Resolved"] = "Resolved", ["Rejected"] = "Rejected"}]
       12 SETTABLEKS                       R4 R3 K8 ["Status"]
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          REF R0
       17 SETTABLEKS                       R4 R3 K9 ["new"]
       19 DUPCLOSURE                       R4 K10 [PROTO_8]
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R4 R3 K11 ["resolve"]
       23 DUPCLOSURE                       R4 K12 [PROTO_10]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K13 ["reject"]
       27 DUPCLOSURE                       R4 K14 [PROTO_15]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R4 R3 K15 ["all"]
       31 DUPCLOSURE                       R4 K16 [PROTO_16]
       32 SETTABLEKS                       R4 R3 K17 ["is"]
       34 NEWCLOSURE                       R4 P7
       35 CAPTURE                          VAL R3
       36 CAPTURE                          REF R0
       37 SETTABLEKS                       R4 R3 K18 ["andThen"]
       39 DUPCLOSURE                       R4 K19 [PROTO_19]
       40 SETTABLEKS                       R4 R3 K20 ["catch"]
       42 DUPCLOSURE                       R4 K21 [PROTO_22]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R4 R3 K22 ["await"]
       46 DUPCLOSURE                       R4 K23 [PROTO_25]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R4 R3 K24 ["_resolve"]
       50 DUPCLOSURE                       R4 K25 [PROTO_26]
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R4 R3 K26 ["_reject"]
       54 CLOSEUPVALS                      R0
       55 RETURN                           R3 1
