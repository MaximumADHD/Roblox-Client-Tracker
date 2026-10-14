PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PartName"]
        5 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        7 GETTABLEKS                       R4 R1 K3 ["Localization"]
        9 LOADK                            R7 K4 ["Select"]
       10 LOADK                            R8 K5 ["Part"]
       11 NAMECALL                         R5 R4 K6 ["getText"]
       13 CALL                             R5 3 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K7 ["createElement"]
       17 GETUPVAL                         R7 2
       18 DUPTABLE                         R8 K12 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
       19 GETIMPORT                        R9 K15 [UDim2.new]
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 LOADN                            R12 0
       24 GETTABLEKS                       R13 R3 K16 ["TextBoxHeight"]
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K8 ["Size"]
       29 SETTABLEKS                       R0 R8 K9 ["LayoutOrder"]
       31 GETIMPORT                        R9 K20 [Enum.FillDirection.Horizontal]
       33 SETTABLEKS                       R9 R8 K10 ["Layout"]
       35 GETIMPORT                        R9 K22 [Enum.HorizontalAlignment.Left]
       37 SETTABLEKS                       R9 R8 K11 ["HorizontalAlignment"]
       39 DUPTABLE                         R9 K25 [{"TextBoxLabel", "SelectedPartBox"}]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K7 ["createElement"]
       43 GETUPVAL                         R11 3
       44 DUPTABLE                         R12 K29 [{"TextXAlignment", "TextYAlignment", "Size", "Text", "LayoutOrder"}]
       45 GETIMPORT                        R13 K30 [Enum.TextXAlignment.Left]
       47 SETTABLEKS                       R13 R12 K26 ["TextXAlignment"]
       49 GETIMPORT                        R13 K32 [Enum.TextYAlignment.Center]
       51 SETTABLEKS                       R13 R12 K27 ["TextYAlignment"]
       53 GETIMPORT                        R13 K15 [UDim2.new]
       55 LOADN                            R14 0
       56 GETTABLEKS                       R15 R3 K33 ["LabelWidth"]
       58 LOADN                            R16 1
       59 LOADN                            R17 0
       60 CALL                             R13 4 1
       61 SETTABLEKS                       R13 R12 K8 ["Size"]
       63 SETTABLEKS                       R5 R12 K28 ["Text"]
       65 ADDK                             R13 R0 K34 [1]
       66 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K23 ["TextBoxLabel"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K7 ["createElement"]
       74 GETUPVAL                         R11 4
       75 DUPTABLE                         R12 K40 [{["Enabled"] = False, ["ShouldFocus"] = False, ["Text"], ["Size"], ["LayoutOrder"], ["Style"] = "FilledRoundedBorder"}]
       76 SETTABLEKS                       R2 R12 K28 ["Text"]
       78 GETIMPORT                        R13 K15 [UDim2.new]
       80 LOADK                            R14 K41 [0.5]
       81 LOADN                            R15 0
       82 LOADN                            R16 1
       83 LOADN                            R17 0
       84 CALL                             R13 4 1
       85 SETTABLEKS                       R13 R12 K8 ["Size"]
       87 ADDK                             R13 R0 K42 [2]
       88 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       90 CALL                             R10 2 1
       91 SETTABLEKS                       R10 R9 K24 ["SelectedPartBox"]
       93 CALL                             R6 3 1
       94 GETTABLEKS                       R7 R1 K43 ["RejectionReasonText"]
       96 GETUPVAL                         R8 5
       97 CALL                             R8 0 1
       98 JUMPIFNOT                        R8 ; [+1]
       99 JUMPIF                           R7 ; [+1]
      100 RETURN                           R6 1
      101 GETUPVAL                         R8 1
      102 GETTABLEKS                       R8 R8 K7 ["createElement"]
      104 GETUPVAL                         R9 2
      105 DUPTABLE                         R10 K46 [{"AutomaticSize", "Size", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
      106 GETIMPORT                        R11 K48 [Enum.AutomaticSize.Y]
      108 SETTABLEKS                       R11 R10 K44 ["AutomaticSize"]
      110 GETIMPORT                        R11 K15 [UDim2.new]
      112 LOADN                            R12 1
      113 LOADN                            R13 0
      114 LOADN                            R14 0
      115 LOADN                            R15 0
      116 CALL                             R11 4 1
      117 SETTABLEKS                       R11 R10 K8 ["Size"]
      119 SETTABLEKS                       R0 R10 K9 ["LayoutOrder"]
      121 GETIMPORT                        R11 K50 [Enum.FillDirection.Vertical]
      123 SETTABLEKS                       R11 R10 K10 ["Layout"]
      125 GETIMPORT                        R11 K22 [Enum.HorizontalAlignment.Left]
      127 SETTABLEKS                       R11 R10 K11 ["HorizontalAlignment"]
      129 GETTABLEKS                       R11 R3 K51 ["RejectionReasonSpacing"]
      131 SETTABLEKS                       R11 R10 K45 ["Spacing"]
      133 DUPTABLE                         R11 K54 [{"Content", "RejectionReason"}]
      134 SETTABLEKS                       R6 R11 K52 ["Content"]
      136 GETUPVAL                         R12 1
      137 GETTABLEKS                       R12 R12 K7 ["createElement"]
      139 GETUPVAL                         R13 3
      140 DUPTABLE                         R14 K58 [{["Style"] = "Error", ["AutomaticSize"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["LayoutOrder"]}]
      141 GETIMPORT                        R15 K48 [Enum.AutomaticSize.Y]
      143 SETTABLEKS                       R15 R14 K44 ["AutomaticSize"]
      145 GETIMPORT                        R15 K15 [UDim2.new]
      147 LOADN                            R16 1
      148 LOADN                            R17 0
      149 LOADN                            R18 0
      150 LOADN                            R19 0
      151 CALL                             R15 4 1
      152 SETTABLEKS                       R15 R14 K8 ["Size"]
      154 SETTABLEKS                       R7 R14 K28 ["Text"]
      156 GETIMPORT                        R15 K30 [Enum.TextXAlignment.Left]
      158 SETTABLEKS                       R15 R14 K26 ["TextXAlignment"]
      160 ADDK                             R15 R0 K34 [1]
      161 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      163 CALL                             R12 2 1
      164 SETTABLEKS                       R12 R11 K53 ["RejectionReason"]
      166 CALL                             R8 3 -1
      167 RETURN                           R8 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 SETTABLEKS                       R1 R0 K0 ["renderContent"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ButtonEnabled"]
        4 GETTABLEKS                       R3 R1 K2 ["OnConfirmSelection"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 LOADK                            R7 K4 ["Select"]
        9 LOADK                            R8 K5 ["Prompt"]
       10 NAMECALL                         R5 R4 K6 ["getText"]
       12 CALL                             R5 3 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K7 ["createElement"]
       16 GETUPVAL                         R7 1
       17 DUPTABLE                         R8 K18 [{["Title"], ["PromptText"], ["NextButtonText"], ["BackButtonText"] = "", ["NextButtonEnabled"], ["HasBackButton"] = False, ["GoToNext"], ["RenderContent"]}]
       18 LOADK                            R11 K19 ["Editor"]
       19 LOADK                            R12 K4 ["Select"]
       20 NAMECALL                         R9 R4 K6 ["getText"]
       22 CALL                             R9 3 1
       23 SETTABLEKS                       R9 R8 K8 ["Title"]
       25 SETTABLEKS                       R5 R8 K9 ["PromptText"]
       27 LOADK                            R11 K20 ["Flow"]
       28 LOADK                            R12 K21 ["Next"]
       29 NAMECALL                         R9 R4 K6 ["getText"]
       31 CALL                             R9 3 1
       32 SETTABLEKS                       R9 R8 K10 ["NextButtonText"]
       34 SETTABLEKS                       R2 R8 K13 ["NextButtonEnabled"]
       36 SETTABLEKS                       R3 R8 K16 ["GoToNext"]
       38 GETTABLEKS                       R9 R0 K22 ["renderContent"]
       40 SETTABLEKS                       R9 R8 K17 ["RenderContent"]
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

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
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K5 ["Packages"]
       31 GETTABLEKS                       R6 R6 K10 ["AvatarToolsShared"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K11 ["Components"]
       36 GETTABLEKS                       R7 R6 K12 ["FlowScreenLayout"]
       38 GETTABLEKS                       R8 R2 K13 ["UI"]
       40 GETTABLEKS                       R9 R8 K14 ["TextLabel"]
       42 GETTABLEKS                       R10 R8 K15 ["DEPRECATED_TextInput"]
       44 GETTABLEKS                       R11 R8 K16 ["Pane"]
       46 GETIMPORT                        R12 K4 [require]
       48 GETTABLEKS                       R13 R0 K17 ["Src"]
       50 GETTABLEKS                       R13 R13 K18 ["Flags"]
       52 GETTABLEKS                       R13 R13 K19 ["getFFlagLayeredClothingEditorSelectionRejectionReasons"]
       54 CALL                             R12 1 1
       55 GETTABLEKS                       R13 R1 K20 ["PureComponent"]
       57 LOADK                            R15 K21 ["SelectFrame"]
       58 NAMECALL                         R13 R13 K22 ["extend"]
       60 CALL                             R13 2 1
       61 GETTABLEKS                       R14 R2 K23 ["Util"]
       63 GETTABLEKS                       R15 R14 K24 ["Typecheck"]
       65 GETTABLEKS                       R16 R15 K25 ["wrap"]
       67 MOVE                             R17 R13
       68 GETIMPORT                        R18 K1 [script]
       70 CALL                             R16 2 0
       71 DUPCLOSURE                       R16 K26 [PROTO_1]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R12
       77 SETTABLEKS                       R16 R13 K27 ["init"]
       79 DUPCLOSURE                       R16 K28 [PROTO_2]
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R16 R13 K29 ["render"]
       84 MOVE                             R16 R4
       85 DUPTABLE                         R17 K32 [{"Stylizer", "Localization"}]
       86 GETTABLEKS                       R18 R3 K30 ["Stylizer"]
       88 SETTABLEKS                       R18 R17 K30 ["Stylizer"]
       90 GETTABLEKS                       R18 R3 K31 ["Localization"]
       92 SETTABLEKS                       R18 R17 K31 ["Localization"]
       94 CALL                             R16 1 1
       95 MOVE                             R17 R13
       96 CALL                             R16 1 1
       97 MOVE                             R13 R16
       98 RETURN                           R13 1
