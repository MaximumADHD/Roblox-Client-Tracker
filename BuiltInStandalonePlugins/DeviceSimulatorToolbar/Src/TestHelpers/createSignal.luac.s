PROTO_0:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["Connected"]
        3 GETUPVAL                         R1 0
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R1 R0
        6 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 GETUPVAL                         R3 0
        2 SETTABLE                         R1 R3 R2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R3 R2 K3 ["Disconnect"]
        7 RETURN                           R2 1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [table.clone]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R4 K3 ["Connected"]
        8 JUMPIFNOT                        R6 ; [+3]
        9 MOVE                             R6 R5
       10 GETVARARGS                       R7 -1
       11 CALL                             R6 -1 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_3:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R5 K0 ["Connected"]
        7 JUMPIFNOT                        R7 ; [+1]
        8 ADDK                             R1 R1 K1 [1]
        9 FORGLOOP                         R2 1 ; [-5]
       11 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 4 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R1 K0 ["Connect"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R1 K1 ["Fire"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K2 ["GetConnectionCount"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
