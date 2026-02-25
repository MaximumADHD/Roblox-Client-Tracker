PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["exportRequested"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R2
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 4
       15 MOVE                             R6 R2
       16 CALL                             R5 1 1
       17 LOADK                            R8 K1 ["Buttons"]
       18 LOADK                            R9 K2 ["Export"]
       19 NAMECALL                         R6 R1 K3 ["getText"]
       21 CALL                             R6 3 1
       22 JUMPIF                           R3 ; [+1]
       23 JUMPIF                           R4 ; [+6]
       24 LOADK                            R9 K1 ["Buttons"]
       25 LOADK                            R10 K4 ["Processing"]
       26 NAMECALL                         R7 R1 K3 ["getText"]
       28 CALL                             R7 3 1
       29 MOVE                             R6 R7
       30 GETUPVAL                         R8 5
       31 GETTABLEKS                       R7 R8 K5 ["createElement"]
       33 GETUPVAL                         R9 6
       34 GETTABLEKS                       R8 R9 K6 ["View"]
       36 DUPTABLE                         R9 K9 [{"tag", "LayoutOrder"}]
       37 LOADK                            R10 K10 ["bg-surface-300 size-full col padding-medium"]
       38 SETTABLEKS                       R10 R9 K7 ["tag"]
       40 LOADN                            R10 1
       41 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       43 DUPTABLE                         R10 K14 [{"Header", "CenterPanel", "ButtonPanel"}]
       44 GETUPVAL                         R12 5
       45 GETTABLEKS                       R11 R12 K5 ["createElement"]
       47 GETUPVAL                         R13 6
       48 GETTABLEKS                       R12 R13 K6 ["View"]
       50 DUPTABLE                         R13 K15 [{"tag"}]
       51 LOADK                            R14 K16 ["size-full-0 auto-y padding-small row align-y-top gap-small"]
       52 SETTABLEKS                       R14 R13 K7 ["tag"]
       54 DUPTABLE                         R14 K20 [{"iconElement", "textPanel", "show"}]
       55 GETUPVAL                         R16 5
       56 GETTABLEKS                       R15 R16 K5 ["createElement"]
       58 GETUPVAL                         R17 6
       59 GETTABLEKS                       R16 R17 K21 ["Image"]
       61 DUPTABLE                         R17 K23 [{"Image", "Size", "LayoutOrder"}]
       62 LOADK                            R18 K24 ["rbxassetid://71912387248131"]
       63 SETTABLEKS                       R18 R17 K21 ["Image"]
       65 GETIMPORT                        R18 K27 [UDim2.fromOffset]
       67 LOADN                            R19 36
       68 LOADN                            R20 36
       69 CALL                             R18 2 1
       70 SETTABLEKS                       R18 R17 K22 ["Size"]
       72 LOADN                            R18 1
       73 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K17 ["iconElement"]
       78 GETUPVAL                         R16 5
       79 GETTABLEKS                       R15 R16 K5 ["createElement"]
       81 GETUPVAL                         R17 6
       82 GETTABLEKS                       R16 R17 K6 ["View"]
       84 DUPTABLE                         R17 K9 [{"tag", "LayoutOrder"}]
       85 LOADK                            R18 K28 ["size-0-0 auto-y col align-y-top gap-small grow"]
       86 SETTABLEKS                       R18 R17 K7 ["tag"]
       88 LOADN                            R18 2
       89 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
       91 DUPTABLE                         R18 K31 [{"MainText", "SupportText"}]
       92 GETUPVAL                         R20 5
       93 GETTABLEKS                       R19 R20 K5 ["createElement"]
       95 GETUPVAL                         R21 6
       96 GETTABLEKS                       R20 R21 K32 ["Text"]
       98 DUPTABLE                         R21 K33 [{"tag", "Text", "LayoutOrder"}]
       99 LOADK                            R22 K34 ["text-align-x-left text-no-wrap text-truncate-end text-title-medium size-full-0 auto-y"]
      100 SETTABLEKS                       R22 R21 K7 ["tag"]
      102 LOADK                            R24 K35 ["Title"]
      103 LOADK                            R25 K36 ["Customize"]
      104 NAMECALL                         R22 R1 K3 ["getText"]
      106 CALL                             R22 3 1
      107 SETTABLEKS                       R22 R21 K32 ["Text"]
      109 LOADN                            R22 1
      110 SETTABLEKS                       R22 R21 K8 ["LayoutOrder"]
      112 CALL                             R19 2 1
      113 SETTABLEKS                       R19 R18 K29 ["MainText"]
      115 GETUPVAL                         R20 5
      116 GETTABLEKS                       R19 R20 K5 ["createElement"]
      118 GETUPVAL                         R21 6
      119 GETTABLEKS                       R20 R21 K32 ["Text"]
      121 DUPTABLE                         R21 K33 [{"tag", "Text", "LayoutOrder"}]
      122 LOADK                            R22 K37 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
      123 SETTABLEKS                       R22 R21 K7 ["tag"]
      125 LOADK                            R24 K38 ["Info"]
      126 LOADK                            R25 K36 ["Customize"]
      127 NAMECALL                         R22 R1 K3 ["getText"]
      129 CALL                             R22 3 1
      130 SETTABLEKS                       R22 R21 K32 ["Text"]
      132 LOADN                            R22 2
      133 SETTABLEKS                       R22 R21 K8 ["LayoutOrder"]
      135 CALL                             R19 2 1
      136 SETTABLEKS                       R19 R18 K30 ["SupportText"]
      138 CALL                             R15 3 1
      139 SETTABLEKS                       R15 R14 K18 ["textPanel"]
      141 GETUPVAL                         R16 5
      142 GETTABLEKS                       R15 R16 K5 ["createElement"]
      144 GETUPVAL                         R17 6
      145 GETTABLEKS                       R16 R17 K6 ["View"]
      147 DUPTABLE                         R17 K9 [{"tag", "LayoutOrder"}]
      148 LOADK                            R18 K39 ["size-0-full auto-xy row align-y-center"]
      149 SETTABLEKS                       R18 R17 K7 ["tag"]
      151 LOADN                            R18 3
      152 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      154 NEWTABLE                         R18 0 0
      156 CALL                             R15 3 1
      157 SETTABLEKS                       R15 R14 K19 ["show"]
      159 CALL                             R11 3 1
      160 SETTABLEKS                       R11 R10 K11 ["Header"]
      162 GETUPVAL                         R12 5
      163 GETTABLEKS                       R11 R12 K5 ["createElement"]
      165 GETUPVAL                         R13 6
      166 GETTABLEKS                       R12 R13 K6 ["View"]
      168 DUPTABLE                         R13 K9 [{"tag", "LayoutOrder"}]
      169 LOADK                            R14 K40 ["size-full-0 grow padding-small row align-y-top gap-small"]
      170 SETTABLEKS                       R14 R13 K7 ["tag"]
      172 LOADN                            R14 2
      173 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      175 DUPTABLE                         R14 K43 [{"spacer", "Settings"}]
      176 GETUPVAL                         R16 5
      177 GETTABLEKS                       R15 R16 K5 ["createElement"]
      179 GETUPVAL                         R17 6
      180 GETTABLEKS                       R16 R17 K6 ["View"]
      182 DUPTABLE                         R17 K44 [{"Size", "LayoutOrder"}]
      183 GETIMPORT                        R18 K27 [UDim2.fromOffset]
      185 LOADN                            R19 36
      186 LOADN                            R20 36
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K22 ["Size"]
      190 LOADN                            R18 1
      191 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K41 ["spacer"]
      196 GETUPVAL                         R16 5
      197 GETTABLEKS                       R15 R16 K5 ["createElement"]
      199 GETUPVAL                         R17 6
      200 GETTABLEKS                       R16 R17 K6 ["View"]
      202 DUPTABLE                         R17 K9 [{"tag", "LayoutOrder"}]
      203 LOADK                            R18 K45 ["size-0-full grow"]
      204 SETTABLEKS                       R18 R17 K7 ["tag"]
      206 LOADN                            R18 2
      207 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      209 DUPTABLE                         R18 K47 [{"scroll"}]
      210 GETUPVAL                         R20 5
      211 GETTABLEKS                       R19 R20 K5 ["createElement"]
      213 GETUPVAL                         R21 6
      214 GETTABLEKS                       R20 R21 K48 ["ScrollView"]
      216 DUPTABLE                         R21 K49 [{"tag", "scroll"}]
      217 LOADK                            R22 K50 ["size-full"]
      218 SETTABLEKS                       R22 R21 K7 ["tag"]
      220 DUPTABLE                         R22 K55 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      221 GETUPVAL                         R26 6
      222 GETTABLEKS                       R25 R26 K56 ["Enums"]
      224 GETTABLEKS                       R24 R25 K57 ["ScrollBarVisibility"]
      226 GETTABLEKS                       R23 R24 K58 ["Auto"]
      228 SETTABLEKS                       R23 R22 K51 ["scrollBarVisibility"]
      230 GETIMPORT                        R23 K61 [Enum.ScrollingDirection.Y]
      232 SETTABLEKS                       R23 R22 K52 ["ScrollingDirection"]
      234 GETIMPORT                        R23 K63 [Enum.AutomaticSize.Y]
      236 SETTABLEKS                       R23 R22 K53 ["AutomaticCanvasSize"]
      238 GETIMPORT                        R23 K65 [UDim2.fromScale]
      240 LOADN                            R24 0
      241 LOADN                            R25 0
      242 CALL                             R23 2 1
      243 SETTABLEKS                       R23 R22 K54 ["CanvasSize"]
      245 SETTABLEKS                       R22 R21 K46 ["scroll"]
      247 DUPTABLE                         R22 K67 [{"SettingsContainer"}]
      248 GETUPVAL                         R24 5
      249 GETTABLEKS                       R23 R24 K5 ["createElement"]
      251 GETUPVAL                         R24 7
      252 DUPTABLE                         R25 K71 [{"title", "settingsEnabled", "settings"}]
      253 LOADK                            R26 K72 ["Include"]
      254 SETTABLEKS                       R26 R25 K68 ["title"]
      256 JUMPIFEQKS                       R5 K73 ["Main"] ; [+2]
      258 LOADB                            R26 0 +1
      259 LOADB                            R26 1
      260 SETTABLEKS                       R26 R25 K69 ["settingsEnabled"]
      262 NEWTABLE                         R26 0 3
      264 LOADK                            R27 K74 ["skinning"]
      265 LOADK                            R28 K75 ["textures"]
      266 LOADK                            R29 K76 ["cages"]
      267 SETLIST                          R26 R27 3 [1]
      269 SETTABLEKS                       R26 R25 K70 ["settings"]
      271 CALL                             R23 2 1
      272 SETTABLEKS                       R23 R22 K66 ["SettingsContainer"]
      274 CALL                             R19 3 1
      275 SETTABLEKS                       R19 R18 K46 ["scroll"]
      277 CALL                             R15 3 1
      278 SETTABLEKS                       R15 R14 K42 ["Settings"]
      280 CALL                             R11 3 1
      281 SETTABLEKS                       R11 R10 K12 ["CenterPanel"]
      283 GETUPVAL                         R12 5
      284 GETTABLEKS                       R11 R12 K5 ["createElement"]
      286 GETUPVAL                         R13 6
      287 GETTABLEKS                       R12 R13 K6 ["View"]
      289 DUPTABLE                         R13 K9 [{"tag", "LayoutOrder"}]
      290 LOADK                            R14 K77 ["bg-surface-300 row align-x-right padding-small size-full-1200 gap-small"]
      291 SETTABLEKS                       R14 R13 K7 ["tag"]
      293 LOADN                            R14 4
      294 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      296 DUPTABLE                         R14 K79 [{"Cancel", "Export"}]
      297 GETUPVAL                         R16 5
      298 GETTABLEKS                       R15 R16 K5 ["createElement"]
      300 GETUPVAL                         R17 6
      301 GETTABLEKS                       R16 R17 K80 ["Button"]
      303 DUPTABLE                         R17 K86 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      304 LOADK                            R20 K1 ["Buttons"]
      305 LOADK                            R21 K78 ["Cancel"]
      306 NAMECALL                         R18 R1 K3 ["getText"]
      308 CALL                             R18 3 1
      309 SETTABLEKS                       R18 R17 K81 ["text"]
      311 GETUPVAL                         R21 6
      312 GETTABLEKS                       R20 R21 K56 ["Enums"]
      314 GETTABLEKS                       R19 R20 K87 ["ButtonVariant"]
      316 GETTABLEKS                       R18 R19 K88 ["Standard"]
      318 SETTABLEKS                       R18 R17 K82 ["variant"]
      320 NEWCLOSURE                       R18 P0
      321 CAPTURE                          VAL R2
      322 SETTABLEKS                       R18 R17 K83 ["onActivated"]
      324 LOADB                            R18 0
      325 SETTABLEKS                       R18 R17 K84 ["isDisabled"]
      327 GETUPVAL                         R21 6
      328 GETTABLEKS                       R20 R21 K56 ["Enums"]
      330 GETTABLEKS                       R19 R20 K89 ["InputSize"]
      332 GETTABLEKS                       R18 R19 K90 ["Small"]
      334 SETTABLEKS                       R18 R17 K85 ["size"]
      336 LOADN                            R18 1
      337 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      339 CALL                             R15 2 1
      340 SETTABLEKS                       R15 R14 K78 ["Cancel"]
      342 GETUPVAL                         R16 5
      343 GETTABLEKS                       R15 R16 K5 ["createElement"]
      345 GETUPVAL                         R17 6
      346 GETTABLEKS                       R16 R17 K80 ["Button"]
      348 DUPTABLE                         R17 K86 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      349 SETTABLEKS                       R6 R17 K81 ["text"]
      351 GETUPVAL                         R21 6
      352 GETTABLEKS                       R20 R21 K56 ["Enums"]
      354 GETTABLEKS                       R19 R20 K87 ["ButtonVariant"]
      356 GETTABLEKS                       R18 R19 K91 ["Emphasis"]
      358 SETTABLEKS                       R18 R17 K82 ["variant"]
      360 NEWCLOSURE                       R18 P1
      361 CAPTURE                          VAL R3
      362 CAPTURE                          VAL R4
      363 CAPTURE                          VAL R2
      364 SETTABLEKS                       R18 R17 K83 ["onActivated"]
      366 MOVE                             R18 R3
      367 JUMPIF                           R18 ; [+1]
      368 NOT                              R18 R4
      369 SETTABLEKS                       R18 R17 K84 ["isDisabled"]
      371 GETUPVAL                         R21 6
      372 GETTABLEKS                       R20 R21 K56 ["Enums"]
      374 GETTABLEKS                       R19 R20 K89 ["InputSize"]
      376 GETTABLEKS                       R18 R19 K90 ["Small"]
      378 SETTABLEKS                       R18 R17 K85 ["size"]
      380 LOADN                            R18 2
      381 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      383 CALL                             R15 2 1
      384 SETTABLEKS                       R15 R14 K2 ["Export"]
      386 CALL                             R11 3 1
      387 SETTABLEKS                       R11 R10 K13 ["ButtonPanel"]
      389 CALL                             R7 3 -1
      390 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Components"]
       38 GETTABLEKS                       R7 R8 K14 ["SettingsContainer"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Controllers"]
       47 GETTABLEKS                       R8 R9 K16 ["ExportController"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K18 ["usePermissionsReady"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K12 ["Src"]
       63 GETTABLEKS                       R11 R12 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K19 ["useExportProcessing"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R13 R0 K12 ["Src"]
       72 GETTABLEKS                       R12 R13 K17 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K20 ["useViewState"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K21 [PROTO_2]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R6
       86 RETURN                           R11 1
