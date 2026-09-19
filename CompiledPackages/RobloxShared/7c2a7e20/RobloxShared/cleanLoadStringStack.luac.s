PROTO_0:
        0 LOADK                            R3 K0 ["(%s*)%[string \"(.-)\"%]:(%d+)(.*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 4
        4 JUMPIFNOT                        R2 ; [+15]
        5 MOVE                             R5 R2
        6 JUMPIFNOT                        R1 ; [+3]
        7 MOVE                             R6 R1
        8 MOVE                             R7 R5
        9 CONCAT                           R5 R6 R7
       10 JUMPIFNOT                        R3 ; [+4]
       11 MOVE                             R6 R5
       12 LOADK                            R7 K2 [":"]
       13 MOVE                             R8 R3
       14 CONCAT                           R5 R6 R8
       15 JUMPIFNOT                        R4 ; [+3]
       16 MOVE                             R6 R5
       17 MOVE                             R7 R4
       18 CONCAT                           R5 R6 R7
       19 RETURN                           R5 1
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
