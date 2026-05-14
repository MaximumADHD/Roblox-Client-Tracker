PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["itemRow"]
        6 GETTABLEKS                       R3 R1 K3 ["HeaderText"]
        8 GETTABLEKS                       R4 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R5 R1 K5 ["MaxLinesOfText"]
       12 GETTABLEKS                       R6 R1 K6 ["Padding"]
       14 GETTABLEKS                       R7 R1 K7 ["Size"]
       16 GETTABLEKS                       R8 R1 K8 ["Text"]
       18 GETTABLEKS                       R9 R1 K9 ["OnClick"]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K10 ["new"]
       23 CALL                             R10 0 1
       24 LOADN                            R11 0
       25 JUMPIFNOT                        R5 ; [+16]
       26 GETUPVAL                         R12 1
       27 LOADK                            R13 K11 ["A"]
       28 GETTABLEKS                       R14 R2 K12 ["textSize"]
       30 GETUPVAL                         R15 2
       31 GETTABLEKS                       R15 R15 K13 ["FONT"]
       33 GETIMPORT                        R16 K15 [Vector2.new]
       35 LOADN                            R17 0
       36 LOADN                            R18 0
       37 CALL                             R16 2 -1
       38 CALL                             R12 -1 1
       39 GETTABLEKS                       R12 R12 K16 ["Y"]
       41 MUL                              R11 R12 R5
       42 GETUPVAL                         R12 3
       43 GETTABLEKS                       R12 R12 K17 ["createElement"]
       45 GETUPVAL                         R13 4
       46 DUPTABLE                         R14 K23 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Size", "Spacing", "VerticalAlignment"}]
       47 GETIMPORT                        R15 K25 [Enum.AutomaticSize.Y]
       49 SETTABLEKS                       R15 R14 K18 ["AutomaticSize"]
       51 GETIMPORT                        R15 K27 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R15 R14 K19 ["HorizontalAlignment"]
       55 GETIMPORT                        R15 K30 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R15 R14 K20 ["Layout"]
       59 SETTABLEKS                       R4 R14 K4 ["LayoutOrder"]
       61 GETUPVAL                         R16 5
       62 CALL                             R16 0 1
       63 JUMPIFNOT                        R16 ; [+2]
       64 MOVE                             R15 R6
       65 JUMP                             ; [+1]
       66 LOADNIL                          R15
       67 SETTABLEKS                       R15 R14 K6 ["Padding"]
       69 SETTABLEKS                       R7 R14 K7 ["Size"]
       71 LOADN                            R15 2
       72 SETTABLEKS                       R15 R14 K21 ["Spacing"]
       74 GETIMPORT                        R15 K32 [Enum.VerticalAlignment.Top]
       76 SETTABLEKS                       R15 R14 K22 ["VerticalAlignment"]
       78 DUPTABLE                         R15 K34 [{"Header", "Text"}]
       79 GETUPVAL                         R16 3
       80 GETTABLEKS                       R16 R16 K17 ["createElement"]
       82 GETUPVAL                         R17 6
       83 DUPTABLE                         R18 K38 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextColor", "TextXAlignment", "Size"}]
       84 GETIMPORT                        R19 K25 [Enum.AutomaticSize.Y]
       86 SETTABLEKS                       R19 R18 K18 ["AutomaticSize"]
       88 NAMECALL                         R19 R10 K39 ["getNextOrder"]
       90 CALL                             R19 1 1
       91 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
       93 LOADK                            R19 K40 ["ToolboxItemRowHeader"]
       94 SETTABLEKS                       R19 R18 K35 ["Style"]
       96 SETTABLEKS                       R3 R18 K8 ["Text"]
       98 GETTABLEKS                       R19 R2 K41 ["headerTextColor"]
      100 SETTABLEKS                       R19 R18 K36 ["TextColor"]
      102 GETIMPORT                        R19 K42 [Enum.TextXAlignment.Left]
      104 SETTABLEKS                       R19 R18 K37 ["TextXAlignment"]
      106 GETIMPORT                        R19 K44 [UDim2.new]
      108 LOADN                            R20 1
      109 LOADN                            R21 0
      110 LOADN                            R22 0
      111 LOADN                            R23 0
      112 CALL                             R19 4 1
      113 SETTABLEKS                       R19 R18 K7 ["Size"]
      115 CALL                             R16 2 1
      116 SETTABLEKS                       R16 R15 K33 ["Header"]
      118 JUMPIFNOT                        R9 ; [+44]
      119 GETUPVAL                         R16 3
      120 GETTABLEKS                       R16 R16 K17 ["createElement"]
      122 GETUPVAL                         R17 7
      123 DUPTABLE                         R18 K48 [{"LayoutOrder", "OnClick", "Size", "Style", "Text", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      124 NAMECALL                         R19 R10 K39 ["getNextOrder"]
      126 CALL                             R19 1 1
      127 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
      129 SETTABLEKS                       R9 R18 K9 ["OnClick"]
      131 GETIMPORT                        R19 K44 [UDim2.new]
      133 LOADN                            R20 1
      134 LOADN                            R21 0
      135 LOADN                            R22 0
      136 MOVE                             R23 R11
      137 CALL                             R19 4 1
      138 SETTABLEKS                       R19 R18 K7 ["Size"]
      140 LOADK                            R19 K49 ["ToolboxItemRowInnerLink"]
      141 SETTABLEKS                       R19 R18 K35 ["Style"]
      143 ORK                              R19 R8 K50 [""]
      144 SETTABLEKS                       R19 R18 K8 ["Text"]
      146 GETTABLEKS                       R19 R2 K12 ["textSize"]
      148 SETTABLEKS                       R19 R18 K45 ["TextSize"]
      150 LOADB                            R19 1
      151 SETTABLEKS                       R19 R18 K46 ["TextWrapped"]
      153 GETIMPORT                        R19 K42 [Enum.TextXAlignment.Left]
      155 SETTABLEKS                       R19 R18 K37 ["TextXAlignment"]
      157 GETIMPORT                        R19 K51 [Enum.TextYAlignment.Top]
      159 SETTABLEKS                       R19 R18 K47 ["TextYAlignment"]
      161 CALL                             R16 2 1
      162 JUMP                             ; [+56]
      163 GETUPVAL                         R16 3
      164 GETTABLEKS                       R16 R16 K17 ["createElement"]
      166 GETUPVAL                         R17 8
      167 DUPTABLE                         R18 K53 [{"LayoutOrder", "AutomaticSize", "ClipsDescendants", "Size", "Style", "Text", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "VerticalAlignment"}]
      168 NAMECALL                         R19 R10 K39 ["getNextOrder"]
      170 CALL                             R19 1 1
      171 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
      173 JUMPIFNOT                        R5 ; [+3]
      174 GETIMPORT                        R19 K55 [Enum.AutomaticSize.None]
      176 JUMP                             ; [+2]
      177 GETIMPORT                        R19 K25 [Enum.AutomaticSize.Y]
      179 SETTABLEKS                       R19 R18 K18 ["AutomaticSize"]
      181 LOADB                            R19 1
      182 SETTABLEKS                       R19 R18 K52 ["ClipsDescendants"]
      184 GETIMPORT                        R19 K44 [UDim2.new]
      186 LOADN                            R20 1
      187 LOADN                            R21 0
      188 LOADN                            R22 0
      189 MOVE                             R23 R11
      190 CALL                             R19 4 1
      191 SETTABLEKS                       R19 R18 K7 ["Size"]
      193 LOADK                            R19 K56 ["ToolboxItemRowInnerText"]
      194 SETTABLEKS                       R19 R18 K35 ["Style"]
      196 ORK                              R19 R8 K50 [""]
      197 SETTABLEKS                       R19 R18 K8 ["Text"]
      199 GETTABLEKS                       R19 R2 K12 ["textSize"]
      201 SETTABLEKS                       R19 R18 K45 ["TextSize"]
      203 LOADB                            R19 1
      204 SETTABLEKS                       R19 R18 K46 ["TextWrapped"]
      206 GETIMPORT                        R19 K42 [Enum.TextXAlignment.Left]
      208 SETTABLEKS                       R19 R18 K37 ["TextXAlignment"]
      210 GETIMPORT                        R19 K51 [Enum.TextYAlignment.Top]
      212 SETTABLEKS                       R19 R18 K47 ["TextYAlignment"]
      214 GETIMPORT                        R19 K32 [Enum.VerticalAlignment.Top]
      216 SETTABLEKS                       R19 R18 K22 ["VerticalAlignment"]
      218 CALL                             R16 2 1
      219 SETTABLEKS                       R16 R15 K8 ["Text"]
      221 CALL                             R12 3 -1
      222 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["UI"]
       21 GETTABLEKS                       R4 R4 K10 ["LinkText"]
       23 GETTABLEKS                       R5 R3 K9 ["UI"]
       25 GETTABLEKS                       R5 R5 K11 ["Pane"]
       27 GETTABLEKS                       R6 R3 K9 ["UI"]
       29 GETTABLEKS                       R6 R6 K12 ["TextLabel"]
       31 GETTABLEKS                       R7 R3 K9 ["UI"]
       33 GETTABLEKS                       R7 R7 K13 ["TextLabelWithRobloxLinks"]
       35 GETTABLEKS                       R8 R3 K14 ["Util"]
       37 GETTABLEKS                       R8 R8 K15 ["GetTextSize"]
       39 GETTABLEKS                       R9 R0 K16 ["Src"]
       41 GETTABLEKS                       R9 R9 K14 ["Util"]
       43 GETIMPORT                        R10 K6 [require]
       45 GETTABLEKS                       R11 R9 K17 ["Constants"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K6 [require]
       50 GETTABLEKS                       R12 R9 K18 ["LayoutOrderIterator"]
       52 CALL                             R11 1 1
       53 GETTABLEKS                       R12 R3 K19 ["ContextServices"]
       55 GETTABLEKS                       R13 R12 K20 ["withContext"]
       57 GETIMPORT                        R14 K6 [require]
       59 GETTABLEKS                       R15 R0 K16 ["Src"]
       61 GETTABLEKS                       R15 R15 K14 ["Util"]
       63 GETTABLEKS                       R15 R15 K21 ["SharedFlags"]
       65 GETTABLEKS                       R15 R15 K22 ["getFFlagToolboxEnableAssetRows"]
       67 CALL                             R14 1 1
       68 GETTABLEKS                       R15 R2 K23 ["PureComponent"]
       70 LOADK                            R17 K24 ["ItemRowMetadataMetadata"]
       71 NAMECALL                         R15 R15 K25 ["extend"]
       73 CALL                             R15 2 1
       74 DUPCLOSURE                       R16 K26 [PROTO_0]
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R7
       84 SETTABLEKS                       R16 R15 K27 ["render"]
       86 MOVE                             R16 R13
       87 DUPTABLE                         R17 K29 [{"Stylizer"}]
       88 GETTABLEKS                       R18 R12 K28 ["Stylizer"]
       90 SETTABLEKS                       R18 R17 K28 ["Stylizer"]
       92 CALL                             R16 1 1
       93 MOVE                             R17 R15
       94 CALL                             R16 1 1
       95 MOVE                             R15 R16
       96 RETURN                           R15 1
