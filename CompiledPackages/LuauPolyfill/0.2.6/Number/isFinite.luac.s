PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+11]
        8 LOADB                            R1 0
        9 JUMPIFNOTEQ                      R0 R0 ; [+8]
       11 LOADB                            R1 0
       12 JUMPIFEQKN                       R0 K3 [∞] ; [+5]
       14 JUMPIFNOTEQKN                    R0 K4 [-∞] ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
