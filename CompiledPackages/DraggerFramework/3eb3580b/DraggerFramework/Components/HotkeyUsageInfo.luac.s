PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K4 [{"AutomaticSize", "BackgroundTransparency"}]
        5 GETIMPORT                        R4 K7 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
        9 LOADN                            R4 1
       10 SETTABLEKS                       R4 R3 K3 ["BackgroundTransparency"]
       12 DUPTABLE                         R4 K12 [{"Padding", "Layout", "Tab", "Text"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K0 ["createElement"]
       16 GETUPVAL                         R6 1
       17 DUPTABLE                         R7 K13 [{"Padding"}]
       18 LOADN                            R8 3
       19 SETTABLEKS                       R8 R7 K8 ["Padding"]
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K8 ["Padding"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["createElement"]
       27 LOADK                            R6 K14 ["UIListLayout"]
       28 DUPTABLE                         R7 K17 [{"FillDirection", "SortOrder", "Padding"}]
       29 GETIMPORT                        R8 K19 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R8 R7 K15 ["FillDirection"]
       33 GETIMPORT                        R8 K21 [Enum.SortOrder.LayoutOrder]
       35 SETTABLEKS                       R8 R7 K16 ["SortOrder"]
       37 GETIMPORT                        R8 K24 [UDim.new]
       39 LOADN                            R9 0
       40 LOADN                            R10 3
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K8 ["Padding"]
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K9 ["Layout"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K0 ["createElement"]
       50 LOADK                            R6 K25 ["TextLabel"]
       51 DUPTABLE                         R7 K28 [{"Text", "TextColor3", "BackgroundColor3", "AutomaticSize", "LayoutOrder"}]
       52 GETTABLEKS                       R8 R0 K29 ["Hotkey"]
       54 SETTABLEKS                       R8 R7 K11 ["Text"]
       56 GETTABLEKS                       R8 R0 K30 ["ForegroundColor"]
       58 SETTABLEKS                       R8 R7 K26 ["TextColor3"]
       60 GETTABLEKS                       R8 R0 K31 ["BackgroundColor"]
       62 SETTABLEKS                       R8 R7 K27 ["BackgroundColor3"]
       64 GETIMPORT                        R8 K7 [Enum.AutomaticSize.XY]
       66 SETTABLEKS                       R8 R7 K2 ["AutomaticSize"]
       68 LOADN                            R8 1
       69 SETTABLEKS                       R8 R7 K20 ["LayoutOrder"]
       71 DUPTABLE                         R8 K33 [{"Padding", "Corner"}]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R9 R10 K0 ["createElement"]
       75 GETUPVAL                         R10 1
       76 DUPTABLE                         R11 K13 [{"Padding"}]
       77 LOADN                            R12 3
       78 SETTABLEKS                       R12 R11 K8 ["Padding"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K8 ["Padding"]
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R9 R10 K0 ["createElement"]
       86 LOADK                            R10 K34 ["UICorner"]
       87 DUPTABLE                         R11 K36 [{"CornerRadius"}]
       88 GETIMPORT                        R12 K24 [UDim.new]
       90 LOADN                            R13 0
       91 LOADN                            R14 4
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K35 ["CornerRadius"]
       95 CALL                             R9 2 1
       96 SETTABLEKS                       R9 R8 K32 ["Corner"]
       98 CALL                             R5 3 1
       99 SETTABLEKS                       R5 R4 K10 ["Tab"]
      101 GETUPVAL                         R6 0
      102 GETTABLEKS                       R5 R6 K0 ["createElement"]
      104 LOADK                            R6 K25 ["TextLabel"]
      105 DUPTABLE                         R7 K37 [{"Text", "TextColor3", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
      106 GETTABLEKS                       R8 R0 K38 ["Label"]
      108 SETTABLEKS                       R8 R7 K11 ["Text"]
      110 GETTABLEKS                       R8 R0 K30 ["ForegroundColor"]
      112 SETTABLEKS                       R8 R7 K26 ["TextColor3"]
      114 GETIMPORT                        R8 K7 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R8 R7 K2 ["AutomaticSize"]
      118 LOADN                            R8 1
      119 SETTABLEKS                       R8 R7 K3 ["BackgroundTransparency"]
      121 LOADN                            R8 2
      122 SETTABLEKS                       R8 R7 K20 ["LayoutOrder"]
      124 DUPTABLE                         R8 K13 [{"Padding"}]
      125 GETUPVAL                         R10 0
      126 GETTABLEKS                       R9 R10 K0 ["createElement"]
      128 GETUPVAL                         R10 1
      129 DUPTABLE                         R11 K13 [{"Padding"}]
      130 LOADN                            R12 3
      131 SETTABLEKS                       R12 R11 K8 ["Padding"]
      133 CALL                             R9 2 1
      134 SETTABLEKS                       R9 R8 K8 ["Padding"]
      136 CALL                             R5 3 1
      137 SETTABLEKS                       R5 R4 K11 ["Text"]
      139 CALL                             R1 3 -1
      140 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DraggerContext"]
        4 GETIMPORT                        R4 K5 [Enum.StudioStyleGuideColor.Tooltip]
        6 NAMECALL                         R2 R2 K6 ["getThemeColor"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R1 K1 ["DraggerContext"]
       11 GETIMPORT                        R5 K8 [Enum.StudioStyleGuideColor.Border]
       13 NAMECALL                         R3 R3 K6 ["getThemeColor"]
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R1 K1 ["DraggerContext"]
       18 GETIMPORT                        R6 K10 [Enum.StudioStyleGuideColor.MainText]
       20 NAMECALL                         R4 R4 K6 ["getThemeColor"]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R5 R1 K1 ["DraggerContext"]
       25 GETIMPORT                        R7 K12 [Enum.StudioStyleGuideColor.DimmedText]
       27 NAMECALL                         R5 R5 K6 ["getThemeColor"]
       29 CALL                             R5 2 1
       30 NEWTABLE                         R6 0 0
       32 GETTABLEKS                       R7 R1 K13 ["HotkeyList"]
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R12 R13 K14 ["createElement"]
       40 GETUPVAL                         R13 1
       41 DUPTABLE                         R14 K19 [{"ForegroundColor", "BackgroundColor", "Hotkey", "Label"}]
       42 SETTABLEKS                       R4 R14 K15 ["ForegroundColor"]
       44 SETTABLEKS                       R5 R14 K16 ["BackgroundColor"]
       46 GETTABLEKS                       R15 R11 K17 ["Hotkey"]
       48 SETTABLEKS                       R15 R14 K17 ["Hotkey"]
       50 GETTABLEKS                       R15 R1 K1 ["DraggerContext"]
       52 LOADK                            R17 K20 ["HotkeyHelp"]
       53 GETTABLEKS                       R18 R11 K21 ["LabelLocEntry"]
       55 NAMECALL                         R15 R15 K22 ["getText"]
       57 CALL                             R15 3 1
       58 SETTABLEKS                       R15 R14 K18 ["Label"]
       60 CALL                             R12 2 1
       61 SETTABLE                         R12 R6 R10
       62 FORGLOOP                         R7 2 ; [-26]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R7 R8 K14 ["createElement"]
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R8 R9 K23 ["Portal"]
       70 DUPTABLE                         R9 K25 [{"target"}]
       71 GETTABLEKS                       R10 R1 K1 ["DraggerContext"]
       73 NAMECALL                         R10 R10 K26 ["getGuiParent"]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K24 ["target"]
       78 DUPTABLE                         R10 K28 [{"SummonHandlesNoteGui"}]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K14 ["createElement"]
       82 LOADK                            R12 K29 ["ScreenGui"]
       83 NEWTABLE                         R13 0 0
       85 DUPTABLE                         R14 K31 [{"Frame"}]
       86 GETUPVAL                         R16 0
       87 GETTABLEKS                       R15 R16 K14 ["createElement"]
       89 LOADK                            R16 K30 ["Frame"]
       90 DUPTABLE                         R17 K38 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "BackgroundColor3", "BorderColor3"}]
       91 GETIMPORT                        R18 K41 [Vector2.new]
       93 LOADN                            R19 1
       94 LOADN                            R20 1
       95 CALL                             R18 2 1
       96 SETTABLEKS                       R18 R17 K32 ["AnchorPoint"]
       98 GETIMPORT                        R18 K43 [UDim2.new]
      100 LOADN                            R19 1
      101 LOADN                            R20 246
      102 LOADN                            R21 1
      103 LOADN                            R22 246
      104 CALL                             R18 4 1
      105 SETTABLEKS                       R18 R17 K33 ["Position"]
      107 GETIMPORT                        R18 K45 [UDim2.fromOffset]
      109 LOADN                            R19 200
      110 LOADN                            R20 0
      111 CALL                             R18 2 1
      112 SETTABLEKS                       R18 R17 K34 ["Size"]
      114 GETIMPORT                        R18 K47 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R18 R17 K35 ["AutomaticSize"]
      118 SETTABLEKS                       R2 R17 K36 ["BackgroundColor3"]
      120 SETTABLEKS                       R3 R17 K37 ["BorderColor3"]
      122 DUPTABLE                         R18 K52 [{"Layout", "Corner", "Stroke", "Hotkeys"}]
      123 GETUPVAL                         R20 0
      124 GETTABLEKS                       R19 R20 K14 ["createElement"]
      126 LOADK                            R20 K53 ["UIListLayout"]
      127 DUPTABLE                         R21 K57 [{"FillDirection", "SortOrder", "Padding"}]
      128 GETIMPORT                        R22 K59 [Enum.FillDirection.Vertical]
      130 SETTABLEKS                       R22 R21 K54 ["FillDirection"]
      132 GETIMPORT                        R22 K61 [Enum.SortOrder.LayoutOrder]
      134 SETTABLEKS                       R22 R21 K55 ["SortOrder"]
      136 GETIMPORT                        R22 K63 [UDim.new]
      138 LOADN                            R23 0
      139 LOADN                            R24 3
      140 CALL                             R22 2 1
      141 SETTABLEKS                       R22 R21 K56 ["Padding"]
      143 CALL                             R19 2 1
      144 SETTABLEKS                       R19 R18 K48 ["Layout"]
      146 GETUPVAL                         R20 0
      147 GETTABLEKS                       R19 R20 K14 ["createElement"]
      149 LOADK                            R20 K64 ["UICorner"]
      150 DUPTABLE                         R21 K66 [{"CornerRadius"}]
      151 GETIMPORT                        R22 K63 [UDim.new]
      153 LOADN                            R23 0
      154 LOADN                            R24 4
      155 CALL                             R22 2 1
      156 SETTABLEKS                       R22 R21 K65 ["CornerRadius"]
      158 CALL                             R19 2 1
      159 SETTABLEKS                       R19 R18 K49 ["Corner"]
      161 GETUPVAL                         R20 0
      162 GETTABLEKS                       R19 R20 K14 ["createElement"]
      164 LOADK                            R20 K67 ["UIStroke"]
      165 DUPTABLE                         R21 K69 [{"Color"}]
      166 SETTABLEKS                       R3 R21 K68 ["Color"]
      168 CALL                             R19 2 1
      169 SETTABLEKS                       R19 R18 K50 ["Stroke"]
      171 GETUPVAL                         R20 0
      172 GETTABLEKS                       R19 R20 K70 ["createFragment"]
      174 MOVE                             R20 R6
      175 CALL                             R19 1 1
      176 SETTABLEKS                       R19 R18 K51 ["Hotkeys"]
      178 CALL                             R15 3 1
      179 SETTABLEKS                       R15 R14 K30 ["Frame"]
      181 CALL                             R11 3 1
      182 SETTABLEKS                       R11 R10 K27 ["SummonHandlesNoteGui"]
      184 CALL                             R7 3 -1
      185 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Components"]
       18 GETTABLEKS                       R4 R5 K7 ["SimplePadding"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K8 ["PureComponent"]
       23 LOADK                            R6 K9 ["HotkeyUsageInfo"]
       24 NAMECALL                         R4 R4 K10 ["extend"]
       26 CALL                             R4 2 1
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 DUPCLOSURE                       R6 K12 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R5
       33 SETTABLEKS                       R6 R4 K13 ["render"]
       35 RETURN                           R4 1
