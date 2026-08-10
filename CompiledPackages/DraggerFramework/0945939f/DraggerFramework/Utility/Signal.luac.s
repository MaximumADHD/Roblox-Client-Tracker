PROTO_0:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 LOADB                            R7 0
        9 LOADN                            R10 1
       10 LOADK                            R12 K2 ["#"]
       11 FASTCALL1                        SELECT_VARARG R12 ; [+3]
       12 GETIMPORT                        R11 K4 [select]
       14 GETVARARGS                       R13 -1
       15 CALL                             R11 -1 1
       16 MOVE                             R8 R11
       17 LOADN                            R9 1
       18 FORNPREP                         R8
       19 FASTCALL1                        SELECT_VARARG R10 ; [+4]
       20 GETIMPORT                        R11 K4 [select]
       22 MOVE                             R12 R10
       23 GETVARARGS                       R13 -1
       24 CALL                             R11 -1 1
       25 JUMPIFNOTEQ                      R5 R11 ; [+3]
       27 LOADB                            R7 1
       28 JUMP                             ; [+1]
       29 FORNLOOP                         R8
       30 JUMPIF                           R7 ; [+1]
       31 SETTABLE                         R6 R1 R5
       32 FORGLOOP                         R2 2 ; [-25]
       34 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 LENGTH                           R2 R0
        4 LOADN                            R5 1
        5 MOVE                             R3 R2
        6 LOADN                            R4 1
        7 FORNPREP                         R3
        8 GETTABLE                         R6 R0 R5
        9 SETTABLE                         R6 R1 R5
       10 FORNLOOP                         R3
       11 LOADN                            R5 1
       12 LOADK                            R7 K0 ["#"]
       13 FASTCALL1                        SELECT_VARARG R7 ; [+3]
       14 GETIMPORT                        R6 K2 [select]
       16 GETVARARGS                       R8 -1
       17 CALL                             R6 -1 1
       18 MOVE                             R3 R6
       19 LOADN                            R4 1
       20 FORNPREP                         R3
       21 ADD                              R6 R2 R5
       22 FASTCALL1                        SELECT_VARARG R5 ; [+4]
       23 GETIMPORT                        R7 K2 [select]
       25 MOVE                             R8 R5
       26 GETVARARGS                       R9 -1
       27 CALL                             R7 -1 1
       28 SETTABLE                         R7 R1 R6
       29 FORNLOOP                         R3
       30 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"_listeners"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_listeners"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isConnected"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["_listeners"]
        9 GETUPVAL                         R3 0
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K1 ["_listeners"]
       13 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K3 [{[1], ["isConnected"] = True}]
        1 SETTABLEKS                       R1 R2 K0 ["callback"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R4 R0 K4 ["_listeners"]
        6 MOVE                             R5 R2
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R3 R0 K4 ["_listeners"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 DUPTABLE                         R4 K6 [{"Disconnect"}]
       15 SETTABLEKS                       R3 R4 K5 ["Disconnect"]
       17 RETURN                           R4 1

PROTO_5:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [ipairs]
        3 GETTABLEKS                       R2 R0 K2 ["_listeners"]
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 GETTABLEKS                       R6 R5 K3 ["isConnected"]
        9 JUMPIFNOT                        R6 ; [+4]
       10 GETTABLEKS                       R6 R5 K4 ["callback"]
       12 GETVARARGS                       R7 -1
       13 CALL                             R6 -1 0
       14 FORGLOOP                         R1 2 [inext] ; [-8]
       16 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      1
        1 MOVE                             R1 R0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 0
        4 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      1
        1 MOVE                             R1 R0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 0
        4 LOADB                            R1 1
        5 SETUPVAL                         R1 0
        6 GETUPVAL                         R1 1
        7 GETIMPORT                        R2 K2 [coroutine.yield]
        9 CALL                             R2 0 -1
       10 CALL                             R1 -1 0
       11 LOADB                            R1 1
       12 SETUPVAL                         R1 0
       13 JUMPBACK                         ; [-8]
       14 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R3 K6 [{[1] = True, ["_signal"], ["_fn"], ["_next"] = False}]
        1 SETTABLEKS                       R0 R3 K2 ["_signal"]
        3 SETTABLEKS                       R1 R3 K3 ["_fn"]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K8 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_connected"]
        2 LOADK                            R3 K1 ["Can't disconnect a connection twice."]
        3 LOADN                            R4 2
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R1 K3 [assert]
        7 CALL                             R1 3 0
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K0 ["_connected"]
       11 GETTABLEKS                       R1 R0 K4 ["_signal"]
       13 GETTABLEKS                       R1 R1 K5 ["_handlerListHead"]
       15 JUMPIFNOTEQ                      R1 R0 ; [+8]
       17 GETTABLEKS                       R1 R0 K4 ["_signal"]
       19 GETTABLEKS                       R2 R0 K6 ["_next"]
       21 SETTABLEKS                       R2 R1 K5 ["_handlerListHead"]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R1 R0 K4 ["_signal"]
       26 GETTABLEKS                       R1 R1 K5 ["_handlerListHead"]
       28 JUMPIFNOT                        R1 ; [+7]
       29 GETTABLEKS                       R2 R1 K6 ["_next"]
       31 JUMPIFEQ                         R2 R0 ; [+4]
       33 GETTABLEKS                       R1 R1 K6 ["_next"]
       35 JUMPBACK                         ; [-8]
       36 JUMPIFNOT                        R1 ; [+4]
       37 GETTABLEKS                       R2 R0 K6 ["_next"]
       39 SETTABLEKS                       R2 R1 K6 ["_next"]
       41 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Attempt to get Connection::%s (not a valid member)"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 LOADN                            R3 2
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["Attempt to set Connection::%s (not a valid member)"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 LOADN                            R4 2
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        4 GETIMPORT                        R0 K4 [setmetatable]
        6 CALL                             R0 2 1
        7 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
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

PROTO_14:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["_handlerListHead"]
        3 JUMPIFNOT                        R1 ; [+32]
        4 GETTABLEKS                       R2 R1 K1 ["_connected"]
        6 JUMPIFNOT                        R2 ; [+26]
        7 LOADB                            R2 0
        8 SETUPVAL                         R2 0
        9 GETIMPORT                        R2 K4 [coroutine.resume]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R4 R1 K5 ["_fn"]
       14 GETVARARGS                       R5 -1
       15 CALL                             R2 -1 2
       16 GETUPVAL                         R4 0
       17 JUMPIF                           R4 ; [+15]
       18 GETIMPORT                        R4 K7 [coroutine.create]
       20 GETUPVAL                         R5 2
       21 CALL                             R4 1 1
       22 SETUPVAL                         R4 1
       23 LOADB                            R4 1
       24 SETUPVAL                         R4 0
       25 JUMPIF                           R2 ; [+7]
       26 GETIMPORT                        R4 K9 [error]
       28 LOADK                            R6 K10 ["Error in event handler: "]
       29 MOVE                             R7 R3
       30 CONCAT                           R5 R6 R7
       31 LOADN                            R6 2
       32 CALL                             R4 2 0
       33 GETTABLEKS                       R1 R1 K11 ["_next"]
       35 JUMPBACK                         ; [-33]
       36 RETURN                           R0 0

PROTO_15:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 NAMECALL                         R0 R0 K0 ["Disconnect"]
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K3 [coroutine.resume]
        7 GETUPVAL                         R1 1
        8 GETVARARGS                       R2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [coroutine.running]
        2 CALL                             R1 0 1
        3 LOADNIL                          R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R1
        7 NAMECALL                         R3 R0 K3 ["connect"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETIMPORT                        R3 K5 [coroutine.yield]
       13 CALL                             R3 0 -1
       14 CLOSEUPVALS                      R2
       15 RETURN                           R3 -1

PROTO_17:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Attempt to get Signal::%s (not a valid member)"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 LOADN                            R3 2
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["Attempt to set Signal::%s (not a valid member)"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 LOADN                            R4 2
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 NEWTABLE                         R2 4 0
        5 SETTABLEKS                       R2 R2 K2 ["__index"]
        7 DUPCLOSURE                       R3 K3 [PROTO_2]
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R3 R2 K4 ["new"]
       11 DUPCLOSURE                       R3 K5 [PROTO_4]
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R3 R2 K6 ["Connect"]
       16 DUPCLOSURE                       R3 K7 [PROTO_5]
       17 SETTABLEKS                       R3 R2 K8 ["Fire"]
       19 RETURN                           R2 1
