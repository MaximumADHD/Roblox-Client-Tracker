PROTO_0:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["setColors"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["setColors"]
       10 GETUPVAL                         R3 1
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["convertTabsToSpaces"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["removeControlChars"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 -1
       20 CALL                             R2 -1 1
       21 MOVE                             R0 R2
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K3 ["defaultLexer"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["getColor"]
       28 LOADK                            R4 K5 ["iden"]
       29 CALL                             R3 1 1
       30 LOADK                            R4 K6 [""]
       31 GETTABLEKS                       R5 R2 K7 ["scan"]
       33 MOVE                             R6 R0
       34 CALL                             R5 1 3
       35 FORGPREP                         R5
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R11 R11 K4 ["getColor"]
       39 MOVE                             R12 R8
       40 CALL                             R11 1 1
       41 OR                               R10 R11 R3
       42 MOVE                             R11 R4
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K8 ["getColoredRichText"]
       46 MOVE                             R13 R10
       47 GETUPVAL                         R14 2
       48 GETTABLEKS                       R14 R14 K9 ["sanitizeRichText"]
       50 MOVE                             R15 R9
       51 CALL                             R14 1 -1
       52 CALL                             R12 -1 1
       53 CONCAT                           R4 R11 R12
       54 FORGLOOP                         R5 2 ; [-19]
       56 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getColor"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Utility"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Theme"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K6 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K9 ["Theme"]
       34 GETTABLEKS                       R5 R5 K10 ["defaultTokenColors"]
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K12 [{"defaultLexer"}]
       38 GETIMPORT                        R6 K6 [require]
       40 GETIMPORT                        R7 K1 [script]
       42 GETTABLEKS                       R7 R7 K13 ["Lexer"]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R6 R5 K11 ["defaultLexer"]
       47 DUPCLOSURE                       R6 K14 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R6 R5 K15 ["highlight"]
       54 DUPCLOSURE                       R6 K16 [PROTO_1]
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R6 R5 K17 ["getTokenColor"]
       58 RETURN                           R5 1
