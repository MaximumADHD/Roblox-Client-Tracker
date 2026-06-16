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
       14 JUMPIFNOT                        R2 ; [+55]
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
       40 JUMPIFNOTEQKS                    R4 K14 ["#?"] ; [+12]
       42 MOVE                             R9 R6
       43 MOVE                             R10 R0
       44 DUPTABLE                         R11 K16 [{"multiline"}]
       45 LOADB                            R12 1
       46 SETTABLEKS                       R12 R11 K15 ["multiline"]
       48 CALL                             R9 2 -1
       49 NAMECALL                         R7 R5 K17 ["format"]
       51 CALL                             R7 -1 -1
       52 RETURN                           R7 -1
       53 JUMPIFNOTEQKS                    R4 K18 ["?"] ; [+8]
       55 MOVE                             R9 R6
       56 MOVE                             R10 R0
       57 CALL                             R9 1 -1
       58 NAMECALL                         R7 R5 K17 ["format"]
       60 CALL                             R7 -1 -1
       61 RETURN                           R7 -1
       62 LOADK                            R8 K8 ["%"]
       63 MOVE                             R9 R1
       64 CONCAT                           R7 R8 R9
       65 MOVE                             R9 R0
       66 NAMECALL                         R7 R7 K17 ["format"]
       68 CALL                             R7 2 -1
       69 RETURN                           R7 -1
       70 LOADK                            R4 K10 ["s"]
       71 FASTCALL1                        TYPE R0 ; [+3]
       72 MOVE                             R6 R0
       73 GETIMPORT                        R5 K20 [type]
       75 CALL                             R5 1 1
       76 JUMPIFNOTEQKS                    R5 K21 ["number"] ; [+12]
       78 FASTCALL1                        MATH_MODF R0 ; [+3]
       79 MOVE                             R6 R0
       80 GETIMPORT                        R5 K24 [math.modf]
       82 CALL                             R5 1 2
       83 JUMPIFNOTEQKN                    R6 K25 [0] ; [+3]
       85 LOADK                            R7 K26 ["d"]
       86 JUMP                             ; [+1]
       87 LOADK                            R7 K27 ["f"]
       88 MOVE                             R4 R7
       89 LOADK                            R6 K8 ["%"]
       90 MOVE                             R7 R1
       91 MOVE                             R8 R4
       92 CONCAT                           R5 R6 R8
       93 FASTCALL1                        TOSTRING R0 ; [+3]
       94 MOVE                             R8 R0
       95 GETIMPORT                        R7 K29 [tostring]
       97 CALL                             R7 1 1
       98 NAMECALL                         R5 R5 K17 ["format"]
      100 CALL                             R5 2 -1
      101 RETURN                           R5 -1

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
