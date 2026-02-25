PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "AutomaticSize"}]
        5 GETTABLEKS                       R5 R0 K6 ["layoutOrder"]
        7 SETTABLEKS                       R5 R4 K0 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K7 ["size"]
       11 SETTABLEKS                       R5 R4 K1 ["Size"]
       13 GETTABLEKS                       R5 R0 K8 ["position"]
       15 SETTABLEKS                       R5 R4 K2 ["Position"]
       17 GETTABLEKS                       R5 R0 K9 ["anchorPoint"]
       19 SETTABLEKS                       R5 R4 K3 ["AnchorPoint"]
       21 GETIMPORT                        R5 K12 [Enum.AutomaticSize.XY]
       23 SETTABLEKS                       R5 R4 K4 ["AutomaticSize"]
       25 DUPTABLE                         R5 K16 [{"UIListLayout", "TextLabel", "Content"}]
       26 GETUPVAL                         R6 1
       27 LOADK                            R7 K13 ["UIListLayout"]
       28 DUPTABLE                         R8 K21 [{"FillDirection", "SortOrder", "Padding", "ItemLineAlignment"}]
       29 GETIMPORT                        R9 K23 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R9 R8 K17 ["FillDirection"]
       33 GETIMPORT                        R9 K24 [Enum.SortOrder.LayoutOrder]
       35 SETTABLEKS                       R9 R8 K18 ["SortOrder"]
       37 GETTABLEKS                       R10 R0 K25 ["separation"]
       39 JUMPIFNOT                        R10 ; [+3]
       40 GETTABLEKS                       R9 R0 K25 ["separation"]
       42 JUMP                             ; [+5]
       43 GETIMPORT                        R9 K28 [UDim.new]
       45 LOADN                            R10 0
       46 LOADN                            R11 0
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K19 ["Padding"]
       50 GETIMPORT                        R9 K30 [Enum.ItemLineAlignment.Start]
       52 SETTABLEKS                       R9 R8 K20 ["ItemLineAlignment"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K13 ["UIListLayout"]
       57 GETUPVAL                         R6 1
       58 LOADK                            R7 K14 ["TextLabel"]
       59 NEWTABLE                         R8 8 0
       61 GETUPVAL                         R10 3
       62 GETTABLEKS                       R9 R10 K31 ["Tag"]
       64 GETUPVAL                         R10 4
       65 GETTABLEKS                       R11 R0 K32 ["textLabelTags"]
       67 LOADK                            R12 K33 ["TitledComponentLabel"]
       68 CALL                             R10 2 1
       69 SETTABLE                         R10 R8 R9
       70 GETTABLEKS                       R9 R0 K34 ["text"]
       72 SETTABLEKS                       R9 R8 K35 ["Text"]
       74 LOADN                            R9 18
       75 SETTABLEKS                       R9 R8 K36 ["TextSize"]
       77 LOADB                            R9 1
       78 SETTABLEKS                       R9 R8 K37 ["TextWrapped"]
       80 MOVE                             R9 R1
       81 CALL                             R9 0 1
       82 SETTABLEKS                       R9 R8 K0 ["LayoutOrder"]
       84 LOADN                            R9 1
       85 SETTABLEKS                       R9 R8 K38 ["BackgroundTransparency"]
       87 GETIMPORT                        R9 K40 [UDim2.new]
       89 GETTABLEKS                       R11 R0 K41 ["minTextLabelWidth"]
       91 GETTABLEKS                       R10 R11 K42 ["Scale"]
       93 GETTABLEKS                       R12 R0 K41 ["minTextLabelWidth"]
       95 GETTABLEKS                       R11 R12 K43 ["Offset"]
       97 LOADN                            R12 0
       98 GETUPVAL                         R14 5
       99 GETTABLEKS                       R13 R14 K44 ["STANDARD_HEIGHT"]
      101 CALL                             R9 4 1
      102 SETTABLEKS                       R9 R8 K1 ["Size"]
      104 GETTABLEKS                       R10 R0 K45 ["textLabelAutomaticSize"]
      106 JUMPIFNOT                        R10 ; [+3]
      107 GETTABLEKS                       R9 R0 K45 ["textLabelAutomaticSize"]
      109 JUMP                             ; [+2]
      110 GETIMPORT                        R9 K47 [Enum.AutomaticSize.Y]
      112 SETTABLEKS                       R9 R8 K4 ["AutomaticSize"]
      114 CALL                             R6 2 1
      115 SETTABLEKS                       R6 R5 K14 ["TextLabel"]
      117 GETUPVAL                         R6 1
      118 GETUPVAL                         R7 2
      119 NEWTABLE                         R8 4 0
      121 GETUPVAL                         R10 3
      122 GETTABLEKS                       R9 R10 K31 ["Tag"]
      124 GETUPVAL                         R12 6
      125 GETTABLEKS                       R11 R12 K48 ["Styling"]
      127 GETTABLEKS                       R10 R11 K49 ["joinTags"]
      129 LOADK                            R11 K50 ["X-Column"]
      130 GETTABLEKS                       R12 R0 K51 ["contentTags"]
      132 CALL                             R10 2 1
      133 SETTABLE                         R10 R8 R9
      134 GETTABLEKS                       R9 R0 K52 ["contentSize"]
      136 JUMPIF                           R9 ; [+3]
      137 GETIMPORT                        R9 K40 [UDim2.new]
      139 CALL                             R9 0 1
      140 SETTABLEKS                       R9 R8 K1 ["Size"]
      142 GETTABLEKS                       R9 R0 K53 ["contentAutomaticSize"]
      144 JUMPIF                           R9 ; [+2]
      145 GETIMPORT                        R9 K12 [Enum.AutomaticSize.XY]
      147 SETTABLEKS                       R9 R8 K4 ["AutomaticSize"]
      149 MOVE                             R9 R1
      150 CALL                             R9 0 1
      151 SETTABLEKS                       R9 R8 K0 ["LayoutOrder"]
      153 GETTABLEKS                       R9 R0 K54 ["children"]
      155 CALL                             R6 3 1
      156 SETTABLEKS                       R6 R5 K15 ["Content"]
      158 CALL                             R2 3 -1
      159 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["UI"]
       39 GETTABLEKS                       R7 R2 K14 ["Styling"]
       41 GETTABLEKS                       R6 R7 K15 ["joinTags"]
       43 GETTABLEKS                       R7 R4 K16 ["createNextOrder"]
       45 GETTABLEKS                       R8 R3 K17 ["createElement"]
       47 GETTABLEKS                       R9 R5 K18 ["Pane"]
       49 DUPCLOSURE                       R10 K19 [PROTO_0]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 RETURN                           R10 1
