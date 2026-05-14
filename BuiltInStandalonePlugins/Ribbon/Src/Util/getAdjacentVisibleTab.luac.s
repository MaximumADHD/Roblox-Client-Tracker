PROTO_0:
        0 LOADNIL                          R3
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 GETTABLEKS                       R9 R8 K0 ["Identifier"]
        7 GETTABLEKS                       R9 R9 K1 ["Filename"]
        9 GETTABLEKS                       R10 R1 K1 ["Filename"]
       11 JUMPIFNOTEQ                      R9 R10 ; [+11]
       13 GETTABLEKS                       R9 R8 K0 ["Identifier"]
       15 GETTABLEKS                       R9 R9 K2 ["Type"]
       17 GETTABLEKS                       R10 R1 K2 ["Type"]
       19 JUMPIFNOTEQ                      R9 R10 ; [+3]
       21 MOVE                             R3 R7
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R4 2 ; [-19]
       25 JUMPIF                           R3 ; [+2]
       26 LOADNIL                          R4
       27 RETURN                           R4 1
       28 LOADN                            R5 0
       29 JUMPIFNOTLT                      R2 R5 ; [+3]
       31 LOADN                            R4 255
       32 JUMP                             ; [+1]
       33 LOADN                            R4 1
       34 ADD                              R5 R3 R4
       35 GETTABLE                         R6 R0 R5
       36 JUMPIFNOT                        R6 ; [+9]
       37 GETTABLE                         R6 R0 R5
       38 GETTABLEKS                       R7 R6 K3 ["Visible"]
       40 JUMPIFNOT                        R7 ; [+3]
       41 GETTABLEKS                       R7 R6 K0 ["Identifier"]
       43 RETURN                           R7 1
       44 ADD                              R5 R5 R4
       45 JUMPBACK                         ; [-11]
       46 LOADNIL                          R6
       47 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
