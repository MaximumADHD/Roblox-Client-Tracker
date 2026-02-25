PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
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
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K0 ["createElement"]
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
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R8 R9 K0 ["createElement"]
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
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R8 R9 K0 ["createElement"]
       91 GETUPVAL                         R9 2
       92 DUPTABLE                         R10 K41 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "Style", "TextXAlignment"}]
       93 GETUPVAL                         R11 3
       94 NAMECALL                         R11 R11 K42 ["getNextOrder"]
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
      114 LOADK                            R11 K43 ["Bold"]
      115 SETTABLEKS                       R11 R10 K39 ["Style"]
      117 GETIMPORT                        R11 K44 [Enum.TextXAlignment.Left]
      119 SETTABLEKS                       R11 R10 K40 ["TextXAlignment"]
      121 CALL                             R8 2 1
      122 SETTABLEKS                       R8 R7 K14 ["Title"]
      124 GETUPVAL                         R9 0
      125 GETTABLEKS                       R8 R9 K0 ["createElement"]
      127 GETUPVAL                         R9 2
      128 DUPTABLE                         R10 K45 [{"LayoutOrder", "Size", "AutomaticSize", "Text", "TextXAlignment"}]
      129 GETUPVAL                         R11 3
      130 NAMECALL                         R11 R11 K42 ["getNextOrder"]
      132 CALL                             R11 1 1
      133 SETTABLEKS                       R11 R10 K1 ["LayoutOrder"]
      135 GETIMPORT                        R11 K8 [UDim2.fromScale]
      137 LOADN                            R12 1
      138 LOADN                            R13 0
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K3 ["Size"]
      142 GETIMPORT                        R11 K11 [Enum.AutomaticSize.Y]
      144 SETTABLEKS                       R11 R10 K4 ["AutomaticSize"]
      146 GETTABLEKS                       R11 R0 K15 ["Subtitle"]
      148 SETTABLEKS                       R11 R10 K38 ["Text"]
      150 GETIMPORT                        R11 K44 [Enum.TextXAlignment.Left]
      152 SETTABLEKS                       R11 R10 K40 ["TextXAlignment"]
      154 CALL                             R8 2 1
      155 SETTABLEKS                       R8 R7 K15 ["Subtitle"]
      157 CALL                             R4 3 -1
      158 RETURN                           R4 -1

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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K3 ["new"]
       13 CALL                             R4 0 1
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K4 ["createElement"]
       17 GETUPVAL                         R6 4
       18 DUPTABLE                         R7 K9 [{"LayoutOrder", "Size", "Style", "OnClick"}]
       19 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       21 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       23 GETTABLEKS                       R8 R0 K6 ["Size"]
       25 SETTABLEKS                       R8 R7 K6 ["Size"]
       27 LOADK                            R8 K10 ["Round"]
       28 SETTABLEKS                       R8 R7 K7 ["Style"]
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R8 R7 K8 ["OnClick"]
       35 DUPTABLE                         R8 K13 [{"Icon", "DropdownMenu"}]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R9 R10 K4 ["createElement"]
       39 GETUPVAL                         R10 5
       40 DUPTABLE                         R11 K18 [{"Size", "AnchorPoint", "Position", "Image", "ImageColor3"}]
       41 GETTABLEKS                       R12 R1 K19 ["ExpandArrowSize"]
       43 SETTABLEKS                       R12 R11 K6 ["Size"]
       45 GETIMPORT                        R12 K21 [Vector2.new]
       47 LOADK                            R13 K22 [0.5]
       48 LOADK                            R14 K22 [0.5]
       49 CALL                             R12 2 1
       50 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       52 GETIMPORT                        R12 K25 [UDim2.fromScale]
       54 LOADK                            R13 K22 [0.5]
       55 LOADK                            R14 K22 [0.5]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K15 ["Position"]
       59 GETTABLEKS                       R12 R1 K26 ["ExpandArrow"]
       61 SETTABLEKS                       R12 R11 K16 ["Image"]
       63 GETTABLEKS                       R12 R1 K27 ["IconColor"]
       65 SETTABLEKS                       R12 R11 K17 ["ImageColor3"]
       67 CALL                             R9 2 1
       68 SETTABLEKS                       R9 R8 K11 ["Icon"]
       70 GETUPVAL                         R10 3
       71 GETTABLEKS                       R9 R10 K4 ["createElement"]
       73 GETUPVAL                         R10 6
       74 DUPTABLE                         R11 K33 [{"Hide", "Items", "OnRenderItem", "OnItemActivated", "OnFocusLost"}]
       75 NOT                              R12 R2
       76 SETTABLEKS                       R12 R11 K28 ["Hide"]
       78 NEWTABLE                         R12 0 2
       80 DUPTABLE                         R13 K36 [{"Title", "Subtitle"}]
       81 GETTABLEKS                       R15 R0 K37 ["Value"]
       83 FASTCALL1                        TOSTRING R15 ; [+2]
       84 GETIMPORT                        R14 K39 [tostring]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K34 ["Title"]
       89 LOADK                            R14 K40 ["Converted from R6"]
       90 SETTABLEKS                       R14 R13 K35 ["Subtitle"]
       92 DUPTABLE                         R14 K36 [{"Title", "Subtitle"}]
       93 LOADK                            R15 K41 ["Replace with New"]
       94 SETTABLEKS                       R15 R14 K34 ["Title"]
       96 LOADK                            R15 K42 ["Enter new Asset ID"]
       97 SETTABLEKS                       R15 R14 K35 ["Subtitle"]
       99 SETLIST                          R12 R13 2 [1]
      101 SETTABLEKS                       R12 R11 K29 ["Items"]
      103 NEWCLOSURE                       R12 P1
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U7
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R12 R11 K30 ["OnRenderItem"]
      110 NEWCLOSURE                       R12 P2
      111 CAPTURE                          VAL R3
      112 SETTABLEKS                       R12 R11 K31 ["OnItemActivated"]
      114 NEWCLOSURE                       R12 P3
      115 CAPTURE                          VAL R3
      116 SETTABLEKS                       R12 R11 K32 ["OnFocusLost"]
      118 CALL                             R9 2 1
      119 SETTABLEKS                       R9 R8 K12 ["DropdownMenu"]
      121 CALL                             R5 3 -1
      122 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ConvertedAnimationCell"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["createElement"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K7 [{"LayoutOrder", "Size", "Style", "OnClick"}]
       10 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       12 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       14 GETTABLEKS                       R5 R0 K4 ["Size"]
       16 SETTABLEKS                       R5 R4 K4 ["Size"]
       18 LOADK                            R5 K8 ["Round"]
       19 SETTABLEKS                       R5 R4 K5 ["Style"]
       21 GETTABLEKS                       R5 R0 K6 ["OnClick"]
       23 SETTABLEKS                       R5 R4 K6 ["OnClick"]
       25 DUPTABLE                         R5 K10 [{"Image"}]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K2 ["createElement"]
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K14 [{"Size", "AnchorPoint", "Position", "Image", "ImageColor3"}]
       31 GETTABLEKS                       R9 R1 K15 ["DotDotDotSize"]
       33 SETTABLEKS                       R9 R8 K4 ["Size"]
       35 GETIMPORT                        R9 K18 [Vector2.new]
       37 LOADK                            R10 K19 [0.5]
       38 LOADK                            R11 K19 [0.5]
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K11 ["AnchorPoint"]
       42 GETIMPORT                        R9 K22 [UDim2.fromScale]
       44 LOADK                            R10 K19 [0.5]
       45 LOADK                            R11 K19 [0.5]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K12 ["Position"]
       49 GETTABLEKS                       R9 R1 K23 ["DotDotDot"]
       51 SETTABLEKS                       R9 R8 K9 ["Image"]
       53 GETTABLEKS                       R9 R1 K24 ["IconColor"]
       55 SETTABLEKS                       R9 R8 K13 ["ImageColor3"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K9 ["Image"]
       60 CALL                             R2 3 -1
       61 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnContextButtonClick"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["ColumnIndex"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["RowIndex"]
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
       12 DIVRK                            R4 R6 K5 [UDim.new]
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R5 R0 K8 ["Emphasis"]
       17 JUMPIFNOT                        R5 ; [+3]
       18 GETTABLEKS                       R4 R2 K9 ["BackgroundOdd"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R2 K10 ["BackgroundEven"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K4 ["new"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K11 ["createElement"]
       30 GETUPVAL                         R7 2
       31 DUPTABLE                         R8 K23 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
       32 GETTABLEKS                       R9 R0 K24 ["ColumnIndex"]
       34 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       36 DUPTABLE                         R9 K29 [{"Top", "Bottom", "Left", "Right"}]
       37 LOADN                            R10 1
       38 SETTABLEKS                       R10 R9 K25 ["Top"]
       40 LOADN                            R10 1
       41 SETTABLEKS                       R10 R9 K26 ["Bottom"]
       43 LOADN                            R10 5
       44 SETTABLEKS                       R10 R9 K27 ["Left"]
       46 LOADN                            R10 5
       47 SETTABLEKS                       R10 R9 K28 ["Right"]
       49 SETTABLEKS                       R9 R8 K13 ["Padding"]
       51 LOADK                            R9 K30 ["Box"]
       52 SETTABLEKS                       R9 R8 K1 ["Style"]
       54 SETTABLEKS                       R4 R8 K14 ["BackgroundColor3"]
       56 LOADN                            R9 1
       57 SETTABLEKS                       R9 R8 K15 ["BorderSizePixel"]
       59 GETTABLEKS                       R9 R2 K31 ["Border"]
       61 SETTABLEKS                       R9 R8 K16 ["BorderColor3"]
       63 GETIMPORT                        R9 K33 [UDim2.new]
       65 GETTABLEKS                       R10 R3 K34 ["Scale"]
       67 GETTABLEKS                       R11 R3 K35 ["Offset"]
       69 LOADN                            R12 1
       70 LOADN                            R13 0
       71 CALL                             R9 4 1
       72 SETTABLEKS                       R9 R8 K17 ["Size"]
       74 LOADB                            R9 1
       75 SETTABLEKS                       R9 R8 K18 ["ClipsDescendants"]
       77 GETIMPORT                        R9 K39 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R9 R8 K19 ["Layout"]
       81 LOADN                            R9 8
       82 SETTABLEKS                       R9 R8 K20 ["Spacing"]
       84 GETIMPORT                        R9 K40 [Enum.HorizontalAlignment.Left]
       86 SETTABLEKS                       R9 R8 K21 ["HorizontalAlignment"]
       88 GETIMPORT                        R9 K42 [Enum.VerticalAlignment.Center]
       90 SETTABLEKS                       R9 R8 K22 ["VerticalAlignment"]
       92 DUPTABLE                         R9 K45 [{"Input", "DotDotDot"}]
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R10 R11 K11 ["createElement"]
       96 GETUPVAL                         R11 3
       97 DUPTABLE                         R12 K46 [{"Value", "LayoutOrder", "Size"}]
       98 SETTABLEKS                       R1 R12 K0 ["Value"]
      100 NAMECALL                         R13 R5 K47 ["getNextOrder"]
      102 CALL                             R13 1 1
      103 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      105 GETIMPORT                        R13 K33 [UDim2.new]
      107 LOADN                            R14 0
      108 LOADN                            R15 110
      109 LOADN                            R16 1
      110 LOADN                            R17 0
      111 CALL                             R13 4 1
      112 SETTABLEKS                       R13 R12 K17 ["Size"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K43 ["Input"]
      117 GETUPVAL                         R11 1
      118 GETTABLEKS                       R10 R11 K11 ["createElement"]
      120 GETUPVAL                         R11 4
      121 DUPTABLE                         R12 K49 [{"LayoutOrder", "Size", "OnClick"}]
      122 NAMECALL                         R13 R5 K47 ["getNextOrder"]
      124 CALL                             R13 1 1
      125 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      127 GETIMPORT                        R13 K51 [UDim2.fromOffset]
      129 LOADN                            R14 22
      130 LOADN                            R15 22
      131 CALL                             R13 2 1
      132 SETTABLEKS                       R13 R12 K17 ["Size"]
      134 NEWCLOSURE                       R13 P0
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R13 R12 K48 ["OnClick"]
      138 CALL                             R10 2 1
      139 SETTABLEKS                       R10 R9 K44 ["DotDotDot"]
      141 CALL                             R6 3 -1
      142 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R4 R5 K11 ["Stylizer"]
       32 GETTABLEKS                       R5 R1 K12 ["UI"]
       34 GETTABLEKS                       R6 R5 K13 ["Pane"]
       36 GETTABLEKS                       R7 R5 K14 ["TextLabel"]
       38 GETTABLEKS                       R8 R5 K15 ["Button"]
       40 GETTABLEKS                       R9 R5 K16 ["TextInput"]
       42 GETTABLEKS                       R10 R5 K17 ["DropdownMenu"]
       44 GETTABLEKS                       R11 R5 K18 ["Image"]
       46 GETTABLEKS                       R13 R1 K19 ["Util"]
       48 GETTABLEKS                       R12 R13 K20 ["LayoutOrderIterator"]
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
