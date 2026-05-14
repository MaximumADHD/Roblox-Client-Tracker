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
      110 DUPTABLE                         R18 K41 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
      111 GETIMPORT                        R19 K30 [Enum.HorizontalAlignment.Left]
      113 SETTABLEKS                       R19 R18 K24 ["HorizontalAlignment"]
      115 SETTABLEKS                       R4 R18 K25 ["Layout"]
      117 NAMECALL                         R19 R3 K39 ["getNextOrder"]
      119 CALL                             R19 1 1
      120 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      122 LOADN                            R19 2
      123 SETTABLEKS                       R19 R18 K40 ["Spacing"]
      125 MOVE                             R19 R10
      126 JUMPIF                           R19 ; [+2]
      127 GETIMPORT                        R19 K32 [Enum.VerticalAlignment.Top]
      129 SETTABLEKS                       R19 R18 K12 ["VerticalAlignment"]
      131 DUPTABLE                         R19 K44 [{"Label", "ElementListItem"}]
      132 GETUPVAL                         R20 1
      133 GETTABLEKS                       R20 R20 K22 ["createElement"]
      135 GETUPVAL                         R21 4
      136 DUPTABLE                         R22 K49 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextXAlignment", "TextWrapped"}]
      137 GETIMPORT                        R23 K29 [Enum.AutomaticSize.Y]
      139 SETTABLEKS                       R23 R22 K23 ["AutomaticSize"]
      141 GETTABLEKS                       R23 R1 K45 ["Font"]
      143 SETTABLEKS                       R23 R22 K45 ["Font"]
      145 LOADN                            R23 1
      146 SETTABLEKS                       R23 R22 K26 ["LayoutOrder"]
      148 SETTABLEKS                       R6 R22 K37 ["Size"]
      150 GETTABLEKS                       R23 R1 K46 ["Text"]
      152 SETTABLEKS                       R23 R22 K46 ["Text"]
      154 GETTABLEKS                       R23 R1 K47 ["TextXAlignment"]
      156 JUMPIF                           R23 ; [+2]
      157 GETTABLEKS                       R23 R2 K47 ["TextXAlignment"]
      159 SETTABLEKS                       R23 R22 K47 ["TextXAlignment"]
      161 LOADB                            R23 1
      162 SETTABLEKS                       R23 R22 K48 ["TextWrapped"]
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K42 ["Label"]
      167 GETUPVAL                         R20 1
      168 GETTABLEKS                       R20 R20 K22 ["createElement"]
      170 GETUPVAL                         R21 2
      171 GETUPVAL                         R22 5
      172 DUPTABLE                         R23 K50 [{"LayoutOrder", "AutomaticSize", "VerticalAlignment"}]
      173 LOADN                            R24 2
      174 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      176 GETIMPORT                        R24 K52 [Enum.AutomaticSize.XY]
      178 SETTABLEKS                       R24 R23 K23 ["AutomaticSize"]
      180 SETTABLEKS                       R10 R23 K12 ["VerticalAlignment"]
      182 GETTABLEKS                       R24 R1 K53 ["WrapperProps"]
      184 CALL                             R22 2 1
      185 GETUPVAL                         R24 1
      186 GETTABLEKS                       R24 R24 K54 ["Children"]
      188 GETTABLE                         R23 R1 R24
      189 CALL                             R20 3 1
      190 SETTABLEKS                       R20 R19 K43 ["ElementListItem"]
      192 CALL                             R16 3 1
      193 SETTABLEKS                       R16 R15 K2 ["LabeledElement"]
      195 CALL                             R12 3 -1
      196 RETURN                           R12 -1

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
