PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["severity"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R5 R5 K1 ["useComposedRef"]
       14 MOVE                             R6 R1
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R7 R2 K2 ["link"]
       18 JUMPIFNOT                        R7 ; [+7]
       19 GETUPVAL                         R6 5
       20 GETTABLEKS                       R7 R2 K2 ["link"]
       22 GETTABLEKS                       R7 R7 K3 ["text"]
       24 CALL                             R6 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 GETUPVAL                         R7 6
       28 GETTABLEKS                       R7 R7 K4 ["useState"]
       30 LOADB                            R8 0
       31 CALL                             R7 1 2
       32 GETUPVAL                         R9 6
       33 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R8
       37 CAPTURE                          UPVAL U7
       38 NEWTABLE                         R11 0 0
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 6
       42 GETTABLEKS                       R10 R10 K6 ["createElement"]
       44 GETUPVAL                         R11 8
       45 GETUPVAL                         R12 9
       46 MOVE                             R13 R2
       47 DUPTABLE                         R14 K11 [{"tag", "stroke", "backgroundStyle", "ref"}]
       48 GETTABLEKS                       R15 R4 K12 ["container"]
       50 GETTABLEKS                       R15 R15 K7 ["tag"]
       52 SETTABLEKS                       R15 R14 K7 ["tag"]
       54 GETTABLEKS                       R15 R4 K8 ["stroke"]
       56 SETTABLEKS                       R15 R14 K8 ["stroke"]
       58 GETTABLEKS                       R15 R4 K9 ["backgroundStyle"]
       60 SETTABLEKS                       R15 R14 K9 ["backgroundStyle"]
       62 SETTABLEKS                       R5 R14 K10 ["ref"]
       64 CALL                             R12 2 1
       65 DUPTABLE                         R13 K16 [{"HeaderRow", "Description", "Actions"}]
       66 GETUPVAL                         R14 6
       67 GETTABLEKS                       R14 R14 K6 ["createElement"]
       69 GETUPVAL                         R15 8
       70 DUPTABLE                         R16 K20 [{["LayoutOrder"] = 1, ["tag"], ["testId"]}]
       71 GETTABLEKS                       R17 R4 K21 ["headerRow"]
       73 GETTABLEKS                       R17 R17 K7 ["tag"]
       75 SETTABLEKS                       R17 R16 K7 ["tag"]
       77 LOADK                            R18 K22 ["%*--header"]
       78 GETTABLEKS                       R20 R2 K19 ["testId"]
       80 NAMECALL                         R18 R18 K23 ["format"]
       82 CALL                             R18 2 1
       83 MOVE                             R17 R18
       84 SETTABLEKS                       R17 R16 K19 ["testId"]
       86 DUPTABLE                         R17 K27 [{"Icon", "Content", "Close"}]
       87 GETUPVAL                         R18 6
       88 GETTABLEKS                       R18 R18 K6 ["createElement"]
       90 GETUPVAL                         R19 10
       91 DUPTABLE                         R20 K32 [{["LayoutOrder"] = 1, ["name"], ["size"], ["variant"], ["style"], ["testId"]}]
       92 GETUPVAL                         R22 11
       93 GETTABLEKS                       R22 R22 K33 ["SEVERITY_TO_ICON"]
       95 GETTABLEKS                       R23 R2 K0 ["severity"]
       97 GETTABLE                         R21 R22 R23
       98 SETTABLEKS                       R21 R20 K28 ["name"]
      100 GETUPVAL                         R21 12
      101 GETTABLEKS                       R21 R21 K34 ["Large"]
      103 SETTABLEKS                       R21 R20 K29 ["size"]
      105 GETUPVAL                         R21 13
      106 GETTABLEKS                       R21 R21 K35 ["Filled"]
      108 SETTABLEKS                       R21 R20 K30 ["variant"]
      110 GETTABLEKS                       R21 R4 K36 ["icon"]
      112 GETTABLEKS                       R21 R21 K31 ["style"]
      114 SETTABLEKS                       R21 R20 K31 ["style"]
      116 LOADK                            R22 K37 ["%*--icon"]
      117 GETTABLEKS                       R24 R2 K19 ["testId"]
      119 NAMECALL                         R22 R22 K23 ["format"]
      121 CALL                             R22 2 1
      122 MOVE                             R21 R22
      123 SETTABLEKS                       R21 R20 K19 ["testId"]
      125 CALL                             R18 2 1
      126 SETTABLEKS                       R18 R17 K24 ["Icon"]
      128 GETUPVAL                         R18 6
      129 GETTABLEKS                       R18 R18 K6 ["createElement"]
      131 GETUPVAL                         R19 8
      132 DUPTABLE                         R20 K40 [{["LayoutOrder"] = 2, ["tag"] = "row align-y-center fill gap-xsmall auto-y", ["testId"]}]
      133 LOADK                            R22 K41 ["%*--content"]
      134 GETTABLEKS                       R24 R2 K19 ["testId"]
      136 NAMECALL                         R22 R22 K23 ["format"]
      138 CALL                             R22 2 1
      139 MOVE                             R21 R22
      140 SETTABLEKS                       R21 R20 K19 ["testId"]
      142 DUPTABLE                         R21 K46 [{"Title", "Subtitle", "Separator", "Link"}]
      143 GETUPVAL                         R22 6
      144 GETTABLEKS                       R22 R22 K6 ["createElement"]
      146 GETUPVAL                         R23 14
      147 DUPTABLE                         R24 K48 [{["Text"], ["tag"], ["LayoutOrder"] = 1, ["testId"]}]
      148 GETTABLEKS                       R25 R2 K49 ["title"]
      150 SETTABLEKS                       R25 R24 K47 ["Text"]
      152 GETTABLEKS                       R25 R4 K49 ["title"]
      154 GETTABLEKS                       R25 R25 K7 ["tag"]
      156 SETTABLEKS                       R25 R24 K7 ["tag"]
      158 LOADK                            R26 K50 ["%*--title"]
      159 GETTABLEKS                       R28 R2 K19 ["testId"]
      161 NAMECALL                         R26 R26 K23 ["format"]
      163 CALL                             R26 2 1
      164 MOVE                             R25 R26
      165 SETTABLEKS                       R25 R24 K19 ["testId"]
      167 CALL                             R22 2 1
      168 SETTABLEKS                       R22 R21 K42 ["Title"]
      170 GETTABLEKS                       R23 R2 K51 ["subtitle"]
      172 JUMPIFNOT                        R23 ; [+26]
      173 GETUPVAL                         R22 6
      174 GETTABLEKS                       R22 R22 K6 ["createElement"]
      176 GETUPVAL                         R23 14
      177 DUPTABLE                         R24 K52 [{["Text"], ["tag"], ["LayoutOrder"] = 2, ["testId"]}]
      178 GETTABLEKS                       R25 R2 K51 ["subtitle"]
      180 SETTABLEKS                       R25 R24 K47 ["Text"]
      182 GETTABLEKS                       R25 R4 K51 ["subtitle"]
      184 GETTABLEKS                       R25 R25 K7 ["tag"]
      186 SETTABLEKS                       R25 R24 K7 ["tag"]
      188 LOADK                            R26 K53 ["%*--subtitle"]
      189 GETTABLEKS                       R28 R2 K19 ["testId"]
      191 NAMECALL                         R26 R26 K23 ["format"]
      193 CALL                             R26 2 1
      194 MOVE                             R25 R26
      195 SETTABLEKS                       R25 R24 K19 ["testId"]
      197 CALL                             R22 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R22
      200 SETTABLEKS                       R22 R21 K43 ["Subtitle"]
      202 GETTABLEKS                       R23 R2 K2 ["link"]
      204 JUMPIFNOT                        R23 ; [+16]
      205 GETUPVAL                         R22 6
      206 GETTABLEKS                       R22 R22 K6 ["createElement"]
      208 GETUPVAL                         R23 14
      209 DUPTABLE                         R24 K57 [{["Text"] = "·", ["tag"] = "auto-xy text-body-medium content-default", ["LayoutOrder"] = 3, ["testId"]}]
      210 LOADK                            R26 K58 ["%*--separator"]
      211 GETTABLEKS                       R28 R2 K19 ["testId"]
      213 NAMECALL                         R26 R26 K23 ["format"]
      215 CALL                             R26 2 1
      216 MOVE                             R25 R26
      217 SETTABLEKS                       R25 R24 K19 ["testId"]
      219 CALL                             R22 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R22
      222 SETTABLEKS                       R22 R21 K44 ["Separator"]
      224 GETTABLEKS                       R23 R2 K2 ["link"]
      226 JUMPIFNOT                        R23 ; [+49]
      227 GETUPVAL                         R22 6
      228 GETTABLEKS                       R22 R22 K6 ["createElement"]
      230 GETUPVAL                         R23 14
      231 DUPTABLE                         R24 K65 [{["Text"], ["RichText"] = True, ["tag"], ["LayoutOrder"] = 4, ["stateLayer"], ["onStateChanged"], ["onActivated"], ["testId"]}]
      232 JUMPIFNOT                        R7 ; [+7]
      233 LOADK                            R26 K66 ["<u>%*</u>"]
      234 MOVE                             R28 R6
      235 NAMECALL                         R26 R26 K23 ["format"]
      237 CALL                             R26 2 1
      238 MOVE                             R25 R26
      239 JUMP                             ; [+1]
      240 MOVE                             R25 R6
      241 SETTABLEKS                       R25 R24 K47 ["Text"]
      243 GETTABLEKS                       R25 R4 K2 ["link"]
      245 GETTABLEKS                       R25 R25 K7 ["tag"]
      247 SETTABLEKS                       R25 R24 K7 ["tag"]
      249 DUPTABLE                         R25 K68 [{"affordance"}]
      250 GETUPVAL                         R26 15
      251 GETTABLEKS                       R26 R26 K69 ["None"]
      253 SETTABLEKS                       R26 R25 K67 ["affordance"]
      255 SETTABLEKS                       R25 R24 K62 ["stateLayer"]
      257 SETTABLEKS                       R9 R24 K63 ["onStateChanged"]
      259 GETTABLEKS                       R25 R2 K2 ["link"]
      261 GETTABLEKS                       R25 R25 K64 ["onActivated"]
      263 SETTABLEKS                       R25 R24 K64 ["onActivated"]
      265 LOADK                            R26 K70 ["%*--link"]
      266 GETTABLEKS                       R28 R2 K19 ["testId"]
      268 NAMECALL                         R26 R26 K23 ["format"]
      270 CALL                             R26 2 1
      271 MOVE                             R25 R26
      272 SETTABLEKS                       R25 R24 K19 ["testId"]
      274 CALL                             R22 2 1
      275 JUMP                             ; [+1]
      276 LOADNIL                          R22
      277 SETTABLEKS                       R22 R21 K45 ["Link"]
      279 CALL                             R18 3 1
      280 SETTABLEKS                       R18 R17 K25 ["Content"]
      282 GETTABLEKS                       R19 R2 K71 ["onClose"]
      284 JUMPIFEQKNIL                     R19 ; [+31]
      286 GETUPVAL                         R18 6
      287 GETTABLEKS                       R18 R18 K6 ["createElement"]
      289 GETUPVAL                         R19 16
      290 DUPTABLE                         R20 K72 [{["onActivated"], ["size"], ["variant"], ["LayoutOrder"] = 3, ["testId"]}]
      291 GETTABLEKS                       R21 R2 K71 ["onClose"]
      293 SETTABLEKS                       R21 R20 K64 ["onActivated"]
      295 GETUPVAL                         R21 17
      296 GETTABLEKS                       R21 R21 K73 ["XSmall"]
      298 SETTABLEKS                       R21 R20 K29 ["size"]
      300 GETUPVAL                         R21 18
      301 GETTABLEKS                       R21 R21 K74 ["Utility"]
      303 SETTABLEKS                       R21 R20 K30 ["variant"]
      305 LOADK                            R22 K75 ["%*--close"]
      306 GETTABLEKS                       R24 R2 K19 ["testId"]
      308 NAMECALL                         R22 R22 K23 ["format"]
      310 CALL                             R22 2 1
      311 MOVE                             R21 R22
      312 SETTABLEKS                       R21 R20 K19 ["testId"]
      314 CALL                             R18 2 1
      315 JUMP                             ; [+1]
      316 LOADNIL                          R18
      317 SETTABLEKS                       R18 R17 K26 ["Close"]
      319 CALL                             R14 3 1
      320 SETTABLEKS                       R14 R13 K13 ["HeaderRow"]
      322 GETTABLEKS                       R15 R2 K76 ["description"]
      324 JUMPIFNOT                        R15 ; [+26]
      325 GETUPVAL                         R14 6
      326 GETTABLEKS                       R14 R14 K6 ["createElement"]
      328 GETUPVAL                         R15 14
      329 DUPTABLE                         R16 K52 [{["Text"], ["tag"], ["LayoutOrder"] = 2, ["testId"]}]
      330 GETTABLEKS                       R17 R2 K76 ["description"]
      332 SETTABLEKS                       R17 R16 K47 ["Text"]
      334 GETTABLEKS                       R17 R4 K76 ["description"]
      336 GETTABLEKS                       R17 R17 K7 ["tag"]
      338 SETTABLEKS                       R17 R16 K7 ["tag"]
      340 LOADK                            R18 K77 ["%*--description"]
      341 GETTABLEKS                       R20 R2 K19 ["testId"]
      343 NAMECALL                         R18 R18 K23 ["format"]
      345 CALL                             R18 2 1
      346 MOVE                             R17 R18
      347 SETTABLEKS                       R17 R16 K19 ["testId"]
      349 CALL                             R14 2 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R14
      352 SETTABLEKS                       R14 R13 K14 ["Description"]
      354 GETUPVAL                         R14 6
      355 GETTABLEKS                       R14 R14 K6 ["createElement"]
      357 GETUPVAL                         R15 19
      358 DUPTABLE                         R16 K79 [{["actions"], ["testId"], ["LayoutOrder"] = 3}]
      359 GETTABLEKS                       R17 R2 K78 ["actions"]
      361 SETTABLEKS                       R17 R16 K78 ["actions"]
      363 LOADK                            R18 K80 ["%*--actions"]
      364 GETTABLEKS                       R20 R2 K19 ["testId"]
      366 NAMECALL                         R18 R18 K23 ["format"]
      368 CALL                             R18 2 1
      369 MOVE                             R17 R18
      370 SETTABLEKS                       R17 R16 K19 ["testId"]
      372 CALL                             R14 2 1
      373 SETTABLEKS                       R14 R13 K15 ["Actions"]
      375 CALL                             R10 3 -1
      376 RETURN                           R10 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["AlertActions"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K10 ["AlertActions"]
       32 GETTABLEKS                       R6 R6 K11 ["AlertConstants"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["AlertSeverity"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K14 ["BuilderIcons"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["CloseAffordance"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K12 ["Enums"]
       58 GETTABLEKS                       R10 R10 K16 ["CloseAffordanceVariant"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K12 ["Enums"]
       65 GETTABLEKS                       R11 R11 K17 ["ControlState"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R12 K18 ["Icon"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K12 ["Enums"]
       79 GETTABLEKS                       R13 R13 K19 ["IconSize"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K12 ["Enums"]
       86 GETTABLEKS                       R14 R14 K20 ["InputSize"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R15 R0 K12 ["Enums"]
       93 GETTABLEKS                       R15 R15 K21 ["StateLayerAffordance"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R16 R0 K9 ["Components"]
      100 GETTABLEKS                       R16 R16 K22 ["Text"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R17 R0 K9 ["Components"]
      107 GETTABLEKS                       R17 R17 K23 ["Types"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R18 R0 K9 ["Components"]
      114 GETTABLEKS                       R18 R18 K24 ["View"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R19 R0 K25 ["Utility"]
      121 GETTABLEKS                       R19 R19 K26 ["escapeRichText"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETTABLEKS                       R20 R0 K27 ["Providers"]
      128 GETTABLEKS                       R20 R20 K28 ["Style"]
      130 GETTABLEKS                       R20 R20 K29 ["useTokens"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K6 [require]
      135 GETTABLEKS                       R21 R0 K25 ["Utility"]
      137 GETTABLEKS                       R21 R21 K30 ["withCommonProps"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K6 [require]
      142 GETTABLEKS                       R22 R0 K25 ["Utility"]
      144 GETTABLEKS                       R22 R22 K31 ["withDefaults"]
      146 CALL                             R21 1 1
      147 GETTABLEKS                       R22 R7 K32 ["IconVariant"]
      149 GETIMPORT                        R23 K6 [require]
      151 GETIMPORT                        R24 K1 [script]
      153 GETTABLEKS                       R24 R24 K4 ["Parent"]
      155 GETTABLEKS                       R24 R24 K33 ["useFeedbackAlertVariants"]
      157 CALL                             R23 1 1
      158 DUPTABLE                         R24 K36 [{["testId"] = "--foundation-feedback-alert"}]
      159 DUPCLOSURE                       R25 K37 [PROTO_1]
      160 CAPTURE                          VAL R21
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R4
      180 GETTABLEKS                       R26 R2 K38 ["memo"]
      182 GETTABLEKS                       R27 R2 K39 ["forwardRef"]
      184 MOVE                             R28 R25
      185 CALL                             R27 1 -1
      186 CALL                             R26 -1 -1
      187 RETURN                           R26 -1
