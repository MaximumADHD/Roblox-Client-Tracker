PROTO_0:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETUPVAL                         R8 0
        5 MOVE                             R9 R7
        6 MOVE                             R10 R1
        7 MOVE                             R11 R2
        8 CALL                             R8 3 0
        9 LOADK                            R10 K0 ["Model"]
       10 NAMECALL                         R8 R7 K1 ["IsA"]
       12 CALL                             R8 2 1
       13 JUMPIFNOT                        R8 ; [+16]
       14 NAMECALL                         R8 R7 K2 ["GetDescendants"]
       16 CALL                             R8 1 3
       17 FORGPREP                         R8
       18 LOADK                            R15 K3 ["BasePart"]
       19 NAMECALL                         R13 R12 K1 ["IsA"]
       21 CALL                             R13 2 1
       22 JUMPIFNOT                        R13 ; [+5]
       23 SETTABLEKS                       R1 R12 K4 ["Material"]
       25 ORK                              R13 R2 K5 [""]
       26 SETTABLEKS                       R13 R12 K6 ["MaterialVariant"]
       28 FORGLOOP                         R8 2 ; [-11]
       30 FORGLOOP                         R3 2 ; [-27]
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["applyToBasePart"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
