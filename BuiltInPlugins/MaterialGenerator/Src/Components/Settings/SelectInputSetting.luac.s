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
       18 GETTABLEKS                       R3 R2 K1 ["HorizontalSpacing"]
       20 GETTABLEKS                       R4 R1 K8 ["Disabled"]
       22 GETTABLEKS                       R5 R1 K9 ["Items"]
       24 GETTABLEKS                       R6 R1 K10 ["LabelWidth"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R8 R1 K2 ["Size"]
       29 GETTABLEKS                       R9 R2 K2 ["Size"]
       31 CALL                             R7 2 1
       32 JUMPIFNOT                        R4 ; [+4]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K8 ["Disabled"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R8
       38 GETTABLEKS                       R9 R1 K11 ["Value"]
       40 LOADNIL                          R10
       41 MOVE                             R11 R5
       42 LOADNIL                          R12
       43 LOADNIL                          R13
       44 FORGPREP                         R11
       45 JUMPIFNOTEQ                      R15 R9 ; [+3]
       47 MOVE                             R10 R14
       48 JUMP                             ; [+2]
       49 FORGLOOP                         R11 2 ; [-5]
       51 ADD                              R11 R6 R3
       52 GETUPVAL                         R12 2
       53 GETTABLEKS                       R12 R12 K12 ["createElement"]
       55 GETUPVAL                         R13 3
       56 DUPTABLE                         R14 K18 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Spacing", "VerticalAlignment"}]
       57 GETIMPORT                        R15 K21 [Enum.HorizontalAlignment.Left]
       59 SETTABLEKS                       R15 R14 K13 ["HorizontalAlignment"]
       61 GETIMPORT                        R15 K24 [Enum.FillDirection.Horizontal]
       63 SETTABLEKS                       R15 R14 K14 ["Layout"]
       65 GETTABLEKS                       R15 R1 K15 ["LayoutOrder"]
       67 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
       69 SETTABLEKS                       R7 R14 K2 ["Size"]
       71 SETTABLEKS                       R3 R14 K16 ["Spacing"]
       73 GETIMPORT                        R15 K26 [Enum.VerticalAlignment.Top]
       75 SETTABLEKS                       R15 R14 K17 ["VerticalAlignment"]
       77 DUPTABLE                         R15 K29 [{"Label", "SelectInput"}]
       78 GETUPVAL                         R16 2
       79 GETTABLEKS                       R16 R16 K12 ["createElement"]
       81 GETUPVAL                         R17 4
       82 DUPTABLE                         R18 K33 [{"LayoutOrder", "Size", "StyleModifier", "Text", "TextXAlignment"}]
       83 LOADN                            R19 1
       84 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
       86 GETIMPORT                        R19 K7 [UDim2.new]
       88 LOADN                            R20 0
       89 MOVE                             R21 R6
       90 LOADN                            R22 1
       91 LOADN                            R23 0
       92 CALL                             R19 4 1
       93 SETTABLEKS                       R19 R18 K2 ["Size"]
       95 SETTABLEKS                       R8 R18 K30 ["StyleModifier"]
       97 GETTABLEKS                       R19 R1 K31 ["Text"]
       99 SETTABLEKS                       R19 R18 K31 ["Text"]
      101 GETIMPORT                        R19 K34 [Enum.TextXAlignment.Left]
      103 SETTABLEKS                       R19 R18 K32 ["TextXAlignment"]
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K27 ["Label"]
      108 GETUPVAL                         R16 2
      109 GETTABLEKS                       R16 R16 K12 ["createElement"]
      111 GETUPVAL                         R17 5
      112 DUPTABLE                         R18 K41 [{"Enabled", "ErrorText", "Icons", "Items", "LayoutOrder", "OnItemActivated", "PlaceholderText", "SelectedIndex", "Size"}]
      113 NOT                              R19 R4
      114 SETTABLEKS                       R19 R18 K35 ["Enabled"]
      116 GETTABLEKS                       R19 R1 K36 ["ErrorText"]
      118 SETTABLEKS                       R19 R18 K36 ["ErrorText"]
      120 GETTABLEKS                       R19 R1 K37 ["Icons"]
      122 SETTABLEKS                       R19 R18 K37 ["Icons"]
      124 GETTABLEKS                       R19 R1 K9 ["Items"]
      126 SETTABLEKS                       R19 R18 K9 ["Items"]
      128 LOADN                            R19 2
      129 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      131 GETTABLEKS                       R19 R0 K42 ["itemActivated"]
      133 SETTABLEKS                       R19 R18 K38 ["OnItemActivated"]
      135 GETTABLEKS                       R19 R1 K39 ["PlaceholderText"]
      137 SETTABLEKS                       R19 R18 K39 ["PlaceholderText"]
      139 SETTABLEKS                       R10 R18 K40 ["SelectedIndex"]
      141 GETIMPORT                        R19 K7 [UDim2.new]
      143 LOADN                            R20 1
      144 MINUS                            R21 R11
      145 LOADN                            R22 1
      146 LOADN                            R23 0
      147 CALL                             R19 4 1
      148 SETTABLEKS                       R19 R18 K2 ["Size"]
      150 CALL                             R16 2 1
      151 SETTABLEKS                       R16 R15 K28 ["SelectInput"]
      153 CALL                             R12 3 -1
      154 RETURN                           R12 -1

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
       53 DUPTABLE                         R14 K23 [{"Disabled"}]
       54 LOADB                            R15 0
       55 SETTABLEKS                       R15 R14 K22 ["Disabled"]
       57 SETTABLEKS                       R14 R13 K24 ["defaultProps"]
       59 DUPCLOSURE                       R14 K25 [PROTO_1]
       60 SETTABLEKS                       R14 R13 K26 ["init"]
       62 DUPCLOSURE                       R14 K27 [PROTO_2]
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R14 R13 K28 ["render"]
       71 MOVE                             R14 R4
       72 DUPTABLE                         R15 K29 [{"Stylizer"}]
       73 SETTABLEKS                       R5 R15 K11 ["Stylizer"]
       75 CALL                             R14 1 1
       76 MOVE                             R15 R13
       77 CALL                             R14 1 -1
       78 RETURN                           R14 -1
