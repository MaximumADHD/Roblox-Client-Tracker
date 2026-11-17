PROTO_0:
        0 LOADN                            R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 LOADN                            R7 1
        4 LOADN                            R10 1
        5 GETUPVAL                         R8 0
        6 LOADN                            R9 1
        7 FORNPREP                         R8
        8 GETIMPORT                        R12 K2 [math.noise]
       10 DIV                              R13 R5 R3
       11 DIV                              R14 R6 R3
       12 MOVE                             R15 R2
       13 CALL                             R12 3 1
       14 MUL                              R11 R12 R7
       15 ADD                              R4 R4 R11
       16 GETUPVAL                         R11 1
       17 MUL                              R6 R6 R11
       18 GETUPVAL                         R11 1
       19 MUL                              R5 R5 R11
       20 GETUPVAL                         R11 2
       21 MUL                              R7 R7 R11
       22 FORNLOOP                         R8
       23 LOADN                            R10 -1
       24 LOADN                            R11 1
       25 FASTCALL3                        MATH_CLAMP R4 R10 R11
       27 MOVE                             R9 R4
       28 GETIMPORT                        R8 K4 [math.clamp]
       30 CALL                             R8 3 1
       31 RETURN                           R8 1

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
