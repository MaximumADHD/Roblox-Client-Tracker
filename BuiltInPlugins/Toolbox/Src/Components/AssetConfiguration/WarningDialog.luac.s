PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 JUMPIFNOTEQKB                    R0 TRUE ; [+8]
        5 GETTABLEKS                       R2 R1 K1 ["ConfirmationKey"]
        7 GETTABLEKS                       R3 R1 K2 ["OnAccepted"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R1 K3 ["OnCanceled"]
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onButtonPressed"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["publishAsset"]
        6 GETTABLEKS                       R4 R1 K3 ["AcceptText"]
        8 GETTABLEKS                       R5 R1 K4 ["CancelText"]
       10 GETTABLEKS                       R6 R1 K5 ["Description"]
       12 GETTABLEKS                       R7 R1 K6 ["Enabled"]
       14 GETTABLEKS                       R8 R1 K7 ["Heading"]
       16 GETTABLEKS                       R9 R1 K8 ["OnCanceled"]
       18 GETTABLEKS                       R10 R1 K9 ["Title"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K10 ["new"]
       23 CALL                             R11 0 1
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R12 R12 K11 ["createElement"]
       27 GETUPVAL                         R13 2
       28 DUPTABLE                         R14 K20 [{["Buttons"], ["Enabled"], ["MinContentSize"], ["Modal"] = True, ["OnButtonPressed"], ["OnClose"], ["Style"] = "AssetConfigWarningDialog", ["Title"]}]
       29 NEWTABLE                         R15 0 2
       31 DUPTABLE                         R16 K24 [{["Key"] = False, ["Text"]}]
       32 SETTABLEKS                       R5 R16 K23 ["Text"]
       34 DUPTABLE                         R17 K25 [{["Key"] = True, ["Text"]}]
       35 SETTABLEKS                       R4 R17 K23 ["Text"]
       37 SETLIST                          R15 R16 2 [1]
       39 SETTABLEKS                       R15 R14 K12 ["Buttons"]
       41 JUMPIFEQKB                       R7 TRUE ; [+2]
       43 LOADB                            R15 0 +1
       44 LOADB                            R15 1
       45 SETTABLEKS                       R15 R14 K6 ["Enabled"]
       47 GETUPVAL                         R15 3
       48 SETTABLEKS                       R15 R14 K13 ["MinContentSize"]
       50 GETTABLEKS                       R15 R0 K26 ["onButtonPressed"]
       52 SETTABLEKS                       R15 R14 K16 ["OnButtonPressed"]
       54 SETTABLEKS                       R9 R14 K17 ["OnClose"]
       56 SETTABLEKS                       R10 R14 K9 ["Title"]
       58 DUPTABLE                         R15 K28 [{"Contents"}]
       59 GETUPVAL                         R16 1
       60 GETTABLEKS                       R16 R16 K11 ["createElement"]
       62 GETUPVAL                         R17 4
       63 DUPTABLE                         R18 K34 [{["HorizontalAlignment"], ["Layout"], ["Spacing"] = 20, ["Size"]}]
       64 GETIMPORT                        R19 K37 [Enum.HorizontalAlignment.Left]
       66 SETTABLEKS                       R19 R18 K29 ["HorizontalAlignment"]
       68 GETIMPORT                        R19 K40 [Enum.FillDirection.Horizontal]
       70 SETTABLEKS                       R19 R18 K30 ["Layout"]
       72 GETIMPORT                        R19 K43 [UDim2.fromScale]
       74 LOADN                            R20 1
       75 LOADN                            R21 1
       76 CALL                             R19 2 1
       77 SETTABLEKS                       R19 R18 K33 ["Size"]
       79 DUPTABLE                         R19 K46 [{"Icon", "RightContents"}]
       80 GETUPVAL                         R20 1
       81 GETTABLEKS                       R20 R20 K11 ["createElement"]
       83 LOADK                            R21 K47 ["ImageLabel"]
       84 DUPTABLE                         R22 K53 [{["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Size"]}]
       85 GETUPVAL                         R23 5
       86 GETTABLEKS                       R23 R23 K54 ["WARNING_ICON"]
       88 SETTABLEKS                       R23 R22 K51 ["Image"]
       90 GETTABLEKS                       R23 R3 K55 ["warningIconColor"]
       92 SETTABLEKS                       R23 R22 K52 ["ImageColor3"]
       94 GETIMPORT                        R23 K57 [UDim2.fromOffset]
       96 LOADN                            R24 50
       97 LOADN                            R25 50
       98 CALL                             R23 2 1
       99 SETTABLEKS                       R23 R22 K33 ["Size"]
      101 CALL                             R20 2 1
      102 SETTABLEKS                       R20 R19 K44 ["Icon"]
      104 GETUPVAL                         R20 1
      105 GETTABLEKS                       R20 R20 K11 ["createElement"]
      107 GETUPVAL                         R21 4
      108 DUPTABLE                         R22 K61 [{["Layout"], ["LayoutOrder"] = 2, ["Spacing"] = 5, ["Size"], ["VerticalAlignment"]}]
      109 GETIMPORT                        R23 K63 [Enum.FillDirection.Vertical]
      111 SETTABLEKS                       R23 R22 K30 ["Layout"]
      113 GETIMPORT                        R23 K64 [UDim2.new]
      115 LOADN                            R24 1
      116 LOADN                            R25 -50
      117 LOADN                            R26 1
      118 LOADN                            R27 0
      119 CALL                             R23 4 1
      120 SETTABLEKS                       R23 R22 K33 ["Size"]
      122 GETIMPORT                        R23 K66 [Enum.VerticalAlignment.Top]
      124 SETTABLEKS                       R23 R22 K60 ["VerticalAlignment"]
      126 DUPTABLE                         R23 K67 [{"Heading", "Description"}]
      127 GETUPVAL                         R24 1
      128 GETTABLEKS                       R24 R24 K11 ["createElement"]
      130 GETUPVAL                         R25 6
      131 DUPTABLE                         R26 K72 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Font"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      132 GETIMPORT                        R27 K74 [Enum.AutomaticSize.Y]
      134 SETTABLEKS                       R27 R26 K68 ["AutomaticSize"]
      136 NAMECALL                         R27 R11 K75 ["getNextOrder"]
      138 CALL                             R27 1 1
      139 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
      141 GETIMPORT                        R27 K64 [UDim2.new]
      143 LOADN                            R28 1
      144 LOADN                            R29 0
      145 LOADN                            R30 0
      146 LOADN                            R31 0
      147 CALL                             R27 4 1
      148 SETTABLEKS                       R27 R26 K33 ["Size"]
      150 GETUPVAL                         R27 7
      151 GETTABLEKS                       R27 R27 K76 ["FONT_BOLD"]
      153 SETTABLEKS                       R27 R26 K69 ["Font"]
      155 SETTABLEKS                       R8 R26 K23 ["Text"]
      157 GETIMPORT                        R27 K77 [Enum.TextXAlignment.Left]
      159 SETTABLEKS                       R27 R26 K71 ["TextXAlignment"]
      161 CALL                             R24 2 1
      162 SETTABLEKS                       R24 R23 K7 ["Heading"]
      164 GETUPVAL                         R24 1
      165 GETTABLEKS                       R24 R24 K11 ["createElement"]
      167 GETUPVAL                         R25 6
      168 DUPTABLE                         R26 K78 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
      169 GETIMPORT                        R27 K74 [Enum.AutomaticSize.Y]
      171 SETTABLEKS                       R27 R26 K68 ["AutomaticSize"]
      173 NAMECALL                         R27 R11 K75 ["getNextOrder"]
      175 CALL                             R27 1 1
      176 SETTABLEKS                       R27 R26 K48 ["LayoutOrder"]
      178 GETIMPORT                        R27 K64 [UDim2.new]
      180 LOADN                            R28 1
      181 LOADN                            R29 0
      182 LOADN                            R30 0
      183 LOADN                            R31 0
      184 CALL                             R27 4 1
      185 SETTABLEKS                       R27 R26 K33 ["Size"]
      187 SETTABLEKS                       R6 R26 K23 ["Text"]
      189 GETIMPORT                        R27 K77 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R27 R26 K71 ["TextXAlignment"]
      193 CALL                             R24 2 1
      194 SETTABLEKS                       R24 R23 K5 ["Description"]
      196 CALL                             R20 3 1
      197 SETTABLEKS                       R20 R19 K45 ["RightContents"]
      199 CALL                             R16 3 1
      200 SETTABLEKS                       R16 R15 K27 ["Contents"]
      202 CALL                             R12 3 -1
      203 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R2 K10 ["Util"]
       29 GETTABLEKS                       R6 R6 K11 ["LayoutOrderIterator"]
       31 GETTABLEKS                       R7 R2 K12 ["UI"]
       33 GETTABLEKS                       R8 R7 K13 ["Pane"]
       35 GETTABLEKS                       R9 R7 K14 ["StyledDialog"]
       37 GETTABLEKS                       R10 R7 K15 ["TextLabel"]
       39 GETTABLEKS                       R11 R0 K16 ["Src"]
       41 GETTABLEKS                       R11 R11 K10 ["Util"]
       43 GETIMPORT                        R12 K5 [require]
       45 GETTABLEKS                       R13 R11 K17 ["Constants"]
       47 CALL                             R12 1 1
       48 GETIMPORT                        R13 K5 [require]
       50 GETTABLEKS                       R14 R0 K16 ["Src"]
       52 GETTABLEKS                       R14 R14 K10 ["Util"]
       54 GETTABLEKS                       R14 R14 K18 ["Images"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K21 [Vector2.new]
       59 LOADN                            R15 400
       60 LOADN                            R16 70
       61 CALL                             R14 2 1
       62 GETTABLEKS                       R15 R3 K22 ["PureComponent"]
       64 LOADK                            R17 K23 ["WarningDialog"]
       65 NAMECALL                         R15 R15 K24 ["extend"]
       67 CALL                             R15 2 1
       68 DUPTABLE                         R16 K29 [{["Accept"] = True, ["Cancel"] = False}]
       69 DUPCLOSURE                       R17 K30 [PROTO_1]
       70 SETTABLEKS                       R17 R15 K31 ["init"]
       72 DUPCLOSURE                       R17 K32 [PROTO_2]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R12
       81 SETTABLEKS                       R17 R15 K33 ["render"]
       83 MOVE                             R17 R5
       84 DUPTABLE                         R18 K35 [{"Stylizer"}]
       85 GETTABLEKS                       R19 R4 K34 ["Stylizer"]
       87 SETTABLEKS                       R19 R18 K34 ["Stylizer"]
       89 CALL                             R17 1 1
       90 MOVE                             R18 R15
       91 CALL                             R17 1 1
       92 MOVE                             R15 R17
       93 RETURN                           R15 1
