PROTO_0:
        0 MOVE                             R4 R1
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K0 ["sub"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        2 JUMPIFNOTEQKN                    R1 K1 [-1] ; [+3]
        4 LOADK                            R2 K2 [""]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K3 ["Text"]
        8 GETTABLEKS                       R4 R0 K4 ["TextSize"]
       10 GETTABLEKS                       R5 R0 K5 ["LineHeight"]
       12 MUL                              R3 R4 R5
       13 DIVK                             R4 R3 K6 [1.4]
       14 GETTABLEKS                       R6 R0 K7 ["AbsoluteSize"]
       16 GETTABLEKS                       R6 R6 K8 ["X"]
       18 DIV                              R5 R6 R4
       19 ADD                              R6 R1 R5
       20 GETIMPORT                        R8 K12 [string.find]
       22 MOVE                             R9 R2
       23 LOADK                            R10 K13 ["\n"]
       24 MOVE                             R11 R1
       25 CALL                             R8 3 1
       26 ORK                              R7 R8 K9 [∞]
       27 GETIMPORT                        R9 K12 [string.find]
       29 MOVE                             R10 R2
       30 LOADK                            R11 K14 ["[ \t\x\x]"]
       31 MOVE                             R12 R1
       32 CALL                             R9 3 1
       33 ORK                              R8 R9 K9 [∞]
       34 SUBK                             R10 R7 K15 [1]
       35 LENGTH                           R12 R2
       36 FASTCALL3                        MATH_MIN R10 R8 R12
       38 MOVE                             R11 R8
       39 GETIMPORT                        R9 K18 [math.min]
       41 CALL                             R9 3 1
       42 MOVE                             R12 R1
       43 MOVE                             R13 R1
       44 NAMECALL                         R10 R2 K19 ["sub"]
       46 CALL                             R10 3 1
       47 LOADK                            R12 K13 ["\n"]
       48 NAMECALL                         R10 R10 K20 ["match"]
       50 CALL                             R10 2 1
       51 JUMPIFNOT                        R10 ; [+16]
       52 SUBK                             R11 R1 K15 [1]
       53 MOVE                             R14 R11
       54 MOVE                             R15 R11
       55 NAMECALL                         R12 R2 K19 ["sub"]
       57 CALL                             R12 3 1
       58 MOVE                             R10 R12
       59 LOADK                            R12 K13 ["\n"]
       60 NAMECALL                         R10 R10 K20 ["match"]
       62 CALL                             R10 2 1
       63 JUMPIF                           R10 ; [+4]
       64 JUMPIFEQKN                       R1 K15 [1] ; [+2]
       66 LOADB                            R10 0 +1
       67 LOADB                            R10 1
       68 JUMPIFNOT                        R10 ; [+2]
       69 SUBK                             R9 R1 K15 [1]
       70 JUMP                             ; [+3]
       71 JUMPIFNOTLT                      R6 R9 ; [+2]
       73 MOVE                             R9 R1
       74 GETIMPORT                        R11 K23 [utf8.char]
       76 GETIMPORT                        R12 K25 [utf8.codepoint]
       78 MOVE                             R13 R2
       79 LOADN                            R14 1
       80 MOVE                             R15 R9
       81 CALL                             R12 3 -1
       82 CALL                             R11 -1 -1
       83 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
