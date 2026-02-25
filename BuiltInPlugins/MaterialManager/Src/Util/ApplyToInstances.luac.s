PROTO_0:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 3
        4 FORGPREP_INEXT                   R3
        5 GETUPVAL                         R8 0
        6 MOVE                             R9 R7
        7 MOVE                             R10 R1
        8 MOVE                             R11 R2
        9 CALL                             R8 3 0
       10 LOADK                            R10 K2 ["Model"]
       11 NAMECALL                         R8 R7 K3 ["IsA"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+20]
       15 NAMECALL                         R8 R7 K4 ["GetDescendants"]
       17 CALL                             R8 1 1
       18 GETIMPORT                        R9 K1 [ipairs]
       20 MOVE                             R10 R8
       21 CALL                             R9 1 3
       22 FORGPREP_INEXT                   R9
       23 LOADK                            R16 K5 ["BasePart"]
       24 NAMECALL                         R14 R13 K3 ["IsA"]
       26 CALL                             R14 2 1
       27 JUMPIFNOT                        R14 ; [+5]
       28 SETTABLEKS                       R1 R13 K6 ["Material"]
       30 ORK                              R14 R2 K7 [""]
       31 SETTABLEKS                       R14 R13 K8 ["MaterialVariant"]
       33 FORGLOOP                         R9 2 [inext] ; [-11]
       35 FORGLOOP                         R3 2 [inext] ; [-31]
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K8 ["ApplyToBasePart"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K9 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
