PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["Enabled"]
       10 GETTABLEKS                       R6 R1 K5 ["Selected"]
       12 GETTABLEKS                       R7 R1 K6 ["OnToggle"]
       14 GETTABLEKS                       R8 R1 K7 ["Stylizer"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["new"]
       19 CALL                             R9 0 1
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R10 R11 K9 ["createElement"]
       23 GETUPVAL                         R11 2
       24 DUPTABLE                         R12 K13 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "Spacing"}]
       25 SETTABLEKS                       R2 R12 K1 ["Size"]
       27 SETTABLEKS                       R3 R12 K2 ["LayoutOrder"]
       29 GETIMPORT                        R13 K17 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R13 R12 K10 ["Layout"]
       33 GETIMPORT                        R13 K19 [Enum.HorizontalAlignment.Left]
       35 SETTABLEKS                       R13 R12 K11 ["HorizontalAlignment"]
       37 GETTABLEKS                       R13 R8 K20 ["FramePadding"]
       39 SETTABLEKS                       R13 R12 K12 ["Spacing"]
       41 DUPTABLE                         R13 K23 [{"Label", "CheckboxContainer"}]
       42 GETUPVAL                         R15 1
       43 GETTABLEKS                       R14 R15 K9 ["createElement"]
       45 GETUPVAL                         R15 3
       46 DUPTABLE                         R16 K27 [{"Text", "AutomaticSize", "LayoutOrder", "TextXAlignment"}]
       47 SETTABLEKS                       R4 R16 K24 ["Text"]
       49 GETIMPORT                        R17 K29 [Enum.AutomaticSize.XY]
       51 SETTABLEKS                       R17 R16 K25 ["AutomaticSize"]
       53 NAMECALL                         R17 R9 K30 ["getNextOrder"]
       55 CALL                             R17 1 1
       56 SETTABLEKS                       R17 R16 K2 ["LayoutOrder"]
       58 GETIMPORT                        R17 K31 [Enum.TextXAlignment.Left]
       60 SETTABLEKS                       R17 R16 K26 ["TextXAlignment"]
       62 CALL                             R14 2 1
       63 SETTABLEKS                       R14 R13 K21 ["Label"]
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R14 R15 K9 ["createElement"]
       68 GETUPVAL                         R15 2
       69 DUPTABLE                         R16 K33 [{"AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "Padding"}]
       70 GETIMPORT                        R17 K29 [Enum.AutomaticSize.XY]
       72 SETTABLEKS                       R17 R16 K25 ["AutomaticSize"]
       74 NAMECALL                         R17 R9 K30 ["getNextOrder"]
       76 CALL                             R17 1 1
       77 SETTABLEKS                       R17 R16 K2 ["LayoutOrder"]
       79 GETIMPORT                        R17 K17 [Enum.FillDirection.Horizontal]
       81 SETTABLEKS                       R17 R16 K10 ["Layout"]
       83 GETIMPORT                        R17 K35 [Enum.HorizontalAlignment.Right]
       85 SETTABLEKS                       R17 R16 K11 ["HorizontalAlignment"]
       87 DUPTABLE                         R17 K36 [{"Right"}]
       88 GETTABLEKS                       R18 R8 K20 ["FramePadding"]
       90 SETTABLEKS                       R18 R17 K34 ["Right"]
       92 SETTABLEKS                       R17 R16 K32 ["Padding"]
       94 DUPTABLE                         R17 K38 [{"CheckboxToggle"}]
       95 GETUPVAL                         R19 1
       96 GETTABLEKS                       R18 R19 K9 ["createElement"]
       98 GETUPVAL                         R19 4
       99 DUPTABLE                         R20 K41 [{"Disabled", "Selected", "OnClick", "Size"}]
      100 NOT                              R21 R5
      101 SETTABLEKS                       R21 R20 K39 ["Disabled"]
      103 SETTABLEKS                       R6 R20 K5 ["Selected"]
      105 SETTABLEKS                       R7 R20 K40 ["OnClick"]
      107 GETTABLEKS                       R21 R8 K42 ["BoxSize"]
      109 SETTABLEKS                       R21 R20 K1 ["Size"]
      111 CALL                             R18 2 1
      112 SETTABLEKS                       R18 R17 K37 ["CheckboxToggle"]
      114 CALL                             R14 3 1
      115 SETTABLEKS                       R14 R13 K22 ["CheckboxContainer"]
      117 CALL                             R10 3 -1
      118 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["UI"]
       25 GETTABLEKS                       R6 R5 K10 ["ToggleButton"]
       27 GETTABLEKS                       R7 R5 K11 ["TextLabel"]
       29 GETTABLEKS                       R8 R5 K12 ["Pane"]
       31 GETTABLEKS                       R9 R2 K13 ["Util"]
       33 GETTABLEKS                       R10 R9 K14 ["LayoutOrderIterator"]
       35 GETTABLEKS                       R11 R9 K15 ["Typecheck"]
       37 GETTABLEKS                       R12 R1 K16 ["PureComponent"]
       39 LOADK                            R14 K17 ["CheckboxSetting"]
       40 NAMECALL                         R12 R12 K18 ["extend"]
       42 CALL                             R12 2 1
       43 GETTABLEKS                       R13 R11 K19 ["wrap"]
       45 MOVE                             R14 R12
       46 GETIMPORT                        R15 K1 [script]
       48 CALL                             R13 2 0
       49 DUPCLOSURE                       R13 K20 [PROTO_0]
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 SETTABLEKS                       R13 R12 K21 ["render"]
       57 MOVE                             R13 R4
       58 DUPTABLE                         R14 K23 [{"Stylizer"}]
       59 GETTABLEKS                       R15 R3 K22 ["Stylizer"]
       61 SETTABLEKS                       R15 R14 K22 ["Stylizer"]
       63 CALL                             R13 1 1
       64 MOVE                             R14 R12
       65 CALL                             R13 1 1
       66 MOVE                             R12 R13
       67 RETURN                           R12 1
