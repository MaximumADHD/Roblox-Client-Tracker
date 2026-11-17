PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%%%02X"]
        3 FASTCALL1                        STRING_BYTE R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [string.byte]
        7 CALL                             R3 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+2]
        1 LOADK                            R2 K0 ["[^%w%-%._~:/%?#%[%]@!%$&'%(%)%*%+,;=]"]
        2 JUMP                             ; [+1]
        3 LOADK                            R2 K1 ["[^%w%-%._~]"]
        4 GETIMPORT                        R3 K4 [string.gsub]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R2
        8 DUPCLOSURE                       R6 K5 [PROTO_0]
        9 CALL                             R3 3 1
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
