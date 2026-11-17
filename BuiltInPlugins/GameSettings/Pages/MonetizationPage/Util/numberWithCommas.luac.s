PROTO_0:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%%1%s%%2"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 LOADNIL                          R3
        6 GETIMPORT                        R4 K5 [string.gsub]
        8 MOVE                             R5 R0
        9 LOADK                            R6 K6 ["^(-?%d+)(%d%d%d)"]
       10 MOVE                             R7 R2
       11 CALL                             R4 3 2
       12 MOVE                             R0 R4
       13 MOVE                             R3 R5
       14 JUMPIFEQKN                       R3 K7 [0] ; [+2]
       16 JUMPBACK                         ; [-11]
       17 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 [","]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
