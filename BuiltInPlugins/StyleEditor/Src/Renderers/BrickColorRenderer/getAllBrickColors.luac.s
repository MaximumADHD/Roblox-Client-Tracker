PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 8
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 GETIMPORT                        R4 K2 [BrickColor.new]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R4 ; [+3]
       11 GETTABLEKS                       R5 R4 K3 ["Number"]
       13 SETTABLE                         R4 R0 R5
       14 FORNLOOP                         R1
       15 NEWTABLE                         R1 0 0
       17 MOVE                             R2 R0
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R6
       25 GETIMPORT                        R7 K6 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 2 ; [-8]
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
