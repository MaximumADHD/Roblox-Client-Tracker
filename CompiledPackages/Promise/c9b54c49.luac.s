PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 GETIMPORT                        R3 K4 [string.format]
        4 LOADK                            R4 K5 ["%s is not in %s!"]
        5 MOVE                             R5 R1
        6 GETUPVAL                         R6 0
        7 CALL                             R3 3 1
        8 LOADN                            R4 2
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 GETIMPORT                        R1 K4 [string.format]
        4 LOADK                            R2 K5 ["Creating new members in %s is not allowed!"]
        5 GETUPVAL                         R3 0
        6 CALL                             R1 2 1
        7 LOADN                            R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 SETTABLE                         R7 R2 R7
        8 FORGLOOP                         R3 2 [inext] ; [-2]
       10 DUPTABLE                         R5 K4 [{"__index", "__newindex"}]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R6 R5 K2 ["__index"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R6 R5 K3 ["__newindex"]
       19 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K6 [setmetatable]
       24 CALL                             R3 2 1
       25 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R3 K7 [{"error", "trace", "context", "kind", "parent", "createdTick", "createdTrace"}]
        6 GETTABLEKS                       R6 R0 K0 ["error"]
        8 FASTCALL1                        TOSTRING R6 ; [+2]
        9 GETIMPORT                        R5 K10 [tostring]
       11 CALL                             R5 1 1
       12 ORK                              R4 R5 K8 ["[This error has no error text.]"]
       13 SETTABLEKS                       R4 R3 K0 ["error"]
       15 GETTABLEKS                       R4 R0 K1 ["trace"]
       17 SETTABLEKS                       R4 R3 K1 ["trace"]
       19 GETTABLEKS                       R4 R0 K2 ["context"]
       21 SETTABLEKS                       R4 R3 K2 ["context"]
       23 GETTABLEKS                       R4 R0 K3 ["kind"]
       25 SETTABLEKS                       R4 R3 K3 ["kind"]
       27 SETTABLEKS                       R1 R3 K4 ["parent"]
       29 GETIMPORT                        R4 K13 [os.clock]
       31 CALL                             R4 0 1
       32 SETTABLEKS                       R4 R3 K5 ["createdTick"]
       34 GETIMPORT                        R4 K16 [debug.traceback]
       36 CALL                             R4 0 1
       37 SETTABLEKS                       R4 R3 K6 ["createdTrace"]
       39 GETUPVAL                         R4 0
       40 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       42 GETIMPORT                        R2 K18 [setmetatable]
       44 CALL                             R2 2 1
       45 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+39]
        7 FASTCALL1                        GETMETATABLE R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [getmetatable]
       11 CALL                             R1 1 1
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K1 [type]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+27]
       19 LOADB                            R2 0
       20 FASTCALL2K                       RAWGET R0 K5 ; [+5]
       22 MOVE                             R4 R0
       23 LOADK                            R5 K5 ["error"]
       24 GETIMPORT                        R3 K7 [rawget]
       26 CALL                             R3 2 1
       27 JUMPIFEQKNIL                     R3 ; [+16]
       29 FASTCALL2K                       RAWGET R1 K8 ; [+5]
       31 MOVE                             R5 R1
       32 LOADK                            R6 K8 ["extend"]
       33 GETIMPORT                        R4 K7 [rawget]
       35 CALL                             R4 2 1
       36 FASTCALL1                        TYPE R4 ; [+2]
       37 GETIMPORT                        R3 K1 [type]
       39 CALL                             R3 1 1
       40 JUMPIFEQKS                       R3 K9 ["function"] ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 RETURN                           R2 1
       45 LOADB                            R1 0
       46 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Argument #2 to Promise.Error.isKind must not be nil"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["is"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+6]
       16 GETTABLEKS                       R3 R0 K4 ["kind"]
       18 JUMPIFEQ                         R3 R1 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_6:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETTABLEKS                       R2 R1 K0 ["kind"]
        7 JUMPIF                           R2 ; [+2]
        8 GETTABLEKS                       R2 R0 K0 ["kind"]
       10 SETTABLEKS                       R2 R1 K0 ["kind"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K1 ["new"]
       15 MOVE                             R3 R1
       16 MOVE                             R4 R0
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_7:
        0 NEWTABLE                         R1 0 1
        2 MOVE                             R2 R0
        3 SETLIST                          R1 R2 1 [1]
        5 LENGTH                           R4 R1
        6 GETTABLE                         R3 R1 R4
        7 GETTABLEKS                       R2 R3 K0 ["parent"]
        9 JUMPIFNOT                        R2 ; [+11]
       10 LENGTH                           R6 R1
       11 GETTABLE                         R5 R1 R6
       12 GETTABLEKS                       R4 R5 K0 ["parent"]
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K3 [table.insert]
       19 CALL                             R2 2 0
       20 JUMPBACK                         ; [-16]
       21 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 1
        2 GETIMPORT                        R2 K2 [string.format]
        4 LOADK                            R3 K3 ["-- Promise.Error(%s) --"]
        5 GETTABLEKS                       R5 R0 K5 ["kind"]
        7 ORK                              R4 R5 K4 ["?"]
        8 CALL                             R2 2 -1
        9 SETLIST                          R1 R2 -1 [1]
       11 GETIMPORT                        R2 K7 [ipairs]
       13 NAMECALL                         R3 R0 K8 ["getErrorChain"]
       15 CALL                             R3 1 -1
       16 CALL                             R2 -1 3
       17 FORGPREP_INEXT                   R2
       18 MOVE                             R8 R1
       19 GETIMPORT                        R9 K11 [table.concat]
       21 NEWTABLE                         R10 0 2
       23 GETTABLEKS                       R11 R6 K12 ["trace"]
       25 JUMPIF                           R11 ; [+2]
       26 GETTABLEKS                       R11 R6 K13 ["error"]
       28 GETTABLEKS                       R12 R6 K14 ["context"]
       30 SETLIST                          R10 R11 2 [1]
       32 LOADK                            R11 K15 ["\n"]
       33 CALL                             R9 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R7 K17 [table.insert]
       37 CALL                             R7 -1 0
       38 FORGLOOP                         R2 2 [inext] ; [-21]
       40 GETIMPORT                        R2 K11 [table.concat]
       42 MOVE                             R3 R1
       43 LOADK                            R4 K15 ["\n"]
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

PROTO_9:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 NEWTABLE                         R1 0 0
        9 GETVARARGS                       R2 -1
       10 SETLIST                          R1 R2 -1 [1]
       12 RETURN                           R0 2

PROTO_10:
        0 PREPVARARGS                      1
        1 MOVE                             R1 R0
        2 LOADK                            R3 K0 ["#"]
        3 FASTCALL1                        SELECT_VARARG R3 ; [+3]
        4 GETIMPORT                        R2 K2 [select]
        6 GETVARARGS                       R4 -1
        7 CALL                             R2 -1 1
        8 NEWTABLE                         R3 0 0
       10 GETVARARGS                       R4 -1
       11 SETLIST                          R3 R4 -1 [1]
       13 RETURN                           R1 3

PROTO_11:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["new"]
       11 DUPTABLE                         R2 K8 [{"error", "kind", "trace", "context"}]
       12 SETTABLEKS                       R0 R2 K4 ["error"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K9 ["Kind"]
       17 GETTABLEKS                       R3 R4 K10 ["ExecutionError"]
       19 SETTABLEKS                       R3 R2 K5 ["kind"]
       21 GETIMPORT                        R3 K13 [debug.traceback]
       23 FASTCALL1                        TOSTRING R0 ; [+3]
       24 MOVE                             R5 R0
       25 GETIMPORT                        R4 K15 [tostring]
       27 CALL                             R4 1 1
       28 LOADN                            R5 2
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K6 ["trace"]
       32 LOADK                            R4 K16 ["Promise created at:\n\n"]
       33 GETUPVAL                         R5 1
       34 CONCAT                           R3 R4 R5
       35 SETTABLEKS                       R3 R2 K7 ["context"]
       37 CALL                             R1 1 -1
       38 RETURN                           R1 -1

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 FASTCALL1                        ASSERT R2 ; [+2]
        5 GETIMPORT                        R1 K1 [assert]
        7 CALL                             R1 1 0
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_13:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 GETIMPORT                        R3 K1 [xpcall]
        4 MOVE                             R4 R1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R7 0 +1
        8 LOADB                            R7 1
        9 FASTCALL1                        ASSERT R7 ; [+2]
       10 GETIMPORT                        R6 K3 [assert]
       12 CALL                             R6 1 0
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 GETVARARGS                       R6 -1
       17 CALL                             R3 -1 -1
       18 CALL                             R2 -1 -1
       19 RETURN                           R2 -1

PROTO_14:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETVARARGS                       R3 -1
        5 CALL                             R0 -1 3
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R3 3
        8 LOADN                            R6 1
        9 FASTCALL3                        TABLE_UNPACK R2 R6 R1
       11 MOVE                             R5 R2
       12 MOVE                             R7 R1
       13 GETIMPORT                        R4 K1 [unpack]
       15 CALL                             R4 3 -1
       16 CALL                             R3 -1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 4
       19 GETTABLEN                        R4 R2 1
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 RETURN                           R4 1

PROTO_16:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_17:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_reject"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+16]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["_status"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Status"]
        7 GETTABLEKS                       R2 R3 K2 ["Cancelled"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+4]
       11 MOVE                             R1 R0
       12 CALL                             R1 0 0
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R1 0
       15 SETTABLEKS                       R0 R1 K3 ["_cancellationHook"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["_status"]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K1 ["Status"]
       23 GETTABLEKS                       R3 R4 K2 ["Cancelled"]
       25 JUMPIFEQ                         R2 R3 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["_source"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 GETUPVAL                         R5 5
        8 CALL                             R0 5 3
        9 JUMPIF                           R0 ; [+3]
       10 GETUPVAL                         R3 4
       11 GETTABLEN                        R4 R2 1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_21:
        0 JUMPIFEQKNIL                     R2 ; [+12]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["is"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIF                           R3 ; [+5]
        8 GETIMPORT                        R3 K2 [error]
       10 LOADK                            R4 K3 ["Argument #2 to Promise.new must be a promise or nil"]
       11 LOADN                            R5 2
       12 CALL                             R3 2 0
       13 DUPTABLE                         R3 K15 [{"_source", "_status", "_values", "_valuesLength", "_unhandledRejection", "_queuedResolve", "_queuedReject", "_queuedFinally", "_cancellationHook", "_parent", "_consumers"}]
       14 SETTABLEKS                       R0 R3 K4 ["_source"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K16 ["Status"]
       19 GETTABLEKS                       R4 R5 K17 ["Started"]
       21 SETTABLEKS                       R4 R3 K5 ["_status"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K6 ["_values"]
       26 LOADN                            R4 255
       27 SETTABLEKS                       R4 R3 K7 ["_valuesLength"]
       29 LOADB                            R4 1
       30 SETTABLEKS                       R4 R3 K8 ["_unhandledRejection"]
       32 NEWTABLE                         R4 0 0
       34 SETTABLEKS                       R4 R3 K9 ["_queuedResolve"]
       36 NEWTABLE                         R4 0 0
       38 SETTABLEKS                       R4 R3 K10 ["_queuedReject"]
       40 NEWTABLE                         R4 0 0
       42 SETTABLEKS                       R4 R3 K11 ["_queuedFinally"]
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K12 ["_cancellationHook"]
       47 SETTABLEKS                       R2 R3 K13 ["_parent"]
       49 NEWTABLE                         R5 0 0
       51 GETUPVAL                         R6 1
       52 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       54 GETIMPORT                        R4 K19 [setmetatable]
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R4 R3 K14 ["_consumers"]
       59 JUMPIFNOT                        R2 ; [+13]
       60 GETTABLEKS                       R4 R2 K5 ["_status"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R6 R7 K16 ["Status"]
       65 GETTABLEKS                       R5 R6 K17 ["Started"]
       67 JUMPIFNOTEQ                      R4 R5 ; [+5]
       69 GETTABLEKS                       R4 R2 K14 ["_consumers"]
       71 LOADB                            R5 1
       72 SETTABLE                         R5 R4 R3
       73 GETUPVAL                         R6 0
       74 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       76 MOVE                             R5 R3
       77 GETIMPORT                        R4 K19 [setmetatable]
       79 CALL                             R4 2 0
       80 NEWCLOSURE                       R4 P0
       81 CAPTURE                          VAL R3
       82 NEWCLOSURE                       R5 P1
       83 CAPTURE                          VAL R3
       84 NEWCLOSURE                       R6 P2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          UPVAL U0
       87 GETIMPORT                        R7 K22 [coroutine.wrap]
       89 NEWCLOSURE                       R8 P3
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R6
       96 CALL                             R7 1 1
       97 CALL                             R7 0 0
       98 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_new"]
        3 GETIMPORT                        R2 K3 [debug.traceback]
        5 LOADNIL                          R3
        6 LOADN                            R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_23:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["Promise(%s)"]
        3 GETTABLEKS                       R3 R0 K4 ["_status"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 GETUPVAL                         R4 5
        9 GETUPVAL                         R5 6
       10 CALL                             R0 5 3
       11 JUMPIF                           R0 ; [+3]
       12 GETUPVAL                         R3 5
       13 GETTABLEN                        R4 R2 1
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_25:
        0 LOADNIL                          R3
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["_timeEvent"]
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          REF R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 NAMECALL                         R4 R4 K1 ["Connect"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 CLOSEUPVALS                      R3
       17 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 LOADNIL                          R2
        3 LOADN                            R3 2
        4 CALL                             R1 2 1
        5 LOADNIL                          R2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["_new"]
        9 MOVE                             R4 R1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 RETURN                           R2 1

PROTO_27:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R3 0
        2 LOADN                            R4 1
        3 GETUPVAL                         R5 1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R2 K1 [unpack]
        7 CALL                             R2 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_28:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["_new"]
        7 GETIMPORT                        R3 K3 [debug.traceback]
        9 LOADNIL                          R4
       10 LOADN                            R5 2
       11 CALL                             R3 2 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_29:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R4 0
        2 LOADN                            R5 1
        3 GETUPVAL                         R6 1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R3 K1 [unpack]
        7 CALL                             R3 3 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_30:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["_new"]
        7 GETIMPORT                        R3 K3 [debug.traceback]
        9 LOADNIL                          R4
       10 LOADN                            R5 2
       11 CALL                             R3 2 1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R0
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_31:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 LOADN                            R5 1
        4 GETUPVAL                         R6 2
        5 FASTCALL                         TABLE_UNPACK ; [+2]
        6 GETIMPORT                        R3 K1 [unpack]
        8 CALL                             R3 3 -1
        9 CALL                             R2 -1 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_32:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 GETVARARGS                       R3 -1
        3 CALL                             R2 -1 2
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["_new"]
        7 MOVE                             R5 R0
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 CALL                             R4 2 -1
       13 RETURN                           R4 -1

PROTO_33:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_try"]
        4 GETIMPORT                        R1 K3 [debug.traceback]
        6 LOADNIL                          R2
        7 LOADN                            R3 2
        8 CALL                             R1 2 1
        9 GETVARARGS                       R2 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_34:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_35:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 ADDK                             R1 R2 K0 [1]
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 2
        8 JUMPIFNOTEQKNIL                  R1 ; [+5]
       10 GETUPVAL                         R1 3
       11 GETVARARGS                       R2 1
       12 SETTABLE                         R2 R1 R0
       13 JUMP                             ; [+4]
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R2 1
       16 GETVARARGS                       R3 1
       17 SETTABLE                         R3 R1 R2
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 2
       20 JUMPIF                           R2 ; [+2]
       21 GETUPVAL                         R3 4
       22 LENGTH                           R2 R3
       23 JUMPIFNOTLE                      R2 R1 ; [+16]
       25 LOADB                            R1 1
       26 SETUPVAL                         R1 0
       27 GETUPVAL                         R1 5
       28 GETUPVAL                         R2 3
       29 CALL                             R1 1 0
       30 GETIMPORT                        R1 K2 [ipairs]
       32 GETUPVAL                         R2 6
       33 CALL                             R1 1 3
       34 FORGPREP_INEXT                   R1
       35 NAMECALL                         R6 R5 K3 ["cancel"]
       37 CALL                             R6 1 0
       38 FORGLOOP                         R1 2 [inext] ; [-4]
       40 RETURN                           R0 0

PROTO_36:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_37:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 ADDK                             R0 R1 K0 [1]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+8]
        7 GETUPVAL                         R2 2
        8 LENGTH                           R1 R2
        9 GETUPVAL                         R2 0
       10 SUB                              R0 R1 R2
       11 GETUPVAL                         R1 1
       12 JUMPIFNOTLT                      R0 R1 ; [+16]
       14 GETIMPORT                        R0 K2 [ipairs]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 3
       18 FORGPREP_INEXT                   R0
       19 NAMECALL                         R5 R4 K3 ["cancel"]
       21 CALL                             R5 1 0
       22 FORGLOOP                         R0 2 [inext] ; [-4]
       24 LOADB                            R0 1
       25 SETUPVAL                         R0 4
       26 GETUPVAL                         R0 5
       27 GETVARARGS                       R1 -1
       28 CALL                             R0 -1 0
       29 RETURN                           R0 0

PROTO_38:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 LOADN                            R5 0
        5 LOADN                            R6 0
        6 LOADB                            R7 0
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          VAL R4
        9 NEWCLOSURE                       R9 P1
       10 CAPTURE                          REF R7
       11 CAPTURE                          REF R5
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 MOVE                             R10 R2
       18 MOVE                             R11 R8
       19 CALL                             R10 1 0
       20 GETIMPORT                        R10 K1 [ipairs]
       22 GETUPVAL                         R11 1
       23 CALL                             R10 1 3
       24 FORGPREP_INEXT                   R10
       25 NEWCLOSURE                       R17 P2
       26 CAPTURE                          VAL R9
       27 CAPTURE                          VAL R13
       28 NEWCLOSURE                       R18 P3
       29 CAPTURE                          REF R6
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          REF R7
       34 CAPTURE                          VAL R1
       35 NAMECALL                         R15 R14 K2 ["andThen"]
       37 CALL                             R15 3 1
       38 SETTABLE                         R15 R4 R13
       39 FORGLOOP                         R10 2 [inext] ; [-15]
       41 JUMPIFNOT                        R7 ; [+10]
       42 GETIMPORT                        R10 K1 [ipairs]
       44 MOVE                             R11 R4
       45 CALL                             R10 1 3
       46 FORGPREP_INEXT                   R10
       47 NAMECALL                         R15 R14 K3 ["cancel"]
       49 CALL                             R15 1 0
       50 FORGLOOP                         R10 2 [inext] ; [-4]
       52 CLOSEUPVALS                      R5
       53 RETURN                           R0 0

PROTO_39:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+10]
        7 GETIMPORT                        R3 K4 [error]
        9 GETIMPORT                        R4 K7 [string.format]
       11 LOADK                            R5 K8 ["Please pass a list of promises to %s"]
       12 LOADK                            R6 K9 ["Promise.all"]
       13 CALL                             R4 2 1
       14 LOADN                            R5 3
       15 CALL                             R3 2 0
       16 GETIMPORT                        R3 K11 [pairs]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K12 ["is"]
       24 MOVE                             R9 R7
       25 CALL                             R8 1 1
       26 JUMPIF                           R8 ; [+14]
       27 GETIMPORT                        R8 K4 [error]
       29 GETIMPORT                        R9 K7 [string.format]
       31 LOADK                            R10 K13 ["Non-promise value passed into %s at index %s"]
       32 LOADK                            R11 K9 ["Promise.all"]
       33 FASTCALL1                        TOSTRING R6 ; [+3]
       34 MOVE                             R13 R6
       35 GETIMPORT                        R12 K15 [tostring]
       37 CALL                             R12 1 1
       38 CALL                             R9 3 1
       39 LOADN                            R10 3
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 ; [-21]
       43 LENGTH                           R3 R1
       44 JUMPIFEQKN                       R3 K16 [0] ; [+3]
       46 JUMPIFNOTEQKN                    R2 K16 [0] ; [+8]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K17 ["resolve"]
       51 NEWTABLE                         R4 0 0
       53 CALL                             R3 1 -1
       54 RETURN                           R3 -1
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K18 ["_new"]
       58 MOVE                             R4 R0
       59 NEWCLOSURE                       R5 P0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CALL                             R3 2 -1
       63 RETURN                           R3 -1

PROTO_40:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETTABLEN                        R2 R0 1
        7 FASTCALL1                        TYPE R2 ; [+2]
        8 GETIMPORT                        R1 K1 [type]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+8]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K3 ["is"]
       16 GETTABLEN                        R2 R0 1
       17 CALL                             R1 1 1
       18 JUMPIF                           R1 ; [+1]
       19 GETTABLEN                        R0 R0 1
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K4 ["_all"]
       23 GETIMPORT                        R2 K7 [debug.traceback]
       25 LOADNIL                          R3
       26 LOADN                            R4 2
       27 CALL                             R2 2 1
       28 MOVE                             R3 R0
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R2 R2 K0 ["andThen"]
        7 CALL                             R2 2 1
        8 SETUPVAL                         R2 0
        9 RETURN                           R0 0

PROTO_43:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Bad argument #1 to Promise.fold: must be a table"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K6 ["function"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       26 LOADK                            R5 K7 ["Bad argument #2 to Promise.fold: must be a function"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K8 ["resolve"]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K9 ["each"]
       38 MOVE                             R5 R0
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          REF R3
       41 CAPTURE                          VAL R1
       42 CALL                             R4 2 1
       43 MOVE                             R6 R3
       44 NAMECALL                         R4 R4 K10 ["andThenReturn"]
       46 CALL                             R4 2 -1
       47 CLOSEUPVALS                      R3
       48 RETURN                           R4 -1

PROTO_44:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Bad argument #2 to Promise.some: must be a number"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["_all"]
       18 GETIMPORT                        R3 K9 [debug.traceback]
       20 LOADNIL                          R4
       21 LOADN                            R5 2
       22 CALL                             R3 2 1
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

PROTO_45:
        0 GETTABLEN                        R1 R0 1
        1 RETURN                           R1 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_all"]
        3 GETIMPORT                        R2 K3 [debug.traceback]
        5 LOADNIL                          R3
        6 LOADN                            R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R3 R0
        9 LOADN                            R4 1
       10 CALL                             R1 3 1
       11 DUPCLOSURE                       R3 K4 [PROTO_45]
       12 NAMECALL                         R1 R1 K5 ["andThen"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_47:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 ADDK                             R1 R2 K0 [1]
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 1
        5 GETVARARGS                       R2 1
        6 SETTABLE                         R2 R1 R0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 LENGTH                           R2 R3
       10 JUMPIFNOTLE                      R2 R1 ; [+4]
       12 GETUPVAL                         R1 3
       13 GETUPVAL                         R2 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_48:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_49:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_50:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 LOADN                            R5 0
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          REF R5
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 MOVE                             R7 R2
       11 NEWCLOSURE                       R8 P1
       12 CAPTURE                          VAL R4
       13 CALL                             R7 1 0
       14 GETIMPORT                        R7 K1 [ipairs]
       16 GETUPVAL                         R8 0
       17 CALL                             R7 1 3
       18 FORGPREP_INEXT                   R7
       19 NEWCLOSURE                       R14 P2
       20 CAPTURE                          VAL R6
       21 CAPTURE                          VAL R10
       22 NAMECALL                         R12 R11 K2 ["finally"]
       24 CALL                             R12 2 1
       25 SETTABLE                         R12 R4 R10
       26 FORGLOOP                         R7 2 [inext] ; [-8]
       28 CLOSEUPVALS                      R5
       29 RETURN                           R0 0

PROTO_51:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+10]
        7 GETIMPORT                        R1 K4 [error]
        9 GETIMPORT                        R2 K7 [string.format]
       11 LOADK                            R3 K8 ["Please pass a list of promises to %s"]
       12 LOADK                            R4 K9 ["Promise.allSettled"]
       13 CALL                             R2 2 1
       14 LOADN                            R3 2
       15 CALL                             R1 2 0
       16 GETIMPORT                        R1 K11 [pairs]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 3
       20 FORGPREP_NEXT                    R1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K12 ["is"]
       24 MOVE                             R7 R5
       25 CALL                             R6 1 1
       26 JUMPIF                           R6 ; [+14]
       27 GETIMPORT                        R6 K4 [error]
       29 GETIMPORT                        R7 K7 [string.format]
       31 LOADK                            R8 K13 ["Non-promise value passed into %s at index %s"]
       32 LOADK                            R9 K9 ["Promise.allSettled"]
       33 FASTCALL1                        TOSTRING R4 ; [+3]
       34 MOVE                             R11 R4
       35 GETIMPORT                        R10 K15 [tostring]
       37 CALL                             R10 1 1
       38 CALL                             R7 3 1
       39 LOADN                            R8 2
       40 CALL                             R6 2 0
       41 FORGLOOP                         R1 2 ; [-21]
       43 LENGTH                           R1 R0
       44 JUMPIFNOTEQKN                    R1 K16 [0] ; [+8]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R1 R2 K17 ["resolve"]
       49 NEWTABLE                         R2 0 0
       51 CALL                             R1 1 -1
       52 RETURN                           R1 -1
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R1 R2 K18 ["_new"]
       56 GETIMPORT                        R2 K21 [debug.traceback]
       58 LOADNIL                          R3
       59 LOADN                            R4 2
       60 CALL                             R2 2 1
       61 NEWCLOSURE                       R3 P0
       62 CAPTURE                          VAL R0
       63 CALL                             R1 2 -1
       64 RETURN                           R1 -1

PROTO_52:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_53:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [ipairs]
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 3
        5 FORGPREP_INEXT                   R0
        6 NAMECALL                         R5 R4 K2 ["cancel"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 [inext] ; [-4]
       11 LOADB                            R0 1
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R0 2
       14 GETVARARGS                       R1 -1
       15 CALL                             R0 -1 -1
       16 RETURN                           R0 -1

PROTO_54:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_55:
        0 NEWTABLE                         R3 0 0
        2 LOADB                            R4 0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R3
        5 NEWCLOSURE                       R6 P1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          REF R4
        8 MOVE                             R7 R2
        9 NEWCLOSURE                       R8 P2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R1
       13 CALL                             R7 1 1
       14 JUMPIFNOT                        R7 ; [+2]
       15 CLOSEUPVALS                      R4
       16 RETURN                           R0 0
       17 GETIMPORT                        R7 K1 [ipairs]
       19 GETUPVAL                         R8 0
       20 CALL                             R7 1 3
       21 FORGPREP_INEXT                   R7
       22 NEWCLOSURE                       R14 P2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R0
       26 NEWCLOSURE                       R15 P2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          REF R4
       29 CAPTURE                          VAL R1
       30 NAMECALL                         R12 R11 K2 ["andThen"]
       32 CALL                             R12 3 1
       33 SETTABLE                         R12 R3 R10
       34 FORGLOOP                         R7 2 [inext] ; [-13]
       36 JUMPIFNOT                        R4 ; [+10]
       37 GETIMPORT                        R7 K1 [ipairs]
       39 MOVE                             R8 R3
       40 CALL                             R7 1 3
       41 FORGPREP_INEXT                   R7
       42 NAMECALL                         R12 R11 K3 ["cancel"]
       44 CALL                             R12 1 0
       45 FORGLOOP                         R7 2 [inext] ; [-4]
       47 CLOSEUPVALS                      R4
       48 RETURN                           R0 0

PROTO_56:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETIMPORT                        R3 K5 [string.format]
       11 LOADK                            R4 K6 ["Please pass a list of promises to %s"]
       12 LOADK                            R5 K7 ["Promise.race"]
       13 CALL                             R3 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R1 K9 [assert]
       17 CALL                             R1 -1 0
       18 GETIMPORT                        R1 K11 [pairs]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 3
       22 FORGPREP_NEXT                    R1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K12 ["is"]
       26 MOVE                             R8 R5
       27 CALL                             R7 1 1
       28 GETIMPORT                        R8 K5 [string.format]
       30 LOADK                            R9 K13 ["Non-promise value passed into %s at index %s"]
       31 LOADK                            R10 K7 ["Promise.race"]
       32 FASTCALL1                        TOSTRING R4 ; [+3]
       33 MOVE                             R12 R4
       34 GETIMPORT                        R11 K15 [tostring]
       36 CALL                             R11 1 1
       37 CALL                             R8 3 -1
       38 FASTCALL                         ASSERT ; [+2]
       39 GETIMPORT                        R6 K9 [assert]
       41 CALL                             R6 -1 0
       42 FORGLOOP                         R1 2 ; [-20]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K16 ["_new"]
       47 GETIMPORT                        R2 K19 [debug.traceback]
       49 LOADNIL                          R3
       50 LOADN                            R4 2
       51 CALL                             R2 2 1
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          VAL R0
       54 CALL                             R1 2 -1
       55 RETURN                           R1 -1

PROTO_57:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_58:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [ipairs]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 3
        6 FORGPREP_INEXT                   R0
        7 NAMECALL                         R5 R4 K2 ["cancel"]
        9 CALL                             R5 1 0
       10 FORGLOOP                         R0 2 [inext] ; [-4]
       12 RETURN                           R0 0

PROTO_59:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 -1
        2 RETURN                           R0 -1

PROTO_60:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 LOADB                            R5 0
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R4
        7 MOVE                             R7 R2
        8 NEWCLOSURE                       R8 P1
        9 CAPTURE                          REF R5
       10 CAPTURE                          VAL R4
       11 CALL                             R7 1 0
       12 NEWTABLE                         R7 0 0
       14 GETIMPORT                        R8 K1 [ipairs]
       16 GETUPVAL                         R9 0
       17 CALL                             R8 1 3
       18 FORGPREP_INEXT                   R8
       19 GETUPVAL                         R14 1
       20 GETTABLEKS                       R13 R14 K2 ["is"]
       22 MOVE                             R14 R12
       23 CALL                             R13 1 1
       24 JUMPIFNOT                        R13 ; [+92]
       25 NAMECALL                         R13 R12 K3 ["getStatus"]
       27 CALL                             R13 1 1
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R15 R16 K4 ["Status"]
       31 GETTABLEKS                       R14 R15 K5 ["Cancelled"]
       33 JUMPIFNOTEQ                      R13 R14 ; [+39]
       35 GETIMPORT                        R13 K1 [ipairs]
       37 MOVE                             R14 R4
       38 CALL                             R13 1 3
       39 FORGPREP_INEXT                   R13
       40 NAMECALL                         R18 R17 K6 ["cancel"]
       42 CALL                             R18 1 0
       43 FORGLOOP                         R13 2 [inext] ; [-4]
       45 MOVE                             R13 R1
       46 GETUPVAL                         R15 2
       47 GETTABLEKS                       R14 R15 K7 ["new"]
       49 DUPTABLE                         R15 K11 [{"error", "kind", "context"}]
       50 LOADK                            R16 K12 ["Promise is cancelled"]
       51 SETTABLEKS                       R16 R15 K8 ["error"]
       53 GETUPVAL                         R18 2
       54 GETTABLEKS                       R17 R18 K13 ["Kind"]
       56 GETTABLEKS                       R16 R17 K14 ["AlreadyCancelled"]
       58 SETTABLEKS                       R16 R15 K9 ["kind"]
       60 GETIMPORT                        R16 K17 [string.format]
       62 LOADK                            R17 K18 ["The Promise that was part of the array at index %d passed into Promise.each was already cancelled when Promise.each began.\n\nThat Promise was created at:\n\n%s"]
       63 MOVE                             R18 R11
       64 GETTABLEKS                       R19 R12 K19 ["_source"]
       66 CALL                             R16 3 1
       67 SETTABLEKS                       R16 R15 K10 ["context"]
       69 CALL                             R14 1 -1
       70 CALL                             R13 -1 -1
       71 CLOSEUPVALS                      R5
       72 RETURN                           R13 -1
       73 NAMECALL                         R13 R12 K3 ["getStatus"]
       75 CALL                             R13 1 1
       76 GETUPVAL                         R16 1
       77 GETTABLEKS                       R15 R16 K4 ["Status"]
       79 GETTABLEKS                       R14 R15 K20 ["Rejected"]
       81 JUMPIFNOTEQ                      R13 R14 ; [+22]
       83 GETIMPORT                        R13 K1 [ipairs]
       85 MOVE                             R14 R4
       86 CALL                             R13 1 3
       87 FORGPREP_INEXT                   R13
       88 NAMECALL                         R18 R17 K6 ["cancel"]
       90 CALL                             R18 1 0
       91 FORGLOOP                         R13 2 [inext] ; [-4]
       93 MOVE                             R13 R1
       94 GETIMPORT                        R14 K22 [select]
       96 LOADN                            R15 2
       97 NAMECALL                         R16 R12 K23 ["await"]
       99 CALL                             R16 1 -1
      100 CALL                             R14 -1 -1
      101 CALL                             R13 -1 -1
      102 CLOSEUPVALS                      R5
      103 RETURN                           R13 -1
      104 DUPCLOSURE                       R15 K24 [PROTO_59]
      105 NAMECALL                         R13 R12 K25 ["andThen"]
      107 CALL                             R13 2 1
      108 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
      110 MOVE                             R15 R4
      111 MOVE                             R16 R13
      112 GETIMPORT                        R14 K28 [table.insert]
      114 CALL                             R14 2 0
      115 SETTABLE                         R13 R7 R11
      116 JUMP                             ; [+1]
      117 SETTABLE                         R12 R7 R11
      118 FORGLOOP                         R8 2 [inext] ; [-100]
      120 GETIMPORT                        R8 K1 [ipairs]
      122 MOVE                             R9 R7
      123 CALL                             R8 1 3
      124 FORGPREP_INEXT                   R8
      125 GETUPVAL                         R14 1
      126 GETTABLEKS                       R13 R14 K2 ["is"]
      128 MOVE                             R14 R12
      129 CALL                             R13 1 1
      130 JUMPIFNOT                        R13 ; [+22]
      131 LOADNIL                          R13
      132 NAMECALL                         R14 R12 K23 ["await"]
      134 CALL                             R14 1 2
      135 MOVE                             R13 R14
      136 MOVE                             R12 R15
      137 JUMPIF                           R13 ; [+15]
      138 GETIMPORT                        R14 K1 [ipairs]
      140 MOVE                             R15 R4
      141 CALL                             R14 1 3
      142 FORGPREP_INEXT                   R14
      143 NAMECALL                         R19 R18 K6 ["cancel"]
      145 CALL                             R19 1 0
      146 FORGLOOP                         R14 2 [inext] ; [-4]
      148 MOVE                             R14 R1
      149 MOVE                             R15 R12
      150 CALL                             R14 1 -1
      151 CLOSEUPVALS                      R5
      152 RETURN                           R14 -1
      153 JUMPIFNOT                        R5 ; [+2]
      154 CLOSEUPVALS                      R5
      155 RETURN                           R0 0
      156 GETUPVAL                         R14 1
      157 GETTABLEKS                       R13 R14 K29 ["resolve"]
      159 GETUPVAL                         R14 3
      160 MOVE                             R15 R12
      161 MOVE                             R16 R11
      162 CALL                             R14 2 -1
      163 CALL                             R13 -1 1
      164 FASTCALL2                        TABLE_INSERT R4 R13 ; [+5]
      166 MOVE                             R15 R4
      167 MOVE                             R16 R13
      168 GETIMPORT                        R14 K28 [table.insert]
      170 CALL                             R14 2 0
      171 NAMECALL                         R14 R13 K23 ["await"]
      173 CALL                             R14 1 2
      174 JUMPIF                           R14 ; [+15]
      175 GETIMPORT                        R16 K1 [ipairs]
      177 MOVE                             R17 R4
      178 CALL                             R16 1 3
      179 FORGPREP_INEXT                   R16
      180 NAMECALL                         R21 R20 K6 ["cancel"]
      182 CALL                             R21 1 0
      183 FORGLOOP                         R16 2 [inext] ; [-4]
      185 MOVE                             R16 R1
      186 MOVE                             R17 R15
      187 CALL                             R16 1 -1
      188 CLOSEUPVALS                      R5
      189 RETURN                           R16 -1
      190 SETTABLE                         R15 R3 R11
      191 FORGLOOP                         R8 2 [inext] ; [-67]
      193 MOVE                             R8 R0
      194 MOVE                             R9 R3
      195 CALL                             R8 1 0
      196 CLOSEUPVALS                      R5
      197 RETURN                           R0 0

PROTO_61:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["Please pass a list of promises to %s"]
       12 LOADK                            R6 K7 ["Promise.each"]
       13 CALL                             R4 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K9 [assert]
       17 CALL                             R2 -1 0
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R5 R1
       20 GETIMPORT                        R4 K1 [type]
       22 CALL                             R4 1 1
       23 JUMPIFEQKS                       R4 K10 ["function"] ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 GETIMPORT                        R4 K5 [string.format]
       29 LOADK                            R5 K11 ["Please pass a handler function to %s!"]
       30 LOADK                            R6 K7 ["Promise.each"]
       31 CALL                             R4 2 -1
       32 FASTCALL                         ASSERT ; [+2]
       33 GETIMPORT                        R2 K9 [assert]
       35 CALL                             R2 -1 0
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K12 ["_new"]
       39 GETIMPORT                        R3 K15 [debug.traceback]
       41 LOADNIL                          R4
       42 LOADN                            R5 2
       43 CALL                             R3 2 1
       44 NEWCLOSURE                       R4 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          VAL R1
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1

PROTO_62:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 FASTCALL1                        GETMETATABLE R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [getmetatable]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 JUMPIFNOTEQ                      R1 R2 ; [+3]
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 JUMPIFNOTEQKNIL                  R1 ; [+12]
       21 GETTABLEKS                       R4 R0 K5 ["andThen"]
       23 FASTCALL1                        TYPE R4 ; [+2]
       24 GETIMPORT                        R3 K1 [type]
       26 CALL                             R3 1 1
       27 JUMPIFEQKS                       R3 K6 ["function"] ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1
       32 FASTCALL1                        TYPE R1 ; [+3]
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K1 [type]
       36 CALL                             R2 1 1
       37 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+35]
       39 FASTCALL2K                       RAWGET R1 K7 ; [+5]
       41 MOVE                             R4 R1
       42 LOADK                            R5 K7 ["__index"]
       43 GETIMPORT                        R3 K9 [rawget]
       45 CALL                             R3 2 1
       46 FASTCALL1                        TYPE R3 ; [+2]
       47 GETIMPORT                        R2 K1 [type]
       49 CALL                             R2 1 1
       50 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+22]
       52 FASTCALL2K                       RAWGET R1 K7 ; [+5]
       54 MOVE                             R5 R1
       55 LOADK                            R6 K7 ["__index"]
       56 GETIMPORT                        R4 K9 [rawget]
       58 CALL                             R4 2 1
       59 FASTCALL2K                       RAWGET R4 K5 ; [+4]
       61 LOADK                            R5 K5 ["andThen"]
       62 GETIMPORT                        R3 K9 [rawget]
       64 CALL                             R3 2 1
       65 FASTCALL1                        TYPE R3 ; [+2]
       66 GETIMPORT                        R2 K1 [type]
       68 CALL                             R2 1 1
       69 JUMPIFNOTEQKS                    R2 K6 ["function"] ; [+3]
       71 LOADB                            R2 1
       72 RETURN                           R2 1
       73 LOADB                            R2 0
       74 RETURN                           R2 1

PROTO_63:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_try"]
        4 GETIMPORT                        R1 K3 [debug.traceback]
        6 LOADNIL                          R2
        7 LOADN                            R3 2
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 1
       10 GETVARARGS                       R3 -1
       11 CALL                             R0 -1 -1
       12 RETURN                           R0 -1

PROTO_64:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_getTime"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 JUMPIFEQKNIL                     R1 ; [+35]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["endTime"]
       10 JUMPIFNOTLT                      R1 R0 ; [+30]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R2 R1 K2 ["next"]
       15 SETUPVAL                         R2 1
       16 GETUPVAL                         R2 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+8]
       19 GETUPVAL                         R2 2
       20 NAMECALL                         R2 R2 K3 ["Disconnect"]
       22 CALL                             R2 1 0
       23 LOADNIL                          R2
       24 SETUPVAL                         R2 2
       25 JUMP                             ; [+4]
       26 GETUPVAL                         R2 1
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R2 K4 ["previous"]
       30 GETTABLEKS                       R2 R1 K5 ["resolve"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K0 ["_getTime"]
       35 CALL                             R4 0 1
       36 GETTABLEKS                       R5 R1 K6 ["startTime"]
       38 SUB                              R3 R4 R5
       39 CALL                             R2 1 0
       40 JUMPBACK                         ; [-37]
       41 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["next"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTEQ                      R1 R2 ; [+15]
        7 JUMPIFNOTEQKNIL                  R0 ; [+8]
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K1 ["Disconnect"]
       12 CALL                             R1 1 0
       13 LOADNIL                          R1
       14 SETUPVAL                         R1 2
       15 JUMP                             ; [+3]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K2 ["previous"]
       19 SETUPVAL                         R0 1
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K2 ["previous"]
       24 SETTABLEKS                       R0 R1 K0 ["next"]
       26 JUMPIFEQKNIL                     R0 ; [+3]
       28 SETTABLEKS                       R1 R0 K2 ["previous"]
       30 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["_getTime"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R5 1
        5 ADD                              R4 R3 R5
        6 DUPTABLE                         R5 K4 [{"resolve", "startTime", "endTime"}]
        7 SETTABLEKS                       R0 R5 K1 ["resolve"]
        9 SETTABLEKS                       R3 R5 K2 ["startTime"]
       11 SETTABLEKS                       R4 R5 K3 ["endTime"]
       13 GETUPVAL                         R6 2
       14 JUMPIFNOTEQKNIL                  R6 ; [+14]
       16 SETUPVAL                         R5 3
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K5 ["_timeEvent"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U2
       24 NAMECALL                         R6 R6 K6 ["Connect"]
       26 CALL                             R6 2 1
       27 SETUPVAL                         R6 2
       28 JUMP                             ; [+36]
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R6 R7 K3 ["endTime"]
       32 JUMPIFNOTLT                      R6 R4 ; [+25]
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R7 R6 K7 ["next"]
       37 JUMPIFEQKNIL                     R7 ; [+9]
       39 GETTABLEKS                       R8 R7 K3 ["endTime"]
       41 JUMPIFNOTLT                      R8 R4 ; [+5]
       43 MOVE                             R6 R7
       44 GETTABLEKS                       R7 R6 K7 ["next"]
       46 JUMPBACK                         ; [-10]
       47 SETTABLEKS                       R5 R6 K7 ["next"]
       49 SETTABLEKS                       R6 R5 K8 ["previous"]
       51 JUMPIFEQKNIL                     R7 ; [+13]
       53 SETTABLEKS                       R7 R5 K7 ["next"]
       55 SETTABLEKS                       R5 R7 K8 ["previous"]
       57 JUMP                             ; [+7]
       58 GETUPVAL                         R6 3
       59 SETTABLEKS                       R6 R5 K7 ["next"]
       61 GETUPVAL                         R6 3
       62 SETTABLEKS                       R5 R6 K8 ["previous"]
       64 SETUPVAL                         R5 3
       65 MOVE                             R6 R2
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U2
       70 CALL                             R6 1 0
       71 RETURN                           R0 0

PROTO_68:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Bad argument #1 to Promise.delay, must be a number."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 LOADK                            R1 K6 [0.0166666666666667]
       16 JUMPIFNOTLE                      R1 R0 ; [+3]
       18 JUMPIFNOTEQKN                    R0 K7 [∞] ; [+2]
       20 LOADK                            R0 K6 [0.0166666666666667]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K8 ["_new"]
       24 GETIMPORT                        R2 K11 [debug.traceback]
       26 LOADNIL                          R3
       27 LOADN                            R4 2
       28 CALL                             R2 2 1
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          REF R0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CALL                             R1 2 -1
       35 CLOSEUPVALS                      R0
       36 RETURN                           R1 -1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reject"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+25]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["new"]
        9 DUPTABLE                         R2 K5 [{"kind", "error", "context"}]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K6 ["Kind"]
       13 GETTABLEKS                       R3 R4 K7 ["TimedOut"]
       15 SETTABLEKS                       R3 R2 K2 ["kind"]
       17 LOADK                            R3 K8 ["Timed out"]
       18 SETTABLEKS                       R3 R2 K3 ["error"]
       20 GETIMPORT                        R3 K11 [string.format]
       22 LOADK                            R4 K12 ["Timeout of %d seconds exceeded.\n:timeout() called at:\n\n%s"]
       23 GETUPVAL                         R5 3
       24 GETUPVAL                         R6 4
       25 CALL                             R3 3 1
       26 SETTABLEKS                       R3 R2 K4 ["context"]
       28 CALL                             R1 1 1
       29 JUMPIF                           R1 ; [+1]
       30 GETUPVAL                         R1 1
       31 CALL                             R0 1 -1
       32 RETURN                           R0 -1

PROTO_70:
        0 GETIMPORT                        R3 K2 [debug.traceback]
        2 LOADNIL                          R4
        3 LOADN                            R5 2
        4 CALL                             R3 2 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K3 ["race"]
        8 NEWTABLE                         R5 0 2
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K4 ["delay"]
       13 MOVE                             R7 R1
       14 CALL                             R6 1 1
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R3
       21 NAMECALL                         R6 R6 K5 ["andThen"]
       23 CALL                             R6 2 1
       24 MOVE                             R7 R0
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

PROTO_71:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 RETURN                           R1 1

PROTO_72:
        0 MOVE                             R2 R0
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 MOVE                             R3 R1
       12 GETUPVAL                         R4 3
       13 JUMPIFNOT                        R4 ; [+8]
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 3
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R4 R5 K0 ["_status"]
       25 GETUPVAL                         R7 5
       26 GETTABLEKS                       R6 R7 K1 ["Status"]
       28 GETTABLEKS                       R5 R6 K2 ["Started"]
       30 JUMPIFNOTEQ                      R4 R5 ; [+20]
       32 GETUPVAL                         R6 4
       33 GETTABLEKS                       R5 R6 K3 ["_queuedResolve"]
       35 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       37 MOVE                             R6 R2
       38 GETIMPORT                        R4 K6 [table.insert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R5 R6 K7 ["_queuedReject"]
       44 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       46 MOVE                             R6 R3
       47 GETIMPORT                        R4 K6 [table.insert]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R4 R5 K0 ["_status"]
       54 GETUPVAL                         R7 5
       55 GETTABLEKS                       R6 R7 K1 ["Status"]
       57 GETTABLEKS                       R5 R6 K8 ["Resolved"]
       59 JUMPIFNOTEQ                      R4 R5 ; [+15]
       61 MOVE                             R4 R2
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R6 R7 K9 ["_values"]
       65 LOADN                            R7 1
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R8 R9 K10 ["_valuesLength"]
       69 FASTCALL                         TABLE_UNPACK ; [+2]
       70 GETIMPORT                        R5 K12 [unpack]
       72 CALL                             R5 3 -1
       73 CALL                             R4 -1 0
       74 RETURN                           R0 0
       75 GETUPVAL                         R5 4
       76 GETTABLEKS                       R4 R5 K0 ["_status"]
       78 GETUPVAL                         R7 5
       79 GETTABLEKS                       R6 R7 K1 ["Status"]
       81 GETTABLEKS                       R5 R6 K13 ["Rejected"]
       83 JUMPIFNOTEQ                      R4 R5 ; [+15]
       85 MOVE                             R4 R3
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R6 R7 K9 ["_values"]
       89 LOADN                            R7 1
       90 GETUPVAL                         R9 4
       91 GETTABLEKS                       R8 R9 K10 ["_valuesLength"]
       93 FASTCALL                         TABLE_UNPACK ; [+2]
       94 GETIMPORT                        R5 K12 [unpack]
       96 CALL                             R5 3 -1
       97 CALL                             R4 -1 0
       98 RETURN                           R0 0
       99 GETUPVAL                         R5 4
      100 GETTABLEKS                       R4 R5 K0 ["_status"]
      102 GETUPVAL                         R7 5
      103 GETTABLEKS                       R6 R7 K1 ["Status"]
      105 GETTABLEKS                       R5 R6 K14 ["Cancelled"]
      107 JUMPIFNOTEQ                      R4 R5 ; [+23]
      109 MOVE                             R4 R1
      110 GETUPVAL                         R6 6
      111 GETTABLEKS                       R5 R6 K15 ["new"]
      113 DUPTABLE                         R6 K19 [{"error", "kind", "context"}]
      114 LOADK                            R7 K20 ["Promise is cancelled"]
      115 SETTABLEKS                       R7 R6 K16 ["error"]
      117 GETUPVAL                         R9 6
      118 GETTABLEKS                       R8 R9 K21 ["Kind"]
      120 GETTABLEKS                       R7 R8 K22 ["AlreadyCancelled"]
      122 SETTABLEKS                       R7 R6 K17 ["kind"]
      124 LOADK                            R8 K23 ["Promise created at\n\n"]
      125 GETUPVAL                         R9 1
      126 CONCAT                           R7 R8 R9
      127 SETTABLEKS                       R7 R6 K18 ["context"]
      129 CALL                             R5 1 -1
      130 CALL                             R4 -1 0
      131 RETURN                           R0 0

PROTO_73:
        0 LOADB                            R4 0
        1 SETTABLEKS                       R4 R0 K0 ["_unhandledRejection"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["_new"]
        6 MOVE                             R5 R1
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U2
       15 MOVE                             R7 R0
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

PROTO_74:
        0 LOADB                            R4 1
        1 JUMPIFEQKNIL                     R1 ; [+15]
        3 LOADB                            R4 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R6 R1
        6 GETIMPORT                        R5 K1 [type]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K2 ["function"] ; [+7]
       11 GETTABLEKS                       R5 R1 K3 ["__call"]
       13 JUMPIFNOTEQKNIL                  R5 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETIMPORT                        R5 K6 [string.format]
       19 LOADK                            R6 K7 ["Please pass a handler function to %s!"]
       20 LOADK                            R7 K8 ["Promise:andThen"]
       21 CALL                             R5 2 -1
       22 FASTCALL                         ASSERT ; [+2]
       23 GETIMPORT                        R3 K10 [assert]
       25 CALL                             R3 -1 0
       26 LOADB                            R4 1
       27 JUMPIFEQKNIL                     R2 ; [+15]
       29 LOADB                            R4 1
       30 FASTCALL1                        TYPE R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K1 [type]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K2 ["function"] ; [+7]
       37 GETTABLEKS                       R5 R2 K3 ["__call"]
       39 JUMPIFNOTEQKNIL                  R5 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 GETIMPORT                        R5 K6 [string.format]
       45 LOADK                            R6 K7 ["Please pass a handler function to %s!"]
       46 LOADK                            R7 K8 ["Promise:andThen"]
       47 CALL                             R5 2 -1
       48 FASTCALL                         ASSERT ; [+2]
       49 GETIMPORT                        R3 K10 [assert]
       51 CALL                             R3 -1 0
       52 GETIMPORT                        R5 K13 [debug.traceback]
       54 LOADNIL                          R6
       55 LOADN                            R7 2
       56 CALL                             R5 2 1
       57 MOVE                             R6 R1
       58 MOVE                             R7 R2
       59 NAMECALL                         R3 R0 K14 ["_andThen"]
       61 CALL                             R3 4 -1
       62 RETURN                           R3 -1

PROTO_75:
        0 LOADB                            R3 1
        1 JUMPIFEQKNIL                     R1 ; [+15]
        3 LOADB                            R3 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K1 [type]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K2 ["function"] ; [+7]
       11 GETTABLEKS                       R4 R1 K3 ["__call"]
       13 JUMPIFNOTEQKNIL                  R4 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETIMPORT                        R4 K6 [string.format]
       19 LOADK                            R5 K7 ["Please pass a handler function to %s!"]
       20 LOADK                            R6 K8 ["Promise:catch"]
       21 CALL                             R4 2 -1
       22 FASTCALL                         ASSERT ; [+2]
       23 GETIMPORT                        R2 K10 [assert]
       25 CALL                             R2 -1 0
       26 GETIMPORT                        R4 K13 [debug.traceback]
       28 LOADNIL                          R5
       29 LOADN                            R6 2
       30 CALL                             R4 2 1
       31 LOADNIL                          R5
       32 MOVE                             R6 R1
       33 NAMECALL                         R2 R0 K14 ["_andThen"]
       35 CALL                             R2 4 -1
       36 RETURN                           R2 -1

PROTO_76:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_77:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["is"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETUPVAL                         R1 2
       11 GETVARARGS                       R2 -1
       12 CALL                             R1 -1 2
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R3 R0 K1 ["andThen"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1
       20 GETVARARGS                       R1 -1
       21 RETURN                           R1 -1

PROTO_78:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 GETIMPORT                        R4 K5 [string.format]
       11 LOADK                            R5 K6 ["Please pass a handler function to %s!"]
       12 LOADK                            R6 K7 ["Promise:tap"]
       13 CALL                             R4 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K9 [assert]
       17 CALL                             R2 -1 0
       18 GETIMPORT                        R4 K12 [debug.traceback]
       20 LOADNIL                          R5
       21 LOADN                            R6 2
       22 CALL                             R4 2 1
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R2 R0 K13 ["_andThen"]
       29 CALL                             R2 3 -1
       30 RETURN                           R2 -1

PROTO_79:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_80:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETIMPORT                        R4 K5 [string.format]
       12 LOADK                            R5 K6 ["Please pass a handler function to %s!"]
       13 LOADK                            R6 K7 ["Promise:andThenCall"]
       14 CALL                             R4 2 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R2 K9 [assert]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 0
       20 GETVARARGS                       R3 -1
       21 CALL                             R2 -1 2
       22 GETIMPORT                        R6 K12 [debug.traceback]
       24 LOADNIL                          R7
       25 LOADN                            R8 2
       26 CALL                             R6 2 1
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R4 R0 K13 ["_andThen"]
       33 CALL                             R4 3 -1
       34 RETURN                           R4 -1

PROTO_81:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_82:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 2
        4 GETIMPORT                        R5 K2 [debug.traceback]
        6 LOADNIL                          R6
        7 LOADN                            R7 2
        8 CALL                             R5 2 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R3 R0 K3 ["_andThen"]
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_83:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["Started"]
        7 JUMPIFEQ                         R1 R2 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["Status"]
       13 GETTABLEKS                       R1 R2 K3 ["Cancelled"]
       15 SETTABLEKS                       R1 R0 K0 ["_status"]
       17 GETTABLEKS                       R1 R0 K4 ["_cancellationHook"]
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R1 R0 K4 ["_cancellationHook"]
       22 CALL                             R1 0 0
       23 GETTABLEKS                       R1 R0 K5 ["_parent"]
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETTABLEKS                       R1 R0 K5 ["_parent"]
       28 MOVE                             R3 R0
       29 NAMECALL                         R1 R1 K6 ["_consumerCancelled"]
       31 CALL                             R1 2 0
       32 GETIMPORT                        R1 K8 [pairs]
       34 GETTABLEKS                       R2 R0 K9 ["_consumers"]
       36 CALL                             R1 1 3
       37 FORGPREP_NEXT                    R1
       38 NAMECALL                         R6 R4 K10 ["cancel"]
       40 CALL                             R6 1 0
       41 FORGLOOP                         R1 1 ; [-4]
       43 NAMECALL                         R1 R0 K11 ["_finalize"]
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_84:
        0 GETTABLEKS                       R2 R0 K0 ["_status"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["Status"]
        5 GETTABLEKS                       R3 R4 K2 ["Started"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K3 ["_consumers"]
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R1
       14 GETIMPORT                        R2 K5 [next]
       16 GETTABLEKS                       R3 R0 K3 ["_consumers"]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+4]
       21 NAMECALL                         R2 R0 K6 ["cancel"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_85:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_status"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Status"]
        7 GETTABLEKS                       R1 R2 K2 ["Rejected"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+5]
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R1 0
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 3
       16 GETVARARGS                       R1 -1
       17 CALL                             R0 -1 -1
       18 RETURN                           R0 -1

PROTO_86:
        0 MOVE                             R2 R0
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 GETUPVAL                         R3 3
       12 JUMPIFNOT                        R3 ; [+6]
       13 MOVE                             R3 R2
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R3 R4 K0 ["_status"]
       22 GETUPVAL                         R6 5
       23 GETTABLEKS                       R5 R6 K1 ["Status"]
       25 GETTABLEKS                       R4 R5 K2 ["Started"]
       27 JUMPIFNOTEQ                      R3 R4 ; [+11]
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R4 R5 K3 ["_queuedFinally"]
       32 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       34 MOVE                             R5 R2
       35 GETIMPORT                        R3 K6 [table.insert]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0
       39 MOVE                             R3 R2
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R4 R5 K0 ["_status"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

PROTO_87:
        0 JUMPIF                           R3 ; [+3]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R0 K0 ["_unhandledRejection"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["_new"]
        7 MOVE                             R5 R1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 MOVE                             R7 R0
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

PROTO_88:
        0 LOADB                            R3 1
        1 JUMPIFEQKNIL                     R1 ; [+17]
        3 LOADB                            R3 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K1 [type]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K2 ["function"] ; [+9]
       11 GETTABLEKS                       R4 R1 K3 ["__call"]
       13 GETIMPORT                        R5 K5 [nill]
       15 JUMPIFNOTEQ                      R4 R5 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETIMPORT                        R4 K8 [string.format]
       21 LOADK                            R5 K9 ["Please pass a handler function to %s!"]
       22 LOADK                            R6 K10 ["Promise:finally"]
       23 CALL                             R4 2 -1
       24 FASTCALL                         ASSERT ; [+2]
       25 GETIMPORT                        R2 K12 [assert]
       27 CALL                             R2 -1 0
       28 GETIMPORT                        R4 K15 [debug.traceback]
       30 LOADNIL                          R5
       31 LOADN                            R6 2
       32 CALL                             R4 2 1
       33 MOVE                             R5 R1
       34 NAMECALL                         R2 R0 K16 ["_finally"]
       36 CALL                             R2 3 -1
       37 RETURN                           R2 -1

PROTO_89:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_90:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETIMPORT                        R4 K5 [string.format]
       12 LOADK                            R5 K6 ["Please pass a handler function to %s!"]
       13 LOADK                            R6 K7 ["Promise:finallyCall"]
       14 CALL                             R4 2 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R2 K9 [assert]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 0
       20 GETVARARGS                       R3 -1
       21 CALL                             R2 -1 2
       22 GETIMPORT                        R6 K12 [debug.traceback]
       24 LOADNIL                          R7
       25 LOADN                            R8 2
       26 CALL                             R6 2 1
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 NAMECALL                         R4 R0 K13 ["_finally"]
       33 CALL                             R4 3 -1
       34 RETURN                           R4 -1

PROTO_91:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_92:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 2
        4 GETIMPORT                        R5 K2 [debug.traceback]
        6 LOADNIL                          R6
        7 LOADN                            R7 2
        8 CALL                             R5 2 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R3 R0 K3 ["_finally"]
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

PROTO_93:
        0 LOADB                            R3 1
        1 JUMPIFEQKNIL                     R1 ; [+17]
        3 LOADB                            R3 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K1 [type]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K2 ["function"] ; [+9]
       11 GETTABLEKS                       R4 R1 K3 ["__call"]
       13 GETIMPORT                        R5 K5 [nill]
       15 JUMPIFNOTEQ                      R4 R5 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETIMPORT                        R4 K8 [string.format]
       21 LOADK                            R5 K9 ["Please pass a handler function to %s!"]
       22 LOADK                            R6 K10 ["Promise:done"]
       23 CALL                             R4 2 -1
       24 FASTCALL                         ASSERT ; [+2]
       25 GETIMPORT                        R2 K12 [assert]
       27 CALL                             R2 -1 0
       28 GETIMPORT                        R4 K15 [debug.traceback]
       30 LOADNIL                          R5
       31 LOADN                            R6 2
       32 CALL                             R4 2 1
       33 MOVE                             R5 R1
       34 LOADB                            R6 1
       35 NAMECALL                         R2 R0 K16 ["_finally"]
       37 CALL                             R2 4 -1
       38 RETURN                           R2 -1

PROTO_94:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_95:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETIMPORT                        R4 K5 [string.format]
       12 LOADK                            R5 K6 ["Please pass a handler function to %s!"]
       13 LOADK                            R6 K7 ["Promise:doneCall"]
       14 CALL                             R4 2 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R2 K9 [assert]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 0
       20 GETVARARGS                       R3 -1
       21 CALL                             R2 -1 2
       22 GETIMPORT                        R6 K12 [debug.traceback]
       24 LOADNIL                          R7
       25 LOADN                            R8 2
       26 CALL                             R6 2 1
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 LOADB                            R8 1
       32 NAMECALL                         R4 R0 K13 ["_finally"]
       34 CALL                             R4 4 -1
       35 RETURN                           R4 -1

PROTO_96:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_97:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 2
        4 GETIMPORT                        R5 K2 [debug.traceback]
        6 LOADNIL                          R6
        7 LOADN                            R7 2
        8 CALL                             R5 2 1
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 LOADB                            R7 1
       13 NAMECALL                         R3 R0 K3 ["_finally"]
       15 CALL                             R3 4 -1
       16 RETURN                           R3 -1

PROTO_98:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_99:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_unhandledRejection"]
        3 GETTABLEKS                       R1 R0 K1 ["_status"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["Status"]
        8 GETTABLEKS                       R2 R3 K3 ["Started"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+18]
       12 GETIMPORT                        R1 K6 [Instance.new]
       14 LOADK                            R2 K7 ["BindableEvent"]
       15 CALL                             R1 1 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 NAMECALL                         R2 R0 K8 ["finally"]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R1 K9 ["Event"]
       23 NAMECALL                         R2 R2 K10 ["Wait"]
       25 CALL                             R2 1 0
       26 NAMECALL                         R2 R1 K11 ["Destroy"]
       28 CALL                             R2 1 0
       29 GETTABLEKS                       R1 R0 K1 ["_status"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K2 ["Status"]
       34 GETTABLEKS                       R2 R3 K12 ["Resolved"]
       36 JUMPIFNOTEQ                      R1 R2 ; [+13]
       38 GETTABLEKS                       R1 R0 K1 ["_status"]
       40 GETTABLEKS                       R3 R0 K13 ["_values"]
       42 LOADN                            R4 1
       43 GETTABLEKS                       R5 R0 K14 ["_valuesLength"]
       45 FASTCALL                         TABLE_UNPACK ; [+2]
       46 GETIMPORT                        R2 K16 [unpack]
       48 CALL                             R2 3 -1
       49 RETURN                           R1 -1
       50 GETTABLEKS                       R1 R0 K1 ["_status"]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K2 ["Status"]
       55 GETTABLEKS                       R2 R3 K17 ["Rejected"]
       57 JUMPIFNOTEQ                      R1 R2 ; [+13]
       59 GETTABLEKS                       R1 R0 K1 ["_status"]
       61 GETTABLEKS                       R3 R0 K13 ["_values"]
       63 LOADN                            R4 1
       64 GETTABLEKS                       R5 R0 K14 ["_valuesLength"]
       66 FASTCALL                         TABLE_UNPACK ; [+2]
       67 GETIMPORT                        R2 K16 [unpack]
       69 CALL                             R2 3 -1
       70 RETURN                           R1 -1
       71 GETTABLEKS                       R1 R0 K1 ["_status"]
       73 RETURN                           R1 1

PROTO_100:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["Status"]
        4 GETTABLEKS                       R2 R3 K1 ["Resolved"]
        6 JUMPIFEQ                         R0 R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETVARARGS                       R2 -1
       11 RETURN                           R1 -1

PROTO_101:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["awaitStatus"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_102:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Status"]
        4 GETTABLEKS                       R1 R2 K1 ["Resolved"]
        6 JUMPIFEQ                         R0 R1 ; [+11]
        8 GETIMPORT                        R1 K3 [error]
       10 GETVARARGS                       R3 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+3]
       13 LOADK                            R2 K4 ["Expected Promise rejected with no value."]
       14 JUMP                             ; [+1]
       15 GETVARARGS                       R2 1
       16 LOADN                            R3 3
       17 CALL                             R1 2 0
       18 GETVARARGS                       R1 -1
       19 RETURN                           R1 -1

PROTO_103:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["awaitStatus"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_104:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["Started"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+6]
        9 GETIMPORT                        R1 K4 [error]
       11 LOADK                            R2 K5 ["Promise has not resolved or rejected."]
       12 LOADN                            R3 2
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["_status"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K1 ["Status"]
       19 GETTABLEKS                       R3 R4 K6 ["Resolved"]
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

PROTO_105:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_106:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["_values"]
        4 GETTABLEN                        R0 R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["_error"]
        8 JUMPIFNOT                        R1 ; [+21]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["new"]
       12 DUPTABLE                         R2 K6 [{"error", "kind", "context"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["_error"]
       16 SETTABLEKS                       R3 R2 K3 ["error"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K7 ["Kind"]
       21 GETTABLEKS                       R3 R4 K8 ["ExecutionError"]
       23 SETTABLEKS                       R3 R2 K4 ["kind"]
       25 LOADK                            R3 K9 ["[No stack trace available as this Promise originated from an older version of the Promise library (< v2)]"]
       26 SETTABLEKS                       R3 R2 K5 ["context"]
       28 CALL                             R1 1 1
       29 MOVE                             R0 R1
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K10 ["isKind"]
       33 MOVE                             R2 R0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K7 ["Kind"]
       37 GETTABLEKS                       R3 R4 K8 ["ExecutionError"]
       39 CALL                             R1 2 1
       40 JUMPIFNOT                        R1 ; [+24]
       41 GETUPVAL                         R1 2
       42 DUPTABLE                         R5 K12 [{"error", "trace", "context"}]
       43 LOADK                            R6 K13 ["This Promise was chained to a Promise that errored."]
       44 SETTABLEKS                       R6 R5 K3 ["error"]
       46 LOADK                            R6 K14 [""]
       47 SETTABLEKS                       R6 R5 K11 ["trace"]
       49 GETIMPORT                        R6 K17 [string.format]
       51 LOADK                            R7 K18 ["The Promise at:\n\n%s\n...Rejected because it was chained to the following Promise, which encountered an error:\n"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K19 ["_source"]
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K5 ["context"]
       58 NAMECALL                         R3 R0 K20 ["extend"]
       60 CALL                             R3 2 -1
       61 NAMECALL                         R1 R1 K21 ["_reject"]
       63 CALL                             R1 -1 -1
       64 RETURN                           R1 -1
       65 GETUPVAL                         R1 2
       66 GETVARARGS                       R3 -1
       67 NAMECALL                         R1 R1 K21 ["_reject"]
       69 CALL                             R1 -1 0
       70 RETURN                           R0 0

PROTO_107:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_status"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["Status"]
        6 GETTABLEKS                       R2 R3 K2 ["Started"]
        8 JUMPIFEQ                         R1 R2 ; [+13]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["is"]
       13 GETVARARGS                       R2 1
       14 CALL                             R1 1 1
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETVARARGS                       R1 1
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K4 ["_consumerCancelled"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K3 ["is"]
       25 GETVARARGS                       R2 1
       26 CALL                             R1 1 1
       27 JUMPIFNOT                        R1 ; [+58]
       28 LOADK                            R2 K5 ["#"]
       29 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       30 GETIMPORT                        R1 K7 [select]
       32 GETVARARGS                       R3 -1
       33 CALL                             R1 -1 1
       34 LOADN                            R2 1
       35 JUMPIFNOTLT                      R2 R1 ; [+11]
       37 GETIMPORT                        R1 K10 [string.format]
       39 LOADK                            R2 K11 ["When returning a Promise from andThen, extra arguments are discarded! See:\n\n%s"]
       40 GETTABLEKS                       R3 R0 K12 ["_source"]
       42 CALL                             R1 2 1
       43 GETIMPORT                        R2 K14 [warn]
       45 MOVE                             R3 R1
       46 CALL                             R2 1 0
       47 GETVARARGS                       R1 1
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          VAL R0
       50 NEWCLOSURE                       R5 P1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R2 R1 K15 ["andThen"]
       56 CALL                             R2 3 1
       57 GETTABLEKS                       R3 R2 K0 ["_status"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K1 ["Status"]
       62 GETTABLEKS                       R4 R5 K16 ["Cancelled"]
       64 JUMPIFNOTEQ                      R3 R4 ; [+5]
       66 NAMECALL                         R3 R0 K17 ["cancel"]
       68 CALL                             R3 1 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R3 R2 K0 ["_status"]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R5 R6 K1 ["Status"]
       75 GETTABLEKS                       R4 R5 K2 ["Started"]
       77 JUMPIFNOTEQ                      R3 R4 ; [+7]
       79 SETTABLEKS                       R2 R0 K18 ["_parent"]
       81 GETTABLEKS                       R3 R2 K19 ["_consumers"]
       83 LOADB                            R4 1
       84 SETTABLE                         R4 R3 R0
       85 RETURN                           R0 0
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R2 R3 K1 ["Status"]
       89 GETTABLEKS                       R1 R2 K20 ["Resolved"]
       91 SETTABLEKS                       R1 R0 K0 ["_status"]
       93 GETUPVAL                         R1 2
       94 GETVARARGS                       R2 -1
       95 CALL                             R1 -1 2
       96 SETTABLEKS                       R1 R0 K21 ["_valuesLength"]
       98 SETTABLEKS                       R2 R0 K22 ["_values"]
      100 GETIMPORT                        R1 K24 [ipairs]
      102 GETTABLEKS                       R2 R0 K25 ["_queuedResolve"]
      104 CALL                             R1 1 3
      105 FORGPREP_INEXT                   R1
      106 GETIMPORT                        R6 K28 [coroutine.wrap]
      108 MOVE                             R7 R5
      109 CALL                             R6 1 1
      110 GETVARARGS                       R7 -1
      111 CALL                             R6 -1 0
      112 FORGLOOP                         R1 2 [inext] ; [-7]
      114 NAMECALL                         R1 R0 K29 ["_finalize"]
      116 CALL                             R1 1 0
      117 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_timeEvent"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["_unhandledRejection"]
        9 JUMPIF                           R0 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R0 K5 [string.format]
       13 LOADK                            R1 K6 ["Unhandled Promise rejection:\n\n%s\n\n%s"]
       14 GETUPVAL                         R2 2
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K7 ["_source"]
       18 CALL                             R0 3 1
       19 GETIMPORT                        R1 K9 [ipairs]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R2 R4 K10 ["_unhandledRejectionCallbacks"]
       24 CALL                             R1 1 3
       25 FORGPREP_INEXT                   R1
       26 GETIMPORT                        R6 K13 [task.spawn]
       28 MOVE                             R7 R5
       29 GETUPVAL                         R8 1
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R10 R11 K14 ["_values"]
       33 LOADN                            R11 1
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R12 R13 K15 ["_valuesLength"]
       37 FASTCALL                         TABLE_UNPACK ; [+2]
       38 GETIMPORT                        R9 K17 [unpack]
       40 CALL                             R9 3 -1
       41 CALL                             R6 -1 0
       42 FORGLOOP                         R1 2 [inext] ; [-17]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K18 ["TEST"]
       47 JUMPIFNOT                        R1 ; [+1]
       48 RETURN                           R0 0
       49 GETIMPORT                        R1 K20 [warn]
       51 MOVE                             R2 R0
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_109:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_status"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["Status"]
        6 GETTABLEKS                       R2 R3 K2 ["Started"]
        8 JUMPIFEQ                         R1 R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K1 ["Status"]
       14 GETTABLEKS                       R1 R2 K3 ["Rejected"]
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
       35 JUMPIF                           R1 ; [+15]
       36 GETIMPORT                        R1 K10 [ipairs]
       38 GETTABLEKS                       R2 R0 K6 ["_queuedReject"]
       40 CALL                             R1 1 3
       41 FORGPREP_INEXT                   R1
       42 GETIMPORT                        R6 K13 [coroutine.wrap]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 GETVARARGS                       R7 -1
       47 CALL                             R6 -1 0
       48 FORGLOOP                         R1 2 [inext] ; [-7]
       50 JUMP                             ; [+13]
       51 GETVARARGS                       R2 1
       52 FASTCALL1                        TOSTRING R2 ; [+2]
       53 GETIMPORT                        R1 K15 [tostring]
       55 CALL                             R1 1 1
       56 GETIMPORT                        R2 K13 [coroutine.wrap]
       58 NEWCLOSURE                       R3 P0
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R1
       62 CALL                             R2 1 1
       63 CALL                             R2 0 0
       64 NAMECALL                         R1 R0 K16 ["_finalize"]
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

PROTO_110:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["_queuedFinally"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 GETIMPORT                        R6 K5 [coroutine.wrap]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R7 R0 K6 ["_status"]
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 [inext] ; [-8]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K2 ["_queuedFinally"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K7 ["_queuedReject"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K8 ["_queuedResolve"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K9 ["TEST"]
       27 JUMPIF                           R1 ; [+6]
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K10 ["_parent"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K11 ["_consumers"]
       34 RETURN                           R0 0

PROTO_111:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 -1
        2 RETURN                           R0 -1

PROTO_112:
        0 GETIMPORT                        R2 K2 [debug.traceback]
        2 LOADNIL                          R3
        3 LOADN                            R4 2
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K3 ["_status"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["Status"]
       10 GETTABLEKS                       R4 R5 K5 ["Resolved"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+7]
       14 MOVE                             R5 R2
       15 DUPCLOSURE                       R6 K6 [PROTO_111]
       16 NAMECALL                         R3 R0 K7 ["_andThen"]
       18 CALL                             R3 3 -1
       19 RETURN                           R3 -1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K8 ["reject"]
       23 JUMPIFNOTEQKNIL                  R1 ; [+22]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K9 ["new"]
       28 DUPTABLE                         R5 K13 [{"kind", "error", "context"}]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K14 ["Kind"]
       32 GETTABLEKS                       R6 R7 K15 ["NotResolvedInTime"]
       34 SETTABLEKS                       R6 R5 K10 ["kind"]
       36 LOADK                            R6 K16 ["This Promise was not resolved in time for :now()"]
       37 SETTABLEKS                       R6 R5 K11 ["error"]
       39 LOADK                            R7 K17 [":now() was called at:\n\n"]
       40 MOVE                             R8 R2
       41 CONCAT                           R6 R7 R8
       42 SETTABLEKS                       R6 R5 K12 ["context"]
       44 CALL                             R4 1 1
       45 JUMPIF                           R4 ; [+1]
       46 MOVE                             R4 R1
       47 CALL                             R3 1 -1
       48 RETURN                           R3 -1

PROTO_113:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+16]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["retry"]
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R3 0
       10 SUBK                             R2 R3 K1 [1]
       11 GETUPVAL                         R4 3
       12 LOADN                            R5 1
       13 GETUPVAL                         R6 4
       14 FASTCALL                         TABLE_UNPACK ; [+2]
       15 GETIMPORT                        R3 K3 [unpack]
       17 CALL                             R3 3 -1
       18 CALL                             R0 -1 -1
       19 RETURN                           R0 -1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R0 R1 K4 ["reject"]
       23 GETVARARGS                       R1 -1
       24 CALL                             R0 -1 -1
       25 RETURN                           R0 -1

PROTO_114:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       12 LOADK                            R4 K3 ["Parameter #1 to Promise.retry must be a function"]
       13 GETIMPORT                        R2 K5 [assert]
       15 CALL                             R2 2 0
       16 FASTCALL1                        TYPE R1 ; [+3]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K1 [type]
       20 CALL                             R4 1 1
       21 JUMPIFEQKS                       R4 K6 ["number"] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       27 LOADK                            R4 K7 ["Parameter #2 to Promise.retry must be a number"]
       28 GETIMPORT                        R2 K5 [assert]
       30 CALL                             R2 2 0
       31 NEWTABLE                         R2 0 0
       33 GETVARARGS                       R4 -1
       34 SETLIST                          R2 R4 -1 [1]
       36 LOADK                            R4 K8 ["#"]
       37 FASTCALL1                        SELECT_VARARG R4 ; [+3]
       38 GETIMPORT                        R3 K10 [select]
       40 GETVARARGS                       R5 -1
       41 CALL                             R3 -1 1
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K11 ["resolve"]
       45 MOVE                             R5 R0
       46 GETVARARGS                       R6 -1
       47 CALL                             R5 -1 -1
       48 CALL                             R4 -1 1
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 NAMECALL                         R4 R4 K12 ["catch"]
       57 CALL                             R4 2 -1
       58 RETURN                           R4 -1

PROTO_115:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_116:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_117:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 1
        4 JUMPIFNOTEQKB                    R0 TRUE ; [+16]
        6 GETUPVAL                         R1 1
        7 GETVARARGS                       R2 -1
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 2
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETUPVAL                         R1 2
       12 NAMECALL                         R1 R1 K0 ["Disconnect"]
       14 CALL                             R1 1 0
       15 LOADNIL                          R1
       16 SETUPVAL                         R1 2
       17 RETURN                           R0 0
       18 LOADB                            R1 1
       19 SETUPVAL                         R1 3
       20 RETURN                           R0 0
       21 FASTCALL1                        TYPE R0 ; [+3]
       22 MOVE                             R2 R0
       23 GETIMPORT                        R1 K2 [type]
       25 CALL                             R1 1 1
       26 JUMPIFEQKS                       R1 K3 ["boolean"] ; [+5]
       28 GETIMPORT                        R1 K5 [error]
       30 LOADK                            R2 K6 ["Promise.fromEvent predicate should always return a boolean"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_118:
        0 LOADNIL                          R3
        1 LOADB                            R4 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R3
        4 GETUPVAL                         R6 0
        5 NEWCLOSURE                       R8 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          REF R3
        9 CAPTURE                          REF R4
       10 NAMECALL                         R6 R6 K0 ["Connect"]
       12 CALL                             R6 2 1
       13 MOVE                             R3 R6
       14 JUMPIFNOT                        R4 ; [+5]
       15 JUMPIFNOT                        R3 ; [+4]
       16 MOVE                             R6 R5
       17 CALL                             R6 0 -1
       18 CLOSEUPVALS                      R3
       19 RETURN                           R6 -1
       20 MOVE                             R6 R2
       21 MOVE                             R7 R5
       22 CALL                             R6 1 0
       23 CLOSEUPVALS                      R3
       24 RETURN                           R0 0

PROTO_119:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 DUPCLOSURE                       R2 K0 [PROTO_115]
        3 MOVE                             R1 R2
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["_new"]
        7 GETIMPORT                        R3 K4 [debug.traceback]
        9 LOADNIL                          R4
       10 LOADN                            R5 2
       11 CALL                             R3 2 1
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          REF R1
       15 CALL                             R2 2 -1
       16 CLOSEUPVALS                      R1
       17 RETURN                           R2 -1

PROTO_120:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["_unhandledRejectionCallbacks"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETIMPORT                        R1 K5 [table.remove]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["_unhandledRejectionCallbacks"]
       13 MOVE                             R3 R0
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_unhandledRejectionCallbacks"]
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K3 [table.insert]
        8 CALL                             R1 2 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"__mode"}]
        2 LOADK                            R1 K2 ["k"]
        3 SETTABLEKS                       R1 R0 K0 ["__mode"]
        5 DUPCLOSURE                       R1 K3 [PROTO_2]
        6 LOADNIL                          R2
        7 DUPTABLE                         R3 K5 [{"Kind"}]
        8 MOVE                             R4 R1
        9 LOADK                            R5 K6 ["Promise.Error.Kind"]
       10 NEWTABLE                         R6 0 4
       12 LOADK                            R7 K7 ["ExecutionError"]
       13 LOADK                            R8 K8 ["AlreadyCancelled"]
       14 LOADK                            R9 K9 ["NotResolvedInTime"]
       15 LOADK                            R10 K10 ["TimedOut"]
       16 SETLIST                          R6 R7 4 [1]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K4 ["Kind"]
       21 MOVE                             R2 R3
       22 SETTABLEKS                       R2 R2 K11 ["__index"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          REF R2
       26 SETTABLEKS                       R3 R2 K12 ["new"]
       28 DUPCLOSURE                       R3 K13 [PROTO_4]
       29 SETTABLEKS                       R3 R2 K14 ["is"]
       31 NEWCLOSURE                       R3 P3
       32 CAPTURE                          REF R2
       33 SETTABLEKS                       R3 R2 K15 ["isKind"]
       35 NEWCLOSURE                       R3 P4
       36 CAPTURE                          REF R2
       37 SETTABLEKS                       R3 R2 K16 ["extend"]
       39 DUPCLOSURE                       R3 K17 [PROTO_7]
       40 SETTABLEKS                       R3 R2 K18 ["getErrorChain"]
       42 DUPCLOSURE                       R3 K19 [PROTO_8]
       43 SETTABLEKS                       R3 R2 K20 ["__tostring"]
       45 DUPCLOSURE                       R3 K21 [PROTO_9]
       46 DUPCLOSURE                       R4 K22 [PROTO_10]
       47 NEWCLOSURE                       R5 P9
       48 CAPTURE                          REF R2
       49 NEWCLOSURE                       R6 P10
       50 CAPTURE                          VAL R4
       51 CAPTURE                          REF R2
       52 DUPCLOSURE                       R7 K23 [PROTO_15]
       53 CAPTURE                          VAL R6
       54 DUPCLOSURE                       R8 K24 [PROTO_16]
       55 DUPTABLE                         R9 K30 [{"Error", "Status", "_getTime", "_timeEvent", "_unhandledRejectionCallbacks"}]
       56 SETTABLEKS                       R2 R9 K25 ["Error"]
       58 MOVE                             R10 R1
       59 LOADK                            R11 K31 ["Promise.Status"]
       60 NEWTABLE                         R12 0 4
       62 LOADK                            R13 K32 ["Started"]
       63 LOADK                            R14 K33 ["Resolved"]
       64 LOADK                            R15 K34 ["Rejected"]
       65 LOADK                            R16 K35 ["Cancelled"]
       66 SETLIST                          R12 R13 4 [1]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K26 ["Status"]
       71 GETIMPORT                        R10 K38 [os.clock]
       73 SETTABLEKS                       R10 R9 K27 ["_getTime"]
       75 GETIMPORT                        R11 K40 [game]
       77 LOADK                            R13 K41 ["RunService"]
       78 NAMECALL                         R11 R11 K42 ["GetService"]
       80 CALL                             R11 2 1
       81 GETTABLEKS                       R10 R11 K43 ["Heartbeat"]
       83 SETTABLEKS                       R10 R9 K28 ["_timeEvent"]
       85 NEWTABLE                         R10 0 0
       87 SETTABLEKS                       R10 R9 K29 ["_unhandledRejectionCallbacks"]
       89 NEWTABLE                         R10 0 0
       91 SETTABLEKS                       R10 R9 K44 ["prototype"]
       93 GETTABLEKS                       R10 R9 K44 ["prototype"]
       95 SETTABLEKS                       R10 R9 K11 ["__index"]
       97 DUPCLOSURE                       R10 K45 [PROTO_21]
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R6
      101 SETTABLEKS                       R10 R9 K46 ["_new"]
      103 DUPCLOSURE                       R10 K47 [PROTO_22]
      104 CAPTURE                          VAL R9
      105 SETTABLEKS                       R10 R9 K12 ["new"]
      107 DUPCLOSURE                       R10 K48 [PROTO_23]
      108 SETTABLEKS                       R10 R9 K20 ["__tostring"]
      110 DUPCLOSURE                       R10 K49 [PROTO_26]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R6
      113 SETTABLEKS                       R10 R9 K50 ["defer"]
      115 GETTABLEKS                       R10 R9 K50 ["defer"]
      117 SETTABLEKS                       R10 R9 K51 ["async"]
      119 DUPCLOSURE                       R10 K52 [PROTO_28]
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R9
      122 SETTABLEKS                       R10 R9 K53 ["resolve"]
      124 DUPCLOSURE                       R10 K54 [PROTO_30]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R9
      127 SETTABLEKS                       R10 R9 K55 ["reject"]
      129 DUPCLOSURE                       R10 K56 [PROTO_32]
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R9
      132 SETTABLEKS                       R10 R9 K57 ["_try"]
      134 DUPCLOSURE                       R10 K58 [PROTO_33]
      135 CAPTURE                          VAL R9
      136 SETTABLEKS                       R10 R9 K59 ["try"]
      138 DUPCLOSURE                       R10 K60 [PROTO_39]
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R10 R9 K61 ["_all"]
      142 DUPCLOSURE                       R10 K62 [PROTO_40]
      143 CAPTURE                          VAL R9
      144 SETTABLEKS                       R10 R9 K63 ["all"]
      146 DUPCLOSURE                       R10 K64 [PROTO_43]
      147 CAPTURE                          VAL R9
      148 SETTABLEKS                       R10 R9 K65 ["fold"]
      150 DUPCLOSURE                       R10 K66 [PROTO_44]
      151 CAPTURE                          VAL R9
      152 SETTABLEKS                       R10 R9 K67 ["some"]
      154 DUPCLOSURE                       R10 K68 [PROTO_46]
      155 CAPTURE                          VAL R9
      156 SETTABLEKS                       R10 R9 K69 ["any"]
      158 DUPCLOSURE                       R10 K70 [PROTO_51]
      159 CAPTURE                          VAL R9
      160 SETTABLEKS                       R10 R9 K71 ["allSettled"]
      162 DUPCLOSURE                       R10 K72 [PROTO_56]
      163 CAPTURE                          VAL R9
      164 SETTABLEKS                       R10 R9 K73 ["race"]
      166 NEWCLOSURE                       R10 P28
      167 CAPTURE                          VAL R9
      168 CAPTURE                          REF R2
      169 SETTABLEKS                       R10 R9 K74 ["each"]
      171 DUPCLOSURE                       R10 K75 [PROTO_62]
      172 CAPTURE                          VAL R9
      173 SETTABLEKS                       R10 R9 K14 ["is"]
      175 DUPCLOSURE                       R10 K76 [PROTO_64]
      176 CAPTURE                          VAL R9
      177 SETTABLEKS                       R10 R9 K77 ["promisify"]
      179 LOADNIL                          R10
      180 LOADNIL                          R11
      181 NEWCLOSURE                       R12 P31
      182 CAPTURE                          VAL R9
      183 CAPTURE                          REF R11
      184 CAPTURE                          REF R10
      185 SETTABLEKS                       R12 R9 K78 ["delay"]
      187 CLOSEUPVALS                      R10
      188 NEWCLOSURE                       R10 P32
      189 CAPTURE                          VAL R9
      190 CAPTURE                          REF R2
      191 GETTABLEKS                       R11 R9 K44 ["prototype"]
      193 SETTABLEKS                       R10 R11 K79 ["timeout"]
      195 DUPCLOSURE                       R10 K80 [PROTO_71]
      196 GETTABLEKS                       R11 R9 K44 ["prototype"]
      198 SETTABLEKS                       R10 R11 K81 ["getStatus"]
      200 NEWCLOSURE                       R10 P34
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R6
      203 CAPTURE                          REF R2
      204 GETTABLEKS                       R11 R9 K44 ["prototype"]
      206 SETTABLEKS                       R10 R11 K82 ["_andThen"]
      208 DUPCLOSURE                       R10 K83 [PROTO_74]
      209 GETTABLEKS                       R11 R9 K44 ["prototype"]
      211 SETTABLEKS                       R10 R11 K84 ["andThen"]
      213 DUPCLOSURE                       R10 K85 [PROTO_75]
      214 GETTABLEKS                       R11 R9 K44 ["prototype"]
      216 SETTABLEKS                       R10 R11 K86 ["catch"]
      218 DUPCLOSURE                       R10 K87 [PROTO_78]
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R3
      221 GETTABLEKS                       R11 R9 K44 ["prototype"]
      223 SETTABLEKS                       R10 R11 K88 ["tap"]
      225 DUPCLOSURE                       R10 K89 [PROTO_80]
      226 CAPTURE                          VAL R3
      227 GETTABLEKS                       R11 R9 K44 ["prototype"]
      229 SETTABLEKS                       R10 R11 K90 ["andThenCall"]
      231 DUPCLOSURE                       R10 K91 [PROTO_82]
      232 CAPTURE                          VAL R3
      233 GETTABLEKS                       R11 R9 K44 ["prototype"]
      235 SETTABLEKS                       R10 R11 K92 ["andThenReturn"]
      237 DUPCLOSURE                       R10 K93 [PROTO_83]
      238 CAPTURE                          VAL R9
      239 GETTABLEKS                       R11 R9 K44 ["prototype"]
      241 SETTABLEKS                       R10 R11 K94 ["cancel"]
      243 DUPCLOSURE                       R10 K95 [PROTO_84]
      244 CAPTURE                          VAL R9
      245 GETTABLEKS                       R11 R9 K44 ["prototype"]
      247 SETTABLEKS                       R10 R11 K96 ["_consumerCancelled"]
      249 DUPCLOSURE                       R10 K97 [PROTO_87]
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R6
      252 GETTABLEKS                       R11 R9 K44 ["prototype"]
      254 SETTABLEKS                       R10 R11 K98 ["_finally"]
      256 DUPCLOSURE                       R10 K99 [PROTO_88]
      257 GETTABLEKS                       R11 R9 K44 ["prototype"]
      259 SETTABLEKS                       R10 R11 K100 ["finally"]
      261 DUPCLOSURE                       R10 K101 [PROTO_90]
      262 CAPTURE                          VAL R3
      263 GETTABLEKS                       R11 R9 K44 ["prototype"]
      265 SETTABLEKS                       R10 R11 K102 ["finallyCall"]
      267 DUPCLOSURE                       R10 K103 [PROTO_92]
      268 CAPTURE                          VAL R3
      269 GETTABLEKS                       R11 R9 K44 ["prototype"]
      271 SETTABLEKS                       R10 R11 K104 ["finallyReturn"]
      273 DUPCLOSURE                       R10 K105 [PROTO_93]
      274 GETTABLEKS                       R11 R9 K44 ["prototype"]
      276 SETTABLEKS                       R10 R11 K106 ["done"]
      278 DUPCLOSURE                       R10 K107 [PROTO_95]
      279 CAPTURE                          VAL R3
      280 GETTABLEKS                       R11 R9 K44 ["prototype"]
      282 SETTABLEKS                       R10 R11 K108 ["doneCall"]
      284 DUPCLOSURE                       R10 K109 [PROTO_97]
      285 CAPTURE                          VAL R3
      286 GETTABLEKS                       R11 R9 K44 ["prototype"]
      288 SETTABLEKS                       R10 R11 K110 ["doneReturn"]
      290 DUPCLOSURE                       R10 K111 [PROTO_99]
      291 CAPTURE                          VAL R9
      292 GETTABLEKS                       R11 R9 K44 ["prototype"]
      294 SETTABLEKS                       R10 R11 K112 ["awaitStatus"]
      296 DUPCLOSURE                       R10 K113 [PROTO_100]
      297 CAPTURE                          VAL R9
      298 DUPCLOSURE                       R11 K114 [PROTO_101]
      299 CAPTURE                          VAL R10
      300 GETTABLEKS                       R12 R9 K44 ["prototype"]
      302 SETTABLEKS                       R11 R12 K115 ["await"]
      304 DUPCLOSURE                       R11 K116 [PROTO_102]
      305 CAPTURE                          VAL R9
      306 DUPCLOSURE                       R12 K117 [PROTO_103]
      307 CAPTURE                          VAL R11
      308 GETTABLEKS                       R13 R9 K44 ["prototype"]
      310 SETTABLEKS                       R12 R13 K118 ["expect"]
      312 GETTABLEKS                       R12 R9 K44 ["prototype"]
      314 GETTABLEKS                       R14 R9 K44 ["prototype"]
      316 GETTABLEKS                       R13 R14 K118 ["expect"]
      318 SETTABLEKS                       R13 R12 K119 ["awaitValue"]
      320 DUPCLOSURE                       R12 K120 [PROTO_104]
      321 CAPTURE                          VAL R9
      322 GETTABLEKS                       R13 R9 K44 ["prototype"]
      324 SETTABLEKS                       R12 R13 K121 ["_unwrap"]
      326 NEWCLOSURE                       R12 P55
      327 CAPTURE                          VAL R9
      328 CAPTURE                          REF R2
      329 CAPTURE                          VAL R3
      330 GETTABLEKS                       R13 R9 K44 ["prototype"]
      332 SETTABLEKS                       R12 R13 K122 ["_resolve"]
      334 DUPCLOSURE                       R12 K123 [PROTO_109]
      335 CAPTURE                          VAL R9
      336 CAPTURE                          VAL R3
      337 GETTABLEKS                       R13 R9 K44 ["prototype"]
      339 SETTABLEKS                       R12 R13 K124 ["_reject"]
      341 DUPCLOSURE                       R12 K125 [PROTO_110]
      342 CAPTURE                          VAL R9
      343 GETTABLEKS                       R13 R9 K44 ["prototype"]
      345 SETTABLEKS                       R12 R13 K126 ["_finalize"]
      347 NEWCLOSURE                       R12 P58
      348 CAPTURE                          VAL R9
      349 CAPTURE                          REF R2
      350 GETTABLEKS                       R13 R9 K44 ["prototype"]
      352 SETTABLEKS                       R12 R13 K127 ["now"]
      354 DUPCLOSURE                       R12 K128 [PROTO_114]
      355 CAPTURE                          VAL R9
      356 SETTABLEKS                       R12 R9 K129 ["retry"]
      358 DUPCLOSURE                       R12 K130 [PROTO_119]
      359 CAPTURE                          VAL R9
      360 SETTABLEKS                       R12 R9 K131 ["fromEvent"]
      362 DUPCLOSURE                       R12 K132 [PROTO_121]
      363 CAPTURE                          VAL R9
      364 SETTABLEKS                       R12 R9 K133 ["onUnhandledRejection"]
      366 CLOSEUPVALS                      R2
      367 RETURN                           R9 1
