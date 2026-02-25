PROTO_0:
        0 SUB                              R3 R1 R0
        1 GETTABLEKS                       R4 R3 K0 ["Magnitude"]
        3 MULK                             R5 R2 K1 [0.5]
        4 NEWTABLE                         R6 0 1
        6 JUMPIFNOTLT                      R5 R4 ; [+29]
        8 GETTABLEKS                       R7 R3 K2 ["Unit"]
       10 MULK                             R11 R5 K4 [2]
       11 ADDK                             R10 R11 K3 [20]
       12 FASTCALL2                        MATH_MIN R4 R10 ; [+4]
       14 MOVE                             R9 R4
       15 GETIMPORT                        R8 K7 [math.min]
       17 CALL                             R8 2 1
       18 MOVE                             R4 R8
       19 DIV                              R10 R4 R5
       20 SUBK                             R9 R10 K8 [0.1]
       21 FASTCALL1                        MATH_CEIL R9 ; [+2]
       22 GETIMPORT                        R8 K10 [math.ceil]
       24 CALL                             R8 1 1
       25 LOADN                            R11 1
       26 MOVE                             R9 R8
       27 LOADN                            R10 1
       28 FORNPREP                         R9
       29 MUL                              R14 R7 R4
       30 DIV                              R15 R11 R8
       31 MUL                              R13 R14 R15
       32 ADD                              R12 R0 R13
       33 SETTABLE                         R12 R6 R11
       34 FORNLOOP                         R9
       35 RETURN                           R6 1
       36 SETTABLEN                        R1 R6 1
       37 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
