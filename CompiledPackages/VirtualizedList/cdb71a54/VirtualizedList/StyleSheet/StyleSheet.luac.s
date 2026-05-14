PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+10]
        2 JUMPIFEQKNIL                     R1 ; [+8]
        4 NEWTABLE                         R2 0 2
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 SETLIST                          R2 R3 2 [1]
       10 RETURN                           R2 1
       11 JUMPIFEQKNIL                     R0 ; [+3]
       13 MOVE                             R2 R0
       14 RETURN                           R2 1
       15 MOVE                             R2 R1
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["freeze"]
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["forEach"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["keys"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CALL                             R1 2 0
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETTABLEKS                       R3 R1 K7 ["Object"]
       18 NEWTABLE                         R4 2 0
       20 DUPCLOSURE                       R5 K8 [PROTO_0]
       21 SETTABLEKS                       R5 R4 K9 ["compose"]
       23 DUPCLOSURE                       R6 K10 [PROTO_2]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R6 R4 K11 ["create"]
       28 RETURN                           R4 1
