PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 LOADK                            R5 K2 ["TextBox"]
        7 NAMECALL                         R3 R0 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+3]
       11 GETTABLEKS                       R2 R0 K4 ["Text"]
       13 RETURN                           R2 1
       14 LOADK                            R2 K5 [""]
       15 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+8]
        6 LOADK                            R5 K2 ["TextBox"]
        7 NAMECALL                         R3 R0 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+3]
       11 GETTABLEKS                       R1 R0 K4 ["Text"]
       13 RETURN                           R1 1
       14 LOADK                            R1 K5 [""]
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          VAL R1
        6 DUPCLOSURE                       R3 K2 [PROTO_2]
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R3 R0 K3 ["getNodeText"]
       10 RETURN                           R0 1
