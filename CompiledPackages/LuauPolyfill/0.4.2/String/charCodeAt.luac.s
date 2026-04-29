PROTO_0:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+2]
        7 LOADN                            R1 1
        8 GETIMPORT                        R2 K5 [utf8.len]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 2
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 LOADK                            R6 K6 ["string `%s` has an invalid byte at position %s"]
       17 MOVE                             R8 R0
       18 FASTCALL1                        TOSTRING R3 ; [+3]
       19 MOVE                             R10 R3
       20 GETIMPORT                        R9 K8 [tostring]
       22 CALL                             R9 1 1
       23 NAMECALL                         R6 R6 K9 ["format"]
       25 CALL                             R6 3 -1
       26 FASTCALL                         ASSERT ; [+2]
       27 GETIMPORT                        R4 K11 [assert]
       29 CALL                             R4 -1 0
       30 JUMPIFLT                         R2 R1 ; [+4]
       32 LOADN                            R4 1
       33 JUMPIFNOTLT                      R1 R4 ; [+3]
       35 GETUPVAL                         R4 0
       36 RETURN                           R4 1
       37 GETIMPORT                        R4 K13 [utf8.offset]
       39 MOVE                             R5 R0
       40 MOVE                             R6 R1
       41 CALL                             R4 2 1
       42 GETIMPORT                        R5 K15 [utf8.codepoint]
       44 MOVE                             R6 R0
       45 MOVE                             R7 R4
       46 MOVE                             R8 R4
       47 CALL                             R5 3 1
       48 JUMPIFNOTEQKNIL                  R5 ; [+3]
       50 GETUPVAL                         R6 0
       51 RETURN                           R6 1
       52 RETURN                           R5 1

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
