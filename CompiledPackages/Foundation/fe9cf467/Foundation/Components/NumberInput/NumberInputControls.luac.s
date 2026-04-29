PROTO_0:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["radius"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K4 ["Size"]
        7 GETTABLEKS                       R1 R2 K5 ["Size_150"]
        9 SETTABLEKS                       R1 R0 K1 ["offset"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K6 ["Stroke"]
       14 GETTABLEKS                       R1 R2 K7 ["Thicker"]
       16 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       18 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETIMPORT                        R2 K2 [UDim.new]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R5 R1 K3 ["Radius"]
        7 GETTABLEKS                       R4 R5 K4 ["Medium"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K5 ["useMemo"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R5 0 1
       18 MOVE                             R6 R1
       19 SETLIST                          R5 R6 1 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K6 ["createElement"]
       25 GETUPVAL                         R5 2
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R0
       28 DUPTABLE                         R8 K14 [{"onActivated", "isDisabled", "selection", "cursor", "padding", "cornerRadius", "tag"}]
       29 GETTABLEKS                       R9 R0 K7 ["onActivated"]
       31 SETTABLEKS                       R9 R8 K7 ["onActivated"]
       33 GETTABLEKS                       R9 R0 K8 ["isDisabled"]
       35 SETTABLEKS                       R9 R8 K8 ["isDisabled"]
       37 DUPTABLE                         R9 K16 [{"Selectable"}]
       38 GETTABLEKS                       R11 R0 K8 ["isDisabled"]
       40 NOT                              R10 R11
       41 SETTABLEKS                       R10 R9 K15 ["Selectable"]
       43 SETTABLEKS                       R9 R8 K9 ["selection"]
       45 SETTABLEKS                       R3 R8 K10 ["cursor"]
       47 GETTABLEKS                       R9 R0 K11 ["padding"]
       49 SETTABLEKS                       R9 R8 K11 ["padding"]
       51 SETTABLEKS                       R2 R8 K12 ["cornerRadius"]
       53 GETTABLEKS                       R9 R0 K13 ["tag"]
       55 SETTABLEKS                       R9 R8 K13 ["tag"]
       57 CALL                             R6 2 1
       58 GETTABLEKS                       R7 R0 K17 ["children"]
       60 CALL                             R4 3 -1
       61 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R4 R1 K1 ["Stroke"]
        9 GETTABLEKS                       R3 R4 K2 ["Standard"]
       11 FASTCALL1                        MATH_CEIL R3 ; [+3]
       12 MOVE                             R6 R3
       13 GETIMPORT                        R5 K6 [math.ceil]
       15 CALL                             R5 1 1
       16 MULK                             R4 R5 K3 [2]
       17 GETIMPORT                        R5 K9 [UDim2.fromOffset]
       19 GETTABLEKS                       R8 R2 K10 ["splitButton"]
       21 GETTABLEKS                       R7 R8 K0 ["size"]
       23 SUB                              R6 R7 R4
       24 GETTABLEKS                       R9 R2 K10 ["splitButton"]
       26 GETTABLEKS                       R8 R9 K0 ["size"]
       28 SUB                              R7 R8 R4
       29 CALL                             R5 2 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K11 ["createElement"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R7 R8 K12 ["Fragment"]
       36 NEWTABLE                         R8 0 0
       38 DUPTABLE                         R9 K15 [{"ControlIncrement", "ControlDecrement"}]
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R10 R11 K11 ["createElement"]
       42 GETUPVAL                         R11 3
       43 DUPTABLE                         R12 K25 [{"onActivated", "isDisabled", "padding", "Size", "stroke", "tag", "LayoutOrder", "GroupTransparency", "testId"}]
       44 GETTABLEKS                       R14 R0 K26 ["increment"]
       46 GETTABLEKS                       R13 R14 K27 ["onClick"]
       48 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       50 GETTABLEKS                       R14 R0 K26 ["increment"]
       52 GETTABLEKS                       R13 R14 K17 ["isDisabled"]
       54 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
       56 GETTABLEKS                       R14 R2 K28 ["button"]
       58 GETTABLEKS                       R13 R14 K18 ["padding"]
       60 SETTABLEKS                       R13 R12 K18 ["padding"]
       62 SETTABLEKS                       R5 R12 K19 ["Size"]
       64 DUPTABLE                         R13 K32 [{"Color", "Transparency", "Thickness"}]
       65 GETTABLEKS                       R17 R1 K29 ["Color"]
       67 GETTABLEKS                       R16 R17 K1 ["Stroke"]
       69 GETTABLEKS                       R15 R16 K33 ["Emphasis"]
       71 GETTABLEKS                       R14 R15 K34 ["Color3"]
       73 SETTABLEKS                       R14 R13 K29 ["Color"]
       75 GETTABLEKS                       R18 R1 K29 ["Color"]
       77 GETTABLEKS                       R17 R18 K1 ["Stroke"]
       79 GETTABLEKS                       R16 R17 K33 ["Emphasis"]
       81 GETTABLEKS                       R15 R16 K30 ["Transparency"]
       83 LOADN                            R16 1
       84 GETTABLEKS                       R19 R0 K26 ["increment"]
       86 GETTABLEKS                       R18 R19 K17 ["isDisabled"]
       88 JUMPIFNOT                        R18 ; [+4]
       89 GETUPVAL                         R18 4
       90 GETTABLEKS                       R17 R18 K35 ["DISABLED_TRANSPARENCY"]
       92 JUMP                             ; [+1]
       93 LOADN                            R17 0
       94 FASTCALL                         MATH_LERP ; [+2]
       95 GETIMPORT                        R14 K37 [math.lerp]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K30 ["Transparency"]
      100 GETTABLEKS                       R15 R1 K1 ["Stroke"]
      102 GETTABLEKS                       R14 R15 K2 ["Standard"]
      104 SETTABLEKS                       R14 R13 K31 ["Thickness"]
      106 SETTABLEKS                       R13 R12 K20 ["stroke"]
      108 GETTABLEKS                       R14 R2 K10 ["splitButton"]
      110 GETTABLEKS                       R13 R14 K21 ["tag"]
      112 SETTABLEKS                       R13 R12 K21 ["tag"]
      114 LOADN                            R13 1
      115 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      117 GETTABLEKS                       R15 R0 K26 ["increment"]
      119 GETTABLEKS                       R14 R15 K17 ["isDisabled"]
      121 JUMPIFNOT                        R14 ; [+4]
      122 GETUPVAL                         R14 4
      123 GETTABLEKS                       R13 R14 K35 ["DISABLED_TRANSPARENCY"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R13
      127 SETTABLEKS                       R13 R12 K23 ["GroupTransparency"]
      129 LOADK                            R14 K38 ["%*--increment"]
      130 GETTABLEKS                       R16 R0 K24 ["testId"]
      132 NAMECALL                         R14 R14 K39 ["format"]
      134 CALL                             R14 2 1
      135 MOVE                             R13 R14
      136 SETTABLEKS                       R13 R12 K24 ["testId"]
      138 DUPTABLE                         R13 K41 [{"Icon"}]
      139 GETUPVAL                         R15 2
      140 GETTABLEKS                       R14 R15 K11 ["createElement"]
      142 GETUPVAL                         R15 5
      143 DUPTABLE                         R16 K45 [{"name", "AnchorPoint", "Position", "testId"}]
      144 GETUPVAL                         R19 6
      145 GETTABLEKS                       R18 R19 K40 ["Icon"]
      147 GETTABLEKS                       R17 R18 K46 ["PlusSmall"]
      149 SETTABLEKS                       R17 R16 K42 ["name"]
      151 GETIMPORT                        R17 K49 [Vector2.new]
      153 LOADK                            R18 K50 [0.5]
      154 LOADK                            R19 K50 [0.5]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K43 ["AnchorPoint"]
      158 GETIMPORT                        R17 K52 [UDim2.fromScale]
      160 LOADK                            R18 K50 [0.5]
      161 LOADK                            R19 K50 [0.5]
      162 CALL                             R17 2 1
      163 SETTABLEKS                       R17 R16 K44 ["Position"]
      165 LOADK                            R18 K53 ["%*--increment-icon"]
      166 GETTABLEKS                       R20 R0 K24 ["testId"]
      168 NAMECALL                         R18 R18 K39 ["format"]
      170 CALL                             R18 2 1
      171 MOVE                             R17 R18
      172 SETTABLEKS                       R17 R16 K24 ["testId"]
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K40 ["Icon"]
      177 CALL                             R10 3 1
      178 SETTABLEKS                       R10 R9 K13 ["ControlIncrement"]
      180 GETUPVAL                         R11 2
      181 GETTABLEKS                       R10 R11 K11 ["createElement"]
      183 GETUPVAL                         R11 3
      184 DUPTABLE                         R12 K25 [{"onActivated", "isDisabled", "padding", "Size", "stroke", "tag", "LayoutOrder", "GroupTransparency", "testId"}]
      185 GETTABLEKS                       R14 R0 K54 ["decrement"]
      187 GETTABLEKS                       R13 R14 K27 ["onClick"]
      189 SETTABLEKS                       R13 R12 K16 ["onActivated"]
      191 GETTABLEKS                       R14 R0 K54 ["decrement"]
      193 GETTABLEKS                       R13 R14 K17 ["isDisabled"]
      195 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
      197 GETTABLEKS                       R14 R2 K28 ["button"]
      199 GETTABLEKS                       R13 R14 K18 ["padding"]
      201 SETTABLEKS                       R13 R12 K18 ["padding"]
      203 SETTABLEKS                       R5 R12 K19 ["Size"]
      205 DUPTABLE                         R13 K32 [{"Color", "Transparency", "Thickness"}]
      206 GETTABLEKS                       R17 R1 K29 ["Color"]
      208 GETTABLEKS                       R16 R17 K1 ["Stroke"]
      210 GETTABLEKS                       R15 R16 K33 ["Emphasis"]
      212 GETTABLEKS                       R14 R15 K34 ["Color3"]
      214 SETTABLEKS                       R14 R13 K29 ["Color"]
      216 GETTABLEKS                       R18 R1 K29 ["Color"]
      218 GETTABLEKS                       R17 R18 K1 ["Stroke"]
      220 GETTABLEKS                       R16 R17 K33 ["Emphasis"]
      222 GETTABLEKS                       R15 R16 K30 ["Transparency"]
      224 LOADN                            R16 1
      225 GETTABLEKS                       R19 R0 K54 ["decrement"]
      227 GETTABLEKS                       R18 R19 K17 ["isDisabled"]
      229 JUMPIFNOT                        R18 ; [+4]
      230 GETUPVAL                         R18 4
      231 GETTABLEKS                       R17 R18 K35 ["DISABLED_TRANSPARENCY"]
      233 JUMP                             ; [+1]
      234 LOADN                            R17 0
      235 FASTCALL                         MATH_LERP ; [+2]
      236 GETIMPORT                        R14 K37 [math.lerp]
      238 CALL                             R14 3 1
      239 SETTABLEKS                       R14 R13 K30 ["Transparency"]
      241 GETTABLEKS                       R15 R1 K1 ["Stroke"]
      243 GETTABLEKS                       R14 R15 K2 ["Standard"]
      245 SETTABLEKS                       R14 R13 K31 ["Thickness"]
      247 SETTABLEKS                       R13 R12 K20 ["stroke"]
      249 GETTABLEKS                       R14 R2 K10 ["splitButton"]
      251 GETTABLEKS                       R13 R14 K21 ["tag"]
      253 SETTABLEKS                       R13 R12 K21 ["tag"]
      255 LOADN                            R13 255
      256 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      258 GETTABLEKS                       R15 R0 K54 ["decrement"]
      260 GETTABLEKS                       R14 R15 K17 ["isDisabled"]
      262 JUMPIFNOT                        R14 ; [+4]
      263 GETUPVAL                         R14 4
      264 GETTABLEKS                       R13 R14 K35 ["DISABLED_TRANSPARENCY"]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R13
      268 SETTABLEKS                       R13 R12 K23 ["GroupTransparency"]
      270 LOADK                            R14 K55 ["%*--decrement"]
      271 GETTABLEKS                       R16 R0 K24 ["testId"]
      273 NAMECALL                         R14 R14 K39 ["format"]
      275 CALL                             R14 2 1
      276 MOVE                             R13 R14
      277 SETTABLEKS                       R13 R12 K24 ["testId"]
      279 DUPTABLE                         R13 K41 [{"Icon"}]
      280 GETUPVAL                         R15 2
      281 GETTABLEKS                       R14 R15 K11 ["createElement"]
      283 GETUPVAL                         R15 5
      284 DUPTABLE                         R16 K45 [{"name", "AnchorPoint", "Position", "testId"}]
      285 GETUPVAL                         R19 6
      286 GETTABLEKS                       R18 R19 K40 ["Icon"]
      288 GETTABLEKS                       R17 R18 K56 ["MinusSmall"]
      290 SETTABLEKS                       R17 R16 K42 ["name"]
      292 GETIMPORT                        R17 K49 [Vector2.new]
      294 LOADK                            R18 K50 [0.5]
      295 LOADK                            R19 K50 [0.5]
      296 CALL                             R17 2 1
      297 SETTABLEKS                       R17 R16 K43 ["AnchorPoint"]
      299 GETIMPORT                        R17 K52 [UDim2.fromScale]
      301 LOADK                            R18 K50 [0.5]
      302 LOADK                            R19 K50 [0.5]
      303 CALL                             R17 2 1
      304 SETTABLEKS                       R17 R16 K44 ["Position"]
      306 LOADK                            R18 K57 ["%*--decrement-icon"]
      307 GETTABLEKS                       R20 R0 K24 ["testId"]
      309 NAMECALL                         R18 R18 K39 ["format"]
      311 CALL                             R18 2 1
      312 MOVE                             R17 R18
      313 SETTABLEKS                       R17 R16 K24 ["testId"]
      315 CALL                             R14 2 1
      316 SETTABLEKS                       R14 R13 K40 ["Icon"]
      318 CALL                             R10 3 1
      319 SETTABLEKS                       R10 R9 K14 ["ControlDecrement"]
      321 CALL                             R6 3 -1
      322 RETURN                           R6 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["Color"]
        4 GETTABLEKS                       R3 R4 K4 ["Stroke"]
        6 GETTABLEKS                       R2 R3 K5 ["Emphasis"]
        8 GETTABLEKS                       R1 R2 K0 ["Color3"]
       10 SETTABLEKS                       R1 R0 K0 ["Color3"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K6 ["increment"]
       15 GETTABLEKS                       R2 R3 K7 ["isDisabled"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K8 ["DISABLED_TRANSPARENCY"]
       21 JUMP                             ; [+1]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       25 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["Color"]
        4 GETTABLEKS                       R3 R4 K4 ["Stroke"]
        6 GETTABLEKS                       R2 R3 K5 ["Emphasis"]
        8 GETTABLEKS                       R1 R2 K0 ["Color3"]
       10 SETTABLEKS                       R1 R0 K0 ["Color3"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K6 ["decrement"]
       15 GETTABLEKS                       R2 R3 K7 ["isDisabled"]
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K8 ["DISABLED_TRANSPARENCY"]
       21 JUMP                             ; [+1]
       22 LOADN                            R1 0
       23 SETTABLEKS                       R1 R0 K1 ["Transparency"]
       25 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R1
       17 GETTABLEKS                       R8 R0 K2 ["increment"]
       19 GETTABLEKS                       R7 R8 K3 ["isDisabled"]
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R1
       34 GETTABLEKS                       R9 R0 K4 ["decrement"]
       36 GETTABLEKS                       R8 R9 K3 ["isDisabled"]
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R5 R6 K5 ["createElement"]
       44 GETUPVAL                         R6 4
       45 DUPTABLE                         R7 K9 [{"tag", "Size", "LayoutOrder"}]
       46 LOADK                            R8 K10 ["col"]
       47 SETTABLEKS                       R8 R7 K6 ["tag"]
       49 GETIMPORT                        R8 K13 [UDim2.new]
       51 LOADN                            R9 0
       52 GETTABLEKS                       R11 R2 K14 ["button"]
       54 GETTABLEKS                       R10 R11 K15 ["width"]
       56 LOADN                            R11 1
       57 LOADN                            R12 0
       58 CALL                             R8 4 1
       59 SETTABLEKS                       R8 R7 K7 ["Size"]
       61 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       63 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       65 DUPTABLE                         R8 K18 [{"ControlIncrement", "ControlDecrement"}]
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R9 R10 K5 ["createElement"]
       69 GETUPVAL                         R10 5
       70 DUPTABLE                         R11 K22 [{"onActivated", "isDisabled", "padding", "tag", "testId"}]
       71 GETTABLEKS                       R13 R0 K2 ["increment"]
       73 GETTABLEKS                       R12 R13 K23 ["onClick"]
       75 SETTABLEKS                       R12 R11 K19 ["onActivated"]
       77 GETTABLEKS                       R13 R0 K2 ["increment"]
       79 GETTABLEKS                       R12 R13 K3 ["isDisabled"]
       81 SETTABLEKS                       R12 R11 K3 ["isDisabled"]
       83 GETTABLEKS                       R13 R2 K14 ["button"]
       85 GETTABLEKS                       R12 R13 K20 ["padding"]
       87 SETTABLEKS                       R12 R11 K20 ["padding"]
       89 GETTABLEKS                       R13 R2 K24 ["upButton"]
       91 GETTABLEKS                       R12 R13 K6 ["tag"]
       93 SETTABLEKS                       R12 R11 K6 ["tag"]
       95 LOADK                            R13 K25 ["%*--increment"]
       96 GETTABLEKS                       R15 R0 K21 ["testId"]
       98 NAMECALL                         R13 R13 K26 ["format"]
      100 CALL                             R13 2 1
      101 MOVE                             R12 R13
      102 SETTABLEKS                       R12 R11 K21 ["testId"]
      104 DUPTABLE                         R12 K28 [{"Icon"}]
      105 GETUPVAL                         R14 2
      106 GETTABLEKS                       R13 R14 K5 ["createElement"]
      108 GETUPVAL                         R14 6
      109 DUPTABLE                         R15 K31 [{"Image", "imageStyle", "tag", "testId"}]
      110 LOADK                            R16 K32 ["component_assets/triangleUp_16"]
      111 SETTABLEKS                       R16 R15 K29 ["Image"]
      113 SETTABLEKS                       R3 R15 K30 ["imageStyle"]
      115 GETTABLEKS                       R17 R2 K33 ["icon"]
      117 GETTABLEKS                       R16 R17 K6 ["tag"]
      119 SETTABLEKS                       R16 R15 K6 ["tag"]
      121 LOADK                            R17 K34 ["%*--increment-icon"]
      122 GETTABLEKS                       R19 R0 K21 ["testId"]
      124 NAMECALL                         R17 R17 K26 ["format"]
      126 CALL                             R17 2 1
      127 MOVE                             R16 R17
      128 SETTABLEKS                       R16 R15 K21 ["testId"]
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K27 ["Icon"]
      133 CALL                             R9 3 1
      134 SETTABLEKS                       R9 R8 K16 ["ControlIncrement"]
      136 GETUPVAL                         R10 2
      137 GETTABLEKS                       R9 R10 K5 ["createElement"]
      139 GETUPVAL                         R10 5
      140 DUPTABLE                         R11 K35 [{"tag", "onActivated", "isDisabled", "padding", "testId"}]
      141 GETTABLEKS                       R13 R2 K36 ["downButton"]
      143 GETTABLEKS                       R12 R13 K6 ["tag"]
      145 SETTABLEKS                       R12 R11 K6 ["tag"]
      147 GETTABLEKS                       R13 R0 K4 ["decrement"]
      149 GETTABLEKS                       R12 R13 K23 ["onClick"]
      151 SETTABLEKS                       R12 R11 K19 ["onActivated"]
      153 GETTABLEKS                       R13 R0 K4 ["decrement"]
      155 GETTABLEKS                       R12 R13 K3 ["isDisabled"]
      157 SETTABLEKS                       R12 R11 K3 ["isDisabled"]
      159 GETTABLEKS                       R13 R2 K14 ["button"]
      161 GETTABLEKS                       R12 R13 K20 ["padding"]
      163 SETTABLEKS                       R12 R11 K20 ["padding"]
      165 LOADK                            R13 K37 ["%*--decrement"]
      166 GETTABLEKS                       R15 R0 K21 ["testId"]
      168 NAMECALL                         R13 R13 K26 ["format"]
      170 CALL                             R13 2 1
      171 MOVE                             R12 R13
      172 SETTABLEKS                       R12 R11 K21 ["testId"]
      174 DUPTABLE                         R12 K28 [{"Icon"}]
      175 GETUPVAL                         R14 2
      176 GETTABLEKS                       R13 R14 K5 ["createElement"]
      178 GETUPVAL                         R14 6
      179 DUPTABLE                         R15 K31 [{"Image", "imageStyle", "tag", "testId"}]
      180 LOADK                            R16 K38 ["component_assets/triangleDown_16"]
      181 SETTABLEKS                       R16 R15 K29 ["Image"]
      183 SETTABLEKS                       R4 R15 K30 ["imageStyle"]
      185 GETTABLEKS                       R17 R2 K33 ["icon"]
      187 GETTABLEKS                       R16 R17 K6 ["tag"]
      189 SETTABLEKS                       R16 R15 K6 ["tag"]
      191 LOADK                            R17 K39 ["%*--decrement-icon"]
      192 GETTABLEKS                       R19 R0 K21 ["testId"]
      194 NAMECALL                         R17 R17 K26 ["format"]
      196 CALL                             R17 2 1
      197 MOVE                             R16 R17
      198 SETTABLEKS                       R16 R15 K21 ["testId"]
      200 CALL                             R13 2 1
      201 SETTABLEKS                       R13 R12 K27 ["Icon"]
      203 CALL                             R9 3 1
      204 SETTABLEKS                       R9 R8 K17 ["ControlDecrement"]
      206 CALL                             R5 3 -1
      207 RETURN                           R5 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["variant"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Stacked"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+8]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["createElement"]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["createElement"]
       17 GETUPVAL                         R2 3
       18 MOVE                             R3 R0
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R7 R0 K9 ["Providers"]
       23 GETTABLEKS                       R6 R7 K10 ["Style"]
       25 GETTABLEKS                       R5 R6 K11 ["useTokens"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K12 ["Components"]
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Constants"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R5 K14 ["Icon"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R5 K15 ["Image"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R11 R0 K12 ["Components"]
       49 GETTABLEKS                       R10 R11 K16 ["Types"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R5 K17 ["View"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R13 R0 K18 ["Utility"]
       61 GETTABLEKS                       R12 R13 K19 ["withCommonProps"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R14 R0 K20 ["Enums"]
       68 GETTABLEKS                       R13 R14 K21 ["NumberInputControlsVariant"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R15 R0 K20 ["Enums"]
       75 GETTABLEKS                       R14 R15 K22 ["InputSize"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETIMPORT                        R17 K1 [script]
       82 GETTABLEKS                       R16 R17 K4 ["Parent"]
       84 GETTABLEKS                       R15 R16 K23 ["useNumberInputVariants"]
       86 CALL                             R14 1 1
       87 DUPCLOSURE                       R15 K24 [PROTO_1]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 DUPCLOSURE                       R16 K25 [PROTO_2]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R2
      100 DUPCLOSURE                       R17 K26 [PROTO_5]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R8
      108 DUPCLOSURE                       R18 K27 [PROTO_6]
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R16
      113 RETURN                           R18 1
