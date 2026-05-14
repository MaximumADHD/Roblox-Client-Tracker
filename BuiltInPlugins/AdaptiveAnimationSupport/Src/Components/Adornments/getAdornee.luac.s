PROTO_0:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Part0"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["AnimationConstraint"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+25]
       13 GETUPVAL                         R1 0
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+22]
       16 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       18 JUMPIFNOT                        R1 ; [+19]
       19 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       21 GETTABLEKS                       R1 R1 K5 ["Parent"]
       23 JUMPIFNOT                        R1 ; [+14]
       24 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       26 GETTABLEKS                       R1 R1 K5 ["Parent"]
       28 LOADK                            R3 K6 ["BasePart"]
       29 NAMECALL                         R1 R1 K1 ["IsA"]
       31 CALL                             R1 2 1
       32 JUMPIFNOT                        R1 ; [+5]
       33 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       35 GETTABLEKS                       R1 R1 K5 ["Parent"]
       37 RETURN                           R1 1
       38 GETTABLEKS                       R1 R0 K5 ["Parent"]
       40 JUMPIFNOT                        R1 ; [+9]
       41 LOADK                            R4 K6 ["BasePart"]
       42 NAMECALL                         R2 R1 K1 ["IsA"]
       44 CALL                             R2 2 1
       45 JUMPIFNOT                        R2 ; [+1]
       46 RETURN                           R1 1
       47 GETTABLEKS                       R1 R1 K5 ["Parent"]
       49 JUMPBACK                         ; [-10]
       50 LOADNIL                          R2
       51 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Flags"]
       13 GETTABLEKS                       R1 R1 K6 ["getFFlagAdaptiveAnimationConstraints"]
       15 CALL                             R0 1 1
       16 DUPCLOSURE                       R1 K7 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1
