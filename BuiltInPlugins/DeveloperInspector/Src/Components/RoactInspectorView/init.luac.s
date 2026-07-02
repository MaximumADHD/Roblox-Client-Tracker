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
       26 DUPTABLE                         R9 K17 [{["LayoutOrder"] = 1, ["Layout"], ["Size"], ["Spacing"]}]
       27 GETIMPORT                        R10 K19 [Enum.FillDirection.Vertical]
       29 SETTABLEKS                       R10 R9 K3 ["Layout"]
       31 GETIMPORT                        R10 K22 [UDim2.new]
       33 LOADK                            R11 K23 [0.5]
       34 GETTABLEKS                       R13 R2 K4 ["Padding"]
       36 MINUS                            R12 R13
       37 LOADN                            R13 1
       38 LOADN                            R14 0
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K16 ["Size"]
       42 GETTABLEKS                       R10 R2 K4 ["Padding"]
       44 SETTABLEKS                       R10 R9 K5 ["Spacing"]
       46 DUPTABLE                         R10 K26 [{"TreeContainer", "ListContainer"}]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R11 R11 K2 ["createElement"]
       50 GETUPVAL                         R12 1
       51 DUPTABLE                         R13 K27 [{["LayoutOrder"] = 1, ["Size"]}]
       52 GETIMPORT                        R14 K22 [UDim2.new]
       54 LOADN                            R15 1
       55 LOADN                            R16 0
       56 LOADN                            R17 1
       57 GETTABLEKS                       R19 R2 K28 ["NodeListHeight"]
       59 MINUS                            R18 R19
       60 CALL                             R14 4 1
       61 SETTABLEKS                       R14 R13 K16 ["Size"]
       63 DUPTABLE                         R14 K30 [{"RoactElementTree"}]
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K2 ["createElement"]
       67 GETUPVAL                         R16 2
       68 NEWTABLE                         R17 0 0
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K29 ["RoactElementTree"]
       73 CALL                             R11 3 1
       74 SETTABLEKS                       R11 R10 K24 ["TreeContainer"]
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R11 R11 K2 ["createElement"]
       79 GETUPVAL                         R12 1
       80 DUPTABLE                         R13 K32 [{["LayoutOrder"] = 2, ["Size"]}]
       81 GETIMPORT                        R14 K22 [UDim2.new]
       83 LOADN                            R15 1
       84 LOADN                            R16 0
       85 LOADN                            R17 0
       86 GETTABLEKS                       R19 R2 K28 ["NodeListHeight"]
       88 GETTABLEKS                       R20 R2 K4 ["Padding"]
       90 SUB                              R18 R19 R20
       91 CALL                             R14 4 1
       92 SETTABLEKS                       R14 R13 K16 ["Size"]
       94 DUPTABLE                         R14 K34 [{"NodeList"}]
       95 GETUPVAL                         R15 0
       96 GETTABLEKS                       R15 R15 K2 ["createElement"]
       98 GETUPVAL                         R16 3
       99 DUPTABLE                         R17 K36 [{"selectTarget"}]
      100 GETTABLEKS                       R18 R0 K35 ["selectTarget"]
      102 SETTABLEKS                       R18 R17 K35 ["selectTarget"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K33 ["NodeList"]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K25 ["ListContainer"]
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K11 ["Left"]
      113 GETUPVAL                         R7 0
      114 GETTABLEKS                       R7 R7 K2 ["createElement"]
      116 GETUPVAL                         R8 1
      117 DUPTABLE                         R9 K32 [{["LayoutOrder"] = 2, ["Size"]}]
      118 GETIMPORT                        R10 K38 [UDim2.fromScale]
      120 LOADK                            R11 K23 [0.5]
      121 LOADN                            R12 1
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K16 ["Size"]
      125 DUPTABLE                         R10 K40 [{"Child"}]
      126 GETUPVAL                         R11 0
      127 GETTABLEKS                       R11 R11 K2 ["createElement"]
      129 GETUPVAL                         R12 4
      130 NEWTABLE                         R13 0 0
      132 CALL                             R11 2 1
      133 SETTABLEKS                       R11 R10 K39 ["Child"]
      135 CALL                             R7 3 1
      136 SETTABLEKS                       R7 R6 K12 ["Right"]
      138 CALL                             R3 3 -1
      139 RETURN                           R3 -1

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
