PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Title"]
        4 GETTABLEKS                       R3 R1 K2 ["Buttons"]
        6 GETTABLEKS                       R4 R1 K3 ["OnClick"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["InitialSelectedKey"]
       12 GETTABLEKS                       R7 R1 K6 ["Stylizer"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["new"]
       17 CALL                             R8 0 1
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R9 R10 K8 ["createElement"]
       21 GETUPVAL                         R10 2
       22 DUPTABLE                         R11 K14 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       23 GETIMPORT                        R12 K17 [Enum.AutomaticSize.XY]
       25 SETTABLEKS                       R12 R11 K9 ["AutomaticSize"]
       27 SETTABLEKS                       R5 R11 K4 ["LayoutOrder"]
       29 GETIMPORT                        R12 K20 [Enum.FillDirection.Vertical]
       31 SETTABLEKS                       R12 R11 K10 ["Layout"]
       33 GETIMPORT                        R12 K22 [Enum.HorizontalAlignment.Left]
       35 SETTABLEKS                       R12 R11 K11 ["HorizontalAlignment"]
       37 GETIMPORT                        R12 K24 [Enum.VerticalAlignment.Top]
       39 SETTABLEKS                       R12 R11 K12 ["VerticalAlignment"]
       41 GETTABLEKS                       R12 R7 K25 ["HeaderPadding"]
       43 SETTABLEKS                       R12 R11 K13 ["Spacing"]
       45 DUPTABLE                         R12 K27 [{"Title", "List"}]
       46 GETUPVAL                         R14 1
       47 GETTABLEKS                       R13 R14 K8 ["createElement"]
       49 GETUPVAL                         R14 3
       50 DUPTABLE                         R15 K33 [{"TextXAlignment", "TextYAlignment", "Size", "Text", "Font", "LayoutOrder"}]
       51 GETIMPORT                        R16 K34 [Enum.TextXAlignment.Left]
       53 SETTABLEKS                       R16 R15 K28 ["TextXAlignment"]
       55 GETIMPORT                        R16 K36 [Enum.TextYAlignment.Center]
       57 SETTABLEKS                       R16 R15 K29 ["TextYAlignment"]
       59 GETIMPORT                        R16 K38 [UDim2.new]
       61 LOADN                            R17 1
       62 LOADN                            R18 0
       63 LOADN                            R19 0
       64 LOADN                            R20 24
       65 CALL                             R16 4 1
       66 SETTABLEKS                       R16 R15 K30 ["Size"]
       68 SETTABLEKS                       R2 R15 K31 ["Text"]
       70 GETTABLEKS                       R16 R7 K39 ["FontBold"]
       72 SETTABLEKS                       R16 R15 K32 ["Font"]
       74 NAMECALL                         R16 R8 K40 ["getNextOrder"]
       76 CALL                             R16 1 1
       77 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K1 ["Title"]
       82 GETUPVAL                         R14 1
       83 GETTABLEKS                       R13 R14 K8 ["createElement"]
       85 GETUPVAL                         R14 4
       86 DUPTABLE                         R15 K42 [{"Buttons", "OnClick", "LayoutOrder", "SelectedKey"}]
       87 SETTABLEKS                       R3 R15 K2 ["Buttons"]
       89 SETTABLEKS                       R4 R15 K3 ["OnClick"]
       91 NAMECALL                         R16 R8 K40 ["getNextOrder"]
       93 CALL                             R16 1 1
       94 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
       96 SETTABLEKS                       R6 R15 K41 ["SelectedKey"]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K26 ["List"]
      101 CALL                             R9 3 -1
      102 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["TextLabel"]
       31 GETTABLEKS                       R7 R5 K12 ["RadioButtonList"]
       33 GETTABLEKS                       R8 R5 K13 ["Pane"]
       35 GETTABLEKS                       R9 R2 K14 ["Util"]
       37 GETTABLEKS                       R10 R9 K15 ["LayoutOrderIterator"]
       39 GETTABLEKS                       R11 R9 K16 ["Typecheck"]
       41 GETTABLEKS                       R12 R1 K17 ["PureComponent"]
       43 LOADK                            R14 K18 ["LCERadioButtonList"]
       44 NAMECALL                         R12 R12 K19 ["extend"]
       46 CALL                             R12 2 1
       47 GETTABLEKS                       R13 R11 K20 ["wrap"]
       49 MOVE                             R14 R12
       50 GETIMPORT                        R15 K1 [script]
       52 CALL                             R13 2 0
       53 DUPCLOSURE                       R13 K21 [PROTO_0]
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R13 R12 K22 ["render"]
       61 MOVE                             R13 R4
       62 DUPTABLE                         R14 K24 [{"Stylizer"}]
       63 GETTABLEKS                       R15 R3 K23 ["Stylizer"]
       65 SETTABLEKS                       R15 R14 K23 ["Stylizer"]
       67 CALL                             R13 1 1
       68 MOVE                             R14 R12
       69 CALL                             R13 1 1
       70 MOVE                             R12 R13
       71 RETURN                           R12 1
