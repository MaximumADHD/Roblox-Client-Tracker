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
       28 DUPTABLE                         R8 K11 [{"frequency", "dampingRatio"}]
       29 LOADN                            R9 3
       30 SETTABLEKS                       R9 R8 K9 ["frequency"]
       32 LOADN                            R9 1
       33 SETTABLEKS                       R9 R8 K10 ["dampingRatio"]
       35 DUPTABLE                         R9 K14 [{"transitionSpec", "screenInterpolator"}]
       36 SETTABLEKS                       R8 R9 K12 ["transitionSpec"]
       38 GETTABLEKS                       R10 R6 K15 ["forHorizontal"]
       40 SETTABLEKS                       R10 R9 K13 ["screenInterpolator"]
       42 DUPTABLE                         R10 K14 [{"transitionSpec", "screenInterpolator"}]
       43 SETTABLEKS                       R8 R10 K12 ["transitionSpec"]
       45 GETTABLEKS                       R11 R6 K16 ["forVertical"]
       47 SETTABLEKS                       R11 R10 K13 ["screenInterpolator"]
       49 DUPTABLE                         R11 K14 [{"transitionSpec", "screenInterpolator"}]
       50 SETTABLEKS                       R8 R11 K12 ["transitionSpec"]
       52 GETTABLEKS                       R12 R6 K17 ["forFade"]
       54 SETTABLEKS                       R12 R11 K13 ["screenInterpolator"]
       56 DUPCLOSURE                       R12 K18 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R9
       61 DUPCLOSURE                       R13 K19 [PROTO_1]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R5
       67 DUPTABLE                         R14 K25 [{"getDefaultTransitionConfig", "getTransitionConfig", "SlideFromRight", "ModalSlideFromBottom", "FadeInPlace"}]
       68 SETTABLEKS                       R12 R14 K20 ["getDefaultTransitionConfig"]
       70 SETTABLEKS                       R13 R14 K21 ["getTransitionConfig"]
       72 SETTABLEKS                       R9 R14 K22 ["SlideFromRight"]
       74 SETTABLEKS                       R10 R14 K23 ["ModalSlideFromBottom"]
       76 SETTABLEKS                       R11 R14 K24 ["FadeInPlace"]
       78 RETURN                           R14 1
