PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useHoverContext"]
        3 GETTABLEKS                       R2 R0 K1 ["id"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 2
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K3 ["join"]
       13 MOVE                             R6 R0
       14 DUPTABLE                         R7 K6 [{"isHovered", "onHover"}]
       15 SETTABLEKS                       R1 R7 K4 ["isHovered"]
       17 SETTABLEKS                       R2 R7 K5 ["onHover"]
       19 CALL                             R5 2 -1
       20 CALL                             R3 -1 -1
       21 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETGLOBAL                        R2 K1 ["HoverContextWrapper"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["LinkText"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K2 ["UI"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["InlineLayout"]
       40 GETTABLEKS                       R5 R5 K13 ["BaseTextElement"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K10 ["Components"]
       49 GETTABLEKS                       R6 R6 K12 ["InlineLayout"]
       51 GETTABLEKS                       R6 R6 K14 ["HoverContext"]
       53 CALL                             R5 1 1
       54 NEWTABLE                         R6 1 0
       56 DUPCLOSURE                       R7 K15 [PROTO_0]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 SETGLOBAL                        R7 K16 ["HoverContextWrapper"]
       63 DUPCLOSURE                       R7 K17 [PROTO_1]
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R7 R6 K18 ["new"]
       67 RETURN                           R6 1
