PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["GetChildren"]
        2 CALL                             R3 1 1
        3 LENGTH                           R4 R3
        4 JUMPIFNOTEQKN                    R4 K1 [0] ; [+3]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 LOADN                            R6 1
        9 LENGTH                           R4 R3
       10 LOADN                            R5 1
       11 FORNPREP                         R4
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETTABLEKS                       R7 R0 K2 ["Name"]
       15 JUMPIFNOT                        R7 ; [+1]
       16 RETURN                           R0 1
       17 GETUPVAL                         R7 0
       18 GETTABLE                         R8 R3 R6
       19 MOVE                             R9 R1
       20 LOADB                            R10 1
       21 CALL                             R7 3 1
       22 JUMPIFNOT                        R7 ; [+1]
       23 RETURN                           R7 1
       24 FORNLOOP                         R4
       25 LOADNIL                          R4
       26 RETURN                           R4 1

PROTO_1:
        0 NAMECALL                         R4 R0 K0 ["GetChildren"]
        2 CALL                             R4 1 1
        3 LENGTH                           R5 R4
        4 JUMPIFNOTEQKN                    R5 K1 [0] ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 LOADN                            R7 1
        9 LENGTH                           R5 R4
       10 LOADN                            R6 1
       11 FORNPREP                         R5
       12 GETUPVAL                         R8 0
       13 GETTABLE                         R9 R4 R7
       14 MOVE                             R10 R1
       15 LOADB                            R11 1
       16 CALL                             R8 3 1
       17 JUMPIFNOT                        R8 ; [+2]
       18 MOVE                             R3 R8
       19 RETURN                           R3 1
       20 FORNLOOP                         R5
       21 LOADNIL                          R3
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 CAPTURE                          VAL R1
        5 DUPCLOSURE                       R2 K1 [PROTO_1]
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R2 R0 K2 ["getElementByName"]
        9 RETURN                           R0 1
