PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["createElement"]
        5 LOADK                            R5 K2 ["ImageButton"]
        6 NEWTABLE                         R6 4 0
        8 GETIMPORT                        R7 K5 [UDim2.new]
       10 LOADK                            R8 K6 [0.5]
       11 LOADN                            R9 0
       12 LOADN                            R10 1
       13 LOADN                            R11 0
       14 CALL                             R7 4 1
       15 SETTABLEKS                       R7 R6 K7 ["Size"]
       17 SETTABLEKS                       R2 R6 K8 ["LayoutOrder"]
       19 GETUPVAL                         R8 1
       20 JUMPIFNOTEQ                      R8 R3 ; [+5]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K9 ["selectedButtonColor"]
       25 JUMP                             ; [+3]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K10 ["backgroundButtonColor"]
       29 SETTABLEKS                       R7 R6 K11 ["BackgroundColor3"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K12 ["Event"]
       34 GETTABLEKS                       R7 R7 K13 ["MouseButton1Click"]
       36 NEWCLOSURE                       R8 P0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R3
       39 SETTABLE                         R8 R6 R7
       40 DUPTABLE                         R7 K18 [{"Layout", "UICorner", "Icon", "Text"}]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K1 ["createElement"]
       44 LOADK                            R9 K19 ["UIListLayout"]
       45 DUPTABLE                         R10 K25 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
       46 GETIMPORT                        R11 K28 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R11 R10 K20 ["FillDirection"]
       50 GETIMPORT                        R11 K29 [Enum.SortOrder.LayoutOrder]
       52 SETTABLEKS                       R11 R10 K21 ["SortOrder"]
       54 GETIMPORT                        R11 K31 [Enum.VerticalAlignment.Center]
       56 SETTABLEKS                       R11 R10 K22 ["VerticalAlignment"]
       58 GETIMPORT                        R11 K32 [Enum.HorizontalAlignment.Center]
       60 SETTABLEKS                       R11 R10 K23 ["HorizontalAlignment"]
       62 GETIMPORT                        R11 K34 [UDim.new]
       64 LOADN                            R12 0
       65 LOADN                            R13 5
       66 CALL                             R11 2 1
       67 SETTABLEKS                       R11 R10 K24 ["Padding"]
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K14 ["Layout"]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R8 R8 K1 ["createElement"]
       75 LOADK                            R9 K15 ["UICorner"]
       76 DUPTABLE                         R10 K36 [{"CornerRadius"}]
       77 GETIMPORT                        R11 K34 [UDim.new]
       79 LOADN                            R12 0
       80 LOADN                            R13 5
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K35 ["CornerRadius"]
       84 CALL                             R8 2 1
       85 SETTABLEKS                       R8 R7 K15 ["UICorner"]
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R8 R8 K1 ["createElement"]
       90 LOADK                            R9 K37 ["Frame"]
       91 DUPTABLE                         R10 K39 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
       92 GETIMPORT                        R11 K5 [UDim2.new]
       94 LOADN                            R12 0
       95 LOADN                            R13 20
       96 LOADN                            R14 0
       97 LOADN                            R15 20
       98 CALL                             R11 4 1
       99 SETTABLEKS                       R11 R10 K7 ["Size"]
      101 LOADN                            R11 1
      102 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      104 LOADN                            R11 1
      105 SETTABLEKS                       R11 R10 K38 ["BackgroundTransparency"]
      107 NEWTABLE                         R11 0 1
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K1 ["createElement"]
      112 LOADK                            R13 K40 ["ImageLabel"]
      113 DUPTABLE                         R14 K43 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder", "ImageColor3"}]
      114 SETTABLEKS                       R1 R14 K41 ["Image"]
      116 LOADN                            R15 1
      117 SETTABLEKS                       R15 R14 K38 ["BackgroundTransparency"]
      119 GETIMPORT                        R15 K5 [UDim2.new]
      121 LOADN                            R16 0
      122 LOADN                            R17 20
      123 LOADN                            R18 0
      124 LOADN                            R19 20
      125 CALL                             R15 4 1
      126 SETTABLEKS                       R15 R14 K7 ["Size"]
      128 LOADN                            R15 1
      129 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      131 GETUPVAL                         R16 1
      132 JUMPIFNOTEQ                      R16 R3 ; [+5]
      134 GETUPVAL                         R15 2
      135 GETTABLEKS                       R15 R15 K44 ["selectedTextColor"]
      137 JUMP                             ; [+3]
      138 GETUPVAL                         R15 2
      139 GETTABLEKS                       R15 R15 K45 ["textColor"]
      141 SETTABLEKS                       R15 R14 K42 ["ImageColor3"]
      143 CALL                             R12 2 -1
      144 SETLIST                          R11 R12 -1 [1]
      146 CALL                             R8 3 1
      147 SETTABLEKS                       R8 R7 K16 ["Icon"]
      149 GETUPVAL                         R8 0
      150 GETTABLEKS                       R8 R8 K1 ["createElement"]
      152 LOADK                            R9 K46 ["TextLabel"]
      153 DUPTABLE                         R10 K51 [{"BackgroundTransparency", "LayoutOrder", "Text", "AutomaticSize", "Font", "TextSize", "TextColor3"}]
      154 LOADN                            R11 1
      155 SETTABLEKS                       R11 R10 K38 ["BackgroundTransparency"]
      157 LOADN                            R11 2
      158 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      160 GETUPVAL                         R11 4
      161 LOADK                            R13 K52 ["Audio"]
      162 MOVE                             R14 R3
      163 NAMECALL                         R11 R11 K53 ["getText"]
      165 CALL                             R11 3 1
      166 SETTABLEKS                       R11 R10 K17 ["Text"]
      168 GETIMPORT                        R11 K55 [Enum.AutomaticSize.X]
      170 SETTABLEKS                       R11 R10 K47 ["AutomaticSize"]
      172 GETUPVAL                         R11 5
      173 GETTABLEKS                       R11 R11 K56 ["FONT"]
      175 SETTABLEKS                       R11 R10 K48 ["Font"]
      177 GETUPVAL                         R11 5
      178 GETTABLEKS                       R11 R11 K57 ["FONT_SIZE_MEDIUM"]
      180 SETTABLEKS                       R11 R10 K49 ["TextSize"]
      182 GETUPVAL                         R12 1
      183 JUMPIFNOTEQ                      R12 R3 ; [+5]
      185 GETUPVAL                         R11 2
      186 GETTABLEKS                       R11 R11 K44 ["selectedTextColor"]
      188 JUMP                             ; [+3]
      189 GETUPVAL                         R11 2
      190 GETTABLEKS                       R11 R11 K45 ["textColor"]
      192 SETTABLEKS                       R11 R10 K50 ["TextColor3"]
      194 CALL                             R8 2 1
      195 SETTABLEKS                       R8 R7 K17 ["Text"]
      197 CALL                             R4 3 -1
      198 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["OnTabSelect"]
        6 GETTABLEKS                       R4 R1 K3 ["SelectedTab"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R5 R5 K5 ["audioTabs"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K6 ["createElement"]
       22 LOADK                            R8 K7 ["Frame"]
       23 DUPTABLE                         R9 K10 [{"Size", "BackgroundTransparency"}]
       24 GETIMPORT                        R10 K13 [UDim2.new]
       26 LOADN                            R11 1
       27 LOADN                            R12 0
       28 LOADN                            R13 1
       29 LOADN                            R14 0
       30 CALL                             R10 4 1
       31 SETTABLEKS                       R10 R9 K8 ["Size"]
       33 LOADN                            R10 1
       34 SETTABLEKS                       R10 R9 K9 ["BackgroundTransparency"]
       36 DUPTABLE                         R10 K17 [{"Layout", "SoundEffectTab", "MusicTab"}]
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R11 R11 K6 ["createElement"]
       40 LOADK                            R12 K18 ["UIListLayout"]
       41 DUPTABLE                         R13 K23 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
       42 GETIMPORT                        R14 K26 [Enum.FillDirection.Horizontal]
       44 SETTABLEKS                       R14 R13 K19 ["FillDirection"]
       46 GETIMPORT                        R14 K28 [Enum.SortOrder.LayoutOrder]
       48 SETTABLEKS                       R14 R13 K20 ["SortOrder"]
       50 GETIMPORT                        R14 K30 [Enum.VerticalAlignment.Center]
       52 SETTABLEKS                       R14 R13 K21 ["VerticalAlignment"]
       54 GETIMPORT                        R14 K31 [Enum.HorizontalAlignment.Center]
       56 SETTABLEKS                       R14 R13 K22 ["HorizontalAlignment"]
       58 CALL                             R11 2 1
       59 SETTABLEKS                       R11 R10 K14 ["Layout"]
       61 MOVE                             R11 R6
       62 GETUPVAL                         R12 2
       63 GETTABLEKS                       R12 R12 K32 ["SOUND_EFFECTS"]
       65 GETUPVAL                         R13 3
       66 GETTABLEKS                       R13 R13 K33 ["SOUND_EFFECT_ICON"]
       68 LOADN                            R14 1
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K15 ["SoundEffectTab"]
       72 MOVE                             R11 R6
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R12 R12 K34 ["MUSIC"]
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R13 R13 K35 ["MUSIC_ICON"]
       79 LOADN                            R14 2
       80 CALL                             R11 3 1
       81 SETTABLEKS                       R11 R10 K16 ["MusicTab"]
       83 CALL                             R7 3 -1
       84 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R4 K10 ["Util"]
       23 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       25 GETTABLEKS                       R6 R5 K12 ["withContext"]
       27 GETIMPORT                        R7 K6 [require]
       29 GETTABLEKS                       R8 R4 K13 ["Constants"]
       31 CALL                             R7 1 1
       32 GETIMPORT                        R8 K6 [require]
       34 GETTABLEKS                       R9 R0 K9 ["Src"]
       36 GETTABLEKS                       R9 R9 K14 ["Types"]
       38 GETTABLEKS                       R9 R9 K15 ["Category"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K6 [require]
       43 GETTABLEKS                       R10 R0 K9 ["Src"]
       45 GETTABLEKS                       R10 R10 K10 ["Util"]
       47 GETTABLEKS                       R10 R10 K16 ["Images"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R2 K17 ["PureComponent"]
       52 LOADK                            R12 K18 ["AudioTabs"]
       53 NAMECALL                         R10 R10 K19 ["extend"]
       55 CALL                             R10 2 1
       56 DUPCLOSURE                       R11 K20 [PROTO_0]
       57 SETTABLEKS                       R11 R10 K21 ["init"]
       59 DUPCLOSURE                       R11 K22 [PROTO_3]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R11 R10 K23 ["render"]
       66 MOVE                             R11 R6
       67 DUPTABLE                         R12 K26 [{"Stylizer", "Localization"}]
       68 GETTABLEKS                       R13 R5 K24 ["Stylizer"]
       70 SETTABLEKS                       R13 R12 K24 ["Stylizer"]
       72 GETTABLEKS                       R13 R5 K25 ["Localization"]
       74 SETTABLEKS                       R13 R12 K25 ["Localization"]
       76 CALL                             R11 1 1
       77 MOVE                             R12 R10
       78 CALL                             R11 1 1
       79 MOVE                             R10 R11
       80 RETURN                           R10 1
