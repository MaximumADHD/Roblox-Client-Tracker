PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["ActionButton"]
        6 GETTABLEKS                       R3 R2 K3 ["ButtonSize"]
        8 LOADNIL                          R4
        9 GETTABLEKS                       R5 R1 K4 ["IsDisabled"]
       11 JUMPIFNOT                        R5 ; [+4]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K5 ["Disabled"]
       15 JUMP                             ; [+6]
       16 GETTABLEKS                       R5 R1 K6 ["IsPressed"]
       18 JUMPIFNOT                        R5 ; [+3]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K7 ["Pressed"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K8 ["createElement"]
       25 GETUPVAL                         R6 2
       26 DUPTABLE                         R7 K15 [{["LayoutOrder"], ["OnClick"], ["Size"], ["Style"] = "Round", ["StyleModifier"]}]
       27 GETTABLEKS                       R8 R1 K9 ["LayoutOrder"]
       29 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       31 GETTABLEKS                       R8 R1 K10 ["OnClick"]
       33 SETTABLEKS                       R8 R7 K10 ["OnClick"]
       35 SETTABLEKS                       R3 R7 K11 ["Size"]
       37 SETTABLEKS                       R4 R7 K14 ["StyleModifier"]
       39 DUPTABLE                         R8 K18 [{"Image", "Tooltip"}]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R9 R9 K8 ["createElement"]
       43 GETUPVAL                         R10 3
       44 DUPTABLE                         R11 K19 [{"Style", "StyleModifier"}]
       45 GETTABLEKS                       R12 R1 K20 ["ImageStyle"]
       47 SETTABLEKS                       R12 R11 K12 ["Style"]
       49 SETTABLEKS                       R4 R11 K14 ["StyleModifier"]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K16 ["Image"]
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R9 R9 K8 ["createElement"]
       57 GETUPVAL                         R10 4
       58 DUPTABLE                         R11 K22 [{"Text"}]
       59 GETTABLEKS                       R12 R1 K23 ["TooltipText"]
       61 SETTABLEKS                       R12 R11 K21 ["Text"]
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K17 ["Tooltip"]
       66 CALL                             R5 3 -1
       67 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K10 ["Util"]
       36 GETTABLEKS                       R5 R4 K11 ["StyleModifier"]
       38 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       40 GETTABLEKS                       R7 R6 K13 ["withContext"]
       42 GETTABLEKS                       R8 R3 K14 ["Style"]
       44 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       46 GETTABLEKS                       R9 R3 K16 ["UI"]
       48 GETTABLEKS                       R10 R9 K17 ["Button"]
       50 GETTABLEKS                       R11 R9 K18 ["Image"]
       52 GETTABLEKS                       R12 R9 K19 ["Tooltip"]
       54 GETTABLEKS                       R13 R2 K20 ["PureComponent"]
       56 LOADK                            R15 K21 ["ActionButton"]
       57 NAMECALL                         R13 R13 K22 ["extend"]
       59 CALL                             R13 2 1
       60 DUPCLOSURE                       R14 K23 [PROTO_0]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 SETTABLEKS                       R14 R13 K24 ["render"]
       68 MOVE                             R14 R7
       69 DUPTABLE                         R15 K25 [{"Stylizer"}]
       70 SETTABLEKS                       R8 R15 K15 ["Stylizer"]
       72 CALL                             R14 1 1
       73 MOVE                             R15 R13
       74 CALL                             R14 1 -1
       75 RETURN                           R14 -1
