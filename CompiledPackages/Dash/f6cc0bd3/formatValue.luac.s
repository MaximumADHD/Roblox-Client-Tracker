PROTO_0:
        0 ORK                              R1 R1 K0 [""]
        1 LOADK                            R4 K1 ["[A-Za-z#?]+"]
        2 NAMECALL                         R2 R1 K2 ["find"]
        4 CALL                             R2 2 2
        5 JUMPIFNOT                        R2 ; [+55]
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
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K9 ["pretty"]
       30 CALL                             R6 1 1
       31 JUMPIFNOTEQKS                    R4 K10 ["#?"] ; [+12]
       33 MOVE                             R9 R6
       34 MOVE                             R10 R0
       35 DUPTABLE                         R11 K12 [{"multiline"}]
       36 LOADB                            R12 1
       37 SETTABLEKS                       R12 R11 K11 ["multiline"]
       39 CALL                             R9 2 -1
       40 NAMECALL                         R7 R5 K13 ["format"]
       42 CALL                             R7 -1 -1
       43 RETURN                           R7 -1
       44 JUMPIFNOTEQKS                    R4 K14 ["?"] ; [+8]
       46 MOVE                             R9 R6
       47 MOVE                             R10 R0
       48 CALL                             R9 1 -1
       49 NAMECALL                         R7 R5 K13 ["format"]
       51 CALL                             R7 -1 -1
       52 RETURN                           R7 -1
       53 LOADK                            R8 K4 ["%"]
       54 MOVE                             R9 R1
       55 CONCAT                           R7 R8 R9
       56 MOVE                             R9 R0
       57 NAMECALL                         R7 R7 K13 ["format"]
       59 CALL                             R7 2 -1
       60 RETURN                           R7 -1
       61 LOADK                            R4 K6 ["s"]
       62 FASTCALL1                        TYPE R0 ; [+3]
       63 MOVE                             R6 R0
       64 GETIMPORT                        R5 K16 [type]
       66 CALL                             R5 1 1
       67 JUMPIFNOTEQKS                    R5 K17 ["number"] ; [+12]
       69 FASTCALL1                        MATH_MODF R0 ; [+3]
       70 MOVE                             R6 R0
       71 GETIMPORT                        R5 K20 [math.modf]
       73 CALL                             R5 1 2
       74 JUMPIFNOTEQKN                    R6 K21 [0] ; [+3]
       76 LOADK                            R7 K22 ["d"]
       77 JUMP                             ; [+1]
       78 LOADK                            R7 K23 ["f"]
       79 MOVE                             R4 R7
       80 LOADK                            R6 K4 ["%"]
       81 MOVE                             R7 R1
       82 MOVE                             R8 R4
       83 CONCAT                           R5 R6 R8
       84 FASTCALL1                        TOSTRING R0 ; [+3]
       85 MOVE                             R8 R0
       86 GETIMPORT                        R7 K25 [tostring]
       88 CALL                             R7 1 1
       89 NAMECALL                         R5 R5 K13 ["format"]
       91 CALL                             R5 2 -1
       92 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
