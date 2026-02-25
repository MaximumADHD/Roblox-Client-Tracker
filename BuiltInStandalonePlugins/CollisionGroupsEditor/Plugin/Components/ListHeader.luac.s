PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R4 K3 ["ListHeader"]
        8 LOADNIL                          R4
        9 GETTABLEKS                       R5 R1 K4 ["SelectedGroupName"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K5 ["CursorGroupName"]
       14 JUMPIFEQ                         R5 R6 ; [+3]
       16 JUMPIFNOTEQKS                    R5 K6 [""] ; [+3]
       18 LOADK                            R4 K6 [""]
       19 JUMP                             ; [+11]
       20 LOADK                            R8 K7 ["Info"]
       21 LOADK                            R9 K8 ["CanCollideWith"]
       22 NEWTABLE                         R10 0 1
       24 MOVE                             R11 R5
       25 SETLIST                          R10 R11 1 [1]
       27 NAMECALL                         R6 R2 K9 ["getText"]
       29 CALL                             R6 4 1
       30 MOVE                             R4 R6
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K10 ["createElement"]
       34 GETUPVAL                         R7 2
       35 DUPTABLE                         R8 K15 [{"Size", "LayoutOrder", "Layout", "Padding"}]
       36 GETIMPORT                        R9 K18 [UDim2.new]
       38 LOADN                            R10 1
       39 LOADN                            R11 0
       40 LOADN                            R12 0
       41 GETUPVAL                         R14 0
       42 GETTABLEKS                       R13 R14 K19 ["GroupRowHeight"]
       44 CALL                             R9 4 1
       45 SETTABLEKS                       R9 R8 K11 ["Size"]
       47 GETTABLEKS                       R9 R1 K12 ["LayoutOrder"]
       49 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       51 GETIMPORT                        R9 K23 [Enum.FillDirection.Horizontal]
       53 SETTABLEKS                       R9 R8 K13 ["Layout"]
       55 GETTABLEKS                       R9 R3 K14 ["Padding"]
       57 SETTABLEKS                       R9 R8 K14 ["Padding"]
       59 DUPTABLE                         R9 K26 [{"GroupCountDisplay", "LabelPane"}]
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R10 R11 K10 ["createElement"]
       63 GETUPVAL                         R11 3
       64 DUPTABLE                         R12 K28 [{"GroupCount", "LayoutOrder"}]
       65 GETTABLEKS                       R13 R1 K27 ["GroupCount"]
       67 SETTABLEKS                       R13 R12 K27 ["GroupCount"]
       69 LOADN                            R13 1
       70 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K24 ["GroupCountDisplay"]
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R10 R11 K10 ["createElement"]
       78 GETUPVAL                         R11 2
       79 DUPTABLE                         R12 K30 [{"Style", "Size", "LayoutOrder", "Layout", "Padding"}]
       80 LOADK                            R13 K31 ["GroupLabel"]
       81 SETTABLEKS                       R13 R12 K29 ["Style"]
       83 GETIMPORT                        R13 K18 [UDim2.new]
       85 LOADN                            R14 1
       86 GETUPVAL                         R17 0
       87 GETTABLEKS                       R16 R17 K32 ["GroupRowWidth"]
       89 MINUS                            R15 R16
       90 LOADN                            R16 0
       91 GETUPVAL                         R18 0
       92 GETTABLEKS                       R17 R18 K19 ["GroupRowHeight"]
       94 CALL                             R13 4 1
       95 SETTABLEKS                       R13 R12 K11 ["Size"]
       97 LOADN                            R13 2
       98 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      100 GETIMPORT                        R13 K23 [Enum.FillDirection.Horizontal]
      102 SETTABLEKS                       R13 R12 K13 ["Layout"]
      104 GETTABLEKS                       R13 R3 K33 ["LabelPanePadding"]
      106 SETTABLEKS                       R13 R12 K14 ["Padding"]
      108 DUPTABLE                         R13 K35 [{"TextLabel"}]
      109 GETUPVAL                         R15 1
      110 GETTABLEKS                       R14 R15 K10 ["createElement"]
      112 GETUPVAL                         R15 4
      113 DUPTABLE                         R16 K39 [{"Size", "Text", "TextXAlignment", "TextYAlignment"}]
      114 GETIMPORT                        R17 K18 [UDim2.new]
      116 LOADN                            R18 1
      117 LOADN                            R19 0
      118 LOADN                            R20 1
      119 LOADN                            R21 0
      120 CALL                             R17 4 1
      121 SETTABLEKS                       R17 R16 K11 ["Size"]
      123 SETTABLEKS                       R4 R16 K36 ["Text"]
      125 GETIMPORT                        R17 K41 [Enum.TextXAlignment.Left]
      127 SETTABLEKS                       R17 R16 K37 ["TextXAlignment"]
      129 GETIMPORT                        R17 K43 [Enum.TextYAlignment.Center]
      131 SETTABLEKS                       R17 R16 K38 ["TextYAlignment"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K34 ["TextLabel"]
      136 CALL                             R10 3 1
      137 SETTABLEKS                       R10 R9 K25 ["LabelPane"]
      139 CALL                             R6 3 -1
      140 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETTABLEKS                       R5 R3 K13 ["UI"]
       33 GETTABLEKS                       R6 R5 K14 ["Pane"]
       35 GETTABLEKS                       R7 R5 K15 ["TextLabel"]
       37 GETIMPORT                        R8 K8 [require]
       39 GETIMPORT                        R12 K5 [script]
       41 GETTABLEKS                       R11 R12 K6 ["Parent"]
       43 GETTABLEKS                       R10 R11 K6 ["Parent"]
       45 GETTABLEKS                       R9 R10 K16 ["Constants"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K8 [require]
       50 GETIMPORT                        R12 K5 [script]
       52 GETTABLEKS                       R11 R12 K6 ["Parent"]
       54 GETTABLEKS                       R10 R11 K17 ["GroupCountDisplay"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R10 R2 K18 ["Component"]
       59 LOADK                            R12 K19 ["ListHeader"]
       60 NAMECALL                         R10 R10 K20 ["extend"]
       62 CALL                             R10 2 1
       63 DUPCLOSURE                       R11 K21 [PROTO_0]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R11 R10 K22 ["render"]
       71 GETTABLEKS                       R11 R4 K23 ["withContext"]
       73 DUPTABLE                         R12 K26 [{"Stylizer", "Localization"}]
       74 GETTABLEKS                       R13 R4 K24 ["Stylizer"]
       76 SETTABLEKS                       R13 R12 K24 ["Stylizer"]
       78 GETTABLEKS                       R13 R4 K25 ["Localization"]
       80 SETTABLEKS                       R13 R12 K25 ["Localization"]
       82 CALL                             R11 1 1
       83 MOVE                             R12 R10
       84 CALL                             R11 1 1
       85 MOVE                             R10 R11
       86 RETURN                           R10 1
