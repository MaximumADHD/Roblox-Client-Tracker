PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R3 K4 ["Padding"]
       10 GETTABLEKS                       R6 R1 K5 ["OnSearchRequested"]
       12 GETTABLEKS                       R7 R1 K6 ["OnClickAddNewInstance"]
       14 GETTABLEKS                       R8 R1 K7 ["OnInstanceSelectorValidSelection"]
       16 GETTABLEKS                       R9 R1 K8 ["OnInstanceSelectorInvalidSelection"]
       18 GETTABLEKS                       R10 R1 K9 ["IsSelectedInstanceValid"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K10 ["new"]
       23 CALL                             R11 0 1
       24 GETUPVAL                         R14 1
       25 GETTABLEKS                       R14 R14 K11 ["LOCALIZATION_PROJECT_NAME"]
       27 LOADK                            R15 K12 ["PreviewTopBar"]
       28 LOADK                            R16 K13 ["Tooltip"]
       29 NAMECALL                         R12 R4 K14 ["getProjectText"]
       31 CALL                             R12 4 1
       32 GETUPVAL                         R13 2
       33 GETTABLEKS                       R13 R13 K15 ["createElement"]
       35 GETUPVAL                         R14 3
       36 DUPTABLE                         R15 K21 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
       37 GETIMPORT                        R16 K23 [UDim2.new]
       39 LOADN                            R17 1
       40 LOADN                            R18 0
       41 LOADN                            R19 0
       42 GETTABLEKS                       R20 R3 K24 ["Height"]
       44 CALL                             R16 4 1
       45 SETTABLEKS                       R16 R15 K16 ["Size"]
       47 SETTABLEKS                       R2 R15 K1 ["LayoutOrder"]
       49 GETIMPORT                        R16 K28 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R16 R15 K17 ["Layout"]
       53 GETIMPORT                        R16 K30 [Enum.HorizontalAlignment.Left]
       55 SETTABLEKS                       R16 R15 K18 ["HorizontalAlignment"]
       57 GETIMPORT                        R16 K32 [Enum.VerticalAlignment.Center]
       59 SETTABLEKS                       R16 R15 K19 ["VerticalAlignment"]
       61 SETTABLEKS                       R5 R15 K20 ["Spacing"]
       63 DUPTABLE                         R16 K34 [{"Left", "Right"}]
       64 SETTABLEKS                       R5 R16 K29 ["Left"]
       66 SETTABLEKS                       R5 R16 K33 ["Right"]
       68 SETTABLEKS                       R16 R15 K4 ["Padding"]
       70 DUPTABLE                         R16 K37 [{"AddItemButton", "SearchBarContainer"}]
       71 GETUPVAL                         R17 2
       72 GETTABLEKS                       R17 R17 K15 ["createElement"]
       74 GETUPVAL                         R18 4
       75 DUPTABLE                         R19 K38 [{"Size", "LayoutOrder", "IsSelectedInstanceValid", "Tooltip", "OnClickAddNewInstance", "OnInstanceSelectorValidSelection", "OnInstanceSelectorInvalidSelection"}]
       76 GETIMPORT                        R20 K40 [UDim2.fromOffset]
       78 GETTABLEKS                       R21 R3 K41 ["ButtonWidth"]
       80 GETTABLEKS                       R22 R3 K24 ["Height"]
       82 CALL                             R20 2 1
       83 SETTABLEKS                       R20 R19 K16 ["Size"]
       85 NAMECALL                         R20 R11 K42 ["getNextOrder"]
       87 CALL                             R20 1 1
       88 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
       90 SETTABLEKS                       R10 R19 K9 ["IsSelectedInstanceValid"]
       92 SETTABLEKS                       R12 R19 K13 ["Tooltip"]
       94 SETTABLEKS                       R7 R19 K6 ["OnClickAddNewInstance"]
       96 SETTABLEKS                       R8 R19 K7 ["OnInstanceSelectorValidSelection"]
       98 SETTABLEKS                       R9 R19 K8 ["OnInstanceSelectorInvalidSelection"]
      100 CALL                             R17 2 1
      101 SETTABLEKS                       R17 R16 K35 ["AddItemButton"]
      103 GETUPVAL                         R17 2
      104 GETTABLEKS                       R17 R17 K15 ["createElement"]
      106 GETUPVAL                         R18 3
      107 DUPTABLE                         R19 K43 [{"Size", "LayoutOrder"}]
      108 GETIMPORT                        R20 K23 [UDim2.new]
      110 LOADN                            R21 1
      111 GETTABLEKS                       R24 R3 K41 ["ButtonWidth"]
      113 MINUS                            R23 R24
      114 MULK                             R24 R5 K44 [3]
      115 SUB                              R22 R23 R24
      116 LOADN                            R23 0
      117 GETTABLEKS                       R24 R3 K24 ["Height"]
      119 CALL                             R20 4 1
      120 SETTABLEKS                       R20 R19 K16 ["Size"]
      122 NAMECALL                         R20 R11 K42 ["getNextOrder"]
      124 CALL                             R20 1 1
      125 SETTABLEKS                       R20 R19 K1 ["LayoutOrder"]
      127 DUPTABLE                         R20 K46 [{"SearchBar"}]
      128 GETUPVAL                         R21 2
      129 GETTABLEKS                       R21 R21 K15 ["createElement"]
      131 GETUPVAL                         R22 5
      132 DUPTABLE                         R23 K52 [{["PlaceholderText"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False, ["OnSearchRequested"]}]
      133 GETUPVAL                         R26 1
      134 GETTABLEKS                       R26 R26 K11 ["LOCALIZATION_PROJECT_NAME"]
      136 LOADK                            R27 K12 ["PreviewTopBar"]
      137 LOADK                            R28 K53 ["SearchBarPlaceholder"]
      138 NAMECALL                         R24 R4 K14 ["getProjectText"]
      140 CALL                             R24 4 1
      141 SETTABLEKS                       R24 R23 K47 ["PlaceholderText"]
      143 SETTABLEKS                       R6 R23 K5 ["OnSearchRequested"]
      145 CALL                             R21 2 1
      146 SETTABLEKS                       R21 R20 K45 ["SearchBar"]
      148 CALL                             R17 3 1
      149 SETTABLEKS                       R17 R16 K36 ["SearchBarContainer"]
      151 CALL                             R13 3 -1
      152 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K6 ["Components"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R3 K7 ["InstanceSelectorButton"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Resources"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R1 K9 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K10 ["ContextServices"]
       33 GETTABLEKS                       R8 R7 K11 ["withContext"]
       35 GETTABLEKS                       R9 R6 K12 ["UI"]
       37 GETTABLEKS                       R10 R9 K13 ["Pane"]
       39 GETTABLEKS                       R11 R9 K14 ["SearchBar"]
       41 GETTABLEKS                       R12 R6 K15 ["Util"]
       43 GETTABLEKS                       R13 R12 K16 ["Typecheck"]
       45 GETTABLEKS                       R14 R12 K17 ["LayoutOrderIterator"]
       47 GETTABLEKS                       R15 R2 K18 ["PureComponent"]
       49 LOADK                            R17 K19 ["PreviewTopBar"]
       50 NAMECALL                         R15 R15 K20 ["extend"]
       52 CALL                             R15 2 1
       53 GETTABLEKS                       R16 R13 K21 ["wrap"]
       55 MOVE                             R17 R15
       56 GETIMPORT                        R18 K1 [script]
       58 CALL                             R16 2 0
       59 DUPTABLE                         R16 K24 [{["LayoutOrder"] = 1}]
       60 SETTABLEKS                       R16 R15 K25 ["defaultProps"]
       62 DUPCLOSURE                       R16 K26 [PROTO_0]
       63 CAPTURE                          VAL R14
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R11
       69 SETTABLEKS                       R16 R15 K27 ["render"]
       71 MOVE                             R16 R8
       72 DUPTABLE                         R17 K30 [{"Localization", "Stylizer"}]
       73 GETTABLEKS                       R18 R7 K28 ["Localization"]
       75 SETTABLEKS                       R18 R17 K28 ["Localization"]
       77 GETTABLEKS                       R18 R7 K29 ["Stylizer"]
       79 SETTABLEKS                       R18 R17 K29 ["Stylizer"]
       81 CALL                             R16 1 1
       82 MOVE                             R17 R15
       83 CALL                             R16 1 1
       84 MOVE                             R15 R16
       85 RETURN                           R15 1
