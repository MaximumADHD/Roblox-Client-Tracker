PROTO_0:
        0 LOADK                            R3 K0 ["%."]
        1 MOVE                             R4 R1
        2 LOADK                            R5 K1 ["f"]
        3 CONCAT                           R2 R3 R5
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K2 ["format"]
        7 CALL                             R2 2 1
        8 LOADK                            R6 K4 ["%.?0+$"]
        9 NAMECALL                         R4 R2 K5 ["match"]
       11 CALL                             R4 2 1
       12 ORK                              R3 R4 K3 [""]
       13 LOADN                            R6 1
       14 LENGTH                           R8 R2
       15 LENGTH                           R9 R3
       16 SUB                              R7 R8 R9
       17 NAMECALL                         R4 R2 K6 ["sub"]
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
