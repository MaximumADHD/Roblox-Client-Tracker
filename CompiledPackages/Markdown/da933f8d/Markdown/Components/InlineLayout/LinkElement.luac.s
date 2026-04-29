PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useHoverContext"]
        3 GETTABLEKS                       R2 R0 K1 ["id"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R6 R3 K2 ["Color"]
       10 GETTABLEKS                       R5 R6 K3 ["Content"]
       12 GETTABLEKS                       R4 R5 K4 ["Link"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K5 ["createElement"]
       17 GETUPVAL                         R6 3
       18 GETUPVAL                         R8 4
       19 GETTABLEKS                       R7 R8 K6 ["join"]
       21 MOVE                             R8 R0
       22 DUPTABLE                         R9 K12 [{"text", "onActivated", "isHovered", "onHover", "textStyle"}]
       23 GETTABLEKS                       R10 R0 K13 ["Text"]
       25 SETTABLEKS                       R10 R9 K7 ["text"]
       27 GETTABLEKS                       R10 R0 K14 ["OnActivated"]
       29 SETTABLEKS                       R10 R9 K8 ["onActivated"]
       31 SETTABLEKS                       R1 R9 K9 ["isHovered"]
       33 SETTABLEKS                       R2 R9 K10 ["onHover"]
       35 SETTABLEKS                       R4 R9 K11 ["textStyle"]
       37 CALL                             R7 2 -1
       38 CALL                             R5 -1 -1
       39 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 GETGLOBAL                        R2 K1 ["HoverContextWrapper"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InlineLayout"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Packages"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["Dash"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K10 ["Text"]
       30 GETTABLEKS                       R7 R4 K11 ["Hooks"]
       32 GETTABLEKS                       R6 R7 K12 ["useTokens"]
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R9 R0 K13 ["InlineLayoutElements"]
       38 GETTABLEKS                       R8 R9 K14 ["BaseTextElement"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R10 R0 K13 ["InlineLayoutElements"]
       45 GETTABLEKS                       R9 R10 K15 ["HoverContext"]
       47 CALL                             R8 1 1
       48 NEWTABLE                         R9 1 0
       50 DUPCLOSURE                       R10 K16 [PROTO_0]
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 SETGLOBAL                        R10 K17 ["HoverContextWrapper"]
       58 DUPCLOSURE                       R10 K18 [PROTO_1]
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R10 R9 K19 ["new"]
       62 RETURN                           R9 1
