PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RoduxRemoveConnectTraceback"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_2:
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

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R0 R5
        7 JUMPIFEQ                         R6 R1 ; [+8]
        9 GETTABLE                         R8 R0 R5
       10 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       12 MOVE                             R7 R2
       13 GETIMPORT                        R6 K2 [table.insert]
       15 CALL                             R6 2 0
       16 FORNLOOP                         R3
       17 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"_listeners", "_store"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_listeners"]
        5 SETTABLEKS                       R0 R1 K1 ["_store"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K4 [setmetatable]
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disconnected"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETIMPORT                        R0 K2 [error]
        6 LOADK                            R1 K3 ["Listener connected at: \n%s\nwas already disconnected at: \n%s\n"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["connectTraceback"]
       10 FASTCALL1                        TOSTRING R4 ; [+2]
       11 GETIMPORT                        R3 K6 [tostring]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K7 ["disconnectTraceback"]
       17 FASTCALL1                        TOSTRING R5 ; [+2]
       18 GETIMPORT                        R4 K6 [tostring]
       20 CALL                             R4 1 1
       21 NAMECALL                         R1 R1 K8 ["format"]
       23 CALL                             R1 3 -1
       24 CALL                             R0 -1 0
       25 GETUPVAL                         R0 1
       26 GETTABLEKS                       R0 R0 K9 ["_store"]
       28 JUMPIFNOT                        R0 ; [+10]
       29 GETUPVAL                         R0 1
       30 GETTABLEKS                       R0 R0 K9 ["_store"]
       32 GETTABLEKS                       R0 R0 K10 ["_isDispatching"]
       34 JUMPIFNOT                        R0 ; [+4]
       35 GETIMPORT                        R0 K2 [error]
       37 LOADK                            R1 K11 ["You may not unsubscribe from a store listener while the reducer is executing."]
       38 CALL                             R0 1 0
       39 GETUPVAL                         R0 2
       40 JUMPIFNOT                        R0 ; [+2]
       41 GETUPVAL                         R0 3
       42 JUMPIFNOT                        R0 ; [+6]
       43 GETUPVAL                         R0 0
       44 GETIMPORT                        R1 K14 [debug.traceback]
       46 CALL                             R1 0 1
       47 SETTABLEKS                       R1 R0 K7 ["disconnectTraceback"]
       49 GETUPVAL                         R0 0
       50 LOADB                            R1 1
       51 SETTABLEKS                       R1 R0 K0 ["disconnected"]
       53 GETUPVAL                         R0 1
       54 GETUPVAL                         R1 4
       55 GETUPVAL                         R2 1
       56 GETTABLEKS                       R2 R2 K15 ["_listeners"]
       58 GETUPVAL                         R3 0
       59 CALL                             R1 2 1
       60 SETTABLEKS                       R1 R0 K15 ["_listeners"]
       62 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["function"] ; [+5]
        7 GETIMPORT                        R2 K4 [error]
        9 LOADK                            R3 K5 ["Expected the listener to be a function."]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R2 R0 K6 ["_store"]
       13 JUMPIFNOT                        R2 ; [+9]
       14 GETTABLEKS                       R2 R0 K6 ["_store"]
       16 GETTABLEKS                       R2 R2 K7 ["_isDispatching"]
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETIMPORT                        R2 K4 [error]
       21 LOADK                            R3 K8 ["You may not call store.changed:connect() while the reducer is executing. If you would like to be notified after the store has been updated, subscribe from a component and invoke store:getState() in the callback to access the latest state. "]
       22 CALL                             R2 1 0
       23 DUPTABLE                         R2 K13 [{"callback", "disconnected", "connectTraceback", "disconnectTraceback"}]
       24 SETTABLEKS                       R1 R2 K9 ["callback"]
       26 LOADB                            R3 0
       27 SETTABLEKS                       R3 R2 K10 ["disconnected"]
       29 LOADNIL                          R3
       30 SETTABLEKS                       R3 R2 K11 ["connectTraceback"]
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K12 ["disconnectTraceback"]
       35 GETUPVAL                         R3 0
       36 JUMPIFNOT                        R3 ; [+2]
       37 GETUPVAL                         R3 1
       38 JUMPIFNOT                        R3 ; [+5]
       39 GETIMPORT                        R3 K16 [debug.traceback]
       41 CALL                             R3 0 1
       42 SETTABLEKS                       R3 R2 K11 ["connectTraceback"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R4 R0 K17 ["_listeners"]
       47 MOVE                             R5 R2
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R0 K17 ["_listeners"]
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          UPVAL U3
       57 DUPTABLE                         R4 K19 [{"disconnect"}]
       58 SETTABLEKS                       R3 R4 K18 ["disconnect"]
       60 RETURN                           R4 1

PROTO_7:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [ipairs]
        3 GETTABLEKS                       R2 R0 K2 ["_listeners"]
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 GETTABLEKS                       R6 R5 K3 ["disconnected"]
        9 JUMPIF                           R6 ; [+4]
       10 GETTABLEKS                       R6 R5 K4 ["callback"]
       12 GETVARARGS                       R7 -1
       13 CALL                             R6 -1 0
       14 FORGLOOP                         R1 2 [inext] ; [-8]
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K4 [xpcall]
        7 DUPCLOSURE                       R2 K5 [PROTO_0]
        8 DUPCLOSURE                       R3 K6 [PROTO_1]
        9 CALL                             R1 2 2
       10 DUPCLOSURE                       R3 K7 [PROTO_2]
       11 DUPCLOSURE                       R4 K8 [PROTO_3]
       12 NEWTABLE                         R5 4 0
       14 SETTABLEKS                       R5 R5 K9 ["__index"]
       16 DUPCLOSURE                       R6 K10 [PROTO_4]
       17 CAPTURE                          VAL R5
       18 SETTABLEKS                       R6 R5 K11 ["new"]
       20 DUPCLOSURE                       R6 K12 [PROTO_6]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R4
       25 SETTABLEKS                       R6 R5 K13 ["connect"]
       27 DUPCLOSURE                       R6 K14 [PROTO_7]
       28 SETTABLEKS                       R6 R5 K15 ["fire"]
       30 RETURN                           R5 1
