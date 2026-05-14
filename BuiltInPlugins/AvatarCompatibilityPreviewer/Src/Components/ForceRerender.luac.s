PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 GETTABLEKS                       R5 R0 K2 ["dependencies"]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R1
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 0
       25 JUMPIFNOT                        R1 ; [+2]
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K3 ["createElement"]
       31 GETTABLEKS                       R4 R0 K4 ["component"]
       33 GETTABLEKS                       R5 R0 K5 ["innerProps"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_2]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
