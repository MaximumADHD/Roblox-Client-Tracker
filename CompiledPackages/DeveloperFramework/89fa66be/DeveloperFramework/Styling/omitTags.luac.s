PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 [" "]
        5 CALL                             R2 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      1
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 LOADK                            R4 K0 [" "]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 1
       10 GETUPVAL                         R2 2
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 GETVARARGS                       R4 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R2 4
       18 GETUPVAL                         R3 5
       19 MOVE                             R4 R1
       20 CALL                             R3 1 1
       21 LOADK                            R4 K0 [" "]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["collectSet"]
       16 GETTABLEKS                       R3 R1 K7 ["forEach"]
       18 GETTABLEKS                       R4 R1 K8 ["forEachArgs"]
       20 GETTABLEKS                       R5 R1 K9 ["keys"]
       22 GETIMPORT                        R6 K12 [string.split]
       24 GETIMPORT                        R7 K15 [table.concat]
       26 DUPCLOSURE                       R8 K16 [PROTO_2]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R6
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R7
       32 CAPTURE                          VAL R5
       33 RETURN                           R8 1
