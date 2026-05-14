PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Accept"]
        6 JUMPIFNOTEQ                      R0 R2 ; [+8]
        8 GETTABLEKS                       R2 R1 K2 ["ConfirmationKey"]
       10 GETTABLEKS                       R3 R1 K3 ["OnAccepted"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R1 K4 ["OnCanceled"]
       17 CALL                             R2 0 0
       18 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onButtonPressed"]
        5 RETURN                           R0 0

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
       28 DUPTABLE                         R14 K18 [{"Buttons", "Enabled", "MinContentSize", "Modal", "OnButtonPressed", "OnClose", "Style", "Title"}]
       29 NEWTABLE                         R15 0 2
       31 DUPTABLE                         R16 K21 [{"Key", "Text"}]
       32 GETUPVAL                         R17 3
       33 GETTABLEKS                       R17 R17 K22 ["Cancel"]
       35 SETTABLEKS                       R17 R16 K19 ["Key"]
       37 SETTABLEKS                       R5 R16 K20 ["Text"]
       39 DUPTABLE                         R17 K21 [{"Key", "Text"}]
       40 GETUPVAL                         R18 3
       41 GETTABLEKS                       R18 R18 K23 ["Accept"]
       43 SETTABLEKS                       R18 R17 K19 ["Key"]
       45 SETTABLEKS                       R4 R17 K20 ["Text"]
       47 SETLIST                          R15 R16 2 [1]
       49 SETTABLEKS                       R15 R14 K12 ["Buttons"]
       51 JUMPIFEQKB                       R7 TRUE ; [+2]
       53 LOADB                            R15 0 +1
       54 LOADB                            R15 1
       55 SETTABLEKS                       R15 R14 K6 ["Enabled"]
       57 GETUPVAL                         R15 4
       58 SETTABLEKS                       R15 R14 K13 ["MinContentSize"]
       60 LOADB                            R15 1
       61 SETTABLEKS                       R15 R14 K14 ["Modal"]
       63 GETTABLEKS                       R15 R0 K24 ["onButtonPressed"]
       65 SETTABLEKS                       R15 R14 K15 ["OnButtonPressed"]
       67 SETTABLEKS                       R9 R14 K16 ["OnClose"]
       69 LOADK                            R15 K25 ["AssetConfigWarningDialog"]
       70 SETTABLEKS                       R15 R14 K17 ["Style"]
       72 SETTABLEKS                       R10 R14 K9 ["Title"]
       74 DUPTABLE                         R15 K27 [{"Contents"}]
       75 GETUPVAL                         R16 1
       76 GETTABLEKS                       R16 R16 K11 ["createElement"]
       78 GETUPVAL                         R17 5
       79 DUPTABLE                         R18 K32 [{"HorizontalAlignment", "Layout", "Spacing", "Size"}]
       80 GETIMPORT                        R19 K35 [Enum.HorizontalAlignment.Left]
       82 SETTABLEKS                       R19 R18 K28 ["HorizontalAlignment"]
       84 GETIMPORT                        R19 K38 [Enum.FillDirection.Horizontal]
       86 SETTABLEKS                       R19 R18 K29 ["Layout"]
       88 LOADN                            R19 20
       89 SETTABLEKS                       R19 R18 K30 ["Spacing"]
       91 GETIMPORT                        R19 K41 [UDim2.fromScale]
       93 LOADN                            R20 1
       94 LOADN                            R21 1
       95 CALL                             R19 2 1
       96 SETTABLEKS                       R19 R18 K31 ["Size"]
       98 DUPTABLE                         R19 K44 [{"Icon", "RightContents"}]
       99 GETUPVAL                         R20 1
      100 GETTABLEKS                       R20 R20 K11 ["createElement"]
      102 LOADK                            R21 K45 ["ImageLabel"]
      103 DUPTABLE                         R22 K50 [{"LayoutOrder", "BackgroundTransparency", "Image", "ImageColor3", "Size"}]
      104 LOADN                            R23 1
      105 SETTABLEKS                       R23 R22 K46 ["LayoutOrder"]
      107 LOADN                            R23 1
      108 SETTABLEKS                       R23 R22 K47 ["BackgroundTransparency"]
      110 GETUPVAL                         R23 6
      111 GETTABLEKS                       R23 R23 K51 ["WARNING_ICON"]
      113 SETTABLEKS                       R23 R22 K48 ["Image"]
      115 GETTABLEKS                       R23 R3 K52 ["warningIconColor"]
      117 SETTABLEKS                       R23 R22 K49 ["ImageColor3"]
      119 GETIMPORT                        R23 K54 [UDim2.fromOffset]
      121 LOADN                            R24 50
      122 LOADN                            R25 50
      123 CALL                             R23 2 1
      124 SETTABLEKS                       R23 R22 K31 ["Size"]
      126 CALL                             R20 2 1
      127 SETTABLEKS                       R20 R19 K42 ["Icon"]
      129 GETUPVAL                         R20 1
      130 GETTABLEKS                       R20 R20 K11 ["createElement"]
      132 GETUPVAL                         R21 5
      133 DUPTABLE                         R22 K56 [{"Layout", "LayoutOrder", "Spacing", "Size", "VerticalAlignment"}]
      134 GETIMPORT                        R23 K58 [Enum.FillDirection.Vertical]
      136 SETTABLEKS                       R23 R22 K29 ["Layout"]
      138 LOADN                            R23 2
      139 SETTABLEKS                       R23 R22 K46 ["LayoutOrder"]
      141 LOADN                            R23 5
      142 SETTABLEKS                       R23 R22 K30 ["Spacing"]
      144 GETIMPORT                        R23 K59 [UDim2.new]
      146 LOADN                            R24 1
      147 LOADN                            R25 206
      148 LOADN                            R26 1
      149 LOADN                            R27 0
      150 CALL                             R23 4 1
      151 SETTABLEKS                       R23 R22 K31 ["Size"]
      153 GETIMPORT                        R23 K61 [Enum.VerticalAlignment.Top]
      155 SETTABLEKS                       R23 R22 K55 ["VerticalAlignment"]
      157 DUPTABLE                         R23 K62 [{"Heading", "Description"}]
      158 GETUPVAL                         R24 1
      159 GETTABLEKS                       R24 R24 K11 ["createElement"]
      161 GETUPVAL                         R25 7
      162 DUPTABLE                         R26 K67 [{"AutomaticSize", "LayoutOrder", "Size", "Font", "Text", "TextWrapped", "TextXAlignment"}]
      163 GETIMPORT                        R27 K69 [Enum.AutomaticSize.Y]
      165 SETTABLEKS                       R27 R26 K63 ["AutomaticSize"]
      167 NAMECALL                         R27 R11 K70 ["getNextOrder"]
      169 CALL                             R27 1 1
      170 SETTABLEKS                       R27 R26 K46 ["LayoutOrder"]
      172 GETIMPORT                        R27 K59 [UDim2.new]
      174 LOADN                            R28 1
      175 LOADN                            R29 0
      176 LOADN                            R30 0
      177 LOADN                            R31 0
      178 CALL                             R27 4 1
      179 SETTABLEKS                       R27 R26 K31 ["Size"]
      181 GETUPVAL                         R27 8
      182 GETTABLEKS                       R27 R27 K71 ["FONT_BOLD"]
      184 SETTABLEKS                       R27 R26 K64 ["Font"]
      186 SETTABLEKS                       R8 R26 K20 ["Text"]
      188 LOADB                            R27 1
      189 SETTABLEKS                       R27 R26 K65 ["TextWrapped"]
      191 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
      193 SETTABLEKS                       R27 R26 K66 ["TextXAlignment"]
      195 CALL                             R24 2 1
      196 SETTABLEKS                       R24 R23 K7 ["Heading"]
      198 GETUPVAL                         R24 1
      199 GETTABLEKS                       R24 R24 K11 ["createElement"]
      201 GETUPVAL                         R25 7
      202 DUPTABLE                         R26 K73 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      203 GETIMPORT                        R27 K69 [Enum.AutomaticSize.Y]
      205 SETTABLEKS                       R27 R26 K63 ["AutomaticSize"]
      207 NAMECALL                         R27 R11 K70 ["getNextOrder"]
      209 CALL                             R27 1 1
      210 SETTABLEKS                       R27 R26 K46 ["LayoutOrder"]
      212 GETIMPORT                        R27 K59 [UDim2.new]
      214 LOADN                            R28 1
      215 LOADN                            R29 0
      216 LOADN                            R30 0
      217 LOADN                            R31 0
      218 CALL                             R27 4 1
      219 SETTABLEKS                       R27 R26 K31 ["Size"]
      221 SETTABLEKS                       R6 R26 K20 ["Text"]
      223 LOADB                            R27 1
      224 SETTABLEKS                       R27 R26 K65 ["TextWrapped"]
      226 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
      228 SETTABLEKS                       R27 R26 K66 ["TextXAlignment"]
      230 CALL                             R24 2 1
      231 SETTABLEKS                       R24 R23 K5 ["Description"]
      233 CALL                             R20 3 1
      234 SETTABLEKS                       R20 R19 K43 ["RightContents"]
      236 CALL                             R16 3 1
      237 SETTABLEKS                       R16 R15 K26 ["Contents"]
      239 CALL                             R12 3 -1
      240 RETURN                           R12 -1

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
       57 GETIMPORT                        R14 K5 [require]
       59 GETTABLEKS                       R15 R0 K16 ["Src"]
       61 GETTABLEKS                       R15 R15 K19 ["Flags"]
       63 GETTABLEKS                       R15 R15 K20 ["getFFlagEnableUploadingGroupBundles"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K23 [Vector2.new]
       68 LOADN                            R16 144
       69 LOADN                            R17 70
       70 CALL                             R15 2 1
       71 GETTABLEKS                       R16 R3 K24 ["PureComponent"]
       73 LOADK                            R18 K25 ["WarningDialog"]
       74 NAMECALL                         R16 R16 K26 ["extend"]
       76 CALL                             R16 2 1
       77 DUPTABLE                         R17 K29 [{"Accept", "Cancel"}]
       78 LOADB                            R18 1
       79 SETTABLEKS                       R18 R17 K27 ["Accept"]
       81 LOADB                            R18 0
       82 SETTABLEKS                       R18 R17 K28 ["Cancel"]
       84 DUPCLOSURE                       R18 K30 [PROTO_1]
       85 CAPTURE                          VAL R17
       86 SETTABLEKS                       R18 R16 K31 ["init"]
       88 DUPCLOSURE                       R18 K32 [PROTO_2]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R12
       98 SETTABLEKS                       R18 R16 K33 ["render"]
      100 MOVE                             R18 R5
      101 DUPTABLE                         R19 K35 [{"Stylizer"}]
      102 GETTABLEKS                       R20 R4 K34 ["Stylizer"]
      104 SETTABLEKS                       R20 R19 K34 ["Stylizer"]
      106 CALL                             R18 1 1
      107 MOVE                             R19 R16
      108 CALL                             R18 1 1
      109 MOVE                             R16 R18
      110 RETURN                           R16 1
