PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Motor6D"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+12]
       11 GETTABLEKS                       R7 R6 K3 ["Part1"]
       13 JUMPIFEQKNIL                     R7 ; [+40]
       15 GETTABLEKS                       R7 R6 K3 ["Part1"]
       17 GETTABLEKS                       R7 R7 K4 ["Name"]
       19 GETTABLEKS                       R8 R6 K5 ["Transform"]
       21 SETTABLE                         R8 R1 R7
       22 JUMP                             ; [+31]
       23 LOADK                            R9 K6 ["AnimationConstraint"]
       24 NAMECALL                         R7 R6 K2 ["IsA"]
       26 CALL                             R7 2 1
       27 JUMPIFNOT                        R7 ; [+16]
       28 GETTABLEKS                       R7 R6 K7 ["Attachment1"]
       30 JUMPIFEQKNIL                     R7 ; [+23]
       32 GETTABLEKS                       R8 R7 K8 ["Parent"]
       34 JUMPIFEQKNIL                     R8 ; [+19]
       36 GETTABLEKS                       R8 R7 K8 ["Parent"]
       38 GETTABLEKS                       R8 R8 K4 ["Name"]
       40 GETTABLEKS                       R9 R6 K5 ["Transform"]
       42 SETTABLE                         R9 R1 R8
       43 JUMP                             ; [+10]
       44 LOADK                            R9 K9 ["Bone"]
       45 NAMECALL                         R7 R6 K2 ["IsA"]
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+5]
       49 GETTABLEKS                       R7 R6 K4 ["Name"]
       51 GETTABLEKS                       R8 R6 K5 ["Transform"]
       53 SETTABLE                         R8 R1 R7
       54 FORGLOOP                         R2 2 ; [-49]
       56 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
