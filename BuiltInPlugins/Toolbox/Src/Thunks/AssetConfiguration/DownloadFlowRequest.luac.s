PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 JUMPIFEQKS                       R3 K0 [""] ; [+3]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R0 R0 K1 ["AnimationIdSelected"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R2 3
        9 CALL                             R2 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 4
       12 LOADB                            R5 0
       13 CALL                             R4 1 -1
       14 NAMECALL                         R2 R0 K2 ["dispatch"]
       16 CALL                             R2 -1 0
       17 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["StudioService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R0 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Actions"]
       23 GETTABLEKS                       R3 R3 K11 ["ValidateAnimationResult"]
       25 CALL                             R2 1 1
       26 DUPCLOSURE                       R3 K12 [PROTO_2]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R3 1
