PROTO_0:
        0 JUMPIFNOTEQKS                    R2 K0 ["cube-generation-gateway"] ; [+8]
        2 LOADK                            R4 K1 ["%*/cube-generation-gateway%*"]
        3 GETUPVAL                         R6 0
        4 MOVE                             R7 R1
        5 NAMECALL                         R4 R4 K2 ["format"]
        7 CALL                             R4 3 1
        8 RETURN                           R4 1
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 MOVE                             R7 R2
       13 MOVE                             R8 R3
       14 CALL                             R4 4 -1
       15 RETURN                           R4 -1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        2 RETURN                           R0 0
        3 GETIMPORT                        R2 K3 [string.gsub]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K4 ["/+$"]
        7 LOADK                            R5 K0 [""]
        8 CALL                             R2 3 1
        9 GETTABLEKS                       R3 R0 K5 ["buildPath"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 SETTABLEKS                       R4 R0 K5 ["buildPath"]
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
