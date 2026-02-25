PROTO_0:
        0 ORK                              R2 R1 K0 ["/"]
        1 NEWTABLE                         R3 0 0
        3 MOVE                             R4 R0
        4 JUMPIFNOT                        R4 ; [+16]
        5 GETTABLEKS                       R5 R4 K1 ["Parent"]
        7 JUMPIFEQKNIL                     R5 ; [+13]
        9 LOADN                            R7 1
       10 GETTABLEKS                       R8 R4 K2 ["Name"]
       12 FASTCALL3                        TABLE_INSERT R3 R7 R8
       14 MOVE                             R6 R3
       15 GETIMPORT                        R5 K5 [table.insert]
       17 CALL                             R5 3 0
       18 GETTABLEKS                       R4 R4 K1 ["Parent"]
       20 JUMPBACK                         ; [-17]
       21 GETIMPORT                        R5 K7 [table.concat]
       23 MOVE                             R6 R3
       24 MOVE                             R7 R2
       25 CALL                             R5 2 -1
       26 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
