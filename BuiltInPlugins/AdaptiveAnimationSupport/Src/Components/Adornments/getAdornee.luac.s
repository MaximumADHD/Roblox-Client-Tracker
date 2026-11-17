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
       12 JUMPIFNOT                        R1 ; [+22]
       13 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       15 JUMPIFNOT                        R1 ; [+19]
       16 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       18 GETTABLEKS                       R1 R1 K5 ["Parent"]
       20 JUMPIFNOT                        R1 ; [+14]
       21 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       23 GETTABLEKS                       R1 R1 K5 ["Parent"]
       25 LOADK                            R3 K6 ["BasePart"]
       26 NAMECALL                         R1 R1 K1 ["IsA"]
       28 CALL                             R1 2 1
       29 JUMPIFNOT                        R1 ; [+5]
       30 GETTABLEKS                       R1 R0 K4 ["Attachment1"]
       32 GETTABLEKS                       R1 R1 K5 ["Parent"]
       34 RETURN                           R1 1
       35 GETTABLEKS                       R1 R0 K5 ["Parent"]
       37 JUMPIFNOT                        R1 ; [+9]
       38 LOADK                            R4 K6 ["BasePart"]
       39 NAMECALL                         R2 R1 K1 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+1]
       43 RETURN                           R1 1
       44 GETTABLEKS                       R1 R1 K5 ["Parent"]
       46 JUMPBACK                         ; [-10]
       47 LOADNIL                          R2
       48 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
