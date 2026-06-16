PROTO_0:
        0 ORK                              R3 R2 K0 [1]
        1 LENGTH                           R4 R0
        2 LOADN                            R5 1
        3 JUMPIFNOTLT                      R3 R5 ; [+14]
        5 FASTCALL1                        MATH_ABS R3 ; [+3]
        6 MOVE                             R8 R3
        7 GETIMPORT                        R7 K3 [math.abs]
        9 CALL                             R7 1 1
       10 SUB                              R6 R4 R7
       11 FASTCALL2K                       MATH_MAX R6 K0 ; [+4]
       13 LOADK                            R7 K0 [1]
       14 GETIMPORT                        R5 K5 [math.max]
       16 CALL                             R5 2 1
       17 MOVE                             R3 R5
       18 MOVE                             R7 R3
       19 MOVE                             R5 R4
       20 LOADN                            R6 1
       21 FORNPREP                         R5
       22 GETTABLE                         R8 R0 R7
       23 JUMPIFNOTEQ                      R8 R1 ; [+2]
       25 RETURN                           R7 1
       26 FORNLOOP                         R5
       27 LOADN                            R5 255
       28 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
