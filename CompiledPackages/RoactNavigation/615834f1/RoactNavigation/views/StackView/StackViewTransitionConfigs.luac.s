PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Modal"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+3]
        5 GETUPVAL                         R3 1
        6 RETURN                           R3 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["Overlay"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 GETUPVAL                         R3 2
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 3
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["Modal"]
        3 JUMPIFNOTEQ                      R3 R5 ; [+3]
        5 GETUPVAL                         R4 1
        6 JUMP                             ; [+8]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K1 ["Overlay"]
       10 JUMPIFNOTEQ                      R3 R5 ; [+3]
       12 GETUPVAL                         R4 2
       13 JUMP                             ; [+1]
       14 GETUPVAL                         R4 3
       15 JUMPIFNOT                        R0 ; [+13]
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R6 R7 K2 ["Dictionary"]
       19 GETTABLEKS                       R5 R6 K3 ["join"]
       21 MOVE                             R6 R4
       22 MOVE                             R7 R0
       23 MOVE                             R8 R1
       24 MOVE                             R9 R2
       25 MOVE                             R10 R3
       26 CALL                             R7 3 -1
       27 CALL                             R5 -1 -1
       28 RETURN                           R5 -1
       29 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R6 K3 [script]
        5 GETTABLEKS                       R5 R6 K4 ["Parent"]
        7 GETTABLEKS                       R4 R5 K4 ["Parent"]
        9 GETTABLEKS                       R3 R4 K4 ["Parent"]
       11 GETTABLEKS                       R2 R3 K4 ["Parent"]
       13 GETTABLEKS                       R1 R2 K5 ["Cryo"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETIMPORT                        R4 K3 [script]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 GETTABLEKS                       R2 R3 K6 ["StackViewInterpolator"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R5 K3 [script]
       29 GETTABLEKS                       R4 R5 K4 ["Parent"]
       31 GETTABLEKS                       R3 R4 K7 ["StackPresentationStyle"]
       33 CALL                             R2 1 1
       34 DUPTABLE                         R3 K10 [{"frequency", "dampingRatio"}]
       35 LOADN                            R4 3
       36 SETTABLEKS                       R4 R3 K8 ["frequency"]
       38 LOADN                            R4 1
       39 SETTABLEKS                       R4 R3 K9 ["dampingRatio"]
       41 DUPTABLE                         R4 K13 [{"transitionSpec", "screenInterpolator"}]
       42 SETTABLEKS                       R3 R4 K11 ["transitionSpec"]
       44 GETTABLEKS                       R5 R1 K14 ["forHorizontal"]
       46 SETTABLEKS                       R5 R4 K12 ["screenInterpolator"]
       48 DUPTABLE                         R5 K13 [{"transitionSpec", "screenInterpolator"}]
       49 SETTABLEKS                       R3 R5 K11 ["transitionSpec"]
       51 GETTABLEKS                       R6 R1 K15 ["forVertical"]
       53 SETTABLEKS                       R6 R5 K12 ["screenInterpolator"]
       55 DUPTABLE                         R6 K13 [{"transitionSpec", "screenInterpolator"}]
       56 SETTABLEKS                       R3 R6 K11 ["transitionSpec"]
       58 GETTABLEKS                       R7 R1 K16 ["forFade"]
       60 SETTABLEKS                       R7 R6 K12 ["screenInterpolator"]
       62 DUPCLOSURE                       R7 K17 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 DUPCLOSURE                       R8 K18 [PROTO_1]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R0
       73 DUPTABLE                         R9 K24 [{"getDefaultTransitionConfig", "getTransitionConfig", "SlideFromRight", "ModalSlideFromBottom", "FadeInPlace"}]
       74 SETTABLEKS                       R7 R9 K19 ["getDefaultTransitionConfig"]
       76 SETTABLEKS                       R8 R9 K20 ["getTransitionConfig"]
       78 SETTABLEKS                       R4 R9 K21 ["SlideFromRight"]
       80 SETTABLEKS                       R5 R9 K22 ["ModalSlideFromBottom"]
       82 SETTABLEKS                       R6 R9 K23 ["FadeInPlace"]
       84 RETURN                           R9 1
