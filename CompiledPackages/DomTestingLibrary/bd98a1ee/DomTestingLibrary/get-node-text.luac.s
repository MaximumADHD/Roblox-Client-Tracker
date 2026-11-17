PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 FASTPCALL                        pcall 2 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+8]
        7 LOADK                            R5 K2 ["TextBox"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+3]
       12 GETTABLEKS                       R2 R0 K4 ["Text"]
       14 RETURN                           R2 1
       15 LOADK                            R2 K5 [""]
       16 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 FASTPCALL                        pcall 2 ; [+2]
        3 GETIMPORT                        R2 K1 [pcall]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+8]
        7 LOADK                            R5 K2 ["TextBox"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+3]
       12 GETTABLEKS                       R1 R0 K4 ["Text"]
       14 RETURN                           R1 1
       15 LOADK                            R1 K5 [""]
       16 RETURN                           R1 1

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
