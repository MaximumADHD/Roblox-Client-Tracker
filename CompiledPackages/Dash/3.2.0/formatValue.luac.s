PROTO_0:
        0 ORK                              R2 R1 K0 [""]
        1 LOADK                            R5 K1 ["[A-Za-z#?]+"]
        2 NAMECALL                         R3 R2 K2 ["find"]
        4 CALL                             R3 2 2
        5 JUMPIFNOT                        R3 ; [+55]
        6 MOVE                             R7 R3
        7 MOVE                             R8 R4
        8 NAMECALL                         R5 R2 K3 ["sub"]
       10 CALL                             R5 3 1
       11 LOADK                            R7 K4 ["%"]
       12 LOADN                            R13 1
       13 SUBK                             R14 R3 K5 [1]
       14 NAMECALL                         R11 R2 K3 ["sub"]
       16 CALL                             R11 3 1
       17 MOVE                             R8 R11
       18 ADDK                             R13 R4 K5 [1]
       19 NAMECALL                         R11 R2 K3 ["sub"]
       21 CALL                             R11 2 1
       22 MOVE                             R9 R11
       23 LOADK                            R10 K6 ["s"]
       24 CONCAT                           R6 R7 R10
       25 GETIMPORT                        R7 K8 [require]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K9 ["pretty"]
       30 CALL                             R7 1 1
       31 JUMPIFNOTEQKS                    R5 K10 ["#?"] ; [+12]
       33 MOVE                             R10 R7
       34 MOVE                             R11 R0
       35 DUPTABLE                         R12 K12 [{"multiline"}]
       36 LOADB                            R13 1
       37 SETTABLEKS                       R13 R12 K11 ["multiline"]
       39 CALL                             R10 2 -1
       40 NAMECALL                         R8 R6 K13 ["format"]
       42 CALL                             R8 -1 -1
       43 RETURN                           R8 -1
       44 JUMPIFNOTEQKS                    R5 K14 ["?"] ; [+8]
       46 MOVE                             R10 R7
       47 MOVE                             R11 R0
       48 CALL                             R10 1 -1
       49 NAMECALL                         R8 R6 K13 ["format"]
       51 CALL                             R8 -1 -1
       52 RETURN                           R8 -1
       53 LOADK                            R9 K4 ["%"]
       54 MOVE                             R10 R2
       55 CONCAT                           R8 R9 R10
       56 MOVE                             R10 R0
       57 NAMECALL                         R8 R8 K13 ["format"]
       59 CALL                             R8 2 -1
       60 RETURN                           R8 -1
       61 LOADK                            R5 K6 ["s"]
       62 FASTCALL1                        TYPE R0 ; [+3]
       63 MOVE                             R7 R0
       64 GETIMPORT                        R6 K16 [type]
       66 CALL                             R6 1 1
       67 JUMPIFNOTEQKS                    R6 K17 ["number"] ; [+12]
       69 FASTCALL1                        MATH_MODF R0 ; [+3]
       70 MOVE                             R7 R0
       71 GETIMPORT                        R6 K20 [math.modf]
       73 CALL                             R6 1 2
       74 JUMPIFNOTEQKN                    R7 K21 [0] ; [+3]
       76 LOADK                            R8 K22 ["d"]
       77 JUMP                             ; [+1]
       78 LOADK                            R8 K23 ["f"]
       79 MOVE                             R5 R8
       80 LOADK                            R7 K4 ["%"]
       81 MOVE                             R8 R2
       82 MOVE                             R9 R5
       83 CONCAT                           R6 R7 R9
       84 FASTCALL1                        TOSTRING R0 ; [+3]
       85 MOVE                             R9 R0
       86 GETIMPORT                        R8 K25 [tostring]
       88 CALL                             R8 1 1
       89 NAMECALL                         R6 R6 K13 ["format"]
       91 CALL                             R6 2 -1
       92 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
