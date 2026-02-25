PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
        2 DUPTABLE                         R2 K4 [{"HorizontalSpacing", "Size", "ValueLabelWidth"}]
        3 LOADN                            R3 16
        4 SETTABLEKS                       R3 R2 K1 ["HorizontalSpacing"]
        6 GETIMPORT                        R3 K7 [UDim2.new]
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 LOADN                            R7 30
       12 CALL                             R3 4 1
       13 SETTABLEKS                       R3 R2 K2 ["Size"]
       15 LOADN                            R3 30
       16 SETTABLEKS                       R3 R2 K3 ["ValueLabelWidth"]
       18 GETTABLEKS                       R3 R1 K8 ["Disabled"]
       20 GETTABLEKS                       R4 R1 K9 ["LabelWidth"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R6 R1 K2 ["Size"]
       25 GETTABLEKS                       R7 R2 K2 ["Size"]
       27 CALL                             R5 2 1
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K8 ["Disabled"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 GETTABLEKS                       R7 R1 K10 ["Value"]
       36 LOADNIL                          R8
       37 GETTABLEKS                       R9 R1 K11 ["UseCheckbox"]
       39 JUMPIFNOT                        R9 ; [+23]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R9 R10 K12 ["createElement"]
       43 GETUPVAL                         R10 3
       44 DUPTABLE                         R11 K17 [{"Checked", "Disabled", "LayoutOrder", "OnClick", "Text"}]
       45 SETTABLEKS                       R7 R11 K13 ["Checked"]
       47 SETTABLEKS                       R3 R11 K8 ["Disabled"]
       49 LOADN                            R12 2
       50 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       52 GETTABLEKS                       R12 R0 K18 ["valueChanged"]
       54 SETTABLEKS                       R12 R11 K15 ["OnClick"]
       56 GETTABLEKS                       R12 R1 K19 ["CheckboxLabel"]
       58 SETTABLEKS                       R12 R11 K16 ["Text"]
       60 CALL                             R9 2 1
       61 MOVE                             R8 R9
       62 JUMP                             ; [+18]
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R9 R10 K12 ["createElement"]
       66 GETUPVAL                         R10 4
       67 DUPTABLE                         R11 K21 [{"Disabled", "LayoutOrder", "OnClick", "Selected"}]
       68 SETTABLEKS                       R3 R11 K8 ["Disabled"]
       70 LOADN                            R12 2
       71 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       73 GETTABLEKS                       R12 R0 K18 ["valueChanged"]
       75 SETTABLEKS                       R12 R11 K15 ["OnClick"]
       77 SETTABLEKS                       R7 R11 K20 ["Selected"]
       79 CALL                             R9 2 1
       80 MOVE                             R8 R9
       81 GETUPVAL                         R10 2
       82 GETTABLEKS                       R9 R10 K12 ["createElement"]
       84 GETUPVAL                         R10 5
       85 DUPTABLE                         R11 K26 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       86 GETIMPORT                        R12 K29 [Enum.HorizontalAlignment.Left]
       88 SETTABLEKS                       R12 R11 K22 ["HorizontalAlignment"]
       90 GETIMPORT                        R12 K32 [Enum.FillDirection.Horizontal]
       92 SETTABLEKS                       R12 R11 K23 ["Layout"]
       94 GETTABLEKS                       R12 R1 K14 ["LayoutOrder"]
       96 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       98 SETTABLEKS                       R5 R11 K2 ["Size"]
      100 GETTABLEKS                       R12 R2 K1 ["HorizontalSpacing"]
      102 SETTABLEKS                       R12 R11 K24 ["Spacing"]
      104 GETIMPORT                        R12 K34 [Enum.VerticalAlignment.Center]
      106 SETTABLEKS                       R12 R11 K25 ["VerticalAlignment"]
      108 DUPTABLE                         R12 K37 [{"Label", "Toggle"}]
      109 GETUPVAL                         R14 2
      110 GETTABLEKS                       R13 R14 K12 ["createElement"]
      112 GETUPVAL                         R14 6
      113 DUPTABLE                         R15 K40 [{"LayoutOrder", "Size", "StyleModifier", "Text", "TextXAlignment"}]
      114 LOADN                            R16 1
      115 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      117 GETIMPORT                        R16 K7 [UDim2.new]
      119 LOADN                            R17 0
      120 MOVE                             R18 R4
      121 LOADN                            R19 1
      122 LOADN                            R20 0
      123 CALL                             R16 4 1
      124 SETTABLEKS                       R16 R15 K2 ["Size"]
      126 SETTABLEKS                       R6 R15 K38 ["StyleModifier"]
      128 GETTABLEKS                       R16 R1 K16 ["Text"]
      130 SETTABLEKS                       R16 R15 K16 ["Text"]
      132 GETIMPORT                        R16 K41 [Enum.TextXAlignment.Left]
      134 SETTABLEKS                       R16 R15 K39 ["TextXAlignment"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K35 ["Label"]
      139 SETTABLEKS                       R8 R12 K36 ["Toggle"]
      141 CALL                             R9 3 -1
      142 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["React"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R6 R1 K10 ["Style"]
       31 GETTABLEKS                       R5 R6 K11 ["Stylizer"]
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
       55 DUPTABLE                         R15 K24 [{"Disabled"}]
       56 LOADB                            R16 0
       57 SETTABLEKS                       R16 R15 K23 ["Disabled"]
       59 SETTABLEKS                       R15 R14 K25 ["defaultProps"]
       61 DUPCLOSURE                       R15 K26 [PROTO_1]
       62 SETTABLEKS                       R15 R14 K27 ["init"]
       64 DUPCLOSURE                       R15 K28 [PROTO_2]
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R15 R14 K29 ["render"]
       74 MOVE                             R15 R4
       75 DUPTABLE                         R16 K30 [{"Stylizer"}]
       76 SETTABLEKS                       R5 R16 K11 ["Stylizer"]
       78 CALL                             R15 1 1
       79 MOVE                             R16 R14
       80 CALL                             R15 1 -1
       81 RETURN                           R15 -1
