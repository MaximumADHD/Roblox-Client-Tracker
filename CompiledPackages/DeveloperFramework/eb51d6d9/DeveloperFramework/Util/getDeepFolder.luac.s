PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+9]
        5 GETIMPORT                        R3 K3 [Instance.new]
        7 LOADK                            R4 K4 ["Folder"]
        8 CALL                             R3 1 1
        9 MOVE                             R2 R3
       10 SETTABLEKS                       R1 R2 K5 ["Name"]
       12 SETTABLEKS                       R0 R2 K6 ["Parent"]
       14 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 GETIMPORT                        R2 K1 [game]
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 DUPCLOSURE                       R4 K2 [PROTO_0]
        8 MOVE                             R5 R1
        9 CALL                             R2 3 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["reduce"]
       16 DUPCLOSURE                       R3 K7 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
