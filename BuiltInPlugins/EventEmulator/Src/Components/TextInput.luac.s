PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Label"]
        4 GETTABLEKS                       R4 R1 K3 ["Text"]
        6 ORK                              R3 R4 K2 [""]
        7 GETTABLEKS                       R4 R1 K4 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R1 K5 ["OnChange"]
       11 GETTABLEKS                       R6 R1 K6 ["Stylizer"]
       13 GETTABLEKS                       R7 R6 K7 ["Sizes"]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K8 ["createElement"]
       18 GETUPVAL                         R9 1
       19 DUPTABLE                         R10 K10 [{"Title", "LayoutOrder"}]
       20 SETTABLEKS                       R2 R10 K9 ["Title"]
       22 SETTABLEKS                       R4 R10 K4 ["LayoutOrder"]
       24 DUPTABLE                         R11 K12 [{"TextBox"}]
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R12 R13 K8 ["createElement"]
       28 GETUPVAL                         R13 2
       29 DUPTABLE                         R14 K16 [{"Size", "Position", "Text", "OnTextChanged"}]
       30 GETIMPORT                        R15 K19 [UDim2.fromOffset]
       32 GETTABLEKS                       R16 R7 K20 ["TextBoxWidth"]
       34 GETTABLEKS                       R17 R7 K21 ["ShortHeight"]
       36 CALL                             R15 2 1
       37 SETTABLEKS                       R15 R14 K13 ["Size"]
       39 GETIMPORT                        R15 K23 [UDim2.new]
       41 LOADK                            R16 K24 [0.1]
       42 LOADN                            R17 0
       43 LOADN                            R18 0
       44 LOADN                            R19 0
       45 CALL                             R15 4 1
       46 SETTABLEKS                       R15 R14 K14 ["Position"]
       48 SETTABLEKS                       R3 R14 K3 ["Text"]
       50 SETTABLEKS                       R5 R14 K15 ["OnTextChanged"]
       52 CALL                             R12 2 1
       53 SETTABLEKS                       R12 R11 K11 ["TextBox"]
       55 CALL                             R8 3 -1
       56 RETURN                           R8 -1

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
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["TextInput"]
       31 GETTABLEKS                       R7 R5 K12 ["TitledFrame"]
       33 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       35 LOADK                            R10 K11 ["TextInput"]
       36 NAMECALL                         R8 R8 K14 ["extend"]
       38 CALL                             R8 2 1
       39 DUPCLOSURE                       R9 K15 [PROTO_0]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R9 R8 K16 ["render"]
       45 MOVE                             R9 R4
       46 DUPTABLE                         R10 K18 [{"Stylizer"}]
       47 GETTABLEKS                       R11 R3 K17 ["Stylizer"]
       49 SETTABLEKS                       R11 R10 K17 ["Stylizer"]
       51 CALL                             R9 1 1
       52 MOVE                             R10 R8
       53 CALL                             R9 1 1
       54 MOVE                             R8 R9
       55 RETURN                           R8 1
