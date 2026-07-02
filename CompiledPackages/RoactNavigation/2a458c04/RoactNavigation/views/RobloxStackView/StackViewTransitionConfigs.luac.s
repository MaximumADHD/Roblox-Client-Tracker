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
       15 JUMPIFNOT                        R0 ; [+14]
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K2 ["assign"]
       19 GETIMPORT                        R6 K5 [table.clone]
       21 MOVE                             R7 R4
       22 CALL                             R6 1 1
       23 MOVE                             R7 R0
       24 MOVE                             R8 R1
       25 MOVE                             R9 R2
       26 MOVE                             R10 R3
       27 CALL                             R7 3 -1
       28 CALL                             R5 -1 -1
       29 RETURN                           R5 -1
       30 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETTABLEKS                       R3 R2 K2 ["Parent"]
       11 GETIMPORT                        R4 K4 [require]
       13 GETTABLEKS                       R5 R3 K5 ["LuauPolyfill"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R4 K6 ["Object"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R0 K7 ["StackViewInterpolator"]
       22 CALL                             R6 1 1
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R0 K8 ["StackPresentationStyle"]
       27 CALL                             R7 1 1
       28 DUPTABLE                         R8 K13 [{["frequency"] = 3, ["dampingRatio"] = 1}]
       29 DUPTABLE                         R9 K16 [{"transitionSpec", "screenInterpolator"}]
       30 SETTABLEKS                       R8 R9 K14 ["transitionSpec"]
       32 GETTABLEKS                       R10 R6 K17 ["forHorizontal"]
       34 SETTABLEKS                       R10 R9 K15 ["screenInterpolator"]
       36 DUPTABLE                         R10 K16 [{"transitionSpec", "screenInterpolator"}]
       37 SETTABLEKS                       R8 R10 K14 ["transitionSpec"]
       39 GETTABLEKS                       R11 R6 K18 ["forVertical"]
       41 SETTABLEKS                       R11 R10 K15 ["screenInterpolator"]
       43 DUPTABLE                         R11 K16 [{"transitionSpec", "screenInterpolator"}]
       44 SETTABLEKS                       R8 R11 K14 ["transitionSpec"]
       46 GETTABLEKS                       R12 R6 K19 ["forFade"]
       48 SETTABLEKS                       R12 R11 K15 ["screenInterpolator"]
       50 DUPCLOSURE                       R12 K20 [PROTO_0]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R9
       55 DUPCLOSURE                       R13 K21 [PROTO_1]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R5
       61 DUPTABLE                         R14 K27 [{"getDefaultTransitionConfig", "getTransitionConfig", "SlideFromRight", "ModalSlideFromBottom", "FadeInPlace"}]
       62 SETTABLEKS                       R12 R14 K22 ["getDefaultTransitionConfig"]
       64 SETTABLEKS                       R13 R14 K23 ["getTransitionConfig"]
       66 SETTABLEKS                       R9 R14 K24 ["SlideFromRight"]
       68 SETTABLEKS                       R10 R14 K25 ["ModalSlideFromBottom"]
       70 SETTABLEKS                       R11 R14 K26 ["FadeInPlace"]
       72 RETURN                           R14 1
