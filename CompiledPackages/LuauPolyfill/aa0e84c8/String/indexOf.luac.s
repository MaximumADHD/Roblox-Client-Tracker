PROTO_0:
        0 LENGTH                           R3 R0
        1 JUMPIFEQKNIL                     R2 ; [+8]
        3 LOADN                            R5 1
        4 JUMPIFNOTLT                      R2 R5 ; [+3]
        6 LOADN                            R4 1
        7 JUMP                             ; [+3]
        8 MOVE                             R4 R2
        9 JUMP                             ; [+1]
       10 LOADN                            R4 1
       11 LENGTH                           R5 R1
       12 JUMPIFNOTEQKN                    R5 K0 [0] ; [+7]
       14 JUMPIFNOTLT                      R3 R4 ; [+3]
       16 MOVE                             R5 R3
       17 RETURN                           R5 1
       18 MOVE                             R5 R4
       19 RETURN                           R5 1
       20 JUMPIFNOTLT                      R3 R4 ; [+3]
       22 LOADN                            R5 -1
       23 RETURN                           R5 1
       24 GETUPVAL                         R7 0
       25 LOADK                            R8 K1 ["%%%1"]
       26 NAMECALL                         R5 R1 K2 ["gsub"]
       28 CALL                             R5 3 1
       29 MOVE                             R1 R5
       30 LENGTH                           R5 R1
       31 MOVE                             R8 R4
       32 MOVE                             R6 R3
       33 LOADN                            R7 1
       34 FORNPREP                         R6
       35 ADD                              R13 R8 R5
       36 SUBK                             R12 R13 K3 [1]
       37 FASTCALL3                        STRING_SUB R0 R8 R12
       39 MOVE                             R10 R0
       40 MOVE                             R11 R8
       41 GETIMPORT                        R9 K6 [string.sub]
       43 CALL                             R9 3 1
       44 JUMPIFNOTEQ                      R9 R1 ; [+2]
       46 RETURN                           R8 1
       47 FORNLOOP                         R6
       48 LOADN                            R6 -1
       49 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["(["]
        2 LOADK                            R4 K1 ["$%^()-[].?"]
        3 LOADK                            R6 K2 ["(.)"]
        4 LOADK                            R7 K3 ["%%%1"]
        5 NAMECALL                         R4 R4 K4 ["gsub"]
        7 CALL                             R4 3 1
        8 MOVE                             R2 R4
        9 LOADK                            R3 K5 ["])"]
       10 CONCAT                           R0 R1 R3
       11 DUPCLOSURE                       R1 K6 [PROTO_0]
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1
