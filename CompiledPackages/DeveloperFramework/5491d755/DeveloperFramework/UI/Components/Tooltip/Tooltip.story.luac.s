PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Tooltip"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["DEPRECATED_Button"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["LinkText"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R8 R0 K2 ["UI"]
       47 GETTABLEKS                       R7 R8 K8 ["Components"]
       49 GETTABLEKS                       R6 R7 K12 ["Pane"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K6 [require]
       54 GETTABLEKS                       R9 R0 K2 ["UI"]
       56 GETTABLEKS                       R8 R9 K8 ["Components"]
       58 GETTABLEKS                       R7 R8 K13 ["TextLabel"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K6 [require]
       63 GETTABLEKS                       R10 R0 K2 ["UI"]
       65 GETTABLEKS                       R9 R10 K8 ["Components"]
       67 GETTABLEKS                       R8 R9 K14 ["Slider"]
       69 CALL                             R7 1 1
       70 DUPTABLE                         R8 K16 [{"stories"}]
       71 NEWTABLE                         R9 0 5
       73 DUPTABLE                         R10 K19 [{"name", "story"}]
       74 LOADK                            R11 K20 ["For label"]
       75 SETTABLEKS                       R11 R10 K17 ["name"]
       77 GETTABLEKS                       R11 R1 K21 ["createElement"]
       79 MOVE                             R12 R6
       80 DUPTABLE                         R13 K24 [{"Text", "Size"}]
       81 LOADK                            R14 K25 ["Hover over this text"]
       82 SETTABLEKS                       R14 R13 K22 ["Text"]
       84 GETIMPORT                        R14 K28 [UDim2.new]
       86 LOADN                            R15 1
       87 LOADN                            R16 0
       88 LOADN                            R17 0
       89 LOADN                            R18 20
       90 CALL                             R14 4 1
       91 SETTABLEKS                       R14 R13 K23 ["Size"]
       93 DUPTABLE                         R14 K29 [{"Tooltip"}]
       94 GETTABLEKS                       R15 R1 K21 ["createElement"]
       96 MOVE                             R16 R2
       97 DUPTABLE                         R17 K30 [{"Text"}]
       98 LOADK                            R18 K31 ["An example tooltip"]
       99 SETTABLEKS                       R18 R17 K22 ["Text"]
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K9 ["Tooltip"]
      104 CALL                             R11 3 1
      105 SETTABLEKS                       R11 R10 K18 ["story"]
      107 DUPTABLE                         R11 K19 [{"name", "story"}]
      108 LOADK                            R12 K32 ["For button"]
      109 SETTABLEKS                       R12 R11 K17 ["name"]
      111 GETTABLEKS                       R12 R1 K21 ["createElement"]
      113 MOVE                             R13 R3
      114 DUPTABLE                         R14 K35 [{"Text", "Size", "Style", "OnClick"}]
      115 LOADK                            R15 K36 ["Hover over this button"]
      116 SETTABLEKS                       R15 R14 K22 ["Text"]
      118 GETIMPORT                        R15 K28 [UDim2.new]
      120 LOADN                            R16 1
      121 LOADN                            R17 0
      122 LOADN                            R18 0
      123 LOADN                            R19 32
      124 CALL                             R15 4 1
      125 SETTABLEKS                       R15 R14 K23 ["Size"]
      127 LOADK                            R15 K37 ["Round"]
      128 SETTABLEKS                       R15 R14 K33 ["Style"]
      130 DUPCLOSURE                       R15 K38 [PROTO_0]
      131 SETTABLEKS                       R15 R14 K34 ["OnClick"]
      133 DUPTABLE                         R15 K29 [{"Tooltip"}]
      134 GETTABLEKS                       R16 R1 K21 ["createElement"]
      136 MOVE                             R17 R2
      137 DUPTABLE                         R18 K30 [{"Text"}]
      138 LOADK                            R19 K39 ["Some example which is really rather long indeed!"]
      139 SETTABLEKS                       R19 R18 K22 ["Text"]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K9 ["Tooltip"]
      144 CALL                             R12 3 1
      145 SETTABLEKS                       R12 R11 K18 ["story"]
      147 DUPTABLE                         R12 K19 [{"name", "story"}]
      148 LOADK                            R13 K40 ["For automatic size child"]
      149 SETTABLEKS                       R13 R12 K17 ["name"]
      151 GETTABLEKS                       R13 R1 K21 ["createElement"]
      153 MOVE                             R14 R2
      154 DUPTABLE                         R15 K42 [{"Text", "Child"}]
      155 LOADK                            R16 K39 ["Some example which is really rather long indeed!"]
      156 SETTABLEKS                       R16 R15 K22 ["Text"]
      158 GETTABLEKS                       R16 R1 K21 ["createElement"]
      160 MOVE                             R17 R5
      161 DUPTABLE                         R18 K44 [{"Style", "Padding"}]
      162 LOADK                            R19 K45 ["BorderBox"]
      163 SETTABLEKS                       R19 R18 K33 ["Style"]
      165 LOADN                            R19 10
      166 SETTABLEKS                       R19 R18 K43 ["Padding"]
      168 DUPTABLE                         R19 K46 [{"Child"}]
      169 GETTABLEKS                       R20 R1 K21 ["createElement"]
      171 MOVE                             R21 R6
      172 DUPTABLE                         R22 K48 [{"Text", "AutomaticSize"}]
      173 LOADK                            R23 K49 ["Hover over this pane!"]
      174 SETTABLEKS                       R23 R22 K22 ["Text"]
      176 GETIMPORT                        R23 K52 [Enum.AutomaticSize.XY]
      178 SETTABLEKS                       R23 R22 K47 ["AutomaticSize"]
      180 CALL                             R20 2 1
      181 SETTABLEKS                       R20 R19 K41 ["Child"]
      183 CALL                             R16 3 1
      184 SETTABLEKS                       R16 R15 K41 ["Child"]
      186 CALL                             R13 2 1
      187 SETTABLEKS                       R13 R12 K18 ["story"]
      189 DUPTABLE                         R13 K19 [{"name", "story"}]
      190 LOADK                            R14 K53 ["Slider With Tooltip"]
      191 SETTABLEKS                       R14 R13 K17 ["name"]
      193 GETTABLEKS                       R14 R1 K21 ["createElement"]
      195 MOVE                             R15 R2
      196 DUPTABLE                         R16 K42 [{"Text", "Child"}]
      197 LOADK                            R17 K31 ["An example tooltip"]
      198 SETTABLEKS                       R17 R16 K22 ["Text"]
      200 GETTABLEKS                       R17 R1 K21 ["createElement"]
      202 MOVE                             R18 R7
      203 DUPTABLE                         R19 K58 [{"Size", "Min", "Max", "Value", "OnValueChanged"}]
      204 GETIMPORT                        R20 K28 [UDim2.new]
      206 LOADN                            R21 0
      207 LOADN                            R22 200
      208 LOADN                            R23 0
      209 LOADN                            R24 20
      210 CALL                             R20 4 1
      211 SETTABLEKS                       R20 R19 K23 ["Size"]
      213 LOADN                            R20 0
      214 SETTABLEKS                       R20 R19 K54 ["Min"]
      216 LOADN                            R20 10
      217 SETTABLEKS                       R20 R19 K55 ["Max"]
      219 LOADN                            R20 5
      220 SETTABLEKS                       R20 R19 K56 ["Value"]
      222 DUPCLOSURE                       R20 K59 [PROTO_1]
      223 SETTABLEKS                       R20 R19 K57 ["OnValueChanged"]
      225 CALL                             R17 2 1
      226 SETTABLEKS                       R17 R16 K41 ["Child"]
      228 CALL                             R14 2 1
      229 SETTABLEKS                       R14 R13 K18 ["story"]
      231 DUPTABLE                         R14 K19 [{"name", "story"}]
      232 LOADK                            R15 K60 ["Tooltip with Custom Content"]
      233 SETTABLEKS                       R15 R14 K17 ["name"]
      235 GETTABLEKS                       R15 R1 K21 ["createElement"]
      237 MOVE                             R16 R6
      238 DUPTABLE                         R17 K61 [{"AutomaticSize", "Size", "Text"}]
      239 GETIMPORT                        R18 K63 [Enum.AutomaticSize.Y]
      241 SETTABLEKS                       R18 R17 K47 ["AutomaticSize"]
      243 GETIMPORT                        R18 K28 [UDim2.new]
      245 LOADN                            R19 1
      246 LOADN                            R20 0
      247 LOADN                            R21 0
      248 LOADN                            R22 0
      249 CALL                             R18 4 1
      250 SETTABLEKS                       R18 R17 K23 ["Size"]
      252 LOADK                            R18 K25 ["Hover over this text"]
      253 SETTABLEKS                       R18 R17 K22 ["Text"]
      255 DUPTABLE                         R18 K29 [{"Tooltip"}]
      256 GETTABLEKS                       R19 R1 K21 ["createElement"]
      258 MOVE                             R20 R2
      259 DUPTABLE                         R21 K66 [{"Content", "ContentExtents"}]
      260 GETTABLEKS                       R22 R1 K21 ["createElement"]
      262 MOVE                             R23 R5
      263 DUPTABLE                         R24 K70 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Spacing"}]
      264 GETIMPORT                        R25 K63 [Enum.AutomaticSize.Y]
      266 SETTABLEKS                       R25 R24 K47 ["AutomaticSize"]
      268 GETIMPORT                        R25 K72 [Enum.HorizontalAlignment.Left]
      270 SETTABLEKS                       R25 R24 K67 ["HorizontalAlignment"]
      272 GETIMPORT                        R25 K75 [Enum.FillDirection.Vertical]
      274 SETTABLEKS                       R25 R24 K68 ["Layout"]
      276 LOADN                            R25 6
      277 SETTABLEKS                       R25 R24 K69 ["Spacing"]
      279 DUPTABLE                         R25 K76 [{"TextLabel", "LinkText"}]
      280 GETTABLEKS                       R26 R1 K21 ["createElement"]
      282 MOVE                             R27 R6
      283 DUPTABLE                         R28 K80 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextWrapped", "TextXAlignment"}]
      284 GETIMPORT                        R29 K63 [Enum.AutomaticSize.Y]
      286 SETTABLEKS                       R29 R28 K47 ["AutomaticSize"]
      288 LOADN                            R29 1
      289 SETTABLEKS                       R29 R28 K77 ["LayoutOrder"]
      291 GETIMPORT                        R29 K82 [UDim2.fromScale]
      293 LOADN                            R30 1
      294 LOADN                            R31 0
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K23 ["Size"]
      298 LOADK                            R29 K83 ["An example tooltip with text and a link"]
      299 SETTABLEKS                       R29 R28 K22 ["Text"]
      301 LOADB                            R29 1
      302 SETTABLEKS                       R29 R28 K78 ["TextWrapped"]
      304 GETIMPORT                        R29 K84 [Enum.TextXAlignment.Left]
      306 SETTABLEKS                       R29 R28 K79 ["TextXAlignment"]
      308 CALL                             R26 2 1
      309 SETTABLEKS                       R26 R25 K13 ["TextLabel"]
      311 GETTABLEKS                       R26 R1 K21 ["createElement"]
      313 MOVE                             R27 R4
      314 DUPTABLE                         R28 K85 [{"LayoutOrder", "Text", "OnClick"}]
      315 LOADN                            R29 2
      316 SETTABLEKS                       R29 R28 K77 ["LayoutOrder"]
      318 LOADK                            R29 K86 ["Click me"]
      319 SETTABLEKS                       R29 R28 K22 ["Text"]
      321 DUPCLOSURE                       R29 K87 [PROTO_2]
      322 SETTABLEKS                       R29 R28 K34 ["OnClick"]
      324 CALL                             R26 2 1
      325 SETTABLEKS                       R26 R25 K11 ["LinkText"]
      327 CALL                             R22 3 1
      328 SETTABLEKS                       R22 R21 K64 ["Content"]
      330 GETIMPORT                        R22 K89 [Vector2.new]
      332 LOADN                            R23 180
      333 LOADN                            R24 64
      334 CALL                             R22 2 1
      335 SETTABLEKS                       R22 R21 K65 ["ContentExtents"]
      337 CALL                             R19 2 1
      338 SETTABLEKS                       R19 R18 K9 ["Tooltip"]
      340 CALL                             R15 3 1
      341 SETTABLEKS                       R15 R14 K18 ["story"]
      343 SETLIST                          R9 R10 5 [1]
      345 SETTABLEKS                       R9 R8 K15 ["stories"]
      347 RETURN                           R8 1
