PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["closeScopeOptions"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["closeScopeOptions"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["closeScopeOptions"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["closeScopeOptions"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["toggleSelectAllOptions"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["updateScopeOptions"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["updateScopeOptions"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["toggleScopeOption"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"ScopeInfo", "Checked", "LayoutOrder", "OnChecked", "key"}]
        5 GETUPVAL                         R5 2
        6 MOVE                             R7 R0
        7 NAMECALL                         R5 R5 K7 ["getScopeWithUid"]
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["ScopeInfo"]
       12 GETUPVAL                         R5 2
       13 MOVE                             R7 R0
       14 NAMECALL                         R5 R5 K8 ["isScopeOptionChecked"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["Checked"]
       19 SETTABLEKS                       R1 R4 K3 ["LayoutOrder"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R5 R4 K4 ["OnChecked"]
       26 SETTABLEKS                       R0 R4 K5 ["key"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["toggleScopeOption"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R3 K5 [{"ScopeInfo", "Checked", "LayoutOrder", "OnChecked", "Position"}]
        1 GETUPVAL                         R4 0
        2 MOVE                             R6 R0
        3 NAMECALL                         R4 R4 K6 ["getScopeWithUid"]
        5 CALL                             R4 2 1
        6 SETTABLEKS                       R4 R3 K0 ["ScopeInfo"]
        8 GETUPVAL                         R4 0
        9 MOVE                             R6 R0
       10 NAMECALL                         R4 R4 K7 ["isScopeOptionChecked"]
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K1 ["Checked"]
       15 SETTABLEKS                       R1 R3 K2 ["LayoutOrder"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R4 R3 K3 ["OnChecked"]
       22 SETTABLEKS                       R2 R3 K4 ["Position"]
       24 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["useState"]
       17 LOADK                            R6 K3 [""]
       18 CALL                             R5 1 2
       19 NEWTABLE                         R7 0 2
       21 DUPTABLE                         R8 K6 [{"Text", "OnClick"}]
       22 LOADK                            R11 K7 ["Scopes"]
       23 LOADK                            R12 K8 ["CancelOptions"]
       24 NAMECALL                         R9 R1 K9 ["getText"]
       26 CALL                             R9 3 1
       27 SETTABLEKS                       R9 R8 K4 ["Text"]
       29 NEWCLOSURE                       R9 P0
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R9 R8 K5 ["OnClick"]
       33 DUPTABLE                         R9 K12 [{["Text"], ["Tags"] = "PrimaryBrand", ["OnClick"]}]
       34 LOADK                            R12 K7 ["Scopes"]
       35 LOADK                            R13 K13 ["SaveOptions"]
       36 NAMECALL                         R10 R1 K9 ["getText"]
       38 CALL                             R10 3 1
       39 SETTABLEKS                       R10 R9 K4 ["Text"]
       41 NEWCLOSURE                       R10 P1
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R10 R9 K5 ["OnClick"]
       45 SETLIST                          R7 R8 2 [1]
       47 LOADNIL                          R8
       48 GETUPVAL                         R9 5
       49 CALL                             R9 0 1
       50 JUMPIFNOT                        R9 ; [+47]
       51 NEWTABLE                         R9 0 2
       53 DUPTABLE                         R10 K19 [{["text"], ["variant"], ["onActivated"], ["testId"] = "scope-options-cancel-button"}]
       54 LOADK                            R13 K7 ["Scopes"]
       55 LOADK                            R14 K8 ["CancelOptions"]
       56 NAMECALL                         R11 R1 K9 ["getText"]
       58 CALL                             R11 3 1
       59 SETTABLEKS                       R11 R10 K14 ["text"]
       61 GETUPVAL                         R11 6
       62 GETTABLEKS                       R11 R11 K20 ["Enums"]
       64 GETTABLEKS                       R11 R11 K21 ["ButtonVariant"]
       66 GETTABLEKS                       R11 R11 K22 ["Standard"]
       68 SETTABLEKS                       R11 R10 K15 ["variant"]
       70 NEWCLOSURE                       R11 P2
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       74 DUPTABLE                         R11 K24 [{["text"], ["variant"], ["onActivated"], ["testId"] = "scope-options-save-button"}]
       75 LOADK                            R14 K7 ["Scopes"]
       76 LOADK                            R15 K13 ["SaveOptions"]
       77 NAMECALL                         R12 R1 K9 ["getText"]
       79 CALL                             R12 3 1
       80 SETTABLEKS                       R12 R11 K14 ["text"]
       82 GETUPVAL                         R12 6
       83 GETTABLEKS                       R12 R12 K20 ["Enums"]
       85 GETTABLEKS                       R12 R12 K21 ["ButtonVariant"]
       87 GETTABLEKS                       R12 R12 K25 ["Emphasis"]
       89 SETTABLEKS                       R12 R11 K15 ["variant"]
       91 NEWCLOSURE                       R12 P3
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R12 R11 K16 ["onActivated"]
       95 SETLIST                          R9 R10 2 [1]
       97 MOVE                             R8 R9
       98 GETUPVAL                         R9 4
       99 GETTABLEKS                       R9 R9 K26 ["createElement"]
      101 GETUPVAL                         R10 6
      102 GETTABLEKS                       R10 R10 K27 ["View"]
      104 DUPTABLE                         R11 K31 [{["LayoutOrder"], ["tag"] = "col size-full"}]
      105 GETTABLEKS                       R12 R0 K28 ["LayoutOrder"]
      107 SETTABLEKS                       R12 R11 K28 ["LayoutOrder"]
      109 DUPTABLE                         R12 K34 [{"Contents", "Buttons"}]
      110 GETUPVAL                         R13 4
      111 GETTABLEKS                       R13 R13 K26 ["createElement"]
      113 GETUPVAL                         R14 6
      114 GETTABLEKS                       R14 R14 K27 ["View"]
      116 DUPTABLE                         R15 K35 [{"tag", "LayoutOrder"}]
      117 LOADK                            R17 K36 ["col align-x-left align-y-top fill size-full am-padding-top-sidebar-toggle"]
      118 GETUPVAL                         R19 5
      119 CALL                             R19 0 1
      120 JUMPIFNOT                        R19 ; [+2]
      121 LOADK                            R18 K37 [" gap-xsmall"]
      122 JUMP                             ; [+1]
      123 LOADK                            R18 K3 [""]
      124 CONCAT                           R16 R17 R18
      125 SETTABLEKS                       R16 R15 K29 ["tag"]
      127 GETUPVAL                         R17 5
      128 CALL                             R17 0 1
      129 JUMPIFNOT                        R17 ; [+2]
      130 LOADN                            R16 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R16
      133 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      135 DUPTABLE                         R16 K42 [{"Header", "Description", "SelectAllCheckbox", "ListContainer"}]
      136 GETUPVAL                         R17 4
      137 GETTABLEKS                       R17 R17 K26 ["createElement"]
      139 GETUPVAL                         R18 6
      140 GETTABLEKS                       R18 R18 K4 ["Text"]
      142 DUPTABLE                         R19 K44 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y padding-x-small padding-top-medium padding-top-xsmall text-title-large text-wrap text-align-x-left"}]
      143 NAMECALL                         R20 R2 K45 ["getNextOrder"]
      145 CALL                             R20 1 1
      146 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      148 LOADK                            R22 K7 ["Scopes"]
      149 LOADK                            R23 K46 ["Customize"]
      150 NAMECALL                         R20 R1 K9 ["getText"]
      152 CALL                             R20 3 1
      153 SETTABLEKS                       R20 R19 K4 ["Text"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K38 ["Header"]
      158 GETUPVAL                         R17 4
      159 GETTABLEKS                       R17 R17 K26 ["createElement"]
      161 GETUPVAL                         R18 6
      162 GETTABLEKS                       R18 R18 K4 ["Text"]
      164 DUPTABLE                         R19 K48 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y padding-small padding-top-xsmall text-body-small text-wrap text-align-x-left"}]
      165 NAMECALL                         R20 R2 K45 ["getNextOrder"]
      167 CALL                             R20 1 1
      168 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      170 LOADK                            R22 K7 ["Scopes"]
      171 LOADK                            R23 K49 ["OptionsDescription"]
      172 NAMECALL                         R20 R1 K9 ["getText"]
      174 CALL                             R20 3 1
      175 SETTABLEKS                       R20 R19 K4 ["Text"]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K39 ["Description"]
      180 GETUPVAL                         R17 4
      181 GETTABLEKS                       R17 R17 K26 ["createElement"]
      183 GETUPVAL                         R18 7
      184 DUPTABLE                         R19 K52 [{"LayoutOrder", "Text", "Checked", "OnChecked"}]
      185 NAMECALL                         R20 R2 K45 ["getNextOrder"]
      187 CALL                             R20 1 1
      188 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      190 LOADK                            R22 K7 ["Scopes"]
      191 LOADK                            R23 K53 ["SelectAll"]
      192 NAMECALL                         R20 R1 K9 ["getText"]
      194 CALL                             R20 3 1
      195 SETTABLEKS                       R20 R19 K4 ["Text"]
      197 NAMECALL                         R20 R3 K54 ["hasAllOptionsChecked"]
      199 CALL                             R20 1 1
      200 SETTABLEKS                       R20 R19 K50 ["Checked"]
      202 NEWCLOSURE                       R20 P4
      203 CAPTURE                          VAL R3
      204 SETTABLEKS                       R20 R19 K51 ["OnChecked"]
      206 CALL                             R17 2 1
      207 SETTABLEKS                       R17 R16 K40 ["SelectAllCheckbox"]
      209 GETUPVAL                         R17 4
      210 GETTABLEKS                       R17 R17 K26 ["createElement"]
      212 GETUPVAL                         R18 6
      213 GETTABLEKS                       R18 R18 K27 ["View"]
      215 DUPTABLE                         R19 K55 [{"LayoutOrder", "tag"}]
      216 NAMECALL                         R20 R2 K45 ["getNextOrder"]
      218 CALL                             R20 1 1
      219 SETTABLEKS                       R20 R19 K28 ["LayoutOrder"]
      221 LOADK                            R21 K56 ["col fill size-full padding-xsmall"]
      222 GETUPVAL                         R23 5
      223 CALL                             R23 0 1
      224 JUMPIFNOT                        R23 ; [+2]
      225 LOADK                            R22 K57 [" gap-small"]
      226 JUMP                             ; [+1]
      227 LOADK                            R22 K3 [""]
      228 CONCAT                           R20 R21 R22
      229 SETTABLEKS                       R20 R19 K29 ["tag"]
      231 DUPTABLE                         R20 K60 [{"TextFilterInput", "List"}]
      232 GETUPVAL                         R22 5
      233 CALL                             R22 0 1
      234 JUMPIFNOT                        R22 ; [+48]
      235 GETUPVAL                         R21 4
      236 GETTABLEKS                       R21 R21 K26 ["createElement"]
      238 GETUPVAL                         R22 6
      239 GETTABLEKS                       R22 R22 K61 ["SearchInput"]
      241 DUPTABLE                         R23 K68 [{["text"], ["placeholder"], ["onChanged"], ["width"], ["size"], ["shape"], ["LayoutOrder"] = 1}]
      242 SETTABLEKS                       R5 R23 K14 ["text"]
      244 LOADK                            R26 K69 ["SearchOptions"]
      245 LOADK                            R27 K70 ["FilterPlaceholder"]
      246 NAMECALL                         R24 R1 K9 ["getText"]
      248 CALL                             R24 3 1
      249 SETTABLEKS                       R24 R23 K62 ["placeholder"]
      251 NEWCLOSURE                       R24 P5
      252 CAPTURE                          VAL R6
      253 CAPTURE                          VAL R3
      254 SETTABLEKS                       R24 R23 K63 ["onChanged"]
      256 GETIMPORT                        R24 K72 [UDim.new]
      258 LOADN                            R25 1
      259 LOADN                            R26 0
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K64 ["width"]
      263 GETUPVAL                         R24 6
      264 GETTABLEKS                       R24 R24 K20 ["Enums"]
      266 GETTABLEKS                       R24 R24 K73 ["InputSize"]
      268 GETTABLEKS                       R24 R24 K74 ["XSmall"]
      270 SETTABLEKS                       R24 R23 K65 ["size"]
      272 GETUPVAL                         R24 6
      273 GETTABLEKS                       R24 R24 K20 ["Enums"]
      275 GETTABLEKS                       R24 R24 K75 ["SearchInputShape"]
      277 GETTABLEKS                       R24 R24 K76 ["Pill"]
      279 SETTABLEKS                       R24 R23 K66 ["shape"]
      281 CALL                             R21 2 1
      282 JUMP                             ; [+22]
      283 GETUPVAL                         R21 4
      284 GETTABLEKS                       R21 R21 K26 ["createElement"]
      286 GETUPVAL                         R22 8
      287 DUPTABLE                         R23 K84 [{["LayoutOrder"], ["PlaceholderText"], ["IncrementalTextSearch"] = True, ["OnSearchRequested"], ["ShowSearchIcon"] = True, ["ShowSearchButton"] = False}]
      288 NAMECALL                         R24 R2 K45 ["getNextOrder"]
      290 CALL                             R24 1 1
      291 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      293 LOADK                            R26 K69 ["SearchOptions"]
      294 LOADK                            R27 K70 ["FilterPlaceholder"]
      295 NAMECALL                         R24 R1 K9 ["getText"]
      297 CALL                             R24 3 1
      298 SETTABLEKS                       R24 R23 K77 ["PlaceholderText"]
      300 NEWCLOSURE                       R24 P6
      301 CAPTURE                          VAL R3
      302 SETTABLEKS                       R24 R23 K80 ["OnSearchRequested"]
      304 CALL                             R21 2 1
      305 SETTABLEKS                       R21 R20 K58 ["TextFilterInput"]
      307 GETUPVAL                         R22 5
      308 CALL                             R22 0 1
      309 JUMPIFNOT                        R22 ; [+49]
      310 GETUPVAL                         R21 4
      311 GETTABLEKS                       R21 R21 K26 ["createElement"]
      313 GETUPVAL                         R22 6
      314 GETTABLEKS                       R22 R22 K85 ["ScrollView"]
      316 DUPTABLE                         R23 K90 [{["tag"] = "fill size-full-0", ["layout"], ["scroll"], ["LayoutOrder"] = 2}]
      317 DUPTABLE                         R24 K92 [{"FillDirection"}]
      318 GETIMPORT                        R25 K95 [Enum.FillDirection.Vertical]
      320 SETTABLEKS                       R25 R24 K91 ["FillDirection"]
      322 SETTABLEKS                       R24 R23 K87 ["layout"]
      324 DUPTABLE                         R24 K99 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      325 GETIMPORT                        R25 K102 [Enum.AutomaticSize.Y]
      327 SETTABLEKS                       R25 R24 K96 ["AutomaticCanvasSize"]
      329 GETIMPORT                        R25 K104 [UDim2.new]
      331 CALL                             R25 0 1
      332 SETTABLEKS                       R25 R24 K97 ["CanvasSize"]
      334 GETIMPORT                        R25 K105 [Enum.ScrollingDirection.Y]
      336 SETTABLEKS                       R25 R24 K98 ["ScrollingDirection"]
      338 SETTABLEKS                       R24 R23 K88 ["scroll"]
      340 GETUPVAL                         R24 4
      341 GETTABLEKS                       R24 R24 K26 ["createElement"]
      343 GETUPVAL                         R25 6
      344 GETTABLEKS                       R25 R25 K27 ["View"]
      346 DUPTABLE                         R26 K107 [{["tag"] = "col gap-small size-full-0 auto-y"}]
      347 GETUPVAL                         R27 9
      348 GETTABLEKS                       R27 R27 K108 ["map"]
      350 MOVE                             R28 R4
      351 NEWCLOSURE                       R29 P7
      352 CAPTURE                          UPVAL U4
      353 CAPTURE                          UPVAL U7
      354 CAPTURE                          VAL R3
      355 CALL                             R27 2 -1
      356 CALL                             R24 -1 -1
      357 CALL                             R21 -1 1
      358 JUMP                             ; [+30]
      359 GETUPVAL                         R21 4
      360 GETTABLEKS                       R21 R21 K26 ["createElement"]
      362 GETUPVAL                         R22 10
      363 NEWTABLE                         R23 8 0
      365 NAMECALL                         R24 R2 K45 ["getNextOrder"]
      367 CALL                             R24 1 1
      368 SETTABLEKS                       R24 R23 K28 ["LayoutOrder"]
      370 NEWCLOSURE                       R24 P8
      371 CAPTURE                          VAL R3
      372 SETTABLEKS                       R24 R23 K109 ["GetRowProps"]
      374 SETTABLEKS                       R4 R23 K110 ["Rows"]
      376 GETUPVAL                         R24 7
      377 SETTABLEKS                       R24 R23 K111 ["RowComponent"]
      379 GETIMPORT                        R24 K105 [Enum.ScrollingDirection.Y]
      381 SETTABLEKS                       R24 R23 K98 ["ScrollingDirection"]
      383 GETUPVAL                         R24 4
      384 GETTABLEKS                       R24 R24 K112 ["Tag"]
      386 LOADK                            R25 K113 ["fill"]
      387 SETTABLE                         R25 R23 R24
      388 CALL                             R21 2 1
      389 SETTABLEKS                       R21 R20 K59 ["List"]
      391 CALL                             R17 3 1
      392 SETTABLEKS                       R17 R16 K41 ["ListContainer"]
      394 CALL                             R13 3 1
      395 SETTABLEKS                       R13 R12 K32 ["Contents"]
      397 GETUPVAL                         R14 5
      398 CALL                             R14 0 1
      399 JUMPIFNOT                        R14 ; [+28]
      400 GETUPVAL                         R13 4
      401 GETTABLEKS                       R13 R13 K26 ["createElement"]
      403 GETUPVAL                         R14 6
      404 GETTABLEKS                       R14 R14 K27 ["View"]
      406 DUPTABLE                         R15 K115 [{["LayoutOrder"] = 2, ["tag"] = "align-x-center align-y-center size-full-0 auto-y padding-bottom-medium"}]
      407 GETUPVAL                         R16 4
      408 GETTABLEKS                       R16 R16 K26 ["createElement"]
      410 GETUPVAL                         R17 6
      411 GETTABLEKS                       R17 R17 K116 ["ButtonGroup"]
      413 DUPTABLE                         R18 K118 [{"size", "buttons"}]
      414 GETUPVAL                         R19 6
      415 GETTABLEKS                       R19 R19 K20 ["Enums"]
      417 GETTABLEKS                       R19 R19 K73 ["InputSize"]
      419 GETTABLEKS                       R19 R19 K119 ["Small"]
      421 SETTABLEKS                       R19 R18 K65 ["size"]
      423 SETTABLEKS                       R8 R18 K117 ["buttons"]
      425 CALL                             R16 2 -1
      426 CALL                             R13 -1 1
      427 JUMP                             ; [+13]
      428 GETUPVAL                         R13 4
      429 GETTABLEKS                       R13 R13 K26 ["createElement"]
      431 GETUPVAL                         R14 11
      432 DUPTABLE                         R15 K120 [{"LayoutOrder", "Buttons"}]
      433 NAMECALL                         R16 R2 K45 ["getNextOrder"]
      435 CALL                             R16 1 1
      436 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      438 SETTABLEKS                       R7 R15 K33 ["Buttons"]
      440 CALL                             R13 2 1
      441 SETTABLEKS                       R13 R12 K33 ["Buttons"]
      443 CALL                             R9 3 -1
      444 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R4 K13 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["LayoutOrderIterator"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Types"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R4 K17 ["UI"]
       52 GETTABLEKS                       R10 R9 K18 ["List"]
       54 GETTABLEKS                       R11 R9 K19 ["SearchBar"]
       56 GETIMPORT                        R12 K5 [require]
       58 GETIMPORT                        R13 K1 [script]
       60 GETTABLEKS                       R13 R13 K20 ["CheckboxRow"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K5 [require]
       65 GETTABLEKS                       R14 R0 K15 ["Src"]
       67 GETTABLEKS                       R14 R14 K21 ["Components"]
       69 GETTABLEKS                       R14 R14 K22 ["Shared"]
       71 GETTABLEKS                       R14 R14 K23 ["DEPRECATED_Toolbar"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R0 K15 ["Src"]
       78 GETTABLEKS                       R15 R15 K24 ["Controllers"]
       80 GETTABLEKS                       R15 R15 K25 ["ExplorerController"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R0 K15 ["Src"]
       87 GETTABLEKS                       R16 R16 K26 ["Hooks"]
       89 GETTABLEKS                       R16 R16 K27 ["useGroupOptions"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R17 R0 K15 ["Src"]
       96 GETTABLEKS                       R17 R17 K28 ["Flags"]
       98 GETTABLEKS                       R17 R17 K29 ["getFFlagAmrFoundationifyScopeOptions"]
      100 CALL                             R16 1 1
      101 DUPCLOSURE                       R17 K30 [PROTO_11]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R13
      114 RETURN                           R17 1
