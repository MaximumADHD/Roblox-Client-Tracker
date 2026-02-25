PROTO_0:
        0 LOADK                            R4 K0 [""]
        1 FASTCALL1                        STRING_LEN R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K3 [string.len]
        5 CALL                             R5 1 1
        6 GETUPVAL                         R6 0
        7 MOVE                             R8 R0
        8 MOVE                             R9 R1
        9 MOVE                             R10 R2
       10 GETIMPORT                        R11 K6 [Vector2.new]
       12 CALL                             R11 0 -1
       13 NAMECALL                         R6 R6 K7 ["GetTextSize"]
       15 CALL                             R6 -1 1
       16 GETTABLEKS                       R7 R6 K8 ["X"]
       18 JUMPIFNOTLT                      R7 R3 ; [+2]
       20 RETURN                           R0 1
       21 LOADN                            R9 1
       22 DIVK                             R11 R5 K9 [2]
       23 FASTCALL1                        MATH_CEIL R11 ; [+2]
       24 GETIMPORT                        R10 K12 [math.ceil]
       26 CALL                             R10 1 1
       27 MOVE                             R7 R10
       28 LOADN                            R8 1
       29 FORNPREP                         R7
       30 LOADN                            R12 1
       31 MOVE                             R13 R9
       32 NAMECALL                         R10 R0 K13 ["sub"]
       34 CALL                             R10 3 1
       35 SUBK                             R14 R9 K14 [1]
       36 SUB                              R13 R5 R14
       37 MOVE                             R14 R5
       38 NAMECALL                         R11 R0 K13 ["sub"]
       40 CALL                             R11 3 1
       41 MOVE                             R13 R10
       42 LOADK                            R14 K15 ["..."]
       43 MOVE                             R15 R11
       44 CONCAT                           R12 R13 R15
       45 GETUPVAL                         R13 0
       46 MOVE                             R15 R12
       47 MOVE                             R16 R1
       48 MOVE                             R17 R2
       49 GETIMPORT                        R18 K6 [Vector2.new]
       51 CALL                             R18 0 -1
       52 NAMECALL                         R13 R13 K7 ["GetTextSize"]
       54 CALL                             R13 -1 1
       55 GETTABLEKS                       R15 R13 K8 ["X"]
       57 ADDK                             R14 R15 K9 [2]
       58 JUMPIFNOTLT                      R14 R3 ; [+5]
       60 MOVE                             R4 R12
       61 JUMP                             ; [+1]
       62 RETURN                           R4 1
       63 FORNLOOP                         R7
       64 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
