PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETIMPORT                        R2 K4 [string.lower]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADK                            R3 K5 ["%s+"]
        7 LOADK                            R4 K6 [""]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 MOVE                             R2 R0
        1 GETIMPORT                        R3 K2 [string.gsub]
        3 GETIMPORT                        R4 K4 [string.lower]
        5 MOVE                             R5 R2
        6 CALL                             R4 1 1
        7 LOADK                            R5 K5 ["%s+"]
        8 LOADK                            R6 K6 [""]
        9 CALL                             R3 3 1
       10 MOVE                             R0 R3
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 LENGTH                           R7 R6
       16 LOADN                            R8 0
       17 JUMPIFNOTLT                      R8 R7 ; [+20]
       19 GETIMPORT                        R7 K8 [string.find]
       21 MOVE                             R8 R0
       22 GETIMPORT                        R9 K2 [string.gsub]
       24 GETIMPORT                        R10 K4 [string.lower]
       26 MOVE                             R11 R6
       27 CALL                             R10 1 1
       28 LOADK                            R11 K5 ["%s+"]
       29 LOADK                            R12 K6 [""]
       30 CALL                             R9 3 1
       31 LOADN                            R10 0
       32 LOADB                            R11 1
       33 CALL                             R7 4 1
       34 JUMPIFEQKNIL                     R7 ; [+3]
       36 LOADB                            R7 1
       37 RETURN                           R7 1
       38 FORGLOOP                         R2 2 ; [-24]
       40 LOADB                            R2 0
       41 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
