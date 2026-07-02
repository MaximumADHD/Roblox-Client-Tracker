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
       91 DUPTABLE                         R10 K40 [{["Size"], ["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1}]
       92 GETIMPORT                        R11 K5 [UDim2.new]
       94 LOADN                            R12 0
       95 LOADN                            R13 20
       96 LOADN                            R14 0
       97 LOADN                            R15 20
       98 CALL                             R11 4 1
       99 SETTABLEKS                       R11 R10 K7 ["Size"]
      101 NEWTABLE                         R11 0 1
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K1 ["createElement"]
      106 LOADK                            R13 K41 ["ImageLabel"]
      107 DUPTABLE                         R14 K44 [{["Image"], ["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 1, ["ImageColor3"]}]
      108 SETTABLEKS                       R1 R14 K42 ["Image"]
      110 GETIMPORT                        R15 K5 [UDim2.new]
      112 LOADN                            R16 0
      113 LOADN                            R17 20
      114 LOADN                            R18 0
      115 LOADN                            R19 20
      116 CALL                             R15 4 1
      117 SETTABLEKS                       R15 R14 K7 ["Size"]
      119 GETUPVAL                         R16 1
      120 JUMPIFNOTEQ                      R16 R3 ; [+5]
      122 GETUPVAL                         R15 2
      123 GETTABLEKS                       R15 R15 K45 ["selectedTextColor"]
      125 JUMP                             ; [+3]
      126 GETUPVAL                         R15 2
      127 GETTABLEKS                       R15 R15 K46 ["textColor"]
      129 SETTABLEKS                       R15 R14 K43 ["ImageColor3"]
      131 CALL                             R12 2 -1
      132 SETLIST                          R11 R12 -1 [1]
      134 CALL                             R8 3 1
      135 SETTABLEKS                       R8 R7 K16 ["Icon"]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K1 ["createElement"]
      140 LOADK                            R9 K47 ["TextLabel"]
      141 DUPTABLE                         R10 K53 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Text"], ["AutomaticSize"], ["Font"], ["TextSize"], ["TextColor3"]}]
      142 GETUPVAL                         R11 4
      143 LOADK                            R13 K54 ["Audio"]
      144 MOVE                             R14 R3
      145 NAMECALL                         R11 R11 K55 ["getText"]
      147 CALL                             R11 3 1
      148 SETTABLEKS                       R11 R10 K17 ["Text"]
      150 GETIMPORT                        R11 K57 [Enum.AutomaticSize.X]
      152 SETTABLEKS                       R11 R10 K49 ["AutomaticSize"]
      154 GETUPVAL                         R11 5
      155 GETTABLEKS                       R11 R11 K58 ["FONT"]
      157 SETTABLEKS                       R11 R10 K50 ["Font"]
      159 GETUPVAL                         R11 5
      160 GETTABLEKS                       R11 R11 K59 ["FONT_SIZE_MEDIUM"]
      162 SETTABLEKS                       R11 R10 K51 ["TextSize"]
      164 GETUPVAL                         R12 1
      165 JUMPIFNOTEQ                      R12 R3 ; [+5]
      167 GETUPVAL                         R11 2
      168 GETTABLEKS                       R11 R11 K45 ["selectedTextColor"]
      170 JUMP                             ; [+3]
      171 GETUPVAL                         R11 2
      172 GETTABLEKS                       R11 R11 K46 ["textColor"]
      174 SETTABLEKS                       R11 R10 K52 ["TextColor3"]
      176 CALL                             R8 2 1
      177 SETTABLEKS                       R8 R7 K17 ["Text"]
      179 CALL                             R4 3 -1
      180 RETURN                           R4 -1

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
       23 DUPTABLE                         R9 K11 [{["Size"], ["BackgroundTransparency"] = 1}]
       24 GETIMPORT                        R10 K14 [UDim2.new]
       26 LOADN                            R11 1
       27 LOADN                            R12 0
       28 LOADN                            R13 1
       29 LOADN                            R14 0
       30 CALL                             R10 4 1
       31 SETTABLEKS                       R10 R9 K8 ["Size"]
       33 DUPTABLE                         R10 K18 [{"Layout", "SoundEffectTab", "MusicTab"}]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K6 ["createElement"]
       37 LOADK                            R12 K19 ["UIListLayout"]
       38 DUPTABLE                         R13 K24 [{"FillDirection", "SortOrder", "VerticalAlignment", "HorizontalAlignment"}]
       39 GETIMPORT                        R14 K27 [Enum.FillDirection.Horizontal]
       41 SETTABLEKS                       R14 R13 K20 ["FillDirection"]
       43 GETIMPORT                        R14 K29 [Enum.SortOrder.LayoutOrder]
       45 SETTABLEKS                       R14 R13 K21 ["SortOrder"]
       47 GETIMPORT                        R14 K31 [Enum.VerticalAlignment.Center]
       49 SETTABLEKS                       R14 R13 K22 ["VerticalAlignment"]
       51 GETIMPORT                        R14 K32 [Enum.HorizontalAlignment.Center]
       53 SETTABLEKS                       R14 R13 K23 ["HorizontalAlignment"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K15 ["Layout"]
       58 MOVE                             R11 R6
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R12 R12 K33 ["SOUND_EFFECTS"]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R13 R13 K34 ["SOUND_EFFECT_ICON"]
       65 LOADN                            R14 1
       66 CALL                             R11 3 1
       67 SETTABLEKS                       R11 R10 K16 ["SoundEffectTab"]
       69 MOVE                             R11 R6
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R12 R12 K35 ["MUSIC"]
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K36 ["MUSIC_ICON"]
       76 LOADN                            R14 2
       77 CALL                             R11 3 1
       78 SETTABLEKS                       R11 R10 K17 ["MusicTab"]
       80 CALL                             R7 3 -1
       81 RETURN                           R7 -1

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
