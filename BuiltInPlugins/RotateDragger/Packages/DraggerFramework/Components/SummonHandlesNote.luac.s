PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["DraggerContext"]
        4 GETTABLEKS                       R1 R1 K2 ["LocaleChangedSignal"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K3 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["localeChangedConnection"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
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
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K15 ["createElement"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K16 ["Portal"]
       45 DUPTABLE                         R9 K18 [{"target"}]
       46 GETTABLEKS                       R10 R1 K2 ["DraggerContext"]
       48 NAMECALL                         R10 R10 K19 ["getGuiParent"]
       50 CALL                             R10 1 1
       51 SETTABLEKS                       R10 R9 K17 ["target"]
       53 DUPTABLE                         R10 K21 [{"SummonHandlesNoteGui"}]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K15 ["createElement"]
       57 LOADK                            R12 K22 ["ScreenGui"]
       58 NEWTABLE                         R13 0 0
       60 DUPTABLE                         R14 K24 [{"Frame"}]
       61 GETUPVAL                         R15 0
       62 GETTABLEKS                       R15 R15 K15 ["createElement"]
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
       93 GETUPVAL                         R19 0
       94 GETTABLEKS                       R19 R19 K15 ["createElement"]
       96 GETGLOBAL                        R20 K46 ["SimplePadding"]
       98 DUPTABLE                         R21 K48 [{["Padding"] = 3}]
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K41 ["Padding"]
      102 GETUPVAL                         R19 0
      103 GETTABLEKS                       R19 R19 K15 ["createElement"]
      105 LOADK                            R20 K49 ["UIListLayout"]
      106 DUPTABLE                         R21 K52 [{"FillDirection", "SortOrder", "Padding"}]
      107 GETIMPORT                        R22 K54 [Enum.FillDirection.Horizontal]
      109 SETTABLEKS                       R22 R21 K50 ["FillDirection"]
      111 GETIMPORT                        R22 K56 [Enum.SortOrder.LayoutOrder]
      113 SETTABLEKS                       R22 R21 K51 ["SortOrder"]
      115 GETIMPORT                        R22 K58 [UDim.new]
      117 LOADN                            R23 0
      118 LOADN                            R24 3
      119 CALL                             R22 2 1
      120 SETTABLEKS                       R22 R21 K41 ["Padding"]
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K42 ["Layout"]
      125 GETUPVAL                         R19 0
      126 GETTABLEKS                       R19 R19 K15 ["createElement"]
      128 LOADK                            R20 K59 ["TextLabel"]
      129 DUPTABLE                         R21 K62 [{["Text"], ["TextColor3"], ["BackgroundColor3"], ["AutomaticSize"], ["LayoutOrder"] = 1}]
      130 GETTABLEKS                       R22 R1 K2 ["DraggerContext"]
      132 LOADK                            R24 K63 ["SummonPivot"]
      133 LOADK                            R25 K64 ["TabText"]
      134 NAMECALL                         R22 R22 K65 ["getText"]
      136 CALL                             R22 3 1
      137 SETTABLEKS                       R22 R21 K44 ["Text"]
      139 SETTABLEKS                       R5 R21 K60 ["TextColor3"]
      141 SETTABLEKS                       R6 R21 K27 ["BackgroundColor3"]
      143 GETIMPORT                        R22 K36 [Enum.AutomaticSize.XY]
      145 SETTABLEKS                       R22 R21 K26 ["AutomaticSize"]
      147 DUPTABLE                         R22 K67 [{"Padding", "Corner"}]
      148 GETUPVAL                         R23 0
      149 GETTABLEKS                       R23 R23 K15 ["createElement"]
      151 GETGLOBAL                        R24 K46 ["SimplePadding"]
      153 DUPTABLE                         R25 K68 [{["Padding"] = 2}]
      154 CALL                             R23 2 1
      155 SETTABLEKS                       R23 R22 K41 ["Padding"]
      157 GETUPVAL                         R23 0
      158 GETTABLEKS                       R23 R23 K15 ["createElement"]
      160 LOADK                            R24 K69 ["UICorner"]
      161 DUPTABLE                         R25 K71 [{"CornerRadius"}]
      162 GETIMPORT                        R26 K58 [UDim.new]
      164 LOADN                            R27 0
      165 LOADN                            R28 4
      166 CALL                             R26 2 1
      167 SETTABLEKS                       R26 R25 K70 ["CornerRadius"]
      169 CALL                             R23 2 1
      170 SETTABLEKS                       R23 R22 K66 ["Corner"]
      172 CALL                             R19 3 1
      173 SETTABLEKS                       R19 R18 K43 ["Tab"]
      175 GETUPVAL                         R19 0
      176 GETTABLEKS                       R19 R19 K15 ["createElement"]
      178 LOADK                            R20 K59 ["TextLabel"]
      179 DUPTABLE                         R21 K73 [{["Text"], ["TextColor3"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      180 GETTABLEKS                       R22 R1 K2 ["DraggerContext"]
      182 LOADK                            R24 K63 ["SummonPivot"]
      183 LOADK                            R25 K74 ["SummonText"]
      184 NAMECALL                         R22 R22 K65 ["getText"]
      186 CALL                             R22 3 1
      187 SETTABLEKS                       R22 R21 K44 ["Text"]
      189 SETTABLEKS                       R5 R21 K60 ["TextColor3"]
      191 GETIMPORT                        R22 K36 [Enum.AutomaticSize.XY]
      193 SETTABLEKS                       R22 R21 K26 ["AutomaticSize"]
      195 DUPTABLE                         R22 K75 [{"Padding"}]
      196 GETUPVAL                         R23 0
      197 GETTABLEKS                       R23 R23 K15 ["createElement"]
      199 GETGLOBAL                        R24 K46 ["SimplePadding"]
      201 DUPTABLE                         R25 K68 [{["Padding"] = 2}]
      202 CALL                             R23 2 1
      203 SETTABLEKS                       R23 R22 K41 ["Padding"]
      205 CALL                             R19 3 1
      206 SETTABLEKS                       R19 R18 K44 ["Text"]
      208 CALL                             R15 3 1
      209 SETTABLEKS                       R15 R14 K23 ["Frame"]
      211 CALL                             R11 3 1
      212 SETTABLEKS                       R11 R10 K20 ["SummonHandlesNoteGui"]
      214 CALL                             R7 3 -1
      215 RETURN                           R7 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["PureComponent"]
       20 LOADK                            R5 K8 ["SummonHandlesNote"]
       21 NAMECALL                         R3 R3 K9 ["extend"]
       23 CALL                             R3 2 1
       24 DUPCLOSURE                       R4 K10 [PROTO_1]
       25 SETTABLEKS                       R4 R3 K11 ["didMount"]
       27 DUPCLOSURE                       R4 K12 [PROTO_2]
       28 CAPTURE                          VAL R2
       29 SETGLOBAL                        R4 K13 ["SimplePadding"]
       31 DUPCLOSURE                       R4 K14 [PROTO_3]
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R3 K15 ["render"]
       35 DUPCLOSURE                       R4 K16 [PROTO_4]
       36 SETTABLEKS                       R4 R3 K17 ["willUnmount"]
       38 RETURN                           R3 1
