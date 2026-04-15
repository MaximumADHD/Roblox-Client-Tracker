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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 RETURN                           R3 1
