PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["descriptionRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"descriptionWidth"}]
        9 GETTABLEKS                       R4 R0 K4 ["AbsoluteSize"]
       11 GETTABLEKS                       R4 R4 K5 ["X"]
       13 SETTABLEKS                       R4 R3 K2 ["descriptionWidth"]
       15 NAMECALL                         R1 R1 K6 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"descriptionWidth"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["descriptionWidth"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["descriptionRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onResize"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["descriptionWidth"]
        8 GETTABLEKS                       R4 R1 K4 ["Description"]
       10 GETTABLEKS                       R5 R1 K5 ["Disabled"]
       12 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R7 R1 K7 ["Selected"]
       16 GETTABLEKS                       R8 R1 K8 ["Title"]
       18 GETTABLEKS                       R9 R1 K9 ["OnClick"]
       20 GETTABLEKS                       R10 R1 K10 ["ShowWarning"]
       22 GETTABLEKS                       R11 R1 K11 ["LinkProps"]
       24 GETUPVAL                         R12 0
       25 GETTABLEKS                       R12 R12 K12 ["new"]
       27 CALL                             R12 0 1
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R13 R13 K13 ["createElement"]
       31 GETUPVAL                         R14 2
       32 DUPTABLE                         R15 K15 [{"Title", "TitleWidth", "LayoutOrder"}]
       33 SETTABLEKS                       R8 R15 K8 ["Title"]
       35 GETTABLEKS                       R16 R2 K16 ["settingsPage"]
       37 GETTABLEKS                       R16 R16 K17 ["toggleButtonTitleWidth"]
       39 SETTABLEKS                       R16 R15 K14 ["TitleWidth"]
       41 SETTABLEKS                       R6 R15 K6 ["LayoutOrder"]
       43 DUPTABLE                         R16 K21 [{"ToggleButton", "Description", "LinkText", "DescriptionWidth"}]
       44 GETUPVAL                         R17 1
       45 GETTABLEKS                       R17 R17 K13 ["createElement"]
       47 GETUPVAL                         R18 3
       48 DUPTABLE                         R19 K23 [{"Disabled", "Selected", "LayoutOrder", "OnClick", "Size"}]
       49 SETTABLEKS                       R5 R19 K5 ["Disabled"]
       51 SETTABLEKS                       R7 R19 K7 ["Selected"]
       53 NAMECALL                         R20 R12 K24 ["getNextOrder"]
       55 CALL                             R20 1 1
       56 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
       58 SETTABLEKS                       R9 R19 K9 ["OnClick"]
       60 GETTABLEKS                       R20 R2 K16 ["settingsPage"]
       62 GETTABLEKS                       R20 R20 K25 ["toggleButtonSize"]
       64 SETTABLEKS                       R20 R19 K22 ["Size"]
       66 CALL                             R17 2 1
       67 SETTABLEKS                       R17 R16 K18 ["ToggleButton"]
       69 GETTABLEKS                       R17 R1 K4 ["Description"]
       71 JUMPIFNOT                        R17 ; [+62]
       72 GETUPVAL                         R17 1
       73 GETTABLEKS                       R17 R17 K13 ["createElement"]
       75 GETUPVAL                         R18 4
       76 GETUPVAL                         R19 5
       77 GETTABLEKS                       R19 R19 K26 ["Dictionary"]
       79 GETTABLEKS                       R19 R19 K27 ["join"]
       81 JUMPIFNOT                        R10 ; [+5]
       82 GETTABLEKS                       R20 R2 K28 ["fontStyle"]
       84 GETTABLEKS                       R20 R20 K29 ["SmallError"]
       86 JUMPIF                           R20 ; [+4]
       87 GETTABLEKS                       R20 R2 K28 ["fontStyle"]
       89 GETTABLEKS                       R20 R20 K30 ["Subtext"]
       91 DUPTABLE                         R21 K39 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "TextTransparency", "TextXAlignment", "TextYAlignment", "Text", "TextWrapped", "width"}]
       92 GETIMPORT                        R22 K42 [Enum.AutomaticSize.XY]
       94 SETTABLEKS                       R22 R21 K31 ["AutomaticSize"]
       96 LOADN                            R22 1
       97 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
       99 NAMECALL                         R22 R12 K24 ["getNextOrder"]
      101 CALL                             R22 1 1
      102 SETTABLEKS                       R22 R21 K6 ["LayoutOrder"]
      104 GETTABLEKS                       R23 R1 K5 ["Disabled"]
      106 JUMPIFNOT                        R23 ; [+2]
      107 LOADK                            R22 K43 [0.5]
      108 JUMP                             ; [+1]
      109 LOADN                            R22 0
      110 SETTABLEKS                       R22 R21 K33 ["TextTransparency"]
      112 GETIMPORT                        R22 K45 [Enum.TextXAlignment.Left]
      114 SETTABLEKS                       R22 R21 K34 ["TextXAlignment"]
      116 GETIMPORT                        R22 K47 [Enum.TextYAlignment.Top]
      118 SETTABLEKS                       R22 R21 K35 ["TextYAlignment"]
      120 SETTABLEKS                       R4 R21 K36 ["Text"]
      122 LOADB                            R22 1
      123 SETTABLEKS                       R22 R21 K37 ["TextWrapped"]
      125 GETIMPORT                        R22 K49 [UDim.new]
      127 LOADN                            R23 0
      128 MOVE                             R24 R3
      129 CALL                             R22 2 1
      130 SETTABLEKS                       R22 R21 K38 ["width"]
      132 CALL                             R19 2 -1
      133 CALL                             R17 -1 1
      134 SETTABLEKS                       R17 R16 K4 ["Description"]
      136 GETUPVAL                         R18 6
      137 CALL                             R18 0 1
      138 JUMPIFNOT                        R18 ; [+73]
      139 GETTABLEKS                       R18 R1 K50 ["LinkMap"]
      141 JUMPIFNOT                        R18 ; [+70]
      142 GETTABLEKS                       R18 R1 K19 ["LinkText"]
      144 JUMPIFNOT                        R18 ; [+67]
      145 GETUPVAL                         R17 1
      146 GETTABLEKS                       R17 R17 K13 ["createElement"]
      148 GETUPVAL                         R18 7
      149 GETUPVAL                         R19 5
      150 GETTABLEKS                       R19 R19 K26 ["Dictionary"]
      152 GETTABLEKS                       R19 R19 K27 ["join"]
      154 DUPTABLE                         R20 K53 [{"Size", "LayoutOrder", "Text", "LinkMap", "TextProps", "HorizontalAlignment"}]
      155 GETIMPORT                        R21 K55 [UDim2.new]
      157 LOADN                            R22 0
      158 MOVE                             R23 R3
      159 LOADN                            R24 0
      160 LOADN                            R25 0
      161 CALL                             R21 4 1
      162 SETTABLEKS                       R21 R20 K22 ["Size"]
      164 NAMECALL                         R21 R12 K24 ["getNextOrder"]
      166 CALL                             R21 1 1
      167 SETTABLEKS                       R21 R20 K6 ["LayoutOrder"]
      169 GETTABLEKS                       R21 R1 K19 ["LinkText"]
      171 SETTABLEKS                       R21 R20 K36 ["Text"]
      173 GETTABLEKS                       R21 R1 K50 ["LinkMap"]
      175 SETTABLEKS                       R21 R20 K50 ["LinkMap"]
      177 GETUPVAL                         R21 5
      178 GETTABLEKS                       R21 R21 K26 ["Dictionary"]
      180 GETTABLEKS                       R21 R21 K27 ["join"]
      182 GETTABLEKS                       R22 R2 K28 ["fontStyle"]
      184 GETTABLEKS                       R22 R22 K30 ["Subtext"]
      186 DUPTABLE                         R23 K56 [{"BackgroundTransparency", "TextXAlignment", "TextTransparency"}]
      187 LOADN                            R24 1
      188 SETTABLEKS                       R24 R23 K32 ["BackgroundTransparency"]
      190 GETIMPORT                        R24 K45 [Enum.TextXAlignment.Left]
      192 SETTABLEKS                       R24 R23 K34 ["TextXAlignment"]
      194 GETTABLEKS                       R25 R1 K5 ["Disabled"]
      196 JUMPIFNOT                        R25 ; [+2]
      197 LOADK                            R24 K43 [0.5]
      198 JUMP                             ; [+1]
      199 LOADN                            R24 0
      200 SETTABLEKS                       R24 R23 K33 ["TextTransparency"]
      202 CALL                             R21 2 1
      203 SETTABLEKS                       R21 R20 K51 ["TextProps"]
      205 GETIMPORT                        R21 K57 [Enum.HorizontalAlignment.Left]
      207 SETTABLEKS                       R21 R20 K52 ["HorizontalAlignment"]
      209 CALL                             R19 1 -1
      210 CALL                             R17 -1 1
      211 JUMP                             ; [+50]
      212 GETTABLEKS                       R17 R1 K11 ["LinkProps"]
      214 JUMPIFNOT                        R17 ; [+47]
      215 GETUPVAL                         R17 1
      216 GETTABLEKS                       R17 R17 K13 ["createElement"]
      218 GETUPVAL                         R18 8
      219 GETUPVAL                         R19 5
      220 GETTABLEKS                       R19 R19 K26 ["Dictionary"]
      222 GETTABLEKS                       R19 R19 K27 ["join"]
      224 MOVE                             R20 R11
      225 DUPTABLE                         R21 K60 [{"LinkPlaceholder", "MaxWidth", "LayoutOrder", "TextProps", "HorizontalAlignment"}]
      226 LOADK                            R22 K61 ["[link]"]
      227 SETTABLEKS                       R22 R21 K58 ["LinkPlaceholder"]
      229 SETTABLEKS                       R3 R21 K59 ["MaxWidth"]
      231 NAMECALL                         R22 R12 K24 ["getNextOrder"]
      233 CALL                             R22 1 1
      234 SETTABLEKS                       R22 R21 K6 ["LayoutOrder"]
      236 GETUPVAL                         R22 5
      237 GETTABLEKS                       R22 R22 K26 ["Dictionary"]
      239 GETTABLEKS                       R22 R22 K27 ["join"]
      241 GETTABLEKS                       R23 R2 K28 ["fontStyle"]
      243 GETTABLEKS                       R23 R23 K30 ["Subtext"]
      245 DUPTABLE                         R24 K62 [{"BackgroundTransparency", "TextXAlignment"}]
      246 LOADN                            R25 1
      247 SETTABLEKS                       R25 R24 K32 ["BackgroundTransparency"]
      249 GETIMPORT                        R25 K45 [Enum.TextXAlignment.Left]
      251 SETTABLEKS                       R25 R24 K34 ["TextXAlignment"]
      253 CALL                             R22 2 1
      254 SETTABLEKS                       R22 R21 K51 ["TextProps"]
      256 GETIMPORT                        R22 K57 [Enum.HorizontalAlignment.Left]
      258 SETTABLEKS                       R22 R21 K52 ["HorizontalAlignment"]
      260 CALL                             R19 2 -1
      261 CALL                             R17 -1 1
      262 SETTABLEKS                       R17 R16 K19 ["LinkText"]
      264 GETUPVAL                         R17 1
      265 GETTABLEKS                       R17 R17 K13 ["createElement"]
      267 LOADK                            R18 K63 ["Frame"]
      268 NEWTABLE                         R19 8 0
      270 LOADN                            R20 1
      271 SETTABLEKS                       R20 R19 K32 ["BackgroundTransparency"]
      273 NAMECALL                         R20 R12 K24 ["getNextOrder"]
      275 CALL                             R20 1 1
      276 SETTABLEKS                       R20 R19 K6 ["LayoutOrder"]
      278 GETIMPORT                        R20 K55 [UDim2.new]
      280 LOADN                            R21 1
      281 LOADN                            R22 0
      282 LOADN                            R23 0
      283 LOADN                            R24 0
      284 CALL                             R20 4 1
      285 SETTABLEKS                       R20 R19 K22 ["Size"]
      287 GETUPVAL                         R20 1
      288 GETTABLEKS                       R20 R20 K64 ["Ref"]
      290 GETTABLEKS                       R21 R0 K65 ["descriptionRef"]
      292 SETTABLE                         R21 R19 R20
      293 GETUPVAL                         R20 1
      294 GETTABLEKS                       R20 R20 K66 ["Change"]
      296 GETTABLEKS                       R20 R20 K67 ["AbsoluteSize"]
      298 GETTABLEKS                       R21 R0 K68 ["onResize"]
      300 SETTABLE                         R21 R19 R20
      301 CALL                             R17 2 1
      302 SETTABLEKS                       R17 R16 K20 ["DescriptionWidth"]
      304 CALL                             R13 3 -1
      305 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["Util"]
       36 GETTABLEKS                       R7 R3 K12 ["UI"]
       38 GETTABLEKS                       R8 R7 K13 ["TitledFrame"]
       40 GETTABLEKS                       R9 R7 K14 ["ToggleButton"]
       42 GETTABLEKS                       R10 R7 K15 ["TextWithInlineLink"]
       44 GETTABLEKS                       R11 R7 K16 ["TextWithLinks"]
       46 GETTABLEKS                       R12 R7 K17 ["TextLabel"]
       48 GETTABLEKS                       R13 R6 K18 ["LayoutOrderIterator"]
       50 GETTABLEKS                       R14 R1 K19 ["PureComponent"]
       52 LOADK                            R16 K20 ["ToggleButtonWithTitle"]
       53 NAMECALL                         R14 R14 K21 ["extend"]
       55 CALL                             R14 2 1
       56 GETIMPORT                        R15 K4 [require]
       58 GETTABLEKS                       R16 R0 K22 ["Src"]
       60 GETTABLEKS                       R16 R16 K23 ["Flags"]
       62 GETTABLEKS                       R16 R16 K24 ["getFFlagGameSettingsEnableChatGroupApiSetting"]
       64 CALL                             R15 1 1
       65 DUPCLOSURE                       R16 K25 [PROTO_1]
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R16 R14 K26 ["init"]
       69 DUPCLOSURE                       R16 K27 [PROTO_2]
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 SETTABLEKS                       R16 R14 K28 ["render"]
       81 MOVE                             R16 R5
       82 DUPTABLE                         R17 K30 [{"Stylizer"}]
       83 GETTABLEKS                       R18 R4 K29 ["Stylizer"]
       85 SETTABLEKS                       R18 R17 K29 ["Stylizer"]
       87 CALL                             R16 1 1
       88 MOVE                             R17 R14
       89 CALL                             R16 1 1
       90 MOVE                             R14 R16
       91 RETURN                           R14 1
