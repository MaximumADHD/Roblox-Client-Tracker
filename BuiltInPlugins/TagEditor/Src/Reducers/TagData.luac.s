PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["Group"]
        2 ORK                              R2 R3 K0 [""]
        3 GETTABLEKS                       R4 R1 K1 ["Group"]
        5 ORK                              R3 R4 K0 [""]
        6 JUMPIFNOTLT                      R2 R3 ; [+3]
        8 LOADB                            R4 1
        9 RETURN                           R4 1
       10 JUMPIFNOTLT                      R3 R2 ; [+3]
       12 LOADB                            R4 0
       13 RETURN                           R4 1
       14 GETTABLEKS                       R5 R0 K2 ["Name"]
       16 ORK                              R4 R5 K0 [""]
       17 GETTABLEKS                       R6 R1 K2 ["Name"]
       19 ORK                              R5 R6 K0 [""]
       20 JUMPIFLT                         R4 R5 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 RETURN                           R6 1

PROTO_1:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R1 K0 ["type"]
        7 JUMPIFNOTEQKS                    R2 K1 ["SetTagData"] ; [+10]
        9 GETIMPORT                        R2 K4 [table.sort]
       11 GETTABLEKS                       R3 R1 K5 ["data"]
       13 DUPCLOSURE                       R4 K6 [PROTO_0]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R1 K5 ["data"]
       17 RETURN                           R2 1
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_1]
       17 RETURN                           R2 1
