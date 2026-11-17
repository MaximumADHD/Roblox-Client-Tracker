PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["layoutRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"maxHeight"}]
        9 GETTABLEKS                       R4 R0 K4 ["AbsoluteContentSize"]
       11 GETTABLEKS                       R4 R4 K5 ["Y"]
       13 SETTABLEKS                       R4 R3 K2 ["maxHeight"]
       15 NAMECALL                         R1 R1 K6 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = 0}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K4 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K5 ["layoutRef"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K6 ["onResize"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SelectionChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["radioButton"]
        6 GETTABLEKS                       R4 R2 K3 ["radioButtonSet"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 LOADNIL                          R6
       13 GETTABLEKS                       R7 R1 K5 ["Selected"]
       15 JUMPIFEQKNIL                     R7 ; [+4]
       17 GETTABLEKS                       R6 R1 K5 ["Selected"]
       19 JUMP                             ; [+1]
       20 LOADN                            R6 1
       21 GETTABLEKS                       R7 R1 K6 ["Buttons"]
       23 DUPTABLE                         R8 K8 [{"Layout"}]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K9 ["createElement"]
       27 LOADK                            R10 K10 ["UIListLayout"]
       28 NEWTABLE                         R11 4 0
       30 GETIMPORT                        R12 K12 [UDim.new]
       32 LOADN                            R13 0
       33 GETTABLEKS                       R14 R3 K13 ["padding"]
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K14 ["Padding"]
       38 GETIMPORT                        R12 K18 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R12 R11 K16 ["SortOrder"]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K19 ["Change"]
       45 GETTABLEKS                       R12 R12 K20 ["AbsoluteContentSize"]
       47 GETTABLEKS                       R13 R0 K21 ["onResize"]
       49 SETTABLE                         R13 R11 R12
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R12 R12 K22 ["Ref"]
       53 GETTABLEKS                       R13 R0 K23 ["layoutRef"]
       55 SETTABLE                         R13 R11 R12
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K7 ["Layout"]
       59 GETTABLEKS                       R9 R1 K24 ["Description"]
       61 JUMPIFNOT                        R9 ; [+53]
       62 MOVE                             R10 R8
       63 GETUPVAL                         R11 1
       64 GETTABLEKS                       R11 R11 K9 ["createElement"]
       66 LOADK                            R12 K25 ["TextLabel"]
       67 GETUPVAL                         R13 2
       68 GETTABLEKS                       R13 R13 K26 ["Dictionary"]
       70 GETTABLEKS                       R13 R13 K27 ["join"]
       72 GETTABLEKS                       R14 R2 K28 ["fontStyle"]
       74 GETTABLEKS                       R14 R14 K29 ["Normal"]
       76 DUPTABLE                         R15 K39 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"], ["TextTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["Text"]}]
       77 GETIMPORT                        R16 K41 [UDim2.new]
       79 LOADN                            R17 1
       80 LOADN                            R18 0
       81 LOADN                            R19 0
       82 GETTABLEKS                       R20 R4 K42 ["description"]
       84 GETTABLEKS                       R20 R20 K43 ["height"]
       86 CALL                             R16 4 1
       87 SETTABLEKS                       R16 R15 K34 ["Size"]
       89 GETTABLEKS                       R17 R1 K44 ["Enabled"]
       91 JUMPIFNOT                        R17 ; [+2]
       92 LOADN                            R16 0
       93 JUMP                             ; [+1]
       94 LOADK                            R16 K45 [0.5]
       95 SETTABLEKS                       R16 R15 K35 ["TextTransparency"]
       97 GETIMPORT                        R16 K47 [Enum.TextXAlignment.Left]
       99 SETTABLEKS                       R16 R15 K36 ["TextXAlignment"]
      101 GETIMPORT                        R16 K49 [Enum.TextYAlignment.Top]
      103 SETTABLEKS                       R16 R15 K37 ["TextYAlignment"]
      105 GETTABLEKS                       R16 R1 K24 ["Description"]
      107 SETTABLEKS                       R16 R15 K38 ["Text"]
      109 CALL                             R13 2 -1
      110 CALL                             R11 -1 -1
      111 FASTCALL                         TABLE_INSERT ; [+2]
      112 GETIMPORT                        R9 K52 [table.insert]
      114 CALL                             R9 -1 0
      115 GETIMPORT                        R9 K54 [ipairs]
      117 MOVE                             R10 R7
      118 CALL                             R9 1 3
      119 FORGPREP_INEXT                   R9
      120 GETTABLEKS                       R14 R1 K55 ["RenderItem"]
      122 JUMPIFNOT                        R14 ; [+11]
      123 MOVE                             R15 R8
      124 GETTABLEKS                       R16 R1 K55 ["RenderItem"]
      126 MOVE                             R17 R12
      127 MOVE                             R18 R13
      128 CALL                             R16 2 -1
      129 FASTCALL                         TABLE_INSERT ; [+2]
      130 GETIMPORT                        R14 K52 [table.insert]
      132 CALL                             R14 -1 0
      133 JUMP                             ; [+54]
      134 MOVE                             R15 R8
      135 GETUPVAL                         R16 1
      136 GETTABLEKS                       R16 R16 K9 ["createElement"]
      138 GETUPVAL                         R17 3
      139 DUPTABLE                         R18 K61 [{"Title", "Id", "Description", "Selected", "Index", "Enabled", "LayoutOrder", "OnClicked", "Children"}]
      140 GETTABLEKS                       R19 R13 K56 ["Title"]
      142 SETTABLEKS                       R19 R18 K56 ["Title"]
      144 GETTABLEKS                       R19 R13 K57 ["Id"]
      146 SETTABLEKS                       R19 R18 K57 ["Id"]
      148 GETTABLEKS                       R19 R13 K24 ["Description"]
      150 SETTABLEKS                       R19 R18 K24 ["Description"]
      152 LOADB                            R19 1
      153 GETTABLEKS                       R20 R13 K57 ["Id"]
      155 JUMPIFEQ                         R20 R6 ; [+5]
      157 JUMPIFEQ                         R12 R6 ; [+2]
      159 LOADB                            R19 0 +1
      160 LOADB                            R19 1
      161 SETTABLEKS                       R19 R18 K5 ["Selected"]
      163 SETTABLEKS                       R12 R18 K58 ["Index"]
      165 GETTABLEKS                       R19 R1 K44 ["Enabled"]
      167 SETTABLEKS                       R19 R18 K44 ["Enabled"]
      169 NAMECALL                         R19 R5 K62 ["getNextOrder"]
      171 CALL                             R19 1 1
      172 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      174 NEWCLOSURE                       R19 P0
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R13
      177 SETTABLEKS                       R19 R18 K59 ["OnClicked"]
      179 GETTABLEKS                       R19 R13 K60 ["Children"]
      181 SETTABLEKS                       R19 R18 K60 ["Children"]
      183 CALL                             R16 2 -1
      184 FASTCALL                         TABLE_INSERT ; [+2]
      185 GETIMPORT                        R14 K52 [table.insert]
      187 CALL                             R14 -1 0
      188 FORGLOOP                         R9 2 [inext] ; [-69]
      190 GETIMPORT                        R9 K64 [UDim2.fromScale]
      192 LOADN                            R10 1
      193 LOADN                            R11 0
      194 CALL                             R9 2 1
      195 GETUPVAL                         R10 0
      196 GETTABLEKS                       R10 R10 K4 ["new"]
      198 CALL                             R10 0 1
      199 GETUPVAL                         R11 1
      200 GETTABLEKS                       R11 R11 K9 ["createElement"]
      202 LOADK                            R12 K65 ["Frame"]
      203 DUPTABLE                         R13 K67 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      204 GETIMPORT                        R14 K69 [Enum.AutomaticSize.Y]
      206 SETTABLEKS                       R14 R13 K66 ["AutomaticSize"]
      208 GETTABLEKS                       R15 R1 K17 ["LayoutOrder"]
      210 ORK                              R14 R15 K31 [1]
      211 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      213 SETTABLEKS                       R9 R13 K34 ["Size"]
      215 DUPTABLE                         R14 K73 [{"ListLayout", "ButtonSet", "Warning"}]
      216 GETUPVAL                         R15 1
      217 GETTABLEKS                       R15 R15 K9 ["createElement"]
      219 LOADK                            R16 K10 ["UIListLayout"]
      220 DUPTABLE                         R17 K74 [{"Padding", "SortOrder"}]
      221 GETIMPORT                        R18 K12 [UDim.new]
      223 LOADN                            R19 0
      224 GETTABLEKS                       R20 R4 K13 ["padding"]
      226 CALL                             R18 2 1
      227 SETTABLEKS                       R18 R17 K14 ["Padding"]
      229 GETIMPORT                        R18 K18 [Enum.SortOrder.LayoutOrder]
      231 SETTABLEKS                       R18 R17 K16 ["SortOrder"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K70 ["ListLayout"]
      236 GETUPVAL                         R15 1
      237 GETTABLEKS                       R15 R15 K9 ["createElement"]
      239 GETUPVAL                         R16 4
      240 DUPTABLE                         R17 K78 [{["FillDirection"], ["Title"], ["Style"] = "Subtitle", ["LayoutOrder"]}]
      241 GETUPVAL                         R19 5
      242 JUMPIFNOT                        R19 ; [+3]
      243 GETTABLEKS                       R18 R1 K75 ["FillDirection"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R18
      247 SETTABLEKS                       R18 R17 K75 ["FillDirection"]
      249 GETTABLEKS                       R18 R1 K56 ["Title"]
      251 SETTABLEKS                       R18 R17 K56 ["Title"]
      253 NAMECALL                         R18 R10 K62 ["getNextOrder"]
      255 CALL                             R18 1 1
      256 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      258 MOVE                             R18 R8
      259 CALL                             R15 3 1
      260 SETTABLEKS                       R15 R14 K71 ["ButtonSet"]
      262 GETTABLEKS                       R15 R1 K72 ["Warning"]
      264 JUMPIFNOT                        R15 ; [+47]
      265 GETUPVAL                         R15 1
      266 GETTABLEKS                       R15 R15 K9 ["createElement"]
      268 LOADK                            R16 K25 ["TextLabel"]
      269 GETUPVAL                         R17 2
      270 GETTABLEKS                       R17 R17 K26 ["Dictionary"]
      272 GETTABLEKS                       R17 R17 K27 ["join"]
      274 GETTABLEKS                       R18 R2 K28 ["fontStyle"]
      276 GETTABLEKS                       R18 R18 K77 ["Subtitle"]
      278 DUPTABLE                         R19 K80 [{["Text"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextColor3"], ["Size"], ["LayoutOrder"]}]
      279 GETTABLEKS                       R20 R1 K72 ["Warning"]
      281 SETTABLEKS                       R20 R19 K38 ["Text"]
      283 GETIMPORT                        R20 K47 [Enum.TextXAlignment.Left]
      285 SETTABLEKS                       R20 R19 K36 ["TextXAlignment"]
      287 GETTABLEKS                       R20 R4 K81 ["warningLabel"]
      289 GETTABLEKS                       R20 R20 K82 ["color"]
      291 SETTABLEKS                       R20 R19 K79 ["TextColor3"]
      293 GETIMPORT                        R20 K41 [UDim2.new]
      295 LOADN                            R21 1
      296 LOADN                            R22 0
      297 LOADN                            R23 0
      298 GETTABLEKS                       R24 R4 K81 ["warningLabel"]
      300 GETTABLEKS                       R24 R24 K43 ["height"]
      302 CALL                             R20 4 1
      303 SETTABLEKS                       R20 R19 K34 ["Size"]
      305 NAMECALL                         R20 R10 K62 ["getNextOrder"]
      307 CALL                             R20 1 1
      308 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      310 CALL                             R17 2 -1
      311 CALL                             R15 -1 1
      312 SETTABLEKS                       R15 R14 K72 ["Warning"]
      314 CALL                             R11 3 -1
      315 RETURN                           R11 -1

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
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Flags"]
       29 GETTABLEKS                       R4 R4 K10 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       31 CALL                             R3 1 1
       32 CALL                             R3 0 1
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R0 K5 ["Packages"]
       37 GETTABLEKS                       R5 R5 K11 ["Framework"]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R5 R4 K12 ["Util"]
       42 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K14 ["withContext"]
       46 GETTABLEKS                       R8 R4 K15 ["UI"]
       48 GETTABLEKS                       R9 R8 K16 ["TitledFrame"]
       50 GETTABLEKS                       R10 R5 K17 ["LayoutOrderIterator"]
       52 GETIMPORT                        R11 K4 [require]
       54 GETTABLEKS                       R12 R0 K8 ["Src"]
       56 GETTABLEKS                       R12 R12 K18 ["Components"]
       58 GETTABLEKS                       R12 R12 K19 ["RadioButton"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R1 K20 ["PureComponent"]
       63 LOADK                            R14 K21 ["RadioButtonSet"]
       64 NAMECALL                         R12 R12 K22 ["extend"]
       66 CALL                             R12 2 1
       67 DUPCLOSURE                       R13 K23 [PROTO_1]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R13 R12 K24 ["init"]
       71 DUPCLOSURE                       R13 K25 [PROTO_3]
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R13 R12 K26 ["render"]
       80 MOVE                             R13 R7
       81 DUPTABLE                         R14 K28 [{"Stylizer"}]
       82 GETTABLEKS                       R15 R6 K27 ["Stylizer"]
       84 SETTABLEKS                       R15 R14 K27 ["Stylizer"]
       86 CALL                             R13 1 1
       87 MOVE                             R14 R12
       88 CALL                             R13 1 1
       89 MOVE                             R12 R13
       90 RETURN                           R12 1
