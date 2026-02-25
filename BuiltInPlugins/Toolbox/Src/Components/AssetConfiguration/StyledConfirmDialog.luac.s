PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Accept"]
        6 JUMPIFNOTEQ                      R0 R2 ; [+5]
        8 GETTABLEKS                       R2 R1 K2 ["OnAccepted"]
       10 CALL                             R2 0 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K3 ["OnCanceled"]
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onButtonPressed"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AcceptText"]
        4 GETTABLEKS                       R3 R1 K2 ["CancelText"]
        6 GETTABLEKS                       R4 R1 K3 ["Description"]
        8 GETTABLEKS                       R5 R1 K4 ["Enabled"]
       10 GETTABLEKS                       R6 R1 K5 ["Heading"]
       12 GETTABLEKS                       R7 R1 K6 ["OnCanceled"]
       14 GETTABLEKS                       R8 R1 K7 ["Title"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["new"]
       19 CALL                             R9 0 1
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R10 R11 K9 ["createElement"]
       23 GETUPVAL                         R11 2
       24 DUPTABLE                         R12 K16 [{"Buttons", "Enabled", "MinContentSize", "Modal", "OnButtonPressed", "OnClose", "Style", "Title"}]
       25 NEWTABLE                         R13 0 2
       27 DUPTABLE                         R14 K19 [{"Key", "Text"}]
       28 GETUPVAL                         R16 3
       29 GETTABLEKS                       R15 R16 K20 ["Cancel"]
       31 SETTABLEKS                       R15 R14 K17 ["Key"]
       33 SETTABLEKS                       R3 R14 K18 ["Text"]
       35 DUPTABLE                         R15 K19 [{"Key", "Text"}]
       36 GETUPVAL                         R17 3
       37 GETTABLEKS                       R16 R17 K21 ["Accept"]
       39 SETTABLEKS                       R16 R15 K17 ["Key"]
       41 SETTABLEKS                       R2 R15 K18 ["Text"]
       43 SETLIST                          R13 R14 2 [1]
       45 SETTABLEKS                       R13 R12 K10 ["Buttons"]
       47 JUMPIFEQKB                       R5 TRUE ; [+2]
       49 LOADB                            R13 0 +1
       50 LOADB                            R13 1
       51 SETTABLEKS                       R13 R12 K4 ["Enabled"]
       53 GETUPVAL                         R13 4
       54 SETTABLEKS                       R13 R12 K11 ["MinContentSize"]
       56 LOADB                            R13 1
       57 SETTABLEKS                       R13 R12 K12 ["Modal"]
       59 GETTABLEKS                       R13 R0 K22 ["onButtonPressed"]
       61 SETTABLEKS                       R13 R12 K13 ["OnButtonPressed"]
       63 SETTABLEKS                       R7 R12 K14 ["OnClose"]
       65 LOADK                            R13 K23 ["AssetConfigWarningDialog"]
       66 SETTABLEKS                       R13 R12 K15 ["Style"]
       68 SETTABLEKS                       R8 R12 K7 ["Title"]
       70 DUPTABLE                         R13 K25 [{"Contents"}]
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R14 R15 K9 ["createElement"]
       74 GETUPVAL                         R15 5
       75 DUPTABLE                         R16 K30 [{"HorizontalAlignment", "Layout", "Spacing", "Size"}]
       76 GETIMPORT                        R17 K33 [Enum.HorizontalAlignment.Center]
       78 SETTABLEKS                       R17 R16 K26 ["HorizontalAlignment"]
       80 GETIMPORT                        R17 K36 [Enum.FillDirection.Vertical]
       82 SETTABLEKS                       R17 R16 K27 ["Layout"]
       84 LOADN                            R17 20
       85 SETTABLEKS                       R17 R16 K28 ["Spacing"]
       87 GETIMPORT                        R17 K39 [UDim2.fromScale]
       89 LOADN                            R18 1
       90 LOADN                            R19 1
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K29 ["Size"]
       94 DUPTABLE                         R17 K40 [{"Heading", "Description"}]
       95 GETUPVAL                         R19 1
       96 GETTABLEKS                       R18 R19 K9 ["createElement"]
       98 GETUPVAL                         R19 6
       99 DUPTABLE                         R20 K46 [{"AutomaticSize", "LayoutOrder", "Size", "Font", "Text", "TextWrapped", "TextXAlignment"}]
      100 GETIMPORT                        R21 K48 [Enum.AutomaticSize.Y]
      102 SETTABLEKS                       R21 R20 K41 ["AutomaticSize"]
      104 NAMECALL                         R21 R9 K49 ["getNextOrder"]
      106 CALL                             R21 1 1
      107 SETTABLEKS                       R21 R20 K42 ["LayoutOrder"]
      109 GETIMPORT                        R21 K50 [UDim2.new]
      111 LOADN                            R22 1
      112 LOADN                            R23 0
      113 LOADN                            R24 0
      114 LOADN                            R25 0
      115 CALL                             R21 4 1
      116 SETTABLEKS                       R21 R20 K29 ["Size"]
      118 GETUPVAL                         R22 7
      119 GETTABLEKS                       R21 R22 K51 ["FONT_BOLD"]
      121 SETTABLEKS                       R21 R20 K43 ["Font"]
      123 SETTABLEKS                       R6 R20 K18 ["Text"]
      125 LOADB                            R21 1
      126 SETTABLEKS                       R21 R20 K44 ["TextWrapped"]
      128 GETIMPORT                        R21 K52 [Enum.TextXAlignment.Center]
      130 SETTABLEKS                       R21 R20 K45 ["TextXAlignment"]
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K5 ["Heading"]
      135 GETUPVAL                         R19 1
      136 GETTABLEKS                       R18 R19 K9 ["createElement"]
      138 GETUPVAL                         R19 6
      139 DUPTABLE                         R20 K53 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      140 GETIMPORT                        R21 K48 [Enum.AutomaticSize.Y]
      142 SETTABLEKS                       R21 R20 K41 ["AutomaticSize"]
      144 NAMECALL                         R21 R9 K49 ["getNextOrder"]
      146 CALL                             R21 1 1
      147 SETTABLEKS                       R21 R20 K42 ["LayoutOrder"]
      149 GETIMPORT                        R21 K50 [UDim2.new]
      151 LOADN                            R22 1
      152 LOADN                            R23 0
      153 LOADN                            R24 0
      154 LOADN                            R25 0
      155 CALL                             R21 4 1
      156 SETTABLEKS                       R21 R20 K29 ["Size"]
      158 SETTABLEKS                       R4 R20 K18 ["Text"]
      160 LOADB                            R21 1
      161 SETTABLEKS                       R21 R20 K44 ["TextWrapped"]
      163 GETIMPORT                        R21 K52 [Enum.TextXAlignment.Center]
      165 SETTABLEKS                       R21 R20 K45 ["TextXAlignment"]
      167 CALL                             R18 2 1
      168 SETTABLEKS                       R18 R17 K3 ["Description"]
      170 CALL                             R14 3 1
      171 SETTABLEKS                       R14 R13 K24 ["Contents"]
      173 CALL                             R10 3 -1
      174 RETURN                           R10 -1

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
       23 GETTABLEKS                       R7 R2 K11 ["Util"]
       25 GETTABLEKS                       R6 R7 K12 ["LayoutOrderIterator"]
       27 GETTABLEKS                       R7 R2 K13 ["UI"]
       29 GETTABLEKS                       R8 R7 K14 ["Pane"]
       31 GETTABLEKS                       R9 R7 K15 ["Image"]
       33 GETTABLEKS                       R10 R7 K16 ["StyledDialog"]
       35 GETTABLEKS                       R11 R7 K17 ["TextLabel"]
       37 GETIMPORT                        R12 K6 [require]
       39 GETTABLEKS                       R15 R0 K18 ["Src"]
       41 GETTABLEKS                       R14 R15 K11 ["Util"]
       43 GETTABLEKS                       R13 R14 K19 ["Constants"]
       45 CALL                             R12 1 1
       46 GETIMPORT                        R13 K22 [Vector2.new]
       48 LOADN                            R14 144
       49 LOADN                            R15 70
       50 CALL                             R13 2 1
       51 GETTABLEKS                       R14 R3 K23 ["PureComponent"]
       53 LOADK                            R16 K24 ["StyledConfirmDialog"]
       54 NAMECALL                         R14 R14 K25 ["extend"]
       56 CALL                             R14 2 1
       57 DUPTABLE                         R15 K28 [{"Accept", "Cancel"}]
       58 LOADB                            R16 1
       59 SETTABLEKS                       R16 R15 K26 ["Accept"]
       61 LOADB                            R16 0
       62 SETTABLEKS                       R16 R15 K27 ["Cancel"]
       64 DUPCLOSURE                       R16 K29 [PROTO_1]
       65 CAPTURE                          VAL R15
       66 SETTABLEKS                       R16 R14 K30 ["init"]
       68 DUPCLOSURE                       R16 K31 [PROTO_2]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R12
       77 SETTABLEKS                       R16 R14 K32 ["render"]
       79 MOVE                             R16 R5
       80 DUPTABLE                         R17 K34 [{"Stylizer"}]
       81 GETTABLEKS                       R18 R4 K33 ["Stylizer"]
       83 SETTABLEKS                       R18 R17 K33 ["Stylizer"]
       85 CALL                             R16 1 1
       86 MOVE                             R17 R14
       87 CALL                             R16 1 1
       88 MOVE                             R14 R16
       89 RETURN                           R14 1
