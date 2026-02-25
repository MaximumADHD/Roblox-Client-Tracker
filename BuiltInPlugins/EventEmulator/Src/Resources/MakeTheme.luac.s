PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["Style"]
       25 GETTABLEKS                       R4 R3 K9 ["StyleKey"]
       27 GETTABLEKS                       R6 R3 K10 ["Themes"]
       29 GETTABLEKS                       R5 R6 K11 ["BaseTheme"]
       31 GETTABLEKS                       R7 R3 K10 ["Themes"]
       33 GETTABLEKS                       R6 R7 K12 ["StudioTheme"]
       35 GETTABLEKS                       R7 R3 K13 ["ComponentSymbols"]
       37 DUPTABLE                         R8 K25 [{"SmallPadding", "HistoryButtonMinor", "ShortHeight", "HorizontalPadding", "NavHeight", "ConfirmationButtonWidth", "HistoryButtonMajor", "InputPaneLength", "HistoryPaneLength", "DropdownWidth", "TextBoxWidth"}]
       38 LOADN                            R9 10
       39 SETTABLEKS                       R9 R8 K14 ["SmallPadding"]
       41 LOADN                            R9 25
       42 SETTABLEKS                       R9 R8 K15 ["HistoryButtonMinor"]
       44 LOADN                            R9 30
       45 SETTABLEKS                       R9 R8 K16 ["ShortHeight"]
       47 LOADN                            R9 50
       48 SETTABLEKS                       R9 R8 K17 ["HorizontalPadding"]
       50 LOADN                            R9 50
       51 SETTABLEKS                       R9 R8 K18 ["NavHeight"]
       53 LOADN                            R9 50
       54 SETTABLEKS                       R9 R8 K19 ["ConfirmationButtonWidth"]
       56 LOADN                            R9 100
       57 SETTABLEKS                       R9 R8 K20 ["HistoryButtonMajor"]
       59 LOADN                            R9 44
       60 SETTABLEKS                       R9 R8 K21 ["InputPaneLength"]
       62 LOADN                            R9 44
       63 SETTABLEKS                       R9 R8 K22 ["HistoryPaneLength"]
       65 LOADN                            R9 180
       66 SETTABLEKS                       R9 R8 K23 ["DropdownWidth"]
       68 LOADN                            R9 180
       69 SETTABLEKS                       R9 R8 K24 ["TextBoxWidth"]
       71 NEWTABLE                         R9 8 0
       73 GETTABLEKS                       R10 R4 K26 ["BlueText"]
       75 GETIMPORT                        R11 K29 [Color3.fromRGB]
       77 LOADN                            R12 0
       78 LOADN                            R13 162
       79 LOADN                            R14 255
       80 CALL                             R11 3 1
       81 SETTABLE                         R11 R9 R10
       82 DUPTABLE                         R10 K33 [{"BrightText", "DimmedText", "Button", "BlueText"}]
       83 DUPTABLE                         R11 K36 [{"Size", "Color"}]
       84 LOADN                            R12 20
       85 SETTABLEKS                       R12 R11 K34 ["Size"]
       87 GETTABLEKS                       R12 R4 K30 ["BrightText"]
       89 SETTABLEKS                       R12 R11 K35 ["Color"]
       91 SETTABLEKS                       R11 R10 K30 ["BrightText"]
       93 DUPTABLE                         R11 K36 [{"Size", "Color"}]
       94 LOADN                            R12 16
       95 SETTABLEKS                       R12 R11 K34 ["Size"]
       97 GETTABLEKS                       R12 R4 K31 ["DimmedText"]
       99 SETTABLEKS                       R12 R11 K35 ["Color"]
      101 SETTABLEKS                       R11 R10 K31 ["DimmedText"]
      103 DUPTABLE                         R11 K38 [{"Size", "Color", "PrimaryColor"}]
      104 LOADN                            R12 18
      105 SETTABLEKS                       R12 R11 K34 ["Size"]
      107 GETTABLEKS                       R12 R4 K39 ["MainText"]
      109 SETTABLEKS                       R12 R11 K35 ["Color"]
      111 GETTABLEKS                       R12 R4 K40 ["DialogMainButtonText"]
      113 SETTABLEKS                       R12 R11 K37 ["PrimaryColor"]
      115 SETTABLEKS                       R11 R10 K32 ["Button"]
      117 DUPTABLE                         R11 K36 [{"Size", "Color"}]
      118 LOADN                            R12 18
      119 SETTABLEKS                       R12 R11 K34 ["Size"]
      121 GETTABLEKS                       R12 R4 K26 ["BlueText"]
      123 SETTABLEKS                       R12 R11 K35 ["Color"]
      125 SETTABLEKS                       R11 R10 K26 ["BlueText"]
      127 SETTABLEKS                       R10 R9 K41 ["Text"]
      129 DUPTABLE                         R10 K47 [{"Thickness", "Transparency", "Color", "TopImage", "MidImage", "BottomImage"}]
      130 LOADN                            R11 5
      131 SETTABLEKS                       R11 R10 K42 ["Thickness"]
      133 LOADK                            R11 K48 [0.5]
      134 SETTABLEKS                       R11 R10 K43 ["Transparency"]
      136 GETTABLEKS                       R11 R4 K49 ["ScrollBar"]
      138 SETTABLEKS                       R11 R10 K35 ["Color"]
      140 LOADK                            R11 K50 ["rbxasset://textures/StudioToolbox/ScrollBarTop.png"]
      141 SETTABLEKS                       R11 R10 K44 ["TopImage"]
      143 LOADK                            R11 K51 ["rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"]
      144 SETTABLEKS                       R11 R10 K45 ["MidImage"]
      146 LOADK                            R11 K52 ["rbxasset://textures/StudioToolbox/ScrollBarBottom.png"]
      147 SETTABLEKS                       R11 R10 K46 ["BottomImage"]
      149 SETTABLEKS                       R10 R9 K53 ["Scrollbar"]
      151 SETTABLEKS                       R8 R9 K54 ["Sizes"]
      153 DUPTABLE                         R10 K58 [{"Vertical", "Horizontal", "HistoryItem"}]
      154 DUPTABLE                         R11 K63 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
      155 GETIMPORT                        R12 K66 [Enum.SortOrder.LayoutOrder]
      157 SETTABLEKS                       R12 R11 K59 ["SortOrder"]
      159 GETIMPORT                        R12 K67 [Enum.FillDirection.Vertical]
      161 SETTABLEKS                       R12 R11 K60 ["FillDirection"]
      163 GETIMPORT                        R12 K69 [Enum.HorizontalAlignment.Center]
      165 SETTABLEKS                       R12 R11 K61 ["HorizontalAlignment"]
      167 GETIMPORT                        R12 K72 [UDim.new]
      169 LOADN                            R13 0
      170 GETTABLEKS                       R14 R8 K14 ["SmallPadding"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K62 ["Padding"]
      175 SETTABLEKS                       R11 R10 K55 ["Vertical"]
      177 DUPTABLE                         R11 K74 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
      178 GETIMPORT                        R12 K66 [Enum.SortOrder.LayoutOrder]
      180 SETTABLEKS                       R12 R11 K59 ["SortOrder"]
      182 GETIMPORT                        R12 K75 [Enum.FillDirection.Horizontal]
      184 SETTABLEKS                       R12 R11 K60 ["FillDirection"]
      186 GETIMPORT                        R12 K76 [Enum.VerticalAlignment.Center]
      188 SETTABLEKS                       R12 R11 K73 ["VerticalAlignment"]
      190 GETIMPORT                        R12 K69 [Enum.HorizontalAlignment.Center]
      192 SETTABLEKS                       R12 R11 K61 ["HorizontalAlignment"]
      194 GETIMPORT                        R12 K72 [UDim.new]
      196 LOADN                            R13 0
      197 GETTABLEKS                       R14 R8 K17 ["HorizontalPadding"]
      199 CALL                             R12 2 1
      200 SETTABLEKS                       R12 R11 K62 ["Padding"]
      202 SETTABLEKS                       R11 R10 K56 ["Horizontal"]
      204 DUPTABLE                         R11 K74 [{"SortOrder", "FillDirection", "VerticalAlignment", "HorizontalAlignment", "Padding"}]
      205 GETIMPORT                        R12 K66 [Enum.SortOrder.LayoutOrder]
      207 SETTABLEKS                       R12 R11 K59 ["SortOrder"]
      209 GETIMPORT                        R12 K75 [Enum.FillDirection.Horizontal]
      211 SETTABLEKS                       R12 R11 K60 ["FillDirection"]
      213 GETIMPORT                        R12 K76 [Enum.VerticalAlignment.Center]
      215 SETTABLEKS                       R12 R11 K73 ["VerticalAlignment"]
      217 GETIMPORT                        R12 K69 [Enum.HorizontalAlignment.Center]
      219 SETTABLEKS                       R12 R11 K61 ["HorizontalAlignment"]
      221 GETIMPORT                        R12 K72 [UDim.new]
      223 LOADN                            R13 0
      224 GETTABLEKS                       R14 R8 K14 ["SmallPadding"]
      226 CALL                             R12 2 1
      227 SETTABLEKS                       R12 R11 K62 ["Padding"]
      229 SETTABLEKS                       R11 R10 K57 ["HistoryItem"]
      231 SETTABLEKS                       R10 R9 K77 ["Layout"]
      233 GETTABLEKS                       R10 R7 K78 ["Box"]
      235 GETTABLEKS                       R12 R2 K79 ["Dictionary"]
      237 GETTABLEKS                       R11 R12 K80 ["join"]
      239 GETTABLEKS                       R13 R7 K78 ["Box"]
      241 GETTABLE                         R12 R5 R13
      242 NEWTABLE                         R13 1 0
      244 DUPTABLE                         R14 K81 [{"Color"}]
      245 GETTABLEKS                       R15 R4 K82 ["CategoryItem"]
      247 SETTABLEKS                       R15 R14 K35 ["Color"]
      249 SETTABLEKS                       R14 R13 K83 ["&__Item"]
      251 CALL                             R11 2 1
      252 SETTABLE                         R11 R9 R10
      253 GETTABLEKS                       R10 R7 K84 ["RoundBox"]
      255 GETTABLEKS                       R12 R2 K79 ["Dictionary"]
      257 GETTABLEKS                       R11 R12 K80 ["join"]
      259 GETTABLEKS                       R13 R7 K84 ["RoundBox"]
      261 GETTABLE                         R12 R5 R13
      262 NEWTABLE                         R13 2 0
      264 DUPTABLE                         R14 K86 [{"Color", "BorderTransparency"}]
      265 GETTABLEKS                       R15 R4 K82 ["CategoryItem"]
      267 SETTABLEKS                       R15 R14 K35 ["Color"]
      269 LOADN                            R15 1
      270 SETTABLEKS                       R15 R14 K85 ["BorderTransparency"]
      272 SETTABLEKS                       R14 R13 K83 ["&__Item"]
      274 DUPTABLE                         R14 K81 [{"Color"}]
      275 GETTABLEKS                       R15 R4 K87 ["Mid"]
      277 SETTABLEKS                       R15 R14 K35 ["Color"]
      279 SETTABLEKS                       R14 R13 K88 ["&__Example"]
      281 CALL                             R11 2 1
      282 SETTABLE                         R11 R9 R10
      283 GETTABLEKS                       R10 R7 K32 ["Button"]
      285 GETTABLEKS                       R12 R2 K79 ["Dictionary"]
      287 GETTABLEKS                       R11 R12 K80 ["join"]
      289 GETTABLEKS                       R13 R7 K32 ["Button"]
      291 GETTABLE                         R12 R5 R13
      292 NEWTABLE                         R13 1 0
      294 DUPTABLE                         R14 K90 [{"Color", "BorderSize"}]
      295 GETTABLEKS                       R15 R4 K32 ["Button"]
      297 SETTABLEKS                       R15 R14 K35 ["Color"]
      299 LOADN                            R15 1
      300 SETTABLEKS                       R15 R14 K89 ["BorderSize"]
      302 SETTABLEKS                       R14 R13 K83 ["&__Item"]
      304 CALL                             R11 2 1
      305 SETTABLE                         R11 R9 R10
      306 DUPCLOSURE                       R10 K91 [PROTO_0]
      307 CAPTURE                          VAL R6
      308 CAPTURE                          VAL R9
      309 RETURN                           R10 1
