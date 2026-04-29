PROTO_0:
        0 DUPTABLE                         R1 K1 [{"count"}]
        1 GETTABLEKS                       R3 R0 K0 ["count"]
        3 ADDK                             R2 R3 K2 [1]
        4 SETTABLEKS                       R2 R1 K0 ["count"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R3 K1 [{"count"}]
        1 LOADN                            R4 1
        2 SETTABLEKS                       R4 R3 K0 ["count"]
        4 NAMECALL                         R1 R0 K2 ["setState"]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["updateCount"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R3 K1 ["count"]
        4 FASTCALL1                        TOSTRING R2 ; [+2]
        5 GETIMPORT                        R1 K3 [tostring]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K4 ["createElement"]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R4 K11 [{"Size", "AutomaticSize", "Padding", "Spacing", "Layout", "HorizontalAlignment"}]
       13 GETIMPORT                        R5 K14 [UDim2.new]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 LOADN                            R9 0
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K5 ["Size"]
       22 GETIMPORT                        R5 K17 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R5 R4 K6 ["AutomaticSize"]
       26 LOADN                            R5 50
       27 SETTABLEKS                       R5 R4 K7 ["Padding"]
       29 LOADN                            R5 10
       30 SETTABLEKS                       R5 R4 K8 ["Spacing"]
       32 GETIMPORT                        R5 K20 [Enum.FillDirection.Vertical]
       34 SETTABLEKS                       R5 R4 K9 ["Layout"]
       36 GETIMPORT                        R5 K22 [Enum.HorizontalAlignment.Left]
       38 SETTABLEKS                       R5 R4 K10 ["HorizontalAlignment"]
       40 DUPTABLE                         R5 K27 [{"Instruction", "SuffixLength", "NoSuffixLength", "On"}]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K4 ["createElement"]
       44 GETUPVAL                         R7 2
       45 DUPTABLE                         R8 K31 [{"Text", "Size", "AutomaticSize", "TextXAlignment", "LayoutOrder"}]
       46 LOADK                            R9 K32 ["Resize the storybook window!"]
       47 SETTABLEKS                       R9 R8 K28 ["Text"]
       49 GETIMPORT                        R9 K14 [UDim2.new]
       51 LOADN                            R10 1
       52 LOADN                            R11 0
       53 LOADN                            R12 0
       54 LOADN                            R13 0
       55 CALL                             R9 4 1
       56 SETTABLEKS                       R9 R8 K5 ["Size"]
       58 GETIMPORT                        R9 K17 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       62 GETIMPORT                        R9 K33 [Enum.TextXAlignment.Left]
       64 SETTABLEKS                       R9 R8 K29 ["TextXAlignment"]
       66 LOADN                            R9 2
       67 SETTABLEKS                       R9 R8 K30 ["LayoutOrder"]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K23 ["Instruction"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R6 R7 K4 ["createElement"]
       75 GETUPVAL                         R7 2
       76 DUPTABLE                         R8 K34 [{"Text", "SuffixLength", "Size", "AutomaticSize", "TextXAlignment", "LayoutOrder"}]
       77 LOADK                            R9 K35 ["This line has a suffix length of 8. This line has a suffix length of 8."]
       78 SETTABLEKS                       R9 R8 K28 ["Text"]
       80 LOADN                            R9 8
       81 SETTABLEKS                       R9 R8 K24 ["SuffixLength"]
       83 GETIMPORT                        R9 K14 [UDim2.new]
       85 LOADN                            R10 1
       86 LOADN                            R11 0
       87 LOADN                            R12 0
       88 LOADN                            R13 0
       89 CALL                             R9 4 1
       90 SETTABLEKS                       R9 R8 K5 ["Size"]
       92 GETIMPORT                        R9 K17 [Enum.AutomaticSize.Y]
       94 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
       96 GETIMPORT                        R9 K33 [Enum.TextXAlignment.Left]
       98 SETTABLEKS                       R9 R8 K29 ["TextXAlignment"]
      100 LOADN                            R9 3
      101 SETTABLEKS                       R9 R8 K30 ["LayoutOrder"]
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R5 K24 ["SuffixLength"]
      106 GETUPVAL                         R7 0
      107 GETTABLEKS                       R6 R7 K4 ["createElement"]
      109 GETUPVAL                         R7 2
      110 DUPTABLE                         R8 K31 [{"Text", "Size", "AutomaticSize", "TextXAlignment", "LayoutOrder"}]
      111 LOADK                            R9 K36 ["This line has no suffix length. This line has no suffix length. "]
      112 SETTABLEKS                       R9 R8 K28 ["Text"]
      114 GETIMPORT                        R9 K14 [UDim2.new]
      116 LOADN                            R10 1
      117 LOADN                            R11 0
      118 LOADN                            R12 0
      119 LOADN                            R13 0
      120 CALL                             R9 4 1
      121 SETTABLEKS                       R9 R8 K5 ["Size"]
      123 GETIMPORT                        R9 K17 [Enum.AutomaticSize.Y]
      125 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
      127 GETIMPORT                        R9 K33 [Enum.TextXAlignment.Left]
      129 SETTABLEKS                       R9 R8 K29 ["TextXAlignment"]
      131 LOADN                            R9 4
      132 SETTABLEKS                       R9 R8 K30 ["LayoutOrder"]
      134 CALL                             R6 2 1
      135 SETTABLEKS                       R6 R5 K25 ["NoSuffixLength"]
      137 GETUPVAL                         R7 0
      138 GETTABLEKS                       R6 R7 K4 ["createElement"]
      140 GETUPVAL                         R7 2
      141 NEWTABLE                         R8 8 0
      143 LOADK                            R10 K37 ["Number of times the absolute size of this text label has changed is: "]
      144 MOVE                             R11 R1
      145 CONCAT                           R9 R10 R11
      146 SETTABLEKS                       R9 R8 K28 ["Text"]
      148 FASTCALL1                        STRING_LEN R1 ; [+3]
      149 MOVE                             R10 R1
      150 GETIMPORT                        R9 K40 [string.len]
      152 CALL                             R9 1 1
      153 SETTABLEKS                       R9 R8 K24 ["SuffixLength"]
      155 GETIMPORT                        R9 K14 [UDim2.new]
      157 LOADN                            R10 1
      158 LOADN                            R11 0
      159 LOADN                            R12 0
      160 LOADN                            R13 0
      161 CALL                             R9 4 1
      162 SETTABLEKS                       R9 R8 K5 ["Size"]
      164 GETIMPORT                        R9 K17 [Enum.AutomaticSize.Y]
      166 SETTABLEKS                       R9 R8 K6 ["AutomaticSize"]
      168 GETIMPORT                        R9 K33 [Enum.TextXAlignment.Left]
      170 SETTABLEKS                       R9 R8 K29 ["TextXAlignment"]
      172 LOADN                            R9 4
      173 SETTABLEKS                       R9 R8 K30 ["LayoutOrder"]
      175 GETUPVAL                         R11 0
      176 GETTABLEKS                       R10 R11 K41 ["Change"]
      178 GETTABLEKS                       R9 R10 K42 ["AbsoluteSize"]
      180 GETTABLEKS                       R10 R0 K43 ["updateCount"]
      182 SETTABLE                         R10 R8 R9
      183 CALL                             R6 2 1
      184 SETTABLEKS                       R6 R5 K26 ["On"]
      186 CALL                             R2 3 -1
      187 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["TruncatedTextLabel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ExampleTruncatedTextLabel"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_2]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_3]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 RETURN                           R4 1
