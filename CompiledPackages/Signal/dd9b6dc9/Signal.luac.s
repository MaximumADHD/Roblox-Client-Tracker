PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_listeners"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_listeners"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isConnected"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["RemoveValueFromList"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["_listeners"]
       11 GETUPVAL                         R3 0
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K2 ["_listeners"]
       15 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K3 [{[1], ["isConnected"] = True}]
        1 SETTABLEKS                       R1 R2 K0 ["callback"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K4 ["Append"]
        6 GETTABLEKS                       R4 R0 K5 ["_listeners"]
        8 MOVE                             R5 R2
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R0 K5 ["_listeners"]
       12 DUPTABLE                         R3 K7 [{"Disconnect"}]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R4 R3 K6 ["Disconnect"]
       19 RETURN                           R3 1

PROTO_3:
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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Immutable"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["Connect"]
       22 DUPCLOSURE                       R2 K11 [PROTO_3]
       23 SETTABLEKS                       R2 R1 K12 ["Fire"]
       25 RETURN                           R1 1
