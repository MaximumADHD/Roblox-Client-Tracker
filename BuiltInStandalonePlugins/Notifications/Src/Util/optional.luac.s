PROTO_0:
        0 PREPVARARGS                      1
        1 MOVE                             R1 R0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 NEWTABLE                         R3 0 0
        6 GETVARARGS                       R5 -1
        7 SETLIST                          R3 R5 -1 [1]
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 JUMPIFNOTEQKNIL                  R1 ; [+3]
       13 LOADNIL                          R7
       14 RETURN                           R7 1
       15 GETTABLE                         R1 R1 R6
       16 FORGLOOP                         R2 2 [inext] ; [-6]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 SETGLOBAL                        R0 K1 ["optional"]
        4 GETGLOBAL                        R0 K1 ["optional"]
        6 RETURN                           R0 1
