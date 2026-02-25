PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnHoverStart"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 4 0
        6 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        8 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       10 GETTABLEKS                       R4 R0 K3 ["Position"]
       12 SETTABLEKS                       R4 R3 K3 ["Position"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K4 ["Tag"]
       17 GETUPVAL                         R5 1
       18 LOADK                            R6 K5 ["ColorSequenceLine"]
       19 GETTABLEKS                       R8 R0 K6 ["Selected"]
       21 JUMPIFNOT                        R8 ; [+2]
       22 LOADK                            R7 K6 ["Selected"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 CALL                             R5 2 1
       26 SETTABLE                         R5 R3 R4
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K7 ["Event"]
       30 GETTABLEKS                       R4 R5 K8 ["MouseEnter"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R0
       34 SETTABLE                         R5 R3 R4
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["Packages"]
       17 GETTABLEKS                       R2 R3 K6 ["React"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Packages"]
       24 GETTABLEKS                       R3 R4 K7 ["Framework"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R2 K8 ["Styling"]
       29 GETTABLEKS                       R3 R4 K9 ["joinTags"]
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R8 R0 K10 ["Src"]
       35 GETTABLEKS                       R7 R8 K11 ["Renderers"]
       37 GETTABLEKS                       R6 R7 K12 ["SequenceRenderers"]
       39 GETTABLEKS                       R5 R6 K13 ["Types"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K14 [PROTO_1]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 RETURN                           R5 1
