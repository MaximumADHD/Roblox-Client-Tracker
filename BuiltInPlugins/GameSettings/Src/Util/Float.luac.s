PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+6]
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 SUB                              R4 R0 R1
       10 FASTCALL1                        MATH_ABS R4 ; [+2]
       11 GETIMPORT                        R3 K2 [math.abs]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 0
       15 JUMPIFLE                         R3 R4 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["createIsEqualWithTolerance"]
        6 RETURN                           R0 1
