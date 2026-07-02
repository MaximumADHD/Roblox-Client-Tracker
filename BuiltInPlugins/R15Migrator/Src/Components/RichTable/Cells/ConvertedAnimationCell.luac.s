PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K5 [{"LayoutOrder", "OnClick", "Size", "AutomaticSize"}]
        5 SETTABLEKS                       R1 R6 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R2 R6 K2 ["OnClick"]
        9 GETIMPORT                        R7 K8 [UDim2.fromScale]
       11 LOADN                            R8 1
       12 LOADN                            R9 0
       13 CALL                             R7 2 1
       14 SETTABLEKS                       R7 R6 K3 ["Size"]
       16 GETIMPORT                        R7 K11 [Enum.AutomaticSize.Y]
       18 SETTABLEKS                       R7 R6 K4 ["AutomaticSize"]
       20 DUPTABLE                         R7 K16 [{"UIListLayout", "UIPadding", "Title", "Subtitle"}]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K0 ["createElement"]
       24 LOADK                            R9 K12 ["UIListLayout"]
       25 DUPTABLE                         R10 K22 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       26 GETIMPORT                        R11 K24 [Enum.FillDirection.Vertical]
       28 SETTABLEKS                       R11 R10 K17 ["FillDirection"]
       30 GETIMPORT                        R11 K26 [Enum.HorizontalAlignment.Left]
       32 SETTABLEKS                       R11 R10 K18 ["HorizontalAlignment"]
       34 GETIMPORT                        R11 K28 [Enum.VerticalAlignment.Top]
       36 SETTABLEKS                       R11 R10 K19 ["VerticalAlignment"]
       38 GETIMPORT                        R11 K29 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R11 R10 K20 ["SortOrder"]
       42 GETIMPORT                        R11 K32 [UDim.new]
       44 LOADN                            R12 0
       45 LOADN                            R13 5
       46 CALL                             R11 2 1
       47 SETTABLEKS                       R11 R10 K21 ["Padding"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K12 ["UIListLayout"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K0 ["createElement"]
       55 LOADK                            R9 K13 ["UIPadding"]
       56 DUPTABLE                         R10 K37 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       57 GETIMPORT                        R11 K32 [UDim.new]
       59 LOADN                            R12 0
       60 LOADN                            R13 5
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K33 ["PaddingTop"]
       64 GETIMPORT                        R11 K32 [UDim.new]
       66 LOADN                            R12 0
       67 LOADN                            R13 5
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K34 ["PaddingBottom"]
       71 GETIMPORT                        R11 K32 [UDim.new]
       73 LOADN                            R12 0
       74 LOADN                            R13 5
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K35 ["PaddingLeft"]
       78 GETIMPORT                        R11 K32 [UDim.new]
       80 LOADN                            R12 0
       81 LOADN                            R13 5
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K36 ["PaddingRight"]
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K13 ["UIPadding"]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K0 ["createElement"]
       91 GETUPVAL                         R9 2
       92 DUPTABLE                         R10 K42 [{["LayoutOrder"], ["Size"], ["AutomaticSize"], ["Text"], ["Style"] = "Bold", ["TextXAlignment"]}]
       93 GETUPVAL                         R11 3
       94 NAMECALL                         R11 R11 K43 ["getNextOrder"]
       96 CALL                             R11 1 1
       97 SETTABLEKS                       R11 R10 K1 ["LayoutOrder"]
       99 GETIMPORT                        R11 K8 [UDim2.fromScale]
      101 LOADN                            R12 1
      102 LOADN                            R13 0
      103 CALL                             R11 2 1
      104 SETTABLEKS                       R11 R10 K3 ["Size"]
      106 GETIMPORT                        R11 K11 [Enum.AutomaticSize.Y]
      108 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
      110 GETTABLEKS                       R11 R0 K14 ["Title"]
      112 SETTABLEKS                       R11 R10 K38 ["Text"]
      114 GETIMPORT                        R11 K44 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R11 R10 K41 ["TextXAlignment"]
      118 CALL                             R8 2 1
      119 SETTABLEKS                       R8 R7 K14 ["Title"]
      121 GETUPVAL                         R8 0
      122 GETTABLEKS                       R8 R8 K0 ["createElement"]
      124 GETUPVAL                         R9 2
      125 DUPTABLE                         R10 K45 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
      126 GETUPVAL                         R11 3
      127 NAMECALL                         R11 R11 K43 ["getNextOrder"]
      129 CALL                             R11 1 1
      130 SETTABLEKS                       R11 R10 K1 ["LayoutOrder"]
      132 GETIMPORT                        R11 K8 [UDim2.fromScale]
      134 LOADN                            R12 1
      135 LOADN                            R13 0
      136 CALL                             R11 2 1
      137 SETTABLEKS                       R11 R10 K3 ["Size"]
      139 GETIMPORT                        R11 K11 [Enum.AutomaticSize.Y]
      141 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
      143 GETTABLEKS                       R11 R0 K15 ["Subtitle"]
      145 SETTABLEKS                       R11 R10 K38 ["Text"]
      147 GETIMPORT                        R11 K44 [Enum.TextXAlignment.Left]
      149 SETTABLEKS                       R11 R10 K41 ["TextXAlignment"]
      151 CALL                             R8 2 1
      152 SETTABLEKS                       R8 R7 K15 ["Subtitle"]
      154 CALL                             R4 3 -1
      155 RETURN                           R4 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["OnItemActivated"]
        3 MOVE                             R4 R1
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 0
        6 LOADB                            R3 0
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertedAnimationCell"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K3 ["new"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K4 ["createElement"]
       17 GETUPVAL                         R6 4
       18 DUPTABLE                         R7 K10 [{["LayoutOrder"], ["Size"], ["Style"] = "Round", ["OnClick"]}]
       19 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       21 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       23 GETTABLEKS                       R8 R0 K6 ["Size"]
       25 SETTABLEKS                       R8 R7 K6 ["Size"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R8 R7 K9 ["OnClick"]
       32 DUPTABLE                         R8 K13 [{"Icon", "DropdownMenu"}]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K4 ["createElement"]
       36 GETUPVAL                         R10 5
       37 DUPTABLE                         R11 K18 [{"Size", "AnchorPoint", "Position", "Image", "ImageColor3"}]
       38 GETTABLEKS                       R12 R1 K19 ["ExpandArrowSize"]
       40 SETTABLEKS                       R12 R11 K6 ["Size"]
       42 GETIMPORT                        R12 K21 [Vector2.new]
       44 LOADK                            R13 K22 [0.5]
       45 LOADK                            R14 K22 [0.5]
       46 CALL                             R12 2 1
       47 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       49 GETIMPORT                        R12 K25 [UDim2.fromScale]
       51 LOADK                            R13 K22 [0.5]
       52 LOADK                            R14 K22 [0.5]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K15 ["Position"]
       56 GETTABLEKS                       R12 R1 K26 ["ExpandArrow"]
       58 SETTABLEKS                       R12 R11 K16 ["Image"]
       60 GETTABLEKS                       R12 R1 K27 ["IconColor"]
       62 SETTABLEKS                       R12 R11 K17 ["ImageColor3"]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K11 ["Icon"]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K4 ["createElement"]
       70 GETUPVAL                         R10 6
       71 DUPTABLE                         R11 K33 [{"Hide", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
       72 NOT                              R12 R2
       73 SETTABLEKS                       R12 R11 K28 ["Hide"]
       75 NEWTABLE                         R12 0 2
       77 DUPTABLE                         R13 K37 [{["Title"], ["Subtitle"] = "Converted from R6"}]
       78 GETTABLEKS                       R15 R0 K38 ["Value"]
       80 FASTCALL1                        TOSTRING R15 ; [+2]
       81 GETIMPORT                        R14 K40 [tostring]
       83 CALL                             R14 1 1
       84 SETTABLEKS                       R14 R13 K34 ["Title"]
       86 DUPTABLE                         R14 K43 [{["Title"] = "Replace with New", ["Subtitle"] = "Enter new Asset ID"}]
       87 SETLIST                          R12 R13 2 [1]
       89 SETTABLEKS                       R12 R11 K29 ["Items"]
       91 NEWCLOSURE                       R12 P1
       92 CAPTURE                          UPVAL U3
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R12 R11 K30 ["OnRenderItem"]
       98 NEWCLOSURE                       R12 P2
       99 CAPTURE                          VAL R3
      100 SETTABLEKS                       R12 R11 K31 ["OnItemActivated"]
      102 NEWCLOSURE                       R12 P3
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R12 R11 K32 ["OnFocusLost"]
      106 CALL                             R9 2 1
      107 SETTABLEKS                       R9 R8 K12 ["DropdownMenu"]
      109 CALL                             R5 3 -1
      110 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertedAnimationCell"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K9 [{"Style", "Text", "LayoutOrder", "Size", "TrailingComponent", "TrailingComponentProps"}]
       10 GETTABLEKS                       R5 R1 K10 ["TextInput"]
       12 SETTABLEKS                       R5 R4 K3 ["Style"]
       14 GETTABLEKS                       R5 R0 K11 ["Value"]
       16 SETTABLEKS                       R5 R4 K4 ["Text"]
       18 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       22 GETTABLEKS                       R5 R0 K6 ["Size"]
       24 SETTABLEKS                       R5 R4 K6 ["Size"]
       26 GETUPVAL                         R5 3
       27 SETTABLEKS                       R5 R4 K7 ["TrailingComponent"]
       29 DUPTABLE                         R5 K12 [{"Size", "Value"}]
       30 GETIMPORT                        R6 K15 [UDim2.fromOffset]
       32 LOADN                            R7 22
       33 LOADN                            R8 22
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["Size"]
       37 GETTABLEKS                       R6 R0 K11 ["Value"]
       39 SETTABLEKS                       R6 R5 K11 ["Value"]
       41 SETTABLEKS                       R5 R4 K8 ["TrailingComponentProps"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertedAnimationCell"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K8 [{["LayoutOrder"], ["Size"], ["Style"] = "Round", ["OnClick"]}]
       10 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       14 GETTABLEKS                       R5 R0 K4 ["Size"]
       16 SETTABLEKS                       R5 R4 K4 ["Size"]
       18 GETTABLEKS                       R5 R0 K7 ["OnClick"]
       20 SETTABLEKS                       R5 R4 K7 ["OnClick"]
       22 DUPTABLE                         R5 K10 [{"Image"}]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K2 ["createElement"]
       26 GETUPVAL                         R7 3
       27 DUPTABLE                         R8 K14 [{"Size", "AnchorPoint", "Position", "Image", "ImageColor3"}]
       28 GETTABLEKS                       R9 R1 K15 ["DotDotDotSize"]
       30 SETTABLEKS                       R9 R8 K4 ["Size"]
       32 GETIMPORT                        R9 K18 [Vector2.new]
       34 LOADK                            R10 K19 [0.5]
       35 LOADK                            R11 K19 [0.5]
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K11 ["AnchorPoint"]
       39 GETIMPORT                        R9 K22 [UDim2.fromScale]
       41 LOADK                            R10 K19 [0.5]
       42 LOADK                            R11 K19 [0.5]
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K12 ["Position"]
       46 GETTABLEKS                       R9 R1 K23 ["DotDotDot"]
       48 SETTABLEKS                       R9 R8 K9 ["Image"]
       50 GETTABLEKS                       R9 R1 K24 ["IconColor"]
       52 SETTABLEKS                       R9 R8 K13 ["ImageColor3"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K9 ["Image"]
       57 CALL                             R2 3 -1
       58 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnContextButtonClick"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ColumnIndex"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["RowIndex"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 GETTABLEKS                       R2 R0 K1 ["Style"]
        4 GETTABLEKS                       R3 R0 K2 ["Width"]
        6 JUMPIF                           R3 ; [+8]
        7 GETIMPORT                        R3 K5 [UDim.new]
        9 GETTABLEKS                       R6 R0 K7 ["Columns"]
       11 LENGTH                           R5 R6
       12 DIVRK                            R4 K6 [1] R5
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K4 ["new"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K11 ["createElement"]
       30 GETUPVAL                         R7 2
       31 DUPTABLE                         R8 K26 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True, ["Layout"], ["Spacing"] = 8, ["HorizontalAlignment"], ["VerticalAlignment"]}]
       32 GETTABLEKS                       R9 R0 K27 ["ColumnIndex"]
       34 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       36 DUPTABLE                         R9 K33 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
       37 SETTABLEKS                       R9 R8 K13 ["Padding"]
       39 SETTABLEKS                       R4 R8 K15 ["BackgroundColor3"]
       41 GETTABLEKS                       R9 R2 K34 ["Border"]
       43 SETTABLEKS                       R9 R8 K17 ["BorderColor3"]
       45 GETIMPORT                        R9 K36 [UDim2.new]
       47 GETTABLEKS                       R10 R3 K37 ["Scale"]
       49 GETTABLEKS                       R11 R3 K38 ["Offset"]
       51 LOADN                            R12 1
       52 LOADN                            R13 0
       53 CALL                             R9 4 1
       54 SETTABLEKS                       R9 R8 K18 ["Size"]
       56 GETIMPORT                        R9 K42 [Enum.FillDirection.Horizontal]
       58 SETTABLEKS                       R9 R8 K21 ["Layout"]
       60 GETIMPORT                        R9 K43 [Enum.HorizontalAlignment.Left]
       62 SETTABLEKS                       R9 R8 K24 ["HorizontalAlignment"]
       64 GETIMPORT                        R9 K45 [Enum.VerticalAlignment.Center]
       66 SETTABLEKS                       R9 R8 K25 ["VerticalAlignment"]
       68 DUPTABLE                         R9 K48 [{"Input", "DotDotDot"}]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K11 ["createElement"]
       72 GETUPVAL                         R11 3
       73 DUPTABLE                         R12 K49 [{"Value", "LayoutOrder", "Size"}]
       74 SETTABLEKS                       R1 R12 K0 ["Value"]
       76 NAMECALL                         R13 R5 K50 ["getNextOrder"]
       78 CALL                             R13 1 1
       79 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
       81 GETIMPORT                        R13 K36 [UDim2.new]
       83 LOADN                            R14 0
       84 LOADN                            R15 110
       85 LOADN                            R16 1
       86 LOADN                            R17 0
       87 CALL                             R13 4 1
       88 SETTABLEKS                       R13 R12 K18 ["Size"]
       90 CALL                             R10 2 1
       91 SETTABLEKS                       R10 R9 K46 ["Input"]
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K11 ["createElement"]
       96 GETUPVAL                         R11 4
       97 DUPTABLE                         R12 K52 [{"LayoutOrder", "Size", "OnClick"}]
       98 NAMECALL                         R13 R5 K50 ["getNextOrder"]
      100 CALL                             R13 1 1
      101 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      103 GETIMPORT                        R13 K54 [UDim2.fromOffset]
      105 LOADN                            R14 22
      106 LOADN                            R15 22
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K18 ["Size"]
      110 NEWCLOSURE                       R13 P0
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R13 R12 K51 ["OnClick"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K47 ["DotDotDot"]
      117 CALL                             R6 3 -1
      118 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R4 K11 ["Stylizer"]
       32 GETTABLEKS                       R5 R1 K12 ["UI"]
       34 GETTABLEKS                       R6 R5 K13 ["Pane"]
       36 GETTABLEKS                       R7 R5 K14 ["TextLabel"]
       38 GETTABLEKS                       R8 R5 K15 ["Button"]
       40 GETTABLEKS                       R9 R5 K16 ["TextInput"]
       42 GETTABLEKS                       R10 R5 K17 ["DropdownMenu"]
       44 GETTABLEKS                       R11 R5 K18 ["Image"]
       46 GETTABLEKS                       R12 R1 K19 ["Util"]
       48 GETTABLEKS                       R12 R12 K20 ["LayoutOrderIterator"]
       50 DUPCLOSURE                       R13 K21 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R12
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R7
       59 DUPCLOSURE                       R14 K22 [PROTO_5]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R13
       64 DUPCLOSURE                       R15 K23 [PROTO_6]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R11
       69 DUPCLOSURE                       R16 K24 [PROTO_8]
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R15
       75 RETURN                           R16 1
