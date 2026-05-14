PROTO_0:
        0 LOADN                            R1 1
        1 JUMPIFNOT                        R0 ; [+18]
        2 LENGTH                           R2 R0
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+15]
        6 GETIMPORT                        R2 K2 [table.sort]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETIMPORT                        R2 K4 [ipairs]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 3
       14 FORGPREP_INEXT                   R2
       15 JUMPIFLT                         R1 R6 ; [+4]
       17 ADDK                             R1 R1 K5 [1]
       18 FORGLOOP                         R2 2 [inext] ; [-4]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 RETURN                           R2 1
