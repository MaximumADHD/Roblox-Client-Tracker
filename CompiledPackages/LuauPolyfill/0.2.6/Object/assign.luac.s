PROTO_0:
        0 PREPVARARGS                      1
        1 LOADN                            R3 1
        2 LOADK                            R5 K0 ["#"]
        3 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        4 GETIMPORT                        R4 K2 [select]
        6 GETVARARGS                       R6 -1
        7 CALL                             R4 -1 1
        8 MOVE                             R1 R4
        9 LOADN                            R2 1
       10 FORNPREP                         R1
       11 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       12 GETIMPORT                        R4 K2 [select]
       14 MOVE                             R5 R3
       15 GETVARARGS                       R6 -1
       16 CALL                             R4 -1 1
       17 JUMPIFEQKNIL                     R4 ; [+22]
       19 FASTCALL1                        TYPEOF R4 ; [+3]
       20 MOVE                             R6 R4
       21 GETIMPORT                        R5 K4 [typeof]
       23 CALL                             R5 1 1
       24 JUMPIFNOTEQKS                    R5 K5 ["table"] ; [+15]
       26 GETIMPORT                        R5 K7 [pairs]
       28 MOVE                             R6 R4
       29 CALL                             R5 1 3
       30 FORGPREP_NEXT                    R5
       31 GETUPVAL                         R10 0
       32 JUMPIFNOTEQ                      R9 R10 ; [+4]
       34 LOADNIL                          R10
       35 SETTABLE                         R10 R0 R8
       36 JUMP                             ; [+1]
       37 SETTABLE                         R9 R0 R8
       38 FORGLOOP                         R5 2 ; [-8]
       40 FORNLOOP                         R1
       41 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["None"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
