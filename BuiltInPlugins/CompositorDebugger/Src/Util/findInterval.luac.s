PROTO_0:
        0 LOADN                            R2 10
        1 FASTCALL1                        MATH_LOG10 R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K2 [math.log10]
        5 CALL                             R4 1 1
        6 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        7 GETIMPORT                        R3 K4 [math.floor]
        9 CALL                             R3 1 1
       10 FASTCALL2                        MATH_POW R2 R3 ; [+3]
       12 GETIMPORT                        R1 K6 [math.pow]
       14 CALL                             R1 2 1
       15 DIV                              R2 R0 R1
       16 DIVK                             R3 R2 K7 [10]
       17 GETUPVAL                         R5 0
       18 GETTABLEN                        R4 R5 1
       19 GETUPVAL                         R5 0
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 JUMPIFNOTLT                      R3 R9 ; [+3]
       25 MOVE                             R4 R9
       26 JUMP                             ; [+2]
       27 FORGLOOP                         R5 2 ; [-5]
       29 MUL                              R5 R4 R1
       30 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 5
        3 LOADK                            R1 K0 [0.05]
        4 LOADK                            R2 K1 [0.1]
        5 LOADK                            R3 K2 [0.25]
        6 LOADK                            R4 K3 [0.5]
        7 LOADN                            R5 1
        8 SETLIST                          R0 R1 5 [1]
       10 DUPCLOSURE                       R1 K4 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
