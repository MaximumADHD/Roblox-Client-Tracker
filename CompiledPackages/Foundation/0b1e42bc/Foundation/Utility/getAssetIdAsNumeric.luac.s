PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+2]
        7 RETURN                           R0 1
        8 LOADK                            R4 K3 ["(%d+)$"]
        9 NAMECALL                         R2 R0 K4 ["match"]
       11 CALL                             R2 2 -1
       12 FASTCALL                         TONUMBER ; [+2]
       13 GETIMPORT                        R1 K6 [tonumber]
       15 CALL                             R1 -1 1
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R1 1
       18 LOADN                            R2 255
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
