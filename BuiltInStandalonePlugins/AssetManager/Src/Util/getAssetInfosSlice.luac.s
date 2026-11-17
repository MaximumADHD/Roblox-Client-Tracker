PROTO_0:
        0 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 GETIMPORT                        R3 K2 [math.min]
        6 CALL                             R3 2 1
        7 FASTCALL2                        MATH_MAX R1 R2 ; [+5]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 GETIMPORT                        R4 K4 [math.max]
       13 CALL                             R4 2 1
       14 LOADN                            R5 1
       15 JUMPIFLT                         R3 R5 ; [+4]
       17 LENGTH                           R5 R0
       18 JUMPIFNOTLT                      R5 R3 ; [+4]
       20 NEWTABLE                         R5 0 0
       22 RETURN                           R5 1
       23 LOADN                            R5 1
       24 JUMPIFLT                         R4 R5 ; [+4]
       26 LENGTH                           R5 R0
       27 JUMPIFNOTLT                      R5 R4 ; [+4]
       29 NEWTABLE                         R5 0 0
       31 RETURN                           R5 1
       32 NEWTABLE                         R5 0 0
       34 MOVE                             R8 R3
       35 MOVE                             R6 R4
       36 LOADN                            R7 1
       37 FORNPREP                         R6
       38 GETTABLE                         R11 R0 R8
       39 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       41 MOVE                             R10 R5
       42 GETIMPORT                        R9 K7 [table.insert]
       44 CALL                             R9 2 0
       45 FORNLOOP                         R6
       46 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
