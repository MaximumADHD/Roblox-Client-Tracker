PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 SETTABLEKS                       R1 R0 K1 ["emptyFunc"]
        3 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Title"]
        4 GETTABLEKS                       R3 R1 K2 ["PromptText"]
        6 GETTABLEKS                       R4 R1 K3 ["BackButtonText"]
        8 GETTABLEKS                       R6 R1 K5 ["BackButtonEnabled"]
       10 ORK                              R5 R6 K4 [False]
       11 GETTABLEKS                       R6 R1 K6 ["NextButtonEnabled"]
       13 GETTABLEKS                       R7 R1 K7 ["NextButtonText"]
       15 GETTABLEKS                       R8 R1 K8 ["HasBackButton"]
       17 GETTABLEKS                       R10 R1 K10 ["LayoutOrder"]
       19 ORK                              R9 R10 K9 [1]
       20 GETTABLEKS                       R10 R1 K11 ["GoToNext"]
       22 GETTABLEKS                       R11 R1 K12 ["GoToPrevious"]
       24 JUMPIF                           R11 ; [+2]
       25 GETTABLEKS                       R11 R0 K13 ["emptyFunc"]
       27 GETTABLEKS                       R12 R1 K14 ["RenderContent"]
       29 JUMPIF                           R12 ; [+2]
       30 GETTABLEKS                       R12 R0 K13 ["emptyFunc"]
       32 GETTABLEKS                       R13 R1 K15 ["Stylizer"]
       34 GETUPVAL                         R14 0
       35 GETTABLEKS                       R14 R14 K16 ["new"]
       37 CALL                             R14 0 1
       38 GETUPVAL                         R15 1
       39 GETTABLEKS                       R15 R15 K17 ["createElement"]
       41 GETUPVAL                         R16 2
       42 DUPTABLE                         R17 K24 [{"Text", "LayoutOrder", "AlwaysExpanded", "Style", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       43 SETTABLEKS                       R2 R17 K18 ["Text"]
       45 SETTABLEKS                       R9 R17 K10 ["LayoutOrder"]
       47 LOADB                            R18 1
       48 SETTABLEKS                       R18 R17 K19 ["AlwaysExpanded"]
       50 LOADK                            R18 K25 ["Section"]
       51 SETTABLEKS                       R18 R17 K20 ["Style"]
       53 GETIMPORT                        R18 K28 [Enum.HorizontalAlignment.Left]
       55 SETTABLEKS                       R18 R17 K21 ["HorizontalAlignment"]
       57 GETIMPORT                        R18 K30 [Enum.VerticalAlignment.Top]
       59 SETTABLEKS                       R18 R17 K22 ["VerticalAlignment"]
       61 GETTABLEKS                       R18 R13 K31 ["ScreenSpacing"]
       63 SETTABLEKS                       R18 R17 K23 ["Spacing"]
       65 DUPTABLE                         R18 K35 [{"Prompt", "Content", "NextAndBackButtonContainer"}]
       66 GETUPVAL                         R19 1
       67 GETTABLEKS                       R19 R19 K17 ["createElement"]
       69 GETUPVAL                         R20 3
       70 DUPTABLE                         R21 K40 [{"TextXAlignment", "TextYAlignment", "AutomaticSize", "Text", "TextWrapped", "LayoutOrder"}]
       71 GETIMPORT                        R22 K41 [Enum.TextXAlignment.Left]
       73 SETTABLEKS                       R22 R21 K36 ["TextXAlignment"]
       75 GETIMPORT                        R22 K43 [Enum.TextYAlignment.Center]
       77 SETTABLEKS                       R22 R21 K37 ["TextYAlignment"]
       79 GETIMPORT                        R22 K45 [Enum.AutomaticSize.XY]
       81 SETTABLEKS                       R22 R21 K38 ["AutomaticSize"]
       83 SETTABLEKS                       R3 R21 K18 ["Text"]
       85 LOADB                            R22 1
       86 SETTABLEKS                       R22 R21 K39 ["TextWrapped"]
       88 NAMECALL                         R22 R14 K46 ["getNextOrder"]
       90 CALL                             R22 1 1
       91 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
       93 CALL                             R19 2 1
       94 SETTABLEKS                       R19 R18 K32 ["Prompt"]
       96 MOVE                             R19 R12
       97 NAMECALL                         R20 R14 K46 ["getNextOrder"]
       99 CALL                             R20 1 -1
      100 CALL                             R19 -1 1
      101 SETTABLEKS                       R19 R18 K33 ["Content"]
      103 GETUPVAL                         R19 1
      104 GETTABLEKS                       R19 R19 K17 ["createElement"]
      106 GETUPVAL                         R20 4
      107 DUPTABLE                         R21 K48 [{"LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "AutomaticSize", "Spacing"}]
      108 NAMECALL                         R22 R14 K46 ["getNextOrder"]
      110 CALL                             R22 1 1
      111 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      113 GETIMPORT                        R22 K51 [Enum.FillDirection.Horizontal]
      115 SETTABLEKS                       R22 R21 K47 ["Layout"]
      117 GETIMPORT                        R22 K53 [Enum.HorizontalAlignment.Right]
      119 SETTABLEKS                       R22 R21 K21 ["HorizontalAlignment"]
      121 GETIMPORT                        R22 K54 [Enum.VerticalAlignment.Center]
      123 SETTABLEKS                       R22 R21 K22 ["VerticalAlignment"]
      125 GETIMPORT                        R22 K56 [Enum.AutomaticSize.Y]
      127 SETTABLEKS                       R22 R21 K38 ["AutomaticSize"]
      129 GETTABLEKS                       R22 R13 K57 ["ButtonSpacing"]
      131 SETTABLEKS                       R22 R21 K23 ["Spacing"]
      133 DUPTABLE                         R22 K60 [{"BackButton", "NextButton"}]
      134 MOVE                             R23 R8
      135 JUMPIFNOT                        R23 ; [+41]
      136 GETUPVAL                         R23 1
      137 GETTABLEKS                       R23 R23 K17 ["createElement"]
      139 GETUPVAL                         R24 5
      140 DUPTABLE                         R25 K64 [{"Text", "Style", "StyleModifier", "Size", "OnClick", "LayoutOrder"}]
      141 SETTABLEKS                       R4 R25 K18 ["Text"]
      143 LOADK                            R26 K65 ["Round"]
      144 SETTABLEKS                       R26 R25 K20 ["Style"]
      146 JUMPIF                           R5 ; [+4]
      147 GETUPVAL                         R26 6
      148 GETTABLEKS                       R26 R26 K66 ["Disabled"]
      150 JUMPIF                           R26 ; [+1]
      151 LOADNIL                          R26
      152 SETTABLEKS                       R26 R25 K61 ["StyleModifier"]
      154 GETIMPORT                        R26 K68 [UDim2.new]
      156 LOADN                            R27 0
      157 GETTABLEKS                       R28 R13 K69 ["ButtonWidth"]
      159 LOADN                            R29 0
      160 GETTABLEKS                       R30 R13 K70 ["ButtonHeight"]
      162 CALL                             R26 4 1
      163 SETTABLEKS                       R26 R25 K62 ["Size"]
      165 JUMPIFNOT                        R5 ; [+2]
      166 MOVE                             R26 R11
      167 JUMPIF                           R26 ; [+1]
      168 DUPCLOSURE                       R26 K71 [PROTO_2]
      169 SETTABLEKS                       R26 R25 K63 ["OnClick"]
      171 NAMECALL                         R26 R14 K46 ["getNextOrder"]
      173 CALL                             R26 1 1
      174 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      176 CALL                             R23 2 1
      177 SETTABLEKS                       R23 R22 K58 ["BackButton"]
      179 GETUPVAL                         R23 1
      180 GETTABLEKS                       R23 R23 K17 ["createElement"]
      182 GETUPVAL                         R24 5
      183 DUPTABLE                         R25 K64 [{"Text", "Style", "StyleModifier", "Size", "OnClick", "LayoutOrder"}]
      184 SETTABLEKS                       R7 R25 K18 ["Text"]
      186 LOADK                            R26 K65 ["Round"]
      187 SETTABLEKS                       R26 R25 K20 ["Style"]
      189 JUMPIF                           R6 ; [+4]
      190 GETUPVAL                         R26 6
      191 GETTABLEKS                       R26 R26 K66 ["Disabled"]
      193 JUMPIF                           R26 ; [+1]
      194 LOADNIL                          R26
      195 SETTABLEKS                       R26 R25 K61 ["StyleModifier"]
      197 GETIMPORT                        R26 K68 [UDim2.new]
      199 LOADN                            R27 0
      200 GETTABLEKS                       R28 R13 K69 ["ButtonWidth"]
      202 LOADN                            R29 0
      203 GETTABLEKS                       R30 R13 K70 ["ButtonHeight"]
      205 CALL                             R26 4 1
      206 SETTABLEKS                       R26 R25 K62 ["Size"]
      208 JUMPIFNOT                        R6 ; [+2]
      209 MOVE                             R26 R10
      210 JUMPIF                           R26 ; [+1]
      211 DUPCLOSURE                       R26 K72 [PROTO_3]
      212 SETTABLEKS                       R26 R25 K63 ["OnClick"]
      214 NAMECALL                         R26 R14 K46 ["getNextOrder"]
      216 CALL                             R26 1 1
      217 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      219 CALL                             R23 2 1
      220 SETTABLEKS                       R23 R22 K59 ["NextButton"]
      222 CALL                             R19 3 1
      223 SETTABLEKS                       R19 R18 K34 ["NextAndBackButtonContainer"]
      225 CALL                             R15 3 -1
      226 RETURN                           R15 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Scrollable"]
        4 NAMECALL                         R3 R0 K2 ["renderPane"]
        6 CALL                             R3 1 1
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R3 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["createElement"]
       12 GETUPVAL                         R5 1
       13 NEWTABLE                         R6 0 0
       15 DUPTABLE                         R7 K5 [{"MainFrame"}]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K3 ["createElement"]
       19 GETUPVAL                         R9 2
       20 NEWTABLE                         R10 0 0
       22 DUPTABLE                         R11 K7 [{"ExpandablePane"}]
       23 SETTABLEKS                       R3 R11 K6 ["ExpandablePane"]
       25 CALL                             R8 3 1
       26 SETTABLEKS                       R8 R7 K4 ["MainFrame"]
       28 CALL                             R4 3 -1
       29 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["UI"]
       25 GETTABLEKS                       R6 R5 K10 ["Button"]
       27 GETTABLEKS                       R7 R5 K11 ["ExpandablePane"]
       29 GETTABLEKS                       R8 R5 K12 ["Pane"]
       31 GETTABLEKS                       R9 R5 K13 ["ScrollingFrame"]
       33 GETTABLEKS                       R10 R5 K14 ["TextLabel"]
       35 GETTABLEKS                       R11 R2 K15 ["Util"]
       37 GETTABLEKS                       R12 R11 K16 ["StyleModifier"]
       39 GETTABLEKS                       R13 R11 K17 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R14 R1 K18 ["PureComponent"]
       43 LOADK                            R16 K19 ["FlowScreenLayout"]
       44 NAMECALL                         R14 R14 K20 ["extend"]
       46 CALL                             R14 2 1
       47 GETTABLEKS                       R15 R11 K21 ["Typecheck"]
       49 GETTABLEKS                       R16 R15 K22 ["wrap"]
       51 MOVE                             R17 R14
       52 GETIMPORT                        R18 K1 [script]
       54 CALL                             R16 2 0
       55 DUPCLOSURE                       R16 K23 [PROTO_1]
       56 SETTABLEKS                       R16 R14 K24 ["init"]
       58 DUPCLOSURE                       R16 K25 [PROTO_4]
       59 CAPTURE                          VAL R13
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R12
       66 SETTABLEKS                       R16 R14 K26 ["renderPane"]
       68 DUPCLOSURE                       R16 K27 [PROTO_5]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R16 R14 K28 ["render"]
       74 MOVE                             R16 R4
       75 DUPTABLE                         R17 K30 [{"Stylizer"}]
       76 GETTABLEKS                       R18 R3 K29 ["Stylizer"]
       78 SETTABLEKS                       R18 R17 K29 ["Stylizer"]
       80 CALL                             R16 1 1
       81 MOVE                             R17 R14
       82 CALL                             R16 1 1
       83 MOVE                             R14 R16
       84 RETURN                           R14 1
