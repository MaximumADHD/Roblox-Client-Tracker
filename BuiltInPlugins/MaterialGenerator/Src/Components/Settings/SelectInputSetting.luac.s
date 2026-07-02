PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnValueChanged"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETTABLEKS                       R2 R1 K1 ["OnValueChanged"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["itemActivated"]
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
       12 GETTABLEKS                       R3 R2 K1 ["HorizontalSpacing"]
       14 GETTABLEKS                       R4 R1 K10 ["Disabled"]
       16 GETTABLEKS                       R5 R1 K11 ["Items"]
       18 GETTABLEKS                       R6 R1 K12 ["LabelWidth"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R8 R1 K3 ["Size"]
       23 GETTABLEKS                       R9 R2 K3 ["Size"]
       25 CALL                             R7 2 1
       26 JUMPIFNOT                        R4 ; [+4]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K10 ["Disabled"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 GETTABLEKS                       R9 R1 K13 ["Value"]
       34 LOADNIL                          R10
       35 MOVE                             R11 R5
       36 LOADNIL                          R12
       37 LOADNIL                          R13
       38 FORGPREP                         R11
       39 JUMPIFNOTEQ                      R15 R9 ; [+3]
       41 MOVE                             R10 R14
       42 JUMP                             ; [+2]
       43 FORGLOOP                         R11 2 ; [-5]
       45 ADD                              R11 R6 R3
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K14 ["createElement"]
       49 GETUPVAL                         R13 3
       50 DUPTABLE                         R14 K20 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       51 GETIMPORT                        R15 K23 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R15 R14 K15 ["HorizontalAlignment"]
       55 GETIMPORT                        R15 K26 [Enum.FillDirection.Horizontal]
       57 SETTABLEKS                       R15 R14 K16 ["Layout"]
       59 GETTABLEKS                       R15 R1 K17 ["LayoutOrder"]
       61 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       63 SETTABLEKS                       R7 R14 K3 ["Size"]
       65 SETTABLEKS                       R3 R14 K18 ["Spacing"]
       67 GETIMPORT                        R15 K28 [Enum.VerticalAlignment.Top]
       69 SETTABLEKS                       R15 R14 K19 ["VerticalAlignment"]
       71 DUPTABLE                         R15 K31 [{"Label", "SelectInput"}]
       72 GETUPVAL                         R16 2
       73 GETTABLEKS                       R16 R16 K14 ["createElement"]
       75 GETUPVAL                         R17 4
       76 DUPTABLE                         R18 K36 [{["LayoutOrder"] = 1, ["Size"], ["StyleModifier"], ["Text"], ["TextXAlignment"]}]
       77 GETIMPORT                        R19 K9 [UDim2.new]
       79 LOADN                            R20 0
       80 MOVE                             R21 R6
       81 LOADN                            R22 1
       82 LOADN                            R23 0
       83 CALL                             R19 4 1
       84 SETTABLEKS                       R19 R18 K3 ["Size"]
       86 SETTABLEKS                       R8 R18 K33 ["StyleModifier"]
       88 GETTABLEKS                       R19 R1 K34 ["Text"]
       90 SETTABLEKS                       R19 R18 K34 ["Text"]
       92 GETIMPORT                        R19 K37 [Enum.TextXAlignment.Left]
       94 SETTABLEKS                       R19 R18 K35 ["TextXAlignment"]
       96 CALL                             R16 2 1
       97 SETTABLEKS                       R16 R15 K29 ["Label"]
       99 GETUPVAL                         R16 2
      100 GETTABLEKS                       R16 R16 K14 ["createElement"]
      102 GETUPVAL                         R17 5
      103 DUPTABLE                         R18 K45 [{["Enabled"], ["ErrorText"], ["Icons"], ["Items"], ["LayoutOrder"] = 2, ["OnItemActivated"], ["PlaceholderText"], ["SelectedIndex"], ["Size"]}]
      104 NOT                              R19 R4
      105 SETTABLEKS                       R19 R18 K38 ["Enabled"]
      107 GETTABLEKS                       R19 R1 K39 ["ErrorText"]
      109 SETTABLEKS                       R19 R18 K39 ["ErrorText"]
      111 GETTABLEKS                       R19 R1 K40 ["Icons"]
      113 SETTABLEKS                       R19 R18 K40 ["Icons"]
      115 GETTABLEKS                       R19 R1 K11 ["Items"]
      117 SETTABLEKS                       R19 R18 K11 ["Items"]
      119 GETTABLEKS                       R19 R0 K46 ["itemActivated"]
      121 SETTABLEKS                       R19 R18 K42 ["OnItemActivated"]
      123 GETTABLEKS                       R19 R1 K43 ["PlaceholderText"]
      125 SETTABLEKS                       R19 R18 K43 ["PlaceholderText"]
      127 SETTABLEKS                       R10 R18 K44 ["SelectedIndex"]
      129 GETIMPORT                        R19 K9 [UDim2.new]
      131 LOADN                            R20 1
      132 MINUS                            R21 R11
      133 LOADN                            R22 1
      134 LOADN                            R23 0
      135 CALL                             R19 4 1
      136 SETTABLEKS                       R19 R18 K3 ["Size"]
      138 CALL                             R16 2 1
      139 SETTABLEKS                       R16 R15 K30 ["SelectInput"]
      141 CALL                             R12 3 -1
      142 RETURN                           R12 -1

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
       35 GETTABLEKS                       R7 R6 K13 ["Pane"]
       37 GETTABLEKS                       R8 R6 K14 ["SelectInput"]
       39 GETTABLEKS                       R9 R6 K15 ["TextLabel"]
       41 GETTABLEKS                       R10 R1 K16 ["Util"]
       43 GETTABLEKS                       R11 R10 K17 ["StyleModifier"]
       45 GETTABLEKS                       R12 R10 K18 ["prioritize"]
       47 GETTABLEKS                       R13 R2 K19 ["PureComponent"]
       49 LOADK                            R15 K20 ["SelectInputSetting"]
       50 NAMECALL                         R13 R13 K21 ["extend"]
       52 CALL                             R13 2 1
       53 DUPTABLE                         R14 K24 [{["Disabled"] = False}]
       54 SETTABLEKS                       R14 R13 K25 ["defaultProps"]
       56 DUPCLOSURE                       R14 K26 [PROTO_1]
       57 SETTABLEKS                       R14 R13 K27 ["init"]
       59 DUPCLOSURE                       R14 K28 [PROTO_2]
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R14 R13 K29 ["render"]
       68 MOVE                             R14 R4
       69 DUPTABLE                         R15 K30 [{"Stylizer"}]
       70 SETTABLEKS                       R5 R15 K11 ["Stylizer"]
       72 CALL                             R14 1 1
       73 MOVE                             R15 R13
       74 CALL                             R14 1 -1
       75 RETURN                           R14 -1
