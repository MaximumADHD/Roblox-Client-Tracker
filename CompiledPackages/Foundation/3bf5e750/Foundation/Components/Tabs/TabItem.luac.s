PROTO_0:
        0 DUPTABLE                         R0 K4 [{[1], ["offset"] = 0, ["borderWidth"]}]
        1 GETIMPORT                        R1 K7 [UDim.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 0
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["radius"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K8 ["Stroke"]
       11 GETTABLEKS                       R1 R1 K9 ["Thicker"]
       13 SETTABLEKS                       R1 R0 K3 ["borderWidth"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["icon"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["icon"]
       10 FASTCALL1                        TYPEOF R1 ; [+2]
       11 GETIMPORT                        R0 K2 [typeof]
       13 CALL                             R0 1 1
       14 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+15]
       16 DUPTABLE                         R0 K6 [{"name", "variant"}]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["icon"]
       20 SETTABLEKS                       R1 R0 K4 ["name"]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K7 ["IconVariant"]
       25 GETTABLEKS                       R1 R1 K8 ["Regular"]
       27 SETTABLEKS                       R1 R0 K5 ["variant"]
       29 RETURN                           R0 1
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K0 ["icon"]
       33 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R4 R0 K0 ["isActive"]
        4 JUMPIFNOT                        R4 ; [+7]
        5 GETTABLEKS                       R3 R2 K1 ["Color"]
        7 GETTABLEKS                       R3 R3 K2 ["Content"]
        9 GETTABLEKS                       R3 R3 K3 ["Default"]
       11 JUMP                             ; [+6]
       12 GETTABLEKS                       R3 R2 K1 ["Color"]
       14 GETTABLEKS                       R3 R3 K2 ["Content"]
       16 GETTABLEKS                       R3 R3 K4 ["Emphasis"]
       18 GETTABLEKS                       R4 R2 K5 ["Stroke"]
       20 GETTABLEKS                       R4 R4 K6 ["Thick"]
       22 GETTABLEKS                       R6 R0 K7 ["fillBehavior"]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K8 ["Fill"]
       27 JUMPIFEQ                         R6 R7 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 GETUPVAL                         R6 2
       32 MOVE                             R7 R2
       33 GETTABLEKS                       R8 R0 K9 ["size"]
       35 MOVE                             R9 R5
       36 CALL                             R6 3 1
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R9 0 1
       44 MOVE                             R10 R2
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R8 R8 K10 ["useMemo"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U4
       54 NEWTABLE                         R10 0 1
       56 GETTABLEKS                       R11 R0 K11 ["icon"]
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 1
       61 LOADNIL                          R9
       62 JUMPIFNOT                        R8 ; [+86]
       63 GETUPVAL                         R10 5
       64 GETTABLEKS                       R11 R8 K12 ["name"]
       66 CALL                             R10 1 1
       67 JUMPIFNOT                        R10 ; [+48]
       68 GETUPVAL                         R10 3
       69 GETTABLEKS                       R10 R10 K13 ["createElement"]
       71 GETUPVAL                         R11 6
       72 DUPTABLE                         R12 K16 [{"name", "variant", "size", "style"}]
       73 GETUPVAL                         R14 7
       74 GETTABLEKS                       R15 R8 K12 ["name"]
       76 CALL                             R14 1 1
       77 JUMPIFNOT                        R14 ; [+7]
       78 GETUPVAL                         R14 8
       79 GETTABLEKS                       R15 R8 K12 ["name"]
       81 GETTABLE                         R13 R14 R15
       82 GETTABLEKS                       R13 R13 K12 ["name"]
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R13 R8 K12 ["name"]
       87 SETTABLEKS                       R13 R12 K12 ["name"]
       89 GETUPVAL                         R14 7
       90 GETTABLEKS                       R15 R8 K12 ["name"]
       92 CALL                             R14 1 1
       93 JUMPIFNOT                        R14 ; [+7]
       94 GETUPVAL                         R14 8
       95 GETTABLEKS                       R15 R8 K12 ["name"]
       97 GETTABLE                         R13 R14 R15
       98 GETTABLEKS                       R13 R13 K14 ["variant"]
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R13 R8 K14 ["variant"]
      103 SETTABLEKS                       R13 R12 K14 ["variant"]
      105 GETTABLEKS                       R13 R6 K11 ["icon"]
      107 GETTABLEKS                       R13 R13 K9 ["size"]
      109 SETTABLEKS                       R13 R12 K9 ["size"]
      111 SETTABLEKS                       R3 R12 K15 ["style"]
      113 CALL                             R10 2 1
      114 MOVE                             R9 R10
      115 JUMP                             ; [+33]
      116 GETUPVAL                         R10 9
      117 GETTABLEKS                       R11 R8 K12 ["name"]
      119 GETTABLEKS                       R12 R6 K11 ["icon"]
      121 GETTABLEKS                       R12 R12 K9 ["size"]
      123 CALL                             R10 2 2
      124 JUMPIFNOT                        R10 ; [+24]
      125 GETUPVAL                         R12 3
      126 GETTABLEKS                       R12 R12 K13 ["createElement"]
      128 GETUPVAL                         R13 10
      129 DUPTABLE                         R14 K21 [{"Image", "Size", "imageStyle", "scale"}]
      130 GETTABLEKS                       R15 R8 K12 ["name"]
      132 SETTABLEKS                       R15 R14 K17 ["Image"]
      134 GETIMPORT                        R15 K24 [UDim2.fromOffset]
      136 GETTABLEKS                       R16 R10 K25 ["X"]
      138 GETTABLEKS                       R17 R10 K26 ["Y"]
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K18 ["Size"]
      143 SETTABLEKS                       R3 R14 K19 ["imageStyle"]
      145 SETTABLEKS                       R11 R14 K20 ["scale"]
      147 CALL                             R12 2 1
      148 MOVE                             R9 R12
      149 LOADNIL                          R10
      150 LOADNIL                          R11
      151 JUMPIFNOT                        R5 ; [+8]
      152 GETIMPORT                        R12 K28 [UDim2.fromScale]
      154 LOADN                            R13 1
      155 LOADN                            R14 1
      156 CALL                             R12 2 1
      157 MOVE                             R10 R12
      158 LOADNIL                          R11
      159 JUMP                             ; [+18]
      160 GETTABLEKS                       R12 R2 K18 ["Size"]
      162 GETTABLEKS                       R12 R12 K29 ["Size_100"]
      164 GETIMPORT                        R13 K31 [UDim2.new]
      166 LOADN                            R14 1
      167 MULK                             R15 R12 K32 [2]
      168 LOADN                            R16 1
      169 LOADN                            R17 0
      170 CALL                             R13 4 1
      171 MOVE                             R10 R13
      172 GETIMPORT                        R13 K24 [UDim2.fromOffset]
      174 MINUS                            R14 R12
      175 LOADN                            R15 0
      176 CALL                             R13 2 1
      177 MOVE                             R11 R13
      178 GETUPVAL                         R12 3
      179 GETTABLEKS                       R12 R12 K13 ["createElement"]
      181 GETUPVAL                         R13 11
      182 DUPTABLE                         R14 K36 [{"tag", "GroupTransparency", "testId"}]
      183 GETTABLEKS                       R15 R6 K37 ["container"]
      185 GETTABLEKS                       R15 R15 K33 ["tag"]
      187 SETTABLEKS                       R15 R14 K33 ["tag"]
      189 GETTABLEKS                       R16 R0 K38 ["isDisabled"]
      191 JUMPIFNOT                        R16 ; [+4]
      192 GETUPVAL                         R15 12
      193 GETTABLEKS                       R15 R15 K39 ["DISABLED_TRANSPARENCY"]
      195 JUMP                             ; [+1]
      196 LOADNIL                          R15
      197 SETTABLEKS                       R15 R14 K34 ["GroupTransparency"]
      199 GETTABLEKS                       R15 R0 K35 ["testId"]
      201 SETTABLEKS                       R15 R14 K35 ["testId"]
      203 DUPTABLE                         R15 K42 [{"Interactive", "Content", "Border"}]
      204 GETUPVAL                         R16 3
      205 GETTABLEKS                       R16 R16 K13 ["createElement"]
      207 GETUPVAL                         R17 11
      208 DUPTABLE                         R18 K50 [{["LayoutOrder"] = 1, ["Size"], ["Position"], ["onActivated"], ["selection"], ["cursor"], ["isDisabled"], ["ref"]}]
      209 SETTABLEKS                       R10 R18 K18 ["Size"]
      211 SETTABLEKS                       R11 R18 K45 ["Position"]
      213 NEWCLOSURE                       R19 P2
      214 CAPTURE                          VAL R0
      215 SETTABLEKS                       R19 R18 K46 ["onActivated"]
      217 DUPTABLE                         R19 K52 [{"Selectable"}]
      218 GETTABLEKS                       R21 R0 K38 ["isDisabled"]
      220 NOT                              R20 R21
      221 SETTABLEKS                       R20 R19 K51 ["Selectable"]
      223 SETTABLEKS                       R19 R18 K47 ["selection"]
      225 SETTABLEKS                       R7 R18 K48 ["cursor"]
      227 GETTABLEKS                       R19 R0 K38 ["isDisabled"]
      229 SETTABLEKS                       R19 R18 K38 ["isDisabled"]
      231 GETUPVAL                         R20 13
      232 GETTABLEKS                       R20 R20 K53 ["FoundationAnimateTabs"]
      234 JUMPIFNOT                        R20 ; [+2]
      235 MOVE                             R19 R1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R19
      238 SETTABLEKS                       R19 R18 K49 ["ref"]
      240 CALL                             R16 2 1
      241 SETTABLEKS                       R16 R15 K40 ["Interactive"]
      243 GETUPVAL                         R16 3
      244 GETTABLEKS                       R16 R16 K13 ["createElement"]
      246 GETUPVAL                         R17 11
      247 DUPTABLE                         R18 K54 [{["LayoutOrder"] = 2, ["tag"]}]
      248 GETTABLEKS                       R19 R6 K55 ["content"]
      250 GETTABLEKS                       R19 R19 K33 ["tag"]
      252 SETTABLEKS                       R19 R18 K33 ["tag"]
      254 DUPTABLE                         R19 K58 [{"Icon", "Text"}]
      255 GETTABLEKS                       R21 R0 K11 ["icon"]
      257 JUMPIFNOT                        R21 ; [+2]
      258 MOVE                             R20 R9
      259 JUMP                             ; [+1]
      260 LOADNIL                          R20
      261 SETTABLEKS                       R20 R19 K56 ["Icon"]
      263 GETUPVAL                         R20 3
      264 GETTABLEKS                       R20 R20 K13 ["createElement"]
      266 GETUPVAL                         R21 14
      267 DUPTABLE                         R22 K59 [{["Text"], ["style"], ["tag"], ["LayoutOrder"] = 2}]
      268 GETTABLEKS                       R23 R0 K60 ["text"]
      270 SETTABLEKS                       R23 R22 K57 ["Text"]
      272 SETTABLEKS                       R3 R22 K15 ["style"]
      274 GETTABLEKS                       R23 R6 K60 ["text"]
      276 GETTABLEKS                       R23 R23 K33 ["tag"]
      278 SETTABLEKS                       R23 R22 K33 ["tag"]
      280 CALL                             R20 2 1
      281 SETTABLEKS                       R20 R19 K57 ["Text"]
      283 CALL                             R16 3 1
      284 SETTABLEKS                       R16 R15 K2 ["Content"]
      286 GETTABLEKS                       R17 R0 K0 ["isActive"]
      288 JUMPIFNOT                        R17 ; [+46]
      289 GETUPVAL                         R17 13
      290 GETTABLEKS                       R17 R17 K53 ["FoundationAnimateTabs"]
      292 JUMPIF                           R17 ; [+42]
      293 GETUPVAL                         R16 3
      294 GETTABLEKS                       R16 R16 K13 ["createElement"]
      296 GETUPVAL                         R17 11
      297 DUPTABLE                         R18 K63 [{["LayoutOrder"] = 3, ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      298 GETIMPORT                        R19 K31 [UDim2.new]
      300 LOADN                            R20 1
      301 LOADN                            R21 0
      302 LOADN                            R22 0
      303 MOVE                             R23 R4
      304 CALL                             R19 4 1
      305 SETTABLEKS                       R19 R18 K18 ["Size"]
      307 GETIMPORT                        R19 K31 [UDim2.new]
      309 LOADN                            R20 0
      310 LOADN                            R21 0
      311 LOADN                            R22 1
      312 MINUS                            R23 R4
      313 CALL                             R19 4 1
      314 SETTABLEKS                       R19 R18 K45 ["Position"]
      316 GETTABLEKS                       R19 R2 K1 ["Color"]
      318 GETTABLEKS                       R19 R19 K64 ["System"]
      320 GETTABLEKS                       R19 R19 K65 ["Contrast"]
      322 SETTABLEKS                       R19 R18 K62 ["backgroundStyle"]
      324 LOADK                            R20 K66 ["%*--border"]
      325 GETTABLEKS                       R22 R0 K35 ["testId"]
      327 NAMECALL                         R20 R20 K67 ["format"]
      329 CALL                             R20 2 1
      330 MOVE                             R19 R20
      331 SETTABLEKS                       R19 R18 K35 ["testId"]
      333 CALL                             R16 2 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R16
      336 SETTABLEKS                       R16 R15 K41 ["Border"]
      338 CALL                             R12 3 -1
      339 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Image"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K14 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Providers"]
       58 GETTABLEKS                       R10 R10 K16 ["Style"]
       60 GETTABLEKS                       R10 R10 K17 ["useTokens"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R11 R3 K19 ["Migration"]
       65 GETTABLEKS                       R10 R11 K18 ["uiblox"]
       67 GETIMPORT                        R11 K6 [require]
       69 GETTABLEKS                       R12 R0 K20 ["Enums"]
       71 GETTABLEKS                       R12 R12 K21 ["FillBehavior"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K6 [require]
       76 GETTABLEKS                       R13 R0 K20 ["Enums"]
       78 GETTABLEKS                       R13 R13 K22 ["InputSize"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K6 [require]
       83 GETTABLEKS                       R14 R0 K23 ["Utility"]
       85 GETTABLEKS                       R14 R14 K24 ["getIconScale"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K6 [require]
       90 GETTABLEKS                       R15 R0 K23 ["Utility"]
       92 GETTABLEKS                       R15 R15 K25 ["iconMigrationUtils"]
       94 CALL                             R14 1 1
       95 GETTABLEKS                       R15 R14 K26 ["isMigrated"]
       97 GETTABLEKS                       R16 R14 K27 ["isBuilderOrMigratedIcon"]
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R18 R0 K23 ["Utility"]
      103 GETTABLEKS                       R18 R18 K28 ["Flags"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETTABLEKS                       R19 R0 K29 ["Constants"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K6 [require]
      113 GETIMPORT                        R20 K1 [script]
      115 GETTABLEKS                       R20 R20 K4 ["Parent"]
      117 GETTABLEKS                       R20 R20 K30 ["useTabItemVariants"]
      119 CALL                             R19 1 1
      120 DUPCLOSURE                       R20 K31 [PROTO_3]
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R19
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R6
      136 GETTABLEKS                       R22 R17 K32 ["FoundationAnimateTabs"]
      138 JUMPIFNOT                        R22 ; [+8]
      139 GETTABLEKS                       R21 R2 K33 ["memo"]
      141 GETTABLEKS                       R22 R2 K34 ["forwardRef"]
      143 MOVE                             R23 R20
      144 CALL                             R22 1 -1
      145 CALL                             R21 -1 1
      146 RETURN                           R21 1
      147 MOVE                             R21 R20
      148 RETURN                           R21 1
