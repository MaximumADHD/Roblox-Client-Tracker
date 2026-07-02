PROTO_0:
        0 FASTCALL1                        STRING_LEN R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K2 [string.len]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
        7 LOADB                            R3 1
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 JUMPIFEQKNIL                     R2 ; [+4]
       12 LOADN                            R4 1
       13 JUMPIFNOTLT                      R2 R4 ; [+3]
       15 LOADN                            R3 1
       16 JUMP                             ; [+1]
       17 MOVE                             R3 R2
       18 FASTCALL1                        STRING_LEN R0 ; [+3]
       19 MOVE                             R5 R0
       20 GETIMPORT                        R4 K2 [string.len]
       22 CALL                             R4 1 1
       23 JUMPIFNOTLT                      R4 R3 ; [+3]
       25 LOADB                            R4 0
       26 RETURN                           R4 1
       27 MOVE                             R7 R1
       28 MOVE                             R8 R3
       29 LOADB                            R9 1
       30 NAMECALL                         R5 R0 K4 ["find"]
       32 CALL                             R5 4 1
       33 JUMPIFEQ                         R5 R3 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
