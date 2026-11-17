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
        6 DUPTABLE                         R1 K4 [{["DisplayCount"] = 0}]
        7 SETTABLEKS                       R1 R0 K5 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K6 ["onAbsoluteSizeChange"]
       14 RETURN                           R0 0

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
       42 JUMPIFNOT                        R14 ; [+74]
       43 GETUPVAL                         R20 0
       44 GETTABLEKS                       R20 R20 K17 ["createElement"]
       46 LOADK                            R21 K18 ["Frame"]
       47 DUPTABLE                         R22 K23 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0.8, ["LayoutOrder"] = 2, ["Size"]}]
       48 GETIMPORT                        R23 K26 [Color3.new]
       50 LOADN                            R24 0
       51 LOADN                            R25 0
       52 LOADN                            R26 0
       53 CALL                             R23 3 1
       54 SETTABLEKS                       R23 R22 K19 ["BackgroundColor3"]
       56 GETIMPORT                        R23 K28 [UDim2.new]
       58 LOADN                            R24 1
       59 LOADN                            R25 0
       60 LOADN                            R26 0
       61 LOADN                            R27 100
       62 CALL                             R23 4 1
       63 SETTABLEKS                       R23 R22 K6 ["Size"]
       65 DUPTABLE                         R23 K31 [{"UICorner", "Loading"}]
       66 GETUPVAL                         R24 0
       67 GETTABLEKS                       R24 R24 K17 ["createElement"]
       69 LOADK                            R25 K29 ["UICorner"]
       70 DUPTABLE                         R26 K33 [{"CornerRadius"}]
       71 GETIMPORT                        R27 K35 [UDim.new]
       73 LOADN                            R28 0
       74 LOADN                            R29 5
       75 CALL                             R27 2 1
       76 SETTABLEKS                       R27 R26 K32 ["CornerRadius"]
       78 CALL                             R24 2 1
       79 SETTABLEKS                       R24 R23 K29 ["UICorner"]
       81 GETUPVAL                         R24 0
       82 GETTABLEKS                       R24 R24 K17 ["createElement"]
       84 GETUPVAL                         R25 1
       85 DUPTABLE                         R26 K38 [{"Size", "AnchorPoint", "Position"}]
       86 GETIMPORT                        R27 K28 [UDim2.new]
       88 LOADN                            R28 0
       89 LOADN                            R29 90
       90 LOADN                            R30 0
       91 LOADN                            R31 30
       92 CALL                             R27 4 1
       93 SETTABLEKS                       R27 R26 K6 ["Size"]
       95 GETIMPORT                        R27 K40 [Vector2.new]
       97 LOADK                            R28 K41 [0.5]
       98 LOADK                            R29 K41 [0.5]
       99 CALL                             R27 2 1
      100 SETTABLEKS                       R27 R26 K36 ["AnchorPoint"]
      102 GETIMPORT                        R27 K28 [UDim2.new]
      104 LOADK                            R28 K41 [0.5]
      105 LOADN                            R29 0
      106 LOADK                            R30 K41 [0.5]
      107 LOADN                            R31 0
      108 CALL                             R27 4 1
      109 SETTABLEKS                       R27 R26 K37 ["Position"]
      111 CALL                             R24 2 1
      112 SETTABLEKS                       R24 R23 K30 ["Loading"]
      114 CALL                             R20 3 1
      115 MOVE                             R19 R20
      116 JUMP                             ; [+41]
      117 GETUPVAL                         R20 0
      118 GETTABLEKS                       R20 R20 K17 ["createElement"]
      120 LOADK                            R21 K18 ["Frame"]
      121 DUPTABLE                         R22 K43 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Position"], ["LayoutOrder"] = 2, ["Size"]}]
      122 GETIMPORT                        R23 K46 [Enum.AutomaticSize.Y]
      124 SETTABLEKS                       R23 R22 K2 ["AutomaticSize"]
      126 GETIMPORT                        R23 K28 [UDim2.new]
      128 LOADN                            R24 0
      129 LOADN                            R25 0
      130 LOADN                            R26 0
      131 LOADN                            R27 0
      132 CALL                             R23 4 1
      133 SETTABLEKS                       R23 R22 K37 ["Position"]
      135 GETIMPORT                        R23 K28 [UDim2.new]
      137 LOADN                            R24 1
      138 LOADN                            R25 0
      139 LOADN                            R26 0
      140 LOADN                            R27 0
      141 CALL                             R23 4 1
      142 SETTABLEKS                       R23 R22 K6 ["Size"]
      144 GETUPVAL                         R23 0
      145 GETTABLEKS                       R23 R23 K17 ["createElement"]
      147 GETUPVAL                         R24 2
      148 DUPTABLE                         R25 K47 [{"Data", "DisplayCount", "OnRenderItem"}]
      149 SETTABLEKS                       R2 R25 K1 ["Data"]
      151 SETTABLEKS                       R17 R25 K16 ["DisplayCount"]
      153 SETTABLEKS                       R11 R25 K10 ["OnRenderItem"]
      155 CALL                             R23 2 -1
      156 CALL                             R20 -1 1
      157 MOVE                             R19 R20
      158 GETUPVAL                         R20 0
      159 GETTABLEKS                       R20 R20 K17 ["createElement"]
      161 LOADK                            R21 K18 ["Frame"]
      162 NEWTABLE                         R22 8 0
      164 SETTABLEKS                       R3 R22 K2 ["AutomaticSize"]
      166 LOADN                            R23 1
      167 SETTABLEKS                       R23 R22 K20 ["BackgroundTransparency"]
      169 SETTABLEKS                       R4 R22 K3 ["LayoutOrder"]
      171 SETTABLEKS                       R7 R22 K6 ["Size"]
      173 SETTABLEKS                       R13 R22 K12 ["ZIndex"]
      175 GETUPVAL                         R23 0
      176 GETTABLEKS                       R23 R23 K48 ["Change"]
      178 GETTABLEKS                       R23 R23 K49 ["AbsoluteSize"]
      180 GETTABLEKS                       R24 R0 K50 ["onAbsoluteSizeChange"]
      182 SETTABLE                         R24 R22 R23
      183 GETUPVAL                         R23 0
      184 GETTABLEKS                       R23 R23 K51 ["Ref"]
      186 GETTABLEKS                       R24 R0 K52 ["ref"]
      188 SETTABLE                         R24 R22 R23
      189 DUPTABLE                         R23 K56 [{"Layout", "Header", "SectionContents"}]
      190 GETUPVAL                         R24 0
      191 GETTABLEKS                       R24 R24 K17 ["createElement"]
      193 LOADK                            R25 K57 ["UIListLayout"]
      194 DUPTABLE                         R26 K60 [{"Padding", "SortOrder"}]
      195 GETIMPORT                        R27 K35 [UDim.new]
      197 LOADN                            R28 0
      198 LOADN                            R29 10
      199 CALL                             R27 2 1
      200 SETTABLEKS                       R27 R26 K58 ["Padding"]
      202 GETIMPORT                        R27 K61 [Enum.SortOrder.LayoutOrder]
      204 SETTABLEKS                       R27 R26 K59 ["SortOrder"]
      206 CALL                             R24 2 1
      207 SETTABLEKS                       R24 R23 K53 ["Layout"]
      209 GETUPVAL                         R24 0
      210 GETTABLEKS                       R24 R24 K17 ["createElement"]
      212 GETUPVAL                         R25 3
      213 DUPTABLE                         R26 K65 [{["IsResponsive"], ["LayoutOrder"] = 1, ["OnClickSeeAll"], ["SeeAllText"], ["ShowSeeAllText"], ["SeeAllTextSize"], ["Title"], ["Total"]}]
      214 SETTABLEKS                       R15 R26 K62 ["IsResponsive"]
      216 SETTABLEKS                       R10 R26 K9 ["OnClickSeeAll"]
      218 JUMPIFNOT                        R9 ; [+15]
      219 JUMPIFNOT                        R5 ; [+14]
      220 LOADK                            R29 K66 ["HomeView"]
      221 LOADK                            R30 K67 ["Results"]
      222 DUPTABLE                         R31 K69 [{"total"}]
      223 FASTCALL1                        TOSTRING R9 ; [+3]
      224 MOVE                             R33 R9
      225 GETIMPORT                        R32 K71 [tostring]
      227 CALL                             R32 1 1
      228 SETTABLEKS                       R32 R31 K68 ["total"]
      230 NAMECALL                         R27 R12 K72 ["getText"]
      232 CALL                             R27 4 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R27
      235 SETTABLEKS                       R27 R26 K63 ["SeeAllText"]
      237 SETTABLEKS                       R18 R26 K64 ["ShowSeeAllText"]
      239 SETTABLEKS                       R6 R26 K5 ["SeeAllTextSize"]
      241 SETTABLEKS                       R8 R26 K7 ["Title"]
      243 SETTABLEKS                       R9 R26 K8 ["Total"]
      245 CALL                             R24 2 1
      246 SETTABLEKS                       R24 R23 K54 ["Header"]
      248 SETTABLEKS                       R19 R23 K55 ["SectionContents"]
      250 CALL                             R20 3 -1
      251 RETURN                           R20 -1

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
       71 DUPTABLE                         R14 K27 [{["AutomaticSize"], ["Size"], ["ShowTotal"] = False}]
       72 GETIMPORT                        R15 K30 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R15 R14 K23 ["AutomaticSize"]
       76 GETIMPORT                        R15 K33 [UDim2.new]
       78 LOADN                            R16 1
       79 LOADN                            R17 0
       80 LOADN                            R18 0
       81 LOADN                            R19 0
       82 CALL                             R15 4 1
       83 SETTABLEKS                       R15 R14 K24 ["Size"]
       85 SETTABLEKS                       R14 R13 K34 ["defaultProps"]
       87 DUPCLOSURE                       R14 K35 [PROTO_1]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R14 R13 K36 ["init"]
       92 DUPCLOSURE                       R14 K37 [PROTO_2]
       93 SETTABLEKS                       R14 R13 K38 ["didMount"]
       95 DUPCLOSURE                       R14 K39 [PROTO_3]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R11
      100 SETTABLEKS                       R14 R13 K40 ["render"]
      102 MOVE                             R14 R8
      103 DUPTABLE                         R15 K42 [{"Localization"}]
      104 GETTABLEKS                       R16 R7 K41 ["Localization"]
      106 SETTABLEKS                       R16 R15 K41 ["Localization"]
      108 CALL                             R14 1 1
      109 MOVE                             R15 R13
      110 CALL                             R14 1 1
      111 MOVE                             R13 R14
      112 RETURN                           R13 1
