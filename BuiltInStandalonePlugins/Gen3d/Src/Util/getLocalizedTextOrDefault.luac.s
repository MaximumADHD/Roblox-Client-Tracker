PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFNOTEQKS                    R6 K2 ["function"] ; [+7]
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 MOVE                             R8 R4
       11 CALL                             R5 3 1
       12 JUMP                             ; [+6]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R4
       16 NAMECALL                         R5 R0 K3 ["getText"]
       18 CALL                             R5 4 1
       19 LOADK                            R6 K4 ["Studio.Gen3d.%*.%*"]
       20 MOVE                             R8 R1
       21 MOVE                             R9 R2
       22 NAMECALL                         R6 R6 K5 ["format"]
       24 CALL                             R6 3 1
       25 JUMPIFNOTEQ                      R5 R6 ; [+2]
       27 RETURN                           R3 1
       28 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
