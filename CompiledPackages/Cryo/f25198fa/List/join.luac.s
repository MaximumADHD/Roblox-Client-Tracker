PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 LOADN                            R3 1
        4 LOADK                            R5 K0 ["#"]
        5 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        6 GETIMPORT                        R4 K2 [select]
        8 GETVARARGS                       R6 -1
        9 CALL                             R4 -1 1
       10 MOVE                             R1 R4
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       14 GETIMPORT                        R4 K2 [select]
       16 MOVE                             R5 R3
       17 GETVARARGS                       R6 -1
       18 CALL                             R4 -1 1
       19 LENGTH                           R5 R0
       20 LOADN                            R8 1
       21 LENGTH                           R6 R4
       22 LOADN                            R7 1
       23 FORNPREP                         R6
       24 GETTABLE                         R9 R4 R8
       25 GETUPVAL                         R10 0
       26 JUMPIFNOTEQ                      R9 R10 ; [+3]
       28 SUBK                             R5 R5 K3 [1]
       29 JUMP                             ; [+3]
       30 ADD                              R9 R5 R8
       31 GETTABLE                         R10 R4 R8
       32 SETTABLE                         R10 R0 R9
       33 FORNLOOP                         R6
       34 FORNLOOP                         R1
       35 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["None"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
