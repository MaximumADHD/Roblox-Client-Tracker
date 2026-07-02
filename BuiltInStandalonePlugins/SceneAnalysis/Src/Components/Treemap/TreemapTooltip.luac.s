PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R2 R0 K1 ["position"]
        4 GETTABLEKS                       R3 R0 K2 ["visible"]
        6 GETTABLEKS                       R4 R0 K3 ["localization"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R5
       11 RETURN                           R5 1
       12 GETTABLEKS                       R5 R1 K4 ["Name"]
       14 JUMPIF                           R5 ; [+8]
       15 JUMPIFNOT                        R4 ; [+6]
       16 LOADK                            R7 K5 ["Messages"]
       17 LOADK                            R8 K6 ["UnknownName"]
       18 NAMECALL                         R5 R4 K7 ["getText"]
       20 CALL                             R5 3 1
       21 JUMPIF                           R5 ; [+1]
       22 LOADK                            R5 K8 ["Unknown"]
       23 NEWTABLE                         R6 0 0
       25 GETTABLEKS                       R7 R1 K9 ["Sizes"]
       27 JUMPIFNOT                        R7 ; [+38]
       28 GETTABLEKS                       R7 R1 K9 ["Sizes"]
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 LOADK                            R12 K10 [""]
       34 GETTABLEKS                       R13 R0 K11 ["valueFormat"]
       36 JUMPIFEQKS                       R13 K12 ["count"] ; [+5]
       38 GETTABLEKS                       R13 R0 K11 ["valueFormat"]
       40 JUMPIFNOTEQKS                    R13 K13 ["instanceCount"] ; [+8]
       42 FASTCALL1                        TOSTRING R11 ; [+3]
       43 MOVE                             R14 R11
       44 GETIMPORT                        R13 K15 [tostring]
       46 CALL                             R13 1 1
       47 MOVE                             R12 R13
       48 JUMP                             ; [+4]
       49 GETUPVAL                         R13 0
       50 MOVE                             R14 R11
       51 CALL                             R13 1 1
       52 MOVE                             R12 R13
       53 MOVE                             R16 R10
       54 LOADK                            R17 K16 [": "]
       55 MOVE                             R18 R12
       56 CONCAT                           R15 R16 R18
       57 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       59 MOVE                             R14 R6
       60 GETIMPORT                        R13 K19 [table.insert]
       62 CALL                             R13 2 0
       63 FORGLOOP                         R7 2 ; [-31]
       65 JUMP                             ; [+81]
       66 LOADNIL                          R7
       67 LOADNIL                          R8
       68 GETTABLEKS                       R9 R0 K11 ["valueFormat"]
       70 JUMPIFNOTEQKS                    R9 K12 ["count"] ; [+24]
       72 GETTABLEKS                       R11 R1 K21 ["Size"]
       74 ORK                              R10 R11 K20 [0]
       75 FASTCALL1                        TOSTRING R10 ; [+2]
       76 GETIMPORT                        R9 K15 [tostring]
       78 CALL                             R9 1 1
       79 MOVE                             R7 R9
       80 JUMPIFNOT                        R4 ; [+9]
       81 LOADK                            R11 K22 ["Tooltip"]
       82 LOADK                            R12 K23 ["CountLabel"]
       83 DUPTABLE                         R13 K25 [{"value"}]
       84 SETTABLEKS                       R7 R13 K24 ["value"]
       86 NAMECALL                         R9 R4 K7 ["getText"]
       88 CALL                             R9 4 1
       89 JUMPIF                           R9 ; [+3]
       90 LOADK                            R10 K26 ["Count: "]
       91 MOVE                             R11 R7
       92 CONCAT                           R9 R10 R11
       93 MOVE                             R8 R9
       94 JUMP                             ; [+45]
       95 GETTABLEKS                       R9 R0 K11 ["valueFormat"]
       97 JUMPIFNOTEQKS                    R9 K13 ["instanceCount"] ; [+22]
       99 GETTABLEKS                       R11 R1 K21 ["Size"]
      101 ORK                              R10 R11 K20 [0]
      102 FASTCALL1                        TOSTRING R10 ; [+2]
      103 GETIMPORT                        R9 K15 [tostring]
      105 CALL                             R9 1 1
      106 MOVE                             R7 R9
      107 JUMPIFNOT                        R4 ; [+6]
      108 LOADK                            R11 K22 ["Tooltip"]
      109 LOADK                            R12 K27 ["InstanceCountLabel"]
      110 NAMECALL                         R9 R4 K7 ["getText"]
      112 CALL                             R9 3 1
      113 JUMPIF                           R9 ; [+1]
      114 LOADK                            R9 K28 ["Instance Count:"]
      115 MOVE                             R10 R9
      116 LOADK                            R11 K29 [" "]
      117 MOVE                             R12 R7
      118 CONCAT                           R8 R10 R12
      119 JUMP                             ; [+20]
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R11 R1 K21 ["Size"]
      123 ORK                              R10 R11 K20 [0]
      124 CALL                             R9 1 1
      125 MOVE                             R7 R9
      126 JUMPIFNOT                        R4 ; [+9]
      127 LOADK                            R11 K22 ["Tooltip"]
      128 LOADK                            R12 K30 ["MemoryLabel"]
      129 DUPTABLE                         R13 K25 [{"value"}]
      130 SETTABLEKS                       R7 R13 K24 ["value"]
      132 NAMECALL                         R9 R4 K7 ["getText"]
      134 CALL                             R9 4 1
      135 JUMPIF                           R9 ; [+3]
      136 LOADK                            R10 K31 ["Memory: "]
      137 MOVE                             R11 R7
      138 CONCAT                           R9 R10 R11
      139 MOVE                             R8 R9
      140 FASTCALL2                        TABLE_INSERT R6 R8 ; [+5]
      142 MOVE                             R10 R6
      143 MOVE                             R11 R8
      144 GETIMPORT                        R9 K19 [table.insert]
      146 CALL                             R9 2 0
      147 GETIMPORT                        R7 K33 [table.sort]
      149 MOVE                             R8 R6
      150 CALL                             R7 1 0
      151 DUPTABLE                         R7 K39 [{"UICorner", "UIStroke", "UIPadding", "UIListLayout", "NameLabel"}]
      152 GETUPVAL                         R8 1
      153 GETTABLEKS                       R8 R8 K40 ["createElement"]
      155 LOADK                            R9 K34 ["UICorner"]
      156 DUPTABLE                         R10 K42 [{"CornerRadius"}]
      157 GETIMPORT                        R11 K45 [UDim.new]
      159 LOADN                            R12 0
      160 LOADN                            R13 4
      161 CALL                             R11 2 1
      162 SETTABLEKS                       R11 R10 K41 ["CornerRadius"]
      164 CALL                             R8 2 1
      165 SETTABLEKS                       R8 R7 K34 ["UICorner"]
      167 GETUPVAL                         R8 1
      168 GETTABLEKS                       R8 R8 K40 ["createElement"]
      170 LOADK                            R9 K35 ["UIStroke"]
      171 DUPTABLE                         R10 K49 [{["Color"], ["Thickness"] = 1.5}]
      172 GETUPVAL                         R11 2
      173 GETTABLEKS                       R11 R11 K50 ["getTooltipStrokeColor"]
      175 CALL                             R11 0 1
      176 SETTABLEKS                       R11 R10 K46 ["Color"]
      178 CALL                             R8 2 1
      179 SETTABLEKS                       R8 R7 K35 ["UIStroke"]
      181 GETUPVAL                         R8 1
      182 GETTABLEKS                       R8 R8 K40 ["createElement"]
      184 LOADK                            R9 K36 ["UIPadding"]
      185 DUPTABLE                         R10 K55 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      186 GETIMPORT                        R11 K45 [UDim.new]
      188 LOADN                            R12 0
      189 LOADN                            R13 10
      190 CALL                             R11 2 1
      191 SETTABLEKS                       R11 R10 K51 ["PaddingLeft"]
      193 GETIMPORT                        R11 K45 [UDim.new]
      195 LOADN                            R12 0
      196 LOADN                            R13 10
      197 CALL                             R11 2 1
      198 SETTABLEKS                       R11 R10 K52 ["PaddingRight"]
      200 GETIMPORT                        R11 K45 [UDim.new]
      202 LOADN                            R12 0
      203 LOADN                            R13 8
      204 CALL                             R11 2 1
      205 SETTABLEKS                       R11 R10 K53 ["PaddingTop"]
      207 GETIMPORT                        R11 K45 [UDim.new]
      209 LOADN                            R12 0
      210 LOADN                            R13 8
      211 CALL                             R11 2 1
      212 SETTABLEKS                       R11 R10 K54 ["PaddingBottom"]
      214 CALL                             R8 2 1
      215 SETTABLEKS                       R8 R7 K36 ["UIPadding"]
      217 GETUPVAL                         R8 1
      218 GETTABLEKS                       R8 R8 K40 ["createElement"]
      220 LOADK                            R9 K37 ["UIListLayout"]
      221 DUPTABLE                         R10 K59 [{"FillDirection", "SortOrder", "Padding"}]
      222 GETIMPORT                        R11 K62 [Enum.FillDirection.Vertical]
      224 SETTABLEKS                       R11 R10 K56 ["FillDirection"]
      226 GETIMPORT                        R11 K64 [Enum.SortOrder.LayoutOrder]
      228 SETTABLEKS                       R11 R10 K57 ["SortOrder"]
      230 GETIMPORT                        R11 K45 [UDim.new]
      232 LOADN                            R12 0
      233 LOADN                            R13 4
      234 CALL                             R11 2 1
      235 SETTABLEKS                       R11 R10 K58 ["Padding"]
      237 CALL                             R8 2 1
      238 SETTABLEKS                       R8 R7 K37 ["UIListLayout"]
      240 GETUPVAL                         R8 1
      241 GETTABLEKS                       R8 R8 K40 ["createElement"]
      243 LOADK                            R9 K65 ["TextLabel"]
      244 NEWTABLE                         R10 8 0
      246 LOADN                            R11 1
      247 SETTABLEKS                       R11 R10 K63 ["LayoutOrder"]
      249 SETTABLEKS                       R5 R10 K66 ["Text"]
      251 LOADN                            R11 18
      252 SETTABLEKS                       R11 R10 K67 ["TextSize"]
      254 GETIMPORT                        R11 K70 [Enum.TextXAlignment.Left]
      256 SETTABLEKS                       R11 R10 K68 ["TextXAlignment"]
      258 LOADN                            R11 1
      259 SETTABLEKS                       R11 R10 K71 ["BackgroundTransparency"]
      261 GETIMPORT                        R11 K74 [Enum.AutomaticSize.XY]
      263 SETTABLEKS                       R11 R10 K72 ["AutomaticSize"]
      265 GETUPVAL                         R11 1
      266 GETTABLEKS                       R11 R11 K75 ["Tag"]
      268 LOADK                            R12 K76 ["SceneAnalysis-TooltipText"]
      269 SETTABLE                         R12 R10 R11
      270 CALL                             R8 2 1
      271 SETTABLEKS                       R8 R7 K38 ["NameLabel"]
      273 GETIMPORT                        R8 K78 [ipairs]
      275 MOVE                             R9 R6
      276 CALL                             R8 1 3
      277 FORGPREP_INEXT                   R8
      278 LOADK                            R14 K79 ["SizeLabel_"]
      279 FASTCALL1                        TOSTRING R11 ; [+3]
      280 MOVE                             R16 R11
      281 GETIMPORT                        R15 K15 [tostring]
      283 CALL                             R15 1 1
      284 CONCAT                           R13 R14 R15
      285 GETUPVAL                         R14 1
      286 GETTABLEKS                       R14 R14 K40 ["createElement"]
      288 LOADK                            R15 K65 ["TextLabel"]
      289 NEWTABLE                         R16 8 0
      291 LOADN                            R18 1
      292 ADD                              R17 R18 R11
      293 SETTABLEKS                       R17 R16 K63 ["LayoutOrder"]
      295 SETTABLEKS                       R12 R16 K66 ["Text"]
      297 LOADN                            R17 16
      298 SETTABLEKS                       R17 R16 K67 ["TextSize"]
      300 GETIMPORT                        R17 K70 [Enum.TextXAlignment.Left]
      302 SETTABLEKS                       R17 R16 K68 ["TextXAlignment"]
      304 LOADN                            R17 1
      305 SETTABLEKS                       R17 R16 K71 ["BackgroundTransparency"]
      307 GETIMPORT                        R17 K74 [Enum.AutomaticSize.XY]
      309 SETTABLEKS                       R17 R16 K72 ["AutomaticSize"]
      311 GETUPVAL                         R17 1
      312 GETTABLEKS                       R17 R17 K75 ["Tag"]
      314 LOADK                            R18 K76 ["SceneAnalysis-TooltipText"]
      315 SETTABLE                         R18 R16 R17
      316 CALL                             R14 2 1
      317 SETTABLE                         R14 R7 R13
      318 FORGLOOP                         R8 2 [inext] ; [-41]
      320 GETUPVAL                         R8 1
      321 GETTABLEKS                       R8 R8 K40 ["createElement"]
      323 LOADK                            R9 K80 ["Frame"]
      324 NEWTABLE                         R10 8 0
      326 GETIMPORT                        R11 K74 [Enum.AutomaticSize.XY]
      328 SETTABLEKS                       R11 R10 K72 ["AutomaticSize"]
      330 GETIMPORT                        R11 K82 [Vector2.new]
      332 LOADN                            R12 0
      333 LOADN                            R13 0
      334 CALL                             R11 2 1
      335 SETTABLEKS                       R11 R10 K83 ["AnchorPoint"]
      337 SETTABLEKS                       R2 R10 K84 ["Position"]
      339 LOADN                            R11 0
      340 SETTABLEKS                       R11 R10 K85 ["BorderSizePixel"]
      342 LOADN                            R11 100
      343 SETTABLEKS                       R11 R10 K86 ["ZIndex"]
      345 SETTABLEKS                       R3 R10 K87 ["Visible"]
      347 GETUPVAL                         R11 1
      348 GETTABLEKS                       R11 R11 K88 ["Change"]
      350 GETTABLEKS                       R11 R11 K89 ["AbsoluteSize"]
      352 GETTABLEKS                       R12 R0 K90 ["onSizeChange"]
      354 SETTABLE                         R12 R10 R11
      355 GETUPVAL                         R11 1
      356 GETTABLEKS                       R11 R11 K75 ["Tag"]
      358 LOADK                            R12 K91 ["SceneAnalysis-TooltipFill"]
      359 SETTABLE                         R12 R10 R11
      360 MOVE                             R11 R7
      361 CALL                             R8 3 1
      362 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["formatSize"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Resources"]
       29 GETTABLEKS                       R4 R4 K12 ["StyleConstants"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
