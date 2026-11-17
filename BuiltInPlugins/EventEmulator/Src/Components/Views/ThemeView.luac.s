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
        0 DUPTABLE                         R1 K2 [{[1] = }]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["OnClick"]
        7 DUPCLOSURE                       R1 K5 [PROTO_2]
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K6 ["createRoutes"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R1 K2 ["SelectedKey"]
        6 GETTABLEKS                       R4 R2 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R4 K4 ["Layout"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 LOADK                            R7 K6 ["Frame"]
       14 DUPTABLE                         R8 K13 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["ZIndex"] = -5}]
       15 GETIMPORT                        R9 K16 [UDim2.new]
       17 LOADN                            R10 1
       18 LOADN                            R11 0
       19 LOADN                            R12 1
       20 LOADN                            R13 0
       21 CALL                             R9 4 1
       22 SETTABLEKS                       R9 R8 K7 ["Size"]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K17 ["View"]
       27 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       29 DUPTABLE                         R9 K20 [{"Layout", "TextInput", "Switch"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K5 ["createElement"]
       33 LOADK                            R11 K21 ["UIListLayout"]
       34 GETTABLEKS                       R12 R5 K22 ["Vertical"]
       36 CALL                             R10 2 1
       37 SETTABLEKS                       R10 R9 K4 ["Layout"]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K5 ["createElement"]
       42 GETUPVAL                         R11 2
       43 DUPTABLE                         R12 K27 [{["Label"] = "Theme Name", ["Text"], ["OnChange"], ["LayoutOrder"] = 1}]
       44 GETUPVAL                         R13 3
       45 GETTABLEKS                       R13 R13 K28 ["ThemeName"]
       47 SETTABLEKS                       R13 R12 K25 ["Text"]
       49 GETUPVAL                         R13 3
       50 GETTABLEKS                       R13 R13 K29 ["FocusLost"]
       52 SETTABLEKS                       R13 R12 K26 ["OnChange"]
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K18 ["TextInput"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K5 ["createElement"]
       60 GETUPVAL                         R11 4
       61 DUPTABLE                         R12 K33 [{["Buttons"], ["OnClick"], ["SelectedKey"], ["LayoutOrder"] = 2}]
       62 GETTABLEKS                       R13 R0 K34 ["createRoutes"]
       64 CALL                             R13 0 1
       65 SETTABLEKS                       R13 R12 K30 ["Buttons"]
       67 GETTABLEKS                       R13 R0 K31 ["OnClick"]
       69 SETTABLEKS                       R13 R12 K31 ["OnClick"]
       71 SETTABLEKS                       R3 R12 K2 ["SelectedKey"]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K19 ["Switch"]
       76 CALL                             R6 3 -1
       77 RETURN                           R6 -1

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
       59 DUPTABLE                         R12 K26 [{["Routes"], ["SelectedKey"] = "", ["ThemeName"] = "", ["FocusLost"]}]
       60 NEWTABLE                         R13 0 0
       62 SETTABLEKS                       R13 R12 K21 ["Routes"]
       64 DUPCLOSURE                       R13 K27 [PROTO_0]
       65 SETTABLEKS                       R13 R12 K25 ["FocusLost"]
       67 DUPCLOSURE                       R13 K28 [PROTO_3]
       68 CAPTURE                          VAL R12
       69 SETTABLEKS                       R13 R11 K29 ["init"]
       71 DUPCLOSURE                       R13 K30 [PROTO_4]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R13 R11 K31 ["render"]
       79 MOVE                             R13 R4
       80 DUPTABLE                         R14 K33 [{"Stylizer"}]
       81 GETTABLEKS                       R15 R3 K32 ["Stylizer"]
       83 SETTABLEKS                       R15 R14 K32 ["Stylizer"]
       85 CALL                             R13 1 1
       86 MOVE                             R14 R11
       87 CALL                             R13 1 1
       88 MOVE                             R11 R13
       89 RETURN                           R11 1
