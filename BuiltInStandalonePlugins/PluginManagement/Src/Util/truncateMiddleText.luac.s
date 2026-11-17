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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["isCli"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K9 [game]
       20 LOADK                            R4 K10 ["TextService"]
       21 NAMECALL                         R2 R2 K11 ["GetService"]
       23 CALL                             R2 2 1
       24 MOVE                             R3 R1
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+15]
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K12 ["Tests"]
       33 GETTABLEKS                       R4 R4 K13 ["Mocks"]
       35 GETTABLEKS                       R4 R4 K14 ["MockTextService"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R3 K15 ["new"]
       40 CALL                             R4 0 1
       41 MOVE                             R2 R4
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          REF R2
       44 CLOSEUPVALS                      R2
       45 RETURN                           R3 1
