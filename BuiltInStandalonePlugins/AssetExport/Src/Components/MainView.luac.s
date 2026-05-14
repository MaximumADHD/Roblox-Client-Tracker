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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
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
       30 NEWTABLE                         R7 0 3
       32 LOADK                            R8 K5 ["skinning"]
       33 LOADK                            R9 K6 ["textures"]
       34 LOADK                            R10 K7 ["cages"]
       35 SETLIST                          R7 R8 3 [1]
       37 GETUPVAL                         R8 5
       38 CALL                             R8 0 1
       39 JUMPIFNOT                        R8 ; [+8]
       40 LOADN                            R10 3
       41 LOADK                            R11 K8 ["attachments"]
       42 FASTCALL3                        TABLE_INSERT R7 R10 R11
       44 MOVE                             R9 R7
       45 GETIMPORT                        R8 K11 [table.insert]
       47 CALL                             R8 3 0
       48 GETUPVAL                         R8 6
       49 GETTABLEKS                       R8 R8 K12 ["createElement"]
       51 GETUPVAL                         R9 7
       52 GETTABLEKS                       R9 R9 K13 ["View"]
       54 DUPTABLE                         R10 K16 [{"tag", "LayoutOrder"}]
       55 LOADK                            R11 K17 ["bg-surface-300 size-full col padding-medium"]
       56 SETTABLEKS                       R11 R10 K14 ["tag"]
       58 LOADN                            R11 1
       59 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       61 DUPTABLE                         R11 K21 [{"Header", "CenterPanel", "ButtonPanel"}]
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R12 R12 K12 ["createElement"]
       65 GETUPVAL                         R13 7
       66 GETTABLEKS                       R13 R13 K13 ["View"]
       68 DUPTABLE                         R14 K22 [{"tag"}]
       69 LOADK                            R15 K23 ["size-full-0 auto-y padding-small row align-y-top gap-small"]
       70 SETTABLEKS                       R15 R14 K14 ["tag"]
       72 DUPTABLE                         R15 K27 [{"iconElement", "textPanel", "show"}]
       73 GETUPVAL                         R16 6
       74 GETTABLEKS                       R16 R16 K12 ["createElement"]
       76 GETUPVAL                         R17 7
       77 GETTABLEKS                       R17 R17 K28 ["Image"]
       79 DUPTABLE                         R18 K30 [{"Image", "Size", "LayoutOrder"}]
       80 LOADK                            R19 K31 ["rbxassetid://71912387248131"]
       81 SETTABLEKS                       R19 R18 K28 ["Image"]
       83 GETIMPORT                        R19 K34 [UDim2.fromOffset]
       85 LOADN                            R20 36
       86 LOADN                            R21 36
       87 CALL                             R19 2 1
       88 SETTABLEKS                       R19 R18 K29 ["Size"]
       90 LOADN                            R19 1
       91 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K24 ["iconElement"]
       96 GETUPVAL                         R16 6
       97 GETTABLEKS                       R16 R16 K12 ["createElement"]
       99 GETUPVAL                         R17 7
      100 GETTABLEKS                       R17 R17 K13 ["View"]
      102 DUPTABLE                         R18 K16 [{"tag", "LayoutOrder"}]
      103 LOADK                            R19 K35 ["size-0-0 auto-y col align-y-top gap-small grow"]
      104 SETTABLEKS                       R19 R18 K14 ["tag"]
      106 LOADN                            R19 2
      107 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      109 DUPTABLE                         R19 K38 [{"MainText", "SupportText"}]
      110 GETUPVAL                         R20 6
      111 GETTABLEKS                       R20 R20 K12 ["createElement"]
      113 GETUPVAL                         R21 7
      114 GETTABLEKS                       R21 R21 K39 ["Text"]
      116 DUPTABLE                         R22 K40 [{"tag", "Text", "LayoutOrder"}]
      117 LOADK                            R23 K41 ["text-align-x-left text-no-wrap text-truncate-end text-title-medium size-full-0 auto-y"]
      118 SETTABLEKS                       R23 R22 K14 ["tag"]
      120 LOADK                            R25 K42 ["Title"]
      121 LOADK                            R26 K43 ["Customize"]
      122 NAMECALL                         R23 R1 K3 ["getText"]
      124 CALL                             R23 3 1
      125 SETTABLEKS                       R23 R22 K39 ["Text"]
      127 LOADN                            R23 1
      128 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K36 ["MainText"]
      133 GETUPVAL                         R20 6
      134 GETTABLEKS                       R20 R20 K12 ["createElement"]
      136 GETUPVAL                         R21 7
      137 GETTABLEKS                       R21 R21 K39 ["Text"]
      139 DUPTABLE                         R22 K40 [{"tag", "Text", "LayoutOrder"}]
      140 LOADK                            R23 K44 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
      141 SETTABLEKS                       R23 R22 K14 ["tag"]
      143 LOADK                            R25 K45 ["Info"]
      144 LOADK                            R26 K43 ["Customize"]
      145 NAMECALL                         R23 R1 K3 ["getText"]
      147 CALL                             R23 3 1
      148 SETTABLEKS                       R23 R22 K39 ["Text"]
      150 LOADN                            R23 2
      151 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      153 CALL                             R20 2 1
      154 SETTABLEKS                       R20 R19 K37 ["SupportText"]
      156 CALL                             R16 3 1
      157 SETTABLEKS                       R16 R15 K25 ["textPanel"]
      159 GETUPVAL                         R16 6
      160 GETTABLEKS                       R16 R16 K12 ["createElement"]
      162 GETUPVAL                         R17 7
      163 GETTABLEKS                       R17 R17 K13 ["View"]
      165 DUPTABLE                         R18 K16 [{"tag", "LayoutOrder"}]
      166 LOADK                            R19 K46 ["size-0-full auto-xy row align-y-center"]
      167 SETTABLEKS                       R19 R18 K14 ["tag"]
      169 LOADN                            R19 3
      170 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      172 NEWTABLE                         R19 0 0
      174 CALL                             R16 3 1
      175 SETTABLEKS                       R16 R15 K26 ["show"]
      177 CALL                             R12 3 1
      178 SETTABLEKS                       R12 R11 K18 ["Header"]
      180 GETUPVAL                         R12 6
      181 GETTABLEKS                       R12 R12 K12 ["createElement"]
      183 GETUPVAL                         R13 7
      184 GETTABLEKS                       R13 R13 K13 ["View"]
      186 DUPTABLE                         R14 K16 [{"tag", "LayoutOrder"}]
      187 LOADK                            R15 K47 ["size-full-0 grow padding-small row align-y-top gap-small"]
      188 SETTABLEKS                       R15 R14 K14 ["tag"]
      190 LOADN                            R15 2
      191 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      193 DUPTABLE                         R15 K50 [{"spacer", "Settings"}]
      194 GETUPVAL                         R16 6
      195 GETTABLEKS                       R16 R16 K12 ["createElement"]
      197 GETUPVAL                         R17 7
      198 GETTABLEKS                       R17 R17 K13 ["View"]
      200 DUPTABLE                         R18 K51 [{"Size", "LayoutOrder"}]
      201 GETIMPORT                        R19 K34 [UDim2.fromOffset]
      203 LOADN                            R20 36
      204 LOADN                            R21 36
      205 CALL                             R19 2 1
      206 SETTABLEKS                       R19 R18 K29 ["Size"]
      208 LOADN                            R19 1
      209 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      211 CALL                             R16 2 1
      212 SETTABLEKS                       R16 R15 K48 ["spacer"]
      214 GETUPVAL                         R16 6
      215 GETTABLEKS                       R16 R16 K12 ["createElement"]
      217 GETUPVAL                         R17 7
      218 GETTABLEKS                       R17 R17 K13 ["View"]
      220 DUPTABLE                         R18 K16 [{"tag", "LayoutOrder"}]
      221 LOADK                            R19 K52 ["size-0-full grow"]
      222 SETTABLEKS                       R19 R18 K14 ["tag"]
      224 LOADN                            R19 2
      225 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      227 DUPTABLE                         R19 K54 [{"scroll"}]
      228 GETUPVAL                         R20 6
      229 GETTABLEKS                       R20 R20 K12 ["createElement"]
      231 GETUPVAL                         R21 7
      232 GETTABLEKS                       R21 R21 K55 ["ScrollView"]
      234 DUPTABLE                         R22 K56 [{"tag", "scroll"}]
      235 LOADK                            R23 K57 ["size-full"]
      236 SETTABLEKS                       R23 R22 K14 ["tag"]
      238 DUPTABLE                         R23 K62 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      239 GETUPVAL                         R24 7
      240 GETTABLEKS                       R24 R24 K63 ["Enums"]
      242 GETTABLEKS                       R24 R24 K64 ["ScrollBarVisibility"]
      244 GETTABLEKS                       R24 R24 K65 ["Auto"]
      246 SETTABLEKS                       R24 R23 K58 ["scrollBarVisibility"]
      248 GETIMPORT                        R24 K68 [Enum.ScrollingDirection.Y]
      250 SETTABLEKS                       R24 R23 K59 ["ScrollingDirection"]
      252 GETIMPORT                        R24 K70 [Enum.AutomaticSize.Y]
      254 SETTABLEKS                       R24 R23 K60 ["AutomaticCanvasSize"]
      256 GETIMPORT                        R24 K72 [UDim2.fromScale]
      258 LOADN                            R25 0
      259 LOADN                            R26 0
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K61 ["CanvasSize"]
      263 SETTABLEKS                       R23 R22 K53 ["scroll"]
      265 DUPTABLE                         R23 K74 [{"SettingsContainer"}]
      266 GETUPVAL                         R24 6
      267 GETTABLEKS                       R24 R24 K12 ["createElement"]
      269 GETUPVAL                         R25 8
      270 DUPTABLE                         R26 K78 [{"title", "settingsEnabled", "settings"}]
      271 LOADK                            R27 K79 ["Include"]
      272 SETTABLEKS                       R27 R26 K75 ["title"]
      274 JUMPIFEQKS                       R5 K80 ["Main"] ; [+2]
      276 LOADB                            R27 0 +1
      277 LOADB                            R27 1
      278 SETTABLEKS                       R27 R26 K76 ["settingsEnabled"]
      280 SETTABLEKS                       R7 R26 K77 ["settings"]
      282 CALL                             R24 2 1
      283 SETTABLEKS                       R24 R23 K73 ["SettingsContainer"]
      285 CALL                             R20 3 1
      286 SETTABLEKS                       R20 R19 K53 ["scroll"]
      288 CALL                             R16 3 1
      289 SETTABLEKS                       R16 R15 K49 ["Settings"]
      291 CALL                             R12 3 1
      292 SETTABLEKS                       R12 R11 K19 ["CenterPanel"]
      294 GETUPVAL                         R12 6
      295 GETTABLEKS                       R12 R12 K12 ["createElement"]
      297 GETUPVAL                         R13 7
      298 GETTABLEKS                       R13 R13 K13 ["View"]
      300 DUPTABLE                         R14 K16 [{"tag", "LayoutOrder"}]
      301 LOADK                            R15 K81 ["bg-surface-300 row align-x-right padding-small size-full-1200 gap-small"]
      302 SETTABLEKS                       R15 R14 K14 ["tag"]
      304 LOADN                            R15 4
      305 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      307 DUPTABLE                         R15 K83 [{"Cancel", "Export"}]
      308 GETUPVAL                         R16 6
      309 GETTABLEKS                       R16 R16 K12 ["createElement"]
      311 GETUPVAL                         R17 7
      312 GETTABLEKS                       R17 R17 K84 ["Button"]
      314 DUPTABLE                         R18 K90 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      315 LOADK                            R21 K1 ["Buttons"]
      316 LOADK                            R22 K82 ["Cancel"]
      317 NAMECALL                         R19 R1 K3 ["getText"]
      319 CALL                             R19 3 1
      320 SETTABLEKS                       R19 R18 K85 ["text"]
      322 GETUPVAL                         R19 7
      323 GETTABLEKS                       R19 R19 K63 ["Enums"]
      325 GETTABLEKS                       R19 R19 K91 ["ButtonVariant"]
      327 GETTABLEKS                       R19 R19 K92 ["Standard"]
      329 SETTABLEKS                       R19 R18 K86 ["variant"]
      331 NEWCLOSURE                       R19 P0
      332 CAPTURE                          VAL R2
      333 SETTABLEKS                       R19 R18 K87 ["onActivated"]
      335 LOADB                            R19 0
      336 SETTABLEKS                       R19 R18 K88 ["isDisabled"]
      338 GETUPVAL                         R19 7
      339 GETTABLEKS                       R19 R19 K63 ["Enums"]
      341 GETTABLEKS                       R19 R19 K93 ["InputSize"]
      343 GETTABLEKS                       R19 R19 K94 ["Small"]
      345 SETTABLEKS                       R19 R18 K89 ["size"]
      347 LOADN                            R19 1
      348 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      350 CALL                             R16 2 1
      351 SETTABLEKS                       R16 R15 K82 ["Cancel"]
      353 GETUPVAL                         R16 6
      354 GETTABLEKS                       R16 R16 K12 ["createElement"]
      356 GETUPVAL                         R17 7
      357 GETTABLEKS                       R17 R17 K84 ["Button"]
      359 DUPTABLE                         R18 K90 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      360 SETTABLEKS                       R6 R18 K85 ["text"]
      362 GETUPVAL                         R19 7
      363 GETTABLEKS                       R19 R19 K63 ["Enums"]
      365 GETTABLEKS                       R19 R19 K91 ["ButtonVariant"]
      367 GETTABLEKS                       R19 R19 K95 ["Emphasis"]
      369 SETTABLEKS                       R19 R18 K86 ["variant"]
      371 NEWCLOSURE                       R19 P1
      372 CAPTURE                          VAL R3
      373 CAPTURE                          VAL R4
      374 CAPTURE                          VAL R2
      375 SETTABLEKS                       R19 R18 K87 ["onActivated"]
      377 MOVE                             R19 R3
      378 JUMPIF                           R19 ; [+1]
      379 NOT                              R19 R4
      380 SETTABLEKS                       R19 R18 K88 ["isDisabled"]
      382 GETUPVAL                         R19 7
      383 GETTABLEKS                       R19 R19 K63 ["Enums"]
      385 GETTABLEKS                       R19 R19 K93 ["InputSize"]
      387 GETTABLEKS                       R19 R19 K94 ["Small"]
      389 SETTABLEKS                       R19 R18 K89 ["size"]
      391 LOADN                            R19 2
      392 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      394 CALL                             R16 2 1
      395 SETTABLEKS                       R16 R15 K2 ["Export"]
      397 CALL                             R12 3 1
      398 SETTABLEKS                       R12 R11 K20 ["ButtonPanel"]
      400 CALL                             R8 3 -1
      401 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagCreateAttachmentsOnAssetDm"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["Localization"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Components"]
       47 GETTABLEKS                       R8 R8 K16 ["SettingsContainer"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Controllers"]
       56 GETTABLEKS                       R9 R9 K18 ["ExportController"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K20 ["usePermissionsReady"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K21 ["useExportProcessing"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K22 ["useViewState"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K23 [PROTO_2]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R7
       96 RETURN                           R12 1
