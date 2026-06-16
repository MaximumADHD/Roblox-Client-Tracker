PROTO_0:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        7 LOADN                            R1 1
        8 GETIMPORT                        R2 K5 [utf8.len]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 JUMPIFLT                         R2 R1 ; [+4]
       14 LOADN                            R2 1
       15 JUMPIFNOTLT                      R1 R2 ; [+3]
       17 GETUPVAL                         R2 0
       18 RETURN                           R2 1
       19 GETIMPORT                        R2 K7 [utf8.offset]
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K9 [utf8.codepoint]
       26 MOVE                             R4 R0
       27 MOVE                             R5 R2
       28 MOVE                             R6 R2
       29 CALL                             R3 3 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+3]
       32 GETUPVAL                         R4 0
       33 RETURN                           R4 1
       34 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Number"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["NaN"]
       14 DUPCLOSURE                       R4 K7 [PROTO_0]
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1
