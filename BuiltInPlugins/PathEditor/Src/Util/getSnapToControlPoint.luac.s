PROTO_0:
        0 MOVE                             R3 R0
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETUPVAL                         R10 1
        7 MOVE                             R11 R0
        8 MOVE                             R12 R9
        9 MOVE                             R13 R2
       10 MOVE                             R14 R4
       11 CALL                             R10 4 2
       12 JUMPIFNOT                        R10 ; [+3]
       13 GETTABLEKS                       R3 R9 K0 ["Position"]
       15 MOVE                             R4 R11
       16 FORGLOOP                         R5 2 ; [-11]
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETIMPORT                        R4 K1 [script]
       13 GETTABLEKS                       R3 R4 K2 ["Parent"]
       15 GETTABLEKS                       R2 R3 K5 ["getPositionMatchesControlPoint"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Resources"]
       24 GETTABLEKS                       R3 R4 K8 ["Constants"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K9 ["SnapToPointEpsilon"]
       29 DUPCLOSURE                       R4 K10 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
