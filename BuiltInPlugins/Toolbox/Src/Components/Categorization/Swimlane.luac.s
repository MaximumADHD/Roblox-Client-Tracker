PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"DisplayCount"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K2 ["getAssetsPerRow"]
        5 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K4 ["X"]
        9 CALL                             R4 1 1
       10 SETTABLEKS                       R4 R3 K0 ["DisplayCount"]
       12 NAMECALL                         R1 R1 K5 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 DUPTABLE                         R1 K3 [{"DisplayCount"}]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["DisplayCount"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R1 R0 K5 ["onAbsoluteSizeChange"]
       17 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["ref"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETTABLEKS                       R1 R0 K2 ["onAbsoluteSizeChange"]
        7 GETTABLEKS                       R2 R0 K0 ["ref"]
        9 GETTABLEKS                       R2 R2 K1 ["current"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Data"]
        4 GETTABLEKS                       R3 R1 K2 ["AutomaticSize"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["ShowTotal"]
       10 GETTABLEKS                       R6 R1 K5 ["SeeAllTextSize"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETTABLEKS                       R8 R1 K7 ["Title"]
       16 GETTABLEKS                       R9 R1 K8 ["Total"]
       18 GETTABLEKS                       R10 R1 K9 ["OnClickSeeAll"]
       20 GETTABLEKS                       R11 R1 K10 ["OnRenderItem"]
       22 GETTABLEKS                       R12 R1 K11 ["Localization"]
       24 GETTABLEKS                       R13 R1 K12 ["ZIndex"]
       26 GETTABLEKS                       R14 R1 K13 ["IsLoading"]
       28 GETTABLEKS                       R15 R1 K14 ["IsHeaderResponsive"]
       30 GETTABLEKS                       R16 R0 K15 ["state"]
       32 GETTABLEKS                       R17 R16 K16 ["DisplayCount"]
       34 JUMPIFNOT                        R9 ; [+5]
       35 JUMPIFLT                         R17 R9 ; [+2]
       37 LOADB                            R18 0 +1
       38 LOADB                            R18 1
       39 JUMP                             ; [+1]
       40 LOADB                            R18 1
       41 LOADNIL                          R19
       42 JUMPIFNOT                        R14 ; [+80]
       43 GETUPVAL                         R20 0
       44 GETTABLEKS                       R20 R20 K17 ["createElement"]
       46 LOADK                            R21 K18 ["Frame"]
       47 DUPTABLE                         R22 K21 [{"BackgroundColor3", "BackgroundTransparency", "LayoutOrder", "Size"}]
       48 GETIMPORT                        R23 K24 [Color3.new]
       50 LOADN                            R24 0
       51 LOADN                            R25 0
       52 LOADN                            R26 0
       53 CALL                             R23 3 1
       54 SETTABLEKS                       R23 R22 K19 ["BackgroundColor3"]
       56 LOADK                            R23 K25 [0.8]
       57 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
       59 LOADN                            R23 2
       60 SETTABLEKS                       R23 R22 K3 ["LayoutOrder"]
       62 GETIMPORT                        R23 K27 [UDim2.new]
       64 LOADN                            R24 1
       65 LOADN                            R25 0
       66 LOADN                            R26 0
       67 LOADN                            R27 100
       68 CALL                             R23 4 1
       69 SETTABLEKS                       R23 R22 K6 ["Size"]
       71 DUPTABLE                         R23 K30 [{"UICorner", "Loading"}]
       72 GETUPVAL                         R24 0
       73 GETTABLEKS                       R24 R24 K17 ["createElement"]
       75 LOADK                            R25 K28 ["UICorner"]
       76 DUPTABLE                         R26 K32 [{"CornerRadius"}]
       77 GETIMPORT                        R27 K34 [UDim.new]
       79 LOADN                            R28 0
       80 LOADN                            R29 5
       81 CALL                             R27 2 1
       82 SETTABLEKS                       R27 R26 K31 ["CornerRadius"]
       84 CALL                             R24 2 1
       85 SETTABLEKS                       R24 R23 K28 ["UICorner"]
       87 GETUPVAL                         R24 0
       88 GETTABLEKS                       R24 R24 K17 ["createElement"]
       90 GETUPVAL                         R25 1
       91 DUPTABLE                         R26 K37 [{"Size", "AnchorPoint", "Position"}]
       92 GETIMPORT                        R27 K27 [UDim2.new]
       94 LOADN                            R28 0
       95 LOADN                            R29 90
       96 LOADN                            R30 0
       97 LOADN                            R31 30
       98 CALL                             R27 4 1
       99 SETTABLEKS                       R27 R26 K6 ["Size"]
      101 GETIMPORT                        R27 K39 [Vector2.new]
      103 LOADK                            R28 K40 [0.5]
      104 LOADK                            R29 K40 [0.5]
      105 CALL                             R27 2 1
      106 SETTABLEKS                       R27 R26 K35 ["AnchorPoint"]
      108 GETIMPORT                        R27 K27 [UDim2.new]
      110 LOADK                            R28 K40 [0.5]
      111 LOADN                            R29 0
      112 LOADK                            R30 K40 [0.5]
      113 LOADN                            R31 0
      114 CALL                             R27 4 1
      115 SETTABLEKS                       R27 R26 K36 ["Position"]
      117 CALL                             R24 2 1
      118 SETTABLEKS                       R24 R23 K29 ["Loading"]
      120 CALL                             R20 3 1
      121 MOVE                             R19 R20
      122 JUMP                             ; [+47]
      123 GETUPVAL                         R20 0
      124 GETTABLEKS                       R20 R20 K17 ["createElement"]
      126 LOADK                            R21 K18 ["Frame"]
      127 DUPTABLE                         R22 K41 [{"AutomaticSize", "BackgroundTransparency", "Position", "LayoutOrder", "Size"}]
      128 GETIMPORT                        R23 K44 [Enum.AutomaticSize.Y]
      130 SETTABLEKS                       R23 R22 K2 ["AutomaticSize"]
      132 LOADN                            R23 1
      133 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
      135 GETIMPORT                        R23 K27 [UDim2.new]
      137 LOADN                            R24 0
      138 LOADN                            R25 0
      139 LOADN                            R26 0
      140 LOADN                            R27 0
      141 CALL                             R23 4 1
      142 SETTABLEKS                       R23 R22 K36 ["Position"]
      144 LOADN                            R23 2
      145 SETTABLEKS                       R23 R22 K3 ["LayoutOrder"]
      147 GETIMPORT                        R23 K27 [UDim2.new]
      149 LOADN                            R24 1
      150 LOADN                            R25 0
      151 LOADN                            R26 0
      152 LOADN                            R27 0
      153 CALL                             R23 4 1
      154 SETTABLEKS                       R23 R22 K6 ["Size"]
      156 GETUPVAL                         R23 0
      157 GETTABLEKS                       R23 R23 K17 ["createElement"]
      159 GETUPVAL                         R24 2
      160 DUPTABLE                         R25 K45 [{"Data", "DisplayCount", "OnRenderItem"}]
      161 SETTABLEKS                       R2 R25 K1 ["Data"]
      163 SETTABLEKS                       R17 R25 K16 ["DisplayCount"]
      165 SETTABLEKS                       R11 R25 K10 ["OnRenderItem"]
      167 CALL                             R23 2 -1
      168 CALL                             R20 -1 1
      169 MOVE                             R19 R20
      170 GETUPVAL                         R20 0
      171 GETTABLEKS                       R20 R20 K17 ["createElement"]
      173 LOADK                            R21 K18 ["Frame"]
      174 NEWTABLE                         R22 8 0
      176 SETTABLEKS                       R3 R22 K2 ["AutomaticSize"]
      178 LOADN                            R23 1
      179 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
      181 SETTABLEKS                       R4 R22 K3 ["LayoutOrder"]
      183 SETTABLEKS                       R7 R22 K6 ["Size"]
      185 SETTABLEKS                       R13 R22 K12 ["ZIndex"]
      187 GETUPVAL                         R23 0
      188 GETTABLEKS                       R23 R23 K46 ["Change"]
      190 GETTABLEKS                       R23 R23 K47 ["AbsoluteSize"]
      192 GETTABLEKS                       R24 R0 K48 ["onAbsoluteSizeChange"]
      194 SETTABLE                         R24 R22 R23
      195 GETUPVAL                         R23 0
      196 GETTABLEKS                       R23 R23 K49 ["Ref"]
      198 GETTABLEKS                       R24 R0 K50 ["ref"]
      200 SETTABLE                         R24 R22 R23
      201 DUPTABLE                         R23 K54 [{"Layout", "Header", "SectionContents"}]
      202 GETUPVAL                         R24 0
      203 GETTABLEKS                       R24 R24 K17 ["createElement"]
      205 LOADK                            R25 K55 ["UIListLayout"]
      206 DUPTABLE                         R26 K58 [{"Padding", "SortOrder"}]
      207 GETIMPORT                        R27 K34 [UDim.new]
      209 LOADN                            R28 0
      210 LOADN                            R29 10
      211 CALL                             R27 2 1
      212 SETTABLEKS                       R27 R26 K56 ["Padding"]
      214 GETIMPORT                        R27 K59 [Enum.SortOrder.LayoutOrder]
      216 SETTABLEKS                       R27 R26 K57 ["SortOrder"]
      218 CALL                             R24 2 1
      219 SETTABLEKS                       R24 R23 K51 ["Layout"]
      221 GETUPVAL                         R24 0
      222 GETTABLEKS                       R24 R24 K17 ["createElement"]
      224 GETUPVAL                         R25 3
      225 DUPTABLE                         R26 K63 [{"IsResponsive", "LayoutOrder", "OnClickSeeAll", "SeeAllText", "ShowSeeAllText", "SeeAllTextSize", "Title", "Total"}]
      226 SETTABLEKS                       R15 R26 K60 ["IsResponsive"]
      228 LOADN                            R27 1
      229 SETTABLEKS                       R27 R26 K3 ["LayoutOrder"]
      231 SETTABLEKS                       R10 R26 K9 ["OnClickSeeAll"]
      233 JUMPIFNOT                        R9 ; [+15]
      234 JUMPIFNOT                        R5 ; [+14]
      235 LOADK                            R29 K64 ["HomeView"]
      236 LOADK                            R30 K65 ["Results"]
      237 DUPTABLE                         R31 K67 [{"total"}]
      238 FASTCALL1                        TOSTRING R9 ; [+3]
      239 MOVE                             R33 R9
      240 GETIMPORT                        R32 K69 [tostring]
      242 CALL                             R32 1 1
      243 SETTABLEKS                       R32 R31 K66 ["total"]
      245 NAMECALL                         R27 R12 K70 ["getText"]
      247 CALL                             R27 4 1
      248 JUMP                             ; [+1]
      249 LOADNIL                          R27
      250 SETTABLEKS                       R27 R26 K61 ["SeeAllText"]
      252 SETTABLEKS                       R18 R26 K62 ["ShowSeeAllText"]
      254 SETTABLEKS                       R6 R26 K5 ["SeeAllTextSize"]
      256 SETTABLEKS                       R8 R26 K7 ["Title"]
      258 SETTABLEKS                       R9 R26 K8 ["Total"]
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K52 ["Header"]
      263 SETTABLEKS                       R19 R23 K53 ["SectionContents"]
      265 CALL                             R20 3 -1
      266 RETURN                           R20 -1

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
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Layouter"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Util"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R5 K11 ["Constants"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R3 K12 ["ContextServices"]
       43 GETTABLEKS                       R8 R7 K13 ["withContext"]
       45 GETTABLEKS                       R9 R3 K14 ["UI"]
       47 GETTABLEKS                       R9 R9 K15 ["LoadingIndicator"]
       49 GETTABLEKS                       R10 R0 K8 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Components"]
       53 GETTABLEKS                       R10 R10 K17 ["Categorization"]
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R10 K18 ["SectionHeader"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R10 K19 ["HorizontalList"]
       64 CALL                             R12 1 1
       65 GETTABLEKS                       R13 R2 K20 ["PureComponent"]
       67 LOADK                            R15 K21 ["Swimlane"]
       68 NAMECALL                         R13 R13 K22 ["extend"]
       70 CALL                             R13 2 1
       71 DUPTABLE                         R14 K26 [{"AutomaticSize", "Size", "ShowTotal"}]
       72 GETIMPORT                        R15 K29 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R15 R14 K23 ["AutomaticSize"]
       76 GETIMPORT                        R15 K32 [UDim2.new]
       78 LOADN                            R16 1
       79 LOADN                            R17 0
       80 LOADN                            R18 0
       81 LOADN                            R19 0
       82 CALL                             R15 4 1
       83 SETTABLEKS                       R15 R14 K24 ["Size"]
       85 LOADB                            R15 0
       86 SETTABLEKS                       R15 R14 K25 ["ShowTotal"]
       88 SETTABLEKS                       R14 R13 K33 ["defaultProps"]
       90 DUPCLOSURE                       R14 K34 [PROTO_1]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R14 R13 K35 ["init"]
       95 DUPCLOSURE                       R14 K36 [PROTO_2]
       96 SETTABLEKS                       R14 R13 K37 ["didMount"]
       98 DUPCLOSURE                       R14 K38 [PROTO_3]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R11
      103 SETTABLEKS                       R14 R13 K39 ["render"]
      105 MOVE                             R14 R8
      106 DUPTABLE                         R15 K41 [{"Localization"}]
      107 GETTABLEKS                       R16 R7 K40 ["Localization"]
      109 SETTABLEKS                       R16 R15 K40 ["Localization"]
      111 CALL                             R14 1 1
      112 MOVE                             R15 R13
      113 CALL                             R14 1 1
      114 MOVE                             R13 R14
      115 RETURN                           R13 1
