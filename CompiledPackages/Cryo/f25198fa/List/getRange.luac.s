PROTO_0:
        0 JUMPIFLE                         R1 R2 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        6 LOADK                            R5 K0 ["startIndex must be less than or equal to endIndex"]
        7 GETIMPORT                        R3 K2 [assert]
        9 CALL                             R3 2 0
       10 NEWTABLE                         R3 0 0
       12 LOADN                            R4 1
       13 LOADN                            R8 1
       14 FASTCALL2                        MATH_MAX R8 R1 ; [+4]
       16 MOVE                             R9 R1
       17 GETIMPORT                        R7 K5 [math.max]
       19 CALL                             R7 2 1
       20 LENGTH                           R9 R0
       21 FASTCALL2                        MATH_MIN R9 R2 ; [+4]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R8 K7 [math.min]
       26 CALL                             R8 2 1
       27 MOVE                             R5 R8
       28 LOADN                            R6 1
       29 FORNPREP                         R5
       30 GETTABLE                         R8 R0 R7
       31 SETTABLE                         R8 R3 R4
       32 ADDK                             R4 R4 K8 [1]
       33 FORNLOOP                         R5
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
