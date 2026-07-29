PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["exportRequested"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

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
       17 GETUPVAL                         R7 5
       18 CALL                             R7 0 1
       19 JUMPIFNOT                        R7 ; [+4]
       20 GETUPVAL                         R6 6
       21 MOVE                             R7 R2
       22 CALL                             R6 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R6
       25 GETUPVAL                         R8 5
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+15]
       28 GETUPVAL                         R8 7
       29 GETTABLEKS                       R8 R8 K1 ["Obj"]
       31 JUMPIFEQ                         R6 R8 ; [+9]
       33 LOADB                            R7 0
       34 GETUPVAL                         R8 7
       35 GETTABLEKS                       R8 R8 K2 ["Gltf"]
       37 JUMPIFNOTEQ                      R6 R8 ; [+8]
       39 MOVE                             R7 R4
       40 JUMPIFNOT                        R7 ; [+5]
       41 NOT                              R7 R3
       42 JUMP                             ; [+3]
       43 MOVE                             R7 R4
       44 JUMPIFNOT                        R7 ; [+1]
       45 NOT                              R7 R3
       46 LOADK                            R10 K3 ["Buttons"]
       47 LOADK                            R11 K4 ["Export"]
       48 NAMECALL                         R8 R1 K5 ["getText"]
       50 CALL                             R8 3 1
       51 GETUPVAL                         R9 5
       52 CALL                             R9 0 1
       53 JUMPIFNOT                        R9 ; [+13]
       54 GETUPVAL                         R9 7
       55 GETTABLEKS                       R9 R9 K2 ["Gltf"]
       57 JUMPIFNOTEQ                      R6 R9 ; [+16]
       59 JUMPIF                           R4 ; [+14]
       60 LOADK                            R11 K3 ["Buttons"]
       61 LOADK                            R12 K6 ["Processing"]
       62 NAMECALL                         R9 R1 K5 ["getText"]
       64 CALL                             R9 3 1
       65 MOVE                             R8 R9
       66 JUMP                             ; [+7]
       67 JUMPIF                           R7 ; [+6]
       68 LOADK                            R11 K3 ["Buttons"]
       69 LOADK                            R12 K6 ["Processing"]
       70 NAMECALL                         R9 R1 K5 ["getText"]
       72 CALL                             R9 3 1
       73 MOVE                             R8 R9
       74 LOADNIL                          R9
       75 GETUPVAL                         R10 5
       76 CALL                             R10 0 1
       77 JUMPIF                           R10 ; [+19]
       78 NEWTABLE                         R10 0 3
       80 LOADK                            R11 K7 ["skinning"]
       81 LOADK                            R12 K8 ["textures"]
       82 LOADK                            R13 K9 ["cages"]
       83 SETLIST                          R10 R11 3 [1]
       85 MOVE                             R9 R10
       86 GETUPVAL                         R10 8
       87 CALL                             R10 0 1
       88 JUMPIFNOT                        R10 ; [+8]
       89 LOADN                            R12 3
       90 LOADK                            R13 K10 ["attachments"]
       91 FASTCALL3                        TABLE_INSERT R9 R12 R13
       93 MOVE                             R11 R9
       94 GETIMPORT                        R10 K13 [table.insert]
       96 CALL                             R10 3 0
       97 GETUPVAL                         R10 9
       98 GETTABLEKS                       R10 R10 K14 ["createElement"]
      100 GETUPVAL                         R11 10
      101 GETTABLEKS                       R11 R11 K15 ["View"]
      103 DUPTABLE                         R12 K20 [{["tag"] = "col size-full padding-medium bg-surface-300", ["LayoutOrder"] = 1}]
      104 DUPTABLE                         R13 K24 [{"Header", "CenterPanel", "ButtonPanel"}]
      105 GETUPVAL                         R14 9
      106 GETTABLEKS                       R14 R14 K14 ["createElement"]
      108 GETUPVAL                         R15 10
      109 GETTABLEKS                       R15 R15 K15 ["View"]
      111 DUPTABLE                         R16 K26 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-small"}]
      112 DUPTABLE                         R17 K30 [{"iconElement", "textPanel", "show"}]
      113 GETUPVAL                         R18 9
      114 GETTABLEKS                       R18 R18 K14 ["createElement"]
      116 GETUPVAL                         R19 10
      117 GETTABLEKS                       R19 R19 K31 ["Image"]
      119 DUPTABLE                         R20 K34 [{["Image"] = "rbxassetid://71912387248131", ["Size"], ["LayoutOrder"] = 1}]
      120 GETIMPORT                        R21 K37 [UDim2.fromOffset]
      122 LOADN                            R22 36
      123 LOADN                            R23 36
      124 CALL                             R21 2 1
      125 SETTABLEKS                       R21 R20 K33 ["Size"]
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K27 ["iconElement"]
      130 GETUPVAL                         R18 9
      131 GETTABLEKS                       R18 R18 K14 ["createElement"]
      133 GETUPVAL                         R19 10
      134 GETTABLEKS                       R19 R19 K15 ["View"]
      136 DUPTABLE                         R20 K40 [{["tag"] = "col align-y-top grow gap-small size-0-0 auto-y", ["LayoutOrder"] = 2}]
      137 DUPTABLE                         R21 K43 [{"MainText", "SupportText"}]
      138 GETUPVAL                         R22 9
      139 GETTABLEKS                       R22 R22 K14 ["createElement"]
      141 GETUPVAL                         R23 10
      142 GETTABLEKS                       R23 R23 K44 ["Text"]
      144 DUPTABLE                         R24 K46 [{["tag"] = "size-full-0 auto-y text-title-medium text-no-wrap text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"] = 1}]
      145 LOADK                            R27 K47 ["Title"]
      146 LOADK                            R28 K48 ["Customize"]
      147 NAMECALL                         R25 R1 K5 ["getText"]
      149 CALL                             R25 3 1
      150 SETTABLEKS                       R25 R24 K44 ["Text"]
      152 CALL                             R22 2 1
      153 SETTABLEKS                       R22 R21 K41 ["MainText"]
      155 GETUPVAL                         R22 9
      156 GETTABLEKS                       R22 R22 K14 ["createElement"]
      158 GETUPVAL                         R23 10
      159 GETTABLEKS                       R23 R23 K44 ["Text"]
      161 DUPTABLE                         R24 K50 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      162 LOADK                            R27 K51 ["Info"]
      163 LOADK                            R28 K48 ["Customize"]
      164 NAMECALL                         R25 R1 K5 ["getText"]
      166 CALL                             R25 3 1
      167 SETTABLEKS                       R25 R24 K44 ["Text"]
      169 CALL                             R22 2 1
      170 SETTABLEKS                       R22 R21 K42 ["SupportText"]
      172 CALL                             R18 3 1
      173 SETTABLEKS                       R18 R17 K28 ["textPanel"]
      175 GETUPVAL                         R18 9
      176 GETTABLEKS                       R18 R18 K14 ["createElement"]
      178 GETUPVAL                         R19 10
      179 GETTABLEKS                       R19 R19 K15 ["View"]
      181 DUPTABLE                         R20 K54 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      182 NEWTABLE                         R21 0 0
      184 CALL                             R18 3 1
      185 SETTABLEKS                       R18 R17 K29 ["show"]
      187 CALL                             R14 3 1
      188 SETTABLEKS                       R14 R13 K21 ["Header"]
      190 GETUPVAL                         R14 9
      191 GETTABLEKS                       R14 R14 K14 ["createElement"]
      193 GETUPVAL                         R15 10
      194 GETTABLEKS                       R15 R15 K15 ["View"]
      196 DUPTABLE                         R16 K56 [{["tag"] = "row align-y-top grow gap-small size-full-0 padding-small", ["LayoutOrder"] = 2}]
      197 DUPTABLE                         R17 K59 [{"spacer", "Settings"}]
      198 GETUPVAL                         R18 9
      199 GETTABLEKS                       R18 R18 K14 ["createElement"]
      201 GETUPVAL                         R19 10
      202 GETTABLEKS                       R19 R19 K15 ["View"]
      204 DUPTABLE                         R20 K60 [{["Size"], ["LayoutOrder"] = 1}]
      205 GETIMPORT                        R21 K37 [UDim2.fromOffset]
      207 LOADN                            R22 36
      208 LOADN                            R23 36
      209 CALL                             R21 2 1
      210 SETTABLEKS                       R21 R20 K33 ["Size"]
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K57 ["spacer"]
      215 GETUPVAL                         R18 9
      216 GETTABLEKS                       R18 R18 K14 ["createElement"]
      218 GETUPVAL                         R19 10
      219 GETTABLEKS                       R19 R19 K15 ["View"]
      221 DUPTABLE                         R20 K62 [{["tag"] = "grow size-0-full", ["LayoutOrder"] = 2}]
      222 DUPTABLE                         R21 K64 [{"scroll"}]
      223 GETUPVAL                         R22 9
      224 GETTABLEKS                       R22 R22 K14 ["createElement"]
      226 GETUPVAL                         R23 10
      227 GETTABLEKS                       R23 R23 K65 ["ScrollView"]
      229 DUPTABLE                         R24 K67 [{["tag"] = "size-full", ["scroll"]}]
      230 DUPTABLE                         R25 K72 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
      231 GETUPVAL                         R26 10
      232 GETTABLEKS                       R26 R26 K73 ["Enums"]
      234 GETTABLEKS                       R26 R26 K74 ["ScrollBarVisibility"]
      236 GETTABLEKS                       R26 R26 K75 ["Auto"]
      238 SETTABLEKS                       R26 R25 K68 ["scrollBarVisibility"]
      240 GETIMPORT                        R26 K78 [Enum.ScrollingDirection.Y]
      242 SETTABLEKS                       R26 R25 K69 ["ScrollingDirection"]
      244 GETIMPORT                        R26 K80 [Enum.AutomaticSize.Y]
      246 SETTABLEKS                       R26 R25 K70 ["AutomaticCanvasSize"]
      248 GETIMPORT                        R26 K82 [UDim2.fromScale]
      250 LOADN                            R27 0
      251 LOADN                            R28 0
      252 CALL                             R26 2 1
      253 SETTABLEKS                       R26 R25 K71 ["CanvasSize"]
      255 SETTABLEKS                       R25 R24 K63 ["scroll"]
      257 DUPTABLE                         R25 K84 [{"SettingsContainer"}]
      258 GETUPVAL                         R27 5
      259 CALL                             R27 0 1
      260 JUMPIFNOT                        R27 ; [+13]
      261 GETUPVAL                         R26 9
      262 GETTABLEKS                       R26 R26 K14 ["createElement"]
      264 GETUPVAL                         R27 11
      265 DUPTABLE                         R28 K86 [{"settingsEnabled"}]
      266 JUMPIFEQKS                       R5 K87 ["Main"] ; [+2]
      268 LOADB                            R29 0 +1
      269 LOADB                            R29 1
      270 SETTABLEKS                       R29 R28 K85 ["settingsEnabled"]
      272 CALL                             R26 2 1
      273 JUMP                             ; [+14]
      274 GETUPVAL                         R26 9
      275 GETTABLEKS                       R26 R26 K14 ["createElement"]
      277 GETUPVAL                         R27 11
      278 DUPTABLE                         R28 K91 [{["title"] = "Include", ["settingsEnabled"], ["settings"]}]
      279 JUMPIFEQKS                       R5 K87 ["Main"] ; [+2]
      281 LOADB                            R29 0 +1
      282 LOADB                            R29 1
      283 SETTABLEKS                       R29 R28 K85 ["settingsEnabled"]
      285 SETTABLEKS                       R9 R28 K90 ["settings"]
      287 CALL                             R26 2 1
      288 SETTABLEKS                       R26 R25 K83 ["SettingsContainer"]
      290 CALL                             R22 3 1
      291 SETTABLEKS                       R22 R21 K63 ["scroll"]
      293 CALL                             R18 3 1
      294 SETTABLEKS                       R18 R17 K58 ["Settings"]
      296 CALL                             R14 3 1
      297 SETTABLEKS                       R14 R13 K22 ["CenterPanel"]
      299 GETUPVAL                         R14 9
      300 GETTABLEKS                       R14 R14 K14 ["createElement"]
      302 GETUPVAL                         R15 10
      303 GETTABLEKS                       R15 R15 K15 ["View"]
      305 DUPTABLE                         R16 K94 [{["tag"] = "row align-x-right gap-small size-full-1200 padding-small bg-surface-300", ["LayoutOrder"] = 4}]
      306 DUPTABLE                         R17 K96 [{"Cancel", "Export"}]
      307 GETUPVAL                         R18 9
      308 GETTABLEKS                       R18 R18 K14 ["createElement"]
      310 GETUPVAL                         R19 10
      311 GETTABLEKS                       R19 R19 K97 ["Button"]
      313 DUPTABLE                         R20 K104 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 1}]
      314 LOADK                            R23 K3 ["Buttons"]
      315 LOADK                            R24 K95 ["Cancel"]
      316 NAMECALL                         R21 R1 K5 ["getText"]
      318 CALL                             R21 3 1
      319 SETTABLEKS                       R21 R20 K98 ["text"]
      321 GETUPVAL                         R21 10
      322 GETTABLEKS                       R21 R21 K73 ["Enums"]
      324 GETTABLEKS                       R21 R21 K105 ["ButtonVariant"]
      326 GETTABLEKS                       R21 R21 K106 ["Standard"]
      328 SETTABLEKS                       R21 R20 K99 ["variant"]
      330 NEWCLOSURE                       R21 P0
      331 CAPTURE                          VAL R2
      332 SETTABLEKS                       R21 R20 K100 ["onActivated"]
      334 GETUPVAL                         R21 10
      335 GETTABLEKS                       R21 R21 K73 ["Enums"]
      337 GETTABLEKS                       R21 R21 K107 ["InputSize"]
      339 GETTABLEKS                       R21 R21 K108 ["Small"]
      341 SETTABLEKS                       R21 R20 K103 ["size"]
      343 CALL                             R18 2 1
      344 SETTABLEKS                       R18 R17 K95 ["Cancel"]
      346 GETUPVAL                         R18 9
      347 GETTABLEKS                       R18 R18 K14 ["createElement"]
      349 GETUPVAL                         R19 10
      350 GETTABLEKS                       R19 R19 K97 ["Button"]
      352 DUPTABLE                         R20 K109 [{["text"], ["variant"], ["onActivated"], ["isDisabled"], ["size"], ["LayoutOrder"] = 2}]
      353 SETTABLEKS                       R8 R20 K98 ["text"]
      355 GETUPVAL                         R21 10
      356 GETTABLEKS                       R21 R21 K73 ["Enums"]
      358 GETTABLEKS                       R21 R21 K105 ["ButtonVariant"]
      360 GETTABLEKS                       R21 R21 K110 ["Emphasis"]
      362 SETTABLEKS                       R21 R20 K99 ["variant"]
      364 NEWCLOSURE                       R21 P1
      365 CAPTURE                          VAL R7
      366 CAPTURE                          VAL R2
      367 SETTABLEKS                       R21 R20 K100 ["onActivated"]
      369 NOT                              R21 R7
      370 SETTABLEKS                       R21 R20 K101 ["isDisabled"]
      372 GETUPVAL                         R21 10
      373 GETTABLEKS                       R21 R21 K73 ["Enums"]
      375 GETTABLEKS                       R21 R21 K107 ["InputSize"]
      377 GETTABLEKS                       R21 R21 K108 ["Small"]
      379 SETTABLEKS                       R21 R20 K103 ["size"]
      381 CALL                             R18 2 1
      382 SETTABLEKS                       R18 R17 K4 ["Export"]
      384 CALL                             R14 3 1
      385 SETTABLEKS                       R14 R13 K23 ["ButtonPanel"]
      387 CALL                             R10 3 -1
      388 RETURN                           R10 -1

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
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagAsyncObjExport"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["ExportFormat"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       57 GETTABLEKS                       R8 R7 K17 ["Localization"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R10 K18 ["Components"]
       65 GETTABLEKS                       R10 R10 K19 ["SettingsContainer"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R11 K20 ["Controllers"]
       74 GETTABLEKS                       R11 R11 K21 ["ExportController"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R12 K22 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["usePermissionsReady"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K24 ["useExportProcessing"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K10 ["Src"]
       99 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K25 ["useFormat"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K10 ["Src"]
      108 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      110 GETTABLEKS                       R15 R15 K26 ["useViewState"]
      112 CALL                             R14 1 1
      113 DUPCLOSURE                       R15 K27 [PROTO_2]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R9
      126 RETURN                           R15 1
