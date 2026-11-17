PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["hostRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["seeAllRef"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["createRef"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K3 ["frameRef"]
       18 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R3 R1 K2 ["IsResponsive"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["OnClickSeeAll"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["Localization"]
       14 GETTABLEKS                       R8 R1 K7 ["SeeAllText"]
       16 JUMPIF                           R8 ; [+7]
       17 LOADK                            R11 K8 ["HomeView"]
       18 LOADK                            R12 K9 ["SeeAll"]
       19 NAMECALL                         R9 R7 K10 ["getText"]
       21 CALL                             R9 3 1
       22 LOADK                            R10 K11 [" >"]
       23 CONCAT                           R8 R9 R10
       24 GETTABLEKS                       R9 R1 K12 ["ShowSeeAllText"]
       26 GETTABLEKS                       R10 R1 K13 ["Stylizer"]
       28 GETTABLEKS                       R10 R10 K14 ["sectionHeader"]
       30 GETTABLEKS                       R11 R1 K15 ["Title"]
       32 GETTABLEKS                       R12 R1 K16 ["WrapperProps"]
       34 JUMPIFNOT                        R2 ; [+10]
       35 MOVE                             R13 R3
       36 JUMPIFNOT                        R13 ; [+9]
       37 GETTABLEKS                       R14 R2 K17 ["X"]
       39 LOADN                            R15 300
       40 JUMPIFLT                         R14 R15 ; [+2]
       42 LOADB                            R13 0 +1
       43 LOADB                            R13 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R13
       46 JUMPIFNOT                        R13 ; [+2]
       47 LOADN                            R14 0
       48 JUMP                             ; [+1]
       49 LOADN                            R14 1
       50 GETTABLEKS                       R16 R0 K18 ["seeAllRef"]
       52 GETTABLEKS                       R16 R16 K19 ["current"]
       54 JUMPIFNOT                        R16 ; [+29]
       55 GETTABLEKS                       R16 R0 K20 ["hostRef"]
       57 GETTABLEKS                       R16 R16 K19 ["current"]
       59 JUMPIFNOT                        R16 ; [+24]
       60 GETIMPORT                        R15 K23 [UDim2.new]
       62 LOADN                            R16 0
       63 GETTABLEKS                       R18 R0 K20 ["hostRef"]
       65 GETTABLEKS                       R18 R18 K19 ["current"]
       67 GETTABLEKS                       R18 R18 K1 ["AbsoluteSize"]
       69 GETTABLEKS                       R18 R18 K17 ["X"]
       71 GETTABLEKS                       R19 R0 K18 ["seeAllRef"]
       73 GETTABLEKS                       R19 R19 K19 ["current"]
       75 GETTABLEKS                       R19 R19 K1 ["AbsoluteSize"]
       77 GETTABLEKS                       R19 R19 K17 ["X"]
       79 SUB                              R17 R18 R19
       80 MOVE                             R18 R14
       81 LOADN                            R19 0
       82 CALL                             R15 4 1
       83 JUMP                             ; [+7]
       84 GETIMPORT                        R15 K23 [UDim2.new]
       86 LOADK                            R16 K24 [0.6]
       87 LOADN                            R17 0
       88 MOVE                             R18 R14
       89 LOADN                            R19 0
       90 CALL                             R15 4 1
       91 GETUPVAL                         R16 0
       92 GETTABLEKS                       R16 R16 K22 ["new"]
       94 CALL                             R16 0 1
       95 DUPTABLE                         R17 K25 [{"Title", "SeeAll"}]
       96 GETUPVAL                         R18 1
       97 GETTABLEKS                       R18 R18 K26 ["createElement"]
       99 LOADK                            R19 K27 ["TextLabel"]
      100 NEWTABLE                         R20 16 0
      102 GETIMPORT                        R21 K31 [Enum.AutomaticSize.XY]
      104 SETTABLEKS                       R21 R20 K29 ["AutomaticSize"]
      106 LOADN                            R21 1
      107 SETTABLEKS                       R21 R20 K32 ["BackgroundTransparency"]
      109 GETTABLEKS                       R21 R10 K33 ["font"]
      111 SETTABLEKS                       R21 R20 K34 ["Font"]
      113 NAMECALL                         R21 R16 K35 ["getNextOrder"]
      115 CALL                             R21 1 1
      116 SETTABLEKS                       R21 R20 K3 ["LayoutOrder"]
      118 GETIMPORT                        R21 K23 [UDim2.new]
      120 LOADN                            R22 0
      121 LOADN                            R23 0
      122 LOADN                            R24 0
      123 LOADN                            R25 0
      124 CALL                             R21 4 1
      125 SETTABLEKS                       R21 R20 K5 ["Position"]
      127 SETTABLEKS                       R15 R20 K36 ["Size"]
      129 SETTABLEKS                       R11 R20 K37 ["Text"]
      131 GETTABLEKS                       R21 R10 K38 ["textColor"]
      133 SETTABLEKS                       R21 R20 K39 ["TextColor3"]
      135 GETTABLEKS                       R21 R10 K40 ["textSize"]
      137 SETTABLEKS                       R21 R20 K41 ["TextSize"]
      139 GETIMPORT                        R21 K44 [Enum.TextXAlignment.Left]
      141 SETTABLEKS                       R21 R20 K42 ["TextXAlignment"]
      143 GETUPVAL                         R21 1
      144 GETTABLEKS                       R21 R21 K45 ["Ref"]
      146 GETTABLEKS                       R22 R0 K20 ["hostRef"]
      148 SETTABLE                         R22 R20 R21
      149 CALL                             R18 2 1
      150 SETTABLEKS                       R18 R17 K15 ["Title"]
      152 MOVE                             R18 R9
      153 JUMPIFNOT                        R18 ; [+48]
      154 GETUPVAL                         R18 1
      155 GETTABLEKS                       R18 R18 K26 ["createElement"]
      157 LOADK                            R19 K46 ["Frame"]
      158 DUPTABLE                         R20 K49 [{["AnchorPoint"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Position"]}]
      159 GETIMPORT                        R21 K51 [Vector2.new]
      161 LOADN                            R22 1
      162 LOADN                            R23 0
      163 CALL                             R21 2 1
      164 SETTABLEKS                       R21 R20 K47 ["AnchorPoint"]
      166 GETIMPORT                        R21 K31 [Enum.AutomaticSize.XY]
      168 SETTABLEKS                       R21 R20 K29 ["AutomaticSize"]
      170 NAMECALL                         R21 R16 K35 ["getNextOrder"]
      172 CALL                             R21 1 1
      173 SETTABLEKS                       R21 R20 K3 ["LayoutOrder"]
      175 GETIMPORT                        R21 K23 [UDim2.new]
      177 LOADN                            R22 1
      178 LOADN                            R23 0
      179 LOADN                            R24 0
      180 LOADN                            R25 0
      181 CALL                             R21 4 1
      182 SETTABLEKS                       R21 R20 K5 ["Position"]
      184 DUPTABLE                         R21 K53 [{"SeeAllButton"}]
      185 GETUPVAL                         R22 1
      186 GETTABLEKS                       R22 R22 K26 ["createElement"]
      188 GETUPVAL                         R23 2
      189 DUPTABLE                         R24 K57 [{["OnClick"], ["Style"] = "Unobtrusive", ["Text"], ["TextSize"]}]
      190 SETTABLEKS                       R5 R24 K54 ["OnClick"]
      192 SETTABLEKS                       R8 R24 K37 ["Text"]
      194 GETTABLEKS                       R25 R1 K58 ["SeeAllTextSize"]
      196 SETTABLEKS                       R25 R24 K41 ["TextSize"]
      198 CALL                             R22 2 1
      199 SETTABLEKS                       R22 R21 K52 ["SeeAllButton"]
      201 CALL                             R18 3 1
      202 SETTABLEKS                       R18 R17 K9 ["SeeAll"]
      204 GETUPVAL                         R18 1
      205 GETTABLEKS                       R18 R18 K26 ["createElement"]
      207 GETUPVAL                         R19 3
      208 GETUPVAL                         R20 4
      209 GETTABLEKS                       R20 R20 K59 ["join"]
      211 NEWTABLE                         R21 16 0
      213 GETIMPORT                        R22 K61 [Enum.AutomaticSize.Y]
      215 SETTABLEKS                       R22 R21 K29 ["AutomaticSize"]
      217 LOADN                            R22 1
      218 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
      220 JUMPIFNOT                        R13 ; [+3]
      221 GETIMPORT                        R22 K63 [Enum.HorizontalAlignment.Left]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R22
      225 SETTABLEKS                       R22 R21 K62 ["HorizontalAlignment"]
      227 JUMPIFNOT                        R13 ; [+3]
      228 GETIMPORT                        R22 K66 [Enum.FillDirection.Vertical]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R22
      232 SETTABLEKS                       R22 R21 K67 ["Layout"]
      234 SETTABLEKS                       R4 R21 K3 ["LayoutOrder"]
      236 GETIMPORT                        R22 K23 [UDim2.new]
      238 LOADN                            R23 1
      239 LOADN                            R24 0
      240 LOADN                            R25 0
      241 LOADN                            R26 0
      242 CALL                             R22 4 1
      243 SETTABLEKS                       R22 R21 K36 ["Size"]
      245 JUMPIFNOT                        R13 ; [+2]
      246 LOADN                            R22 5
      247 JUMP                             ; [+1]
      248 LOADN                            R22 0
      249 SETTABLEKS                       R22 R21 K68 ["Spacing"]
      251 SETTABLEKS                       R6 R21 K5 ["Position"]
      253 GETUPVAL                         R22 1
      254 GETTABLEKS                       R22 R22 K69 ["Change"]
      256 GETTABLEKS                       R22 R22 K1 ["AbsoluteSize"]
      258 GETTABLEKS                       R23 R0 K70 ["onAbsoluteSizeChange"]
      260 SETTABLE                         R23 R21 R22
      261 GETUPVAL                         R22 1
      262 GETTABLEKS                       R22 R22 K45 ["Ref"]
      264 GETTABLEKS                       R23 R0 K71 ["frameRef"]
      266 SETTABLE                         R23 R21 R22
      267 MOVE                             R22 R12
      268 CALL                             R20 2 1
      269 MOVE                             R21 R17
      270 CALL                             R18 3 -1
      271 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["UI"]
       25 GETTABLEKS                       R4 R4 K9 ["LinkText"]
       27 GETTABLEKS                       R5 R3 K8 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["Pane"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R1 K11 ["Dash"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R3 K12 ["Util"]
       38 GETTABLEKS                       R7 R7 K13 ["LayoutOrderIterator"]
       40 GETTABLEKS                       R8 R3 K14 ["Wrappers"]
       42 GETTABLEKS                       R8 R8 K15 ["withAbsoluteSize"]
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R1 K7 ["Framework"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R9 R9 K16 ["ContextServices"]
       51 GETTABLEKS                       R10 R9 K17 ["withContext"]
       53 GETTABLEKS                       R11 R2 K18 ["PureComponent"]
       55 LOADK                            R13 K19 ["SectionHeader"]
       56 NAMECALL                         R11 R11 K20 ["extend"]
       58 CALL                             R11 2 1
       59 DUPTABLE                         R12 K25 [{["Title"] = "", ["ShowSeeAllText"] = True}]
       60 SETTABLEKS                       R12 R11 K26 ["defaultProps"]
       62 DUPCLOSURE                       R12 K27 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R12 R11 K28 ["init"]
       66 DUPCLOSURE                       R12 K29 [PROTO_1]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R12 R11 K30 ["render"]
       74 MOVE                             R12 R10
       75 DUPTABLE                         R13 K33 [{"Localization", "Stylizer"}]
       76 GETTABLEKS                       R14 R9 K31 ["Localization"]
       78 SETTABLEKS                       R14 R13 K31 ["Localization"]
       80 GETTABLEKS                       R14 R9 K32 ["Stylizer"]
       82 SETTABLEKS                       R14 R13 K32 ["Stylizer"]
       84 CALL                             R12 1 1
       85 MOVE                             R13 R11
       86 CALL                             R12 1 1
       87 MOVE                             R11 R12
       88 MOVE                             R12 R8
       89 MOVE                             R13 R11
       90 CALL                             R12 1 -1
       91 RETURN                           R12 -1
