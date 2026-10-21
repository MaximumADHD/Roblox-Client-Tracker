PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R3 K2 ["Spacing"]
        6 GETTABLEKS                       R5 R3 K3 ["DropdownWidth"]
        8 GETTABLEKS                       R6 R0 K4 ["frameRef"]
       10 NAMECALL                         R6 R6 K5 ["getValue"]
       12 CALL                             R6 1 1
       13 GETTABLEKS                       R7 R6 K6 ["RadioButtonList"]
       15 GETTABLE                         R8 R7 R1
       16 JUMPIF                           R8 ; [+1]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R9 R6 K7 ["AbsolutePosition"]
       20 GETTABLEKS                       R10 R8 K7 ["AbsolutePosition"]
       22 GETTABLEKS                       R12 R10 K8 ["Y"]
       24 GETTABLEKS                       R13 R9 K8 ["Y"]
       26 SUB                              R11 R12 R13
       27 GETTABLEKS                       R12 R8 K9 ["AbsoluteSize"]
       29 GETTABLEKS                       R14 R12 K10 ["X"]
       31 ADD                              R13 R14 R4
       32 GETIMPORT                        R14 K13 [UDim2.fromOffset]
       34 MOVE                             R15 R13
       35 MOVE                             R16 R11
       36 CALL                             R14 2 1
       37 GETIMPORT                        R15 K13 [UDim2.fromOffset]
       39 ADD                              R17 R13 R4
       40 ADD                              R16 R17 R5
       41 MOVE                             R17 R11
       42 CALL                             R15 2 1
       43 DUPTABLE                         R18 K16 [{"dropdownOffset", "subListOffset"}]
       44 SETTABLEKS                       R14 R18 K14 ["dropdownOffset"]
       46 SETTABLEKS                       R15 R18 K15 ["subListOffset"]
       48 NAMECALL                         R16 R0 K17 ["setState"]
       50 CALL                             R16 2 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnRadioButtonClick"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnRadioButtonClick"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K2 ["calculateDropdownOffset"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["onRadioButtonClick"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["InitialSelectedKey"]
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETTABLEKS                       R3 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K1 ["InitialSelectedKey"]
        9 NAMECALL                         R1 R0 K2 ["calculateDropdownOffset"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Buttons"]
        8 GETTABLEKS                       R5 R1 K4 ["InitialSelectedKey"]
       10 GETTABLEKS                       R6 R1 K5 ["SelectedIndex"]
       12 GETTABLEKS                       R7 R1 K6 ["OnItemActivated"]
       14 GETTABLEKS                       R8 R1 K7 ["Items"]
       16 GETTABLEKS                       R9 R1 K8 ["SubListItems"]
       18 GETTABLEKS                       R10 R1 K9 ["OnSubListItemActivated"]
       20 GETTABLEKS                       R11 R1 K10 ["SubListSelectedIndex"]
       22 GETUPVAL                         R12 0
       23 GETTABLEKS                       R12 R12 K11 ["createElement"]
       25 GETUPVAL                         R13 1
       26 DUPTABLE                         R14 K14 [{"Size", "LayoutOrder", "ForwardRef"}]
       27 GETIMPORT                        R15 K17 [UDim2.new]
       29 LOADN                            R16 1
       30 LOADN                            R17 0
       31 LOADN                            R18 0
       32 LOADN                            R20 2
       33 GETTABLEKS                       R21 R2 K18 ["DropdownHeight"]
       35 MUL                              R19 R20 R21
       36 CALL                             R15 4 1
       37 SETTABLEKS                       R15 R14 K12 ["Size"]
       39 SETTABLEKS                       R3 R14 K2 ["LayoutOrder"]
       41 GETTABLEKS                       R15 R0 K19 ["frameRef"]
       43 SETTABLEKS                       R15 R14 K13 ["ForwardRef"]
       45 DUPTABLE                         R15 K23 [{"RadioButtonList", "Dropdown", "SubListDropdown"}]
       46 GETUPVAL                         R16 0
       47 GETTABLEKS                       R16 R16 K11 ["createElement"]
       49 GETUPVAL                         R17 2
       50 DUPTABLE                         R18 K26 [{"Buttons", "OnClick", "SelectedKey"}]
       51 SETTABLEKS                       R4 R18 K3 ["Buttons"]
       53 GETTABLEKS                       R19 R0 K27 ["onRadioButtonClick"]
       55 SETTABLEKS                       R19 R18 K24 ["OnClick"]
       57 SETTABLEKS                       R5 R18 K25 ["SelectedKey"]
       59 CALL                             R16 2 1
       60 SETTABLEKS                       R16 R15 K20 ["RadioButtonList"]
       62 LOADB                            R16 0
       63 JUMPIFEQKNIL                     R8 ; [+28]
       65 GETUPVAL                         R16 0
       66 GETTABLEKS                       R16 R16 K11 ["createElement"]
       68 GETUPVAL                         R17 3
       69 DUPTABLE                         R18 K29 [{"Position", "Size", "Items", "OnItemActivated", "SelectedIndex"}]
       70 GETTABLEKS                       R19 R0 K30 ["state"]
       72 GETTABLEKS                       R19 R19 K31 ["dropdownOffset"]
       74 SETTABLEKS                       R19 R18 K28 ["Position"]
       76 GETIMPORT                        R19 K33 [UDim2.fromOffset]
       78 GETTABLEKS                       R20 R2 K34 ["DropdownWidth"]
       80 GETTABLEKS                       R21 R2 K18 ["DropdownHeight"]
       82 CALL                             R19 2 1
       83 SETTABLEKS                       R19 R18 K12 ["Size"]
       85 SETTABLEKS                       R8 R18 K7 ["Items"]
       87 SETTABLEKS                       R7 R18 K6 ["OnItemActivated"]
       89 SETTABLEKS                       R6 R18 K5 ["SelectedIndex"]
       91 CALL                             R16 2 1
       92 SETTABLEKS                       R16 R15 K21 ["Dropdown"]
       94 LOADB                            R16 0
       95 JUMPIFEQKNIL                     R9 ; [+28]
       97 GETUPVAL                         R16 0
       98 GETTABLEKS                       R16 R16 K11 ["createElement"]
      100 GETUPVAL                         R17 3
      101 DUPTABLE                         R18 K29 [{"Position", "Size", "Items", "OnItemActivated", "SelectedIndex"}]
      102 GETTABLEKS                       R19 R0 K30 ["state"]
      104 GETTABLEKS                       R19 R19 K35 ["subListOffset"]
      106 SETTABLEKS                       R19 R18 K28 ["Position"]
      108 GETIMPORT                        R19 K33 [UDim2.fromOffset]
      110 GETTABLEKS                       R20 R2 K34 ["DropdownWidth"]
      112 GETTABLEKS                       R21 R2 K18 ["DropdownHeight"]
      114 CALL                             R19 2 1
      115 SETTABLEKS                       R19 R18 K12 ["Size"]
      117 SETTABLEKS                       R9 R18 K7 ["Items"]
      119 SETTABLEKS                       R10 R18 K6 ["OnItemActivated"]
      121 SETTABLEKS                       R11 R18 K5 ["SelectedIndex"]
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K22 ["SubListDropdown"]
      126 CALL                             R12 3 -1
      127 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["UI"]
       25 GETTABLEKS                       R6 R5 K10 ["RadioButtonList"]
       27 GETTABLEKS                       R7 R5 K11 ["SelectInput"]
       29 GETTABLEKS                       R8 R5 K12 ["Pane"]
       31 GETTABLEKS                       R9 R1 K13 ["PureComponent"]
       33 LOADK                            R11 K14 ["RadioButtonListDropdown"]
       34 NAMECALL                         R9 R9 K15 ["extend"]
       36 CALL                             R9 2 1
       37 DUPCLOSURE                       R10 K16 [PROTO_0]
       38 SETTABLEKS                       R10 R9 K17 ["calculateDropdownOffset"]
       40 DUPCLOSURE                       R10 K18 [PROTO_2]
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R10 R9 K19 ["init"]
       44 DUPCLOSURE                       R10 K20 [PROTO_3]
       45 SETTABLEKS                       R10 R9 K21 ["didMount"]
       47 DUPCLOSURE                       R10 K22 [PROTO_4]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 SETTABLEKS                       R10 R9 K23 ["render"]
       54 MOVE                             R10 R4
       55 DUPTABLE                         R11 K25 [{"Stylizer"}]
       56 GETTABLEKS                       R12 R3 K24 ["Stylizer"]
       58 SETTABLEKS                       R12 R11 K24 ["Stylizer"]
       60 CALL                             R10 1 1
       61 MOVE                             R11 R9
       62 CALL                             R10 1 1
       63 MOVE                             R9 R10
       64 RETURN                           R9 1
