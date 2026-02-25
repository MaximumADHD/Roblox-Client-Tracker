PROTO_0:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFNOTLT                      R3 R2 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K1 [ipairs]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 GETTABLE                         R7 R1 R5
       12 JUMPIFNOTEQ                      R6 R7 ; [+2]
       14 JUMP                             ; [+2]
       15 LOADB                            R7 0
       16 RETURN                           R7 1
       17 FORGLOOP                         R2 2 [inext] ; [-7]
       19 LOADB                            R2 1
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 RETURN                           R2 1
