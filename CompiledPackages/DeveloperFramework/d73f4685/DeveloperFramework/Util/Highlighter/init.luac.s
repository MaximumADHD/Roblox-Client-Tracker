PROTO_0:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["setColors"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["convertTabsToSpaces"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["removeControlChars"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 1
       15 MOVE                             R0 R2
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K3 ["defaultLexer"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["getColor"]
       22 LOADK                            R4 K5 ["iden"]
       23 CALL                             R3 1 1
       24 LOADK                            R4 K6 [""]
       25 GETTABLEKS                       R5 R2 K7 ["scan"]
       27 MOVE                             R6 R0
       28 CALL                             R5 1 3
       29 FORGPREP                         R5
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R11 R11 K4 ["getColor"]
       33 MOVE                             R12 R8
       34 CALL                             R11 1 1
       35 OR                               R10 R11 R3
       36 MOVE                             R11 R4
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K8 ["getColoredRichText"]
       40 MOVE                             R13 R10
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R14 R14 K9 ["sanitizeRichText"]
       44 MOVE                             R15 R9
       45 CALL                             R14 1 -1
       46 CALL                             R12 -1 1
       47 CONCAT                           R4 R11 R12
       48 FORGLOOP                         R5 2 ; [-19]
       50 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getColor"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Types"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Utility"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["Theme"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K8 [{"defaultLexer"}]
       23 GETIMPORT                        R4 K1 [require]
       25 GETIMPORT                        R5 K3 [script]
       27 GETTABLEKS                       R5 R5 K9 ["Lexer"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K7 ["defaultLexer"]
       32 DUPCLOSURE                       R4 K10 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R4 R3 K11 ["highlight"]
       38 DUPCLOSURE                       R4 K12 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R4 R3 K13 ["getTokenColor"]
       42 RETURN                           R3 1
