PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 JUMPIFEQ                         R5 R1 ; [+8]
        8 GETTABLE                         R8 R0 R5
        9 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K2 [table.insert]
       14 CALL                             R6 2 0
       15 FORNLOOP                         R3
       16 RETURN                           R2 1

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

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 DUPCLOSURE                       R3 K3 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R0 K4 ["new"]
       11 DUPCLOSURE                       R3 K5 [PROTO_4]
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R3 R0 K6 ["Connect"]
       16 DUPCLOSURE                       R3 K7 [PROTO_5]
       17 SETTABLEKS                       R3 R0 K8 ["Fire"]
       19 RETURN                           R0 1
