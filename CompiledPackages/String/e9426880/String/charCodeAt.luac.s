PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        7 LOADN                            R1 1
        8 FASTCALL1                        STRING_LEN R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K5 [string.len]
       12 CALL                             R2 1 1
       13 LOADN                            R3 1
       14 JUMPIFLT                         R1 R3 ; [+3]
       16 JUMPIFNOTLT                      R2 R1 ; [+3]
       18 GETUPVAL                         R3 0
       19 RETURN                           R3 1
       20 GETIMPORT                        R3 K8 [utf8.offset]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R1
       24 CALL                             R3 2 1
       25 JUMPIFEQKNIL                     R3 ; [+3]
       27 JUMPIFNOTLT                      R2 R3 ; [+3]
       29 GETUPVAL                         R4 0
       30 RETURN                           R4 1
       31 GETIMPORT                        R4 K10 [utf8.codepoint]
       33 MOVE                             R5 R0
       34 MOVE                             R6 R3
       35 MOVE                             R7 R3
       36 CALL                             R4 3 1
       37 JUMPIFNOTEQKNIL                  R4 ; [+3]
       39 GETUPVAL                         R5 0
       40 RETURN                           R5 1
       41 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Number"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["NaN"]
       14 DUPCLOSURE                       R4 K7 [PROTO_0]
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1
