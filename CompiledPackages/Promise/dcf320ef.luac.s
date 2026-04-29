PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+3]
        7 LOADB                            R1 1
        8 RETURN                           R1 1
        9 FASTCALL1                        TYPE R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K1 [type]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+22]
       16 FASTCALL1                        GETMETATABLE R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K5 [getmetatable]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+15]
       22 FASTCALL2K                       RAWGET R1 K6 ; [+5]
       24 MOVE                             R4 R1
       25 LOADK                            R5 K6 ["__call"]
       26 GETIMPORT                        R3 K8 [rawget]
       28 CALL                             R3 2 1
       29 FASTCALL1                        TYPE R3 ; [+2]
       30 GETIMPORT                        R2 K1 [type]
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+3]
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 LOADB                            R1 0
       38 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [error]
        2 GETIMPORT                        R3 K4 [string.format]
        4 LOADK                            R4 K5 ["%s is not in %s!"]
        5 MOVE                             R5 R1
        6 GETUPVAL                         R6 0
        7 CALL                             R3 3 1
        8 LOADN                            R4 2
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [error]
        2 GETIMPORT                        R1 K4 [string.format]
        4 LOADK                            R2 K5 ["Creating new members in %s is not allowed!"]
        5 GETUPVAL                         R3 0
        6 CALL                             R1 2 1
        7 LOADN                            R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["traceback is nil"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_14:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 GETIMPORT                        R3 K1 [xpcall]
        4 MOVE                             R4 R1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 LOADB                            R7 0 +1
        8 LOADB                            R7 1
        9 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       11 LOADK                            R8 K2 ["traceback is nil"]
       12 GETIMPORT                        R6 K4 [assert]
       14 CALL                             R6 2 0
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R0
       18 GETVARARGS                       R6 -1
       19 CALL                             R3 -1 -1
       20 CALL                             R2 -1 -1
       21 RETURN                           R2 -1

PROTO_15:
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

PROTO_16:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 RETURN                           R4 1

PROTO_17:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_reject"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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
       13 DUPTABLE                         R3 K16 [{"_thread", "_source", "_status", "_values", "_valuesLength", "_unhandledRejection", "_queuedResolve", "_queuedReject", "_queuedFinally", "_cancellationHook", "_parent", "_consumers"}]
       14 LOADNIL                          R4
       15 SETTABLEKS                       R4 R3 K4 ["_thread"]
       17 SETTABLEKS                       R0 R3 K5 ["_source"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K17 ["Status"]
       22 GETTABLEKS                       R4 R5 K18 ["Started"]
       24 SETTABLEKS                       R4 R3 K6 ["_status"]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K7 ["_values"]
       29 LOADN                            R4 255
       30 SETTABLEKS                       R4 R3 K8 ["_valuesLength"]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K9 ["_unhandledRejection"]
       35 NEWTABLE                         R4 0 0
       37 SETTABLEKS                       R4 R3 K10 ["_queuedResolve"]
       39 NEWTABLE                         R4 0 0
       41 SETTABLEKS                       R4 R3 K11 ["_queuedReject"]
       43 NEWTABLE                         R4 0 0
       45 SETTABLEKS                       R4 R3 K12 ["_queuedFinally"]
       47 LOADNIL                          R4
       48 SETTABLEKS                       R4 R3 K13 ["_cancellationHook"]
       50 SETTABLEKS                       R2 R3 K14 ["_parent"]
       52 NEWTABLE                         R5 0 0
       54 GETUPVAL                         R6 1
       55 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       57 GETIMPORT                        R4 K20 [setmetatable]
       59 CALL                             R4 2 1
       60 SETTABLEKS                       R4 R3 K15 ["_consumers"]
       62 JUMPIFNOT                        R2 ; [+13]
       63 GETTABLEKS                       R4 R2 K6 ["_status"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R6 R7 K17 ["Status"]
       68 GETTABLEKS                       R5 R6 K18 ["Started"]
       70 JUMPIFNOTEQ                      R4 R5 ; [+5]
       72 GETTABLEKS                       R4 R2 K15 ["_consumers"]
       74 LOADB                            R5 1
       75 SETTABLE                         R5 R4 R3
       76 GETUPVAL                         R6 0
       77 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       79 MOVE                             R5 R3
       80 GETIMPORT                        R4 K20 [setmetatable]
       82 CALL                             R4 2 0
       83 NEWCLOSURE                       R4 P0
       84 CAPTURE                          VAL R3
       85 NEWCLOSURE                       R5 P1
       86 CAPTURE                          VAL R3
       87 NEWCLOSURE                       R6 P2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          UPVAL U0
       90 GETIMPORT                        R7 K23 [coroutine.create]
       92 NEWCLOSURE                       R8 P3
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 CALL                             R7 1 1
      100 SETTABLEKS                       R7 R3 K4 ["_thread"]
      102 GETIMPORT                        R7 K26 [task.spawn]
      104 GETTABLEKS                       R8 R3 K4 ["_thread"]
      106 CALL                             R7 1 0
      107 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_new"]
        3 GETIMPORT                        R2 K3 [debug.traceback]
        5 LOADNIL                          R3
        6 LOADN                            R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_24:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["Promise(%s)"]
        3 GETTABLEKS                       R3 R0 K4 ["_status"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R3 0
        2 LOADN                            R4 1
        3 GETUPVAL                         R5 1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R2 K1 [unpack]
        7 CALL                             R2 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R4 0
        2 LOADN                            R5 1
        3 GETUPVAL                         R6 1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R3 K1 [unpack]
        7 CALL                             R3 3 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["_try"]
        4 GETIMPORT                        R2 K3 [debug.traceback]
        6 LOADNIL                          R3
        7 LOADN                            R4 2
        8 CALL                             R2 2 1
        9 MOVE                             R3 R0
       10 GETVARARGS                       R4 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_35:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 NAMECALL                         R2 R2 K0 ["andThen"]
        7 CALL                             R2 2 1
        8 SETUPVAL                         R2 0
        9 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_45:
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
       20 JUMPIFNOTEQKS                    R5 K6 ["function"] ; [+3]
       22 LOADB                            R4 1
       23 JUMP                             ; [+29]
       24 FASTCALL1                        TYPE R1 ; [+3]
       25 MOVE                             R6 R1
       26 GETIMPORT                        R5 K1 [type]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+22]
       31 FASTCALL1                        GETMETATABLE R1 ; [+3]
       32 MOVE                             R6 R1
       33 GETIMPORT                        R5 K8 [getmetatable]
       35 CALL                             R5 1 1
       36 JUMPIFNOT                        R5 ; [+15]
       37 FASTCALL2K                       RAWGET R5 K9 ; [+5]
       39 MOVE                             R8 R5
       40 LOADK                            R9 K9 ["__call"]
       41 GETIMPORT                        R7 K11 [rawget]
       43 CALL                             R7 2 1
       44 FASTCALL1                        TYPE R7 ; [+2]
       45 GETIMPORT                        R6 K1 [type]
       47 CALL                             R6 1 1
       48 JUMPIFNOTEQKS                    R6 K6 ["function"] ; [+3]
       50 LOADB                            R4 1
       51 JUMP                             ; [+1]
       52 LOADB                            R4 0
       53 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       55 LOADK                            R5 K12 ["Bad argument #2 to Promise.fold: must be a function"]
       56 GETIMPORT                        R3 K5 [assert]
       58 CALL                             R3 2 0
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R3 R4 K13 ["resolve"]
       62 MOVE                             R4 R2
       63 CALL                             R3 1 1
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R4 R5 K14 ["each"]
       67 MOVE                             R5 R0
       68 NEWCLOSURE                       R6 P0
       69 CAPTURE                          REF R3
       70 CAPTURE                          VAL R1
       71 CALL                             R4 2 1
       72 NEWCLOSURE                       R6 P1
       73 CAPTURE                          REF R3
       74 NAMECALL                         R4 R4 K15 ["andThen"]
       76 CALL                             R4 2 -1
       77 CLOSEUPVALS                      R3
       78 RETURN                           R4 -1

PROTO_46:
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

PROTO_47:
        0 GETTABLEN                        R1 R0 1
        1 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_all"]
        3 GETIMPORT                        R2 K3 [debug.traceback]
        5 LOADNIL                          R3
        6 LOADN                            R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R3 R0
        9 LOADN                            R4 1
       10 CALL                             R1 3 1
       11 DUPCLOSURE                       R3 K4 [PROTO_47]
       12 NAMECALL                         R1 R1 K5 ["andThen"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_49:
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

PROTO_50:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_51:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
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

PROTO_54:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_55:
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

PROTO_56:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_57:
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

PROTO_58:
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

PROTO_59:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 NAMECALL                         R5 R4 K2 ["cancel"]
        7 CALL                             R5 1 0
        8 FORGLOOP                         R0 2 [inext] ; [-4]
       10 RETURN                           R0 0

PROTO_60:
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

PROTO_61:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 -1
        2 RETURN                           R0 -1

PROTO_62:
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
      104 DUPCLOSURE                       R15 K24 [PROTO_61]
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

PROTO_63:
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
       23 JUMPIFNOTEQKS                    R4 K10 ["function"] ; [+3]
       25 LOADB                            R3 1
       26 JUMP                             ; [+29]
       27 FASTCALL1                        TYPE R1 ; [+3]
       28 MOVE                             R5 R1
       29 GETIMPORT                        R4 K1 [type]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+22]
       34 FASTCALL1                        GETMETATABLE R1 ; [+3]
       35 MOVE                             R5 R1
       36 GETIMPORT                        R4 K12 [getmetatable]
       38 CALL                             R4 1 1
       39 JUMPIFNOT                        R4 ; [+15]
       40 FASTCALL2K                       RAWGET R4 K13 ; [+5]
       42 MOVE                             R7 R4
       43 LOADK                            R8 K13 ["__call"]
       44 GETIMPORT                        R6 K15 [rawget]
       46 CALL                             R6 2 1
       47 FASTCALL1                        TYPE R6 ; [+2]
       48 GETIMPORT                        R5 K1 [type]
       50 CALL                             R5 1 1
       51 JUMPIFNOTEQKS                    R5 K10 ["function"] ; [+3]
       53 LOADB                            R3 1
       54 JUMP                             ; [+1]
       55 LOADB                            R3 0
       56 GETIMPORT                        R4 K5 [string.format]
       58 LOADK                            R5 K16 ["Please pass a handler function to %s!"]
       59 LOADK                            R6 K7 ["Promise.each"]
       60 CALL                             R4 2 -1
       61 FASTCALL                         ASSERT ; [+2]
       62 GETIMPORT                        R2 K9 [assert]
       64 CALL                             R2 -1 0
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R2 R3 K17 ["_new"]
       68 GETIMPORT                        R3 K20 [debug.traceback]
       70 LOADNIL                          R4
       71 LOADN                            R5 2
       72 CALL                             R3 2 1
       73 NEWCLOSURE                       R4 P0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          VAL R1
       78 CALL                             R2 2 -1
       79 RETURN                           R2 -1

PROTO_64:
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
       19 JUMPIFNOTEQKNIL                  R1 ; [+42]
       21 GETTABLEKS                       R3 R0 K5 ["andThen"]
       23 FASTCALL1                        TYPE R3 ; [+3]
       24 MOVE                             R5 R3
       25 GETIMPORT                        R4 K1 [type]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+3]
       30 LOADB                            R2 1
       31 RETURN                           R2 1
       32 FASTCALL1                        TYPE R3 ; [+3]
       33 MOVE                             R5 R3
       34 GETIMPORT                        R4 K1 [type]
       36 CALL                             R4 1 1
       37 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+22]
       39 FASTCALL1                        GETMETATABLE R3 ; [+3]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K4 [getmetatable]
       43 CALL                             R4 1 1
       44 JUMPIFNOT                        R4 ; [+15]
       45 FASTCALL2K                       RAWGET R4 K7 ; [+5]
       47 MOVE                             R7 R4
       48 LOADK                            R8 K7 ["__call"]
       49 GETIMPORT                        R6 K9 [rawget]
       51 CALL                             R6 2 1
       52 FASTCALL1                        TYPE R6 ; [+2]
       53 GETIMPORT                        R5 K1 [type]
       55 CALL                             R5 1 1
       56 JUMPIFNOTEQKS                    R5 K6 ["function"] ; [+3]
       58 LOADB                            R2 1
       59 RETURN                           R2 1
       60 LOADB                            R2 0
       61 RETURN                           R2 1
       62 FASTCALL1                        TYPE R1 ; [+3]
       63 MOVE                             R3 R1
       64 GETIMPORT                        R2 K1 [type]
       66 CALL                             R2 1 1
       67 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+68]
       69 FASTCALL2K                       RAWGET R1 K10 ; [+5]
       71 MOVE                             R4 R1
       72 LOADK                            R5 K10 ["__index"]
       73 GETIMPORT                        R3 K9 [rawget]
       75 CALL                             R3 2 1
       76 FASTCALL1                        TYPE R3 ; [+2]
       77 GETIMPORT                        R2 K1 [type]
       79 CALL                             R2 1 1
       80 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+55]
       82 FASTCALL2K                       RAWGET R1 K10 ; [+5]
       84 MOVE                             R5 R1
       85 LOADK                            R6 K10 ["__index"]
       86 GETIMPORT                        R4 K9 [rawget]
       88 CALL                             R4 2 1
       89 FASTCALL2K                       RAWGET R4 K5 ; [+4]
       91 LOADK                            R5 K5 ["andThen"]
       92 GETIMPORT                        R3 K9 [rawget]
       94 CALL                             R3 2 1
       95 FASTCALL1                        TYPE R3 ; [+3]
       96 MOVE                             R5 R3
       97 GETIMPORT                        R4 K1 [type]
       99 CALL                             R4 1 1
      100 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+3]
      102 LOADB                            R2 1
      103 JUMP                             ; [+29]
      104 FASTCALL1                        TYPE R3 ; [+3]
      105 MOVE                             R5 R3
      106 GETIMPORT                        R4 K1 [type]
      108 CALL                             R4 1 1
      109 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+22]
      111 FASTCALL1                        GETMETATABLE R3 ; [+3]
      112 MOVE                             R5 R3
      113 GETIMPORT                        R4 K4 [getmetatable]
      115 CALL                             R4 1 1
      116 JUMPIFNOT                        R4 ; [+15]
      117 FASTCALL2K                       RAWGET R4 K7 ; [+5]
      119 MOVE                             R7 R4
      120 LOADK                            R8 K7 ["__call"]
      121 GETIMPORT                        R6 K9 [rawget]
      123 CALL                             R6 2 1
      124 FASTCALL1                        TYPE R6 ; [+2]
      125 GETIMPORT                        R5 K1 [type]
      127 CALL                             R5 1 1
      128 JUMPIFNOTEQKS                    R5 K6 ["function"] ; [+3]
      130 LOADB                            R2 1
      131 JUMP                             ; [+1]
      132 LOADB                            R2 0
      133 JUMPIFNOT                        R2 ; [+2]
      134 LOADB                            R2 1
      135 RETURN                           R2 1
      136 LOADB                            R2 0
      137 RETURN                           R2 1

PROTO_65:
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

PROTO_66:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 GETTABLEKS                       R1 R0 K0 ["_status"]
        2 RETURN                           R1 1

PROTO_74:
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

PROTO_75:
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

PROTO_76:
        0 LOADB                            R4 1
        1 JUMPIFEQKNIL                     R1 ; [+39]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K1 [type]
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       10 LOADB                            R4 1
       11 JUMP                             ; [+29]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R6 R1
       14 GETIMPORT                        R5 K1 [type]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+22]
       19 FASTCALL1                        GETMETATABLE R1 ; [+3]
       20 MOVE                             R6 R1
       21 GETIMPORT                        R5 K5 [getmetatable]
       23 CALL                             R5 1 1
       24 JUMPIFNOT                        R5 ; [+15]
       25 FASTCALL2K                       RAWGET R5 K6 ; [+5]
       27 MOVE                             R8 R5
       28 LOADK                            R9 K6 ["__call"]
       29 GETIMPORT                        R7 K8 [rawget]
       31 CALL                             R7 2 1
       32 FASTCALL1                        TYPE R7 ; [+2]
       33 GETIMPORT                        R6 K1 [type]
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKS                    R6 K2 ["function"] ; [+3]
       38 LOADB                            R4 1
       39 JUMP                             ; [+1]
       40 LOADB                            R4 0
       41 GETIMPORT                        R5 K11 [string.format]
       43 LOADK                            R6 K12 ["Please pass a handler function to %s!"]
       44 LOADK                            R7 K13 ["Promise:andThen"]
       45 CALL                             R5 2 -1
       46 FASTCALL                         ASSERT ; [+2]
       47 GETIMPORT                        R3 K15 [assert]
       49 CALL                             R3 -1 0
       50 LOADB                            R4 1
       51 JUMPIFEQKNIL                     R2 ; [+39]
       53 FASTCALL1                        TYPE R2 ; [+3]
       54 MOVE                             R6 R2
       55 GETIMPORT                        R5 K1 [type]
       57 CALL                             R5 1 1
       58 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       60 LOADB                            R4 1
       61 JUMP                             ; [+29]
       62 FASTCALL1                        TYPE R2 ; [+3]
       63 MOVE                             R6 R2
       64 GETIMPORT                        R5 K1 [type]
       66 CALL                             R5 1 1
       67 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+22]
       69 FASTCALL1                        GETMETATABLE R2 ; [+3]
       70 MOVE                             R6 R2
       71 GETIMPORT                        R5 K5 [getmetatable]
       73 CALL                             R5 1 1
       74 JUMPIFNOT                        R5 ; [+15]
       75 FASTCALL2K                       RAWGET R5 K6 ; [+5]
       77 MOVE                             R8 R5
       78 LOADK                            R9 K6 ["__call"]
       79 GETIMPORT                        R7 K8 [rawget]
       81 CALL                             R7 2 1
       82 FASTCALL1                        TYPE R7 ; [+2]
       83 GETIMPORT                        R6 K1 [type]
       85 CALL                             R6 1 1
       86 JUMPIFNOTEQKS                    R6 K2 ["function"] ; [+3]
       88 LOADB                            R4 1
       89 JUMP                             ; [+1]
       90 LOADB                            R4 0
       91 GETIMPORT                        R5 K11 [string.format]
       93 LOADK                            R6 K12 ["Please pass a handler function to %s!"]
       94 LOADK                            R7 K13 ["Promise:andThen"]
       95 CALL                             R5 2 -1
       96 FASTCALL                         ASSERT ; [+2]
       97 GETIMPORT                        R3 K15 [assert]
       99 CALL                             R3 -1 0
      100 GETIMPORT                        R5 K18 [debug.traceback]
      102 LOADNIL                          R6
      103 LOADN                            R7 2
      104 CALL                             R5 2 1
      105 MOVE                             R6 R1
      106 MOVE                             R7 R2
      107 NAMECALL                         R3 R0 K19 ["_andThen"]
      109 CALL                             R3 4 -1
      110 RETURN                           R3 -1

PROTO_77:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R3 0
        2 LOADN                            R4 1
        3 GETUPVAL                         R5 1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R2 K1 [unpack]
        7 CALL                             R2 3 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_78:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["defer"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_79:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R4 0
        2 LOADN                            R5 1
        3 GETUPVAL                         R6 1
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R3 K1 [unpack]
        7 CALL                             R3 3 -1
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_80:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R1 -1
        3 CALL                             R0 -1 2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["defer"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

PROTO_81:
        0 LOADB                            R4 1
        1 JUMPIFEQKNIL                     R1 ; [+39]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K1 [type]
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       10 LOADB                            R4 1
       11 JUMP                             ; [+29]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R6 R1
       14 GETIMPORT                        R5 K1 [type]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+22]
       19 FASTCALL1                        GETMETATABLE R1 ; [+3]
       20 MOVE                             R6 R1
       21 GETIMPORT                        R5 K5 [getmetatable]
       23 CALL                             R5 1 1
       24 JUMPIFNOT                        R5 ; [+15]
       25 FASTCALL2K                       RAWGET R5 K6 ; [+5]
       27 MOVE                             R8 R5
       28 LOADK                            R9 K6 ["__call"]
       29 GETIMPORT                        R7 K8 [rawget]
       31 CALL                             R7 2 1
       32 FASTCALL1                        TYPE R7 ; [+2]
       33 GETIMPORT                        R6 K1 [type]
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKS                    R6 K2 ["function"] ; [+3]
       38 LOADB                            R4 1
       39 JUMP                             ; [+1]
       40 LOADB                            R4 0
       41 GETIMPORT                        R5 K11 [string.format]
       43 LOADK                            R6 K12 ["Please pass a handler function to %s!"]
       44 LOADK                            R7 K13 ["Promise:andThenAsync"]
       45 CALL                             R5 2 -1
       46 FASTCALL                         ASSERT ; [+2]
       47 GETIMPORT                        R3 K15 [assert]
       49 CALL                             R3 -1 0
       50 LOADB                            R4 1
       51 JUMPIFEQKNIL                     R2 ; [+39]
       53 FASTCALL1                        TYPE R2 ; [+3]
       54 MOVE                             R6 R2
       55 GETIMPORT                        R5 K1 [type]
       57 CALL                             R5 1 1
       58 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       60 LOADB                            R4 1
       61 JUMP                             ; [+29]
       62 FASTCALL1                        TYPE R2 ; [+3]
       63 MOVE                             R6 R2
       64 GETIMPORT                        R5 K1 [type]
       66 CALL                             R5 1 1
       67 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+22]
       69 FASTCALL1                        GETMETATABLE R2 ; [+3]
       70 MOVE                             R6 R2
       71 GETIMPORT                        R5 K5 [getmetatable]
       73 CALL                             R5 1 1
       74 JUMPIFNOT                        R5 ; [+15]
       75 FASTCALL2K                       RAWGET R5 K6 ; [+5]
       77 MOVE                             R8 R5
       78 LOADK                            R9 K6 ["__call"]
       79 GETIMPORT                        R7 K8 [rawget]
       81 CALL                             R7 2 1
       82 FASTCALL1                        TYPE R7 ; [+2]
       83 GETIMPORT                        R6 K1 [type]
       85 CALL                             R6 1 1
       86 JUMPIFNOTEQKS                    R6 K2 ["function"] ; [+3]
       88 LOADB                            R4 1
       89 JUMP                             ; [+1]
       90 LOADB                            R4 0
       91 GETIMPORT                        R5 K11 [string.format]
       93 LOADK                            R6 K12 ["Please pass a handler function to %s!"]
       94 LOADK                            R7 K13 ["Promise:andThenAsync"]
       95 CALL                             R5 2 -1
       96 FASTCALL                         ASSERT ; [+2]
       97 GETIMPORT                        R3 K15 [assert]
       99 CALL                             R3 -1 0
      100 GETIMPORT                        R5 K18 [debug.traceback]
      102 LOADNIL                          R6
      103 LOADN                            R7 2
      104 CALL                             R5 2 1
      105 DUPCLOSURE                       R6 K19 [PROTO_78]
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          UPVAL U1
      108 DUPCLOSURE                       R7 K20 [PROTO_80]
      109 CAPTURE                          UPVAL U0
      110 CAPTURE                          UPVAL U1
      111 NAMECALL                         R3 R0 K21 ["_andThen"]
      113 CALL                             R3 4 1
      114 MOVE                             R5 R1
      115 MOVE                             R6 R2
      116 NAMECALL                         R3 R3 K22 ["andThen"]
      118 CALL                             R3 3 -1
      119 RETURN                           R3 -1

PROTO_82:
        0 LOADB                            R3 1
        1 JUMPIFEQKNIL                     R1 ; [+39]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [type]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
       10 LOADB                            R3 1
       11 JUMP                             ; [+29]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R5 R1
       14 GETIMPORT                        R4 K1 [type]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       19 FASTCALL1                        GETMETATABLE R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K5 [getmetatable]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+15]
       25 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       27 MOVE                             R7 R4
       28 LOADK                            R8 K6 ["__call"]
       29 GETIMPORT                        R6 K8 [rawget]
       31 CALL                             R6 2 1
       32 FASTCALL1                        TYPE R6 ; [+2]
       33 GETIMPORT                        R5 K1 [type]
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       38 LOADB                            R3 1
       39 JUMP                             ; [+1]
       40 LOADB                            R3 0
       41 GETIMPORT                        R4 K11 [string.format]
       43 LOADK                            R5 K12 ["Please pass a handler function to %s!"]
       44 LOADK                            R6 K13 ["Promise:catch"]
       45 CALL                             R4 2 -1
       46 FASTCALL                         ASSERT ; [+2]
       47 GETIMPORT                        R2 K15 [assert]
       49 CALL                             R2 -1 0
       50 GETIMPORT                        R4 K18 [debug.traceback]
       52 LOADNIL                          R5
       53 LOADN                            R6 2
       54 CALL                             R4 2 1
       55 LOADNIL                          R5
       56 MOVE                             R6 R1
       57 NAMECALL                         R2 R0 K19 ["_andThen"]
       59 CALL                             R2 4 -1
       60 RETURN                           R2 -1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_84:
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

PROTO_85:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
        7 LOADB                            R3 1
        8 JUMP                             ; [+29]
        9 FASTCALL1                        TYPE R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K1 [type]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       16 FASTCALL1                        GETMETATABLE R1 ; [+3]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K5 [getmetatable]
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+15]
       22 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       24 MOVE                             R7 R4
       25 LOADK                            R8 K6 ["__call"]
       26 GETIMPORT                        R6 K8 [rawget]
       28 CALL                             R6 2 1
       29 FASTCALL1                        TYPE R6 ; [+2]
       30 GETIMPORT                        R5 K1 [type]
       32 CALL                             R5 1 1
       33 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       35 LOADB                            R3 1
       36 JUMP                             ; [+1]
       37 LOADB                            R3 0
       38 GETIMPORT                        R4 K11 [string.format]
       40 LOADK                            R5 K12 ["Please pass a handler function to %s!"]
       41 LOADK                            R6 K13 ["Promise:tap"]
       42 CALL                             R4 2 -1
       43 FASTCALL                         ASSERT ; [+2]
       44 GETIMPORT                        R2 K15 [assert]
       46 CALL                             R2 -1 0
       47 GETIMPORT                        R4 K18 [debug.traceback]
       49 LOADNIL                          R5
       50 LOADN                            R6 2
       51 CALL                             R4 2 1
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U1
       56 NAMECALL                         R2 R0 K19 ["_andThen"]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

PROTO_86:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_87:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
        8 LOADB                            R3 1
        9 JUMP                             ; [+29]
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [type]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       17 FASTCALL1                        GETMETATABLE R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K5 [getmetatable]
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R4 ; [+15]
       23 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       25 MOVE                             R7 R4
       26 LOADK                            R8 K6 ["__call"]
       27 GETIMPORT                        R6 K8 [rawget]
       29 CALL                             R6 2 1
       30 FASTCALL1                        TYPE R6 ; [+2]
       31 GETIMPORT                        R5 K1 [type]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       36 LOADB                            R3 1
       37 JUMP                             ; [+1]
       38 LOADB                            R3 0
       39 GETIMPORT                        R4 K11 [string.format]
       41 LOADK                            R5 K12 ["Please pass a handler function to %s!"]
       42 LOADK                            R6 K13 ["Promise:andThenCall"]
       43 CALL                             R4 2 -1
       44 FASTCALL                         ASSERT ; [+2]
       45 GETIMPORT                        R2 K15 [assert]
       47 CALL                             R2 -1 0
       48 GETUPVAL                         R2 0
       49 GETVARARGS                       R3 -1
       50 CALL                             R2 -1 2
       51 GETIMPORT                        R6 K18 [debug.traceback]
       53 LOADNIL                          R7
       54 LOADN                            R8 2
       55 CALL                             R6 2 1
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 NAMECALL                         R4 R0 K19 ["_andThen"]
       62 CALL                             R4 3 -1
       63 RETURN                           R4 -1

PROTO_88:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_89:
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

PROTO_90:
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
       23 GETIMPORT                        R1 K7 [coroutine.close]
       25 GETTABLEKS                       R2 R0 K8 ["_thread"]
       27 CALL                             R1 1 0
       28 GETTABLEKS                       R1 R0 K9 ["_parent"]
       30 JUMPIFNOT                        R1 ; [+6]
       31 GETTABLEKS                       R1 R0 K9 ["_parent"]
       33 MOVE                             R3 R0
       34 NAMECALL                         R1 R1 K10 ["_consumerCancelled"]
       36 CALL                             R1 2 0
       37 GETIMPORT                        R1 K12 [pairs]
       39 GETTABLEKS                       R2 R0 K13 ["_consumers"]
       41 CALL                             R1 1 3
       42 FORGPREP_NEXT                    R1
       43 NAMECALL                         R6 R4 K14 ["cancel"]
       45 CALL                             R6 1 0
       46 FORGLOOP                         R1 1 ; [-4]
       48 NAMECALL                         R1 R0 K15 ["_finalize"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_91:
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

PROTO_92:
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

PROTO_93:
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

PROTO_94:
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

PROTO_95:
        0 LOADB                            R3 1
        1 JUMPIFEQKNIL                     R1 ; [+39]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [type]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
       10 LOADB                            R3 1
       11 JUMP                             ; [+29]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R5 R1
       14 GETIMPORT                        R4 K1 [type]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       19 FASTCALL1                        GETMETATABLE R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K5 [getmetatable]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+15]
       25 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       27 MOVE                             R7 R4
       28 LOADK                            R8 K6 ["__call"]
       29 GETIMPORT                        R6 K8 [rawget]
       31 CALL                             R6 2 1
       32 FASTCALL1                        TYPE R6 ; [+2]
       33 GETIMPORT                        R5 K1 [type]
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       38 LOADB                            R3 1
       39 JUMP                             ; [+1]
       40 LOADB                            R3 0
       41 GETIMPORT                        R4 K11 [string.format]
       43 LOADK                            R5 K12 ["Please pass a handler function to %s!"]
       44 LOADK                            R6 K13 ["Promise:finally"]
       45 CALL                             R4 2 -1
       46 FASTCALL                         ASSERT ; [+2]
       47 GETIMPORT                        R2 K15 [assert]
       49 CALL                             R2 -1 0
       50 GETIMPORT                        R4 K18 [debug.traceback]
       52 LOADNIL                          R5
       53 LOADN                            R6 2
       54 CALL                             R4 2 1
       55 MOVE                             R5 R1
       56 NAMECALL                         R2 R0 K19 ["_finally"]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

PROTO_96:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_97:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
        8 LOADB                            R3 1
        9 JUMP                             ; [+29]
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [type]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       17 FASTCALL1                        GETMETATABLE R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K5 [getmetatable]
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R4 ; [+15]
       23 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       25 MOVE                             R7 R4
       26 LOADK                            R8 K6 ["__call"]
       27 GETIMPORT                        R6 K8 [rawget]
       29 CALL                             R6 2 1
       30 FASTCALL1                        TYPE R6 ; [+2]
       31 GETIMPORT                        R5 K1 [type]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       36 LOADB                            R3 1
       37 JUMP                             ; [+1]
       38 LOADB                            R3 0
       39 GETIMPORT                        R4 K11 [string.format]
       41 LOADK                            R5 K12 ["Please pass a handler function to %s!"]
       42 LOADK                            R6 K13 ["Promise:finallyCall"]
       43 CALL                             R4 2 -1
       44 FASTCALL                         ASSERT ; [+2]
       45 GETIMPORT                        R2 K15 [assert]
       47 CALL                             R2 -1 0
       48 GETUPVAL                         R2 0
       49 GETVARARGS                       R3 -1
       50 CALL                             R2 -1 2
       51 GETIMPORT                        R6 K18 [debug.traceback]
       53 LOADNIL                          R7
       54 LOADN                            R8 2
       55 CALL                             R6 2 1
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 NAMECALL                         R4 R0 K19 ["_finally"]
       62 CALL                             R4 3 -1
       63 RETURN                           R4 -1

PROTO_98:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_99:
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

PROTO_100:
        0 LOADB                            R3 1
        1 JUMPIFEQKNIL                     R1 ; [+39]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [type]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
       10 LOADB                            R3 1
       11 JUMP                             ; [+29]
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R5 R1
       14 GETIMPORT                        R4 K1 [type]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       19 FASTCALL1                        GETMETATABLE R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K5 [getmetatable]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+15]
       25 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       27 MOVE                             R7 R4
       28 LOADK                            R8 K6 ["__call"]
       29 GETIMPORT                        R6 K8 [rawget]
       31 CALL                             R6 2 1
       32 FASTCALL1                        TYPE R6 ; [+2]
       33 GETIMPORT                        R5 K1 [type]
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       38 LOADB                            R3 1
       39 JUMP                             ; [+1]
       40 LOADB                            R3 0
       41 GETIMPORT                        R4 K11 [string.format]
       43 LOADK                            R5 K12 ["Please pass a handler function to %s!"]
       44 LOADK                            R6 K13 ["Promise:done"]
       45 CALL                             R4 2 -1
       46 FASTCALL                         ASSERT ; [+2]
       47 GETIMPORT                        R2 K15 [assert]
       49 CALL                             R2 -1 0
       50 GETIMPORT                        R4 K18 [debug.traceback]
       52 LOADNIL                          R5
       53 LOADN                            R6 2
       54 CALL                             R4 2 1
       55 MOVE                             R5 R1
       56 LOADB                            R6 1
       57 NAMECALL                         R2 R0 K19 ["_finally"]
       59 CALL                             R2 4 -1
       60 RETURN                           R2 -1

PROTO_101:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 2
        4 FASTCALL                         TABLE_UNPACK ; [+2]
        5 GETIMPORT                        R1 K1 [unpack]
        7 CALL                             R1 3 -1
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_102:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
        8 LOADB                            R3 1
        9 JUMP                             ; [+29]
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [type]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       17 FASTCALL1                        GETMETATABLE R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K5 [getmetatable]
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R4 ; [+15]
       23 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       25 MOVE                             R7 R4
       26 LOADK                            R8 K6 ["__call"]
       27 GETIMPORT                        R6 K8 [rawget]
       29 CALL                             R6 2 1
       30 FASTCALL1                        TYPE R6 ; [+2]
       31 GETIMPORT                        R5 K1 [type]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       36 LOADB                            R3 1
       37 JUMP                             ; [+1]
       38 LOADB                            R3 0
       39 GETIMPORT                        R4 K11 [string.format]
       41 LOADK                            R5 K12 ["Please pass a handler function to %s!"]
       42 LOADK                            R6 K13 ["Promise:doneCall"]
       43 CALL                             R4 2 -1
       44 FASTCALL                         ASSERT ; [+2]
       45 GETIMPORT                        R2 K15 [assert]
       47 CALL                             R2 -1 0
       48 GETUPVAL                         R2 0
       49 GETVARARGS                       R3 -1
       50 CALL                             R2 -1 2
       51 GETIMPORT                        R6 K18 [debug.traceback]
       53 LOADNIL                          R7
       54 LOADN                            R8 2
       55 CALL                             R6 2 1
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 LOADB                            R8 1
       61 NAMECALL                         R4 R0 K19 ["_finally"]
       63 CALL                             R4 4 -1
       64 RETURN                           R4 -1

PROTO_103:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 1
        2 GETUPVAL                         R3 1
        3 FASTCALL                         TABLE_UNPACK ; [+2]
        4 GETIMPORT                        R0 K1 [unpack]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_104:
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

PROTO_105:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_106:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_unhandledRejection"]
        3 GETTABLEKS                       R1 R0 K1 ["_status"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["Status"]
        8 GETTABLEKS                       R2 R3 K3 ["Started"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+12]
       12 GETIMPORT                        R1 K6 [coroutine.running]
       14 CALL                             R1 0 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R2 R0 K7 ["finally"]
       19 CALL                             R2 2 0
       20 GETIMPORT                        R2 K9 [coroutine.yield]
       22 CALL                             R2 0 0
       23 GETTABLEKS                       R1 R0 K1 ["_status"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K2 ["Status"]
       28 GETTABLEKS                       R2 R3 K10 ["Resolved"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+13]
       32 GETTABLEKS                       R1 R0 K1 ["_status"]
       34 GETTABLEKS                       R3 R0 K11 ["_values"]
       36 LOADN                            R4 1
       37 GETTABLEKS                       R5 R0 K12 ["_valuesLength"]
       39 FASTCALL                         TABLE_UNPACK ; [+2]
       40 GETIMPORT                        R2 K14 [unpack]
       42 CALL                             R2 3 -1
       43 RETURN                           R1 -1
       44 GETTABLEKS                       R1 R0 K1 ["_status"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K2 ["Status"]
       49 GETTABLEKS                       R2 R3 K15 ["Rejected"]
       51 JUMPIFNOTEQ                      R1 R2 ; [+13]
       53 GETTABLEKS                       R1 R0 K1 ["_status"]
       55 GETTABLEKS                       R3 R0 K11 ["_values"]
       57 LOADN                            R4 1
       58 GETTABLEKS                       R5 R0 K12 ["_valuesLength"]
       60 FASTCALL                         TABLE_UNPACK ; [+2]
       61 GETIMPORT                        R2 K14 [unpack]
       63 CALL                             R2 3 -1
       64 RETURN                           R1 -1
       65 GETTABLEKS                       R1 R0 K1 ["_status"]
       67 RETURN                           R1 1

PROTO_107:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["Status"]
        4 GETTABLEKS                       R2 R3 K1 ["Resolved"]
        6 JUMPIFEQ                         R0 R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETVARARGS                       R2 -1
       11 RETURN                           R1 -1

PROTO_108:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["awaitStatus"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_109:
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

PROTO_110:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R2 R0 K0 ["awaitStatus"]
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_111:
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

PROTO_112:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["_resolve"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_113:
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

PROTO_114:
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

PROTO_115:
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

PROTO_116:
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

PROTO_117:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 SETUPVAL                         R1 1
        6 MOVE                             R1 R0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETIMPORT                        R6 K2 [coroutine.close]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 FORGLOOP                         R1 2 ; [-5]
       16 RETURN                           R0 0

PROTO_118:
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
       34 GETUPVAL                         R1 1
       35 JUMPIFNOT                        R1 ; [+16]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R3 R0 K12 ["_thread"]
       39 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       41 GETIMPORT                        R1 K15 [table.insert]
       43 CALL                             R1 2 0
       44 GETUPVAL                         R1 3
       45 JUMPIF                           R1 ; [+13]
       46 GETIMPORT                        R1 K18 [task.defer]
       48 GETUPVAL                         R2 4
       49 CALL                             R1 1 1
       50 SETUPVAL                         R1 3
       51 RETURN                           R0 0
       52 GETIMPORT                        R1 K18 [task.defer]
       54 GETIMPORT                        R2 K20 [coroutine.close]
       56 GETTABLEKS                       R3 R0 K12 ["_thread"]
       58 CALL                             R1 2 0
       59 RETURN                           R0 0

PROTO_119:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 -1
        2 RETURN                           R0 -1

PROTO_120:
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
       15 DUPCLOSURE                       R6 K6 [PROTO_119]
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

PROTO_121:
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

PROTO_122:
        0 PREPVARARGS                      2
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+3]
        8 LOADB                            R3 1
        9 JUMP                             ; [+29]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K1 [type]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+22]
       17 FASTCALL1                        GETMETATABLE R0 ; [+3]
       18 MOVE                             R5 R0
       19 GETIMPORT                        R4 K5 [getmetatable]
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R4 ; [+15]
       23 FASTCALL2K                       RAWGET R4 K6 ; [+5]
       25 MOVE                             R7 R4
       26 LOADK                            R8 K6 ["__call"]
       27 GETIMPORT                        R6 K8 [rawget]
       29 CALL                             R6 2 1
       30 FASTCALL1                        TYPE R6 ; [+2]
       31 GETIMPORT                        R5 K1 [type]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
       36 LOADB                            R3 1
       37 JUMP                             ; [+1]
       38 LOADB                            R3 0
       39 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       41 LOADK                            R4 K9 ["Parameter #1 to Promise.retry must be a function"]
       42 GETIMPORT                        R2 K11 [assert]
       44 CALL                             R2 2 0
       45 FASTCALL1                        TYPE R1 ; [+3]
       46 MOVE                             R5 R1
       47 GETIMPORT                        R4 K1 [type]
       49 CALL                             R4 1 1
       50 JUMPIFEQKS                       R4 K12 ["number"] ; [+2]
       52 LOADB                            R3 0 +1
       53 LOADB                            R3 1
       54 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       56 LOADK                            R4 K13 ["Parameter #2 to Promise.retry must be a number"]
       57 GETIMPORT                        R2 K11 [assert]
       59 CALL                             R2 2 0
       60 NEWTABLE                         R2 0 0
       62 GETVARARGS                       R4 -1
       63 SETLIST                          R2 R4 -1 [1]
       65 LOADK                            R4 K14 ["#"]
       66 FASTCALL1                        SELECT_VARARG R4 ; [+3]
       67 GETIMPORT                        R3 K16 [select]
       69 GETVARARGS                       R5 -1
       70 CALL                             R3 -1 1
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K17 ["resolve"]
       74 MOVE                             R5 R0
       75 GETVARARGS                       R6 -1
       76 CALL                             R5 -1 -1
       77 CALL                             R4 -1 1
       78 NEWCLOSURE                       R6 P0
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U0
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 NAMECALL                         R4 R4 K18 ["catch"]
       86 CALL                             R4 2 -1
       87 RETURN                           R4 -1

PROTO_123:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+25]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["delay"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 NAMECALL                         R0 R0 K1 ["await"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K2 ["retryWithDelay"]
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R3 0
       18 SUBK                             R2 R3 K3 [1]
       19 GETUPVAL                         R3 2
       20 GETUPVAL                         R5 4
       21 LOADN                            R6 1
       22 GETUPVAL                         R7 5
       23 FASTCALL                         TABLE_UNPACK ; [+2]
       24 GETIMPORT                        R4 K5 [unpack]
       26 CALL                             R4 3 -1
       27 CALL                             R0 -1 -1
       28 RETURN                           R0 -1
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R0 R1 K6 ["reject"]
       32 GETVARARGS                       R1 -1
       33 CALL                             R0 -1 -1
       34 RETURN                           R0 -1

PROTO_124:
        0 PREPVARARGS                      3
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K1 [type]
        5 CALL                             R5 1 1
        6 JUMPIFNOTEQKS                    R5 K2 ["function"] ; [+3]
        8 LOADB                            R4 1
        9 JUMP                             ; [+29]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R6 R0
       12 GETIMPORT                        R5 K1 [type]
       14 CALL                             R5 1 1
       15 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+22]
       17 FASTCALL1                        GETMETATABLE R0 ; [+3]
       18 MOVE                             R6 R0
       19 GETIMPORT                        R5 K5 [getmetatable]
       21 CALL                             R5 1 1
       22 JUMPIFNOT                        R5 ; [+15]
       23 FASTCALL2K                       RAWGET R5 K6 ; [+5]
       25 MOVE                             R8 R5
       26 LOADK                            R9 K6 ["__call"]
       27 GETIMPORT                        R7 K8 [rawget]
       29 CALL                             R7 2 1
       30 FASTCALL1                        TYPE R7 ; [+2]
       31 GETIMPORT                        R6 K1 [type]
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKS                    R6 K2 ["function"] ; [+3]
       36 LOADB                            R4 1
       37 JUMP                             ; [+1]
       38 LOADB                            R4 0
       39 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       41 LOADK                            R5 K9 ["Parameter #1 to Promise.retry must be a function"]
       42 GETIMPORT                        R3 K11 [assert]
       44 CALL                             R3 2 0
       45 FASTCALL1                        TYPE R1 ; [+3]
       46 MOVE                             R6 R1
       47 GETIMPORT                        R5 K1 [type]
       49 CALL                             R5 1 1
       50 JUMPIFEQKS                       R5 K12 ["number"] ; [+2]
       52 LOADB                            R4 0 +1
       53 LOADB                            R4 1
       54 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       56 LOADK                            R5 K13 ["Parameter #2 (times) to Promise.retry must be a number"]
       57 GETIMPORT                        R3 K11 [assert]
       59 CALL                             R3 2 0
       60 FASTCALL1                        TYPE R2 ; [+3]
       61 MOVE                             R6 R2
       62 GETIMPORT                        R5 K1 [type]
       64 CALL                             R5 1 1
       65 JUMPIFEQKS                       R5 K12 ["number"] ; [+2]
       67 LOADB                            R4 0 +1
       68 LOADB                            R4 1
       69 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       71 LOADK                            R5 K14 ["Parameter #3 (seconds) to Promise.retry must be a number"]
       72 GETIMPORT                        R3 K11 [assert]
       74 CALL                             R3 2 0
       75 NEWTABLE                         R3 0 0
       77 GETVARARGS                       R5 -1
       78 SETLIST                          R3 R5 -1 [1]
       80 LOADK                            R5 K15 ["#"]
       81 FASTCALL1                        SELECT_VARARG R5 ; [+3]
       82 GETIMPORT                        R4 K17 [select]
       84 GETVARARGS                       R6 -1
       85 CALL                             R4 -1 1
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R5 R6 K18 ["resolve"]
       89 MOVE                             R6 R0
       90 GETVARARGS                       R7 -1
       91 CALL                             R6 -1 -1
       92 CALL                             R5 -1 1
       93 NEWCLOSURE                       R7 P0
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R4
      100 NAMECALL                         R5 R5 K19 ["catch"]
      102 CALL                             R5 2 -1
      103 RETURN                           R5 -1

PROTO_125:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_126:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_127:
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

PROTO_128:
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

PROTO_129:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 DUPCLOSURE                       R2 K0 [PROTO_125]
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

PROTO_130:
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

PROTO_131:
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
        5 GETIMPORT                        R1 K4 [pcall]
        7 GETIMPORT                        R3 K6 [game]
        9 GETTABLEKS                       R2 R3 K7 ["DefineFastFlag"]
       11 GETIMPORT                        R3 K6 [game]
       13 LOADK                            R4 K8 ["ReducePromiseTaskDefer"]
       14 LOADB                            R5 0
       15 CALL                             R1 4 2
       16 JUMPIF                           R1 ; [+1]
       17 LOADB                            R2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 DUPCLOSURE                       R4 K10 [PROTO_3]
       20 LOADNIL                          R5
       21 DUPTABLE                         R6 K12 [{"Kind"}]
       22 MOVE                             R7 R4
       23 LOADK                            R8 K13 ["Promise.Error.Kind"]
       24 NEWTABLE                         R9 0 4
       26 LOADK                            R10 K14 ["ExecutionError"]
       27 LOADK                            R11 K15 ["AlreadyCancelled"]
       28 LOADK                            R12 K16 ["NotResolvedInTime"]
       29 LOADK                            R13 K17 ["TimedOut"]
       30 SETLIST                          R9 R10 4 [1]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K11 ["Kind"]
       35 MOVE                             R5 R6
       36 SETTABLEKS                       R5 R5 K18 ["__index"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          REF R5
       40 SETTABLEKS                       R6 R5 K19 ["new"]
       42 DUPCLOSURE                       R6 K20 [PROTO_5]
       43 SETTABLEKS                       R6 R5 K21 ["is"]
       45 NEWCLOSURE                       R6 P4
       46 CAPTURE                          REF R5
       47 SETTABLEKS                       R6 R5 K22 ["isKind"]
       49 NEWCLOSURE                       R6 P5
       50 CAPTURE                          REF R5
       51 SETTABLEKS                       R6 R5 K23 ["extend"]
       53 DUPCLOSURE                       R6 K24 [PROTO_8]
       54 SETTABLEKS                       R6 R5 K25 ["getErrorChain"]
       56 DUPCLOSURE                       R6 K26 [PROTO_9]
       57 SETTABLEKS                       R6 R5 K27 ["__tostring"]
       59 DUPCLOSURE                       R6 K28 [PROTO_10]
       60 DUPCLOSURE                       R7 K29 [PROTO_11]
       61 NEWCLOSURE                       R8 P10
       62 CAPTURE                          REF R5
       63 NEWCLOSURE                       R9 P11
       64 CAPTURE                          VAL R7
       65 CAPTURE                          REF R5
       66 DUPCLOSURE                       R10 K30 [PROTO_16]
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R11 K31 [PROTO_17]
       69 DUPTABLE                         R12 K37 [{"Error", "Status", "_getTime", "_timeEvent", "_unhandledRejectionCallbacks"}]
       70 SETTABLEKS                       R5 R12 K32 ["Error"]
       72 MOVE                             R13 R4
       73 LOADK                            R14 K38 ["Promise.Status"]
       74 NEWTABLE                         R15 0 4
       76 LOADK                            R16 K39 ["Started"]
       77 LOADK                            R17 K40 ["Resolved"]
       78 LOADK                            R18 K41 ["Rejected"]
       79 LOADK                            R19 K42 ["Cancelled"]
       80 SETLIST                          R15 R16 4 [1]
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K33 ["Status"]
       85 GETIMPORT                        R13 K45 [os.clock]
       87 SETTABLEKS                       R13 R12 K34 ["_getTime"]
       89 GETIMPORT                        R14 K6 [game]
       91 LOADK                            R16 K46 ["RunService"]
       92 NAMECALL                         R14 R14 K47 ["GetService"]
       94 CALL                             R14 2 1
       95 GETTABLEKS                       R13 R14 K48 ["Heartbeat"]
       97 SETTABLEKS                       R13 R12 K35 ["_timeEvent"]
       99 NEWTABLE                         R13 0 0
      101 SETTABLEKS                       R13 R12 K36 ["_unhandledRejectionCallbacks"]
      103 NEWTABLE                         R13 0 0
      105 SETTABLEKS                       R13 R12 K49 ["prototype"]
      107 GETTABLEKS                       R13 R12 K49 ["prototype"]
      109 SETTABLEKS                       R13 R12 K18 ["__index"]
      111 DUPCLOSURE                       R13 K50 [PROTO_22]
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R9
      115 SETTABLEKS                       R13 R12 K51 ["_new"]
      117 DUPCLOSURE                       R13 K52 [PROTO_23]
      118 CAPTURE                          VAL R12
      119 SETTABLEKS                       R13 R12 K19 ["new"]
      121 DUPCLOSURE                       R13 K53 [PROTO_24]
      122 SETTABLEKS                       R13 R12 K27 ["__tostring"]
      124 DUPCLOSURE                       R13 K54 [PROTO_27]
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R9
      127 SETTABLEKS                       R13 R12 K55 ["defer"]
      129 GETTABLEKS                       R13 R12 K55 ["defer"]
      131 SETTABLEKS                       R13 R12 K56 ["async"]
      133 DUPCLOSURE                       R13 K57 [PROTO_29]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R12
      136 SETTABLEKS                       R13 R12 K58 ["resolve"]
      138 DUPCLOSURE                       R13 K59 [PROTO_31]
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R12
      141 SETTABLEKS                       R13 R12 K60 ["reject"]
      143 DUPCLOSURE                       R13 K61 [PROTO_33]
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R12
      146 SETTABLEKS                       R13 R12 K62 ["_try"]
      148 DUPCLOSURE                       R13 K63 [PROTO_34]
      149 CAPTURE                          VAL R12
      150 SETTABLEKS                       R13 R12 K64 ["try"]
      152 DUPCLOSURE                       R13 K65 [PROTO_40]
      153 CAPTURE                          VAL R12
      154 SETTABLEKS                       R13 R12 K66 ["_all"]
      156 DUPCLOSURE                       R13 K67 [PROTO_41]
      157 CAPTURE                          VAL R12
      158 SETTABLEKS                       R13 R12 K68 ["all"]
      160 DUPCLOSURE                       R13 K69 [PROTO_45]
      161 CAPTURE                          VAL R12
      162 SETTABLEKS                       R13 R12 K70 ["fold"]
      164 DUPCLOSURE                       R13 K71 [PROTO_46]
      165 CAPTURE                          VAL R12
      166 SETTABLEKS                       R13 R12 K72 ["some"]
      168 DUPCLOSURE                       R13 K73 [PROTO_48]
      169 CAPTURE                          VAL R12
      170 SETTABLEKS                       R13 R12 K74 ["any"]
      172 DUPCLOSURE                       R13 K75 [PROTO_53]
      173 CAPTURE                          VAL R12
      174 SETTABLEKS                       R13 R12 K76 ["allSettled"]
      176 DUPCLOSURE                       R13 K77 [PROTO_58]
      177 CAPTURE                          VAL R12
      178 SETTABLEKS                       R13 R12 K78 ["race"]
      180 NEWCLOSURE                       R13 P29
      181 CAPTURE                          VAL R12
      182 CAPTURE                          REF R5
      183 SETTABLEKS                       R13 R12 K79 ["each"]
      185 DUPCLOSURE                       R13 K80 [PROTO_64]
      186 CAPTURE                          VAL R12
      187 SETTABLEKS                       R13 R12 K21 ["is"]
      189 DUPCLOSURE                       R13 K81 [PROTO_66]
      190 CAPTURE                          VAL R12
      191 SETTABLEKS                       R13 R12 K82 ["promisify"]
      193 LOADNIL                          R13
      194 LOADNIL                          R14
      195 NEWCLOSURE                       R15 P32
      196 CAPTURE                          VAL R12
      197 CAPTURE                          REF R14
      198 CAPTURE                          REF R13
      199 SETTABLEKS                       R15 R12 K83 ["delay"]
      201 CLOSEUPVALS                      R13
      202 NEWCLOSURE                       R13 P33
      203 CAPTURE                          VAL R12
      204 CAPTURE                          REF R5
      205 GETTABLEKS                       R14 R12 K49 ["prototype"]
      207 SETTABLEKS                       R13 R14 K84 ["timeout"]
      209 DUPCLOSURE                       R13 K85 [PROTO_73]
      210 GETTABLEKS                       R14 R12 K49 ["prototype"]
      212 SETTABLEKS                       R13 R14 K86 ["getStatus"]
      214 NEWCLOSURE                       R13 P35
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R9
      217 CAPTURE                          REF R5
      218 GETTABLEKS                       R14 R12 K49 ["prototype"]
      220 SETTABLEKS                       R13 R14 K87 ["_andThen"]
      222 DUPCLOSURE                       R13 K88 [PROTO_76]
      223 GETTABLEKS                       R14 R12 K49 ["prototype"]
      225 SETTABLEKS                       R13 R14 K89 ["andThen"]
      227 DUPCLOSURE                       R13 K90 [PROTO_81]
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R12
      230 GETTABLEKS                       R14 R12 K49 ["prototype"]
      232 SETTABLEKS                       R13 R14 K91 ["andThenAsync"]
      234 DUPCLOSURE                       R13 K92 [PROTO_82]
      235 GETTABLEKS                       R14 R12 K49 ["prototype"]
      237 SETTABLEKS                       R13 R14 K93 ["catch"]
      239 DUPCLOSURE                       R13 K94 [PROTO_85]
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R6
      242 GETTABLEKS                       R14 R12 K49 ["prototype"]
      244 SETTABLEKS                       R13 R14 K95 ["tap"]
      246 DUPCLOSURE                       R13 K96 [PROTO_87]
      247 CAPTURE                          VAL R6
      248 GETTABLEKS                       R14 R12 K49 ["prototype"]
      250 SETTABLEKS                       R13 R14 K97 ["andThenCall"]
      252 DUPCLOSURE                       R13 K98 [PROTO_89]
      253 CAPTURE                          VAL R6
      254 GETTABLEKS                       R14 R12 K49 ["prototype"]
      256 SETTABLEKS                       R13 R14 K99 ["andThenReturn"]
      258 DUPCLOSURE                       R13 K100 [PROTO_90]
      259 CAPTURE                          VAL R12
      260 GETTABLEKS                       R14 R12 K49 ["prototype"]
      262 SETTABLEKS                       R13 R14 K101 ["cancel"]
      264 DUPCLOSURE                       R13 K102 [PROTO_91]
      265 CAPTURE                          VAL R12
      266 GETTABLEKS                       R14 R12 K49 ["prototype"]
      268 SETTABLEKS                       R13 R14 K103 ["_consumerCancelled"]
      270 DUPCLOSURE                       R13 K104 [PROTO_94]
      271 CAPTURE                          VAL R12
      272 CAPTURE                          VAL R9
      273 GETTABLEKS                       R14 R12 K49 ["prototype"]
      275 SETTABLEKS                       R13 R14 K105 ["_finally"]
      277 DUPCLOSURE                       R13 K106 [PROTO_95]
      278 GETTABLEKS                       R14 R12 K49 ["prototype"]
      280 SETTABLEKS                       R13 R14 K107 ["finally"]
      282 DUPCLOSURE                       R13 K108 [PROTO_97]
      283 CAPTURE                          VAL R6
      284 GETTABLEKS                       R14 R12 K49 ["prototype"]
      286 SETTABLEKS                       R13 R14 K109 ["finallyCall"]
      288 DUPCLOSURE                       R13 K110 [PROTO_99]
      289 CAPTURE                          VAL R6
      290 GETTABLEKS                       R14 R12 K49 ["prototype"]
      292 SETTABLEKS                       R13 R14 K111 ["finallyReturn"]
      294 DUPCLOSURE                       R13 K112 [PROTO_100]
      295 GETTABLEKS                       R14 R12 K49 ["prototype"]
      297 SETTABLEKS                       R13 R14 K113 ["done"]
      299 DUPCLOSURE                       R13 K114 [PROTO_102]
      300 CAPTURE                          VAL R6
      301 GETTABLEKS                       R14 R12 K49 ["prototype"]
      303 SETTABLEKS                       R13 R14 K115 ["doneCall"]
      305 DUPCLOSURE                       R13 K116 [PROTO_104]
      306 CAPTURE                          VAL R6
      307 GETTABLEKS                       R14 R12 K49 ["prototype"]
      309 SETTABLEKS                       R13 R14 K117 ["doneReturn"]
      311 DUPCLOSURE                       R13 K118 [PROTO_106]
      312 CAPTURE                          VAL R12
      313 GETTABLEKS                       R14 R12 K49 ["prototype"]
      315 SETTABLEKS                       R13 R14 K119 ["awaitStatus"]
      317 DUPCLOSURE                       R13 K120 [PROTO_107]
      318 CAPTURE                          VAL R12
      319 DUPCLOSURE                       R14 K121 [PROTO_108]
      320 CAPTURE                          VAL R13
      321 GETTABLEKS                       R15 R12 K49 ["prototype"]
      323 SETTABLEKS                       R14 R15 K122 ["await"]
      325 DUPCLOSURE                       R14 K123 [PROTO_109]
      326 CAPTURE                          VAL R12
      327 DUPCLOSURE                       R15 K124 [PROTO_110]
      328 CAPTURE                          VAL R14
      329 GETTABLEKS                       R16 R12 K49 ["prototype"]
      331 SETTABLEKS                       R15 R16 K125 ["expect"]
      333 GETTABLEKS                       R15 R12 K49 ["prototype"]
      335 GETTABLEKS                       R17 R12 K49 ["prototype"]
      337 GETTABLEKS                       R16 R17 K125 ["expect"]
      339 SETTABLEKS                       R16 R15 K126 ["awaitValue"]
      341 DUPCLOSURE                       R15 K127 [PROTO_111]
      342 CAPTURE                          VAL R12
      343 GETTABLEKS                       R16 R12 K49 ["prototype"]
      345 SETTABLEKS                       R15 R16 K128 ["_unwrap"]
      347 NEWCLOSURE                       R15 P57
      348 CAPTURE                          VAL R12
      349 CAPTURE                          REF R5
      350 CAPTURE                          VAL R6
      351 GETTABLEKS                       R16 R12 K49 ["prototype"]
      353 SETTABLEKS                       R15 R16 K129 ["_resolve"]
      355 DUPCLOSURE                       R15 K130 [PROTO_116]
      356 CAPTURE                          VAL R12
      357 CAPTURE                          VAL R6
      358 GETTABLEKS                       R16 R12 K49 ["prototype"]
      360 SETTABLEKS                       R15 R16 K131 ["_reject"]
      362 NEWTABLE                         R15 0 0
      364 LOADNIL                          R16
      365 NEWCLOSURE                       R17 P59
      366 CAPTURE                          REF R16
      367 CAPTURE                          REF R15
      368 NEWCLOSURE                       R18 P60
      369 CAPTURE                          VAL R12
      370 CAPTURE                          REF R2
      371 CAPTURE                          REF R15
      372 CAPTURE                          REF R16
      373 CAPTURE                          VAL R17
      374 GETTABLEKS                       R19 R12 K49 ["prototype"]
      376 SETTABLEKS                       R18 R19 K132 ["_finalize"]
      378 CLOSEUPVALS                      R15
      379 NEWCLOSURE                       R15 P61
      380 CAPTURE                          VAL R12
      381 CAPTURE                          REF R5
      382 GETTABLEKS                       R16 R12 K49 ["prototype"]
      384 SETTABLEKS                       R15 R16 K133 ["now"]
      386 DUPCLOSURE                       R15 K134 [PROTO_122]
      387 CAPTURE                          VAL R12
      388 SETTABLEKS                       R15 R12 K135 ["retry"]
      390 DUPCLOSURE                       R15 K136 [PROTO_124]
      391 CAPTURE                          VAL R12
      392 SETTABLEKS                       R15 R12 K137 ["retryWithDelay"]
      394 DUPCLOSURE                       R15 K138 [PROTO_129]
      395 CAPTURE                          VAL R12
      396 SETTABLEKS                       R15 R12 K139 ["fromEvent"]
      398 DUPCLOSURE                       R15 K140 [PROTO_131]
      399 CAPTURE                          VAL R12
      400 SETTABLEKS                       R15 R12 K141 ["onUnhandledRejection"]
      402 CLOSEUPVALS                      R2
      403 RETURN                           R12 1
