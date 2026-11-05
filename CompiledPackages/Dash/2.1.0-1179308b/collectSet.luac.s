PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADNIL                          R8
        7 JUMPIFNOTEQKNIL                  R1 ; [+3]
        9 MOVE                             R8 R7
       10 JUMP                             ; [+5]
       11 MOVE                             R9 R1
       12 MOVE                             R10 R6
       13 MOVE                             R11 R7
       14 CALL                             R9 2 1
       15 MOVE                             R8 R9
       16 JUMPIFEQKNIL                     R8 ; [+3]
       18 LOADB                            R9 1
       19 SETTABLE                         R9 R2 R8
       20 FORGLOOP                         R3 2 ; [-15]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 RETURN                           R2 1
