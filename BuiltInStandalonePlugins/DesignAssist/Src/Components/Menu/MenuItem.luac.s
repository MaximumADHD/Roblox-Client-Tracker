PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Color"]
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 JUMPIFNOT                        R3 ; [+2]
        7 GETTABLE                         R3 R3 R8
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 FORGLOOP                         R4 2 ; [-5]
       12 OR                               R4 R3 R2
       13 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R3 R1 K1 ["kind"]
        4 JUMPIFNOTEQKS                    R3 K2 ["check"] ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["CHECK_RAIL_WIDTH"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["ACCESSORY_RAIL_WIDTH"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["createElement"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K6 ["View"]
       19 DUPTABLE                         R5 K11 [{["Size"], ["LayoutOrder"], ["tag"] = "row align-x-center align-y-center"}]
       20 GETIMPORT                        R6 K14 [UDim2.fromOffset]
       22 MOVE                             R7 R2
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K15 ["ITEM_HEIGHT"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K7 ["Size"]
       29 GETTABLEKS                       R6 R0 K16 ["layoutOrder"]
       31 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       33 DUPTABLE                         R6 K18 [{"Content"}]
       34 GETTABLEKS                       R8 R1 K1 ["kind"]
       36 JUMPIFNOTEQKS                    R8 K2 ["check"] ; [+49]
       38 GETTABLEKS                       R8 R1 K19 ["isVisible"]
       40 JUMPIFNOT                        R8 ; [+43]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K5 ["createElement"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K20 ["Icon"]
       47 DUPTABLE                         R9 K25 [{"name", "size", "variant", "style"}]
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K26 ["Enums"]
       51 GETTABLEKS                       R10 R10 K27 ["IconName"]
       53 GETTABLEKS                       R10 R10 K28 ["Check"]
       55 SETTABLEKS                       R10 R9 K21 ["name"]
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K26 ["Enums"]
       60 GETTABLEKS                       R10 R10 K29 ["IconSize"]
       62 GETTABLEKS                       R10 R10 K30 ["XSmall"]
       64 SETTABLEKS                       R10 R9 K22 ["size"]
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R10 R10 K26 ["Enums"]
       69 GETTABLEKS                       R10 R10 K31 ["IconVariant"]
       71 GETTABLEKS                       R10 R10 K32 ["Filled"]
       73 SETTABLEKS                       R10 R9 K23 ["variant"]
       75 GETTABLEKS                       R10 R1 K24 ["style"]
       77 JUMPIF                           R10 ; [+2]
       78 GETTABLEKS                       R10 R0 K33 ["contentStyle"]
       80 SETTABLEKS                       R10 R9 K24 ["style"]
       82 CALL                             R7 2 1
       83 JUMP                             ; [+94]
       84 LOADNIL                          R7
       85 JUMP                             ; [+92]
       86 GETTABLEKS                       R8 R1 K1 ["kind"]
       88 JUMPIFNOTEQKS                    R8 K34 ["swatch"] ; [+52]
       90 GETTABLEKS                       R8 R1 K35 ["preview"]
       92 JUMPIFNOT                        R8 ; [+46]
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K5 ["createElement"]
       96 LOADK                            R8 K36 ["Frame"]
       97 DUPTABLE                         R9 K41 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
       98 GETIMPORT                        R10 K14 [UDim2.fromOffset]
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K42 ["ACCESSORY_SIZE"]
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K42 ["ACCESSORY_SIZE"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K7 ["Size"]
      109 GETTABLEKS                       R10 R1 K35 ["preview"]
      111 GETTABLEKS                       R10 R10 K43 ["Color3"]
      113 SETTABLEKS                       R10 R9 K37 ["BackgroundColor3"]
      115 GETTABLEKS                       R10 R1 K35 ["preview"]
      117 GETTABLEKS                       R10 R10 K44 ["Transparency"]
      119 SETTABLEKS                       R10 R9 K38 ["BackgroundTransparency"]
      121 DUPTABLE                         R10 K46 [{"Corner"}]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K5 ["createElement"]
      125 LOADK                            R12 K47 ["UICorner"]
      126 DUPTABLE                         R13 K49 [{"CornerRadius"}]
      127 GETIMPORT                        R14 K52 [UDim.new]
      129 LOADN                            R15 0
      130 LOADN                            R16 2
      131 CALL                             R14 2 1
      132 SETTABLEKS                       R14 R13 K48 ["CornerRadius"]
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K45 ["Corner"]
      137 CALL                             R7 3 1
      138 JUMP                             ; [+39]
      139 LOADNIL                          R7
      140 JUMP                             ; [+37]
      141 GETTABLEKS                       R8 R1 K1 ["kind"]
      143 JUMPIFNOTEQKS                    R8 K53 ["icon"] ; [+33]
      145 GETTABLEKS                       R8 R1 K53 ["icon"]
      147 JUMPIFNOT                        R8 ; [+29]
      148 GETUPVAL                         R7 1
      149 GETTABLEKS                       R7 R7 K5 ["createElement"]
      151 GETUPVAL                         R8 2
      152 GETTABLEKS                       R8 R8 K20 ["Icon"]
      154 DUPTABLE                         R9 K54 [{"name", "size", "style"}]
      155 GETTABLEKS                       R10 R1 K53 ["icon"]
      157 SETTABLEKS                       R10 R9 K21 ["name"]
      159 GETUPVAL                         R10 2
      160 GETTABLEKS                       R10 R10 K26 ["Enums"]
      162 GETTABLEKS                       R10 R10 K29 ["IconSize"]
      164 GETTABLEKS                       R10 R10 K30 ["XSmall"]
      166 SETTABLEKS                       R10 R9 K22 ["size"]
      168 GETTABLEKS                       R10 R1 K24 ["style"]
      170 JUMPIF                           R10 ; [+2]
      171 GETTABLEKS                       R10 R0 K33 ["contentStyle"]
      173 SETTABLEKS                       R10 R9 K24 ["style"]
      175 CALL                             R7 2 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R7
      178 SETTABLEKS                       R7 R6 K17 ["Content"]
      180 CALL                             R3 3 -1
      181 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFNOTEQ                      R2 R3 ; [+9]
       12 GETUPVAL                         R2 0
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K6 ["current"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K7 ["onActivated"]
       19 CALL                             R2 0 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onActivated"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useState"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 2
       11 GETTABLEKS                       R4 R0 K3 ["item"]
       13 GETTABLEKS                       R6 R4 K4 ["isDisabled"]
       15 JUMPIFEQKB                       R6 TRUE ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["useRef"]
       22 LOADB                            R7 0
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R7 R1 K6 ["Color"]
       26 GETTABLEKS                       R7 R7 K7 ["Content"]
       28 GETTABLEKS                       R7 R7 K8 ["Default"]
       30 JUMPIFNOT                        R5 ; [+20]
       31 NEWTABLE                         R9 0 2
       33 LOADK                            R10 K7 ["Content"]
       34 LOADK                            R11 K9 ["Muted"]
       35 SETLIST                          R9 R10 2 [1]
       37 GETTABLEKS                       R10 R1 K6 ["Color"]
       39 MOVE                             R11 R9
       40 LOADNIL                          R12
       41 LOADNIL                          R13
       42 FORGPREP                         R11
       43 JUMPIFNOT                        R10 ; [+2]
       44 GETTABLE                         R10 R10 R15
       45 JUMP                             ; [+1]
       46 LOADNIL                          R10
       47 FORGLOOP                         R11 2 ; [-5]
       49 OR                               R8 R10 R7
       50 JUMP                             ; [+43]
       51 GETTABLEKS                       R9 R4 K10 ["tone"]
       53 JUMPIFNOTEQKS                    R9 K11 ["destructive"] ; [+21]
       55 NEWTABLE                         R9 0 2
       57 LOADK                            R10 K12 ["System"]
       58 LOADK                            R11 K13 ["Alert"]
       59 SETLIST                          R9 R10 2 [1]
       61 GETTABLEKS                       R10 R1 K6 ["Color"]
       63 MOVE                             R11 R9
       64 LOADNIL                          R12
       65 LOADNIL                          R13
       66 FORGPREP                         R11
       67 JUMPIFNOT                        R10 ; [+2]
       68 GETTABLE                         R10 R10 R15
       69 JUMP                             ; [+1]
       70 LOADNIL                          R10
       71 FORGLOOP                         R11 2 ; [-5]
       73 OR                               R8 R10 R7
       74 JUMP                             ; [+19]
       75 NEWTABLE                         R9 0 2
       77 LOADK                            R10 K7 ["Content"]
       78 LOADK                            R11 K14 ["Emphasis"]
       79 SETLIST                          R9 R10 2 [1]
       81 GETTABLEKS                       R10 R1 K6 ["Color"]
       83 MOVE                             R11 R9
       84 LOADNIL                          R12
       85 LOADNIL                          R13
       86 FORGPREP                         R11
       87 JUMPIFNOT                        R10 ; [+2]
       88 GETTABLE                         R10 R10 R15
       89 JUMP                             ; [+1]
       90 LOADNIL                          R10
       91 FORGLOOP                         R11 2 ; [-5]
       93 OR                               R8 R10 R7
       94 JUMPIFNOT                        R5 ; [+2]
       95 MOVE                             R9 R8
       96 JUMP                             ; [+5]
       97 DUPTABLE                         R9 K18 [{["Color3"], ["Transparency"] = 0.4}]
       98 GETTABLEKS                       R10 R8 K15 ["Color3"]
      100 SETTABLEKS                       R10 R9 K15 ["Color3"]
      102 NEWTABLE                         R10 2 0
      104 GETTABLEKS                       R11 R4 K19 ["leading"]
      106 LOADB                            R12 0
      107 JUMPIFEQKNIL                     R11 ; [+7]
      109 LENGTH                           R13 R11
      110 LOADN                            R14 0
      111 JUMPIFLT                         R14 R13 ; [+2]
      113 LOADB                            R12 0 +1
      114 LOADB                            R12 1
      115 JUMPIFNOT                        R11 ; [+29]
      116 MOVE                             R13 R11
      117 LOADNIL                          R14
      118 LOADNIL                          R15
      119 FORGPREP                         R13
      120 LOADN                            R18 2
      121 JUMPIFLT                         R18 R16 ; [+23]
      123 LOADK                            R19 K20 ["Leading_"]
      124 FASTCALL1                        TOSTRING R16 ; [+3]
      125 MOVE                             R21 R16
      126 GETIMPORT                        R20 K22 [tostring]
      128 CALL                             R20 1 1
      129 CONCAT                           R18 R19 R20
      130 GETUPVAL                         R19 1
      131 GETTABLEKS                       R19 R19 K23 ["createElement"]
      133 GETUPVAL                         R20 2
      134 DUPTABLE                         R21 K26 [{"item", "layoutOrder", "contentStyle"}]
      135 SETTABLEKS                       R17 R21 K3 ["item"]
      137 SETTABLEKS                       R16 R21 K24 ["layoutOrder"]
      139 SETTABLEKS                       R8 R21 K25 ["contentStyle"]
      141 CALL                             R19 2 1
      142 SETTABLE                         R19 R10 R18
      143 FORGLOOP                         R13 2 ; [-24]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R13 R13 K23 ["createElement"]
      148 GETUPVAL                         R14 0
      149 GETTABLEKS                       R14 R14 K27 ["Text"]
      151 DUPTABLE                         R15 K34 [{["Text"], ["TextTruncate"], ["LayoutOrder"] = 3, ["textStyle"], ["tag"] = "fill size-full-0 text-body-small text-align-x-left text-align-y-center"}]
      152 GETTABLEKS                       R16 R4 K35 ["label"]
      154 SETTABLEKS                       R16 R15 K27 ["Text"]
      156 GETIMPORT                        R16 K38 [Enum.TextTruncate.AtEnd]
      158 SETTABLEKS                       R16 R15 K28 ["TextTruncate"]
      160 SETTABLEKS                       R8 R15 K31 ["textStyle"]
      162 CALL                             R13 2 1
      163 SETTABLEKS                       R13 R10 K39 ["Label"]
      165 GETTABLEKS                       R14 R4 K40 ["detail"]
      167 JUMPIFNOT                        R14 ; [+19]
      168 GETUPVAL                         R13 1
      169 GETTABLEKS                       R13 R13 K23 ["createElement"]
      171 GETUPVAL                         R14 0
      172 GETTABLEKS                       R14 R14 K27 ["Text"]
      174 DUPTABLE                         R15 K43 [{["Text"], ["TextTruncate"], ["LayoutOrder"] = 4, ["textStyle"], ["tag"] = "auto-xy text-caption-small text-align-x-right text-align-y-center"}]
      175 GETTABLEKS                       R16 R4 K40 ["detail"]
      177 SETTABLEKS                       R16 R15 K27 ["Text"]
      179 GETIMPORT                        R16 K38 [Enum.TextTruncate.AtEnd]
      181 SETTABLEKS                       R16 R15 K28 ["TextTruncate"]
      183 SETTABLEKS                       R9 R15 K31 ["textStyle"]
      185 CALL                             R13 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R13
      188 SETTABLEKS                       R13 R10 K44 ["Detail"]
      190 GETUPVAL                         R13 1
      191 GETTABLEKS                       R13 R13 K23 ["createElement"]
      193 GETUPVAL                         R14 0
      194 GETTABLEKS                       R14 R14 K45 ["View"]
      196 DUPTABLE                         R15 K47 [{"Size", "LayoutOrder"}]
      197 GETIMPORT                        R16 K50 [UDim2.new]
      199 LOADN                            R17 1
      200 LOADN                            R18 0
      201 LOADN                            R19 0
      202 GETUPVAL                         R20 3
      203 GETTABLEKS                       R20 R20 K51 ["ITEM_HEIGHT"]
      205 CALL                             R16 4 1
      206 SETTABLEKS                       R16 R15 K46 ["Size"]
      208 GETTABLEKS                       R16 R0 K24 ["layoutOrder"]
      210 SETTABLEKS                       R16 R15 K29 ["LayoutOrder"]
      212 DUPTABLE                         R16 K53 [{"Content", "HitTarget"}]
      213 GETUPVAL                         R17 1
      214 GETTABLEKS                       R17 R17 K23 ["createElement"]
      216 GETUPVAL                         R18 0
      217 GETTABLEKS                       R18 R18 K45 ["View"]
      219 DUPTABLE                         R19 K55 [{"Size", "tag", "padding"}]
      220 GETIMPORT                        R20 K57 [UDim2.fromScale]
      222 LOADN                            R21 1
      223 LOADN                            R22 1
      224 CALL                             R20 2 1
      225 SETTABLEKS                       R20 R19 K46 ["Size"]
      227 JUMPIF                           R2 ; [+3]
      228 GETTABLEKS                       R21 R4 K58 ["isActive"]
      230 JUMPIFNOT                        R21 ; [+8]
      231 LOADK                            R20 K59 ["row align-y-center radius-small bg-shift-200 %s"]
      232 GETUPVAL                         R22 3
      233 GETTABLEKS                       R22 R22 K60 ["ITEM_GAP_TAG"]
      235 NAMECALL                         R20 R20 K61 ["format"]
      237 CALL                             R20 2 1
      238 JUMP                             ; [+7]
      239 LOADK                            R20 K62 ["row align-y-center radius-small %s"]
      240 GETUPVAL                         R22 3
      241 GETTABLEKS                       R22 R22 K60 ["ITEM_GAP_TAG"]
      243 NAMECALL                         R20 R20 K61 ["format"]
      245 CALL                             R20 2 1
      246 SETTABLEKS                       R20 R19 K32 ["tag"]
      248 DUPTABLE                         R20 K65 [{"left", "right"}]
      249 JUMPIFNOT                        R12 ; [+2]
      250 LOADNIL                          R21
      251 JUMP                             ; [+7]
      252 GETIMPORT                        R21 K67 [UDim.new]
      254 LOADN                            R22 0
      255 GETUPVAL                         R23 3
      256 GETTABLEKS                       R23 R23 K68 ["ITEM_TEXT_LEFT_PAD"]
      258 CALL                             R21 2 1
      259 SETTABLEKS                       R21 R20 K63 ["left"]
      261 GETIMPORT                        R21 K67 [UDim.new]
      263 LOADN                            R22 0
      264 GETUPVAL                         R23 3
      265 GETTABLEKS                       R23 R23 K69 ["ITEM_VALUE_RIGHT_PAD"]
      267 CALL                             R21 2 1
      268 SETTABLEKS                       R21 R20 K64 ["right"]
      270 SETTABLEKS                       R20 R19 K54 ["padding"]
      272 MOVE                             R20 R10
      273 CALL                             R17 3 1
      274 SETTABLEKS                       R17 R16 K7 ["Content"]
      276 GETUPVAL                         R17 1
      277 GETTABLEKS                       R17 R17 K23 ["createElement"]
      279 LOADK                            R18 K70 ["TextButton"]
      280 NEWTABLE                         R19 16 0
      282 GETIMPORT                        R20 K57 [UDim2.fromScale]
      284 LOADN                            R21 1
      285 LOADN                            R22 1
      286 CALL                             R20 2 1
      287 SETTABLEKS                       R20 R19 K46 ["Size"]
      289 LOADN                            R20 1
      290 SETTABLEKS                       R20 R19 K71 ["BackgroundTransparency"]
      292 LOADN                            R20 0
      293 SETTABLEKS                       R20 R19 K72 ["BorderSizePixel"]
      295 LOADK                            R20 K73 [""]
      296 SETTABLEKS                       R20 R19 K27 ["Text"]
      298 NOT                              R20 R5
      299 SETTABLEKS                       R20 R19 K74 ["Active"]
      301 NOT                              R20 R5
      302 SETTABLEKS                       R20 R19 K75 ["Selectable"]
      304 LOADN                            R20 2
      305 SETTABLEKS                       R20 R19 K76 ["ZIndex"]
      307 GETUPVAL                         R20 1
      308 GETTABLEKS                       R20 R20 K77 ["Event"]
      310 GETTABLEKS                       R20 R20 K78 ["MouseEnter"]
      312 JUMPIFNOT                        R5 ; [+2]
      313 LOADNIL                          R21
      314 JUMP                             ; [+2]
      315 NEWCLOSURE                       R21 P0
      316 CAPTURE                          VAL R3
      317 SETTABLE                         R21 R19 R20
      318 GETUPVAL                         R20 1
      319 GETTABLEKS                       R20 R20 K77 ["Event"]
      321 GETTABLEKS                       R20 R20 K79 ["MouseLeave"]
      323 JUMPIFNOT                        R5 ; [+2]
      324 LOADNIL                          R21
      325 JUMP                             ; [+2]
      326 NEWCLOSURE                       R21 P1
      327 CAPTURE                          VAL R3
      328 SETTABLE                         R21 R19 R20
      329 GETUPVAL                         R20 1
      330 GETTABLEKS                       R20 R20 K77 ["Event"]
      332 GETTABLEKS                       R20 R20 K80 ["InputBegan"]
      334 JUMPIF                           R5 ; [+3]
      335 GETTABLEKS                       R22 R4 K81 ["activateOnPress"]
      337 JUMPIF                           R22 ; [+2]
      338 LOADNIL                          R21
      339 JUMP                             ; [+3]
      340 NEWCLOSURE                       R21 P2
      341 CAPTURE                          VAL R6
      342 CAPTURE                          VAL R0
      343 SETTABLE                         R21 R19 R20
      344 GETUPVAL                         R20 1
      345 GETTABLEKS                       R20 R20 K77 ["Event"]
      347 GETTABLEKS                       R20 R20 K82 ["Activated"]
      349 JUMPIFNOT                        R5 ; [+2]
      350 LOADNIL                          R21
      351 JUMP                             ; [+3]
      352 NEWCLOSURE                       R21 P3
      353 CAPTURE                          VAL R6
      354 CAPTURE                          VAL R0
      355 SETTABLE                         R21 R19 R20
      356 CALL                             R17 2 1
      357 SETTABLEKS                       R17 R16 K52 ["HitTarget"]
      359 CALL                             R13 3 -1
      360 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Types"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K12 [PROTO_0]
       40 DUPCLOSURE                       R6 K13 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 DUPCLOSURE                       R7 K14 [PROTO_6]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 RETURN                           R7 1
