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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETUPVAL                         R2 4
       13 CALL                             R2 0 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 5
       16 LOADB                            R5 0
       17 CALL                             R4 1 -1
       18 NAMECALL                         R2 R0 K2 ["dispatch"]
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Flags"]
       17 GETTABLEKS                       R2 R2 K7 ["getFFlagToolboxPublishFlowHelpers"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K9 [game]
       22 LOADK                            R4 K10 ["StudioService"]
       23 NAMECALL                         R2 R2 K11 ["GetService"]
       25 CALL                             R2 2 1
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R4 R0 K5 ["Src"]
       30 GETTABLEKS                       R4 R4 K12 ["Actions"]
       32 GETTABLEKS                       R4 R4 K13 ["ValidateAnimationResult"]
       34 CALL                             R3 1 1
       35 DUPCLOSURE                       R4 K14 [PROTO_2]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 RETURN                           R4 1
