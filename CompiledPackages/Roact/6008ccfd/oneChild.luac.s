PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K1 [next]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 2
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETIMPORT                        R3 K1 [next]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETIMPORT                        R4 K3 [error]
       18 LOADK                            R5 K4 ["Expected at most child, had more than one child."]
       19 LOADN                            R6 2
       20 CALL                             R4 2 0
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
