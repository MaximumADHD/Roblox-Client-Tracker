PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnValueChanged"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K1 ["OnValueChanged"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["valueChanged"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K6 [{["HorizontalSpacing"] = 16, ["Size"], ["ValueLabelWidth"] = 30}]
        3 GETIMPORT                        R3 K9 [UDim2.new]
        5 LOADN                            R4 1
        6 LOADN                            R5 0
        7 LOADN                            R6 0
        8 LOADN                            R7 30
        9 CALL                             R3 4 1
       10 SETTABLEKS                       R3 R2 K3 ["Size"]
       12 GETTABLEKS                       R3 R1 K10 ["Disabled"]
       14 GETTABLEKS                       R4 R1 K11 ["LabelWidth"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R6 R1 K3 ["Size"]
       19 GETTABLEKS                       R7 R2 K3 ["Size"]
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K10 ["Disabled"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 GETTABLEKS                       R7 R1 K12 ["Value"]
       30 LOADNIL                          R8
       31 GETTABLEKS                       R9 R1 K13 ["UseCheckbox"]
       33 JUMPIFNOT                        R9 ; [+20]
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K14 ["createElement"]
       37 GETUPVAL                         R10 3
       38 DUPTABLE                         R11 K20 [{["Checked"], ["Disabled"], ["LayoutOrder"] = 2, ["OnClick"], ["Text"]}]
       39 SETTABLEKS                       R7 R11 K15 ["Checked"]
       41 SETTABLEKS                       R3 R11 K10 ["Disabled"]
       43 GETTABLEKS                       R12 R0 K21 ["valueChanged"]
       45 SETTABLEKS                       R12 R11 K18 ["OnClick"]
       47 GETTABLEKS                       R12 R1 K22 ["CheckboxLabel"]
       49 SETTABLEKS                       R12 R11 K19 ["Text"]
       51 CALL                             R9 2 1
       52 MOVE                             R8 R9
       53 JUMP                             ; [+15]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K14 ["createElement"]
       57 GETUPVAL                         R10 4
       58 DUPTABLE                         R11 K24 [{["Disabled"], ["LayoutOrder"] = 2, ["OnClick"], ["Selected"]}]
       59 SETTABLEKS                       R3 R11 K10 ["Disabled"]
       61 GETTABLEKS                       R12 R0 K21 ["valueChanged"]
       63 SETTABLEKS                       R12 R11 K18 ["OnClick"]
       65 SETTABLEKS                       R7 R11 K23 ["Selected"]
       67 CALL                             R9 2 1
       68 MOVE                             R8 R9
       69 GETUPVAL                         R9 2
       70 GETTABLEKS                       R9 R9 K14 ["createElement"]
       72 GETUPVAL                         R10 5
       73 DUPTABLE                         R11 K29 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       74 GETIMPORT                        R12 K32 [Enum.HorizontalAlignment.Left]
       76 SETTABLEKS                       R12 R11 K25 ["HorizontalAlignment"]
       78 GETIMPORT                        R12 K35 [Enum.FillDirection.Horizontal]
       80 SETTABLEKS                       R12 R11 K26 ["Layout"]
       82 GETTABLEKS                       R12 R1 K16 ["LayoutOrder"]
       84 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
       86 SETTABLEKS                       R5 R11 K3 ["Size"]
       88 GETTABLEKS                       R12 R2 K1 ["HorizontalSpacing"]
       90 SETTABLEKS                       R12 R11 K27 ["Spacing"]
       92 GETIMPORT                        R12 K37 [Enum.VerticalAlignment.Center]
       94 SETTABLEKS                       R12 R11 K28 ["VerticalAlignment"]
       96 DUPTABLE                         R12 K40 [{"Label", "Toggle"}]
       97 GETUPVAL                         R13 2
       98 GETTABLEKS                       R13 R13 K14 ["createElement"]
      100 GETUPVAL                         R14 6
      101 DUPTABLE                         R15 K44 [{["LayoutOrder"] = 1, ["Size"], ["StyleModifier"], ["Text"], ["TextXAlignment"]}]
      102 GETIMPORT                        R16 K9 [UDim2.new]
      104 LOADN                            R17 0
      105 MOVE                             R18 R4
      106 LOADN                            R19 1
      107 LOADN                            R20 0
      108 CALL                             R16 4 1
      109 SETTABLEKS                       R16 R15 K3 ["Size"]
      111 SETTABLEKS                       R6 R15 K42 ["StyleModifier"]
      113 GETTABLEKS                       R16 R1 K19 ["Text"]
      115 SETTABLEKS                       R16 R15 K19 ["Text"]
      117 GETIMPORT                        R16 K45 [Enum.TextXAlignment.Left]
      119 SETTABLEKS                       R16 R15 K43 ["TextXAlignment"]
      121 CALL                             R13 2 1
      122 SETTABLEKS                       R13 R12 K38 ["Label"]
      124 SETTABLEKS                       R8 R12 K39 ["Toggle"]
      126 CALL                             R9 3 -1
      127 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["React"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R1 K10 ["Style"]
       31 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       33 GETTABLEKS                       R6 R1 K12 ["UI"]
       35 GETTABLEKS                       R7 R6 K13 ["Checkbox"]
       37 GETTABLEKS                       R8 R6 K14 ["Pane"]
       39 GETTABLEKS                       R9 R6 K15 ["TextLabel"]
       41 GETTABLEKS                       R10 R6 K16 ["ToggleButton"]
       43 GETTABLEKS                       R11 R1 K17 ["Util"]
       45 GETTABLEKS                       R12 R11 K18 ["StyleModifier"]
       47 GETTABLEKS                       R13 R11 K19 ["prioritize"]
       49 GETTABLEKS                       R14 R2 K20 ["PureComponent"]
       51 LOADK                            R16 K21 ["ToggleButtonSetting"]
       52 NAMECALL                         R14 R14 K22 ["extend"]
       54 CALL                             R14 2 1
       55 DUPTABLE                         R15 K25 [{["Disabled"] = False}]
       56 SETTABLEKS                       R15 R14 K26 ["defaultProps"]
       58 DUPCLOSURE                       R15 K27 [PROTO_1]
       59 SETTABLEKS                       R15 R14 K28 ["init"]
       61 DUPCLOSURE                       R15 K29 [PROTO_2]
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 SETTABLEKS                       R15 R14 K30 ["render"]
       71 MOVE                             R15 R4
       72 DUPTABLE                         R16 K31 [{"Stylizer"}]
       73 SETTABLEKS                       R5 R16 K11 ["Stylizer"]
       75 CALL                             R15 1 1
       76 MOVE                             R16 R14
       77 CALL                             R15 1 -1
       78 RETURN                           R15 -1
