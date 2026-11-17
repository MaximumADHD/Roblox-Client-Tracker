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
       46 DUPTABLE                         R14 K24 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Size"], ["Spacing"] = 2, ["VerticalAlignment"]}]
       47 GETIMPORT                        R15 K26 [Enum.AutomaticSize.Y]
       49 SETTABLEKS                       R15 R14 K18 ["AutomaticSize"]
       51 GETIMPORT                        R15 K28 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R15 R14 K19 ["HorizontalAlignment"]
       55 GETIMPORT                        R15 K31 [Enum.FillDirection.Vertical]
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
       71 GETIMPORT                        R15 K33 [Enum.VerticalAlignment.Top]
       73 SETTABLEKS                       R15 R14 K23 ["VerticalAlignment"]
       75 DUPTABLE                         R15 K35 [{"Header", "Text"}]
       76 GETUPVAL                         R16 3
       77 GETTABLEKS                       R16 R16 K17 ["createElement"]
       79 GETUPVAL                         R17 6
       80 DUPTABLE                         R18 K40 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "ToolboxItemRowHeader", ["Text"], ["TextColor"], ["TextXAlignment"], ["Size"]}]
       81 GETIMPORT                        R19 K26 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R19 R18 K18 ["AutomaticSize"]
       85 NAMECALL                         R19 R10 K41 ["getNextOrder"]
       87 CALL                             R19 1 1
       88 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
       90 SETTABLEKS                       R3 R18 K8 ["Text"]
       92 GETTABLEKS                       R19 R2 K42 ["headerTextColor"]
       94 SETTABLEKS                       R19 R18 K38 ["TextColor"]
       96 GETIMPORT                        R19 K43 [Enum.TextXAlignment.Left]
       98 SETTABLEKS                       R19 R18 K39 ["TextXAlignment"]
      100 GETIMPORT                        R19 K45 [UDim2.new]
      102 LOADN                            R20 1
      103 LOADN                            R21 0
      104 LOADN                            R22 0
      105 LOADN                            R23 0
      106 CALL                             R19 4 1
      107 SETTABLEKS                       R19 R18 K7 ["Size"]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K34 ["Header"]
      112 JUMPIFNOT                        R9 ; [+38]
      113 GETUPVAL                         R16 3
      114 GETTABLEKS                       R16 R16 K17 ["createElement"]
      116 GETUPVAL                         R17 7
      117 DUPTABLE                         R18 K51 [{["LayoutOrder"], ["OnClick"], ["Size"], ["Style"] = "ToolboxItemRowInnerLink", ["Text"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      118 NAMECALL                         R19 R10 K41 ["getNextOrder"]
      120 CALL                             R19 1 1
      121 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
      123 SETTABLEKS                       R9 R18 K9 ["OnClick"]
      125 GETIMPORT                        R19 K45 [UDim2.new]
      127 LOADN                            R20 1
      128 LOADN                            R21 0
      129 LOADN                            R22 0
      130 MOVE                             R23 R11
      131 CALL                             R19 4 1
      132 SETTABLEKS                       R19 R18 K7 ["Size"]
      134 ORK                              R19 R8 K52 [""]
      135 SETTABLEKS                       R19 R18 K8 ["Text"]
      137 GETTABLEKS                       R19 R2 K12 ["textSize"]
      139 SETTABLEKS                       R19 R18 K47 ["TextSize"]
      141 GETIMPORT                        R19 K43 [Enum.TextXAlignment.Left]
      143 SETTABLEKS                       R19 R18 K39 ["TextXAlignment"]
      145 GETIMPORT                        R19 K53 [Enum.TextYAlignment.Top]
      147 SETTABLEKS                       R19 R18 K50 ["TextYAlignment"]
      149 CALL                             R16 2 1
      150 JUMP                             ; [+47]
      151 GETUPVAL                         R16 3
      152 GETTABLEKS                       R16 R16 K17 ["createElement"]
      154 GETUPVAL                         R17 8
      155 DUPTABLE                         R18 K56 [{["LayoutOrder"], ["AutomaticSize"], ["ClipsDescendants"] = True, ["Size"], ["Style"] = "ToolboxItemRowInnerText", ["Text"], ["TextSize"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["VerticalAlignment"]}]
      156 NAMECALL                         R19 R10 K41 ["getNextOrder"]
      158 CALL                             R19 1 1
      159 SETTABLEKS                       R19 R18 K4 ["LayoutOrder"]
      161 JUMPIFNOT                        R5 ; [+3]
      162 GETIMPORT                        R19 K58 [Enum.AutomaticSize.None]
      164 JUMP                             ; [+2]
      165 GETIMPORT                        R19 K26 [Enum.AutomaticSize.Y]
      167 SETTABLEKS                       R19 R18 K18 ["AutomaticSize"]
      169 GETIMPORT                        R19 K45 [UDim2.new]
      171 LOADN                            R20 1
      172 LOADN                            R21 0
      173 LOADN                            R22 0
      174 MOVE                             R23 R11
      175 CALL                             R19 4 1
      176 SETTABLEKS                       R19 R18 K7 ["Size"]
      178 ORK                              R19 R8 K52 [""]
      179 SETTABLEKS                       R19 R18 K8 ["Text"]
      181 GETTABLEKS                       R19 R2 K12 ["textSize"]
      183 SETTABLEKS                       R19 R18 K47 ["TextSize"]
      185 GETIMPORT                        R19 K43 [Enum.TextXAlignment.Left]
      187 SETTABLEKS                       R19 R18 K39 ["TextXAlignment"]
      189 GETIMPORT                        R19 K53 [Enum.TextYAlignment.Top]
      191 SETTABLEKS                       R19 R18 K50 ["TextYAlignment"]
      193 GETIMPORT                        R19 K33 [Enum.VerticalAlignment.Top]
      195 SETTABLEKS                       R19 R18 K23 ["VerticalAlignment"]
      197 CALL                             R16 2 1
      198 SETTABLEKS                       R16 R15 K8 ["Text"]
      200 CALL                             R12 3 -1
      201 RETURN                           R12 -1

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
