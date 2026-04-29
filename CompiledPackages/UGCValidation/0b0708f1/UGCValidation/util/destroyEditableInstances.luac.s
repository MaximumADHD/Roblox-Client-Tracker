PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 MOVE                             R6 R5
        5 LOADNIL                          R7
        6 LOADNIL                          R8
        7 FORGPREP                         R6
        8 GETTABLEKS                       R11 R10 K0 ["created"]
       10 JUMPIFNOT                        R11 ; [+8]
       11 GETTABLEKS                       R11 R10 K1 ["instance"]
       13 JUMPIFNOT                        R11 ; [+5]
       14 GETTABLEKS                       R11 R10 K1 ["instance"]
       16 NAMECALL                         R11 R11 K2 ["Destroy"]
       18 CALL                             R11 1 0
       19 FORGLOOP                         R6 2 ; [-12]
       21 FORGLOOP                         R1 2 ; [-18]
       23 NEWTABLE                         R0 0 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 DUPCLOSURE                       R3 K8 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1
