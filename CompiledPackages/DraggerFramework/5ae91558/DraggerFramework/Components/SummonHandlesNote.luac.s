PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["DraggerContext"]
        4 GETTABLEKS                       R1 R2 K2 ["LocaleChangedSignal"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K3 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["localeChangedConnection"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["UIPadding"]
        4 DUPTABLE                         R3 K6 [{"PaddingBottom", "PaddingRight", "PaddingLeft", "PaddingTop"}]
        5 GETIMPORT                        R4 K9 [UDim.new]
        7 LOADN                            R5 0
        8 GETTABLEKS                       R6 R0 K10 ["Padding"]
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K2 ["PaddingBottom"]
       13 GETIMPORT                        R4 K9 [UDim.new]
       15 LOADN                            R5 0
       16 GETTABLEKS                       R6 R0 K10 ["Padding"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K3 ["PaddingRight"]
       21 GETIMPORT                        R4 K9 [UDim.new]
       23 LOADN                            R5 0
       24 GETTABLEKS                       R6 R0 K10 ["Padding"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K4 ["PaddingLeft"]
       29 GETIMPORT                        R4 K9 [UDim.new]
       31 LOADN                            R5 0
       32 GETTABLEKS                       R6 R0 K10 ["Padding"]
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K5 ["PaddingTop"]
       37 CALL                             R1 2 -1
       38 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["InView"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K2 ["DraggerContext"]
        8 NAMECALL                         R2 R2 K3 ["getViewportSize"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R1 K2 ["DraggerContext"]
       13 GETIMPORT                        R5 K7 [Enum.StudioStyleGuideColor.Tooltip]
       15 NAMECALL                         R3 R3 K8 ["getThemeColor"]
       17 CALL                             R3 2 1
       18 GETTABLEKS                       R4 R1 K2 ["DraggerContext"]
       20 GETIMPORT                        R6 K10 [Enum.StudioStyleGuideColor.Border]
       22 NAMECALL                         R4 R4 K8 ["getThemeColor"]
       24 CALL                             R4 2 1
       25 GETTABLEKS                       R5 R1 K2 ["DraggerContext"]
       27 GETIMPORT                        R7 K12 [Enum.StudioStyleGuideColor.MainText]
       29 NAMECALL                         R5 R5 K8 ["getThemeColor"]
       31 CALL                             R5 2 1
       32 GETTABLEKS                       R6 R1 K2 ["DraggerContext"]
       34 GETIMPORT                        R8 K14 [Enum.StudioStyleGuideColor.DimmedText]
       36 NAMECALL                         R6 R6 K8 ["getThemeColor"]
       38 CALL                             R6 2 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K15 ["createElement"]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R8 R9 K16 ["Portal"]
       45 DUPTABLE                         R9 K18 [{"target"}]
       46 GETTABLEKS                       R10 R1 K2 ["DraggerContext"]
       48 NAMECALL                         R10 R10 K19 ["getGuiParent"]
       50 CALL                             R10 1 1
       51 SETTABLEKS                       R10 R9 K17 ["target"]
       53 DUPTABLE                         R10 K21 [{"SummonHandlesNoteGui"}]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K15 ["createElement"]
       57 LOADK                            R12 K22 ["ScreenGui"]
       58 NEWTABLE                         R13 0 0
       60 DUPTABLE                         R14 K24 [{"Frame"}]
       61 GETUPVAL                         R16 0
       62 GETTABLEKS                       R15 R16 K15 ["createElement"]
       64 LOADK                            R16 K23 ["Frame"]
       65 DUPTABLE                         R17 K30 [{"AnchorPoint", "AutomaticSize", "BackgroundColor3", "BorderColor3", "Position"}]
       66 GETIMPORT                        R18 K33 [Vector2.new]
       68 LOADK                            R19 K34 [0.5]
       69 LOADN                            R20 0
       70 CALL                             R18 2 1
       71 SETTABLEKS                       R18 R17 K25 ["AnchorPoint"]
       73 GETIMPORT                        R18 K36 [Enum.AutomaticSize.XY]
       75 SETTABLEKS                       R18 R17 K26 ["AutomaticSize"]
       77 SETTABLEKS                       R3 R17 K27 ["BackgroundColor3"]
       79 SETTABLEKS                       R4 R17 K28 ["BorderColor3"]
       81 GETIMPORT                        R18 K38 [UDim2.new]
       83 LOADN                            R19 0
       84 GETTABLEKS                       R21 R2 K40 ["X"]
       86 DIVK                             R20 R21 K39 [2]
       87 LOADN                            R21 0
       88 LOADN                            R22 2
       89 CALL                             R18 4 1
       90 SETTABLEKS                       R18 R17 K29 ["Position"]
       92 DUPTABLE                         R18 K45 [{"Padding", "Layout", "Tab", "Text"}]
       93 GETUPVAL                         R20 0
       94 GETTABLEKS                       R19 R20 K15 ["createElement"]
       96 GETGLOBAL                        R20 K46 ["SimplePadding"]
       98 DUPTABLE                         R21 K47 [{"Padding"}]
       99 LOADN                            R22 3
      100 SETTABLEKS                       R22 R21 K41 ["Padding"]
      102 CALL                             R19 2 1
      103 SETTABLEKS                       R19 R18 K41 ["Padding"]
      105 GETUPVAL                         R20 0
      106 GETTABLEKS                       R19 R20 K15 ["createElement"]
      108 LOADK                            R20 K48 ["UIListLayout"]
      109 DUPTABLE                         R21 K51 [{"FillDirection", "SortOrder", "Padding"}]
      110 GETIMPORT                        R22 K53 [Enum.FillDirection.Horizontal]
      112 SETTABLEKS                       R22 R21 K49 ["FillDirection"]
      114 GETIMPORT                        R22 K55 [Enum.SortOrder.LayoutOrder]
      116 SETTABLEKS                       R22 R21 K50 ["SortOrder"]
      118 GETIMPORT                        R22 K57 [UDim.new]
      120 LOADN                            R23 0
      121 LOADN                            R24 3
      122 CALL                             R22 2 1
      123 SETTABLEKS                       R22 R21 K41 ["Padding"]
      125 CALL                             R19 2 1
      126 SETTABLEKS                       R19 R18 K42 ["Layout"]
      128 GETUPVAL                         R20 0
      129 GETTABLEKS                       R19 R20 K15 ["createElement"]
      131 LOADK                            R20 K58 ["TextLabel"]
      132 DUPTABLE                         R21 K60 [{"Text", "TextColor3", "BackgroundColor3", "AutomaticSize", "LayoutOrder"}]
      133 GETTABLEKS                       R22 R1 K2 ["DraggerContext"]
      135 LOADK                            R24 K61 ["SummonPivot"]
      136 LOADK                            R25 K62 ["TabText"]
      137 NAMECALL                         R22 R22 K63 ["getText"]
      139 CALL                             R22 3 1
      140 SETTABLEKS                       R22 R21 K44 ["Text"]
      142 SETTABLEKS                       R5 R21 K59 ["TextColor3"]
      144 SETTABLEKS                       R6 R21 K27 ["BackgroundColor3"]
      146 GETIMPORT                        R22 K36 [Enum.AutomaticSize.XY]
      148 SETTABLEKS                       R22 R21 K26 ["AutomaticSize"]
      150 LOADN                            R22 1
      151 SETTABLEKS                       R22 R21 K54 ["LayoutOrder"]
      153 DUPTABLE                         R22 K65 [{"Padding", "Corner"}]
      154 GETUPVAL                         R24 0
      155 GETTABLEKS                       R23 R24 K15 ["createElement"]
      157 GETGLOBAL                        R24 K46 ["SimplePadding"]
      159 DUPTABLE                         R25 K47 [{"Padding"}]
      160 LOADN                            R26 2
      161 SETTABLEKS                       R26 R25 K41 ["Padding"]
      163 CALL                             R23 2 1
      164 SETTABLEKS                       R23 R22 K41 ["Padding"]
      166 GETUPVAL                         R24 0
      167 GETTABLEKS                       R23 R24 K15 ["createElement"]
      169 LOADK                            R24 K66 ["UICorner"]
      170 DUPTABLE                         R25 K68 [{"CornerRadius"}]
      171 GETIMPORT                        R26 K57 [UDim.new]
      173 LOADN                            R27 0
      174 LOADN                            R28 4
      175 CALL                             R26 2 1
      176 SETTABLEKS                       R26 R25 K67 ["CornerRadius"]
      178 CALL                             R23 2 1
      179 SETTABLEKS                       R23 R22 K64 ["Corner"]
      181 CALL                             R19 3 1
      182 SETTABLEKS                       R19 R18 K43 ["Tab"]
      184 GETUPVAL                         R20 0
      185 GETTABLEKS                       R19 R20 K15 ["createElement"]
      187 LOADK                            R20 K58 ["TextLabel"]
      188 DUPTABLE                         R21 K70 [{"Text", "TextColor3", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
      189 GETTABLEKS                       R22 R1 K2 ["DraggerContext"]
      191 LOADK                            R24 K61 ["SummonPivot"]
      192 LOADK                            R25 K71 ["SummonText"]
      193 NAMECALL                         R22 R22 K63 ["getText"]
      195 CALL                             R22 3 1
      196 SETTABLEKS                       R22 R21 K44 ["Text"]
      198 SETTABLEKS                       R5 R21 K59 ["TextColor3"]
      200 GETIMPORT                        R22 K36 [Enum.AutomaticSize.XY]
      202 SETTABLEKS                       R22 R21 K26 ["AutomaticSize"]
      204 LOADN                            R22 1
      205 SETTABLEKS                       R22 R21 K69 ["BackgroundTransparency"]
      207 LOADN                            R22 2
      208 SETTABLEKS                       R22 R21 K54 ["LayoutOrder"]
      210 DUPTABLE                         R22 K47 [{"Padding"}]
      211 GETUPVAL                         R24 0
      212 GETTABLEKS                       R23 R24 K15 ["createElement"]
      214 GETGLOBAL                        R24 K46 ["SimplePadding"]
      216 DUPTABLE                         R25 K47 [{"Padding"}]
      217 LOADN                            R26 2
      218 SETTABLEKS                       R26 R25 K41 ["Padding"]
      220 CALL                             R23 2 1
      221 SETTABLEKS                       R23 R22 K41 ["Padding"]
      223 CALL                             R19 3 1
      224 SETTABLEKS                       R19 R18 K44 ["Text"]
      226 CALL                             R15 3 1
      227 SETTABLEKS                       R15 R14 K23 ["Frame"]
      229 CALL                             R11 3 1
      230 SETTABLEKS                       R11 R10 K20 ["SummonHandlesNoteGui"]
      232 CALL                             R7 3 -1
      233 RETURN                           R7 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R3 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R3 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R5 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R5 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R3 K11 ["PureComponent"]
       26 LOADK                            R6 K12 ["SummonHandlesNote"]
       27 NAMECALL                         R4 R4 K13 ["extend"]
       29 CALL                             R4 2 1
       30 DUPCLOSURE                       R5 K14 [PROTO_1]
       31 SETTABLEKS                       R5 R4 K15 ["didMount"]
       33 DUPCLOSURE                       R5 K16 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 SETGLOBAL                        R5 K17 ["SimplePadding"]
       37 DUPCLOSURE                       R5 K18 [PROTO_3]
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R5 R4 K19 ["render"]
       41 DUPCLOSURE                       R5 K20 [PROTO_4]
       42 SETTABLEKS                       R5 R4 K21 ["willUnmount"]
       44 RETURN                           R4 1
