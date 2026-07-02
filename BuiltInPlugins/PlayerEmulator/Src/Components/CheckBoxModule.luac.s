PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CheckBoxCallback"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ItemKey"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 SETTABLEKS                       R2 R0 K0 ["onActivated"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Enabled"]
        6 GETTABLEKS                       R4 R1 K3 ["ItemKey"]
        8 GETTABLEKS                       R5 R1 K4 ["Selected"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 LOADK                            R7 K6 ["Frame"]
       14 DUPTABLE                         R8 K10 [{["Size"], ["BackgroundTransparency"] = 1}]
       15 GETTABLEKS                       R9 R2 K11 ["CHECKBOX_FRAME_SIZE"]
       17 SETTABLEKS                       R9 R8 K7 ["Size"]
       19 DUPTABLE                         R9 K14 [{"Padding", "CheckBox"}]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K5 ["createElement"]
       23 LOADK                            R11 K15 ["UIPadding"]
       24 DUPTABLE                         R12 K17 [{"PaddingLeft"}]
       25 GETTABLEKS                       R13 R2 K18 ["LISTITEM_INDENT_LEFT"]
       27 SETTABLEKS                       R13 R12 K16 ["PaddingLeft"]
       29 CALL                             R10 2 1
       30 SETTABLEKS                       R10 R9 K12 ["Padding"]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K5 ["createElement"]
       35 GETUPVAL                         R11 1
       36 DUPTABLE                         R12 K24 [{"Checked", "Disabled", "Key", "OnClick", "Text"}]
       37 SETTABLEKS                       R5 R12 K19 ["Checked"]
       39 NOT                              R13 R3
       40 SETTABLEKS                       R13 R12 K20 ["Disabled"]
       42 SETTABLEKS                       R4 R12 K21 ["Key"]
       44 GETTABLEKS                       R13 R0 K25 ["onActivated"]
       46 SETTABLEKS                       R13 R12 K22 ["OnClick"]
       48 SETTABLEKS                       R4 R12 K23 ["Text"]
       50 CALL                             R10 2 1
       51 SETTABLEKS                       R10 R9 K13 ["CheckBox"]
       53 CALL                             R6 3 -1
       54 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Checkbox"]
       31 GETTABLEKS                       R7 R1 K12 ["PureComponent"]
       33 LOADK                            R9 K13 ["CheckBoxModule"]
       34 NAMECALL                         R7 R7 K14 ["extend"]
       36 CALL                             R7 2 1
       37 DUPCLOSURE                       R8 K15 [PROTO_1]
       38 SETTABLEKS                       R8 R7 K16 ["init"]
       40 DUPCLOSURE                       R8 K17 [PROTO_2]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R8 R7 K18 ["render"]
       45 MOVE                             R8 R4
       46 DUPTABLE                         R9 K20 [{"Stylizer"}]
       47 GETTABLEKS                       R10 R3 K19 ["Stylizer"]
       49 SETTABLEKS                       R10 R9 K19 ["Stylizer"]
       51 CALL                             R8 1 1
       52 MOVE                             R9 R7
       53 CALL                             R8 1 1
       54 MOVE                             R7 R8
       55 RETURN                           R7 1
