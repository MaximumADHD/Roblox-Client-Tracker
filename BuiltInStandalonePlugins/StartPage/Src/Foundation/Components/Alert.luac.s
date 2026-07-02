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
      122 GETUPVAL                         R19 7
      123 JUMPIFNOT                        R19 ; [+14]
      124 GETUPVAL                         R19 8
      125 JUMPIFNOT                        R19 ; [+8]
      126 GETTABLEKS                       R19 R0 K5 ["type"]
      128 JUMPIFNOTEQKS                    R19 K10 ["Info"] ; [+5]
      130 GETUPVAL                         R18 9
      131 GETTABLEKS                       R18 R18 K43 ["CircleI"]
      133 JUMP                             ; [+5]
      134 GETUPVAL                         R18 9
      135 GETTABLEKS                       R18 R18 K44 ["TriangleExclamation"]
      137 JUMP                             ; [+1]
      138 LOADK                            R18 K45 ["icons/status/alert"]
      139 SETTABLEKS                       R18 R17 K38 ["name"]
      141 GETUPVAL                         R19 7
      142 JUMPIFNOT                        R19 ; [+5]
      143 GETTABLEKS                       R18 R1 K46 ["Size"]
      145 GETTABLEKS                       R18 R18 K47 ["Size_800"]
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R18 10
      149 GETTABLEKS                       R18 R18 K48 ["Medium"]
      151 SETTABLEKS                       R18 R17 K39 ["size"]
      153 GETUPVAL                         R19 7
      154 JUMPIFNOT                        R19 ; [+4]
      155 GETUPVAL                         R18 11
      156 GETTABLEKS                       R18 R18 K49 ["Filled"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R18
      160 SETTABLEKS                       R18 R17 K40 ["variant"]
      162 DUPTABLE                         R18 K50 [{"Color3"}]
      163 SETTABLEKS                       R5 R18 K1 ["Color3"]
      165 SETTABLEKS                       R18 R17 K41 ["style"]
      167 CALL                             R15 2 1
      168 SETTABLEKS                       R15 R14 K35 ["Icon"]
      170 GETUPVAL                         R15 3
      171 GETTABLEKS                       R15 R15 K22 ["createElement"]
      173 GETUPVAL                         R16 5
      174 DUPTABLE                         R17 K53 [{["tag"] = "col align-x-left gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
      175 DUPTABLE                         R18 K56 [{"Title", "Body"}]
      176 GETUPVAL                         R19 3
      177 GETTABLEKS                       R19 R19 K22 ["createElement"]
      179 GETUPVAL                         R20 12
      180 DUPTABLE                         R21 K60 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["textStyle"], ["LayoutOrder"] = 1}]
      181 GETTABLEKS                       R22 R0 K61 ["title"]
      183 SETTABLEKS                       R22 R21 K57 ["Text"]
      185 JUMPIFNOT                        R6 ; [+4]
      186 DUPTABLE                         R22 K64 [{["Color3"], ["Transparency"] = 0}]
      187 SETTABLEKS                       R6 R22 K1 ["Color3"]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R22
      191 SETTABLEKS                       R22 R21 K59 ["textStyle"]
      193 CALL                             R19 2 1
      194 SETTABLEKS                       R19 R18 K54 ["Title"]
      196 GETUPVAL                         R19 3
      197 GETTABLEKS                       R19 R19 K22 ["createElement"]
      199 GETUPVAL                         R20 5
      200 DUPTABLE                         R21 K66 [{["tag"] = "row gap-small auto-xy", ["LayoutOrder"] = 2}]
      201 NEWTABLE                         R22 0 2
      203 GETUPVAL                         R23 3
      204 GETTABLEKS                       R23 R23 K22 ["createElement"]
      206 GETUPVAL                         R24 12
      207 DUPTABLE                         R25 K68 [{["Text"], ["tag"] = "auto-xy text-label-small content-emphasis", ["textStyle"]}]
      208 GETTABLEKS                       R26 R0 K69 ["body"]
      210 SETTABLEKS                       R26 R25 K57 ["Text"]
      212 JUMPIFNOT                        R6 ; [+4]
      213 DUPTABLE                         R26 K64 [{["Color3"], ["Transparency"] = 0}]
      214 SETTABLEKS                       R6 R26 K1 ["Color3"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R26
      218 SETTABLEKS                       R26 R25 K59 ["textStyle"]
      220 CALL                             R23 2 1
      221 GETTABLEKS                       R25 R0 K70 ["inlineAction"]
      223 JUMPIFNOT                        R25 ; [+32]
      224 GETUPVAL                         R24 3
      225 GETTABLEKS                       R24 R24 K22 ["createElement"]
      227 GETUPVAL                         R25 13
      228 DUPTABLE                         R26 K77 [{["text"], ["onActivated"], ["textColor"], ["showUnderline"] = True, ["underlineColor"]}]
      229 GETTABLEKS                       R27 R0 K70 ["inlineAction"]
      231 GETTABLEKS                       R27 R27 K71 ["text"]
      233 SETTABLEKS                       R27 R26 K71 ["text"]
      235 GETTABLEKS                       R27 R0 K70 ["inlineAction"]
      237 GETTABLEKS                       R27 R27 K78 ["onClick"]
      239 SETTABLEKS                       R27 R26 K72 ["onActivated"]
      241 SETTABLEKS                       R6 R26 K73 ["textColor"]
      243 GETTABLEKS                       R28 R0 K5 ["type"]
      245 JUMPIFNOTEQKS                    R28 K6 ["Error"] ; [+5]
      247 DUPTABLE                         R27 K64 [{["Color3"], ["Transparency"] = 0}]
      248 SETTABLEKS                       R6 R27 K1 ["Color3"]
      250 JUMP                             ; [+1]
      251 LOADNIL                          R27
      252 SETTABLEKS                       R27 R26 K76 ["underlineColor"]
      254 CALL                             R24 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R24
      257 SETLIST                          R22 R23 2 [1]
      259 CALL                             R19 3 1
      260 SETTABLEKS                       R19 R18 K55 ["Body"]
      262 CALL                             R15 3 1
      263 SETTABLEKS                       R15 R14 K36 ["Description"]
      265 CALL                             R11 3 1
      266 SETTABLEKS                       R11 R10 K28 ["Content"]
      268 GETUPVAL                         R11 3
      269 GETTABLEKS                       R11 R11 K22 ["createElement"]
      271 GETUPVAL                         R12 5
      272 DUPTABLE                         R13 K80 [{["tag"] = "row align-x-center align-y-center gap-small auto-xy padding-x-medium", ["LayoutOrder"] = 2}]
      273 DUPTABLE                         R14 K83 [{"SecondaryActionButton", "PrimaryActionButton"}]
      274 GETUPVAL                         R16 8
      275 JUMPIFNOT                        R16 ; [+34]
      276 GETTABLEKS                       R16 R0 K84 ["secondaryAction"]
      278 JUMPIFNOT                        R16 ; [+31]
      279 GETUPVAL                         R15 3
      280 GETTABLEKS                       R15 R15 K22 ["createElement"]
      282 GETUPVAL                         R16 13
      283 DUPTABLE                         R17 K85 [{["text"], ["onActivated"], ["size"], ["textColor"], ["showUnderline"] = True, ["underlineColor"], ["LayoutOrder"] = 1}]
      284 GETTABLEKS                       R18 R0 K84 ["secondaryAction"]
      286 GETTABLEKS                       R18 R18 K71 ["text"]
      288 SETTABLEKS                       R18 R17 K71 ["text"]
      290 GETTABLEKS                       R18 R0 K84 ["secondaryAction"]
      292 GETTABLEKS                       R18 R18 K78 ["onClick"]
      294 SETTABLEKS                       R18 R17 K72 ["onActivated"]
      296 GETUPVAL                         R18 14
      297 GETTABLEKS                       R18 R18 K86 ["Small"]
      299 SETTABLEKS                       R18 R17 K39 ["size"]
      301 SETTABLEKS                       R6 R17 K73 ["textColor"]
      303 DUPTABLE                         R18 K64 [{["Color3"], ["Transparency"] = 0}]
      304 SETTABLEKS                       R6 R18 K1 ["Color3"]
      306 SETTABLEKS                       R18 R17 K76 ["underlineColor"]
      308 CALL                             R15 2 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R15
      311 SETTABLEKS                       R15 R14 K81 ["SecondaryActionButton"]
      313 GETTABLEKS                       R16 R0 K87 ["primaryAction"]
      315 JUMPIFNOT                        R16 ; [+29]
      316 GETUPVAL                         R15 3
      317 GETTABLEKS                       R15 R15 K22 ["createElement"]
      319 GETUPVAL                         R16 15
      320 DUPTABLE                         R17 K88 [{["text"], ["onActivated"], ["variant"], ["size"], ["LayoutOrder"] = 2}]
      321 GETTABLEKS                       R18 R0 K87 ["primaryAction"]
      323 GETTABLEKS                       R18 R18 K71 ["text"]
      325 SETTABLEKS                       R18 R17 K71 ["text"]
      327 GETTABLEKS                       R18 R0 K87 ["primaryAction"]
      329 GETTABLEKS                       R18 R18 K78 ["onClick"]
      331 SETTABLEKS                       R18 R17 K72 ["onActivated"]
      333 GETUPVAL                         R18 16
      334 GETTABLEKS                       R18 R18 K89 ["Standard"]
      336 SETTABLEKS                       R18 R17 K40 ["variant"]
      338 GETUPVAL                         R18 14
      339 GETTABLEKS                       R18 R18 K86 ["Small"]
      341 SETTABLEKS                       R18 R17 K39 ["size"]
      343 CALL                             R15 2 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R15
      346 SETTABLEKS                       R15 R14 K82 ["PrimaryActionButton"]
      348 CALL                             R11 3 1
      349 SETTABLEKS                       R11 R10 K29 ["ButtonFrame"]
      351 GETTABLEKS                       R12 R0 K5 ["type"]
      353 JUMPIFNOTEQKS                    R12 K6 ["Error"] ; [+30]
      355 GETUPVAL                         R11 3
      356 GETTABLEKS                       R11 R11 K22 ["createElement"]
      358 GETUPVAL                         R12 17
      359 DUPTABLE                         R13 K92 [{["onActivated"], ["icon"], ["size"], ["variant"], ["LayoutOrder"] = 3}]
      360 NEWCLOSURE                       R14 P0
      361 CAPTURE                          VAL R0
      362 SETTABLEKS                       R14 R13 K72 ["onActivated"]
      364 DUPTABLE                         R14 K94 [{["name"] = "icons/navigation/close_small", ["variant"]}]
      365 GETUPVAL                         R15 11
      366 GETTABLEKS                       R15 R15 K49 ["Filled"]
      368 SETTABLEKS                       R15 R14 K40 ["variant"]
      370 SETTABLEKS                       R14 R13 K90 ["icon"]
      372 GETUPVAL                         R14 10
      373 GETTABLEKS                       R14 R14 K48 ["Medium"]
      375 SETTABLEKS                       R14 R13 K39 ["size"]
      377 GETUPVAL                         R14 16
      378 GETTABLEKS                       R14 R14 K95 ["Utility"]
      380 SETTABLEKS                       R14 R13 K40 ["variant"]
      382 CALL                             R11 2 1
      383 JUMP                             ; [+20]
      384 GETUPVAL                         R11 3
      385 GETTABLEKS                       R11 R11 K22 ["createElement"]
      387 GETUPVAL                         R12 18
      388 DUPTABLE                         R13 K101 [{["onActivated"], ["stateLayer"], ["onStateChanged"], ["tag"] = "size-500 padding-small content-emphasis", ["Image"] = "icons/navigation/close", ["LayoutOrder"] = 3}]
      389 NEWCLOSURE                       R14 P1
      390 CAPTURE                          VAL R0
      391 SETTABLEKS                       R14 R13 K72 ["onActivated"]
      393 DUPTABLE                         R14 K103 [{"affordance"}]
      394 GETUPVAL                         R15 19
      395 GETTABLEKS                       R15 R15 K104 ["None"]
      397 SETTABLEKS                       R15 R14 K102 ["affordance"]
      399 SETTABLEKS                       R14 R13 K96 ["stateLayer"]
      401 SETTABLEKS                       R2 R13 K97 ["onStateChanged"]
      403 CALL                             R11 2 1
      404 SETTABLEKS                       R11 R10 K30 ["CloseButton"]
      406 CALL                             R7 3 -1
      407 RETURN                           R7 -1

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
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["SharedFlags"]
       47 GETTABLEKS                       R6 R6 K15 ["getFFlagLuaStartPageBuilderIcons"]
       49 CALL                             R5 1 1
       50 CALL                             R5 0 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K8 ["Src"]
       55 GETTABLEKS                       R7 R7 K14 ["SharedFlags"]
       57 GETTABLEKS                       R7 R7 K16 ["getFFlagLuaStartPageVerifyAgeBanner"]
       59 CALL                             R6 1 1
       60 GETTABLEKS                       R7 R2 K11 ["Hooks"]
       62 GETTABLEKS                       R7 R7 K17 ["useTokens"]
       64 GETTABLEKS                       R8 R2 K18 ["View"]
       66 GETTABLEKS                       R9 R2 K19 ["Image"]
       68 GETTABLEKS                       R10 R2 K20 ["Text"]
       70 GETTABLEKS                       R11 R2 K21 ["Icon"]
       72 GETTABLEKS                       R12 R2 K22 ["IconButton"]
       74 GETTABLEKS                       R13 R2 K23 ["Button"]
       76 GETTABLEKS                       R14 R2 K24 ["Enums"]
       78 GETTABLEKS                       R14 R14 K25 ["IconSize"]
       80 GETTABLEKS                       R15 R2 K24 ["Enums"]
       82 GETTABLEKS                       R15 R15 K26 ["ButtonVariant"]
       84 GETTABLEKS                       R16 R2 K24 ["Enums"]
       86 GETTABLEKS                       R16 R16 K27 ["InputSize"]
       88 GETTABLEKS                       R17 R2 K24 ["Enums"]
       90 GETTABLEKS                       R17 R17 K28 ["Theme"]
       92 GETTABLEKS                       R18 R2 K24 ["Enums"]
       94 GETTABLEKS                       R18 R18 K29 ["StateLayerAffordance"]
       96 GETTABLEKS                       R19 R2 K24 ["Enums"]
       98 GETTABLEKS                       R19 R19 K30 ["IconName"]
      100 GETTABLEKS                       R20 R2 K24 ["Enums"]
      102 GETTABLEKS                       R20 R20 K31 ["IconVariant"]
      104 GETIMPORT                        R21 K5 [require]
      106 GETTABLEKS                       R22 R0 K8 ["Src"]
      108 GETTABLEKS                       R22 R22 K10 ["Foundation"]
      110 GETTABLEKS                       R22 R22 K32 ["Components"]
      112 GETTABLEKS                       R22 R22 K33 ["Frame"]
      114 CALL                             R21 1 1
      115 DUPCLOSURE                       R22 K34 [PROTO_2]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R8
      122 DUPCLOSURE                       R23 K35 [PROTO_5]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R18
      143 RETURN                           R23 1
