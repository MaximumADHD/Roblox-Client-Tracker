PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["CancelCallback"]
        8 GETTABLEKS                       R5 R1 K4 ["OkCallback"]
       10 GETTABLEKS                       R6 R1 K5 ["Text"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 DUPTABLE                         R9 K16 [{["AutomaticSize"], ["Layout"], ["HorizontalAlignment"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["Size"], ["Spacing"] = 15}]
       17 GETIMPORT                        R10 K19 [Enum.AutomaticSize.Y]
       19 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       21 GETIMPORT                        R10 K22 [Enum.FillDirection.Vertical]
       23 SETTABLEKS                       R10 R9 K8 ["Layout"]
       25 GETIMPORT                        R10 K24 [Enum.HorizontalAlignment.Center]
       27 SETTABLEKS                       R10 R9 K9 ["HorizontalAlignment"]
       29 GETTABLEKS                       R10 R2 K25 ["MainBackground"]
       31 SETTABLEKS                       R10 R9 K12 ["BackgroundColor3"]
       33 GETIMPORT                        R10 K28 [UDim2.new]
       35 LOADN                            R11 1
       36 LOADN                            R12 0
       37 LOADN                            R13 1
       38 LOADN                            R14 0
       39 CALL                             R10 4 1
       40 SETTABLEKS                       R10 R9 K13 ["Size"]
       42 DUPTABLE                         R10 K31 [{"Message", "Buttons"}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K6 ["createElement"]
       46 GETUPVAL                         R12 2
       47 DUPTABLE                         R13 K38 [{["TextXAlignment"], ["BackgroundTransparency"] = 1, ["Text"], ["Size"], ["AutomaticSize"], ["TextWrapped"] = True, ["TextColor3"], ["LayoutOrder"] = 1}]
       48 GETIMPORT                        R14 K40 [Enum.TextXAlignment.Left]
       50 SETTABLEKS                       R14 R13 K32 ["TextXAlignment"]
       52 SETTABLEKS                       R6 R13 K5 ["Text"]
       54 GETIMPORT                        R14 K28 [UDim2.new]
       56 LOADN                            R15 0
       57 LOADN                            R16 400
       58 LOADN                            R17 0
       59 LOADN                            R18 0
       60 CALL                             R14 4 1
       61 SETTABLEKS                       R14 R13 K13 ["Size"]
       63 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
       65 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
       67 GETTABLEKS                       R14 R2 K41 ["WarningText"]
       69 SETTABLEKS                       R14 R13 K36 ["TextColor3"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K29 ["Message"]
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R11 R11 K6 ["createElement"]
       77 GETUPVAL                         R12 1
       78 DUPTABLE                         R13 K44 [{["AutomaticSize"], ["Layout"], ["HorizontalAlignment"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["Size"], ["Spacing"] = 40, ["LayoutOrder"] = 2}]
       79 GETIMPORT                        R14 K19 [Enum.AutomaticSize.Y]
       81 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
       83 GETIMPORT                        R14 K46 [Enum.FillDirection.Horizontal]
       85 SETTABLEKS                       R14 R13 K8 ["Layout"]
       87 GETIMPORT                        R14 K24 [Enum.HorizontalAlignment.Center]
       89 SETTABLEKS                       R14 R13 K9 ["HorizontalAlignment"]
       91 GETTABLEKS                       R14 R2 K25 ["MainBackground"]
       93 SETTABLEKS                       R14 R13 K12 ["BackgroundColor3"]
       95 GETIMPORT                        R14 K28 [UDim2.new]
       97 LOADN                            R15 1
       98 LOADN                            R16 0
       99 LOADN                            R17 0
      100 LOADN                            R18 0
      101 CALL                             R14 4 1
      102 SETTABLEKS                       R14 R13 K13 ["Size"]
      104 DUPTABLE                         R14 K49 [{"Confirm", "Cancel"}]
      105 GETUPVAL                         R15 0
      106 GETTABLEKS                       R15 R15 K6 ["createElement"]
      108 GETUPVAL                         R16 3
      109 DUPTABLE                         R17 K53 [{["LayoutOrder"] = 1, ["OnClick"], ["Size"], ["Style"] = "PrimeTextButton", ["Text"]}]
      110 SETTABLEKS                       R5 R17 K50 ["OnClick"]
      112 GETIMPORT                        R18 K28 [UDim2.new]
      114 LOADN                            R19 0
      115 GETTABLEKS                       R20 R2 K54 ["ButtonWidth"]
      117 LOADN                            R21 0
      118 GETTABLEKS                       R22 R2 K55 ["ButtonHeight"]
      120 CALL                             R18 4 1
      121 SETTABLEKS                       R18 R17 K13 ["Size"]
      123 LOADK                            R20 K56 ["UploadDialogContent"]
      124 LOADK                            R21 K57 ["ConfirmButton"]
      125 NAMECALL                         R18 R3 K58 ["getText"]
      127 CALL                             R18 3 1
      128 SETTABLEKS                       R18 R17 K5 ["Text"]
      130 NEWTABLE                         R18 0 1
      132 GETUPVAL                         R19 0
      133 GETTABLEKS                       R19 R19 K6 ["createElement"]
      135 GETUPVAL                         R20 4
      136 DUPTABLE                         R21 K61 [{["Cursor"] = "PointingHand"}]
      137 CALL                             R19 2 -1
      138 SETLIST                          R18 R19 -1 [1]
      140 CALL                             R15 3 1
      141 SETTABLEKS                       R15 R14 K47 ["Confirm"]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K6 ["createElement"]
      146 GETUPVAL                         R16 3
      147 DUPTABLE                         R17 K63 [{["LayoutOrder"] = 2, ["OnClick"], ["Size"], ["Style"] = "TextButton", ["Text"]}]
      148 SETTABLEKS                       R4 R17 K50 ["OnClick"]
      150 GETIMPORT                        R18 K28 [UDim2.new]
      152 LOADN                            R19 0
      153 GETTABLEKS                       R20 R2 K54 ["ButtonWidth"]
      155 LOADN                            R21 0
      156 GETTABLEKS                       R22 R2 K55 ["ButtonHeight"]
      158 CALL                             R18 4 1
      159 SETTABLEKS                       R18 R17 K13 ["Size"]
      161 LOADK                            R20 K56 ["UploadDialogContent"]
      162 LOADK                            R21 K64 ["CancelButton"]
      163 NAMECALL                         R18 R3 K58 ["getText"]
      165 CALL                             R18 3 1
      166 SETTABLEKS                       R18 R17 K5 ["Text"]
      168 NEWTABLE                         R18 0 1
      170 GETUPVAL                         R19 0
      171 GETTABLEKS                       R19 R19 K6 ["createElement"]
      173 GETUPVAL                         R20 4
      174 DUPTABLE                         R21 K61 [{["Cursor"] = "PointingHand"}]
      175 CALL                             R19 2 -1
      176 SETLIST                          R18 R19 -1 [1]
      178 CALL                             R15 3 1
      179 SETTABLEKS                       R15 R14 K48 ["Cancel"]
      181 CALL                             R11 3 1
      182 SETTABLEKS                       R11 R10 K30 ["Buttons"]
      184 CALL                             R7 3 -1
      185 RETURN                           R7 -1

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
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["HoverArea"]
       33 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R9 R5 K14 ["Pane"]
       37 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
       39 LOADK                            R12 K16 ["WarningDialog"]
       40 NAMECALL                         R10 R10 K17 ["extend"]
       42 CALL                             R10 2 1
       43 DUPCLOSURE                       R11 K18 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 SETTABLEKS                       R11 R10 K19 ["render"]
       51 MOVE                             R11 R4
       52 DUPTABLE                         R12 K22 [{"Stylizer", "Localization"}]
       53 GETTABLEKS                       R13 R3 K20 ["Stylizer"]
       55 SETTABLEKS                       R13 R12 K20 ["Stylizer"]
       57 GETTABLEKS                       R13 R3 K21 ["Localization"]
       59 SETTABLEKS                       R13 R12 K21 ["Localization"]
       61 CALL                             R11 1 1
       62 MOVE                             R12 R10
       63 CALL                             R11 1 1
       64 MOVE                             R10 R11
       65 RETURN                           R10 1
