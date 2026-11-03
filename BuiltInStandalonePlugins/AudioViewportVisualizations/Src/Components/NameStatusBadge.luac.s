PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Color"]
        2 GETTABLEKS                       R3 R3 K1 ["System"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R1
        6 GETTABLE                         R2 R3 R4
        7 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Padding"]
        2 GETTABLEKS                       R2 R2 K1 ["XXSmall"]
        4 GETTABLEKS                       R4 R1 K0 ["Padding"]
        6 GETTABLEKS                       R4 R4 K1 ["XXSmall"]
        8 GETTABLEKS                       R5 R1 K2 ["Gap"]
       10 GETTABLEKS                       R5 R5 K1 ["XXSmall"]
       12 ADD                              R3 R4 R5
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R0 K3 ["order"]
       16 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       18 GETUPVAL                         R4 0
       19 GETIMPORT                        R5 K7 [UDim2.fromOffset]
       21 LOADN                            R6 0
       22 GETTABLEKS                       R7 R1 K8 ["Size"]
       24 GETTABLEKS                       R7 R7 K9 ["Size_400"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K8 ["Size"]
       29 GETUPVAL                         R4 1
       30 GETIMPORT                        R5 K12 [Vector2.new]
       32 GETTABLEKS                       R6 R0 K13 ["maxWidth"]
       34 LOADK                            R7 K14 [Infinity]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K15 ["MaxSize"]
       38 GETUPVAL                         R4 2
       39 GETIMPORT                        R5 K17 [UDim.new]
       41 LOADN                            R6 0
       42 GETTABLEKS                       R7 R1 K18 ["Radius"]
       44 GETTABLEKS                       R7 R7 K19 ["Small"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K20 ["CornerRadius"]
       49 GETUPVAL                         R4 3
       50 GETIMPORT                        R5 K17 [UDim.new]
       52 LOADN                            R6 0
       53 MOVE                             R7 R3
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K0 ["Padding"]
       57 GETUPVAL                         R4 4
       58 GETIMPORT                        R5 K17 [UDim.new]
       60 LOADN                            R6 0
       61 MOVE                             R7 R2
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K21 ["PaddingLeft"]
       65 GETUPVAL                         R4 4
       66 GETIMPORT                        R5 K17 [UDim.new]
       68 LOADN                            R6 0
       69 MOVE                             R7 R2
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R4 K22 ["PaddingRight"]
       73 GETTABLEKS                       R5 R0 K23 ["variant"]
       75 GETTABLEKS                       R6 R1 K24 ["Color"]
       77 GETTABLEKS                       R6 R6 K25 ["System"]
       79 GETUPVAL                         R8 5
       80 GETTABLE                         R7 R8 R5
       81 GETTABLE                         R4 R6 R7
       82 GETUPVAL                         R5 6
       83 GETIMPORT                        R6 K7 [UDim2.fromOffset]
       85 GETTABLEKS                       R7 R1 K8 ["Size"]
       87 GETTABLEKS                       R7 R7 K26 ["Size_150"]
       89 GETTABLEKS                       R8 R1 K8 ["Size"]
       91 GETTABLEKS                       R8 R8 K26 ["Size_150"]
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K8 ["Size"]
       96 GETUPVAL                         R5 6
       97 GETTABLEKS                       R6 R4 K27 ["Color3"]
       99 SETTABLEKS                       R6 R5 K28 ["BackgroundColor3"]
      101 GETUPVAL                         R5 6
      102 GETTABLEKS                       R6 R4 K29 ["Transparency"]
      104 SETTABLEKS                       R6 R5 K30 ["BackgroundTransparency"]
      106 GETTABLEKS                       R5 R1 K31 ["Typography"]
      108 GETTABLEKS                       R5 R5 K32 ["CaptionSmall"]
      110 GETTABLEKS                       R6 R1 K24 ["Color"]
      112 GETTABLEKS                       R6 R6 K33 ["Content"]
      114 GETTABLEKS                       R6 R6 K34 ["Emphasis"]
      116 GETUPVAL                         R7 7
      117 GETTABLEKS                       R8 R0 K35 ["name"]
      119 SETTABLEKS                       R8 R7 K36 ["Text"]
      121 GETUPVAL                         R7 7
      122 GETTABLEKS                       R10 R5 K37 ["Font"]
      124 FASTCALL1                        TYPEOF R10 ; [+2]
      125 GETIMPORT                        R9 K39 [typeof]
      127 CALL                             R9 1 1
      128 JUMPIFNOTEQKS                    R9 K37 ["Font"] ; [+4]
      130 GETTABLEKS                       R8 R5 K37 ["Font"]
      132 JUMP                             ; [+5]
      133 GETIMPORT                        R8 K41 [Font.fromEnum]
      135 GETTABLEKS                       R9 R5 K37 ["Font"]
      137 CALL                             R8 1 1
      138 SETTABLEKS                       R8 R7 K42 ["FontFace"]
      140 GETUPVAL                         R7 7
      141 GETTABLEKS                       R8 R5 K43 ["FontSize"]
      143 SETTABLEKS                       R8 R7 K44 ["TextSize"]
      145 GETUPVAL                         R7 7
      146 GETTABLEKS                       R8 R5 K45 ["LineHeight"]
      148 SETTABLEKS                       R8 R7 K45 ["LineHeight"]
      150 GETUPVAL                         R7 7
      151 GETTABLEKS                       R8 R6 K27 ["Color3"]
      153 SETTABLEKS                       R8 R7 K46 ["TextColor3"]
      155 GETUPVAL                         R7 7
      156 GETTABLEKS                       R8 R6 K29 ["Transparency"]
      158 SETTABLEKS                       R8 R7 K47 ["TextTransparency"]
      160 LOADN                            R9 200
      161 GETTABLEKS                       R10 R1 K48 ["Config"]
      163 GETTABLEKS                       R10 R10 K49 ["UI"]
      165 GETTABLEKS                       R10 R10 K50 ["Scale"]
      167 MUL                              R8 R9 R10
      168 GETTABLEKS                       R12 R0 K13 ["maxWidth"]
      170 LOADN                            R14 2
      171 MUL                              R13 R14 R2
      172 SUB                              R11 R12 R13
      173 GETTABLEKS                       R12 R1 K8 ["Size"]
      175 GETTABLEKS                       R12 R12 K26 ["Size_150"]
      177 SUB                              R10 R11 R12
      178 SUB                              R9 R10 R3
      179 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
      181 GETIMPORT                        R7 K53 [math.min]
      183 CALL                             R7 2 1
      184 GETUPVAL                         R8 8
      185 GETIMPORT                        R9 K12 [Vector2.new]
      187 MOVE                             R10 R7
      188 LOADK                            R11 K14 [Infinity]
      189 CALL                             R9 2 1
      190 SETTABLEKS                       R9 R8 K15 ["MaxSize"]
      192 GETUPVAL                         R8 0
      193 GETUPVAL                         R9 9
      194 GETTABLEKS                       R9 R9 K54 ["getHoverColor"]
      196 CALL                             R9 0 1
      197 SETTABLEKS                       R9 R8 K28 ["BackgroundColor3"]
      199 GETUPVAL                         R8 0
      200 GETTABLEKS                       R10 R0 K55 ["forceHovered"]
      202 JUMPIFNOT                        R10 ; [+2]
      203 LOADK                            R9 K56 [0.7]
      204 JUMP                             ; [+1]
      205 LOADN                            R9 1
      206 SETTABLEKS                       R9 R8 K30 ["BackgroundTransparency"]
      208 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K7 [Enum.AutomaticSize.XY]
        6 SETTABLEKS                       R1 R0 K5 ["AutomaticSize"]
        8 LOADN                            R1 0
        9 SETTABLEKS                       R1 R0 K8 ["BorderSizePixel"]
       11 LOADB                            R1 1
       12 SETTABLEKS                       R1 R0 K9 ["ClipsDescendants"]
       14 GETIMPORT                        R1 K2 [Instance.new]
       16 LOADK                            R2 K10 ["UICorner"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R0 R1 K11 ["Parent"]
       20 GETIMPORT                        R2 K2 [Instance.new]
       22 LOADK                            R3 K12 ["UISizeConstraint"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R0 R2 K11 ["Parent"]
       26 GETIMPORT                        R3 K2 [Instance.new]
       28 LOADK                            R4 K13 ["UIListLayout"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K16 [Enum.SortOrder.LayoutOrder]
       32 SETTABLEKS                       R4 R3 K14 ["SortOrder"]
       34 GETIMPORT                        R4 K19 [Enum.FillDirection.Horizontal]
       36 SETTABLEKS                       R4 R3 K17 ["FillDirection"]
       38 GETIMPORT                        R4 K22 [Enum.HorizontalAlignment.Left]
       40 SETTABLEKS                       R4 R3 K20 ["HorizontalAlignment"]
       42 GETIMPORT                        R4 K25 [Enum.VerticalAlignment.Center]
       44 SETTABLEKS                       R4 R3 K23 ["VerticalAlignment"]
       46 SETTABLEKS                       R0 R3 K11 ["Parent"]
       48 GETIMPORT                        R4 K2 [Instance.new]
       50 LOADK                            R5 K26 ["UIPadding"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R0 R4 K11 ["Parent"]
       54 GETIMPORT                        R5 K2 [Instance.new]
       56 LOADK                            R6 K3 ["Frame"]
       57 CALL                             R5 1 1
       58 LOADN                            R6 1
       59 SETTABLEKS                       R6 R5 K15 ["LayoutOrder"]
       61 LOADN                            R6 0
       62 SETTABLEKS                       R6 R5 K8 ["BorderSizePixel"]
       64 SETTABLEKS                       R0 R5 K11 ["Parent"]
       66 GETIMPORT                        R6 K2 [Instance.new]
       68 LOADK                            R7 K10 ["UICorner"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K28 [UDim.new]
       72 LOADK                            R8 K29 [0.5]
       73 LOADN                            R9 0
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K30 ["CornerRadius"]
       77 SETTABLEKS                       R5 R6 K11 ["Parent"]
       79 GETIMPORT                        R7 K2 [Instance.new]
       81 LOADK                            R8 K31 ["TextLabel"]
       82 CALL                             R7 1 1
       83 LOADN                            R8 2
       84 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       86 GETIMPORT                        R8 K7 [Enum.AutomaticSize.XY]
       88 SETTABLEKS                       R8 R7 K5 ["AutomaticSize"]
       90 GETIMPORT                        R8 K34 [UDim2.fromOffset]
       92 LOADN                            R9 0
       93 LOADN                            R10 0
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K35 ["Size"]
       97 LOADN                            R8 1
       98 SETTABLEKS                       R8 R7 K36 ["BackgroundTransparency"]
      100 LOADN                            R8 0
      101 SETTABLEKS                       R8 R7 K8 ["BorderSizePixel"]
      103 GETIMPORT                        R8 K38 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R8 R7 K37 ["TextXAlignment"]
      107 GETIMPORT                        R8 K41 [Enum.TextTruncate.SplitWord]
      109 SETTABLEKS                       R8 R7 K39 ["TextTruncate"]
      111 SETTABLEKS                       R0 R7 K11 ["Parent"]
      113 GETIMPORT                        R8 K2 [Instance.new]
      115 LOADK                            R9 K12 ["UISizeConstraint"]
      116 CALL                             R8 1 1
      117 SETTABLEKS                       R7 R8 K11 ["Parent"]
      119 NEWCLOSURE                       R9 P0
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R4
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R8
      129 CAPTURE                          UPVAL U1
      130 NEWCLOSURE                       R10 P1
      131 CAPTURE                          VAL R0
      132 DUPTABLE                         R11 K45 [{"instance", "update", "destroy"}]
      133 SETTABLEKS                       R0 R11 K42 ["instance"]
      135 SETTABLEKS                       R9 R11 K43 ["update"]
      137 SETTABLEKS                       R10 R11 K44 ["destroy"]
      139 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["StudioColorsUtil"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K17 [{["Standard"] = "Neutral", ["Emphasis"] = "Emphasis", ["Success"] = "Success", ["Warning"] = "Warning", ["Alert"] = "Alert"}]
       24 DUPCLOSURE                       R4 K18 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 DUPCLOSURE                       R5 K19 [PROTO_3]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R2
       29 DUPTABLE                         R6 K22 [{"create", "systemColor"}]
       30 SETTABLEKS                       R5 R6 K20 ["create"]
       32 SETTABLEKS                       R4 R6 K21 ["systemColor"]
       34 RETURN                           R6 1
