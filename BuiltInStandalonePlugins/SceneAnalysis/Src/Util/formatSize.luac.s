PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LOADN                            R1 0
        2 JUMPIFNOTLT                      R0 R1 ; [+3]
        4 LOADK                            R1 K0 ["0B"]
        5 RETURN                           R1 1
        6 LOADK                            R1 K1 [1048576]
        7 JUMPIFNOTLT                      R1 R0 ; [+7]
        9 GETIMPORT                        R1 K4 [string.format]
       11 LOADK                            R2 K5 ["%.1fMB"]
       12 DIVK                             R3 R0 K1 [1048576]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1
       15 LOADN                            R1 1024
       16 JUMPIFNOTLT                      R1 R0 ; [+7]
       18 GETIMPORT                        R1 K4 [string.format]
       20 LOADK                            R2 K6 ["%.1fKB"]
       21 DIVK                             R3 R0 K7 [1024]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETIMPORT                        R1 K4 [string.format]
       26 LOADK                            R2 K8 ["%dB"]
       27 MOVE                             R3 R0
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
