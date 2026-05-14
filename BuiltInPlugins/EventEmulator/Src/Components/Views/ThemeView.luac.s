PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"SelectedKey"}]
        2 SETTABLEKS                       R0 R3 K0 ["SelectedKey"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["Routes"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 DUPTABLE                         R8 K5 [{"Key", "Text"}]
       10 SETTABLEKS                       R5 R8 K3 ["Key"]
       12 LOADK                            R10 K6 ["Use "]
       13 MOVE                             R11 R4
       14 CONCAT                           R9 R10 R11
       15 SETTABLEKS                       R9 R8 K4 ["Text"]
       17 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       19 MOVE                             R7 R0
       20 GETIMPORT                        R6 K9 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-15]
       25 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"SelectedKey"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["SelectedKey"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["OnClick"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K5 ["createRoutes"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R1 K2 ["SelectedKey"]
        6 GETTABLEKS                       R4 R2 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R4 K4 ["Layout"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 LOADK                            R7 K6 ["Frame"]
       14 DUPTABLE                         R8 K11 [{"Size", "LayoutOrder", "BackgroundTransparency", "ZIndex"}]
       15 GETIMPORT                        R9 K14 [UDim2.new]
       17 LOADN                            R10 1
       18 LOADN                            R11 0
       19 LOADN                            R12 1
       20 LOADN                            R13 0
       21 CALL                             R9 4 1
       22 SETTABLEKS                       R9 R8 K7 ["Size"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K15 ["View"]
       27 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       29 LOADN                            R9 1
       30 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
       32 LOADN                            R9 251
       33 SETTABLEKS                       R9 R8 K10 ["ZIndex"]
       35 DUPTABLE                         R9 K18 [{"Layout", "TextInput", "Switch"}]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K5 ["createElement"]
       39 LOADK                            R11 K19 ["UIListLayout"]
       40 GETTABLEKS                       R12 R5 K20 ["Vertical"]
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K4 ["Layout"]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K5 ["createElement"]
       48 GETUPVAL                         R11 2
       49 DUPTABLE                         R12 K24 [{"Label", "Text", "OnChange", "LayoutOrder"}]
       50 LOADK                            R13 K25 ["Theme Name"]
       51 SETTABLEKS                       R13 R12 K21 ["Label"]
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R13 R13 K26 ["ThemeName"]
       56 SETTABLEKS                       R13 R12 K22 ["Text"]
       58 GETUPVAL                         R13 3
       59 GETTABLEKS                       R13 R13 K27 ["FocusLost"]
       61 SETTABLEKS                       R13 R12 K23 ["OnChange"]
       63 LOADN                            R13 1
       64 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K16 ["TextInput"]
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K5 ["createElement"]
       72 GETUPVAL                         R11 4
       73 DUPTABLE                         R12 K30 [{"Buttons", "OnClick", "SelectedKey", "LayoutOrder"}]
       74 GETTABLEKS                       R13 R0 K31 ["createRoutes"]
       76 CALL                             R13 0 1
       77 SETTABLEKS                       R13 R12 K28 ["Buttons"]
       79 GETTABLEKS                       R13 R0 K29 ["OnClick"]
       81 SETTABLEKS                       R13 R12 K29 ["OnClick"]
       83 SETTABLEKS                       R3 R12 K2 ["SelectedKey"]
       85 LOADN                            R13 2
       86 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K17 ["Switch"]
       91 CALL                             R6 3 -1
       92 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Components"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R5 K12 ["TextInput"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R2 K13 ["UI"]
       40 GETTABLEKS                       R8 R7 K14 ["RadioButtonList"]
       42 GETIMPORT                        R9 K4 [require]
       44 GETTABLEKS                       R10 R0 K10 ["Src"]
       46 GETTABLEKS                       R10 R10 K15 ["Util"]
       48 GETTABLEKS                       R10 R10 K16 ["Constants"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R10 R9 K17 ["INPUT_PANE_LAYOUT"]
       53 GETTABLEKS                       R11 R1 K18 ["PureComponent"]
       55 LOADK                            R13 K19 ["ThemeView"]
       56 NAMECALL                         R11 R11 K20 ["extend"]
       58 CALL                             R11 2 1
       59 DUPTABLE                         R12 K25 [{"Routes", "SelectedKey", "ThemeName", "FocusLost"}]
       60 NEWTABLE                         R13 0 0
       62 SETTABLEKS                       R13 R12 K21 ["Routes"]
       64 LOADK                            R13 K26 [""]
       65 SETTABLEKS                       R13 R12 K22 ["SelectedKey"]
       67 LOADK                            R13 K26 [""]
       68 SETTABLEKS                       R13 R12 K23 ["ThemeName"]
       70 DUPCLOSURE                       R13 K27 [PROTO_0]
       71 SETTABLEKS                       R13 R12 K24 ["FocusLost"]
       73 DUPCLOSURE                       R13 K28 [PROTO_3]
       74 CAPTURE                          VAL R12
       75 SETTABLEKS                       R13 R11 K29 ["init"]
       77 DUPCLOSURE                       R13 K30 [PROTO_4]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R8
       83 SETTABLEKS                       R13 R11 K31 ["render"]
       85 MOVE                             R13 R4
       86 DUPTABLE                         R14 K33 [{"Stylizer"}]
       87 GETTABLEKS                       R15 R3 K32 ["Stylizer"]
       89 SETTABLEKS                       R15 R14 K32 ["Stylizer"]
       91 CALL                             R13 1 1
       92 MOVE                             R14 R11
       93 CALL                             R13 1 1
       94 MOVE                             R11 R13
       95 RETURN                           R11 1
