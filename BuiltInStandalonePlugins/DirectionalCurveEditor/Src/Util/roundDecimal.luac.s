PROTO_0:
        0 LOADN                            R4 0
        1 JUMPIFLE                         R4 R1 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["Expecting decimal places is a valid non-negative integer"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 LOADN                            R3 10
       12 FASTCALL2                        MATH_POW R3 R1 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R2 K5 [math.pow]
       17 CALL                             R2 2 1
       18 MUL                              R5 R0 R2
       19 FASTCALL1                        MATH_ROUND R5 ; [+2]
       20 GETIMPORT                        R4 K7 [math.round]
       22 CALL                             R4 1 1
       23 DIV                              R3 R4 R2
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
