PROTO_0:
        0 ORK                              R1 R1 K0 [""]
        1 LOADK                            R4 K1 ["[A-Za-z#?]+"]
        2 NAMECALL                         R2 R1 K2 ["find"]
        4 CALL                             R2 2 2
        5 JUMPIFNOT                        R2 ; [+52]
        6 MOVE                             R6 R2
        7 MOVE                             R7 R3
        8 NAMECALL                         R4 R1 K3 ["sub"]
       10 CALL                             R4 3 1
       11 LOADK                            R6 K4 ["%"]
       12 LOADN                            R12 1
       13 SUBK                             R13 R2 K5 [1]
       14 NAMECALL                         R10 R1 K3 ["sub"]
       16 CALL                             R10 3 1
       17 MOVE                             R7 R10
       18 ADDK                             R12 R3 K5 [1]
       19 NAMECALL                         R10 R1 K3 ["sub"]
       21 CALL                             R10 2 1
       22 MOVE                             R8 R10
       23 LOADK                            R9 K6 ["s"]
       24 CONCAT                           R5 R6 R9
       25 GETIMPORT                        R6 K8 [require]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K9 ["pretty"]
       30 CALL                             R6 1 1
       31 JUMPIFNOTEQKS                    R4 K10 ["#?"] ; [+9]
       33 MOVE                             R9 R6
       34 MOVE                             R10 R0
       35 DUPTABLE                         R11 K13 [{["multiline"] = True}]
       36 CALL                             R9 2 -1
       37 NAMECALL                         R7 R5 K14 ["format"]
       39 CALL                             R7 -1 -1
       40 RETURN                           R7 -1
       41 JUMPIFNOTEQKS                    R4 K15 ["?"] ; [+8]
       43 MOVE                             R9 R6
       44 MOVE                             R10 R0
       45 CALL                             R9 1 -1
       46 NAMECALL                         R7 R5 K14 ["format"]
       48 CALL                             R7 -1 -1
       49 RETURN                           R7 -1
       50 LOADK                            R8 K4 ["%"]
       51 MOVE                             R9 R1
       52 CONCAT                           R7 R8 R9
       53 MOVE                             R9 R0
       54 NAMECALL                         R7 R7 K14 ["format"]
       56 CALL                             R7 2 -1
       57 RETURN                           R7 -1
       58 LOADK                            R4 K6 ["s"]
       59 FASTCALL1                        TYPE R0 ; [+3]
       60 MOVE                             R6 R0
       61 GETIMPORT                        R5 K17 [type]
       63 CALL                             R5 1 1
       64 JUMPIFNOTEQKS                    R5 K18 ["number"] ; [+12]
       66 FASTCALL1                        MATH_MODF R0 ; [+3]
       67 MOVE                             R6 R0
       68 GETIMPORT                        R5 K21 [math.modf]
       70 CALL                             R5 1 2
       71 JUMPIFNOTEQKN                    R6 K22 [0] ; [+3]
       73 LOADK                            R7 K23 ["d"]
       74 JUMP                             ; [+1]
       75 LOADK                            R7 K24 ["f"]
       76 MOVE                             R4 R7
       77 LOADK                            R6 K4 ["%"]
       78 MOVE                             R7 R1
       79 MOVE                             R8 R4
       80 CONCAT                           R5 R6 R8
       81 FASTCALL1                        TOSTRING R0 ; [+3]
       82 MOVE                             R8 R0
       83 GETIMPORT                        R7 K26 [tostring]
       85 CALL                             R7 1 1
       86 NAMECALL                         R5 R5 K14 ["format"]
       88 CALL                             R5 2 -1
       89 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
