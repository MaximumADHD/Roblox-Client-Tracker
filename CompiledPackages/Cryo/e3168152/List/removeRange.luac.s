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
       13 LOADN                            R7 1
       14 LENGTH                           R9 R0
       15 SUBK                             R10 R1 K3 [1]
       16 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       18 GETIMPORT                        R8 K6 [math.min]
       20 CALL                             R8 2 1
       21 MOVE                             R5 R8
       22 LOADN                            R6 1
       23 FORNPREP                         R5
       24 GETTABLE                         R8 R0 R7
       25 SETTABLE                         R8 R3 R4
       26 ADDK                             R4 R4 K3 [1]
       27 FORNLOOP                         R5
       28 ADDK                             R7 R2 K3 [1]
       29 LENGTH                           R5 R0
       30 LOADN                            R6 1
       31 FORNPREP                         R5
       32 GETTABLE                         R8 R0 R7
       33 SETTABLE                         R8 R3 R4
       34 ADDK                             R4 R4 K3 [1]
       35 FORNLOOP                         R5
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
