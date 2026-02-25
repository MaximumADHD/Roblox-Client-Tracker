PROTO_0:
        0 LOADN                            R2 4
        1 LOADN                            R3 0
        2 SUB                              R4 R3 R2
        3 LOADN                            R5 8
        4 JUMPIFNOTLT                      R5 R4 ; [+21]
        6 ADD                              R6 R3 R2
        7 DIVK                             R5 R6 K0 [2]
        8 GETTABLEKS                       R9 R0 K1 ["X"]
       10 ADD                              R8 R9 R5
       11 GETTABLEKS                       R10 R0 K2 ["Y"]
       13 ADD                              R9 R10 R5
       14 MUL                              R7 R8 R9
       15 GETTABLEKS                       R9 R0 K3 ["Z"]
       17 ADD                              R8 R9 R5
       18 MUL                              R6 R7 R8
       19 JUMPIFNOTLT                      R6 R1 ; [+3]
       21 MOVE                             R2 R5
       22 JUMP                             ; [+1]
       23 MOVE                             R3 R5
       24 SUB                              R4 R3 R2
       25 JUMPBACK                         ; [-23]
       26 DIVK                             R7 R2 K4 [4]
       27 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       28 GETIMPORT                        R6 K7 [math.floor]
       30 CALL                             R6 1 1
       31 MULK                             R5 R6 K4 [4]
       32 FASTCALL3                        VECTOR R5 R5 R5
       34 MOVE                             R8 R5
       35 MOVE                             R9 R5
       36 MOVE                             R10 R5
       37 GETIMPORT                        R7 K10 [Vector3.new]
       39 CALL                             R7 3 1
       40 ADD                              R6 R0 R7
       41 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
