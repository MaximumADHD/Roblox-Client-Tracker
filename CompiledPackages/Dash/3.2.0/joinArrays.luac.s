PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 JUMPIFNOT                        R6 ; [+9]
       13 GETIMPORT                        R7 K2 [table.move]
       15 MOVE                             R8 R6
       16 LOADN                            R9 1
       17 LENGTH                           R10 R6
       18 LENGTH                           R12 R1
       19 ADDK                             R11 R12 K3 [1]
       20 MOVE                             R12 R1
       21 CALL                             R7 5 0
       22 FORGLOOP                         R2 2 ; [-11]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 RETURN                           R2 1
