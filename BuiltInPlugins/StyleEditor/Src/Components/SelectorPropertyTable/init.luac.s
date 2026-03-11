PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K0 ["createElement"]
       12 GETUPVAL                         R2 3
       13 MOVE                             R3 R0
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagStyleQuery"]
       24 CALL                             R2 1 1
       25 CALL                             R2 0 1
       26 GETIMPORT                        R3 K4 [require]
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R4 R5 K10 ["init_v2"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K4 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R5 R6 K11 ["init_v1"]
       39 CALL                             R4 1 1
       40 DUPCLOSURE                       R5 K12 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 RETURN                           R5 1
