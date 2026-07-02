PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["OkCallback"]
        8 GETTABLEKS                       R5 R1 K4 ["Text"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K15 [{["AutomaticSize"], ["Layout"], ["HorizontalAlignment"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["Size"], ["Spacing"] = 15}]
       15 GETIMPORT                        R9 K18 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       19 GETIMPORT                        R9 K21 [Enum.FillDirection.Vertical]
       21 SETTABLEKS                       R9 R8 K7 ["Layout"]
       23 GETIMPORT                        R9 K23 [Enum.HorizontalAlignment.Center]
       25 SETTABLEKS                       R9 R8 K8 ["HorizontalAlignment"]
       27 GETTABLEKS                       R9 R2 K24 ["MainBackground"]
       29 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       31 GETIMPORT                        R9 K27 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 1
       36 LOADN                            R13 0
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K12 ["Size"]
       40 DUPTABLE                         R9 K30 [{"Message", "Confirm"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K5 ["createElement"]
       44 GETUPVAL                         R11 2
       45 DUPTABLE                         R12 K37 [{["TextXAlignment"], ["BackgroundTransparency"] = 1, ["Text"], ["Size"], ["AutomaticSize"], ["TextWrapped"] = True, ["TextColor3"], ["LayoutOrder"] = 1}]
       46 GETIMPORT                        R13 K39 [Enum.TextXAlignment.Left]
       48 SETTABLEKS                       R13 R12 K31 ["TextXAlignment"]
       50 SETTABLEKS                       R5 R12 K4 ["Text"]
       52 GETIMPORT                        R13 K27 [UDim2.new]
       54 LOADN                            R14 0
       55 LOADN                            R15 400
       56 LOADN                            R16 0
       57 LOADN                            R17 0
       58 CALL                             R13 4 1
       59 SETTABLEKS                       R13 R12 K12 ["Size"]
       61 GETIMPORT                        R13 K18 [Enum.AutomaticSize.Y]
       63 SETTABLEKS                       R13 R12 K6 ["AutomaticSize"]
       65 GETTABLEKS                       R13 R2 K40 ["ErrorText"]
       67 SETTABLEKS                       R13 R12 K35 ["TextColor3"]
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K28 ["Message"]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K5 ["createElement"]
       75 GETUPVAL                         R11 3
       76 DUPTABLE                         R12 K46 [{["LayoutOrder"] = 2, ["OnClick"], ["Position"], ["Size"], ["Style"] = "PrimeTextButton", ["Text"]}]
       77 SETTABLEKS                       R4 R12 K42 ["OnClick"]
       79 GETIMPORT                        R13 K27 [UDim2.new]
       81 LOADK                            R14 K47 [0.5]
       82 LOADK                            R15 K47 [0.5]
       83 LOADN                            R16 0
       84 LOADN                            R17 0
       85 CALL                             R13 4 1
       86 SETTABLEKS                       R13 R12 K43 ["Position"]
       88 GETIMPORT                        R13 K27 [UDim2.new]
       90 LOADN                            R14 0
       91 GETTABLEKS                       R15 R2 K48 ["ButtonWidth"]
       93 LOADN                            R16 0
       94 GETTABLEKS                       R17 R2 K49 ["ButtonHeight"]
       96 CALL                             R13 4 1
       97 SETTABLEKS                       R13 R12 K12 ["Size"]
       99 LOADK                            R15 K50 ["UploadDialogContent"]
      100 LOADK                            R16 K51 ["ConfirmButton"]
      101 NAMECALL                         R13 R3 K52 ["getText"]
      103 CALL                             R13 3 1
      104 SETTABLEKS                       R13 R12 K4 ["Text"]
      106 NEWTABLE                         R13 0 1
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R14 R14 K5 ["createElement"]
      111 GETUPVAL                         R15 4
      112 DUPTABLE                         R16 K55 [{["Cursor"] = "PointingHand"}]
      113 CALL                             R14 2 -1
      114 SETLIST                          R13 R14 -1 [1]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K29 ["Confirm"]
      119 CALL                             R6 3 -1
      120 RETURN                           R6 -1

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
