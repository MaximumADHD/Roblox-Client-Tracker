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
       42 DUPTABLE                         R17 K26 [{["Text"], ["LayoutOrder"], ["AlwaysExpanded"] = True, ["Style"] = "Section", ["HorizontalAlignment"], ["VerticalAlignment"], ["Spacing"]}]
       43 SETTABLEKS                       R2 R17 K18 ["Text"]
       45 SETTABLEKS                       R9 R17 K10 ["LayoutOrder"]
       47 GETIMPORT                        R18 K29 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R18 R17 K23 ["HorizontalAlignment"]
       51 GETIMPORT                        R18 K31 [Enum.VerticalAlignment.Top]
       53 SETTABLEKS                       R18 R17 K24 ["VerticalAlignment"]
       55 GETTABLEKS                       R18 R13 K32 ["ScreenSpacing"]
       57 SETTABLEKS                       R18 R17 K25 ["Spacing"]
       59 DUPTABLE                         R18 K36 [{"Prompt", "Content", "NextAndBackButtonContainer"}]
       60 GETUPVAL                         R19 1
       61 GETTABLEKS                       R19 R19 K17 ["createElement"]
       63 GETUPVAL                         R20 3
       64 DUPTABLE                         R21 K41 [{["TextXAlignment"], ["TextYAlignment"], ["AutomaticSize"], ["Text"], ["TextWrapped"] = True, ["LayoutOrder"]}]
       65 GETIMPORT                        R22 K42 [Enum.TextXAlignment.Left]
       67 SETTABLEKS                       R22 R21 K37 ["TextXAlignment"]
       69 GETIMPORT                        R22 K44 [Enum.TextYAlignment.Center]
       71 SETTABLEKS                       R22 R21 K38 ["TextYAlignment"]
       73 GETIMPORT                        R22 K46 [Enum.AutomaticSize.XY]
       75 SETTABLEKS                       R22 R21 K39 ["AutomaticSize"]
       77 SETTABLEKS                       R3 R21 K18 ["Text"]
       79 NAMECALL                         R22 R14 K47 ["getNextOrder"]
       81 CALL                             R22 1 1
       82 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
       84 CALL                             R19 2 1
       85 SETTABLEKS                       R19 R18 K33 ["Prompt"]
       87 MOVE                             R19 R12
       88 NAMECALL                         R20 R14 K47 ["getNextOrder"]
       90 CALL                             R20 1 -1
       91 CALL                             R19 -1 1
       92 SETTABLEKS                       R19 R18 K34 ["Content"]
       94 GETUPVAL                         R19 1
       95 GETTABLEKS                       R19 R19 K17 ["createElement"]
       97 GETUPVAL                         R20 4
       98 DUPTABLE                         R21 K49 [{"LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "AutomaticSize", "Spacing"}]
       99 NAMECALL                         R22 R14 K47 ["getNextOrder"]
      101 CALL                             R22 1 1
      102 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      104 GETIMPORT                        R22 K52 [Enum.FillDirection.Horizontal]
      106 SETTABLEKS                       R22 R21 K48 ["Layout"]
      108 GETIMPORT                        R22 K54 [Enum.HorizontalAlignment.Right]
      110 SETTABLEKS                       R22 R21 K23 ["HorizontalAlignment"]
      112 GETIMPORT                        R22 K55 [Enum.VerticalAlignment.Center]
      114 SETTABLEKS                       R22 R21 K24 ["VerticalAlignment"]
      116 GETIMPORT                        R22 K57 [Enum.AutomaticSize.Y]
      118 SETTABLEKS                       R22 R21 K39 ["AutomaticSize"]
      120 GETTABLEKS                       R22 R13 K58 ["ButtonSpacing"]
      122 SETTABLEKS                       R22 R21 K25 ["Spacing"]
      124 DUPTABLE                         R22 K61 [{"BackButton", "NextButton"}]
      125 MOVE                             R23 R8
      126 JUMPIFNOT                        R23 ; [+38]
      127 GETUPVAL                         R23 1
      128 GETTABLEKS                       R23 R23 K17 ["createElement"]
      130 GETUPVAL                         R24 5
      131 DUPTABLE                         R25 K66 [{["Text"], ["Style"] = "Round", ["StyleModifier"], ["Size"], ["OnClick"], ["LayoutOrder"]}]
      132 SETTABLEKS                       R4 R25 K18 ["Text"]
      134 JUMPIF                           R5 ; [+4]
      135 GETUPVAL                         R26 6
      136 GETTABLEKS                       R26 R26 K67 ["Disabled"]
      138 JUMPIF                           R26 ; [+1]
      139 LOADNIL                          R26
      140 SETTABLEKS                       R26 R25 K63 ["StyleModifier"]
      142 GETIMPORT                        R26 K69 [UDim2.new]
      144 LOADN                            R27 0
      145 GETTABLEKS                       R28 R13 K70 ["ButtonWidth"]
      147 LOADN                            R29 0
      148 GETTABLEKS                       R30 R13 K71 ["ButtonHeight"]
      150 CALL                             R26 4 1
      151 SETTABLEKS                       R26 R25 K64 ["Size"]
      153 JUMPIFNOT                        R5 ; [+2]
      154 MOVE                             R26 R11
      155 JUMPIF                           R26 ; [+1]
      156 DUPCLOSURE                       R26 K72 [PROTO_2]
      157 SETTABLEKS                       R26 R25 K65 ["OnClick"]
      159 NAMECALL                         R26 R14 K47 ["getNextOrder"]
      161 CALL                             R26 1 1
      162 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      164 CALL                             R23 2 1
      165 SETTABLEKS                       R23 R22 K59 ["BackButton"]
      167 GETUPVAL                         R23 1
      168 GETTABLEKS                       R23 R23 K17 ["createElement"]
      170 GETUPVAL                         R24 5
      171 DUPTABLE                         R25 K66 [{["Text"], ["Style"] = "Round", ["StyleModifier"], ["Size"], ["OnClick"], ["LayoutOrder"]}]
      172 SETTABLEKS                       R7 R25 K18 ["Text"]
      174 JUMPIF                           R6 ; [+4]
      175 GETUPVAL                         R26 6
      176 GETTABLEKS                       R26 R26 K67 ["Disabled"]
      178 JUMPIF                           R26 ; [+1]
      179 LOADNIL                          R26
      180 SETTABLEKS                       R26 R25 K63 ["StyleModifier"]
      182 GETIMPORT                        R26 K69 [UDim2.new]
      184 LOADN                            R27 0
      185 GETTABLEKS                       R28 R13 K70 ["ButtonWidth"]
      187 LOADN                            R29 0
      188 GETTABLEKS                       R30 R13 K71 ["ButtonHeight"]
      190 CALL                             R26 4 1
      191 SETTABLEKS                       R26 R25 K64 ["Size"]
      193 JUMPIFNOT                        R6 ; [+2]
      194 MOVE                             R26 R10
      195 JUMPIF                           R26 ; [+1]
      196 DUPCLOSURE                       R26 K73 [PROTO_3]
      197 SETTABLEKS                       R26 R25 K65 ["OnClick"]
      199 NAMECALL                         R26 R14 K47 ["getNextOrder"]
      201 CALL                             R26 1 1
      202 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      204 CALL                             R23 2 1
      205 SETTABLEKS                       R23 R22 K60 ["NextButton"]
      207 CALL                             R19 3 1
      208 SETTABLEKS                       R19 R18 K35 ["NextAndBackButtonContainer"]
      210 CALL                             R15 3 -1
      211 RETURN                           R15 -1

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
