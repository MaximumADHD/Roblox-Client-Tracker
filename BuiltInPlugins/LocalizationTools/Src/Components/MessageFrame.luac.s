PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Message"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["createElement"]
        9 LOADK                            R5 K4 ["Frame"]
       10 DUPTABLE                         R6 K11 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "BackgroundColor3", "BorderColor3"}]
       11 GETIMPORT                        R7 K14 [UDim2.new]
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 GETTABLEKS                       R11 R2 K15 ["Height"]
       18 CALL                             R7 4 1
       19 SETTABLEKS                       R7 R6 K5 ["Size"]
       21 GETIMPORT                        R7 K17 [Vector2.new]
       23 LOADN                            R8 0
       24 LOADN                            R9 1
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K6 ["AnchorPoint"]
       28 GETIMPORT                        R7 K14 [UDim2.new]
       30 LOADN                            R8 0
       31 LOADN                            R9 0
       32 LOADN                            R10 1
       33 LOADN                            R11 0
       34 CALL                             R7 4 1
       35 SETTABLEKS                       R7 R6 K7 ["Position"]
       37 LOADN                            R7 0
       38 SETTABLEKS                       R7 R6 K8 ["BackgroundTransparency"]
       40 GETTABLEKS                       R7 R2 K18 ["BackgroundColor"]
       42 SETTABLEKS                       R7 R6 K9 ["BackgroundColor3"]
       44 GETTABLEKS                       R7 R2 K19 ["BorderColor"]
       46 SETTABLEKS                       R7 R6 K10 ["BorderColor3"]
       48 DUPTABLE                         R7 K22 [{"Padding", "MessageTextLabel"}]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R8 R9 K3 ["createElement"]
       52 LOADK                            R9 K23 ["UIPadding"]
       53 DUPTABLE                         R10 K25 [{"PaddingLeft"}]
       54 GETIMPORT                        R11 K27 [UDim.new]
       56 LOADN                            R12 0
       57 GETTABLEKS                       R13 R2 K20 ["Padding"]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K24 ["PaddingLeft"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K20 ["Padding"]
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R8 R9 K3 ["createElement"]
       68 GETUPVAL                         R9 1
       69 DUPTABLE                         R10 K31 [{"AutomaticSize", "Text", "TextWrapped"}]
       70 GETIMPORT                        R11 K34 [Enum.AutomaticSize.XY]
       72 SETTABLEKS                       R11 R10 K28 ["AutomaticSize"]
       74 SETTABLEKS                       R3 R10 K29 ["Text"]
       76 LOADB                            R11 1
       77 SETTABLEKS                       R11 R10 K30 ["TextWrapped"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K21 ["MessageTextLabel"]
       82 CALL                             R4 3 -1
       83 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"Message"}]
        1 GETTABLEKS                       R3 R0 K0 ["Message"]
        3 SETTABLEKS                       R3 R2 K0 ["Message"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["UI"]
       36 GETTABLEKS                       R7 R6 K12 ["TextLabel"]
       38 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       40 LOADK                            R10 K14 ["MessageFrame"]
       41 NAMECALL                         R8 R8 K15 ["extend"]
       43 CALL                             R8 2 1
       44 DUPCLOSURE                       R9 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R7
       47 SETTABLEKS                       R9 R8 K17 ["render"]
       49 MOVE                             R9 R5
       50 DUPTABLE                         R10 K19 [{"Stylizer"}]
       51 GETTABLEKS                       R11 R4 K18 ["Stylizer"]
       53 SETTABLEKS                       R11 R10 K18 ["Stylizer"]
       55 CALL                             R9 1 1
       56 MOVE                             R10 R8
       57 CALL                             R9 1 1
       58 MOVE                             R8 R9
       59 DUPCLOSURE                       R9 K20 [PROTO_1]
       60 GETTABLEKS                       R10 R2 K21 ["connect"]
       62 MOVE                             R11 R9
       63 CALL                             R10 1 1
       64 MOVE                             R11 R8
       65 CALL                             R10 1 -1
       66 RETURN                           R10 -1
