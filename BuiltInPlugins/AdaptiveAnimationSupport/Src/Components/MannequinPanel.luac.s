PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["bodyVisible"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["bodyVisible"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 GETTABLEKS                       R4 R0 K1 ["bodyVisible"]
        7 JUMPIFEQKNIL                     R4 ; [+4]
        9 GETTABLEKS                       R3 R0 K1 ["bodyVisible"]
       11 JUMP                             ; [+1]
       12 LOADB                            R3 1
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R6 0 1
       22 GETTABLEKS                       R7 R0 K1 ["bodyVisible"]
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R5 R0 K3 ["breadcrumb"]
       29 JUMPIFEQKNIL                     R5 ; [+3]
       31 LOADN                            R4 48
       32 JUMP                             ; [+1]
       33 LOADN                            R4 24
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K4 ["createElement"]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K5 ["View"]
       40 DUPTABLE                         R7 K10 [{"tag", "Position", "Size", "ClipsDescendants"}]
       41 LOADK                            R8 K11 ["anchor-top-right"]
       42 SETTABLEKS                       R8 R7 K6 ["tag"]
       44 GETIMPORT                        R8 K14 [UDim2.new]
       46 LOADN                            R9 1
       47 LOADN                            R10 240
       48 LOADN                            R11 0
       49 LOADN                            R12 18
       50 CALL                             R8 4 1
       51 SETTABLEKS                       R8 R7 K7 ["Position"]
       53 JUMPIFNOT                        R2 ; [+8]
       54 GETIMPORT                        R8 K14 [UDim2.new]
       56 LOADN                            R9 0
       57 LOADN                            R10 14
       58 LOADN                            R11 0
       59 LOADN                            R12 164
       60 CALL                             R8 4 1
       61 JUMP                             ; [+7]
       62 GETIMPORT                        R8 K14 [UDim2.new]
       64 LOADN                            R9 0
       65 LOADN                            R10 14
       66 LOADN                            R11 0
       67 LOADN                            R12 24
       68 CALL                             R8 4 1
       69 SETTABLEKS                       R8 R7 K8 ["Size"]
       71 LOADB                            R8 1
       72 SETTABLEKS                       R8 R7 K9 ["ClipsDescendants"]
       74 DUPTABLE                         R8 K18 [{"Header", "Breadcrumb", "Content"}]
       75 GETUPVAL                         R10 1
       76 GETTABLEKS                       R9 R10 K4 ["createElement"]
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R10 R11 K5 ["View"]
       81 DUPTABLE                         R11 K19 [{"tag", "Position", "Size"}]
       82 LOADK                            R12 K20 ["bg-surface-300"]
       83 SETTABLEKS                       R12 R11 K6 ["tag"]
       85 GETIMPORT                        R12 K14 [UDim2.new]
       87 LOADN                            R13 0
       88 LOADN                            R14 0
       89 LOADN                            R15 0
       90 LOADN                            R16 0
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K7 ["Position"]
       94 GETIMPORT                        R12 K14 [UDim2.new]
       96 LOADN                            R13 1
       97 LOADN                            R14 0
       98 LOADN                            R15 0
       99 LOADN                            R16 24
      100 CALL                             R12 4 1
      101 SETTABLEKS                       R12 R11 K8 ["Size"]
      103 DUPTABLE                         R12 K23 [{"Title", "CloseButton"}]
      104 GETUPVAL                         R14 1
      105 GETTABLEKS                       R13 R14 K4 ["createElement"]
      107 GETUPVAL                         R15 2
      108 GETTABLEKS                       R14 R15 K5 ["View"]
      110 DUPTABLE                         R15 K24 [{"Position", "Size", "tag"}]
      111 GETIMPORT                        R16 K14 [UDim2.new]
      113 LOADN                            R17 0
      114 LOADN                            R18 8
      115 LOADN                            R19 0
      116 LOADN                            R20 0
      117 CALL                             R16 4 1
      118 SETTABLEKS                       R16 R15 K7 ["Position"]
      120 GETIMPORT                        R16 K14 [UDim2.new]
      122 LOADN                            R17 1
      123 LOADN                            R18 224
      124 LOADN                            R19 1
      125 LOADN                            R20 0
      126 CALL                             R16 4 1
      127 SETTABLEKS                       R16 R15 K8 ["Size"]
      129 LOADK                            R16 K25 ["col align-y-center"]
      130 SETTABLEKS                       R16 R15 K6 ["tag"]
      132 DUPTABLE                         R16 K27 [{"TitleText"}]
      133 GETUPVAL                         R18 1
      134 GETTABLEKS                       R17 R18 K4 ["createElement"]
      136 GETUPVAL                         R19 2
      137 GETTABLEKS                       R18 R19 K28 ["Text"]
      139 DUPTABLE                         R19 K29 [{"tag", "Text"}]
      140 LOADK                            R20 K30 ["text-caption-small auto-xy"]
      141 SETTABLEKS                       R20 R19 K6 ["tag"]
      143 GETTABLEKS                       R20 R0 K31 ["title"]
      145 SETTABLEKS                       R20 R19 K28 ["Text"]
      147 CALL                             R17 2 1
      148 SETTABLEKS                       R17 R16 K26 ["TitleText"]
      150 CALL                             R13 3 1
      151 SETTABLEKS                       R13 R12 K21 ["Title"]
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R13 R14 K4 ["createElement"]
      156 GETUPVAL                         R15 2
      157 GETTABLEKS                       R14 R15 K5 ["View"]
      159 DUPTABLE                         R15 K34 [{"Position", "Size", "tag", "onActivated", "stateLayer"}]
      160 GETIMPORT                        R16 K14 [UDim2.new]
      162 LOADN                            R17 1
      163 LOADN                            R18 232
      164 LOADN                            R19 0
      165 LOADN                            R20 0
      166 CALL                             R16 4 1
      167 SETTABLEKS                       R16 R15 K7 ["Position"]
      169 GETIMPORT                        R16 K14 [UDim2.new]
      171 LOADN                            R17 0
      172 LOADN                            R18 24
      173 LOADN                            R19 1
      174 LOADN                            R20 0
      175 CALL                             R16 4 1
      176 SETTABLEKS                       R16 R15 K8 ["Size"]
      178 LOADK                            R16 K35 ["col align-y-center align-x-center"]
      179 SETTABLEKS                       R16 R15 K6 ["tag"]
      181 GETTABLEKS                       R16 R0 K36 ["onClose"]
      183 SETTABLEKS                       R16 R15 K32 ["onActivated"]
      185 DUPTABLE                         R16 K38 [{"affordance"}]
      186 GETUPVAL                         R20 2
      187 GETTABLEKS                       R19 R20 K39 ["Enums"]
      189 GETTABLEKS                       R18 R19 K40 ["StateLayerAffordance"]
      191 GETTABLEKS                       R17 R18 K41 ["Background"]
      193 SETTABLEKS                       R17 R16 K37 ["affordance"]
      195 SETTABLEKS                       R16 R15 K33 ["stateLayer"]
      197 DUPTABLE                         R16 K43 [{"Icon"}]
      198 GETUPVAL                         R18 1
      199 GETTABLEKS                       R17 R18 K4 ["createElement"]
      201 GETUPVAL                         R19 2
      202 GETTABLEKS                       R18 R19 K42 ["Icon"]
      204 DUPTABLE                         R19 K46 [{"name", "size"}]
      205 GETUPVAL                         R23 2
      206 GETTABLEKS                       R22 R23 K39 ["Enums"]
      208 GETTABLEKS                       R21 R22 K47 ["IconName"]
      210 GETTABLEKS                       R20 R21 K48 ["XSmall"]
      212 SETTABLEKS                       R20 R19 K44 ["name"]
      214 GETUPVAL                         R23 2
      215 GETTABLEKS                       R22 R23 K39 ["Enums"]
      217 GETTABLEKS                       R21 R22 K49 ["IconSize"]
      219 GETTABLEKS                       R20 R21 K50 ["Medium"]
      221 SETTABLEKS                       R20 R19 K45 ["size"]
      223 CALL                             R17 2 1
      224 SETTABLEKS                       R17 R16 K42 ["Icon"]
      226 CALL                             R13 3 1
      227 SETTABLEKS                       R13 R12 K22 ["CloseButton"]
      229 CALL                             R9 3 1
      230 SETTABLEKS                       R9 R8 K15 ["Header"]
      232 JUMPIFNOT                        R2 ; [+49]
      233 GETTABLEKS                       R10 R0 K3 ["breadcrumb"]
      235 JUMPIFEQKNIL                     R10 ; [+46]
      237 GETUPVAL                         R10 1
      238 GETTABLEKS                       R9 R10 K4 ["createElement"]
      240 GETUPVAL                         R11 2
      241 GETTABLEKS                       R10 R11 K5 ["View"]
      243 DUPTABLE                         R11 K52 [{"backgroundStyle", "Position", "Size"}]
      244 DUPTABLE                         R12 K55 [{"Color3", "Transparency"}]
      245 GETTABLEKS                       R16 R1 K56 ["Color"]
      247 GETTABLEKS                       R15 R16 K57 ["Surface"]
      249 GETTABLEKS                       R14 R15 K58 ["Surface_300"]
      251 GETTABLEKS                       R13 R14 K53 ["Color3"]
      253 SETTABLEKS                       R13 R12 K53 ["Color3"]
      255 LOADK                            R13 K59 [0.25]
      256 SETTABLEKS                       R13 R12 K54 ["Transparency"]
      258 SETTABLEKS                       R12 R11 K51 ["backgroundStyle"]
      260 GETIMPORT                        R12 K14 [UDim2.new]
      262 LOADN                            R13 0
      263 LOADN                            R14 0
      264 LOADN                            R15 0
      265 LOADN                            R16 24
      266 CALL                             R12 4 1
      267 SETTABLEKS                       R12 R11 K7 ["Position"]
      269 GETIMPORT                        R12 K14 [UDim2.new]
      271 LOADN                            R13 1
      272 LOADN                            R14 0
      273 LOADN                            R15 0
      274 LOADN                            R16 24
      275 CALL                             R12 4 1
      276 SETTABLEKS                       R12 R11 K8 ["Size"]
      278 GETTABLEKS                       R12 R0 K3 ["breadcrumb"]
      280 CALL                             R9 3 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R9
      283 SETTABLEKS                       R9 R8 K16 ["Breadcrumb"]
      285 JUMPIFNOT                        R2 ; [+45]
      286 GETUPVAL                         R10 1
      287 GETTABLEKS                       R9 R10 K4 ["createElement"]
      289 GETUPVAL                         R11 2
      290 GETTABLEKS                       R10 R11 K5 ["View"]
      292 DUPTABLE                         R11 K52 [{"backgroundStyle", "Position", "Size"}]
      293 DUPTABLE                         R12 K55 [{"Color3", "Transparency"}]
      294 GETTABLEKS                       R16 R1 K56 ["Color"]
      296 GETTABLEKS                       R15 R16 K57 ["Surface"]
      298 GETTABLEKS                       R14 R15 K58 ["Surface_300"]
      300 GETTABLEKS                       R13 R14 K53 ["Color3"]
      302 SETTABLEKS                       R13 R12 K53 ["Color3"]
      304 LOADK                            R13 K60 [0.5]
      305 SETTABLEKS                       R13 R12 K54 ["Transparency"]
      307 SETTABLEKS                       R12 R11 K51 ["backgroundStyle"]
      309 GETIMPORT                        R12 K14 [UDim2.new]
      311 LOADN                            R13 0
      312 LOADN                            R14 0
      313 LOADN                            R15 0
      314 MOVE                             R16 R4
      315 CALL                             R12 4 1
      316 SETTABLEKS                       R12 R11 K7 ["Position"]
      318 GETIMPORT                        R12 K14 [UDim2.new]
      320 LOADN                            R13 1
      321 LOADN                            R14 0
      322 LOADN                            R15 1
      323 MINUS                            R16 R4
      324 CALL                             R12 4 1
      325 SETTABLEKS                       R12 R11 K8 ["Size"]
      327 GETTABLEKS                       R12 R0 K61 ["content"]
      329 CALL                             R9 3 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R9
      332 SETTABLEKS                       R9 R8 K17 ["Content"]
      334 CALL                             R5 3 -1
      335 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R4 K10 ["useTokens"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
