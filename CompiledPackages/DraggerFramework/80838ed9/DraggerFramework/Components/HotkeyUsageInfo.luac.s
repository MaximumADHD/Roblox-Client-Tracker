PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K5 [{["AutomaticSize"], ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R4 K8 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K2 ["AutomaticSize"]
        9 DUPTABLE                         R4 K13 [{"Padding", "Layout", "Tab", "Text"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K15 [{["Padding"] = 3}]
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R4 K9 ["Padding"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 LOADK                            R6 K16 ["UIListLayout"]
       22 DUPTABLE                         R7 K19 [{"FillDirection", "SortOrder", "Padding"}]
       23 GETIMPORT                        R8 K21 [Enum.FillDirection.Horizontal]
       25 SETTABLEKS                       R8 R7 K17 ["FillDirection"]
       27 GETIMPORT                        R8 K23 [Enum.SortOrder.LayoutOrder]
       29 SETTABLEKS                       R8 R7 K18 ["SortOrder"]
       31 GETIMPORT                        R8 K26 [UDim.new]
       33 LOADN                            R9 0
       34 LOADN                            R10 3
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K9 ["Padding"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K10 ["Layout"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K0 ["createElement"]
       44 LOADK                            R6 K27 ["TextLabel"]
       45 DUPTABLE                         R7 K30 [{["Text"], ["TextColor3"], ["BackgroundColor3"], ["AutomaticSize"], ["LayoutOrder"] = 1}]
       46 GETTABLEKS                       R8 R0 K31 ["Hotkey"]
       48 SETTABLEKS                       R8 R7 K12 ["Text"]
       50 GETTABLEKS                       R8 R0 K32 ["ForegroundColor"]
       52 SETTABLEKS                       R8 R7 K28 ["TextColor3"]
       54 GETTABLEKS                       R8 R0 K33 ["BackgroundColor"]
       56 SETTABLEKS                       R8 R7 K29 ["BackgroundColor3"]
       58 GETIMPORT                        R8 K8 [Enum.AutomaticSize.XY]
       60 SETTABLEKS                       R8 R7 K2 ["AutomaticSize"]
       62 DUPTABLE                         R8 K35 [{"Padding", "Corner"}]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K0 ["createElement"]
       66 GETUPVAL                         R10 1
       67 DUPTABLE                         R11 K15 [{["Padding"] = 3}]
       68 CALL                             R9 2 1
       69 SETTABLEKS                       R9 R8 K9 ["Padding"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K0 ["createElement"]
       74 LOADK                            R10 K36 ["UICorner"]
       75 DUPTABLE                         R11 K38 [{"CornerRadius"}]
       76 GETIMPORT                        R12 K26 [UDim.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 4
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K37 ["CornerRadius"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K34 ["Corner"]
       86 CALL                             R5 3 1
       87 SETTABLEKS                       R5 R4 K11 ["Tab"]
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R5 R5 K0 ["createElement"]
       92 LOADK                            R6 K27 ["TextLabel"]
       93 DUPTABLE                         R7 K40 [{["Text"], ["TextColor3"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
       94 GETTABLEKS                       R8 R0 K41 ["Label"]
       96 SETTABLEKS                       R8 R7 K12 ["Text"]
       98 GETTABLEKS                       R8 R0 K32 ["ForegroundColor"]
      100 SETTABLEKS                       R8 R7 K28 ["TextColor3"]
      102 GETIMPORT                        R8 K8 [Enum.AutomaticSize.XY]
      104 SETTABLEKS                       R8 R7 K2 ["AutomaticSize"]
      106 DUPTABLE                         R8 K42 [{"Padding"}]
      107 GETUPVAL                         R9 0
      108 GETTABLEKS                       R9 R9 K0 ["createElement"]
      110 GETUPVAL                         R10 1
      111 DUPTABLE                         R11 K15 [{["Padding"] = 3}]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K9 ["Padding"]
      115 CALL                             R5 3 1
      116 SETTABLEKS                       R5 R4 K12 ["Text"]
      118 CALL                             R1 3 -1
      119 RETURN                           R1 -1

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
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K14 ["createElement"]
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
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K14 ["createElement"]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K23 ["Portal"]
       70 DUPTABLE                         R9 K25 [{"target"}]
       71 GETTABLEKS                       R10 R1 K1 ["DraggerContext"]
       73 NAMECALL                         R10 R10 K26 ["getGuiParent"]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K24 ["target"]
       78 DUPTABLE                         R10 K28 [{"SummonHandlesNoteGui"}]
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K14 ["createElement"]
       82 LOADK                            R12 K29 ["ScreenGui"]
       83 NEWTABLE                         R13 0 0
       85 DUPTABLE                         R14 K31 [{"Frame"}]
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K14 ["createElement"]
       89 LOADK                            R16 K30 ["Frame"]
       90 DUPTABLE                         R17 K38 [{"AnchorPoint", "Position", "Size", "AutomaticSize", "BackgroundColor3", "BorderColor3"}]
       91 GETIMPORT                        R18 K41 [Vector2.new]
       93 LOADN                            R19 1
       94 LOADN                            R20 1
       95 CALL                             R18 2 1
       96 SETTABLEKS                       R18 R17 K32 ["AnchorPoint"]
       98 GETIMPORT                        R18 K43 [UDim2.new]
      100 LOADN                            R19 1
      101 LOADN                            R20 -10
      102 LOADN                            R21 1
      103 LOADN                            R22 -10
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
      123 GETUPVAL                         R19 0
      124 GETTABLEKS                       R19 R19 K14 ["createElement"]
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
      146 GETUPVAL                         R19 0
      147 GETTABLEKS                       R19 R19 K14 ["createElement"]
      149 LOADK                            R20 K64 ["UICorner"]
      150 DUPTABLE                         R21 K66 [{"CornerRadius"}]
      151 GETIMPORT                        R22 K63 [UDim.new]
      153 LOADN                            R23 0
      154 LOADN                            R24 4
      155 CALL                             R22 2 1
      156 SETTABLEKS                       R22 R21 K65 ["CornerRadius"]
      158 CALL                             R19 2 1
      159 SETTABLEKS                       R19 R18 K49 ["Corner"]
      161 GETUPVAL                         R19 0
      162 GETTABLEKS                       R19 R19 K14 ["createElement"]
      164 LOADK                            R20 K67 ["UIStroke"]
      165 DUPTABLE                         R21 K69 [{"Color"}]
      166 SETTABLEKS                       R3 R21 K68 ["Color"]
      168 CALL                             R19 2 1
      169 SETTABLEKS                       R19 R18 K50 ["Stroke"]
      171 GETUPVAL                         R19 0
      172 GETTABLEKS                       R19 R19 K70 ["createFragment"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R4 R4 K7 ["SimplePadding"]
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
