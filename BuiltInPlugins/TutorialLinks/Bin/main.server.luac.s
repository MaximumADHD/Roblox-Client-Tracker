PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["addLinks"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeLinks"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R1 R2 K4 ["Parent"]
        9 GETTABLEKS                       R0 R1 K4 ["Parent"]
       11 GETIMPORT                        R1 K6 [require]
       13 GETTABLEKS                       R3 R0 K7 ["Packages"]
       15 GETTABLEKS                       R2 R3 K8 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K9 ["launch"]
       20 LOADK                            R3 K10 ["TutorialLinks"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K14 [game]
       31 LOADK                            R4 K15 ["StarterGui"]
       32 NAMECALL                         R2 R2 K16 ["GetService"]
       34 CALL                             R2 2 1
       35 GETIMPORT                        R3 K6 [require]
       37 GETTABLEKS                       R5 R0 K11 ["Src"]
       39 GETTABLEKS                       R4 R5 K17 ["Links"]
       41 CALL                             R3 1 1
       42 DUPCLOSURE                       R4 K18 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 GETIMPORT                        R5 K20 [pcall]
       47 MOVE                             R6 R4
       48 CALL                             R5 1 0
       49 GETIMPORT                        R6 K1 [plugin]
       51 GETTABLEKS                       R5 R6 K21 ["Unloading"]
       53 DUPCLOSURE                       R7 K22 [PROTO_1]
       54 CAPTURE                          VAL R3
       55 NAMECALL                         R5 R5 K23 ["Connect"]
       57 CALL                             R5 2 0
       58 RETURN                           R0 0
