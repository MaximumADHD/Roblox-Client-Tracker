PROTO_0:
        0 ORK                              R1 R1 K0 [""]
        1 GETUPVAL                         R2 0
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 LOADK                            R4 K3 ["string"]
        8 LOADK                            R5 K4 ["Attempted to call Dash.formatValue with argument #2 of type {left:?} not {right:?}"]
        9 CALL                             R2 3 0
       10 LOADK                            R4 K5 ["[A-Za-z#?]+"]
       11 NAMECALL                         R2 R1 K6 ["find"]
       13 CALL                             R2 2 2
       14 JUMPIFNOT                        R2 ; [+52]
       15 MOVE                             R6 R2
       16 MOVE                             R7 R3
       17 NAMECALL                         R4 R1 K7 ["sub"]
       19 CALL                             R4 3 1
       20 LOADK                            R6 K8 ["%"]
       21 LOADN                            R12 1
       22 SUBK                             R13 R2 K9 [1]
       23 NAMECALL                         R10 R1 K7 ["sub"]
       25 CALL                             R10 3 1
       26 MOVE                             R7 R10
       27 ADDK                             R12 R3 K9 [1]
       28 NAMECALL                         R10 R1 K7 ["sub"]
       30 CALL                             R10 2 1
       31 MOVE                             R8 R10
       32 LOADK                            R9 K10 ["s"]
       33 CONCAT                           R5 R6 R9
       34 GETIMPORT                        R6 K12 [require]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K13 ["pretty"]
       39 CALL                             R6 1 1
       40 JUMPIFNOTEQKS                    R4 K14 ["#?"] ; [+9]
       42 MOVE                             R9 R6
       43 MOVE                             R10 R0
       44 DUPTABLE                         R11 K17 [{["multiline"] = True}]
       45 CALL                             R9 2 -1
       46 NAMECALL                         R7 R5 K18 ["format"]
       48 CALL                             R7 -1 -1
       49 RETURN                           R7 -1
       50 JUMPIFNOTEQKS                    R4 K19 ["?"] ; [+8]
       52 MOVE                             R9 R6
       53 MOVE                             R10 R0
       54 CALL                             R9 1 -1
       55 NAMECALL                         R7 R5 K18 ["format"]
       57 CALL                             R7 -1 -1
       58 RETURN                           R7 -1
       59 LOADK                            R8 K8 ["%"]
       60 MOVE                             R9 R1
       61 CONCAT                           R7 R8 R9
       62 MOVE                             R9 R0
       63 NAMECALL                         R7 R7 K18 ["format"]
       65 CALL                             R7 2 -1
       66 RETURN                           R7 -1
       67 LOADK                            R4 K10 ["s"]
       68 FASTCALL1                        TYPE R0 ; [+3]
       69 MOVE                             R6 R0
       70 GETIMPORT                        R5 K21 [type]
       72 CALL                             R5 1 1
       73 JUMPIFNOTEQKS                    R5 K22 ["number"] ; [+12]
       75 FASTCALL1                        MATH_MODF R0 ; [+3]
       76 MOVE                             R6 R0
       77 GETIMPORT                        R5 K25 [math.modf]
       79 CALL                             R5 1 2
       80 JUMPIFNOTEQKN                    R6 K26 [0] ; [+3]
       82 LOADK                            R7 K27 ["d"]
       83 JUMP                             ; [+1]
       84 LOADK                            R7 K28 ["f"]
       85 MOVE                             R4 R7
       86 LOADK                            R6 K8 ["%"]
       87 MOVE                             R7 R1
       88 MOVE                             R8 R4
       89 CONCAT                           R5 R6 R8
       90 FASTCALL1                        TOSTRING R0 ; [+3]
       91 MOVE                             R8 R0
       92 GETIMPORT                        R7 K30 [tostring]
       94 CALL                             R7 1 1
       95 NAMECALL                         R5 R5 K18 ["format"]
       97 CALL                             R5 2 -1
       98 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["assertEqual"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 RETURN                           R2 1
