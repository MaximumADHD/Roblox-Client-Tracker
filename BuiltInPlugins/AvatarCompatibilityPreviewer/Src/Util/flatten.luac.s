PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 0 0
        5 GETVARARGS                       R4 -1
        6 SETLIST                          R1 R4 -1 [1]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETIMPORT                        R6 K2 [table.move]
       13 MOVE                             R7 R5
       14 LOADN                            R8 1
       15 LENGTH                           R9 R5
       16 LENGTH                           R11 R0
       17 ADDK                             R10 R11 K3 [1]
       18 MOVE                             R11 R0
       19 CALL                             R6 5 0
       20 FORGLOOP                         R1 2 ; [-10]
       22 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
