PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 MOVE                             R3 R0
        3 GETTABLEKS                       R4 R3 K1 ["Parent"]
        5 JUMPIFNOT                        R4 ; [+10]
        6 JUMPIFEQ                         R3 R1 ; [+9]
        8 GETTABLEKS                       R3 R3 K1 ["Parent"]
       10 GETTABLEKS                       R4 R3 K0 ["Name"]
       12 LOADK                            R5 K2 ["/"]
       13 MOVE                             R6 R2
       14 CONCAT                           R2 R4 R6
       15 JUMPBACK                         ; [-13]
       16 JUMPIFEQKNIL                     R1 ; [+3]
       18 MOVE                             R4 R2
       19 RETURN                           R4 1
       20 LOADK                            R5 K2 ["/"]
       21 MOVE                             R6 R2
       22 CONCAT                           R4 R5 R6
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
