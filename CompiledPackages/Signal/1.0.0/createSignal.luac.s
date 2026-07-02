PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["unsubscribed"]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 2
       10 LOADNIL                          R3
       11 SETTABLE                         R3 R1 R2
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K3 [{[1], ["unsubscribed"] = False}]
        1 SETTABLEKS                       R1 R2 K0 ["callback"]
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R3 ; [+6]
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R3 R4 R1
        7 JUMPIF                           R3 ; [+3]
        8 GETUPVAL                         R3 2
        9 SETTABLE                         R2 R3 R1
       10 JUMP                             ; [+2]
       11 GETUPVAL                         R3 1
       12 SETTABLE                         R2 R3 R1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 DUPTABLE                         R4 K5 [{"unsubscribe"}]
       19 SETTABLEKS                       R3 R4 K4 ["unsubscribe"]
       21 RETURN                           R4 1

PROTO_2:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["unsubscribed"]
        8 JUMPIF                           R6 ; [+6]
        9 GETUPVAL                         R7 2
       10 GETTABLE                         R6 R7 R4
       11 JUMPIF                           R6 ; [+3]
       12 MOVE                             R6 R4
       13 MOVE                             R7 R0
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-10]
       17 LOADB                            R1 0
       18 SETUPVAL                         R1 0
       19 GETUPVAL                         R1 2
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETUPVAL                         R6 1
       24 SETTABLE                         R5 R6 R4
       25 FORGLOOP                         R1 2 ; [-3]
       27 GETIMPORT                        R1 K3 [table.clear]
       29 GETUPVAL                         R2 2
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 LOADB                            R2 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 DUPTABLE                         R5 K1 [{"subscribe"}]
       14 SETTABLEKS                       R3 R5 K0 ["subscribe"]
       16 MOVE                             R6 R4
       17 CLOSEUPVALS                      R2
       18 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_3]
       11 RETURN                           R1 1
