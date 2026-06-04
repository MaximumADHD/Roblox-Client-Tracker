PROTO_0:
        0 LOADN                            R3 0
        1 JUMPIFNOTLT                      R3 R1 ; [+23]
        3 GETTABLEKS                       R7 R2 K1 ["Min"]
        5 SUB                              R6 R0 R7
        6 DIV                              R5 R6 R1
        7 ADDK                             R4 R5 K0 [0.5]
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K4 [math.floor]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R6 R2 K1 ["Min"]
       14 MUL                              R7 R3 R1
       15 ADD                              R5 R6 R7
       16 GETTABLEKS                       R6 R2 K1 ["Min"]
       18 GETTABLEKS                       R7 R2 K5 ["Max"]
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R4 K7 [math.clamp]
       23 CALL                             R4 3 1
       24 RETURN                           R4 1
       25 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
