PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 JUMPIFNOTEQKB                    R0 TRUE ; [+5]
        5 GETTABLEKS                       R2 R1 K1 ["OnAccepted"]
        7 CALL                             R2 0 0
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R1 K2 ["OnCanceled"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onButtonPressed"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AcceptText"]
        4 GETTABLEKS                       R3 R1 K2 ["CancelText"]
        6 GETTABLEKS                       R4 R1 K3 ["Description"]
        8 GETTABLEKS                       R5 R1 K4 ["Enabled"]
       10 GETTABLEKS                       R6 R1 K5 ["Heading"]
       12 GETTABLEKS                       R7 R1 K6 ["OnCanceled"]
       14 GETTABLEKS                       R8 R1 K7 ["Title"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["new"]
       19 CALL                             R9 0 1
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R10 R10 K9 ["createElement"]
       23 GETUPVAL                         R11 2
       24 DUPTABLE                         R12 K18 [{["Buttons"], ["Enabled"], ["MinContentSize"], ["Modal"] = True, ["OnButtonPressed"], ["OnClose"], ["Style"] = "AssetConfigWarningDialog", ["Title"]}]
       25 NEWTABLE                         R13 0 2
       27 DUPTABLE                         R14 K22 [{["Key"] = False, ["Text"]}]
       28 SETTABLEKS                       R3 R14 K21 ["Text"]
       30 DUPTABLE                         R15 K23 [{["Key"] = True, ["Text"]}]
       31 SETTABLEKS                       R2 R15 K21 ["Text"]
       33 SETLIST                          R13 R14 2 [1]
       35 SETTABLEKS                       R13 R12 K10 ["Buttons"]
       37 JUMPIFEQKB                       R5 TRUE ; [+2]
       39 LOADB                            R13 0 +1
       40 LOADB                            R13 1
       41 SETTABLEKS                       R13 R12 K4 ["Enabled"]
       43 GETUPVAL                         R13 3
       44 SETTABLEKS                       R13 R12 K11 ["MinContentSize"]
       46 GETTABLEKS                       R13 R0 K24 ["onButtonPressed"]
       48 SETTABLEKS                       R13 R12 K14 ["OnButtonPressed"]
       50 SETTABLEKS                       R7 R12 K15 ["OnClose"]
       52 SETTABLEKS                       R8 R12 K7 ["Title"]
       54 DUPTABLE                         R13 K26 [{"Contents"}]
       55 GETUPVAL                         R14 1
       56 GETTABLEKS                       R14 R14 K9 ["createElement"]
       58 GETUPVAL                         R15 4
       59 DUPTABLE                         R16 K32 [{["HorizontalAlignment"], ["Layout"], ["Spacing"] = 20, ["Size"]}]
       60 GETIMPORT                        R17 K35 [Enum.HorizontalAlignment.Center]
       62 SETTABLEKS                       R17 R16 K27 ["HorizontalAlignment"]
       64 GETIMPORT                        R17 K38 [Enum.FillDirection.Vertical]
       66 SETTABLEKS                       R17 R16 K28 ["Layout"]
       68 GETIMPORT                        R17 K41 [UDim2.fromScale]
       70 LOADN                            R18 1
       71 LOADN                            R19 1
       72 CALL                             R17 2 1
       73 SETTABLEKS                       R17 R16 K31 ["Size"]
       75 DUPTABLE                         R17 K42 [{"Heading", "Description"}]
       76 GETUPVAL                         R18 1
       77 GETTABLEKS                       R18 R18 K9 ["createElement"]
       79 GETUPVAL                         R19 5
       80 DUPTABLE                         R20 K48 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Font"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
       81 GETIMPORT                        R21 K50 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R21 R20 K43 ["AutomaticSize"]
       85 NAMECALL                         R21 R9 K51 ["getNextOrder"]
       87 CALL                             R21 1 1
       88 SETTABLEKS                       R21 R20 K44 ["LayoutOrder"]
       90 GETIMPORT                        R21 K52 [UDim2.new]
       92 LOADN                            R22 1
       93 LOADN                            R23 0
       94 LOADN                            R24 0
       95 LOADN                            R25 0
       96 CALL                             R21 4 1
       97 SETTABLEKS                       R21 R20 K31 ["Size"]
       99 GETUPVAL                         R21 6
      100 GETTABLEKS                       R21 R21 K53 ["FONT_BOLD"]
      102 SETTABLEKS                       R21 R20 K45 ["Font"]
      104 SETTABLEKS                       R6 R20 K21 ["Text"]
      106 GETIMPORT                        R21 K54 [Enum.TextXAlignment.Center]
      108 SETTABLEKS                       R21 R20 K47 ["TextXAlignment"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K5 ["Heading"]
      113 GETUPVAL                         R18 1
      114 GETTABLEKS                       R18 R18 K9 ["createElement"]
      116 GETUPVAL                         R19 5
      117 DUPTABLE                         R20 K55 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      118 GETIMPORT                        R21 K50 [Enum.AutomaticSize.Y]
      120 SETTABLEKS                       R21 R20 K43 ["AutomaticSize"]
      122 NAMECALL                         R21 R9 K51 ["getNextOrder"]
      124 CALL                             R21 1 1
      125 SETTABLEKS                       R21 R20 K44 ["LayoutOrder"]
      127 GETIMPORT                        R21 K52 [UDim2.new]
      129 LOADN                            R22 1
      130 LOADN                            R23 0
      131 LOADN                            R24 0
      132 LOADN                            R25 0
      133 CALL                             R21 4 1
      134 SETTABLEKS                       R21 R20 K31 ["Size"]
      136 SETTABLEKS                       R4 R20 K21 ["Text"]
      138 GETIMPORT                        R21 K54 [Enum.TextXAlignment.Center]
      140 SETTABLEKS                       R21 R20 K47 ["TextXAlignment"]
      142 CALL                             R18 2 1
      143 SETTABLEKS                       R18 R17 K3 ["Description"]
      145 CALL                             R14 3 1
      146 SETTABLEKS                       R14 R13 K25 ["Contents"]
      148 CALL                             R10 3 -1
      149 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K10 ["withContext"]
       23 GETTABLEKS                       R6 R2 K11 ["Util"]
       25 GETTABLEKS                       R6 R6 K12 ["LayoutOrderIterator"]
       27 GETTABLEKS                       R7 R2 K13 ["UI"]
       29 GETTABLEKS                       R8 R7 K14 ["Pane"]
       31 GETTABLEKS                       R9 R7 K15 ["Image"]
       33 GETTABLEKS                       R10 R7 K16 ["StyledDialog"]
       35 GETTABLEKS                       R11 R7 K17 ["TextLabel"]
       37 GETIMPORT                        R12 K6 [require]
       39 GETTABLEKS                       R13 R0 K18 ["Src"]
       41 GETTABLEKS                       R13 R13 K11 ["Util"]
       43 GETTABLEKS                       R13 R13 K19 ["Constants"]
       45 CALL                             R12 1 1
       46 GETIMPORT                        R13 K22 [Vector2.new]
       48 LOADN                            R14 400
       49 LOADN                            R15 70
       50 CALL                             R13 2 1
       51 GETTABLEKS                       R14 R3 K23 ["PureComponent"]
       53 LOADK                            R16 K24 ["StyledConfirmDialog"]
       54 NAMECALL                         R14 R14 K25 ["extend"]
       56 CALL                             R14 2 1
       57 DUPTABLE                         R15 K30 [{["Accept"] = True, ["Cancel"] = False}]
       58 DUPCLOSURE                       R16 K31 [PROTO_1]
       59 SETTABLEKS                       R16 R14 K32 ["init"]
       61 DUPCLOSURE                       R16 K33 [PROTO_2]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R12
       69 SETTABLEKS                       R16 R14 K34 ["render"]
       71 MOVE                             R16 R5
       72 DUPTABLE                         R17 K36 [{"Stylizer"}]
       73 GETTABLEKS                       R18 R4 K35 ["Stylizer"]
       75 SETTABLEKS                       R18 R17 K35 ["Stylizer"]
       77 CALL                             R16 1 1
       78 MOVE                             R17 R14
       79 CALL                             R16 1 1
       80 MOVE                             R14 R16
       81 RETURN                           R14 1
