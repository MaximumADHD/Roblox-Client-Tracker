PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["IsCollapsed"]
        5 JUMPIF                           R1 ; [+21]
        6 GETTABLEKS                       R1 R0 K2 ["OnSizeChanged"]
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETTABLEKS                       R1 R0 K3 ["Id"]
       11 JUMPIF                           R1 ; [+4]
       12 GETTABLEKS                       R1 R0 K4 ["Text"]
       14 JUMPIF                           R1 ; [+1]
       15 LOADK                            R1 K5 [""]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K6 ["contentFrameRef"]
       19 GETTABLEKS                       R2 R3 K7 ["current"]
       21 GETTABLEKS                       R3 R0 K2 ["OnSizeChanged"]
       23 MOVE                             R4 R1
       24 GETTABLEKS                       R5 R2 K8 ["Size"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["contentFrameRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["onContentSizeChanged"]
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETTABLEKS                       R4 R1 K1 ["IsCollapsed"]
        6 JUMPIFNOT                        R4 ; [+9]
        7 GETIMPORT                        R2 K5 [Enum.FillDirection.Vertical]
        9 GETIMPORT                        R4 K8 [UDim.new]
       11 LOADN                            R5 1
       12 LOADN                            R6 0
       13 CALL                             R4 2 1
       14 MOVE                             R3 R4
       15 JUMP                             ; [+4]
       16 GETIMPORT                        R2 K10 [Enum.FillDirection.Horizontal]
       18 GETTABLEKS                       R3 R1 K11 ["LabelColumnWidth"]
       20 GETIMPORT                        R4 K13 [UDim2.new]
       22 MOVE                             R5 R3
       23 GETIMPORT                        R6 K8 [UDim.new]
       25 LOADN                            R7 0
       26 LOADN                            R8 22
       27 CALL                             R6 2 -1
       28 CALL                             R4 -1 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K14 ["createElement"]
       32 GETUPVAL                         R6 1
       33 DUPTABLE                         R7 K20 [{"axis", "contentPadding", "minimumSize", "BackgroundTransparency", "FillDirection", "LayoutOrder"}]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R9 R10 K21 ["Axis"]
       37 GETTABLEKS                       R8 R9 K4 ["Vertical"]
       39 SETTABLEKS                       R8 R7 K15 ["axis"]
       41 GETTABLEKS                       R8 R1 K22 ["Padding"]
       43 SETTABLEKS                       R8 R7 K16 ["contentPadding"]
       45 GETIMPORT                        R8 K13 [UDim2.new]
       47 LOADN                            R9 1
       48 LOADN                            R10 0
       49 LOADN                            R11 0
       50 LOADN                            R12 0
       51 CALL                             R8 4 1
       52 SETTABLEKS                       R8 R7 K17 ["minimumSize"]
       54 LOADN                            R8 1
       55 SETTABLEKS                       R8 R7 K18 ["BackgroundTransparency"]
       57 SETTABLEKS                       R2 R7 K3 ["FillDirection"]
       59 GETTABLEKS                       R8 R1 K19 ["LayoutOrder"]
       61 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       63 DUPTABLE                         R8 K25 [{"Label", "Content"}]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R9 R10 K14 ["createElement"]
       67 GETUPVAL                         R10 2
       68 DUPTABLE                         R11 K30 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "TextYAlignment"}]
       69 LOADN                            R12 1
       70 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
       72 SETTABLEKS                       R4 R11 K26 ["Size"]
       74 GETTABLEKS                       R12 R1 K27 ["Text"]
       76 SETTABLEKS                       R12 R11 K27 ["Text"]
       78 GETTABLEKS                       R12 R1 K28 ["TextXAlignment"]
       80 SETTABLEKS                       R12 R11 K28 ["TextXAlignment"]
       82 GETTABLEKS                       R12 R1 K29 ["TextYAlignment"]
       84 SETTABLEKS                       R12 R11 K29 ["TextYAlignment"]
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K23 ["Label"]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R9 R10 K14 ["createElement"]
       92 GETUPVAL                         R10 1
       93 NEWTABLE                         R11 8 0
       95 GETUPVAL                         R14 1
       96 GETTABLEKS                       R13 R14 K21 ["Axis"]
       98 GETTABLEKS                       R12 R13 K31 ["Both"]
      100 SETTABLEKS                       R12 R11 K15 ["axis"]
      102 GETTABLEKS                       R12 R1 K32 ["ContentPadding"]
      104 SETTABLEKS                       R12 R11 K16 ["contentPadding"]
      106 LOADN                            R12 1
      107 SETTABLEKS                       R12 R11 K18 ["BackgroundTransparency"]
      109 GETTABLEKS                       R12 R1 K33 ["ContentFillDirection"]
      111 SETTABLEKS                       R12 R11 K3 ["FillDirection"]
      113 LOADN                            R12 2
      114 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      116 GETUPVAL                         R14 0
      117 GETTABLEKS                       R13 R14 K34 ["Change"]
      119 GETTABLEKS                       R12 R13 K26 ["Size"]
      121 GETTABLEKS                       R13 R0 K35 ["onContentSizeChanged"]
      123 SETTABLE                         R13 R11 R12
      124 GETUPVAL                         R13 0
      125 GETTABLEKS                       R12 R13 K36 ["Ref"]
      127 GETTABLEKS                       R13 R0 K37 ["contentFrameRef"]
      129 SETTABLE                         R13 R11 R12
      130 GETTABLEKS                       R13 R0 K0 ["props"]
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R14 R15 K38 ["Children"]
      135 GETTABLE                         R12 R13 R14
      136 CALL                             R9 3 1
      137 SETTABLEKS                       R9 R8 K24 ["Content"]
      139 CALL                             R5 3 -1
      140 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["state"]
        4 GETTABLEKS                       R1 R2 K1 ["isCollapsed"]
        6 JUMPIFEQ                         R0 R1 ; [+6]
        8 DUPTABLE                         R0 K2 [{"isCollapsed"}]
        9 GETUPVAL                         R1 0
       10 SETTABLEKS                       R1 R0 K1 ["isCollapsed"]
       12 RETURN                           R0 1
       13 LOADNIL                          R0
       14 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_contentColumnWidth"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["_maximumContentWidth"]
        6 JUMPIFLT                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 GETUPVAL                         R1 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R1 R1 K2 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Stylizer"]
        5 GETTABLEKS                       R1 R0 K2 ["LabeledElementList"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["_frameRef"]
       10 GETTABLEKS                       R2 R3 K4 ["current"]
       12 GETTABLEKS                       R4 R1 K5 ["ItemPaddingHorizontal"]
       14 GETTABLEKS                       R3 R4 K6 ["Offset"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R8 R2 K7 ["AbsoluteSize"]
       19 GETTABLEKS                       R7 R8 K8 ["X"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K9 ["_labelColumnWidth"]
       24 SUB                              R6 R7 R8
       25 SUB                              R5 R6 R3
       26 SETTABLEKS                       R5 R4 K10 ["_contentColumnWidth"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K10 ["_contentColumnWidth"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K11 ["_maximumContentWidth"]
       34 JUMPIFLT                         R5 R6 ; [+2]
       36 LOADB                            R4 0 +1
       37 LOADB                            R4 1
       38 GETUPVAL                         R5 0
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U0
       42 NAMECALL                         R5 R5 K12 ["setState"]
       44 CALL                             R5 2 0
       45 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_contentSizeMap"]
        3 SETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 0
        5 LOADN                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["_maximumContentWidth"]
        8 GETIMPORT                        R2 K3 [pairs]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R3 R5 K0 ["_contentSizeMap"]
       13 CALL                             R2 1 3
       14 FORGPREP_NEXT                    R2
       15 GETTABLEKS                       R8 R6 K4 ["X"]
       17 GETTABLEKS                       R7 R8 K5 ["Offset"]
       19 GETUPVAL                         R8 0
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R10 R11 K1 ["_maximumContentWidth"]
       23 FASTCALL2                        MATH_MAX R10 R7 ; [+4]
       25 MOVE                             R11 R7
       26 GETIMPORT                        R9 K8 [math.max]
       28 CALL                             R9 2 1
       29 SETTABLEKS                       R9 R8 K1 ["_maximumContentWidth"]
       31 FORGLOOP                         R2 2 ; [-17]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K9 ["_contentColumnWidth"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K1 ["_maximumContentWidth"]
       39 JUMPIFLT                         R3 R4 ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 GETUPVAL                         R3 0
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U0
       47 NAMECALL                         R3 R3 K10 ["setState"]
       49 CALL                             R3 2 0
       50 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["_frameRef"]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K2 ["_contentSizeMap"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["_contentColumnWidth"]
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K4 ["_maximumContentWidth"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K5 ["_labelColumnWidth"]
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K6 ["onSizeChanged"]
       25 NEWCLOSURE                       R2 P2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K7 ["onSectionSizeChanged"]
       29 DUPTABLE                         R4 K9 [{"isCollapsed"}]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K8 ["isCollapsed"]
       33 NAMECALL                         R2 R0 K10 ["setState"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Items"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R4 K4 ["LabeledElementList"]
       10 LOADN                            R6 0
       11 SETTABLEKS                       R6 R0 K5 ["_labelColumnWidth"]
       13 GETIMPORT                        R6 K7 [ipairs]
       15 MOVE                             R7 R3
       16 CALL                             R6 1 3
       17 FORGPREP_INEXT                   R6
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R13 R10 K8 ["Text"]
       21 GETTABLEKS                       R14 R5 K9 ["TextSize"]
       23 GETTABLEKS                       R15 R5 K10 ["Font"]
       25 GETIMPORT                        R16 K13 [Vector2.new]
       27 GETTABLEKS                       R17 R1 K14 ["MaximumLabelWidth"]
       29 LOADN                            R18 16
       30 CALL                             R16 2 -1
       31 NAMECALL                         R11 R11 K15 ["GetTextSize"]
       33 CALL                             R11 -1 1
       34 GETTABLEKS                       R13 R11 K16 ["X"]
       36 GETTABLEKS                       R14 R0 K5 ["_labelColumnWidth"]
       38 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       40 GETIMPORT                        R12 K19 [math.max]
       42 CALL                             R12 2 1
       43 SETTABLEKS                       R12 R0 K5 ["_labelColumnWidth"]
       45 FORGLOOP                         R6 2 [inext] ; [-28]
       47 GETTABLEKS                       R7 R2 K20 ["isCollapsed"]
       49 JUMPIFNOT                        R7 ; [+3]
       50 GETTABLEKS                       R6 R5 K21 ["ItemPaddingVertical"]
       52 JUMPIF                           R6 ; [+2]
       53 GETTABLEKS                       R6 R5 K22 ["ItemPaddingHorizontal"]
       55 NEWTABLE                         R7 0 0
       57 GETIMPORT                        R8 K7 [ipairs]
       59 MOVE                             R9 R3
       60 CALL                             R8 1 3
       61 FORGPREP_INEXT                   R8
       62 LOADK                            R14 K23 ["Item"]
       63 FASTCALL1                        TOSTRING R11 ; [+3]
       64 MOVE                             R16 R11
       65 GETIMPORT                        R15 K25 [tostring]
       67 CALL                             R15 1 1
       68 CONCAT                           R13 R14 R15
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R14 R15 K26 ["createElement"]
       72 GETUPVAL                         R15 2
       73 DUPTABLE                         R16 K36 [{"IsCollapsed", "ContentFillDirection", "ContentPadding", "LabelColumnWidth", "LayoutOrder", "Padding", "Text", "TextXAlignment", "TextYAlignment", "OnSizeChanged"}]
       74 GETTABLEKS                       R17 R2 K20 ["isCollapsed"]
       76 SETTABLEKS                       R17 R16 K27 ["IsCollapsed"]
       78 GETTABLEKS                       R17 R12 K28 ["ContentFillDirection"]
       80 SETTABLEKS                       R17 R16 K28 ["ContentFillDirection"]
       82 GETTABLEKS                       R17 R5 K37 ["ItemContentPadding"]
       84 SETTABLEKS                       R17 R16 K29 ["ContentPadding"]
       86 GETIMPORT                        R17 K39 [UDim.new]
       88 LOADN                            R18 0
       89 GETTABLEKS                       R19 R0 K5 ["_labelColumnWidth"]
       91 CALL                             R17 2 1
       92 SETTABLEKS                       R17 R16 K30 ["LabelColumnWidth"]
       94 SETTABLEKS                       R11 R16 K31 ["LayoutOrder"]
       96 SETTABLEKS                       R6 R16 K32 ["Padding"]
       98 GETTABLEKS                       R17 R12 K8 ["Text"]
      100 SETTABLEKS                       R17 R16 K8 ["Text"]
      102 GETTABLEKS                       R17 R12 K33 ["TextXAlignment"]
      104 SETTABLEKS                       R17 R16 K33 ["TextXAlignment"]
      106 GETTABLEKS                       R17 R12 K34 ["TextYAlignment"]
      108 SETTABLEKS                       R17 R16 K34 ["TextYAlignment"]
      110 GETTABLEKS                       R17 R0 K40 ["onSectionSizeChanged"]
      112 SETTABLEKS                       R17 R16 K35 ["OnSizeChanged"]
      114 DUPTABLE                         R17 K42 [{"Content"}]
      115 GETTABLEKS                       R18 R12 K41 ["Content"]
      117 SETTABLEKS                       R18 R17 K41 ["Content"]
      119 CALL                             R14 3 1
      120 SETTABLE                         R14 R7 R13
      121 FORGLOOP                         R8 2 [inext] ; [-60]
      123 GETUPVAL                         R9 1
      124 GETTABLEKS                       R8 R9 K26 ["createElement"]
      126 GETUPVAL                         R9 3
      127 NEWTABLE                         R10 8 0
      129 GETTABLEKS                       R11 R5 K43 ["SectionPadding"]
      131 SETTABLEKS                       R11 R10 K44 ["contentPadding"]
      133 GETIMPORT                        R11 K39 [UDim.new]
      135 LOADN                            R12 1
      136 LOADN                            R13 0
      137 CALL                             R11 2 1
      138 SETTABLEKS                       R11 R10 K45 ["width"]
      140 LOADN                            R11 1
      141 SETTABLEKS                       R11 R10 K46 ["BackgroundTransparency"]
      143 GETTABLEKS                       R11 R1 K31 ["LayoutOrder"]
      145 SETTABLEKS                       R11 R10 K31 ["LayoutOrder"]
      147 GETUPVAL                         R13 1
      148 GETTABLEKS                       R12 R13 K47 ["Change"]
      150 GETTABLEKS                       R11 R12 K48 ["AbsoluteSize"]
      152 GETTABLEKS                       R12 R0 K49 ["onSizeChanged"]
      154 SETTABLE                         R12 R10 R11
      155 GETUPVAL                         R12 1
      156 GETTABLEKS                       R11 R12 K50 ["Ref"]
      158 GETTABLEKS                       R12 R0 K51 ["_frameRef"]
      160 SETTABLE                         R12 R10 R11
      161 MOVE                             R11 R7
      162 CALL                             R8 3 -1
      163 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["FitFrame"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K11 ["FitFrameOnAxis"]
       24 GETTABLEKS                       R4 R2 K12 ["FitFrameVertical"]
       26 GETIMPORT                        R5 K8 [require]
       28 GETTABLEKS                       R7 R1 K9 ["Packages"]
       30 GETTABLEKS                       R6 R7 K13 ["Roact"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R8 R1 K9 ["Packages"]
       37 GETTABLEKS                       R7 R8 K14 ["Framework"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K15 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K16 ["withContext"]
       44 GETTABLEKS                       R9 R6 K17 ["UI"]
       46 GETTABLEKS                       R10 R9 K18 ["TextLabel"]
       48 GETTABLEKS                       R11 R5 K19 ["PureComponent"]
       50 LOADK                            R13 K20 ["LabeledElementListItem"]
       51 NAMECALL                         R11 R11 K21 ["extend"]
       53 CALL                             R11 2 1
       54 DUPTABLE                         R12 K31 [{"ContentFillDirection", "ContentPadding", "LabelColumnWidth", "LayoutOrder", "Padding", "Text", "TextXAlignment", "TextYAlignment", "OnSizeChanged"}]
       55 GETIMPORT                        R13 K35 [Enum.FillDirection.Vertical]
       57 SETTABLEKS                       R13 R12 K22 ["ContentFillDirection"]
       59 GETIMPORT                        R13 K38 [UDim.new]
       61 LOADN                            R14 0
       62 LOADN                            R15 0
       63 CALL                             R13 2 1
       64 SETTABLEKS                       R13 R12 K23 ["ContentPadding"]
       66 GETIMPORT                        R13 K38 [UDim.new]
       68 LOADN                            R14 0
       69 LOADN                            R15 100
       70 CALL                             R13 2 1
       71 SETTABLEKS                       R13 R12 K24 ["LabelColumnWidth"]
       73 LOADN                            R13 1
       74 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
       76 GETIMPORT                        R13 K38 [UDim.new]
       78 LOADN                            R14 0
       79 LOADN                            R15 0
       80 CALL                             R13 2 1
       81 SETTABLEKS                       R13 R12 K26 ["Padding"]
       83 LOADK                            R13 K39 ["Label"]
       84 SETTABLEKS                       R13 R12 K27 ["Text"]
       86 GETIMPORT                        R13 K41 [Enum.TextXAlignment.Left]
       88 SETTABLEKS                       R13 R12 K28 ["TextXAlignment"]
       90 GETIMPORT                        R13 K43 [Enum.TextYAlignment.Top]
       92 SETTABLEKS                       R13 R12 K29 ["TextYAlignment"]
       94 DUPCLOSURE                       R13 K44 [PROTO_0]
       95 SETTABLEKS                       R13 R12 K30 ["OnSizeChanged"]
       97 SETTABLEKS                       R12 R11 K45 ["defaultProps"]
       99 DUPCLOSURE                       R12 K46 [PROTO_2]
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R12 R11 K47 ["init"]
      103 DUPCLOSURE                       R12 K48 [PROTO_3]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 SETTABLEKS                       R12 R11 K49 ["render"]
      109 GETTABLEKS                       R12 R5 K19 ["PureComponent"]
      111 LOADK                            R14 K50 ["LabeledElementList"]
      112 NAMECALL                         R12 R12 K21 ["extend"]
      114 CALL                             R12 2 1
      115 DUPTABLE                         R13 K54 [{"Collapsible", "Items", "MaximumLabelWidth", "LayoutOrder"}]
      116 LOADB                            R14 0
      117 SETTABLEKS                       R14 R13 K51 ["Collapsible"]
      119 NEWTABLE                         R14 0 0
      121 SETTABLEKS                       R14 R13 K52 ["Items"]
      123 LOADK                            R14 K55 [∞]
      124 SETTABLEKS                       R14 R13 K53 ["MaximumLabelWidth"]
      126 LOADN                            R14 1
      127 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
      129 SETTABLEKS                       R13 R12 K45 ["defaultProps"]
      131 DUPCLOSURE                       R13 K56 [PROTO_8]
      132 CAPTURE                          VAL R5
      133 SETTABLEKS                       R13 R12 K47 ["init"]
      135 DUPCLOSURE                       R13 K57 [PROTO_9]
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R13 R12 K49 ["render"]
      142 MOVE                             R13 R8
      143 DUPTABLE                         R14 K59 [{"Stylizer"}]
      144 GETTABLEKS                       R15 R7 K58 ["Stylizer"]
      146 SETTABLEKS                       R15 R14 K58 ["Stylizer"]
      148 CALL                             R13 1 1
      149 MOVE                             R14 R12
      150 CALL                             R13 1 1
      151 MOVE                             R12 R13
      152 RETURN                           R12 1
