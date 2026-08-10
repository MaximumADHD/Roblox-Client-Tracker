PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s"]
        4 LOADK                            R4 K4 ["_"]
        5 CALL                             R1 3 1
        6 MOVE                             R0 R1
        7 GETIMPORT                        R1 K2 [string.gsub]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["^RBX_"]
       11 LOADK                            R4 K6 [""]
       12 CALL                             R1 3 1
       13 MOVE                             R0 R1
       14 JUMPIFNOTEQKS                    R0 K6 [""] ; [+3]
       16 LOADNIL                          R1
       17 RETURN                           R1 1
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
