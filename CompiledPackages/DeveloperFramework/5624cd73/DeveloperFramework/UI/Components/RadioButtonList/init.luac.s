PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["state"]
        6 GETTABLEKS                       R4 R2 K2 ["CurrentSelectedKey"]
        8 GETTABLEKS                       R5 R2 K3 ["OnClick"]
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R6 1
       13 MOVE                             R7 R4
       14 GETTABLEKS                       R8 R3 K4 ["selectedKey"]
       16 CALL                             R6 2 1
       17 JUMPIFEQ                         R6 R0 ; [+11]
       19 MOVE                             R7 R5
       20 MOVE                             R8 R0
       21 CALL                             R7 1 0
       22 GETUPVAL                         R7 0
       23 DUPTABLE                         R9 K5 [{"selectedKey"}]
       24 SETTABLEKS                       R0 R9 K4 ["selectedKey"]
       26 NAMECALL                         R7 R7 K6 ["setState"]
       28 CALL                             R7 2 0
       29 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"selectedKey"}]
        1 GETTABLEKS                       R3 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R3 K3 ["SelectedKey"]
        5 SETTABLEKS                       R2 R1 K0 ["selectedKey"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K5 ["onClick"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClick"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Key"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["Disabled"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["AutomaticSize"]
        8 GETTABLEKS                       R4 R1 K3 ["Buttons"]
       10 GETTABLEKS                       R5 R1 K4 ["CurrentSelectedKey"]
       12 GETTABLEKS                       R6 R1 K5 ["FillDirection"]
       14 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       16 GETTABLEKS                       R8 R1 K7 ["TextSize"]
       18 GETTABLEKS                       R9 R1 K8 ["Stylizer"]
       20 GETTABLEKS                       R10 R9 K9 ["RadioButtonStyle"]
       22 NEWTABLE                         R11 0 0
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R14 R0 K0 ["props"]
       27 GETTABLEKS                       R13 R14 K10 ["TextWrapped"]
       29 GETTABLEKS                       R14 R9 K10 ["TextWrapped"]
       31 CALL                             R12 2 1
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R15 R0 K0 ["props"]
       35 GETTABLEKS                       R14 R15 K11 ["TextXAlignment"]
       37 GETTABLEKS                       R15 R9 K11 ["TextXAlignment"]
       39 CALL                             R13 2 1
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R16 R0 K0 ["props"]
       43 GETTABLEKS                       R15 R16 K12 ["VerticalAlignment"]
       45 GETTABLEKS                       R16 R9 K12 ["VerticalAlignment"]
       47 CALL                             R14 2 1
       48 GETIMPORT                        R15 K14 [ipairs]
       50 MOVE                             R16 R4
       51 CALL                             R15 1 3
       52 FORGPREP_INEXT                   R15
       53 GETUPVAL                         R20 0
       54 MOVE                             R21 R5
       55 GETTABLEKS                       R22 R2 K15 ["selectedKey"]
       57 CALL                             R20 2 1
       58 GETTABLEKS                       R22 R19 K16 ["Key"]
       60 JUMPIFEQ                         R20 R22 ; [+2]
       62 LOADB                            R21 0 +1
       63 LOADB                            R21 1
       64 LOADNIL                          R22
       65 GETIMPORT                        R23 K19 [Enum.AutomaticSize.Y]
       67 JUMPIFNOTEQ                      R3 R23 ; [+9]
       69 GETIMPORT                        R23 K22 [UDim2.new]
       71 LOADN                            R24 1
       72 LOADN                            R25 0
       73 LOADN                            R26 0
       74 LOADN                            R27 0
       75 CALL                             R23 4 1
       76 MOVE                             R22 R23
       77 GETTABLEKS                       R23 R19 K16 ["Key"]
       79 GETUPVAL                         R25 1
       80 GETTABLEKS                       R24 R25 K23 ["createElement"]
       82 GETUPVAL                         R25 2
       83 DUPTABLE                         R26 K33 [{"AutomaticSize", "Description", "LinkProps", "Disabled", "Key", "LayoutOrder", "OnClick", "Size", "Style", "Selected", "Text", "TextSize", "TextWrapped", "TextXAlignment", "Tooltip", "VerticalAlignment"}]
       84 SETTABLEKS                       R3 R26 K2 ["AutomaticSize"]
       86 GETTABLEKS                       R27 R19 K24 ["Description"]
       88 SETTABLEKS                       R27 R26 K24 ["Description"]
       90 GETTABLEKS                       R27 R19 K25 ["LinkProps"]
       92 SETTABLEKS                       R27 R26 K25 ["LinkProps"]
       94 GETTABLEKS                       R27 R19 K26 ["Disabled"]
       96 SETTABLEKS                       R27 R26 K26 ["Disabled"]
       98 GETTABLEKS                       R27 R19 K16 ["Key"]
      100 SETTABLEKS                       R27 R26 K16 ["Key"]
      102 SETTABLEKS                       R18 R26 K6 ["LayoutOrder"]
      104 NEWCLOSURE                       R27 P0
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R19
      107 SETTABLEKS                       R27 R26 K27 ["OnClick"]
      109 SETTABLEKS                       R22 R26 K28 ["Size"]
      111 SETTABLEKS                       R10 R26 K29 ["Style"]
      113 SETTABLEKS                       R21 R26 K30 ["Selected"]
      115 GETTABLEKS                       R27 R19 K31 ["Text"]
      117 SETTABLEKS                       R27 R26 K31 ["Text"]
      119 SETTABLEKS                       R8 R26 K7 ["TextSize"]
      121 SETTABLEKS                       R12 R26 K10 ["TextWrapped"]
      123 SETTABLEKS                       R13 R26 K11 ["TextXAlignment"]
      125 GETTABLEKS                       R27 R19 K32 ["Tooltip"]
      127 SETTABLEKS                       R27 R26 K32 ["Tooltip"]
      129 SETTABLEKS                       R14 R26 K12 ["VerticalAlignment"]
      131 CALL                             R24 2 1
      132 SETTABLE                         R24 R11 R23
      133 FORGLOOP                         R15 2 [inext] ; [-81]
      135 GETUPVAL                         R16 1
      136 GETTABLEKS                       R15 R16 K23 ["createElement"]
      138 GETUPVAL                         R16 3
      139 DUPTABLE                         R17 K37 [{"AutomaticSize", "Spacing", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      140 GETIMPORT                        R18 K39 [Enum.AutomaticSize.XY]
      142 SETTABLEKS                       R18 R17 K2 ["AutomaticSize"]
      144 GETIMPORT                        R18 K41 [UDim.new]
      146 LOADN                            R19 0
      147 GETTABLEKS                       R20 R9 K42 ["Padding"]
      149 CALL                             R18 2 1
      150 SETTABLEKS                       R18 R17 K34 ["Spacing"]
      152 GETIMPORT                        R18 K44 [Enum.HorizontalAlignment.Left]
      154 SETTABLEKS                       R18 R17 K35 ["HorizontalAlignment"]
      156 GETUPVAL                         R18 0
      157 MOVE                             R19 R6
      158 GETTABLEKS                       R20 R9 K5 ["FillDirection"]
      160 GETIMPORT                        R21 K46 [Enum.FillDirection.Vertical]
      162 CALL                             R18 3 1
      163 SETTABLEKS                       R18 R17 K36 ["Layout"]
      165 SETTABLEKS                       R7 R17 K6 ["LayoutOrder"]
      167 MOVE                             R18 R11
      168 CALL                             R15 3 -1
      169 RETURN                           R15 -1

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
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["prioritize"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Util"]
       36 GETTABLEKS                       R7 R8 K12 ["Typecheck"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R0 K2 ["UI"]
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R10 R7 K13 ["Components"]
       45 GETTABLEKS                       R9 R10 K14 ["Pane"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R11 R7 K13 ["Components"]
       52 GETTABLEKS                       R10 R11 K15 ["RadioButton"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R1 K16 ["PureComponent"]
       57 LOADK                            R12 K17 ["RadioButtonList"]
       58 NAMECALL                         R10 R10 K18 ["extend"]
       60 CALL                             R10 2 1
       61 GETTABLEKS                       R11 R6 K19 ["wrap"]
       63 MOVE                             R12 R10
       64 GETIMPORT                        R13 K1 [script]
       66 CALL                             R11 2 0
       67 DUPTABLE                         R11 K21 [{"OnClick"}]
       68 DUPCLOSURE                       R12 K22 [PROTO_0]
       69 SETTABLEKS                       R12 R11 K20 ["OnClick"]
       71 SETTABLEKS                       R11 R10 K23 ["defaultProps"]
       73 DUPCLOSURE                       R11 K24 [PROTO_2]
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R11 R10 K25 ["init"]
       77 DUPCLOSURE                       R11 K26 [PROTO_4]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R11 R10 K27 ["render"]
       84 MOVE                             R11 R3
       85 DUPTABLE                         R12 K29 [{"Stylizer"}]
       86 GETTABLEKS                       R13 R2 K28 ["Stylizer"]
       88 SETTABLEKS                       R13 R12 K28 ["Stylizer"]
       90 CALL                             R11 1 1
       91 MOVE                             R12 R10
       92 CALL                             R11 1 1
       93 MOVE                             R10 R11
       94 RETURN                           R10 1
