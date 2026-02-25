PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OkCallback"]
        8 GETTABLEKS                       R5 R1 K4 ["Text"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K13 [{"AutomaticSize", "Layout", "HorizontalAlignment", "BackgroundTransparency", "BackgroundColor3", "Size", "Spacing"}]
       15 GETIMPORT                        R9 K16 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       19 GETIMPORT                        R9 K19 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R9 R8 K7 ["Layout"]
       23 GETIMPORT                        R9 K21 [Enum.HorizontalAlignment.Center]
       25 SETTABLEKS                       R9 R8 K8 ["HorizontalAlignment"]
       27 LOADN                            R9 0
       28 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
       30 GETTABLEKS                       R9 R2 K22 ["MainBackground"]
       32 SETTABLEKS                       R9 R8 K10 ["BackgroundColor3"]
       34 GETIMPORT                        R9 K25 [UDim2.new]
       36 LOADN                            R10 1
       37 LOADN                            R11 0
       38 LOADN                            R12 1
       39 LOADN                            R13 0
       40 CALL                             R9 4 1
       41 SETTABLEKS                       R9 R8 K11 ["Size"]
       43 LOADN                            R9 15
       44 SETTABLEKS                       R9 R8 K12 ["Spacing"]
       46 DUPTABLE                         R9 K28 [{"Message", "Confirm"}]
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R10 R11 K5 ["createElement"]
       50 GETUPVAL                         R11 2
       51 DUPTABLE                         R12 K33 [{"TextXAlignment", "BackgroundTransparency", "Text", "Size", "AutomaticSize", "TextWrapped", "TextColor3", "LayoutOrder"}]
       52 GETIMPORT                        R13 K35 [Enum.TextXAlignment.Left]
       54 SETTABLEKS                       R13 R12 K29 ["TextXAlignment"]
       56 LOADN                            R13 1
       57 SETTABLEKS                       R13 R12 K9 ["BackgroundTransparency"]
       59 SETTABLEKS                       R5 R12 K4 ["Text"]
       61 GETIMPORT                        R13 K25 [UDim2.new]
       63 LOADN                            R14 0
       64 LOADN                            R15 144
       65 LOADN                            R16 0
       66 LOADN                            R17 0
       67 CALL                             R13 4 1
       68 SETTABLEKS                       R13 R12 K11 ["Size"]
       70 GETIMPORT                        R13 K16 [Enum.AutomaticSize.Y]
       72 SETTABLEKS                       R13 R12 K6 ["AutomaticSize"]
       74 LOADB                            R13 1
       75 SETTABLEKS                       R13 R12 K30 ["TextWrapped"]
       77 GETTABLEKS                       R13 R2 K36 ["ErrorText"]
       79 SETTABLEKS                       R13 R12 K31 ["TextColor3"]
       81 LOADN                            R13 1
       82 SETTABLEKS                       R13 R12 K32 ["LayoutOrder"]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K26 ["Message"]
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R10 R11 K5 ["createElement"]
       90 GETUPVAL                         R11 3
       91 DUPTABLE                         R12 K40 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
       92 LOADN                            R13 2
       93 SETTABLEKS                       R13 R12 K32 ["LayoutOrder"]
       95 SETTABLEKS                       R4 R12 K37 ["OnClick"]
       97 GETIMPORT                        R13 K25 [UDim2.new]
       99 LOADK                            R14 K41 [0.5]
      100 LOADK                            R15 K41 [0.5]
      101 LOADN                            R16 0
      102 LOADN                            R17 0
      103 CALL                             R13 4 1
      104 SETTABLEKS                       R13 R12 K38 ["Position"]
      106 GETIMPORT                        R13 K25 [UDim2.new]
      108 LOADN                            R14 0
      109 GETTABLEKS                       R15 R2 K42 ["ButtonWidth"]
      111 LOADN                            R16 0
      112 GETTABLEKS                       R17 R2 K43 ["ButtonHeight"]
      114 CALL                             R13 4 1
      115 SETTABLEKS                       R13 R12 K11 ["Size"]
      117 LOADK                            R13 K44 ["PrimeTextButton"]
      118 SETTABLEKS                       R13 R12 K39 ["Style"]
      120 LOADK                            R15 K45 ["UploadDialogContent"]
      121 LOADK                            R16 K46 ["ConfirmButton"]
      122 NAMECALL                         R13 R3 K47 ["getText"]
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K4 ["Text"]
      127 NEWTABLE                         R13 0 1
      129 GETUPVAL                         R15 0
      130 GETTABLEKS                       R14 R15 K5 ["createElement"]
      132 GETUPVAL                         R15 4
      133 DUPTABLE                         R16 K49 [{"Cursor"}]
      134 LOADK                            R17 K50 ["PointingHand"]
      135 SETTABLEKS                       R17 R16 K48 ["Cursor"]
      137 CALL                             R14 2 -1
      138 SETLIST                          R13 R14 -1 [1]
      140 CALL                             R10 3 1
      141 SETTABLEKS                       R10 R9 K27 ["Confirm"]
      143 CALL                             R6 3 -1
      144 RETURN                           R6 -1

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
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["HoverArea"]
       33 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R9 R5 K14 ["Pane"]
       37 GETTABLEKS                       R10 R1 K15 ["PureComponent"]
       39 LOADK                            R12 K16 ["ErrorDialog"]
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
