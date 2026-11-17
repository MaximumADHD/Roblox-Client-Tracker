PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETIMPORT                        R3 K4 [UDim.new]
        6 LOADN                            R4 0
        7 GETTABLEKS                       R5 R2 K5 ["Spacing"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R5 R1 K6 ["FillDirection"]
       13 GETTABLEKS                       R6 R2 K6 ["FillDirection"]
       15 GETIMPORT                        R7 K9 [Enum.FillDirection.Horizontal]
       17 CALL                             R4 3 1
       18 GETTABLEKS                       R5 R1 K10 ["Title"]
       20 GETIMPORT                        R7 K9 [Enum.FillDirection.Horizontal]
       22 JUMPIFNOTEQ                      R4 R7 ; [+8]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R7 R1 K11 ["TitleWidth"]
       27 GETTABLEKS                       R8 R2 K11 ["TitleWidth"]
       29 CALL                             R6 2 1
       30 JUMP                             ; [+1]
       31 LOADNIL                          R6
       32 GETTABLEKS                       R7 R1 K12 ["ForwardRef"]
       34 GETUPVAL                         R8 1
       35 MOVE                             R9 R1
       36 NEWTABLE                         R10 0 6
       38 LOADK                            R11 K12 ["ForwardRef"]
       39 LOADK                            R12 K10 ["Title"]
       40 LOADK                            R13 K11 ["TitleWidth"]
       41 LOADK                            R14 K6 ["FillDirection"]
       42 LOADK                            R15 K13 ["Style"]
       43 GETUPVAL                         R16 2
       44 GETTABLEKS                       R16 R16 K14 ["Children"]
       46 SETLIST                          R10 R11 6 [1]
       48 CALL                             R8 2 1
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K15 ["createElement"]
       52 GETUPVAL                         R10 3
       53 GETUPVAL                         R11 4
       54 NEWTABLE                         R12 8 0
       56 GETIMPORT                        R13 K18 [Enum.AutomaticSize.Y]
       58 SETTABLEKS                       R13 R12 K16 ["AutomaticSize"]
       60 GETIMPORT                        R13 K21 [Enum.HorizontalAlignment.Left]
       62 SETTABLEKS                       R13 R12 K19 ["HorizontalAlignment"]
       64 GETIMPORT                        R13 K24 [Enum.VerticalAlignment.Top]
       66 SETTABLEKS                       R13 R12 K22 ["VerticalAlignment"]
       68 SETTABLEKS                       R4 R12 K25 ["Layout"]
       70 GETTABLEKS                       R13 R1 K26 ["LayoutOrder"]
       72 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
       74 SETTABLEKS                       R3 R12 K5 ["Spacing"]
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K27 ["Ref"]
       79 SETTABLE                         R7 R12 R13
       80 MOVE                             R13 R8
       81 CALL                             R11 2 1
       82 DUPTABLE                         R12 K29 [{"Title", "Content"}]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R13 R13 K15 ["createElement"]
       86 GETUPVAL                         R14 5
       87 DUPTABLE                         R15 K36 [{["AutomaticSize"], ["TextXAlignment"], ["LayoutOrder"] = 1, ["Size"], ["Style"], ["Text"], ["TextWrapped"] = True}]
       88 GETIMPORT                        R16 K18 [Enum.AutomaticSize.Y]
       90 SETTABLEKS                       R16 R15 K16 ["AutomaticSize"]
       92 GETIMPORT                        R16 K37 [Enum.TextXAlignment.Left]
       94 SETTABLEKS                       R16 R15 K30 ["TextXAlignment"]
       96 JUMPIFNOT                        R6 ; [+8]
       97 GETIMPORT                        R16 K39 [UDim2.new]
       99 LOADN                            R17 0
      100 MOVE                             R18 R6
      101 LOADN                            R19 0
      102 LOADN                            R20 0
      103 CALL                             R16 4 1
      104 JUMP                             ; [+5]
      105 GETIMPORT                        R16 K41 [UDim2.fromScale]
      107 LOADN                            R17 1
      108 LOADN                            R18 0
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R15 K32 ["Size"]
      112 GETTABLEKS                       R17 R1 K13 ["Style"]
      114 ORK                              R16 R17 K10 ["Title"]
      115 SETTABLEKS                       R16 R15 K13 ["Style"]
      117 SETTABLEKS                       R5 R15 K33 ["Text"]
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K10 ["Title"]
      122 GETUPVAL                         R13 2
      123 GETTABLEKS                       R13 R13 K15 ["createElement"]
      125 GETUPVAL                         R14 3
      126 DUPTABLE                         R15 K44 [{["AutomaticSize"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Spacing"], ["Size"], ["ZIndex"]}]
      127 GETIMPORT                        R16 K18 [Enum.AutomaticSize.Y]
      129 SETTABLEKS                       R16 R15 K16 ["AutomaticSize"]
      131 GETIMPORT                        R16 K21 [Enum.HorizontalAlignment.Left]
      133 SETTABLEKS                       R16 R15 K19 ["HorizontalAlignment"]
      135 GETIMPORT                        R16 K24 [Enum.VerticalAlignment.Top]
      137 SETTABLEKS                       R16 R15 K22 ["VerticalAlignment"]
      139 GETIMPORT                        R16 K46 [Enum.FillDirection.Vertical]
      141 SETTABLEKS                       R16 R15 K25 ["Layout"]
      143 SETTABLEKS                       R3 R15 K5 ["Spacing"]
      145 JUMPIFNOT                        R6 ; [+8]
      146 GETIMPORT                        R16 K39 [UDim2.new]
      148 LOADN                            R17 1
      149 MINUS                            R18 R6
      150 LOADN                            R19 0
      151 LOADN                            R20 0
      152 CALL                             R16 4 1
      153 JUMP                             ; [+5]
      154 GETIMPORT                        R16 K41 [UDim2.fromScale]
      156 LOADN                            R17 1
      157 LOADN                            R18 0
      158 CALL                             R16 2 1
      159 SETTABLEKS                       R16 R15 K32 ["Size"]
      161 GETTABLEKS                       R16 R1 K43 ["ZIndex"]
      163 SETTABLEKS                       R16 R15 K43 ["ZIndex"]
      165 GETUPVAL                         R17 2
      166 GETTABLEKS                       R17 R17 K14 ["Children"]
      168 GETTABLE                         R16 R1 R17
      169 CALL                             R13 3 1
      170 SETTABLEKS                       R13 R12 K28 ["Content"]
      172 CALL                             R9 3 -1
      173 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K11 ["omit"]
       34 GETTABLEKS                       R6 R4 K12 ["join"]
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Types"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Util"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K15 ["prioritize"]
       48 GETTABLEKS                       R10 R0 K2 ["UI"]
       50 GETIMPORT                        R11 K6 [require]
       52 GETTABLEKS                       R12 R10 K16 ["Components"]
       54 GETTABLEKS                       R12 R12 K17 ["Pane"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K6 [require]
       59 GETTABLEKS                       R13 R10 K16 ["Components"]
       61 GETTABLEKS                       R13 R13 K18 ["TextLabel"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K6 [require]
       66 GETTABLEKS                       R14 R0 K19 ["Wrappers"]
       68 GETTABLEKS                       R14 R14 K20 ["withForwardRef"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R1 K21 ["PureComponent"]
       73 LOADK                            R16 K22 ["TitledFrame"]
       74 NAMECALL                         R14 R14 K23 ["extend"]
       76 CALL                             R14 2 1
       77 DUPCLOSURE                       R15 K24 [PROTO_0]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R12
       84 SETTABLEKS                       R15 R14 K25 ["render"]
       86 MOVE                             R15 R3
       87 DUPTABLE                         R16 K27 [{"Stylizer"}]
       88 GETTABLEKS                       R17 R2 K26 ["Stylizer"]
       90 SETTABLEKS                       R17 R16 K26 ["Stylizer"]
       92 CALL                             R15 1 1
       93 MOVE                             R16 R14
       94 CALL                             R15 1 1
       95 MOVE                             R14 R15
       96 MOVE                             R15 R13
       97 MOVE                             R16 R14
       98 CALL                             R15 1 -1
       99 RETURN                           R15 -1
