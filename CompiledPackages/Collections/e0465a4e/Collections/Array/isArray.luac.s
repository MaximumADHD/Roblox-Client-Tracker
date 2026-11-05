PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K4 [next]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKNIL                  R1 ; [+3]
       15 LOADB                            R1 1
       16 RETURN                           R1 1
       17 LENGTH                           R1 R0
       18 JUMPIFNOTEQKN                    R1 K5 [0] ; [+3]
       20 LOADB                            R2 0
       21 RETURN                           R2 1
       22 LOADN                            R2 0
       23 LOADN                            R3 0
       24 GETIMPORT                        R4 K7 [pairs]
       26 MOVE                             R5 R0
       27 CALL                             R4 1 3
       28 FORGPREP_NEXT                    R4
       29 FASTCALL1                        TYPEOF R7 ; [+3]
       30 MOVE                             R10 R7
       31 GETIMPORT                        R9 K1 [typeof]
       33 CALL                             R9 1 1
       34 JUMPIFEQKS                       R9 K8 ["number"] ; [+3]
       36 LOADB                            R9 0
       37 RETURN                           R9 1
       38 MODK                             R9 R7 K9 [1]
       39 JUMPIFNOTEQKN                    R9 K5 [0] ; [+4]
       41 LOADN                            R9 1
       42 JUMPIFNOTLT                      R7 R9 ; [+3]
       44 LOADB                            R9 0
       45 RETURN                           R9 1
       46 ADDK                             R2 R2 K9 [1]
       47 ADD                              R3 R3 R7
       48 FORGLOOP                         R4 1 ; [-20]
       50 ADDK                             R7 R2 K9 [1]
       51 MUL                              R6 R2 R7
       52 DIVK                             R5 R6 K10 [2]
       53 JUMPIFEQ                         R3 R5 ; [+2]
       55 LOADB                            R4 0 +1
       56 LOADB                            R4 1
       57 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
