PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["PointingHand"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["useBinding"]
        6 LOADB                            R4 0
        7 CALL                             R3 1 2
        8 GETUPVAL                         R5 2
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["createElement"]
       13 GETUPVAL                         R7 3
       14 NEWTABLE                         R8 4 0
       16 LOADK                            R9 K3 ["auto-xy"]
       17 SETTABLEKS                       R9 R8 K4 ["tag"]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K5 ["Event"]
       22 GETTABLEKS                       R9 R9 K6 ["MouseEnter"]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 SETTABLE                         R10 R8 R9
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K5 ["Event"]
       31 GETTABLEKS                       R9 R9 K7 ["MouseLeave"]
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R2
       36 SETTABLE                         R10 R8 R9
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K2 ["createElement"]
       40 GETUPVAL                         R10 4
       41 DUPTABLE                         R11 K12 [{["Text"], ["onActivated"], ["tag"] = "auto-xy text-label-small content-emphasis", ["textStyle"]}]
       42 GETTABLEKS                       R12 R0 K13 ["text"]
       44 SETTABLEKS                       R12 R11 K8 ["Text"]
       46 GETTABLEKS                       R12 R0 K9 ["onActivated"]
       48 SETTABLEKS                       R12 R11 K9 ["onActivated"]
       50 GETTABLEKS                       R13 R0 K14 ["textColor"]
       52 JUMPIFNOT                        R13 ; [+6]
       53 DUPTABLE                         R12 K18 [{["Color3"], ["Transparency"] = 0}]
       54 GETTABLEKS                       R13 R0 K14 ["textColor"]
       56 SETTABLEKS                       R13 R12 K15 ["Color3"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R12
       60 SETTABLEKS                       R12 R11 K11 ["textStyle"]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K2 ["createElement"]
       66 GETUPVAL                         R11 5
       67 DUPTABLE                         R12 K23 [{"Size", "Position", "backgroundStyle", "Visible"}]
       68 GETIMPORT                        R13 K26 [UDim2.new]
       70 LOADN                            R14 1
       71 LOADN                            R15 0
       72 LOADN                            R16 0
       73 LOADN                            R17 1
       74 CALL                             R13 4 1
       75 SETTABLEKS                       R13 R12 K19 ["Size"]
       77 GETIMPORT                        R13 K26 [UDim2.new]
       79 LOADN                            R14 0
       80 LOADN                            R15 0
       81 LOADN                            R16 1
       82 LOADN                            R17 2
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K20 ["Position"]
       86 GETTABLEKS                       R14 R0 K27 ["showUnderline"]
       88 JUMPIFNOT                        R14 ; [+3]
       89 GETTABLEKS                       R13 R0 K28 ["underlineColor"]
       91 JUMP                             ; [+6]
       92 GETTABLEKS                       R13 R5 K29 ["Color"]
       94 GETTABLEKS                       R13 R13 K30 ["Content"]
       96 GETTABLEKS                       R13 R13 K31 ["Emphasis"]
       98 SETTABLEKS                       R13 R12 K21 ["backgroundStyle"]
      100 GETTABLEKS                       R14 R0 K27 ["showUnderline"]
      102 OR                               R13 R14 R3
      103 SETTABLEKS                       R13 R12 K22 ["Visible"]
      105 CALL                             R10 2 -1
      106 CALL                             R6 -1 -1
      107 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 ["PointingHand"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [Color3.fromHex]
        7 LOADK                            R4 K4 ["#FFFFFF"]
        8 CALL                             R3 1 1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 GETTABLEKS                       R7 R0 K5 ["type"]
       14 JUMPIFNOTEQKS                    R7 K6 ["Error"] ; [+10]
       16 GETTABLEKS                       R7 R1 K7 ["Color"]
       18 GETTABLEKS                       R7 R7 K8 ["System"]
       20 GETTABLEKS                       R4 R7 K9 ["Alert"]
       22 MOVE                             R5 R3
       23 MOVE                             R6 R3
       24 JUMP                             ; [+74]
       25 GETTABLEKS                       R7 R0 K5 ["type"]
       27 JUMPIFNOTEQKS                    R7 K10 ["Info"] ; [+10]
       29 GETTABLEKS                       R7 R1 K7 ["Color"]
       31 GETTABLEKS                       R7 R7 K8 ["System"]
       33 GETTABLEKS                       R4 R7 K11 ["Emphasis"]
       35 MOVE                             R5 R3
       36 MOVE                             R6 R3
       37 JUMP                             ; [+61]
       38 GETTABLEKS                       R7 R1 K12 ["Config"]
       40 GETTABLEKS                       R7 R7 K13 ["ColorMode"]
       42 GETTABLEKS                       R7 R7 K14 ["Name"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K15 ["Dark"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+10]
       49 GETTABLEKS                       R7 R1 K7 ["Color"]
       51 GETTABLEKS                       R7 R7 K16 ["Extended"]
       53 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       55 GETTABLEKS                       R4 R7 K18 ["Yellow_1300"]
       57 JUMP                             ; [+8]
       58 GETTABLEKS                       R7 R1 K7 ["Color"]
       60 GETTABLEKS                       R7 R7 K16 ["Extended"]
       62 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       64 GETTABLEKS                       R4 R7 K19 ["Yellow_200"]
       66 GETTABLEKS                       R7 R1 K12 ["Config"]
       68 GETTABLEKS                       R7 R7 K13 ["ColorMode"]
       70 GETTABLEKS                       R7 R7 K14 ["Name"]
       72 GETUPVAL                         R8 2
       73 GETTABLEKS                       R8 R8 K15 ["Dark"]
       75 JUMPIFNOTEQ                      R7 R8 ; [+12]
       77 GETTABLEKS                       R7 R1 K7 ["Color"]
       79 GETTABLEKS                       R7 R7 K16 ["Extended"]
       81 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       83 GETTABLEKS                       R7 R7 K20 ["Yellow_500"]
       85 GETTABLEKS                       R5 R7 K1 ["Color3"]
       87 JUMP                             ; [+10]
       88 GETTABLEKS                       R7 R1 K7 ["Color"]
       90 GETTABLEKS                       R7 R7 K16 ["Extended"]
       92 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       94 GETTABLEKS                       R7 R7 K21 ["Yellow_600"]
       96 GETTABLEKS                       R5 R7 K1 ["Color3"]
       98 LOADNIL                          R6
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R7 R7 K22 ["createElement"]
      102 GETUPVAL                         R8 4
      103 DUPTABLE                         R9 K27 [{["LayoutOrder"], ["backgroundStyle"], ["tag"] = "row align-y-center size-full-0 auto-y padding-x-xlarge padding-y-medium"}]
      104 GETTABLEKS                       R10 R0 K23 ["LayoutOrder"]
      106 SETTABLEKS                       R10 R9 K23 ["LayoutOrder"]
      108 SETTABLEKS                       R4 R9 K24 ["backgroundStyle"]
      110 DUPTABLE                         R10 K31 [{"Content", "ButtonFrame", "CloseButton"}]
      111 GETUPVAL                         R11 3
      112 GETTABLEKS                       R11 R11 K22 ["createElement"]
      114 GETUPVAL                         R12 5
      115 DUPTABLE                         R13 K34 [{["tag"] = "row align-x-left align-y-top grow gap-xlarge auto-xy", ["LayoutOrder"] = 1}]
      116 DUPTABLE                         R14 K37 [{"Icon", "Description"}]
      117 GETUPVAL                         R15 3
      118 GETTABLEKS                       R15 R15 K22 ["createElement"]
      120 GETUPVAL                         R16 6
      121 DUPTABLE                         R17 K42 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"] = 1}]
      122 GETUPVAL                         R18 7
      123 GETTABLEKS                       R18 R18 K43 ["TriangleExclamation"]
      125 SETTABLEKS                       R18 R17 K38 ["name"]
      127 GETTABLEKS                       R18 R1 K44 ["Size"]
      129 GETTABLEKS                       R18 R18 K45 ["Size_800"]
      131 SETTABLEKS                       R18 R17 K39 ["size"]
      133 GETUPVAL                         R18 8
      134 GETTABLEKS                       R18 R18 K46 ["Filled"]
      136 SETTABLEKS                       R18 R17 K40 ["variant"]
      138 DUPTABLE                         R18 K47 [{"Color3"}]
      139 SETTABLEKS                       R5 R18 K1 ["Color3"]
      141 SETTABLEKS                       R18 R17 K41 ["style"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K35 ["Icon"]
      146 GETUPVAL                         R15 3
      147 GETTABLEKS                       R15 R15 K22 ["createElement"]
      149 GETUPVAL                         R16 5
      150 DUPTABLE                         R17 K50 [{["tag"] = "col align-x-left gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
      151 DUPTABLE                         R18 K53 [{"Title", "Body"}]
      152 GETUPVAL                         R19 3
      153 GETTABLEKS                       R19 R19 K22 ["createElement"]
      155 GETUPVAL                         R20 9
      156 DUPTABLE                         R21 K57 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["textStyle"], ["LayoutOrder"] = 1}]
      157 GETTABLEKS                       R22 R0 K58 ["title"]
      159 SETTABLEKS                       R22 R21 K54 ["Text"]
      161 JUMPIFNOT                        R6 ; [+4]
      162 DUPTABLE                         R22 K61 [{["Color3"], ["Transparency"] = 0}]
      163 SETTABLEKS                       R6 R22 K1 ["Color3"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R22
      167 SETTABLEKS                       R22 R21 K56 ["textStyle"]
      169 CALL                             R19 2 1
      170 SETTABLEKS                       R19 R18 K51 ["Title"]
      172 GETUPVAL                         R19 3
      173 GETTABLEKS                       R19 R19 K22 ["createElement"]
      175 GETUPVAL                         R20 5
      176 DUPTABLE                         R21 K63 [{["tag"] = "row gap-small auto-xy", ["LayoutOrder"] = 2}]
      177 NEWTABLE                         R22 0 2
      179 GETUPVAL                         R23 3
      180 GETTABLEKS                       R23 R23 K22 ["createElement"]
      182 GETUPVAL                         R24 9
      183 DUPTABLE                         R25 K65 [{["Text"], ["tag"] = "auto-xy text-label-small content-emphasis", ["textStyle"]}]
      184 GETTABLEKS                       R26 R0 K66 ["body"]
      186 SETTABLEKS                       R26 R25 K54 ["Text"]
      188 JUMPIFNOT                        R6 ; [+4]
      189 DUPTABLE                         R26 K61 [{["Color3"], ["Transparency"] = 0}]
      190 SETTABLEKS                       R6 R26 K1 ["Color3"]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R26
      194 SETTABLEKS                       R26 R25 K56 ["textStyle"]
      196 CALL                             R23 2 1
      197 GETTABLEKS                       R25 R0 K67 ["inlineAction"]
      199 JUMPIFNOT                        R25 ; [+32]
      200 GETUPVAL                         R24 3
      201 GETTABLEKS                       R24 R24 K22 ["createElement"]
      203 GETUPVAL                         R25 10
      204 DUPTABLE                         R26 K74 [{["text"], ["onActivated"], ["textColor"], ["showUnderline"] = True, ["underlineColor"]}]
      205 GETTABLEKS                       R27 R0 K67 ["inlineAction"]
      207 GETTABLEKS                       R27 R27 K68 ["text"]
      209 SETTABLEKS                       R27 R26 K68 ["text"]
      211 GETTABLEKS                       R27 R0 K67 ["inlineAction"]
      213 GETTABLEKS                       R27 R27 K75 ["onClick"]
      215 SETTABLEKS                       R27 R26 K69 ["onActivated"]
      217 SETTABLEKS                       R6 R26 K70 ["textColor"]
      219 GETTABLEKS                       R28 R0 K5 ["type"]
      221 JUMPIFNOTEQKS                    R28 K6 ["Error"] ; [+5]
      223 DUPTABLE                         R27 K61 [{["Color3"], ["Transparency"] = 0}]
      224 SETTABLEKS                       R6 R27 K1 ["Color3"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R27
      228 SETTABLEKS                       R27 R26 K73 ["underlineColor"]
      230 CALL                             R24 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R24
      233 SETLIST                          R22 R23 2 [1]
      235 CALL                             R19 3 1
      236 SETTABLEKS                       R19 R18 K52 ["Body"]
      238 CALL                             R15 3 1
      239 SETTABLEKS                       R15 R14 K36 ["Description"]
      241 CALL                             R11 3 1
      242 SETTABLEKS                       R11 R10 K28 ["Content"]
      244 GETUPVAL                         R11 3
      245 GETTABLEKS                       R11 R11 K22 ["createElement"]
      247 GETUPVAL                         R12 5
      248 DUPTABLE                         R13 K77 [{["tag"] = "row align-x-center align-y-center gap-small auto-xy padding-x-medium", ["LayoutOrder"] = 2}]
      249 DUPTABLE                         R14 K79 [{"PrimaryActionButton"}]
      250 GETTABLEKS                       R16 R0 K80 ["primaryAction"]
      252 JUMPIFNOT                        R16 ; [+29]
      253 GETUPVAL                         R15 3
      254 GETTABLEKS                       R15 R15 K22 ["createElement"]
      256 GETUPVAL                         R16 11
      257 DUPTABLE                         R17 K81 [{["text"], ["onActivated"], ["variant"], ["size"], ["LayoutOrder"] = 2}]
      258 GETTABLEKS                       R18 R0 K80 ["primaryAction"]
      260 GETTABLEKS                       R18 R18 K68 ["text"]
      262 SETTABLEKS                       R18 R17 K68 ["text"]
      264 GETTABLEKS                       R18 R0 K80 ["primaryAction"]
      266 GETTABLEKS                       R18 R18 K75 ["onClick"]
      268 SETTABLEKS                       R18 R17 K69 ["onActivated"]
      270 GETUPVAL                         R18 12
      271 GETTABLEKS                       R18 R18 K82 ["Standard"]
      273 SETTABLEKS                       R18 R17 K40 ["variant"]
      275 GETUPVAL                         R18 13
      276 GETTABLEKS                       R18 R18 K83 ["Small"]
      278 SETTABLEKS                       R18 R17 K39 ["size"]
      280 CALL                             R15 2 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R15
      283 SETTABLEKS                       R15 R14 K78 ["PrimaryActionButton"]
      285 CALL                             R11 3 1
      286 SETTABLEKS                       R11 R10 K29 ["ButtonFrame"]
      288 GETTABLEKS                       R12 R0 K5 ["type"]
      290 JUMPIFNOTEQKS                    R12 K6 ["Error"] ; [+30]
      292 GETUPVAL                         R11 3
      293 GETTABLEKS                       R11 R11 K22 ["createElement"]
      295 GETUPVAL                         R12 14
      296 DUPTABLE                         R13 K86 [{["onActivated"], ["icon"], ["size"], ["variant"], ["LayoutOrder"] = 3}]
      297 NEWCLOSURE                       R14 P0
      298 CAPTURE                          VAL R0
      299 SETTABLEKS                       R14 R13 K69 ["onActivated"]
      301 DUPTABLE                         R14 K88 [{["name"] = "icons/navigation/close_small", ["variant"]}]
      302 GETUPVAL                         R15 8
      303 GETTABLEKS                       R15 R15 K46 ["Filled"]
      305 SETTABLEKS                       R15 R14 K40 ["variant"]
      307 SETTABLEKS                       R14 R13 K84 ["icon"]
      309 GETUPVAL                         R14 15
      310 GETTABLEKS                       R14 R14 K89 ["Medium"]
      312 SETTABLEKS                       R14 R13 K39 ["size"]
      314 GETUPVAL                         R14 12
      315 GETTABLEKS                       R14 R14 K90 ["Utility"]
      317 SETTABLEKS                       R14 R13 K40 ["variant"]
      319 CALL                             R11 2 1
      320 JUMP                             ; [+20]
      321 GETUPVAL                         R11 3
      322 GETTABLEKS                       R11 R11 K22 ["createElement"]
      324 GETUPVAL                         R12 16
      325 DUPTABLE                         R13 K96 [{["onActivated"], ["stateLayer"], ["onStateChanged"], ["tag"] = "size-500 padding-small content-emphasis", ["Image"] = "icons/navigation/close", ["LayoutOrder"] = 3}]
      326 NEWCLOSURE                       R14 P1
      327 CAPTURE                          VAL R0
      328 SETTABLEKS                       R14 R13 K69 ["onActivated"]
      330 DUPTABLE                         R14 K98 [{"affordance"}]
      331 GETUPVAL                         R15 17
      332 GETTABLEKS                       R15 R15 K99 ["None"]
      334 SETTABLEKS                       R15 R14 K97 ["affordance"]
      336 SETTABLEKS                       R14 R13 K91 ["stateLayer"]
      338 SETTABLEKS                       R2 R13 K92 ["onStateChanged"]
      340 CALL                             R11 2 1
      341 SETTABLEKS                       R11 R10 K30 ["CloseButton"]
      343 CALL                             R7 3 -1
      344 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useOnStateChangedCursor"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K13 ["useCursor"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R2 K11 ["Hooks"]
       43 GETTABLEKS                       R5 R5 K14 ["useTokens"]
       45 GETTABLEKS                       R6 R2 K15 ["View"]
       47 GETTABLEKS                       R7 R2 K16 ["Image"]
       49 GETTABLEKS                       R8 R2 K17 ["Text"]
       51 GETTABLEKS                       R9 R2 K18 ["Icon"]
       53 GETTABLEKS                       R10 R2 K19 ["IconButton"]
       55 GETTABLEKS                       R11 R2 K20 ["Button"]
       57 GETTABLEKS                       R12 R2 K21 ["Enums"]
       59 GETTABLEKS                       R12 R12 K22 ["IconSize"]
       61 GETTABLEKS                       R13 R2 K21 ["Enums"]
       63 GETTABLEKS                       R13 R13 K23 ["ButtonVariant"]
       65 GETTABLEKS                       R14 R2 K21 ["Enums"]
       67 GETTABLEKS                       R14 R14 K24 ["InputSize"]
       69 GETTABLEKS                       R15 R2 K21 ["Enums"]
       71 GETTABLEKS                       R15 R15 K25 ["Theme"]
       73 GETTABLEKS                       R16 R2 K21 ["Enums"]
       75 GETTABLEKS                       R16 R16 K26 ["StateLayerAffordance"]
       77 GETTABLEKS                       R17 R2 K21 ["Enums"]
       79 GETTABLEKS                       R17 R17 K27 ["IconName"]
       81 GETTABLEKS                       R18 R2 K21 ["Enums"]
       83 GETTABLEKS                       R18 R18 K28 ["IconVariant"]
       85 GETIMPORT                        R19 K5 [require]
       87 GETTABLEKS                       R20 R0 K8 ["Src"]
       89 GETTABLEKS                       R20 R20 K10 ["Foundation"]
       91 GETTABLEKS                       R20 R20 K29 ["Components"]
       93 GETTABLEKS                       R20 R20 K30 ["Frame"]
       95 CALL                             R19 1 1
       96 DUPCLOSURE                       R20 K31 [PROTO_2]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R6
      103 DUPCLOSURE                       R21 K32 [PROTO_5]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R19
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R20
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R16
      122 RETURN                           R21 1
