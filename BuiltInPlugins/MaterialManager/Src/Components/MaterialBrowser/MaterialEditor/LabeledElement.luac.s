PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["LabeledElement"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["new"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R4 R1 K4 ["FillDirection"]
       12 JUMPIF                           R4 ; [+2]
       13 GETTABLEKS                       R4 R2 K4 ["FillDirection"]
       15 GETTABLEKS                       R5 R1 K5 ["LabelColumnWidth"]
       17 GETIMPORT                        R6 K7 [UDim2.new]
       19 MOVE                             R7 R5
       20 GETTABLEKS                       R8 R2 K8 ["LabelYSize"]
       22 CALL                             R6 2 1
       23 GETTABLEKS                       R7 R2 K9 ["ImageSize"]
       25 GETTABLEKS                       R8 R1 K10 ["Status"]
       27 GETTABLEKS                       R9 R1 K11 ["StatusText"]
       29 GETTABLEKS                       R10 R1 K12 ["VerticalAlignment"]
       31 GETTABLEKS                       R11 R1 K13 ["Padding"]
       33 JUMPIF                           R11 ; [+16]
       34 JUMPIFNOT                        R8 ; [+5]
       35 JUMPIFNOT                        R8 ; [+13]
       36 GETIMPORT                        R12 K17 [Enum.PropertyStatus.Ok]
       38 JUMPIFNOTEQ                      R8 R12 ; [+10]
       40 DUPTABLE                         R12 K19 [{"Left"}]
       41 GETTABLEKS                       R13 R7 K20 ["Width"]
       43 GETTABLEKS                       R13 R13 K21 ["Offset"]
       45 SETTABLEKS                       R13 R12 K18 ["Left"]
       47 MOVE                             R11 R12
       48 JUMP                             ; [+1]
       49 LOADNIL                          R11
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R12 R12 K22 ["createElement"]
       53 GETUPVAL                         R13 2
       54 DUPTABLE                         R14 K27 [{"AutomaticSize", "HorizontalAlignment", "VerticalAlignment", "Layout", "LayoutOrder", "Padding"}]
       55 GETIMPORT                        R15 K29 [Enum.AutomaticSize.Y]
       57 SETTABLEKS                       R15 R14 K23 ["AutomaticSize"]
       59 GETIMPORT                        R15 K30 [Enum.HorizontalAlignment.Left]
       61 SETTABLEKS                       R15 R14 K24 ["HorizontalAlignment"]
       63 MOVE                             R15 R10
       64 JUMPIF                           R15 ; [+2]
       65 GETIMPORT                        R15 K32 [Enum.VerticalAlignment.Top]
       67 SETTABLEKS                       R15 R14 K12 ["VerticalAlignment"]
       69 GETIMPORT                        R15 K34 [Enum.FillDirection.Horizontal]
       71 SETTABLEKS                       R15 R14 K25 ["Layout"]
       73 GETTABLEKS                       R15 R1 K26 ["LayoutOrder"]
       75 SETTABLEKS                       R15 R14 K26 ["LayoutOrder"]
       77 SETTABLEKS                       R11 R14 K13 ["Padding"]
       79 DUPTABLE                         R15 K36 [{"StatusIcon", "LabeledElement"}]
       80 JUMPIFNOT                        R8 ; [+22]
       81 GETIMPORT                        R17 K17 [Enum.PropertyStatus.Ok]
       83 JUMPIFEQ                         R8 R17 ; [+19]
       85 GETUPVAL                         R16 1
       86 GETTABLEKS                       R16 R16 K22 ["createElement"]
       88 GETUPVAL                         R17 3
       89 DUPTABLE                         R18 K38 [{"LayoutOrder", "Size", "StatusText", "Status"}]
       90 NAMECALL                         R19 R3 K39 ["getNextOrder"]
       92 CALL                             R19 1 1
       93 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
       95 SETTABLEKS                       R7 R18 K37 ["Size"]
       97 SETTABLEKS                       R9 R18 K11 ["StatusText"]
       99 SETTABLEKS                       R8 R18 K10 ["Status"]
      101 CALL                             R16 2 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R16
      104 SETTABLEKS                       R16 R15 K35 ["StatusIcon"]
      106 GETUPVAL                         R16 1
      107 GETTABLEKS                       R16 R16 K22 ["createElement"]
      109 GETUPVAL                         R17 2
      110 DUPTABLE                         R18 K42 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 2, ["VerticalAlignment"]}]
      111 GETIMPORT                        R19 K30 [Enum.HorizontalAlignment.Left]
      113 SETTABLEKS                       R19 R18 K24 ["HorizontalAlignment"]
      115 SETTABLEKS                       R4 R18 K25 ["Layout"]
      117 NAMECALL                         R19 R3 K39 ["getNextOrder"]
      119 CALL                             R19 1 1
      120 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      122 MOVE                             R19 R10
      123 JUMPIF                           R19 ; [+2]
      124 GETIMPORT                        R19 K32 [Enum.VerticalAlignment.Top]
      126 SETTABLEKS                       R19 R18 K12 ["VerticalAlignment"]
      128 DUPTABLE                         R19 K45 [{"Label", "ElementListItem"}]
      129 GETUPVAL                         R20 1
      130 GETTABLEKS                       R20 R20 K22 ["createElement"]
      132 GETUPVAL                         R21 4
      133 DUPTABLE                         R22 K52 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
      134 GETIMPORT                        R23 K29 [Enum.AutomaticSize.Y]
      136 SETTABLEKS                       R23 R22 K23 ["AutomaticSize"]
      138 GETTABLEKS                       R23 R1 K46 ["Font"]
      140 SETTABLEKS                       R23 R22 K46 ["Font"]
      142 SETTABLEKS                       R6 R22 K37 ["Size"]
      144 GETTABLEKS                       R24 R1 K48 ["Text"]
      146 ORK                              R23 R24 K53 [""]
      147 SETTABLEKS                       R23 R22 K48 ["Text"]
      149 GETTABLEKS                       R23 R1 K49 ["TextXAlignment"]
      151 JUMPIF                           R23 ; [+2]
      152 GETTABLEKS                       R23 R2 K49 ["TextXAlignment"]
      154 SETTABLEKS                       R23 R22 K49 ["TextXAlignment"]
      156 CALL                             R20 2 1
      157 SETTABLEKS                       R20 R19 K43 ["Label"]
      159 GETUPVAL                         R20 1
      160 GETTABLEKS                       R20 R20 K22 ["createElement"]
      162 GETUPVAL                         R21 2
      163 GETUPVAL                         R22 5
      164 DUPTABLE                         R23 K54 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["VerticalAlignment"]}]
      165 GETIMPORT                        R24 K56 [Enum.AutomaticSize.XY]
      167 SETTABLEKS                       R24 R23 K23 ["AutomaticSize"]
      169 SETTABLEKS                       R10 R23 K12 ["VerticalAlignment"]
      171 GETTABLEKS                       R24 R1 K57 ["WrapperProps"]
      173 CALL                             R22 2 1
      174 GETUPVAL                         R24 1
      175 GETTABLEKS                       R24 R24 K58 ["Children"]
      177 GETTABLE                         R23 R1 R24
      178 CALL                             R20 3 1
      179 SETTABLEKS                       R20 R19 K44 ["ElementListItem"]
      181 CALL                             R16 3 1
      182 SETTABLEKS                       R16 R15 K2 ["LabeledElement"]
      184 CALL                             R12 3 -1
      185 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Packages"]
       17 GETTABLEKS                       R2 R2 K6 ["Roact"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Packages"]
       24 GETTABLEKS                       R3 R3 K7 ["Framework"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K8 ["Dash"]
       29 GETTABLEKS                       R3 R3 K9 ["join"]
       31 GETTABLEKS                       R4 R2 K10 ["UI"]
       33 GETTABLEKS                       R5 R4 K11 ["TextLabel"]
       35 GETTABLEKS                       R6 R4 K12 ["Pane"]
       37 GETTABLEKS                       R7 R2 K13 ["Util"]
       39 GETTABLEKS                       R7 R7 K14 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R8 R2 K15 ["ContextServices"]
       43 GETTABLEKS                       R9 R8 K16 ["withContext"]
       45 GETTABLEKS                       R10 R8 K17 ["Analytics"]
       47 GETTABLEKS                       R11 R8 K18 ["Localization"]
       49 GETTABLEKS                       R12 R2 K19 ["Style"]
       51 GETTABLEKS                       R12 R12 K20 ["Stylizer"]
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R14 R0 K21 ["Src"]
       57 GETTABLEKS                       R14 R14 K22 ["Components"]
       59 GETTABLEKS                       R14 R14 K23 ["StatusIcon"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R1 K24 ["PureComponent"]
       64 LOADK                            R16 K25 ["LabeledElement"]
       65 NAMECALL                         R14 R14 K26 ["extend"]
       67 CALL                             R14 2 1
       68 DUPCLOSURE                       R15 K27 [PROTO_0]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R15 R14 K28 ["render"]
       77 MOVE                             R15 R9
       78 DUPTABLE                         R16 K29 [{"Analytics", "Localization", "Stylizer"}]
       79 SETTABLEKS                       R10 R16 K17 ["Analytics"]
       81 SETTABLEKS                       R11 R16 K18 ["Localization"]
       83 SETTABLEKS                       R12 R16 K20 ["Stylizer"]
       85 CALL                             R15 1 1
       86 MOVE                             R16 R14
       87 CALL                             R15 1 1
       88 MOVE                             R14 R15
       89 RETURN                           R14 1
