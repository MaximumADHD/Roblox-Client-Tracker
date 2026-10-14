PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 DUPCLOSURE                       R4 K0 [PROTO_0]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R3 1
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R2 K1 ["Priority"]
       10 JUMPIFEQKN                       R3 K2 [0] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 MOVE                             R3 R0
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 JUMPIFNOT                        R7 ; [+18]
       19 LOADB                            R8 0
       20 GETTABLEKS                       R9 R7 K1 ["Priority"]
       22 JUMPIFNOTEQKN                    R9 K2 [0] ; [+2]
       24 NOT                              R8 R1
       25 LOADB                            R9 0
       26 GETTABLEKS                       R10 R7 K1 ["Priority"]
       28 JUMPIFEQKN                       R10 K2 [0] ; [+2]
       30 MOVE                             R9 R1
       31 JUMPIF                           R8 ; [+1]
       32 JUMPIFNOT                        R9 ; [+4]
       33 GETIMPORT                        R10 K4 [error]
       35 LOADK                            R11 K5 ["Zero priorities mixed with non-zero priorities in StyleRule children"]
       36 CALL                             R10 1 0
       37 FORGLOOP                         R3 2 ; [-20]
       39 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["find"]
       16 DUPCLOSURE                       R3 K7 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
