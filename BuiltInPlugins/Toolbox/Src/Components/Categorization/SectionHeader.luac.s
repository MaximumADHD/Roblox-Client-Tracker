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
       16 JUMPIF                           R8 ; [+8]
       17 LOADK                            R13 K8 ["HomeView"]
       18 LOADK                            R14 K9 ["SeeAll"]
       19 NAMECALL                         R11 R7 K10 ["getText"]
       21 CALL                             R11 3 1
       22 MOVE                             R9 R11
       23 LOADK                            R10 K11 [" >"]
       24 CONCAT                           R8 R9 R10
       25 GETTABLEKS                       R9 R1 K12 ["ShowSeeAllText"]
       27 GETTABLEKS                       R10 R1 K13 ["Stylizer"]
       29 GETTABLEKS                       R10 R10 K14 ["sectionHeader"]
       31 GETTABLEKS                       R11 R1 K15 ["Title"]
       33 GETTABLEKS                       R12 R1 K16 ["WrapperProps"]
       35 JUMPIFNOT                        R2 ; [+10]
       36 MOVE                             R13 R3
       37 JUMPIFNOT                        R13 ; [+9]
       38 GETTABLEKS                       R14 R2 K17 ["X"]
       40 LOADN                            R15 44
       41 JUMPIFLT                         R14 R15 ; [+2]
       43 LOADB                            R13 0 +1
       44 LOADB                            R13 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R13
       47 JUMPIFNOT                        R13 ; [+2]
       48 LOADN                            R14 0
       49 JUMP                             ; [+1]
       50 LOADN                            R14 1
       51 GETTABLEKS                       R16 R0 K18 ["seeAllRef"]
       53 GETTABLEKS                       R16 R16 K19 ["current"]
       55 JUMPIFNOT                        R16 ; [+29]
       56 GETTABLEKS                       R16 R0 K20 ["hostRef"]
       58 GETTABLEKS                       R16 R16 K19 ["current"]
       60 JUMPIFNOT                        R16 ; [+24]
       61 GETIMPORT                        R15 K23 [UDim2.new]
       63 LOADN                            R16 0
       64 GETTABLEKS                       R18 R0 K20 ["hostRef"]
       66 GETTABLEKS                       R18 R18 K19 ["current"]
       68 GETTABLEKS                       R18 R18 K1 ["AbsoluteSize"]
       70 GETTABLEKS                       R18 R18 K17 ["X"]
       72 GETTABLEKS                       R19 R0 K18 ["seeAllRef"]
       74 GETTABLEKS                       R19 R19 K19 ["current"]
       76 GETTABLEKS                       R19 R19 K1 ["AbsoluteSize"]
       78 GETTABLEKS                       R19 R19 K17 ["X"]
       80 SUB                              R17 R18 R19
       81 MOVE                             R18 R14
       82 LOADN                            R19 0
       83 CALL                             R15 4 1
       84 JUMP                             ; [+7]
       85 GETIMPORT                        R15 K23 [UDim2.new]
       87 LOADK                            R16 K24 [0.6]
       88 LOADN                            R17 0
       89 MOVE                             R18 R14
       90 LOADN                            R19 0
       91 CALL                             R15 4 1
       92 GETUPVAL                         R16 0
       93 GETTABLEKS                       R16 R16 K22 ["new"]
       95 CALL                             R16 0 1
       96 DUPTABLE                         R17 K25 [{"Title", "SeeAll"}]
       97 GETUPVAL                         R18 1
       98 GETTABLEKS                       R18 R18 K26 ["createElement"]
      100 LOADK                            R19 K27 ["TextLabel"]
      101 NEWTABLE                         R20 16 0
      103 GETIMPORT                        R21 K31 [Enum.AutomaticSize.XY]
      105 SETTABLEKS                       R21 R20 K29 ["AutomaticSize"]
      107 LOADN                            R21 1
      108 SETTABLEKS                       R21 R20 K32 ["BackgroundTransparency"]
      110 GETTABLEKS                       R21 R10 K33 ["font"]
      112 SETTABLEKS                       R21 R20 K34 ["Font"]
      114 NAMECALL                         R21 R16 K35 ["getNextOrder"]
      116 CALL                             R21 1 1
      117 SETTABLEKS                       R21 R20 K3 ["LayoutOrder"]
      119 GETIMPORT                        R21 K23 [UDim2.new]
      121 LOADN                            R22 0
      122 LOADN                            R23 0
      123 LOADN                            R24 0
      124 LOADN                            R25 0
      125 CALL                             R21 4 1
      126 SETTABLEKS                       R21 R20 K5 ["Position"]
      128 SETTABLEKS                       R15 R20 K36 ["Size"]
      130 SETTABLEKS                       R11 R20 K37 ["Text"]
      132 GETTABLEKS                       R21 R10 K38 ["textColor"]
      134 SETTABLEKS                       R21 R20 K39 ["TextColor3"]
      136 GETTABLEKS                       R21 R10 K40 ["textSize"]
      138 SETTABLEKS                       R21 R20 K41 ["TextSize"]
      140 GETIMPORT                        R21 K44 [Enum.TextXAlignment.Left]
      142 SETTABLEKS                       R21 R20 K42 ["TextXAlignment"]
      144 GETUPVAL                         R21 1
      145 GETTABLEKS                       R21 R21 K45 ["Ref"]
      147 GETTABLEKS                       R22 R0 K20 ["hostRef"]
      149 SETTABLE                         R22 R20 R21
      150 CALL                             R18 2 1
      151 SETTABLEKS                       R18 R17 K15 ["Title"]
      153 MOVE                             R18 R9
      154 JUMPIFNOT                        R18 ; [+54]
      155 GETUPVAL                         R18 1
      156 GETTABLEKS                       R18 R18 K26 ["createElement"]
      158 LOADK                            R19 K46 ["Frame"]
      159 DUPTABLE                         R20 K48 [{"AnchorPoint", "AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Position"}]
      160 GETIMPORT                        R21 K50 [Vector2.new]
      162 LOADN                            R22 1
      163 LOADN                            R23 0
      164 CALL                             R21 2 1
      165 SETTABLEKS                       R21 R20 K47 ["AnchorPoint"]
      167 GETIMPORT                        R21 K31 [Enum.AutomaticSize.XY]
      169 SETTABLEKS                       R21 R20 K29 ["AutomaticSize"]
      171 LOADN                            R21 1
      172 SETTABLEKS                       R21 R20 K32 ["BackgroundTransparency"]
      174 NAMECALL                         R21 R16 K35 ["getNextOrder"]
      176 CALL                             R21 1 1
      177 SETTABLEKS                       R21 R20 K3 ["LayoutOrder"]
      179 GETIMPORT                        R21 K23 [UDim2.new]
      181 LOADN                            R22 1
      182 LOADN                            R23 0
      183 LOADN                            R24 0
      184 LOADN                            R25 0
      185 CALL                             R21 4 1
      186 SETTABLEKS                       R21 R20 K5 ["Position"]
      188 DUPTABLE                         R21 K52 [{"SeeAllButton"}]
      189 GETUPVAL                         R22 1
      190 GETTABLEKS                       R22 R22 K26 ["createElement"]
      192 GETUPVAL                         R23 2
      193 DUPTABLE                         R24 K55 [{"OnClick", "Style", "Text", "TextSize"}]
      194 SETTABLEKS                       R5 R24 K53 ["OnClick"]
      196 LOADK                            R25 K56 ["Unobtrusive"]
      197 SETTABLEKS                       R25 R24 K54 ["Style"]
      199 SETTABLEKS                       R8 R24 K37 ["Text"]
      201 GETTABLEKS                       R25 R1 K57 ["SeeAllTextSize"]
      203 SETTABLEKS                       R25 R24 K41 ["TextSize"]
      205 CALL                             R22 2 1
      206 SETTABLEKS                       R22 R21 K51 ["SeeAllButton"]
      208 CALL                             R18 3 1
      209 SETTABLEKS                       R18 R17 K9 ["SeeAll"]
      211 GETUPVAL                         R18 1
      212 GETTABLEKS                       R18 R18 K26 ["createElement"]
      214 GETUPVAL                         R19 3
      215 GETUPVAL                         R20 4
      216 GETTABLEKS                       R20 R20 K58 ["join"]
      218 NEWTABLE                         R21 16 0
      220 GETIMPORT                        R22 K60 [Enum.AutomaticSize.Y]
      222 SETTABLEKS                       R22 R21 K29 ["AutomaticSize"]
      224 LOADN                            R22 1
      225 SETTABLEKS                       R22 R21 K32 ["BackgroundTransparency"]
      227 JUMPIFNOT                        R13 ; [+3]
      228 GETIMPORT                        R22 K62 [Enum.HorizontalAlignment.Left]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R22
      232 SETTABLEKS                       R22 R21 K61 ["HorizontalAlignment"]
      234 JUMPIFNOT                        R13 ; [+3]
      235 GETIMPORT                        R22 K65 [Enum.FillDirection.Vertical]
      237 JUMP                             ; [+1]
      238 LOADNIL                          R22
      239 SETTABLEKS                       R22 R21 K66 ["Layout"]
      241 SETTABLEKS                       R4 R21 K3 ["LayoutOrder"]
      243 GETIMPORT                        R22 K23 [UDim2.new]
      245 LOADN                            R23 1
      246 LOADN                            R24 0
      247 LOADN                            R25 0
      248 LOADN                            R26 0
      249 CALL                             R22 4 1
      250 SETTABLEKS                       R22 R21 K36 ["Size"]
      252 JUMPIFNOT                        R13 ; [+2]
      253 LOADN                            R22 5
      254 JUMP                             ; [+1]
      255 LOADN                            R22 0
      256 SETTABLEKS                       R22 R21 K67 ["Spacing"]
      258 SETTABLEKS                       R6 R21 K5 ["Position"]
      260 GETUPVAL                         R22 1
      261 GETTABLEKS                       R22 R22 K68 ["Change"]
      263 GETTABLEKS                       R22 R22 K1 ["AbsoluteSize"]
      265 GETTABLEKS                       R23 R0 K69 ["onAbsoluteSizeChange"]
      267 SETTABLE                         R23 R21 R22
      268 GETUPVAL                         R22 1
      269 GETTABLEKS                       R22 R22 K45 ["Ref"]
      271 GETTABLEKS                       R23 R0 K70 ["frameRef"]
      273 SETTABLE                         R23 R21 R22
      274 MOVE                             R22 R12
      275 CALL                             R20 2 1
      276 MOVE                             R21 R17
      277 CALL                             R18 3 -1
      278 RETURN                           R18 -1

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
       59 DUPTABLE                         R12 K23 [{"Title", "ShowSeeAllText"}]
       60 LOADK                            R13 K24 [""]
       61 SETTABLEKS                       R13 R12 K21 ["Title"]
       63 LOADB                            R13 1
       64 SETTABLEKS                       R13 R12 K22 ["ShowSeeAllText"]
       66 SETTABLEKS                       R12 R11 K25 ["defaultProps"]
       68 DUPCLOSURE                       R12 K26 [PROTO_0]
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R12 R11 K27 ["init"]
       72 DUPCLOSURE                       R12 K28 [PROTO_1]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 SETTABLEKS                       R12 R11 K29 ["render"]
       80 MOVE                             R12 R10
       81 DUPTABLE                         R13 K32 [{"Localization", "Stylizer"}]
       82 GETTABLEKS                       R14 R9 K30 ["Localization"]
       84 SETTABLEKS                       R14 R13 K30 ["Localization"]
       86 GETTABLEKS                       R14 R9 K31 ["Stylizer"]
       88 SETTABLEKS                       R14 R13 K31 ["Stylizer"]
       90 CALL                             R12 1 1
       91 MOVE                             R13 R11
       92 CALL                             R12 1 1
       93 MOVE                             R11 R12
       94 MOVE                             R12 R8
       95 MOVE                             R13 R11
       96 CALL                             R12 1 -1
       97 RETURN                           R12 -1
