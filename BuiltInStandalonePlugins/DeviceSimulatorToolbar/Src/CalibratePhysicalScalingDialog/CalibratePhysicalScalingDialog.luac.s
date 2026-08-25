PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 NEWTABLE                         R2 0 0
        8 LOADN                            R5 1
        9 LOADN                            R3 40
       10 LOADN                            R4 1
       11 FORNPREP                         R3
       12 SUBK                             R7 R5 K3 [1]
       13 DIVK                             R6 R7 K2 [40]
       14 MODK                             R7 R5 K4 [2]
       15 JUMPIFNOTEQKN                    R7 K3 [1] ; [+56]
       17 MOVE                             R8 R2
       18 GETUPVAL                         R9 1
       19 GETUPVAL                         R10 2
       20 DUPTABLE                         R11 K10 [{["Position"], ["Size"], ["backgroundStyle"], ["ZIndex"] = 3}]
       21 GETTABLEKS                       R13 R0 K11 ["orientation"]
       23 JUMPIFNOTEQKS                    R13 K12 ["horizontal"] ; [+7]
       25 GETIMPORT                        R12 K15 [UDim2.fromScale]
       27 MOVE                             R13 R6
       28 LOADN                            R14 0
       29 CALL                             R12 2 1
       30 JUMP                             ; [+5]
       31 GETIMPORT                        R12 K15 [UDim2.fromScale]
       33 LOADN                            R13 0
       34 MOVE                             R14 R6
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K5 ["Position"]
       38 GETTABLEKS                       R13 R0 K11 ["orientation"]
       40 JUMPIFNOTEQKS                    R13 K12 ["horizontal"] ; [+9]
       42 GETIMPORT                        R12 K17 [UDim2.new]
       44 LOADK                            R13 K18 [0.025]
       45 LOADN                            R14 0
       46 LOADN                            R15 1
       47 LOADN                            R16 0
       48 CALL                             R12 4 1
       49 JUMP                             ; [+7]
       50 GETIMPORT                        R12 K17 [UDim2.new]
       52 LOADN                            R13 1
       53 LOADN                            R14 0
       54 LOADK                            R15 K18 [0.025]
       55 LOADN                            R16 0
       56 CALL                             R12 4 1
       57 SETTABLEKS                       R12 R11 K6 ["Size"]
       59 GETTABLEKS                       R12 R1 K19 ["Color"]
       61 GETTABLEKS                       R12 R12 K20 ["System"]
       63 GETTABLEKS                       R12 R12 K21 ["Emphasis"]
       65 SETTABLEKS                       R12 R11 K7 ["backgroundStyle"]
       67 CALL                             R9 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R7 K24 [table.insert]
       71 CALL                             R7 -1 0
       72 FORNLOOP                         R3
       73 GETUPVAL                         R3 1
       74 GETUPVAL                         R4 2
       75 DUPTABLE                         R5 K26 [{["Position"], ["Size"], ["ZIndex"] = 3, ["testId"]}]
       76 GETTABLEKS                       R7 R0 K11 ["orientation"]
       78 JUMPIFNOTEQKS                    R7 K12 ["horizontal"] ; [+8]
       80 GETIMPORT                        R6 K15 [UDim2.fromScale]
       82 LOADN                            R7 0
       83 GETTABLEKS                       R8 R0 K27 ["position"]
       85 CALL                             R6 2 1
       86 JUMP                             ; [+6]
       87 GETIMPORT                        R6 K15 [UDim2.fromScale]
       89 GETTABLEKS                       R7 R0 K27 ["position"]
       91 LOADN                            R8 0
       92 CALL                             R6 2 1
       93 SETTABLEKS                       R6 R5 K5 ["Position"]
       95 GETTABLEKS                       R7 R0 K11 ["orientation"]
       97 JUMPIFNOTEQKS                    R7 K12 ["horizontal"] ; [+9]
       99 GETIMPORT                        R6 K17 [UDim2.new]
      101 LOADN                            R7 1
      102 LOADN                            R8 0
      103 LOADN                            R9 0
      104 LOADN                            R10 1
      105 CALL                             R6 4 1
      106 JUMP                             ; [+7]
      107 GETIMPORT                        R6 K17 [UDim2.new]
      109 LOADN                            R7 0
      110 LOADN                            R8 1
      111 LOADN                            R9 1
      112 LOADN                            R10 0
      113 CALL                             R6 4 1
      114 SETTABLEKS                       R6 R5 K6 ["Size"]
      116 GETTABLEKS                       R6 R0 K25 ["testId"]
      118 SETTABLEKS                       R6 R5 K25 ["testId"]
      120 MOVE                             R6 R2
      121 CALL                             R3 3 -1
      122 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K6 [{"Position", "Size", "backgroundStyle", "cornerRadius"}]
        9 GETTABLEKS                       R5 R0 K2 ["Position"]
       11 SETTABLEKS                       R5 R4 K2 ["Position"]
       13 GETTABLEKS                       R5 R0 K3 ["Size"]
       15 SETTABLEKS                       R5 R4 K3 ["Size"]
       17 GETTABLEKS                       R5 R1 K7 ["Color"]
       19 GETTABLEKS                       R5 R5 K8 ["Stroke"]
       21 GETTABLEKS                       R5 R5 K9 ["Default"]
       23 SETTABLEKS                       R5 R4 K4 ["backgroundStyle"]
       25 GETIMPORT                        R5 K12 [UDim.new]
       27 LOADN                            R6 0
       28 GETTABLEKS                       R7 R1 K13 ["Radius"]
       30 GETTABLEKS                       R7 R7 K14 ["Small"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K5 ["cornerRadius"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["getCardSize"]
        9 GETTABLEKS                       R3 R0 K3 ["dpi"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 3
       14 DUPTABLE                         R5 K16 [{["AnchorPoint"], ["Position"], ["Size"], ["backgroundStyle"], ["cornerRadius"], ["stroke"], ["ClipsDescendants"] = True, ["ZIndex"] = 2, ["testId"] = "physical-id-card"}]
       15 GETIMPORT                        R6 K19 [Vector2.new]
       17 LOADK                            R7 K20 [0.5]
       18 LOADK                            R8 K20 [0.5]
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K4 ["AnchorPoint"]
       22 GETIMPORT                        R6 K23 [UDim2.fromScale]
       24 LOADK                            R7 K20 [0.5]
       25 LOADK                            R8 K20 [0.5]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K5 ["Position"]
       29 GETIMPORT                        R6 K25 [UDim2.fromOffset]
       31 GETTABLEKS                       R7 R2 K26 ["X"]
       33 GETTABLEKS                       R8 R2 K27 ["Y"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K6 ["Size"]
       38 GETTABLEKS                       R6 R1 K28 ["Color"]
       40 GETTABLEKS                       R6 R6 K29 ["Shift"]
       42 GETTABLEKS                       R6 R6 K30 ["Shift_400"]
       44 SETTABLEKS                       R6 R5 K7 ["backgroundStyle"]
       46 GETIMPORT                        R6 K32 [UDim.new]
       48 LOADN                            R7 0
       49 GETTABLEKS                       R8 R1 K33 ["Radius"]
       51 GETTABLEKS                       R8 R8 K34 ["Large"]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K8 ["cornerRadius"]
       56 DUPTABLE                         R6 K37 [{"Color", "Transparency", "Thickness"}]
       57 GETTABLEKS                       R7 R1 K28 ["Color"]
       59 GETTABLEKS                       R7 R7 K38 ["Stroke"]
       61 GETTABLEKS                       R7 R7 K39 ["Emphasis"]
       63 GETTABLEKS                       R7 R7 K40 ["Color3"]
       65 SETTABLEKS                       R7 R6 K28 ["Color"]
       67 GETTABLEKS                       R7 R1 K28 ["Color"]
       69 GETTABLEKS                       R7 R7 K38 ["Stroke"]
       71 GETTABLEKS                       R7 R7 K39 ["Emphasis"]
       73 GETTABLEKS                       R7 R7 K35 ["Transparency"]
       75 SETTABLEKS                       R7 R6 K35 ["Transparency"]
       77 GETTABLEKS                       R7 R1 K38 ["Stroke"]
       79 GETTABLEKS                       R7 R7 K41 ["Standard"]
       81 SETTABLEKS                       R7 R6 K36 ["Thickness"]
       83 SETTABLEKS                       R6 R5 K9 ["stroke"]
       85 DUPTABLE                         R6 K51 [{"Header", "Name", "Field1Label", "Field1", "Field2Label", "Field2", "Field3Label", "Field3", "Photo"}]
       86 GETUPVAL                         R7 2
       87 GETUPVAL                         R8 3
       88 DUPTABLE                         R9 K53 [{["Size"], ["backgroundStyle"], ["cornerRadius"], ["testId"] = "physical-id-card-header"}]
       89 GETIMPORT                        R10 K23 [UDim2.fromScale]
       91 LOADN                            R11 1
       92 LOADK                            R12 K54 [0.24]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K6 ["Size"]
       96 GETTABLEKS                       R10 R1 K28 ["Color"]
       98 GETTABLEKS                       R10 R10 K55 ["Surface"]
      100 GETTABLEKS                       R10 R10 K56 ["Surface_300"]
      102 SETTABLEKS                       R10 R9 K7 ["backgroundStyle"]
      104 GETIMPORT                        R10 K32 [UDim.new]
      106 LOADN                            R11 0
      107 GETTABLEKS                       R12 R1 K33 ["Radius"]
      109 GETTABLEKS                       R12 R12 K34 ["Large"]
      111 CALL                             R10 2 1
      112 SETTABLEKS                       R10 R9 K8 ["cornerRadius"]
      114 DUPTABLE                         R10 K59 [{"BottomFill", "Title"}]
      115 GETUPVAL                         R11 2
      116 GETUPVAL                         R12 3
      117 DUPTABLE                         R13 K61 [{["Position"], ["Size"], ["backgroundStyle"], ["testId"] = "physical-id-card-header-bottom-fill"}]
      118 GETIMPORT                        R14 K23 [UDim2.fromScale]
      120 LOADN                            R15 0
      121 LOADK                            R16 K20 [0.5]
      122 CALL                             R14 2 1
      123 SETTABLEKS                       R14 R13 K5 ["Position"]
      125 GETIMPORT                        R14 K23 [UDim2.fromScale]
      127 LOADN                            R15 1
      128 LOADK                            R16 K20 [0.5]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K6 ["Size"]
      132 GETTABLEKS                       R14 R1 K28 ["Color"]
      134 GETTABLEKS                       R14 R14 K55 ["Surface"]
      136 GETTABLEKS                       R14 R14 K56 ["Surface_300"]
      138 SETTABLEKS                       R14 R13 K7 ["backgroundStyle"]
      140 CALL                             R11 2 1
      141 SETTABLEKS                       R11 R10 K57 ["BottomFill"]
      143 GETUPVAL                         R11 2
      144 GETUPVAL                         R12 4
      145 DUPTABLE                         R13 K62 [{"Position", "Size"}]
      146 GETIMPORT                        R14 K23 [UDim2.fromScale]
      148 LOADK                            R15 K63 [0.18]
      149 LOADK                            R16 K64 [0.32]
      150 CALL                             R14 2 1
      151 SETTABLEKS                       R14 R13 K5 ["Position"]
      153 GETIMPORT                        R14 K23 [UDim2.fromScale]
      155 LOADK                            R15 K65 [0.64]
      156 LOADK                            R16 K66 [0.36]
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K6 ["Size"]
      160 CALL                             R11 2 1
      161 SETTABLEKS                       R11 R10 K58 ["Title"]
      163 CALL                             R7 3 1
      164 SETTABLEKS                       R7 R6 K42 ["Header"]
      166 GETUPVAL                         R7 2
      167 GETUPVAL                         R8 4
      168 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      169 GETIMPORT                        R10 K23 [UDim2.fromScale]
      171 LOADK                            R11 K67 [0.045]
      172 LOADK                            R12 K68 [0.41]
      173 CALL                             R10 2 1
      174 SETTABLEKS                       R10 R9 K5 ["Position"]
      176 GETIMPORT                        R10 K23 [UDim2.fromScale]
      178 LOADK                            R11 K64 [0.32]
      179 LOADK                            R12 K69 [0.1]
      180 CALL                             R10 2 1
      181 SETTABLEKS                       R10 R9 K6 ["Size"]
      183 CALL                             R7 2 1
      184 SETTABLEKS                       R7 R6 K43 ["Name"]
      186 GETUPVAL                         R7 2
      187 GETUPVAL                         R8 4
      188 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      189 GETIMPORT                        R10 K23 [UDim2.fromScale]
      191 LOADK                            R11 K67 [0.045]
      192 LOADK                            R12 K70 [0.56]
      193 CALL                             R10 2 1
      194 SETTABLEKS                       R10 R9 K5 ["Position"]
      196 GETIMPORT                        R10 K23 [UDim2.fromScale]
      198 LOADK                            R11 K71 [0.12]
      199 LOADK                            R12 K72 [0.07]
      200 CALL                             R10 2 1
      201 SETTABLEKS                       R10 R9 K6 ["Size"]
      203 CALL                             R7 2 1
      204 SETTABLEKS                       R7 R6 K44 ["Field1Label"]
      206 GETUPVAL                         R7 2
      207 GETUPVAL                         R8 4
      208 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      209 GETIMPORT                        R10 K23 [UDim2.fromScale]
      211 LOADK                            R11 K73 [0.19]
      212 LOADK                            R12 K70 [0.56]
      213 CALL                             R10 2 1
      214 SETTABLEKS                       R10 R9 K5 ["Position"]
      216 GETIMPORT                        R10 K23 [UDim2.fromScale]
      218 LOADK                            R11 K74 [0.3]
      219 LOADK                            R12 K72 [0.07]
      220 CALL                             R10 2 1
      221 SETTABLEKS                       R10 R9 K6 ["Size"]
      223 CALL                             R7 2 1
      224 SETTABLEKS                       R7 R6 K45 ["Field1"]
      226 GETUPVAL                         R7 2
      227 GETUPVAL                         R8 4
      228 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      229 GETIMPORT                        R10 K23 [UDim2.fromScale]
      231 LOADK                            R11 K67 [0.045]
      232 LOADK                            R12 K75 [0.69]
      233 CALL                             R10 2 1
      234 SETTABLEKS                       R10 R9 K5 ["Position"]
      236 GETIMPORT                        R10 K23 [UDim2.fromScale]
      238 LOADK                            R11 K73 [0.19]
      239 LOADK                            R12 K72 [0.07]
      240 CALL                             R10 2 1
      241 SETTABLEKS                       R10 R9 K6 ["Size"]
      243 CALL                             R7 2 1
      244 SETTABLEKS                       R7 R6 K46 ["Field2Label"]
      246 GETUPVAL                         R7 2
      247 GETUPVAL                         R8 4
      248 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      249 GETIMPORT                        R10 K23 [UDim2.fromScale]
      251 LOADK                            R11 K76 [0.27]
      252 LOADK                            R12 K75 [0.69]
      253 CALL                             R10 2 1
      254 SETTABLEKS                       R10 R9 K5 ["Position"]
      256 GETIMPORT                        R10 K23 [UDim2.fromScale]
      258 LOADK                            R11 K77 [0.22]
      259 LOADK                            R12 K72 [0.07]
      260 CALL                             R10 2 1
      261 SETTABLEKS                       R10 R9 K6 ["Size"]
      263 CALL                             R7 2 1
      264 SETTABLEKS                       R7 R6 K47 ["Field2"]
      266 GETUPVAL                         R7 2
      267 GETUPVAL                         R8 4
      268 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      269 GETIMPORT                        R10 K23 [UDim2.fromScale]
      271 LOADK                            R11 K67 [0.045]
      272 LOADK                            R12 K78 [0.82]
      273 CALL                             R10 2 1
      274 SETTABLEKS                       R10 R9 K5 ["Position"]
      276 GETIMPORT                        R10 K23 [UDim2.fromScale]
      278 LOADK                            R11 K77 [0.22]
      279 LOADK                            R12 K72 [0.07]
      280 CALL                             R10 2 1
      281 SETTABLEKS                       R10 R9 K6 ["Size"]
      283 CALL                             R7 2 1
      284 SETTABLEKS                       R7 R6 K48 ["Field3Label"]
      286 GETUPVAL                         R7 2
      287 GETUPVAL                         R8 4
      288 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      289 GETIMPORT                        R10 K23 [UDim2.fromScale]
      291 LOADK                            R11 K74 [0.3]
      292 LOADK                            R12 K78 [0.82]
      293 CALL                             R10 2 1
      294 SETTABLEKS                       R10 R9 K5 ["Position"]
      296 GETIMPORT                        R10 K23 [UDim2.fromScale]
      298 LOADK                            R11 K73 [0.19]
      299 LOADK                            R12 K72 [0.07]
      300 CALL                             R10 2 1
      301 SETTABLEKS                       R10 R9 K6 ["Size"]
      303 CALL                             R7 2 1
      304 SETTABLEKS                       R7 R6 K49 ["Field3"]
      306 GETUPVAL                         R7 2
      307 GETUPVAL                         R8 4
      308 DUPTABLE                         R9 K62 [{"Position", "Size"}]
      309 GETIMPORT                        R10 K23 [UDim2.fromScale]
      311 LOADK                            R11 K65 [0.64]
      312 LOADK                            R12 K66 [0.36]
      313 CALL                             R10 2 1
      314 SETTABLEKS                       R10 R9 K5 ["Position"]
      316 GETIMPORT                        R10 K23 [UDim2.fromScale]
      318 LOADK                            R11 K79 [0.31]
      319 LOADK                            R12 K80 [0.54]
      320 CALL                             R10 2 1
      321 SETTABLEKS                       R10 R9 K6 ["Size"]
      323 CALL                             R7 2 1
      324 SETTABLEKS                       R7 R6 K50 ["Photo"]
      326 CALL                             R3 3 -1
      327 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K10 [{["LayoutOrder"] = 1, ["Size"], ["backgroundStyle"], ["ClipsDescendants"] = True, ["testId"] = "calibration-preview"}]
        9 GETIMPORT                        R5 K13 [UDim2.new]
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 LOADN                            R8 0
       14 LOADN                            R9 445
       15 CALL                             R5 4 1
       16 SETTABLEKS                       R5 R4 K4 ["Size"]
       18 GETTABLEKS                       R5 R1 K14 ["Color"]
       20 GETTABLEKS                       R5 R5 K15 ["OverMedia"]
       22 GETTABLEKS                       R5 R5 K16 ["OverMedia_0"]
       24 SETTABLEKS                       R5 R4 K5 ["backgroundStyle"]
       26 DUPTABLE                         R5 K22 [{"Card", "HorizontalThird1", "HorizontalThird2", "VerticalThird1", "VerticalThird2"}]
       27 GETUPVAL                         R6 1
       28 GETUPVAL                         R7 3
       29 DUPTABLE                         R8 K24 [{"dpi"}]
       30 GETTABLEKS                       R9 R0 K23 ["dpi"]
       32 SETTABLEKS                       R9 R8 K23 ["dpi"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K17 ["Card"]
       37 GETUPVAL                         R6 1
       38 GETUPVAL                         R7 4
       39 DUPTABLE                         R8 K30 [{["orientation"] = "horizontal", ["position"] = 0.333333333333333, ["testId"] = "horizontal-third-1"}]
       40 CALL                             R6 2 1
       41 SETTABLEKS                       R6 R5 K18 ["HorizontalThird1"]
       43 GETUPVAL                         R6 1
       44 GETUPVAL                         R7 4
       45 DUPTABLE                         R8 K33 [{["orientation"] = "horizontal", ["position"] = 0.666666666666667, ["testId"] = "horizontal-third-2"}]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K19 ["HorizontalThird2"]
       49 GETUPVAL                         R6 1
       50 GETUPVAL                         R7 4
       51 DUPTABLE                         R8 K36 [{["orientation"] = "vertical", ["position"] = 0.333333333333333, ["testId"] = "vertical-third-1"}]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K20 ["VerticalThird1"]
       55 GETUPVAL                         R6 1
       56 GETUPVAL                         R7 4
       57 DUPTABLE                         R8 K38 [{["orientation"] = "vertical", ["position"] = 0.666666666666667, ["testId"] = "vertical-third-2"}]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K21 ["VerticalThird2"]
       61 CALL                             R2 3 -1
       62 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["normalizeDpi"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R4 R0 K0 ["initialDpi"]
        4 FASTCALL1                        TYPE R4 ; [+2]
        5 GETIMPORT                        R3 K2 [type]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K3 ["number"] ; [+4]
       10 GETTABLEKS                       R2 R0 K0 ["initialDpi"]
       12 JUMP                             ; [+1]
       13 LOADN                            R2 96
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K4 ["useState"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K5 ["normalizeDpi"]
       20 MOVE                             R5 R2
       21 CALL                             R4 1 -1
       22 CALL                             R3 -1 2
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K6 ["Hooks"]
       26 GETTABLEKS                       R5 R5 K7 ["useTokens"]
       28 CALL                             R5 0 1
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R0
       31 GETUPVAL                         R7 4
       32 GETUPVAL                         R8 5
       33 DUPTABLE                         R9 K19 [{["uri"], ["type"] = "Default", ["title"], ["description"], ["showIndeterminateProgressIndicator"] = False, ["width"] = 800, ["primaryAction"], ["secondaryAction"], ["escapeAction"]}]
       34 GETUPVAL                         R10 6
       35 SETTABLEKS                       R10 R9 K8 ["uri"]
       37 LOADK                            R12 K20 ["Scaling"]
       38 LOADK                            R13 K21 ["CalibratePhysicalScaling"]
       39 NAMECALL                         R10 R1 K22 ["getText"]
       41 CALL                             R10 3 1
       42 SETTABLEKS                       R10 R9 K10 ["title"]
       44 LOADK                            R12 K23 ["Calibration"]
       45 LOADK                            R13 K24 ["Description"]
       46 DUPTABLE                         R14 K27 [{"metricWidth", "imperialWidth"}]
       47 LOADK                            R16 K28 ["%* cm"]
       48 GETUPVAL                         R24 2
       49 GETTABLEKS                       R24 R24 K31 ["CARD_WIDTH_INCHES"]
       51 MULK                             R23 R24 K30 [2.54]
       52 MULK                             R22 R23 K29 [100]
       53 FASTCALL1                        MATH_ROUND R22 ; [+2]
       54 GETIMPORT                        R21 K34 [math.round]
       56 CALL                             R21 1 1
       57 DIVK                             R20 R21 K29 [100]
       58 NAMECALL                         R18 R1 K35 ["localizeNumber"]
       60 CALL                             R18 2 1
       61 NAMECALL                         R16 R16 K36 ["format"]
       63 CALL                             R16 2 1
       64 MOVE                             R15 R16
       65 SETTABLEKS                       R15 R14 K25 ["metricWidth"]
       67 LOADK                            R16 K37 ["%* in"]
       68 GETUPVAL                         R20 2
       69 GETTABLEKS                       R20 R20 K31 ["CARD_WIDTH_INCHES"]
       71 NAMECALL                         R18 R1 K35 ["localizeNumber"]
       73 CALL                             R18 2 1
       74 NAMECALL                         R16 R16 K36 ["format"]
       76 CALL                             R16 2 1
       77 MOVE                             R15 R16
       78 SETTABLEKS                       R15 R14 K26 ["imperialWidth"]
       80 NAMECALL                         R10 R1 K22 ["getText"]
       82 CALL                             R10 4 1
       83 SETTABLEKS                       R10 R9 K11 ["description"]
       85 DUPTABLE                         R10 K40 [{"uri", "text", "onActivated"}]
       86 GETUPVAL                         R11 7
       87 GETTABLEKS                       R11 R11 K41 ["child"]
       89 GETUPVAL                         R12 6
       90 LOADK                            R13 K42 ["Accept"]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K8 ["uri"]
       94 LOADK                            R13 K23 ["Calibration"]
       95 LOADK                            R14 K42 ["Accept"]
       96 NAMECALL                         R11 R1 K22 ["getText"]
       98 CALL                             R11 3 1
       99 SETTABLEKS                       R11 R10 K38 ["text"]
      101 NEWCLOSURE                       R11 P1
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R11 R10 K39 ["onActivated"]
      106 SETTABLEKS                       R10 R9 K16 ["primaryAction"]
      108 DUPTABLE                         R10 K40 [{"uri", "text", "onActivated"}]
      109 GETUPVAL                         R11 7
      110 GETTABLEKS                       R11 R11 K41 ["child"]
      112 GETUPVAL                         R12 6
      113 LOADK                            R13 K43 ["Cancel"]
      114 CALL                             R11 2 1
      115 SETTABLEKS                       R11 R10 K8 ["uri"]
      117 LOADK                            R13 K44 ["Common"]
      118 LOADK                            R14 K43 ["Cancel"]
      119 NAMECALL                         R11 R1 K22 ["getText"]
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K38 ["text"]
      124 SETTABLEKS                       R6 R10 K39 ["onActivated"]
      126 SETTABLEKS                       R10 R9 K17 ["secondaryAction"]
      128 DUPTABLE                         R10 K46 [{"uri", "onClose"}]
      129 GETUPVAL                         R11 7
      130 GETTABLEKS                       R11 R11 K41 ["child"]
      132 GETUPVAL                         R12 6
      133 LOADK                            R13 K47 ["Close"]
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K8 ["uri"]
      137 SETTABLEKS                       R6 R10 K45 ["onClose"]
      139 SETTABLEKS                       R10 R9 K18 ["escapeAction"]
      141 DUPTABLE                         R10 K49 [{"Body"}]
      142 GETUPVAL                         R11 4
      143 GETUPVAL                         R12 8
      144 DUPTABLE                         R13 K54 [{["tag"] = "col gap-none size-full-0 auto-y", ["testId"] = "calibration-body"}]
      145 DUPTABLE                         R14 K57 [{"Preview", "SliderBand"}]
      146 GETUPVAL                         R15 4
      147 GETUPVAL                         R16 9
      148 DUPTABLE                         R17 K59 [{"dpi"}]
      149 SETTABLEKS                       R3 R17 K58 ["dpi"]
      151 CALL                             R15 2 1
      152 SETTABLEKS                       R15 R14 K55 ["Preview"]
      154 GETUPVAL                         R15 4
      155 GETUPVAL                         R16 8
      156 DUPTABLE                         R17 K65 [{["LayoutOrder"] = 2, ["Size"], ["backgroundStyle"], ["testId"] = "slider-band"}]
      157 GETIMPORT                        R18 K68 [UDim2.new]
      159 LOADN                            R19 1
      160 LOADN                            R20 0
      161 LOADN                            R21 0
      162 LOADN                            R22 88
      163 CALL                             R18 4 1
      164 SETTABLEKS                       R18 R17 K62 ["Size"]
      166 GETTABLEKS                       R18 R5 K69 ["Color"]
      168 GETTABLEKS                       R18 R18 K70 ["Surface"]
      170 GETTABLEKS                       R18 R18 K71 ["Surface_300"]
      172 SETTABLEKS                       R18 R17 K63 ["backgroundStyle"]
      174 DUPTABLE                         R18 K73 [{"Slider"}]
      175 GETUPVAL                         R19 4
      176 GETUPVAL                         R20 10
      177 DUPTABLE                         R21 K83 [{["AnchorPoint"], ["Position"], ["value"], ["range"], ["step"] = 1, ["width"], ["knobVisibility"], ["onValueChanged"], ["testId"] = "dpi-slider"}]
      178 GETIMPORT                        R22 K85 [Vector2.new]
      180 LOADK                            R23 K86 [0.5]
      181 LOADK                            R24 K86 [0.5]
      182 CALL                             R22 2 1
      183 SETTABLEKS                       R22 R21 K74 ["AnchorPoint"]
      185 GETIMPORT                        R22 K88 [UDim2.fromScale]
      187 LOADK                            R23 K86 [0.5]
      188 LOADK                            R24 K86 [0.5]
      189 CALL                             R22 2 1
      190 SETTABLEKS                       R22 R21 K75 ["Position"]
      192 SETTABLEKS                       R3 R21 K76 ["value"]
      194 GETIMPORT                        R22 K90 [NumberRange.new]
      196 GETUPVAL                         R23 2
      197 GETTABLEKS                       R23 R23 K91 ["MIN_DPI"]
      199 GETUPVAL                         R24 2
      200 GETTABLEKS                       R24 R24 K92 ["MAX_DPI"]
      202 CALL                             R22 2 1
      203 SETTABLEKS                       R22 R21 K77 ["range"]
      205 GETIMPORT                        R22 K94 [UDim.new]
      207 LOADN                            R23 0
      208 LOADN                            R24 500
      209 CALL                             R22 2 1
      210 SETTABLEKS                       R22 R21 K14 ["width"]
      212 GETUPVAL                         R22 3
      213 GETTABLEKS                       R22 R22 K95 ["Enums"]
      215 GETTABLEKS                       R22 R22 K96 ["Visibility"]
      217 GETTABLEKS                       R22 R22 K97 ["Always"]
      219 SETTABLEKS                       R22 R21 K80 ["knobVisibility"]
      221 NEWCLOSURE                       R22 P2
      222 CAPTURE                          VAL R4
      223 CAPTURE                          UPVAL U2
      224 SETTABLEKS                       R22 R21 K81 ["onValueChanged"]
      226 CALL                             R19 2 1
      227 SETTABLEKS                       R19 R18 K72 ["Slider"]
      229 CALL                             R15 3 1
      230 SETTABLEKS                       R15 R14 K56 ["SliderBand"]
      232 CALL                             R11 3 1
      233 SETTABLEKS                       R11 R10 K48 ["Body"]
      235 CALL                             R7 3 -1
      236 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["CalibrationModel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K12 ["Components"]
       39 GETTABLEKS                       R5 R5 K13 ["Dialog"]
       41 GETTABLEKS                       R6 R2 K14 ["Slider"]
       43 GETTABLEKS                       R7 R4 K15 ["Util"]
       45 GETTABLEKS                       R7 R7 K16 ["StudioUri"]
       47 GETTABLEKS                       R8 R2 K17 ["View"]
       49 GETTABLEKS                       R9 R3 K18 ["createElement"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K19 ["Src"]
       55 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       57 GETTABLEKS                       R11 R11 K21 ["useLocalization"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R7 K22 ["fromWidget"]
       62 LOADK                            R12 K2 ["DeviceSimulatorToolbar"]
       63 LOADK                            R13 K23 ["CalibratePhysicalScalingDialog"]
       64 CALL                             R11 2 1
       65 DUPCLOSURE                       R12 K24 [PROTO_0]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R8
       69 DUPCLOSURE                       R13 K25 [PROTO_1]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 DUPCLOSURE                       R14 K26 [PROTO_2]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R13
       79 DUPCLOSURE                       R15 K27 [PROTO_3]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R12
       85 DUPCLOSURE                       R16 K28 [PROTO_7]
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R6
       97 GETTABLEKS                       R17 R3 K29 ["memo"]
       99 MOVE                             R18 R16
      100 CALL                             R17 1 -1
      101 RETURN                           R17 -1
