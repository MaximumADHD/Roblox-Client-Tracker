PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bodyVisible"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["bodyVisible"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 GETTABLEKS                       R4 R0 K1 ["bodyVisible"]
        7 JUMPIFEQKNIL                     R4 ; [+4]
        9 GETTABLEKS                       R3 R0 K1 ["bodyVisible"]
       11 JUMP                             ; [+1]
       12 LOADB                            R3 1
       13 CALL                             R2 1 2
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K2 ["useEffect"]
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
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K4 ["createElement"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K5 ["View"]
       40 DUPTABLE                         R7 K12 [{["tag"] = "anchor-top-right", ["Position"], ["Size"], ["ClipsDescendants"] = True}]
       41 GETIMPORT                        R8 K15 [UDim2.new]
       43 LOADN                            R9 1
       44 LOADN                            R10 -16
       45 LOADN                            R11 0
       46 LOADN                            R12 18
       47 CALL                             R8 4 1
       48 SETTABLEKS                       R8 R7 K8 ["Position"]
       50 JUMPIFNOT                        R2 ; [+8]
       51 GETIMPORT                        R8 K15 [UDim2.new]
       53 LOADN                            R9 0
       54 LOADN                            R10 270
       55 LOADN                            R11 0
       56 LOADN                            R12 420
       57 CALL                             R8 4 1
       58 JUMP                             ; [+7]
       59 GETIMPORT                        R8 K15 [UDim2.new]
       61 LOADN                            R9 0
       62 LOADN                            R10 270
       63 LOADN                            R11 0
       64 LOADN                            R12 24
       65 CALL                             R8 4 1
       66 SETTABLEKS                       R8 R7 K9 ["Size"]
       68 DUPTABLE                         R8 K19 [{"Header", "Breadcrumb", "Content"}]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K4 ["createElement"]
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R10 R10 K5 ["View"]
       75 DUPTABLE                         R11 K21 [{["tag"] = "bg-surface-300", ["Position"], ["Size"]}]
       76 GETIMPORT                        R12 K15 [UDim2.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 0
       80 LOADN                            R15 0
       81 LOADN                            R16 0
       82 CALL                             R12 4 1
       83 SETTABLEKS                       R12 R11 K8 ["Position"]
       85 GETIMPORT                        R12 K15 [UDim2.new]
       87 LOADN                            R13 1
       88 LOADN                            R14 0
       89 LOADN                            R15 0
       90 LOADN                            R16 24
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K9 ["Size"]
       94 DUPTABLE                         R12 K24 [{"Title", "CloseButton"}]
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R13 R13 K4 ["createElement"]
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R14 R14 K5 ["View"]
      101 DUPTABLE                         R15 K26 [{["Position"], ["Size"], ["tag"] = "col align-y-center"}]
      102 GETIMPORT                        R16 K15 [UDim2.new]
      104 LOADN                            R17 0
      105 LOADN                            R18 8
      106 LOADN                            R19 0
      107 LOADN                            R20 0
      108 CALL                             R16 4 1
      109 SETTABLEKS                       R16 R15 K8 ["Position"]
      111 GETIMPORT                        R16 K15 [UDim2.new]
      113 LOADN                            R17 1
      114 LOADN                            R18 -32
      115 LOADN                            R19 1
      116 LOADN                            R20 0
      117 CALL                             R16 4 1
      118 SETTABLEKS                       R16 R15 K9 ["Size"]
      120 DUPTABLE                         R16 K28 [{"TitleText"}]
      121 GETUPVAL                         R17 1
      122 GETTABLEKS                       R17 R17 K4 ["createElement"]
      124 GETUPVAL                         R18 2
      125 GETTABLEKS                       R18 R18 K29 ["Text"]
      127 DUPTABLE                         R19 K31 [{["tag"] = "auto-xy text-caption-small", ["Text"]}]
      128 GETTABLEKS                       R20 R0 K32 ["title"]
      130 SETTABLEKS                       R20 R19 K29 ["Text"]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R16 K27 ["TitleText"]
      135 CALL                             R13 3 1
      136 SETTABLEKS                       R13 R12 K22 ["Title"]
      138 GETUPVAL                         R13 1
      139 GETTABLEKS                       R13 R13 K4 ["createElement"]
      141 GETUPVAL                         R14 2
      142 GETTABLEKS                       R14 R14 K5 ["View"]
      144 DUPTABLE                         R15 K36 [{["Position"], ["Size"], ["tag"] = "col align-x-center align-y-center", ["onActivated"], ["stateLayer"]}]
      145 GETIMPORT                        R16 K15 [UDim2.new]
      147 LOADN                            R17 1
      148 LOADN                            R18 -24
      149 LOADN                            R19 0
      150 LOADN                            R20 0
      151 CALL                             R16 4 1
      152 SETTABLEKS                       R16 R15 K8 ["Position"]
      154 GETIMPORT                        R16 K15 [UDim2.new]
      156 LOADN                            R17 0
      157 LOADN                            R18 24
      158 LOADN                            R19 1
      159 LOADN                            R20 0
      160 CALL                             R16 4 1
      161 SETTABLEKS                       R16 R15 K9 ["Size"]
      163 GETTABLEKS                       R16 R0 K37 ["onClose"]
      165 SETTABLEKS                       R16 R15 K34 ["onActivated"]
      167 DUPTABLE                         R16 K39 [{"affordance"}]
      168 GETUPVAL                         R17 2
      169 GETTABLEKS                       R17 R17 K40 ["Enums"]
      171 GETTABLEKS                       R17 R17 K41 ["StateLayerAffordance"]
      173 GETTABLEKS                       R17 R17 K42 ["Background"]
      175 SETTABLEKS                       R17 R16 K38 ["affordance"]
      177 SETTABLEKS                       R16 R15 K35 ["stateLayer"]
      179 DUPTABLE                         R16 K44 [{"Icon"}]
      180 GETUPVAL                         R17 1
      181 GETTABLEKS                       R17 R17 K4 ["createElement"]
      183 GETUPVAL                         R18 2
      184 GETTABLEKS                       R18 R18 K43 ["Icon"]
      186 DUPTABLE                         R19 K47 [{"name", "size"}]
      187 GETUPVAL                         R20 2
      188 GETTABLEKS                       R20 R20 K40 ["Enums"]
      190 GETTABLEKS                       R20 R20 K48 ["IconName"]
      192 GETTABLEKS                       R20 R20 K49 ["XSmall"]
      194 SETTABLEKS                       R20 R19 K45 ["name"]
      196 GETUPVAL                         R20 2
      197 GETTABLEKS                       R20 R20 K40 ["Enums"]
      199 GETTABLEKS                       R20 R20 K50 ["IconSize"]
      201 GETTABLEKS                       R20 R20 K51 ["Medium"]
      203 SETTABLEKS                       R20 R19 K46 ["size"]
      205 CALL                             R17 2 1
      206 SETTABLEKS                       R17 R16 K43 ["Icon"]
      208 CALL                             R13 3 1
      209 SETTABLEKS                       R13 R12 K23 ["CloseButton"]
      211 CALL                             R9 3 1
      212 SETTABLEKS                       R9 R8 K16 ["Header"]
      214 JUMPIFNOT                        R2 ; [+46]
      215 GETTABLEKS                       R10 R0 K3 ["breadcrumb"]
      217 JUMPIFEQKNIL                     R10 ; [+43]
      219 GETUPVAL                         R9 1
      220 GETTABLEKS                       R9 R9 K4 ["createElement"]
      222 GETUPVAL                         R10 2
      223 GETTABLEKS                       R10 R10 K5 ["View"]
      225 DUPTABLE                         R11 K53 [{"backgroundStyle", "Position", "Size"}]
      226 DUPTABLE                         R12 K57 [{["Color3"], ["Transparency"] = 0.25}]
      227 GETTABLEKS                       R13 R1 K58 ["Color"]
      229 GETTABLEKS                       R13 R13 K59 ["Surface"]
      231 GETTABLEKS                       R13 R13 K60 ["Surface_300"]
      233 GETTABLEKS                       R13 R13 K54 ["Color3"]
      235 SETTABLEKS                       R13 R12 K54 ["Color3"]
      237 SETTABLEKS                       R12 R11 K52 ["backgroundStyle"]
      239 GETIMPORT                        R12 K15 [UDim2.new]
      241 LOADN                            R13 0
      242 LOADN                            R14 0
      243 LOADN                            R15 0
      244 LOADN                            R16 24
      245 CALL                             R12 4 1
      246 SETTABLEKS                       R12 R11 K8 ["Position"]
      248 GETIMPORT                        R12 K15 [UDim2.new]
      250 LOADN                            R13 1
      251 LOADN                            R14 0
      252 LOADN                            R15 0
      253 LOADN                            R16 24
      254 CALL                             R12 4 1
      255 SETTABLEKS                       R12 R11 K9 ["Size"]
      257 GETTABLEKS                       R12 R0 K3 ["breadcrumb"]
      259 CALL                             R9 3 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R9
      262 SETTABLEKS                       R9 R8 K17 ["Breadcrumb"]
      264 JUMPIFNOT                        R2 ; [+42]
      265 GETUPVAL                         R9 1
      266 GETTABLEKS                       R9 R9 K4 ["createElement"]
      268 GETUPVAL                         R10 2
      269 GETTABLEKS                       R10 R10 K5 ["View"]
      271 DUPTABLE                         R11 K53 [{"backgroundStyle", "Position", "Size"}]
      272 DUPTABLE                         R12 K62 [{["Color3"], ["Transparency"] = 0.5}]
      273 GETTABLEKS                       R13 R1 K58 ["Color"]
      275 GETTABLEKS                       R13 R13 K59 ["Surface"]
      277 GETTABLEKS                       R13 R13 K60 ["Surface_300"]
      279 GETTABLEKS                       R13 R13 K54 ["Color3"]
      281 SETTABLEKS                       R13 R12 K54 ["Color3"]
      283 SETTABLEKS                       R12 R11 K52 ["backgroundStyle"]
      285 GETIMPORT                        R12 K15 [UDim2.new]
      287 LOADN                            R13 0
      288 LOADN                            R14 0
      289 LOADN                            R15 0
      290 MOVE                             R16 R4
      291 CALL                             R12 4 1
      292 SETTABLEKS                       R12 R11 K8 ["Position"]
      294 GETIMPORT                        R12 K15 [UDim2.new]
      296 LOADN                            R13 1
      297 LOADN                            R14 0
      298 LOADN                            R15 1
      299 MINUS                            R16 R4
      300 CALL                             R12 4 1
      301 SETTABLEKS                       R12 R11 K9 ["Size"]
      303 GETTABLEKS                       R12 R0 K63 ["content"]
      305 CALL                             R9 3 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R9
      308 SETTABLEKS                       R9 R8 K18 ["Content"]
      310 CALL                             R5 3 -1
      311 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
