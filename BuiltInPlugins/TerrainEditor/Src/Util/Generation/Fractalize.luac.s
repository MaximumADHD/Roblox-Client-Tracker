PROTO_0:
        0 GETTABLEKS                       R4 R2 K1 ["Samples"]
        2 ORK                              R3 R4 K0 [3]
        3 GETTABLEKS                       R5 R2 K3 ["Scale"]
        5 ORK                              R4 R5 K2 [0.5]
        6 GETTABLEKS                       R6 R2 K5 ["Offset"]
        8 ORK                              R5 R6 K4 [0]
        9 GETTABLEKS                       R7 R2 K7 ["Gain"]
       11 ORK                              R6 R7 K6 [1]
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 LOADN                            R11 1
       15 MOVE                             R9 R3
       16 LOADN                            R10 1
       17 FORNPREP                         R9
       18 SUBK                             R13 R11 K6 [1]
       19 POW                              R12 R4 R13
       20 ADD                              R8 R8 R12
       21 MOVE                             R16 R0
       22 MOVE                             R17 R1
       23 MOVE                             R18 R11
       24 CALL                             R16 2 1
       25 MUL                              R15 R6 R16
       26 ADD                              R14 R5 R15
       27 MUL                              R13 R14 R12
       28 ADD                              R7 R7 R13
       29 FORNLOOP                         R9
       30 DIV                              R9 R7 R8
       31 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
