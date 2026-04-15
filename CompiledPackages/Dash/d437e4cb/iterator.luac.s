PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+2]
        7 RETURN                           R0 1
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+15]
       15 LENGTH                           R1 R0
       16 LOADN                            R2 0
       17 JUMPIFNOTLT                      R2 R1 ; [+6]
       19 GETIMPORT                        R1 K5 [ipairs]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1
       24 GETIMPORT                        R1 K7 [pairs]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 -1
       28 RETURN                           R1 -1
       29 LOADNIL                          R1
       30 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 RETURN                           R2 1
