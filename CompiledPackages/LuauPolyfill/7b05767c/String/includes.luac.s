PROTO_0:
        0 GETIMPORT                        R3 K2 [utf8.len]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 2
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 LOADK                            R7 K3 ["string `%s` has an invalid byte at position %s"]
        9 MOVE                             R9 R0
       10 FASTCALL1                        TOSTRING R4 ; [+3]
       11 MOVE                             R11 R4
       12 GETIMPORT                        R10 K5 [tostring]
       14 CALL                             R10 1 1
       15 NAMECALL                         R7 R7 K6 ["format"]
       17 CALL                             R7 3 -1
       18 FASTCALL                         ASSERT ; [+2]
       19 GETIMPORT                        R5 K8 [assert]
       21 CALL                             R5 -1 0
       22 JUMPIFNOTEQKN                    R3 K9 [0] ; [+3]
       24 LOADB                            R5 0
       25 RETURN                           R5 1
       26 LENGTH                           R5 R1
       27 JUMPIFNOTEQKN                    R5 K9 [0] ; [+3]
       29 LOADB                            R5 1
       30 RETURN                           R5 1
       31 LOADN                            R5 1
       32 JUMPIFEQKNIL                     R2 ; [+11]
       34 FASTCALL1                        TONUMBER R2 ; [+3]
       35 MOVE                             R7 R2
       36 GETIMPORT                        R6 K12 [tonumber]
       38 CALL                             R6 1 1
       39 ORK                              R5 R6 K10 [1]
       40 JUMPIFNOTLT                      R3 R5 ; [+3]
       42 LOADB                            R6 0
       43 RETURN                           R6 1
       44 LOADN                            R6 1
       45 JUMPIFNOTLT                      R5 R6 ; [+2]
       47 LOADN                            R5 1
       48 GETIMPORT                        R6 K14 [utf8.offset]
       50 MOVE                             R7 R0
       51 MOVE                             R8 R5
       52 CALL                             R6 2 1
       53 GETUPVAL                         R9 0
       54 LOADK                            R10 K15 ["%%%1"]
       55 NAMECALL                         R7 R1 K16 ["gsub"]
       57 CALL                             R7 3 1
       58 GETIMPORT                        R8 K19 [string.find]
       60 MOVE                             R9 R0
       61 MOVE                             R10 R7
       62 MOVE                             R11 R6
       63 CALL                             R8 3 2
       64 JUMPIFNOTEQKNIL                  R8 ; [+2]
       66 LOADB                            R10 0 +1
       67 LOADB                            R10 1
       68 RETURN                           R10 1

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
