PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Modal"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+3]
        5 GETUPVAL                         R3 1
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["Overlay"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+3]
       12 GETUPVAL                         R3 2
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 3
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["Modal"]
        3 JUMPIFNOTEQ                      R3 R5 ; [+3]
        5 GETUPVAL                         R4 1
        6 JUMP                             ; [+8]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K1 ["Overlay"]
       10 JUMPIFNOTEQ                      R3 R5 ; [+3]
       12 GETUPVAL                         R4 2
       13 JUMP                             ; [+1]
       14 GETUPVAL                         R4 3
       15 JUMPIFNOT                        R0 ; [+13]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K2 ["Dictionary"]
       19 GETTABLEKS                       R5 R5 K3 ["join"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K4 ["Parent"]
       13 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       15 CALL                             R0 1 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETIMPORT                        R2 K3 [script]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K6 ["StackViewInterpolator"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R3 K3 [script]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["StackPresentationStyle"]
       33 CALL                             R2 1 1
       34 DUPTABLE                         R3 K12 [{["frequency"] = 3, ["dampingRatio"] = 1}]
       35 DUPTABLE                         R4 K15 [{"transitionSpec", "screenInterpolator"}]
       36 SETTABLEKS                       R3 R4 K13 ["transitionSpec"]
       38 GETTABLEKS                       R5 R1 K16 ["forHorizontal"]
       40 SETTABLEKS                       R5 R4 K14 ["screenInterpolator"]
       42 DUPTABLE                         R5 K15 [{"transitionSpec", "screenInterpolator"}]
       43 SETTABLEKS                       R3 R5 K13 ["transitionSpec"]
       45 GETTABLEKS                       R6 R1 K17 ["forVertical"]
       47 SETTABLEKS                       R6 R5 K14 ["screenInterpolator"]
       49 DUPTABLE                         R6 K15 [{"transitionSpec", "screenInterpolator"}]
       50 SETTABLEKS                       R3 R6 K13 ["transitionSpec"]
       52 GETTABLEKS                       R7 R1 K18 ["forFade"]
       54 SETTABLEKS                       R7 R6 K14 ["screenInterpolator"]
       56 DUPCLOSURE                       R7 K19 [PROTO_0]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 DUPCLOSURE                       R8 K20 [PROTO_1]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R0
       67 DUPTABLE                         R9 K26 [{"getDefaultTransitionConfig", "getTransitionConfig", "SlideFromRight", "ModalSlideFromBottom", "FadeInPlace"}]
       68 SETTABLEKS                       R7 R9 K21 ["getDefaultTransitionConfig"]
       70 SETTABLEKS                       R8 R9 K22 ["getTransitionConfig"]
       72 SETTABLEKS                       R4 R9 K23 ["SlideFromRight"]
       74 SETTABLEKS                       R5 R9 K24 ["ModalSlideFromBottom"]
       76 SETTABLEKS                       R6 R9 K25 ["FadeInPlace"]
       78 RETURN                           R9 1
