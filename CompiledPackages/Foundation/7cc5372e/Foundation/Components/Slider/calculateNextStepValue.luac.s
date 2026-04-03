PROTO_0:
        0 LOADN                            R5 0
        1 JUMPIFNOTLT                      R5 R0 ; [+3]
        3 LOADN                            R4 1
        4 JUMP                             ; [+6]
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R0 R5 ; [+3]
        8 LOADN                            R4 255
        9 JUMP                             ; [+1]
       10 LOADN                            R4 0
       11 MUL                              R7 R4 R2
       12 ADD                              R6 R1 R7
       13 GETTABLEKS                       R7 R3 K0 ["Min"]
       15 GETTABLEKS                       R8 R3 K1 ["Max"]
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R5 K4 [math.clamp]
       20 CALL                             R5 3 1
       21 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
