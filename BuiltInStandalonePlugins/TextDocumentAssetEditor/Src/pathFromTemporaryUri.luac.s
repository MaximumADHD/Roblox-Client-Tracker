PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 18
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 JUMPIFEQKS                       R1 K3 ["temporaryScript://"] ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETIMPORT                        R1 K5 [string.match]
       14 FASTCALL2K                       STRING_SUB R0 K6 ; [+5]
       16 MOVE                             R3 R0
       17 LOADK                            R4 K6 [19]
       18 GETIMPORT                        R2 K2 [string.sub]
       20 CALL                             R2 2 1
       21 LOADK                            R3 K7 ["^(/.*)_%d+$"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
