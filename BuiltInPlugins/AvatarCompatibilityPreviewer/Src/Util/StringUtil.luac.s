PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+4]
        7 LENGTH                           R1 R0
        8 JUMPIFNOTEQKN                    R1 K3 [0] ; [+3]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 LENGTH                           R2 R0
       13 JUMPIFNOTEQKN                    R2 K4 [38] ; [+8]
       15 LOADB                            R1 1
       16 LOADK                            R4 K5 ["^{%x+%-%x+%-%x+%-%x+%-%x+}$"]
       17 NAMECALL                         R2 R0 K6 ["match"]
       19 CALL                             R2 2 1
       20 JUMPIFNOTEQKNIL                  R2 ; [+13]
       22 LOADB                            R1 0
       23 LENGTH                           R2 R0
       24 JUMPIFNOTEQKN                    R2 K7 [36] ; [+9]
       26 LOADK                            R4 K8 ["^%x+%-%x+%-%x+%-%x+%-%x+$"]
       27 NAMECALL                         R2 R0 K6 ["match"]
       29 CALL                             R2 2 1
       30 JUMPIFNOTEQKNIL                  R2 ; [+2]
       32 LOADB                            R1 0 +1
       33 LOADB                            R1 1
       34 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R5 1
        1 LENGTH                           R6 R1
        2 FASTCALL3                        STRING_SUB R0 R5 R6
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [string.sub]
        7 CALL                             R3 3 1
        8 JUMPIFEQ                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_2:
        0 LENGTH                           R6 R1
        1 MINUS                            R5 R6
        2 LOADN                            R6 -1
        3 FASTCALL3                        STRING_SUB R0 R5 R6
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K2 [string.sub]
        8 CALL                             R3 3 1
        9 JUMPIFEQ                         R3 R1 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_3:
        0 LOADN                            R4 1
        1 LENGTH                           R5 R1
        2 FASTCALL3                        STRING_SUB R0 R4 R5
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 3 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+10]
       10 LENGTH                           R5 R1
       11 ADDK                             R4 R5 K3 [1]
       12 FASTCALL2                        STRING_SUB R0 R4 ; [+4]
       14 MOVE                             R3 R0
       15 GETIMPORT                        R2 K2 [string.sub]
       17 CALL                             R2 2 1
       18 RETURN                           R2 1
       19 RETURN                           R0 1

PROTO_4:
        0 LENGTH                           R5 R1
        1 MINUS                            R4 R5
        2 FASTCALL2                        STRING_SUB R0 R4 ; [+4]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [string.sub]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQ                      R2 R1 ; [+12]
       10 LOADN                            R4 1
       11 LENGTH                           R7 R1
       12 MINUS                            R6 R7
       13 SUBK                             R5 R6 K3 [1]
       14 FASTCALL3                        STRING_SUB R0 R4 R5
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K2 [string.sub]
       19 CALL                             R2 3 1
       20 RETURN                           R2 1
       21 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["isGuid"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["startsWith"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["endsWith"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["removePrefix"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["removePostfix"]
       18 RETURN                           R0 1
