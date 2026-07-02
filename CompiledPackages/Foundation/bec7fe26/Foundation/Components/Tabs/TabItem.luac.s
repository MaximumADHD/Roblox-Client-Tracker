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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["isActive"]
        4 JUMPIFNOT                        R3 ; [+7]
        5 GETTABLEKS                       R2 R1 K1 ["Color"]
        7 GETTABLEKS                       R2 R2 K2 ["Content"]
        9 GETTABLEKS                       R2 R2 K3 ["Default"]
       11 JUMP                             ; [+6]
       12 GETTABLEKS                       R2 R1 K1 ["Color"]
       14 GETTABLEKS                       R2 R2 K2 ["Content"]
       16 GETTABLEKS                       R2 R2 K4 ["Emphasis"]
       18 GETTABLEKS                       R3 R1 K5 ["Stroke"]
       20 GETTABLEKS                       R3 R3 K6 ["Thick"]
       22 GETTABLEKS                       R5 R0 K7 ["fillBehavior"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K8 ["Fill"]
       27 JUMPIFEQ                         R5 R6 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R1
       33 GETTABLEKS                       R7 R0 K9 ["size"]
       35 MOVE                             R8 R4
       36 CALL                             R5 3 1
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          VAL R1
       42 NEWTABLE                         R8 0 1
       44 MOVE                             R9 R1
       45 SETLIST                          R8 R9 1 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U4
       54 NEWTABLE                         R9 0 1
       56 GETTABLEKS                       R10 R0 K11 ["icon"]
       58 SETLIST                          R9 R10 1 [1]
       60 CALL                             R7 2 1
       61 LOADNIL                          R8
       62 JUMPIFNOT                        R7 ; [+86]
       63 GETUPVAL                         R9 5
       64 GETTABLEKS                       R10 R7 K12 ["name"]
       66 CALL                             R9 1 1
       67 JUMPIFNOT                        R9 ; [+48]
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K13 ["createElement"]
       71 GETUPVAL                         R10 6
       72 DUPTABLE                         R11 K16 [{"name", "variant", "size", "style"}]
       73 GETUPVAL                         R13 7
       74 GETTABLEKS                       R14 R7 K12 ["name"]
       76 CALL                             R13 1 1
       77 JUMPIFNOT                        R13 ; [+7]
       78 GETUPVAL                         R13 8
       79 GETTABLEKS                       R14 R7 K12 ["name"]
       81 GETTABLE                         R12 R13 R14
       82 GETTABLEKS                       R12 R12 K12 ["name"]
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R12 R7 K12 ["name"]
       87 SETTABLEKS                       R12 R11 K12 ["name"]
       89 GETUPVAL                         R13 7
       90 GETTABLEKS                       R14 R7 K12 ["name"]
       92 CALL                             R13 1 1
       93 JUMPIFNOT                        R13 ; [+7]
       94 GETUPVAL                         R13 8
       95 GETTABLEKS                       R14 R7 K12 ["name"]
       97 GETTABLE                         R12 R13 R14
       98 GETTABLEKS                       R12 R12 K14 ["variant"]
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R12 R7 K14 ["variant"]
      103 SETTABLEKS                       R12 R11 K14 ["variant"]
      105 GETTABLEKS                       R12 R5 K11 ["icon"]
      107 GETTABLEKS                       R12 R12 K9 ["size"]
      109 SETTABLEKS                       R12 R11 K9 ["size"]
      111 SETTABLEKS                       R2 R11 K15 ["style"]
      113 CALL                             R9 2 1
      114 MOVE                             R8 R9
      115 JUMP                             ; [+33]
      116 GETUPVAL                         R9 9
      117 GETTABLEKS                       R10 R7 K12 ["name"]
      119 GETTABLEKS                       R11 R5 K11 ["icon"]
      121 GETTABLEKS                       R11 R11 K9 ["size"]
      123 CALL                             R9 2 2
      124 JUMPIFNOT                        R9 ; [+24]
      125 GETUPVAL                         R11 3
      126 GETTABLEKS                       R11 R11 K13 ["createElement"]
      128 GETUPVAL                         R12 10
      129 DUPTABLE                         R13 K21 [{"Image", "Size", "imageStyle", "scale"}]
      130 GETTABLEKS                       R14 R7 K12 ["name"]
      132 SETTABLEKS                       R14 R13 K17 ["Image"]
      134 GETIMPORT                        R14 K24 [UDim2.fromOffset]
      136 GETTABLEKS                       R15 R9 K25 ["X"]
      138 GETTABLEKS                       R16 R9 K26 ["Y"]
      140 CALL                             R14 2 1
      141 SETTABLEKS                       R14 R13 K18 ["Size"]
      143 SETTABLEKS                       R2 R13 K19 ["imageStyle"]
      145 SETTABLEKS                       R10 R13 K20 ["scale"]
      147 CALL                             R11 2 1
      148 MOVE                             R8 R11
      149 LOADNIL                          R9
      150 LOADNIL                          R10
      151 JUMPIFNOT                        R4 ; [+8]
      152 GETIMPORT                        R11 K28 [UDim2.fromScale]
      154 LOADN                            R12 1
      155 LOADN                            R13 1
      156 CALL                             R11 2 1
      157 MOVE                             R9 R11
      158 LOADNIL                          R10
      159 JUMP                             ; [+20]
      160 GETTABLEKS                       R11 R1 K18 ["Size"]
      162 GETTABLEKS                       R11 R11 K29 ["Size_100"]
      164 GETIMPORT                        R12 K31 [UDim2.new]
      166 LOADN                            R13 1
      167 MULK                             R14 R11 K32 [2]
      168 LOADN                            R15 1
      169 LOADN                            R16 0
      170 CALL                             R12 4 1
      171 MOVE                             R9 R12
      172 GETIMPORT                        R12 K31 [UDim2.new]
      174 LOADN                            R13 0
      175 MINUS                            R14 R11
      176 LOADN                            R15 0
      177 LOADN                            R16 0
      178 CALL                             R12 4 1
      179 MOVE                             R10 R12
      180 GETUPVAL                         R11 3
      181 GETTABLEKS                       R11 R11 K13 ["createElement"]
      183 GETUPVAL                         R12 11
      184 DUPTABLE                         R13 K36 [{"tag", "GroupTransparency", "testId"}]
      185 GETTABLEKS                       R14 R5 K37 ["container"]
      187 GETTABLEKS                       R14 R14 K33 ["tag"]
      189 SETTABLEKS                       R14 R13 K33 ["tag"]
      191 GETTABLEKS                       R15 R0 K38 ["isDisabled"]
      193 JUMPIFNOT                        R15 ; [+4]
      194 GETUPVAL                         R14 12
      195 GETTABLEKS                       R14 R14 K39 ["DISABLED_TRANSPARENCY"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R14
      199 SETTABLEKS                       R14 R13 K34 ["GroupTransparency"]
      201 GETTABLEKS                       R14 R0 K35 ["testId"]
      203 SETTABLEKS                       R14 R13 K35 ["testId"]
      205 DUPTABLE                         R14 K42 [{"Interactive", "Content", "Border"}]
      206 GETUPVAL                         R15 3
      207 GETTABLEKS                       R15 R15 K13 ["createElement"]
      209 GETUPVAL                         R16 11
      210 DUPTABLE                         R17 K49 [{["LayoutOrder"] = 1, ["Size"], ["Position"], ["onActivated"], ["selection"], ["cursor"], ["isDisabled"]}]
      211 SETTABLEKS                       R9 R17 K18 ["Size"]
      213 SETTABLEKS                       R10 R17 K45 ["Position"]
      215 NEWCLOSURE                       R18 P2
      216 CAPTURE                          VAL R0
      217 SETTABLEKS                       R18 R17 K46 ["onActivated"]
      219 DUPTABLE                         R18 K51 [{"Selectable"}]
      220 GETTABLEKS                       R20 R0 K38 ["isDisabled"]
      222 NOT                              R19 R20
      223 SETTABLEKS                       R19 R18 K50 ["Selectable"]
      225 SETTABLEKS                       R18 R17 K47 ["selection"]
      227 SETTABLEKS                       R6 R17 K48 ["cursor"]
      229 GETTABLEKS                       R18 R0 K38 ["isDisabled"]
      231 SETTABLEKS                       R18 R17 K38 ["isDisabled"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K40 ["Interactive"]
      236 GETUPVAL                         R15 3
      237 GETTABLEKS                       R15 R15 K13 ["createElement"]
      239 GETUPVAL                         R16 11
      240 DUPTABLE                         R17 K52 [{["LayoutOrder"] = 2, ["tag"]}]
      241 GETTABLEKS                       R18 R5 K53 ["content"]
      243 GETTABLEKS                       R18 R18 K33 ["tag"]
      245 SETTABLEKS                       R18 R17 K33 ["tag"]
      247 DUPTABLE                         R18 K56 [{"Icon", "Text"}]
      248 GETTABLEKS                       R20 R0 K11 ["icon"]
      250 JUMPIFNOT                        R20 ; [+2]
      251 MOVE                             R19 R8
      252 JUMP                             ; [+1]
      253 LOADNIL                          R19
      254 SETTABLEKS                       R19 R18 K54 ["Icon"]
      256 GETUPVAL                         R19 3
      257 GETTABLEKS                       R19 R19 K13 ["createElement"]
      259 GETUPVAL                         R20 13
      260 DUPTABLE                         R21 K57 [{["Text"], ["style"], ["tag"], ["LayoutOrder"] = 2}]
      261 GETTABLEKS                       R22 R0 K58 ["text"]
      263 SETTABLEKS                       R22 R21 K55 ["Text"]
      265 SETTABLEKS                       R2 R21 K15 ["style"]
      267 GETTABLEKS                       R22 R5 K58 ["text"]
      269 GETTABLEKS                       R22 R22 K33 ["tag"]
      271 SETTABLEKS                       R22 R21 K33 ["tag"]
      273 CALL                             R19 2 1
      274 SETTABLEKS                       R19 R18 K55 ["Text"]
      276 CALL                             R15 3 1
      277 SETTABLEKS                       R15 R14 K2 ["Content"]
      279 GETTABLEKS                       R16 R0 K0 ["isActive"]
      281 JUMPIFNOT                        R16 ; [+42]
      282 GETUPVAL                         R15 3
      283 GETTABLEKS                       R15 R15 K13 ["createElement"]
      285 GETUPVAL                         R16 11
      286 DUPTABLE                         R17 K61 [{["LayoutOrder"] = 3, ["Size"], ["Position"], ["backgroundStyle"], ["testId"]}]
      287 GETIMPORT                        R18 K31 [UDim2.new]
      289 LOADN                            R19 1
      290 LOADN                            R20 0
      291 LOADN                            R21 0
      292 MOVE                             R22 R3
      293 CALL                             R18 4 1
      294 SETTABLEKS                       R18 R17 K18 ["Size"]
      296 GETIMPORT                        R18 K31 [UDim2.new]
      298 LOADN                            R19 0
      299 LOADN                            R20 0
      300 LOADN                            R21 1
      301 MINUS                            R22 R3
      302 CALL                             R18 4 1
      303 SETTABLEKS                       R18 R17 K45 ["Position"]
      305 GETTABLEKS                       R18 R1 K1 ["Color"]
      307 GETTABLEKS                       R18 R18 K62 ["System"]
      309 GETTABLEKS                       R18 R18 K63 ["Contrast"]
      311 SETTABLEKS                       R18 R17 K60 ["backgroundStyle"]
      313 LOADK                            R19 K64 ["%*--border"]
      314 GETTABLEKS                       R21 R0 K35 ["testId"]
      316 NAMECALL                         R19 R19 K65 ["format"]
      318 CALL                             R19 2 1
      319 MOVE                             R18 R19
      320 SETTABLEKS                       R18 R17 K35 ["testId"]
      322 CALL                             R15 2 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R15
      325 SETTABLEKS                       R15 R14 K41 ["Border"]
      327 CALL                             R11 3 -1
      328 RETURN                           R11 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Image"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Icon"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Providers"]
       53 GETTABLEKS                       R9 R9 K15 ["Style"]
       55 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R1 K17 ["BuilderIcons"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R11 R9 K19 ["Migration"]
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
      101 GETTABLEKS                       R18 R0 K28 ["Constants"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETIMPORT                        R19 K1 [script]
      108 GETTABLEKS                       R19 R19 K4 ["Parent"]
      110 GETTABLEKS                       R19 R19 K29 ["useTabItemVariants"]
      112 CALL                             R18 1 1
      113 DUPCLOSURE                       R19 K30 [PROTO_3]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R4
      128 RETURN                           R19 1
