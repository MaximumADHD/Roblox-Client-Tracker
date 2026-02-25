PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 SETUPVAL                         R2 0
        4 MOVE                             R2 R0
        5 GETVARARGS                       R3 -1
        6 CALL                             R2 -1 0
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [coroutine.yield]
        3 CALL                             R1 0 -1
        4 CALL                             R0 -1 0
        5 JUMPBACK                         ; [-6]
        6 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R3 K4 [{"_connected", "_signal", "_fn", "_next"}]
        1 LOADB                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["_connected"]
        4 SETTABLEKS                       R0 R3 K1 ["_signal"]
        6 SETTABLEKS                       R1 R3 K2 ["_fn"]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K3 ["_next"]
       11 GETUPVAL                         R4 0
       12 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       14 GETIMPORT                        R2 K6 [setmetatable]
       16 CALL                             R2 2 1
       17 RETURN                           R2 1

PROTO_3:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_connected"]
        3 GETTABLEKS                       R2 R0 K1 ["_signal"]
        5 GETTABLEKS                       R1 R2 K2 ["_handlerListHead"]
        7 JUMPIFNOTEQ                      R1 R0 ; [+8]
        9 GETTABLEKS                       R1 R0 K1 ["_signal"]
       11 GETTABLEKS                       R2 R0 K3 ["_next"]
       13 SETTABLEKS                       R2 R1 K2 ["_handlerListHead"]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K1 ["_signal"]
       18 GETTABLEKS                       R1 R2 K2 ["_handlerListHead"]
       20 JUMPIFNOT                        R1 ; [+7]
       21 GETTABLEKS                       R2 R1 K3 ["_next"]
       23 JUMPIFEQ                         R2 R0 ; [+4]
       25 GETTABLEKS                       R1 R1 K3 ["_next"]
       27 JUMPBACK                         ; [-8]
       28 JUMPIFNOT                        R1 ; [+4]
       29 GETTABLEKS                       R2 R0 K3 ["_next"]
       31 SETTABLEKS                       R2 R1 K3 ["_next"]
       33 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["Attempt to get Connection::%s (not a valid member)"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K1 [error]
        2 LOADK                            R4 K2 ["Attempt to set Connection::%s (not a valid member)"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R7 R1
        5 GETIMPORT                        R6 K4 [tostring]
        7 CALL                             R6 1 1
        8 NAMECALL                         R4 R4 K5 ["format"]
       10 CALL                             R4 2 1
       11 LOADN                            R5 2
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"_handlerListHead"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_handlerListHead"]
        4 GETUPVAL                         R2 0
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K3 [setmetatable]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_7:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+11]
        8 FASTCALL1                        GETMETATABLE R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K4 [getmetatable]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R0 K1 ["_handlerListHead"]
        8 JUMPIFNOT                        R3 ; [+7]
        9 GETTABLEKS                       R3 R0 K1 ["_handlerListHead"]
       11 SETTABLEKS                       R3 R2 K2 ["_next"]
       13 SETTABLEKS                       R2 R0 K1 ["_handlerListHead"]
       15 RETURN                           R2 1
       16 SETTABLEKS                       R2 R0 K1 ["_handlerListHead"]
       18 RETURN                           R2 1

PROTO_9:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_handlerListHead"]
        3 RETURN                           R0 0

PROTO_10:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_handlerListHead"]
        3 JUMPIFNOT                        R1 ; [+24]
        4 GETTABLEKS                       R2 R1 K1 ["_connected"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETUPVAL                         R2 0
        8 JUMPIF                           R2 ; [+9]
        9 GETIMPORT                        R2 K4 [coroutine.create]
       11 GETUPVAL                         R3 1
       12 CALL                             R2 1 1
       13 SETUPVAL                         R2 0
       14 GETIMPORT                        R2 K6 [coroutine.resume]
       16 GETUPVAL                         R3 0
       17 CALL                             R2 1 0
       18 GETIMPORT                        R2 K9 [task.spawn]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R1 K10 ["_fn"]
       23 GETVARARGS                       R5 -1
       24 CALL                             R2 -1 0
       25 GETTABLEKS                       R1 R1 K11 ["_next"]
       27 JUMPBACK                         ; [-25]
       28 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 NAMECALL                         R0 R0 K0 ["Disconnect"]
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 GETUPVAL                         R1 1
        8 GETVARARGS                       R2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [coroutine.running]
        2 CALL                             R1 0 1
        3 LOADNIL                          R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R3 R0 K3 ["Connect"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETIMPORT                        R3 K5 [coroutine.yield]
       13 CALL                             R3 0 -1
       14 CLOSEUPVALS                      R2
       15 RETURN                           R3 -1

PROTO_13:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["_connected"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["Disconnect"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 1
       10 GETVARARGS                       R1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R3 R0 K0 ["Connect"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CLOSEUPVALS                      R2
        9 RETURN                           R2 1

PROTO_15:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["Attempt to get Signal::%s (not a valid member)"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R3 K1 [error]
        2 LOADK                            R4 K2 ["Attempt to set Signal::%s (not a valid member)"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R7 R1
        5 GETIMPORT                        R6 K4 [tostring]
        7 CALL                             R6 1 1
        8 NAMECALL                         R4 R4 K5 ["format"]
       10 CALL                             R4 2 1
       11 LOADN                            R5 2
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 DUPCLOSURE                       R2 K0 [PROTO_1]
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R3 8 0
        8 SETTABLEKS                       R3 R3 K1 ["__index"]
       10 DUPCLOSURE                       R4 K2 [PROTO_2]
       11 CAPTURE                          VAL R3
       12 SETTABLEKS                       R4 R3 K3 ["new"]
       14 DUPCLOSURE                       R4 K4 [PROTO_3]
       15 SETTABLEKS                       R4 R3 K5 ["Disconnect"]
       17 GETTABLEKS                       R4 R3 K5 ["Disconnect"]
       19 SETTABLEKS                       R4 R3 K6 ["Destroy"]
       21 GETTABLEKS                       R4 R3 K5 ["Disconnect"]
       23 SETTABLEKS                       R4 R3 K7 ["destroy"]
       25 DUPTABLE                         R6 K9 [{"__index", "__newindex"}]
       26 DUPCLOSURE                       R7 K10 [PROTO_4]
       27 SETTABLEKS                       R7 R6 K1 ["__index"]
       29 DUPCLOSURE                       R7 K11 [PROTO_5]
       30 SETTABLEKS                       R7 R6 K8 ["__newindex"]
       32 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       34 MOVE                             R5 R3
       35 GETIMPORT                        R4 K13 [setmetatable]
       37 CALL                             R4 2 0
       38 NEWTABLE                         R4 16 0
       40 SETTABLEKS                       R4 R4 K1 ["__index"]
       42 DUPCLOSURE                       R5 K14 [PROTO_6]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R5 R4 K3 ["new"]
       46 DUPCLOSURE                       R5 K15 [PROTO_7]
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R5 R4 K16 ["isSignal"]
       50 DUPCLOSURE                       R5 K17 [PROTO_8]
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R5 R4 K18 ["Connect"]
       54 DUPCLOSURE                       R5 K19 [PROTO_9]
       55 SETTABLEKS                       R5 R4 K20 ["DisconnectAll"]
       57 NEWCLOSURE                       R5 P10
       58 CAPTURE                          REF R0
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R5 R4 K21 ["Fire"]
       62 DUPCLOSURE                       R5 K22 [PROTO_12]
       63 SETTABLEKS                       R5 R4 K23 ["Wait"]
       65 DUPCLOSURE                       R5 K24 [PROTO_14]
       66 SETTABLEKS                       R5 R4 K25 ["Once"]
       68 GETTABLEKS                       R5 R4 K20 ["DisconnectAll"]
       70 SETTABLEKS                       R5 R4 K6 ["Destroy"]
       72 GETTABLEKS                       R5 R4 K20 ["DisconnectAll"]
       74 SETTABLEKS                       R5 R4 K7 ["destroy"]
       76 DUPTABLE                         R7 K9 [{"__index", "__newindex"}]
       77 DUPCLOSURE                       R8 K26 [PROTO_15]
       78 SETTABLEKS                       R8 R7 K1 ["__index"]
       80 DUPCLOSURE                       R8 K27 [PROTO_16]
       81 SETTABLEKS                       R8 R7 K8 ["__newindex"]
       83 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       85 MOVE                             R6 R4
       86 GETIMPORT                        R5 K13 [setmetatable]
       88 CALL                             R5 2 0
       89 CLOSEUPVALS                      R0
       90 RETURN                           R4 1
