PROTO_0:
        0 LOADK                            R3 K0 ["%.[^%.]*$"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 LOADN                            R2 1
        6 JUMPIFNOTLT                      R2 R1 ; [+2]
        8 RETURN                           R1 1
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R4 K0 ["%.[^%.]*$"]
        1 NAMECALL                         R2 R0 K1 ["find"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 LOADN                            R3 1
        6 JUMPIFNOTLT                      R3 R2 ; [+3]
        8 MOVE                             R1 R2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 JUMPIFNOTEQKNIL                  R1 ; [+3]
       13 LOADK                            R2 K2 [""]
       14 RETURN                           R2 1
       15 ADDK                             R4 R1 K3 [1]
       16 NAMECALL                         R2 R0 K4 ["sub"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_2:
        0 LOADK                            R4 K0 ["%.[^%.]*$"]
        1 NAMECALL                         R2 R0 K1 ["find"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 LOADN                            R3 1
        6 JUMPIFNOTLT                      R3 R2 ; [+3]
        8 MOVE                             R1 R2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 JUMPIFNOTEQKNIL                  R1 ; [+2]
       13 RETURN                           R0 1
       14 LOADN                            R4 1
       15 SUBK                             R5 R1 K2 [1]
       16 NAMECALL                         R2 R0 K3 ["sub"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1

PROTO_3:
        0 LOADK                            R3 K0 ["\\"]
        1 LOADK                            R4 K1 ["/"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["normalize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADK                            R4 K1 ["/[^/]*$"]
        6 NAMECALL                         R2 R1 K2 ["find"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADK                            R3 K3 [""]
       11 RETURN                           R3 1
       12 LOADN                            R5 1
       13 SUBK                             R6 R2 K4 [1]
       14 NAMECALL                         R3 R0 K5 ["sub"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["extension"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 SETTABLEKS                       R2 R0 K4 ["stem"]
       10 DUPCLOSURE                       R2 K5 [PROTO_3]
       11 SETTABLEKS                       R2 R0 K6 ["normalize"]
       13 DUPCLOSURE                       R2 K7 [PROTO_4]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K8 ["parent"]
       17 RETURN                           R0 1
