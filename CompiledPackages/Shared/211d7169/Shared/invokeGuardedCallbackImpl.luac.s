PROTO_0:
        0 PREPVARARGS                      4
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 GETIMPORT                        R7 K1 [_G]
        5 GETTABLEKS                       R6 R7 K2 ["__YOLO__"]
        7 JUMPIF                           R6 ; [+19]
        8 JUMPIFNOTEQKNIL                  R3 ; [+9]
       10 GETIMPORT                        R6 K4 [pcall]
       12 MOVE                             R7 R2
       13 GETVARARGS                       R8 -1
       14 CALL                             R6 -1 2
       15 MOVE                             R4 R6
       16 MOVE                             R5 R7
       17 JUMP                             ; [+20]
       18 GETIMPORT                        R6 K4 [pcall]
       20 MOVE                             R7 R2
       21 MOVE                             R8 R3
       22 GETVARARGS                       R9 -1
       23 CALL                             R6 -1 2
       24 MOVE                             R4 R6
       25 MOVE                             R5 R7
       26 JUMP                             ; [+11]
       27 LOADB                            R4 1
       28 JUMPIFNOTEQKNIL                  R3 ; [+5]
       30 MOVE                             R6 R2
       31 GETVARARGS                       R7 -1
       32 CALL                             R6 -1 0
       33 JUMP                             ; [+4]
       34 MOVE                             R6 R2
       35 MOVE                             R7 R3
       36 GETVARARGS                       R8 -1
       37 CALL                             R6 -1 0
       38 JUMPIF                           R4 ; [+4]
       39 GETTABLEKS                       R6 R0 K5 ["onError"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 0
       43 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R1 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R1 ; [0]
        7 RETURN                           R0 1
