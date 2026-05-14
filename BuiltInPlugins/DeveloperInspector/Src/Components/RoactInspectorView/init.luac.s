PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{"Layout", "Padding", "Spacing"}]
        9 GETIMPORT                        R6 K10 [Enum.FillDirection.Horizontal]
       11 SETTABLEKS                       R6 R5 K3 ["Layout"]
       13 GETTABLEKS                       R6 R2 K4 ["Padding"]
       15 SETTABLEKS                       R6 R5 K4 ["Padding"]
       17 GETTABLEKS                       R6 R2 K4 ["Padding"]
       19 SETTABLEKS                       R6 R5 K5 ["Spacing"]
       21 DUPTABLE                         R6 K13 [{"Left", "Right"}]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K2 ["createElement"]
       25 GETUPVAL                         R8 1
       26 DUPTABLE                         R9 K16 [{"LayoutOrder", "Layout", "Size", "Spacing"}]
       27 LOADN                            R10 1
       28 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       30 GETIMPORT                        R10 K18 [Enum.FillDirection.Vertical]
       32 SETTABLEKS                       R10 R9 K3 ["Layout"]
       34 GETIMPORT                        R10 K21 [UDim2.new]
       36 LOADK                            R11 K22 [0.5]
       37 GETTABLEKS                       R13 R2 K4 ["Padding"]
       39 MINUS                            R12 R13
       40 LOADN                            R13 1
       41 LOADN                            R14 0
       42 CALL                             R10 4 1
       43 SETTABLEKS                       R10 R9 K15 ["Size"]
       45 GETTABLEKS                       R10 R2 K4 ["Padding"]
       47 SETTABLEKS                       R10 R9 K5 ["Spacing"]
       49 DUPTABLE                         R10 K25 [{"TreeContainer", "ListContainer"}]
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R11 R11 K2 ["createElement"]
       53 GETUPVAL                         R12 1
       54 DUPTABLE                         R13 K26 [{"LayoutOrder", "Size"}]
       55 LOADN                            R14 1
       56 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       58 GETIMPORT                        R14 K21 [UDim2.new]
       60 LOADN                            R15 1
       61 LOADN                            R16 0
       62 LOADN                            R17 1
       63 GETTABLEKS                       R19 R2 K27 ["NodeListHeight"]
       65 MINUS                            R18 R19
       66 CALL                             R14 4 1
       67 SETTABLEKS                       R14 R13 K15 ["Size"]
       69 DUPTABLE                         R14 K29 [{"RoactElementTree"}]
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K2 ["createElement"]
       73 GETUPVAL                         R16 2
       74 NEWTABLE                         R17 0 0
       76 CALL                             R15 2 1
       77 SETTABLEKS                       R15 R14 K28 ["RoactElementTree"]
       79 CALL                             R11 3 1
       80 SETTABLEKS                       R11 R10 K23 ["TreeContainer"]
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R11 R11 K2 ["createElement"]
       85 GETUPVAL                         R12 1
       86 DUPTABLE                         R13 K26 [{"LayoutOrder", "Size"}]
       87 LOADN                            R14 2
       88 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       90 GETIMPORT                        R14 K21 [UDim2.new]
       92 LOADN                            R15 1
       93 LOADN                            R16 0
       94 LOADN                            R17 0
       95 GETTABLEKS                       R19 R2 K27 ["NodeListHeight"]
       97 GETTABLEKS                       R20 R2 K4 ["Padding"]
       99 SUB                              R18 R19 R20
      100 CALL                             R14 4 1
      101 SETTABLEKS                       R14 R13 K15 ["Size"]
      103 DUPTABLE                         R14 K31 [{"NodeList"}]
      104 GETUPVAL                         R15 0
      105 GETTABLEKS                       R15 R15 K2 ["createElement"]
      107 GETUPVAL                         R16 3
      108 DUPTABLE                         R17 K33 [{"selectTarget"}]
      109 GETTABLEKS                       R18 R0 K32 ["selectTarget"]
      111 SETTABLEKS                       R18 R17 K32 ["selectTarget"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K30 ["NodeList"]
      116 CALL                             R11 3 1
      117 SETTABLEKS                       R11 R10 K24 ["ListContainer"]
      119 CALL                             R7 3 1
      120 SETTABLEKS                       R7 R6 K11 ["Left"]
      122 GETUPVAL                         R7 0
      123 GETTABLEKS                       R7 R7 K2 ["createElement"]
      125 GETUPVAL                         R8 1
      126 DUPTABLE                         R9 K26 [{"LayoutOrder", "Size"}]
      127 LOADN                            R10 2
      128 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
      130 GETIMPORT                        R10 K35 [UDim2.fromScale]
      132 LOADK                            R11 K22 [0.5]
      133 LOADN                            R12 1
      134 CALL                             R10 2 1
      135 SETTABLEKS                       R10 R9 K15 ["Size"]
      137 DUPTABLE                         R10 K37 [{"Child"}]
      138 GETUPVAL                         R11 0
      139 GETTABLEKS                       R11 R11 K2 ["createElement"]
      141 GETUPVAL                         R12 4
      142 NEWTABLE                         R13 0 0
      144 CALL                             R11 2 1
      145 SETTABLEKS                       R11 R10 K36 ["Child"]
      147 CALL                             R7 3 1
      148 SETTABLEKS                       R7 R6 K12 ["Right"]
      150 CALL                             R3 3 -1
      151 RETURN                           R3 -1

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
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K2 ["Parent"]
       29 GETTABLEKS                       R4 R4 K8 ["RoactElementTree"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K2 ["Parent"]
       38 GETTABLEKS                       R5 R5 K9 ["FieldsTable"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K4 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K2 ["Parent"]
       47 GETTABLEKS                       R6 R6 K10 ["NodeList"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R2 K11 ["UI"]
       52 GETTABLEKS                       R7 R6 K12 ["Pane"]
       54 GETTABLEKS                       R8 R2 K13 ["ContextServices"]
       56 GETTABLEKS                       R9 R8 K14 ["withContext"]
       58 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
       60 LOADK                            R12 K16 ["RoactInspectorView"]
       61 NAMECALL                         R10 R10 K17 ["extend"]
       63 CALL                             R10 2 1
       64 DUPCLOSURE                       R11 K18 [PROTO_0]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R11 R10 K19 ["render"]
       72 MOVE                             R11 R9
       73 DUPTABLE                         R12 K21 [{"Stylizer"}]
       74 GETTABLEKS                       R13 R8 K20 ["Stylizer"]
       76 SETTABLEKS                       R13 R12 K20 ["Stylizer"]
       78 CALL                             R11 1 1
       79 MOVE                             R12 R10
       80 CALL                             R11 1 1
       81 MOVE                             R10 R11
       82 RETURN                           R10 1
