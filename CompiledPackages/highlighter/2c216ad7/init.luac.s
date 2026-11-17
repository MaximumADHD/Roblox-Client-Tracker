PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["highlight"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRichTextLines"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["refresh"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setColors"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["refresh"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getColor"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["matchStudioSettings"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["refresh"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["types"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["theme"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["richtext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["labels"]
       28 CALL                             R3 1 1
       29 DUPTABLE                         R4 K9 [{"defaultLexer"}]
       30 GETIMPORT                        R5 K1 [require]
       32 GETIMPORT                        R6 K3 [script]
       34 GETTABLEKS                       R6 R6 K10 ["lexer"]
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K8 ["defaultLexer"]
       39 DUPCLOSURE                       R5 K11 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 SETTABLEKS                       R5 R4 K12 ["highlight"]
       43 DUPCLOSURE                       R5 K13 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R5 R4 K14 ["buildRichTextLines"]
       47 DUPCLOSURE                       R5 K15 [PROTO_2]
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R5 R4 K16 ["refresh"]
       51 DUPCLOSURE                       R5 K17 [PROTO_3]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R5 R4 K18 ["setTokenColors"]
       56 DUPCLOSURE                       R5 K19 [PROTO_4]
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R5 R4 K20 ["getTokenColor"]
       60 DUPCLOSURE                       R5 K21 [PROTO_5]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R5 R4 K22 ["matchStudioSettings"]
       65 GETIMPORT                        R5 K25 [table.freeze]
       67 MOVE                             R6 R4
       68 CALL                             R5 1 -1
       69 RETURN                           R5 -1
