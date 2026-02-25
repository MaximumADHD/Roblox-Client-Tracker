PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["layoutRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"maxHeight"}]
        9 GETTABLEKS                       R5 R0 K4 ["AbsoluteContentSize"]
       11 GETTABLEKS                       R4 R5 K5 ["Y"]
       13 SETTABLEKS                       R4 R3 K2 ["maxHeight"]
       15 NAMECALL                         R1 R1 K6 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"maxHeight"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["maxHeight"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["layoutRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onResize"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SelectionChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["radioButton"]
        6 GETTABLEKS                       R4 R2 K3 ["radioButtonSet"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["new"]
       11 CALL                             R5 0 1
       12 LOADNIL                          R6
       13 GETTABLEKS                       R7 R1 K5 ["Selected"]
       15 JUMPIFEQKNIL                     R7 ; [+4]
       17 GETTABLEKS                       R6 R1 K5 ["Selected"]
       19 JUMP                             ; [+1]
       20 LOADN                            R6 1
       21 GETTABLEKS                       R7 R1 K6 ["Buttons"]
       23 DUPTABLE                         R8 K8 [{"Layout"}]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R9 R10 K9 ["createElement"]
       27 LOADK                            R10 K10 ["UIListLayout"]
       28 NEWTABLE                         R11 4 0
       30 GETIMPORT                        R12 K12 [UDim.new]
       32 LOADN                            R13 0
       33 GETTABLEKS                       R14 R3 K13 ["padding"]
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K14 ["Padding"]
       38 GETIMPORT                        R12 K18 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R12 R11 K16 ["SortOrder"]
       42 GETUPVAL                         R14 1
       43 GETTABLEKS                       R13 R14 K19 ["Change"]
       45 GETTABLEKS                       R12 R13 K20 ["AbsoluteContentSize"]
       47 GETTABLEKS                       R13 R0 K21 ["onResize"]
       49 SETTABLE                         R13 R11 R12
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R12 R13 K22 ["Ref"]
       53 GETTABLEKS                       R13 R0 K23 ["layoutRef"]
       55 SETTABLE                         R13 R11 R12
       56 CALL                             R9 2 1
       57 SETTABLEKS                       R9 R8 K7 ["Layout"]
       59 GETTABLEKS                       R9 R1 K24 ["Description"]
       61 JUMPIFNOT                        R9 ; [+59]
       62 MOVE                             R10 R8
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R11 R12 K9 ["createElement"]
       66 LOADK                            R12 K25 ["TextLabel"]
       67 GETUPVAL                         R15 2
       68 GETTABLEKS                       R14 R15 K26 ["Dictionary"]
       70 GETTABLEKS                       R13 R14 K27 ["join"]
       72 GETTABLEKS                       R15 R2 K28 ["fontStyle"]
       74 GETTABLEKS                       R14 R15 K29 ["Normal"]
       76 DUPTABLE                         R15 K37 [{"BackgroundTransparency", "BorderSizePixel", "Size", "TextTransparency", "TextXAlignment", "TextYAlignment", "Text"}]
       77 LOADN                            R16 1
       78 SETTABLEKS                       R16 R15 K30 ["BackgroundTransparency"]
       80 LOADN                            R16 0
       81 SETTABLEKS                       R16 R15 K31 ["BorderSizePixel"]
       83 GETIMPORT                        R16 K39 [UDim2.new]
       85 LOADN                            R17 1
       86 LOADN                            R18 0
       87 LOADN                            R19 0
       88 GETTABLEKS                       R21 R4 K40 ["description"]
       90 GETTABLEKS                       R20 R21 K41 ["height"]
       92 CALL                             R16 4 1
       93 SETTABLEKS                       R16 R15 K32 ["Size"]
       95 GETTABLEKS                       R17 R1 K42 ["Enabled"]
       97 JUMPIFNOT                        R17 ; [+2]
       98 LOADN                            R16 0
       99 JUMP                             ; [+1]
      100 LOADK                            R16 K43 [0.5]
      101 SETTABLEKS                       R16 R15 K33 ["TextTransparency"]
      103 GETIMPORT                        R16 K45 [Enum.TextXAlignment.Left]
      105 SETTABLEKS                       R16 R15 K34 ["TextXAlignment"]
      107 GETIMPORT                        R16 K47 [Enum.TextYAlignment.Top]
      109 SETTABLEKS                       R16 R15 K35 ["TextYAlignment"]
      111 GETTABLEKS                       R16 R1 K24 ["Description"]
      113 SETTABLEKS                       R16 R15 K36 ["Text"]
      115 CALL                             R13 2 -1
      116 CALL                             R11 -1 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R9 K50 [table.insert]
      120 CALL                             R9 -1 0
      121 GETIMPORT                        R9 K52 [ipairs]
      123 MOVE                             R10 R7
      124 CALL                             R9 1 3
      125 FORGPREP_INEXT                   R9
      126 GETTABLEKS                       R14 R1 K53 ["RenderItem"]
      128 JUMPIFNOT                        R14 ; [+11]
      129 MOVE                             R15 R8
      130 GETTABLEKS                       R16 R1 K53 ["RenderItem"]
      132 MOVE                             R17 R12
      133 MOVE                             R18 R13
      134 CALL                             R16 2 -1
      135 FASTCALL                         TABLE_INSERT ; [+2]
      136 GETIMPORT                        R14 K50 [table.insert]
      138 CALL                             R14 -1 0
      139 JUMP                             ; [+54]
      140 MOVE                             R15 R8
      141 GETUPVAL                         R17 1
      142 GETTABLEKS                       R16 R17 K9 ["createElement"]
      144 GETUPVAL                         R17 3
      145 DUPTABLE                         R18 K59 [{"Title", "Id", "Description", "Selected", "Index", "Enabled", "LayoutOrder", "OnClicked", "Children"}]
      146 GETTABLEKS                       R19 R13 K54 ["Title"]
      148 SETTABLEKS                       R19 R18 K54 ["Title"]
      150 GETTABLEKS                       R19 R13 K55 ["Id"]
      152 SETTABLEKS                       R19 R18 K55 ["Id"]
      154 GETTABLEKS                       R19 R13 K24 ["Description"]
      156 SETTABLEKS                       R19 R18 K24 ["Description"]
      158 LOADB                            R19 1
      159 GETTABLEKS                       R20 R13 K55 ["Id"]
      161 JUMPIFEQ                         R20 R6 ; [+5]
      163 JUMPIFEQ                         R12 R6 ; [+2]
      165 LOADB                            R19 0 +1
      166 LOADB                            R19 1
      167 SETTABLEKS                       R19 R18 K5 ["Selected"]
      169 SETTABLEKS                       R12 R18 K56 ["Index"]
      171 GETTABLEKS                       R19 R1 K42 ["Enabled"]
      173 SETTABLEKS                       R19 R18 K42 ["Enabled"]
      175 NAMECALL                         R19 R5 K60 ["getNextOrder"]
      177 CALL                             R19 1 1
      178 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      180 NEWCLOSURE                       R19 P0
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R13
      183 SETTABLEKS                       R19 R18 K57 ["OnClicked"]
      185 GETTABLEKS                       R19 R13 K58 ["Children"]
      187 SETTABLEKS                       R19 R18 K58 ["Children"]
      189 CALL                             R16 2 -1
      190 FASTCALL                         TABLE_INSERT ; [+2]
      191 GETIMPORT                        R14 K50 [table.insert]
      193 CALL                             R14 -1 0
      194 FORGLOOP                         R9 2 [inext] ; [-69]
      196 GETIMPORT                        R9 K62 [UDim2.fromScale]
      198 LOADN                            R10 1
      199 LOADN                            R11 0
      200 CALL                             R9 2 1
      201 GETUPVAL                         R11 0
      202 GETTABLEKS                       R10 R11 K4 ["new"]
      204 CALL                             R10 0 1
      205 GETUPVAL                         R12 1
      206 GETTABLEKS                       R11 R12 K9 ["createElement"]
      208 LOADK                            R12 K63 ["Frame"]
      209 DUPTABLE                         R13 K65 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder", "Size"}]
      210 GETIMPORT                        R14 K67 [Enum.AutomaticSize.Y]
      212 SETTABLEKS                       R14 R13 K64 ["AutomaticSize"]
      214 LOADN                            R14 1
      215 SETTABLEKS                       R14 R13 K30 ["BackgroundTransparency"]
      217 LOADN                            R14 0
      218 SETTABLEKS                       R14 R13 K31 ["BorderSizePixel"]
      220 GETTABLEKS                       R15 R1 K17 ["LayoutOrder"]
      222 ORK                              R14 R15 K68 [1]
      223 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      225 SETTABLEKS                       R9 R13 K32 ["Size"]
      227 DUPTABLE                         R14 K72 [{"ListLayout", "ButtonSet", "Warning"}]
      228 GETUPVAL                         R16 1
      229 GETTABLEKS                       R15 R16 K9 ["createElement"]
      231 LOADK                            R16 K10 ["UIListLayout"]
      232 DUPTABLE                         R17 K73 [{"Padding", "SortOrder"}]
      233 GETIMPORT                        R18 K12 [UDim.new]
      235 LOADN                            R19 0
      236 GETTABLEKS                       R20 R4 K13 ["padding"]
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K14 ["Padding"]
      241 GETIMPORT                        R18 K18 [Enum.SortOrder.LayoutOrder]
      243 SETTABLEKS                       R18 R17 K16 ["SortOrder"]
      245 CALL                             R15 2 1
      246 SETTABLEKS                       R15 R14 K69 ["ListLayout"]
      248 GETUPVAL                         R16 1
      249 GETTABLEKS                       R15 R16 K9 ["createElement"]
      251 GETUPVAL                         R16 4
      252 DUPTABLE                         R17 K76 [{"FillDirection", "Title", "Style", "LayoutOrder"}]
      253 GETUPVAL                         R19 5
      254 JUMPIFNOT                        R19 ; [+3]
      255 GETTABLEKS                       R18 R1 K74 ["FillDirection"]
      257 JUMP                             ; [+1]
      258 LOADNIL                          R18
      259 SETTABLEKS                       R18 R17 K74 ["FillDirection"]
      261 GETTABLEKS                       R18 R1 K54 ["Title"]
      263 SETTABLEKS                       R18 R17 K54 ["Title"]
      265 LOADK                            R18 K77 ["Subtitle"]
      266 SETTABLEKS                       R18 R17 K75 ["Style"]
      268 NAMECALL                         R18 R10 K60 ["getNextOrder"]
      270 CALL                             R18 1 1
      271 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      273 MOVE                             R18 R8
      274 CALL                             R15 3 1
      275 SETTABLEKS                       R15 R14 K70 ["ButtonSet"]
      277 GETTABLEKS                       R15 R1 K71 ["Warning"]
      279 JUMPIFNOT                        R15 ; [+50]
      280 GETUPVAL                         R16 1
      281 GETTABLEKS                       R15 R16 K9 ["createElement"]
      283 LOADK                            R16 K25 ["TextLabel"]
      284 GETUPVAL                         R19 2
      285 GETTABLEKS                       R18 R19 K26 ["Dictionary"]
      287 GETTABLEKS                       R17 R18 K27 ["join"]
      289 GETTABLEKS                       R19 R2 K28 ["fontStyle"]
      291 GETTABLEKS                       R18 R19 K77 ["Subtitle"]
      293 DUPTABLE                         R19 K79 [{"Text", "BackgroundTransparency", "TextXAlignment", "TextColor3", "Size", "LayoutOrder"}]
      294 GETTABLEKS                       R20 R1 K71 ["Warning"]
      296 SETTABLEKS                       R20 R19 K36 ["Text"]
      298 LOADN                            R20 1
      299 SETTABLEKS                       R20 R19 K30 ["BackgroundTransparency"]
      301 GETIMPORT                        R20 K45 [Enum.TextXAlignment.Left]
      303 SETTABLEKS                       R20 R19 K34 ["TextXAlignment"]
      305 GETTABLEKS                       R21 R4 K80 ["warningLabel"]
      307 GETTABLEKS                       R20 R21 K81 ["color"]
      309 SETTABLEKS                       R20 R19 K78 ["TextColor3"]
      311 GETIMPORT                        R20 K39 [UDim2.new]
      313 LOADN                            R21 1
      314 LOADN                            R22 0
      315 LOADN                            R23 0
      316 GETTABLEKS                       R25 R4 K80 ["warningLabel"]
      318 GETTABLEKS                       R24 R25 K41 ["height"]
      320 CALL                             R20 4 1
      321 SETTABLEKS                       R20 R19 K32 ["Size"]
      323 NAMECALL                         R20 R10 K60 ["getNextOrder"]
      325 CALL                             R20 1 1
      326 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      328 CALL                             R17 2 -1
      329 CALL                             R15 -1 1
      330 SETTABLEKS                       R15 R14 K71 ["Warning"]
      332 CALL                             R11 3 -1
      333 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Flags"]
       29 GETTABLEKS                       R4 R5 K10 ["getFFlagGameSettingsFixMoreLayoutIssues"]
       31 CALL                             R3 1 1
       32 CALL                             R3 0 1
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R6 R0 K5 ["Packages"]
       37 GETTABLEKS                       R5 R6 K11 ["Framework"]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R5 R4 K12 ["Util"]
       42 GETTABLEKS                       R6 R4 K13 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K14 ["withContext"]
       46 GETTABLEKS                       R8 R4 K15 ["UI"]
       48 GETTABLEKS                       R9 R8 K16 ["TitledFrame"]
       50 GETTABLEKS                       R10 R5 K17 ["LayoutOrderIterator"]
       52 GETIMPORT                        R11 K4 [require]
       54 GETTABLEKS                       R14 R0 K8 ["Src"]
       56 GETTABLEKS                       R13 R14 K18 ["Components"]
       58 GETTABLEKS                       R12 R13 K19 ["RadioButton"]
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
