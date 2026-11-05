PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 LENGTH                           R4 R0
        3 JUMPIFLE                         R1 R4 ; [+2]
        5 LOADB                            R6 0 +1
        6 LOADB                            R6 1
        7 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        9 LOADK                            R7 K0 ["index must be less or equal than the list length"]
       10 GETIMPORT                        R5 K2 [assert]
       12 CALL                             R5 2 0
       13 LOADN                            R7 1
       14 MOVE                             R5 R4
       15 LOADN                            R6 1
       16 FORNPREP                         R5
       17 JUMPIFNOTEQ                      R7 R1 ; [+3]
       19 SETTABLE                         R2 R3 R7
       20 JUMP                             ; [+2]
       21 GETTABLE                         R8 R0 R7
       22 SETTABLE                         R8 R3 R7
       23 FORNLOOP                         R5
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
