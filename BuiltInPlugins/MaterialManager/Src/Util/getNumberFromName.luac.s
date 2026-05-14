PROTO_0:
        0 LOADN                            R5 1
        1 LENGTH                           R6 R1
        2 FASTCALL3                        STRING_SUB R0 R5 R6
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [string.sub]
        7 CALL                             R3 3 1
        8 JUMPIFEQ                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 FASTCALL1                        STRING_LEN R1 ; [+3]
       13 MOVE                             R7 R1
       14 GETIMPORT                        R6 K5 [string.len]
       16 CALL                             R6 1 1
       17 ADDK                             R5 R6 K3 [1]
       18 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K2 [string.sub]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 0
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 LOADB                            R5 1
       29 JUMP                             ; [+1]
       30 LOADB                            R5 0
       31 JUMPIFNOT                        R2 ; [+3]
       32 JUMPIFNOT                        R5 ; [+2]
       33 MOVE                             R6 R4
       34 RETURN                           R6 1
       35 LOADNIL                          R6
       36 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K5 ["Src"]
       18 GETTABLEKS                       R2 R2 K7 ["Util"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R2 K8 ["getNumberFromText"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K9 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
