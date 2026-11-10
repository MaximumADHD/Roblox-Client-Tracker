PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createNextOrder"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["Hooks"]
       15 GETTABLEKS                       R3 R3 K5 ["useTokens"]
       17 CALL                             R3 0 1
       18 GETTABLEKS                       R5 R0 K6 ["size"]
       20 GETTABLEKS                       R5 R5 K7 ["X"]
       22 GETTABLEKS                       R5 R5 K8 ["Scale"]
       24 LOADN                            R6 0
       25 JUMPIFLT                         R6 R5 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K9 ["useRef"]
       32 LOADNIL                          R6
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K10 ["useState"]
       37 LOADB                            R7 0
       38 CALL                             R6 1 2
       39 GETUPVAL                         R8 3
       40 GETTABLEKS                       R8 R8 K11 ["useCallback"]
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R7
       44 CAPTURE                          UPVAL U2
       45 NEWTABLE                         R10 0 0
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 3
       49 GETTABLEKS                       R9 R9 K12 ["createElement"]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R10 R10 K13 ["View"]
       54 DUPTABLE                         R11 K22 [{["tag"], ["isDisabled"], ["Size"], ["onActivated"], ["onStateChanged"], ["testId"] = "PopoverDropdown", ["ref"]}]
       55 JUMPIFNOT                        R4 ; [+2]
       56 LOADK                            R12 K23 ["fill row align-y-center padding-x-small radius-small bg-shift-200"]
       57 JUMP                             ; [+1]
       58 LOADK                            R12 K24 ["row align-y-center padding-x-small radius-small bg-shift-200"]
       59 SETTABLEKS                       R12 R11 K14 ["tag"]
       61 GETTABLEKS                       R12 R0 K15 ["isDisabled"]
       63 SETTABLEKS                       R12 R11 K15 ["isDisabled"]
       65 JUMPIFNOT                        R4 ; [+13]
       66 GETIMPORT                        R12 K27 [UDim2.new]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 LOADN                            R15 0
       71 GETTABLEKS                       R16 R0 K6 ["size"]
       73 GETTABLEKS                       R16 R16 K28 ["Y"]
       75 GETTABLEKS                       R16 R16 K29 ["Offset"]
       77 CALL                             R12 4 1
       78 JUMP                             ; [+2]
       79 GETTABLEKS                       R12 R0 K6 ["size"]
       81 SETTABLEKS                       R12 R11 K16 ["Size"]
       83 GETTABLEKS                       R12 R0 K17 ["onActivated"]
       85 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       87 GETTABLEKS                       R13 R0 K30 ["tooltip"]
       89 JUMPIFEQKNIL                     R13 ; [+3]
       91 MOVE                             R12 R8
       92 JUMP                             ; [+1]
       93 LOADNIL                          R12
       94 SETTABLEKS                       R12 R11 K18 ["onStateChanged"]
       96 JUMPIF                           R4 ; [+4]
       97 GETTABLEKS                       R13 R0 K30 ["tooltip"]
       99 JUMPIFEQKNIL                     R13 ; [+3]
      101 MOVE                             R12 R5
      102 JUMP                             ; [+1]
      103 LOADNIL                          R12
      104 SETTABLEKS                       R12 R11 K21 ["ref"]
      106 DUPTABLE                         R12 K33 [{"Text", "Arrow"}]
      107 GETUPVAL                         R13 3
      108 GETTABLEKS                       R13 R13 K12 ["createElement"]
      110 GETUPVAL                         R14 2
      111 GETTABLEKS                       R14 R14 K31 ["Text"]
      113 DUPTABLE                         R15 K35 [{"tag", "LayoutOrder", "Text"}]
      114 NEWTABLE                         R16 2 0
      116 LOADB                            R17 1
      117 SETTABLEKS                       R17 R16 K36 ["fill auto-xy text-body-small text-align-x-left text-truncate-split"]
      119 GETTABLEKS                       R17 R0 K15 ["isDisabled"]
      121 SETTABLEKS                       R17 R16 K37 ["content-muted"]
      123 SETTABLEKS                       R16 R15 K14 ["tag"]
      125 MOVE                             R16 R2
      126 CALL                             R16 0 1
      127 SETTABLEKS                       R16 R15 K34 ["LayoutOrder"]
      129 GETTABLEKS                       R17 R0 K38 ["text"]
      131 JUMPIFNOTEQKNIL                  R17 ; [+9]
      133 LOADK                            R18 K39 ["Common"]
      134 LOADK                            R19 K40 ["AnimationEditor"]
      135 LOADK                            R20 K39 ["Common"]
      136 LOADK                            R21 K41 ["None"]
      137 NAMECALL                         R16 R1 K42 ["getExternalText"]
      139 CALL                             R16 5 1
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R16 R0 K38 ["text"]
      143 SETTABLEKS                       R16 R15 K31 ["Text"]
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K31 ["Text"]
      148 GETUPVAL                         R13 3
      149 GETTABLEKS                       R13 R13 K12 ["createElement"]
      151 GETUPVAL                         R14 2
      152 GETTABLEKS                       R14 R14 K43 ["Image"]
      154 DUPTABLE                         R15 K45 [{["tag"], ["LayoutOrder"], ["Image"] = "rbxasset://studio_svg_textures/Lua/Explorer/Light/Standard/expanded.png"}]
      155 NEWTABLE                         R16 2 0
      157 LOADB                            R17 1
      158 SETTABLEKS                       R17 R16 K46 ["size-400-400"]
      160 GETTABLEKS                       R17 R0 K15 ["isDisabled"]
      162 SETTABLEKS                       R17 R16 K37 ["content-muted"]
      164 SETTABLEKS                       R16 R15 K14 ["tag"]
      166 MOVE                             R16 R2
      167 CALL                             R16 0 1
      168 SETTABLEKS                       R16 R15 K34 ["LayoutOrder"]
      170 CALL                             R13 2 1
      171 SETTABLEKS                       R13 R12 K32 ["Arrow"]
      173 CALL                             R9 3 1
      174 GETUPVAL                         R10 3
      175 GETTABLEKS                       R10 R10 K12 ["createElement"]
      177 GETUPVAL                         R11 2
      178 GETTABLEKS                       R11 R11 K47 ["Popover"]
      180 GETTABLEKS                       R11 R11 K48 ["Content"]
      182 DUPTABLE                         R12 K54 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      183 GETTABLEKS                       R13 R0 K51 ["onPressedOutside"]
      185 SETTABLEKS                       R13 R12 K51 ["onPressedOutside"]
      187 DUPTABLE                         R13 K58 [{["position"], ["offset"] = 0}]
      188 GETUPVAL                         R14 2
      189 GETTABLEKS                       R14 R14 K59 ["Enums"]
      191 GETTABLEKS                       R14 R14 K60 ["PopoverAlign"]
      193 GETTABLEKS                       R14 R14 K61 ["Start"]
      195 SETTABLEKS                       R14 R13 K55 ["position"]
      197 SETTABLEKS                       R13 R12 K52 ["align"]
      199 DUPTABLE                         R13 K63 [{["position"], ["offset"] = 8}]
      200 GETUPVAL                         R14 2
      201 GETTABLEKS                       R14 R14 K59 ["Enums"]
      203 GETTABLEKS                       R14 R14 K64 ["PopoverSide"]
      205 GETTABLEKS                       R14 R14 K65 ["Bottom"]
      207 SETTABLEKS                       R14 R13 K55 ["position"]
      209 SETTABLEKS                       R13 R12 K53 ["side"]
      211 GETTABLEKS                       R14 R0 K66 ["isPopoverOpen"]
      213 JUMPIFNOT                        R14 ; [+3]
      214 GETTABLEKS                       R13 R0 K67 ["children"]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R13
      218 CALL                             R10 3 1
      219 GETTABLEKS                       R12 R0 K30 ["tooltip"]
      221 JUMPIFEQKNIL                     R12 ; [+126]
      223 GETUPVAL                         R11 3
      224 GETTABLEKS                       R11 R11 K12 ["createElement"]
      226 GETUPVAL                         R12 2
      227 GETTABLEKS                       R12 R12 K47 ["Popover"]
      229 GETTABLEKS                       R12 R12 K68 ["Root"]
      231 DUPTABLE                         R13 K70 [{"isOpen"}]
      232 MOVE                             R14 R6
      233 JUMPIFNOT                        R14 ; [+3]
      234 GETTABLEKS                       R15 R0 K66 ["isPopoverOpen"]
      236 NOT                              R14 R15
      237 SETTABLEKS                       R14 R13 K69 ["isOpen"]
      239 DUPTABLE                         R14 K72 [{"Anchor", "Content"}]
      240 GETUPVAL                         R15 3
      241 GETTABLEKS                       R15 R15 K12 ["createElement"]
      243 GETUPVAL                         R16 2
      244 GETTABLEKS                       R16 R16 K47 ["Popover"]
      246 GETTABLEKS                       R16 R16 K71 ["Anchor"]
      248 DUPTABLE                         R17 K74 [{"anchorRef"}]
      249 SETTABLEKS                       R5 R17 K73 ["anchorRef"]
      251 CALL                             R15 2 1
      252 SETTABLEKS                       R15 R14 K71 ["Anchor"]
      254 GETUPVAL                         R15 3
      255 GETTABLEKS                       R15 R15 K12 ["createElement"]
      257 GETUPVAL                         R16 2
      258 GETTABLEKS                       R16 R16 K47 ["Popover"]
      260 GETTABLEKS                       R16 R16 K48 ["Content"]
      262 DUPTABLE                         R17 K78 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      263 GETUPVAL                         R18 2
      264 GETTABLEKS                       R18 R18 K59 ["Enums"]
      266 GETTABLEKS                       R18 R18 K60 ["PopoverAlign"]
      268 GETTABLEKS                       R18 R18 K61 ["Start"]
      270 SETTABLEKS                       R18 R17 K52 ["align"]
      272 DUPTABLE                         R18 K79 [{"position", "offset"}]
      273 GETUPVAL                         R19 2
      274 GETTABLEKS                       R19 R19 K59 ["Enums"]
      276 GETTABLEKS                       R19 R19 K64 ["PopoverSide"]
      278 GETTABLEKS                       R19 R19 K65 ["Bottom"]
      280 SETTABLEKS                       R19 R18 K55 ["position"]
      282 GETTABLEKS                       R19 R3 K16 ["Size"]
      284 GETTABLEKS                       R19 R19 K80 ["Size_200"]
      286 SETTABLEKS                       R19 R18 K56 ["offset"]
      288 SETTABLEKS                       R18 R17 K53 ["side"]
      290 GETUPVAL                         R18 2
      291 GETTABLEKS                       R18 R18 K59 ["Enums"]
      293 GETTABLEKS                       R18 R18 K81 ["Radius"]
      295 GETTABLEKS                       R18 R18 K82 ["Small"]
      297 SETTABLEKS                       R18 R17 K75 ["radius"]
      299 GETTABLEKS                       R18 R3 K83 ["Inverse"]
      301 GETTABLEKS                       R18 R18 K84 ["Surface"]
      303 GETTABLEKS                       R18 R18 K85 ["Surface_0"]
      305 SETTABLEKS                       R18 R17 K76 ["backgroundStyle"]
      307 DUPTABLE                         R18 K87 [{"Tooltip"}]
      308 GETUPVAL                         R19 3
      309 GETTABLEKS                       R19 R19 K12 ["createElement"]
      311 GETUPVAL                         R20 2
      312 GETTABLEKS                       R20 R20 K13 ["View"]
      314 DUPTABLE                         R21 K91 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall", ["sizeConstraint"], ["testId"] = "PopoverDropdownTooltip"}]
      315 DUPTABLE                         R22 K93 [{"MaxSize"}]
      316 GETIMPORT                        R23 K95 [Vector2.new]
      318 LOADN                            R24 320
      319 LOADK                            R25 K96 [Infinity]
      320 CALL                             R23 2 1
      321 SETTABLEKS                       R23 R22 K92 ["MaxSize"]
      323 SETTABLEKS                       R22 R21 K89 ["sizeConstraint"]
      325 DUPTABLE                         R22 K97 [{"Text"}]
      326 GETUPVAL                         R23 3
      327 GETTABLEKS                       R23 R23 K12 ["createElement"]
      329 GETUPVAL                         R24 2
      330 GETTABLEKS                       R24 R24 K31 ["Text"]
      332 DUPTABLE                         R25 K99 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-inverse-emphasis", ["Text"]}]
      333 GETTABLEKS                       R26 R0 K30 ["tooltip"]
      335 SETTABLEKS                       R26 R25 K31 ["Text"]
      337 CALL                             R23 2 1
      338 SETTABLEKS                       R23 R22 K31 ["Text"]
      340 CALL                             R19 3 1
      341 SETTABLEKS                       R19 R18 K86 ["Tooltip"]
      343 CALL                             R15 3 1
      344 SETTABLEKS                       R15 R14 K48 ["Content"]
      346 CALL                             R11 3 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R11
      349 JUMPIFNOT                        R4 ; [+51]
      350 GETUPVAL                         R12 3
      351 GETTABLEKS                       R12 R12 K12 ["createElement"]
      353 GETUPVAL                         R13 2
      354 GETTABLEKS                       R13 R13 K13 ["View"]
      356 DUPTABLE                         R14 K101 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["LayoutOrder"]}]
      357 GETTABLEKS                       R15 R0 K102 ["layoutOrder"]
      359 SETTABLEKS                       R15 R14 K34 ["LayoutOrder"]
      361 DUPTABLE                         R15 K104 [{"Box", "Popover", "Tooltip"}]
      362 SETTABLEKS                       R9 R15 K103 ["Box"]
      364 GETUPVAL                         R16 3
      365 GETTABLEKS                       R16 R16 K12 ["createElement"]
      367 GETUPVAL                         R17 2
      368 GETTABLEKS                       R17 R17 K47 ["Popover"]
      370 GETTABLEKS                       R17 R17 K68 ["Root"]
      372 DUPTABLE                         R18 K70 [{"isOpen"}]
      373 GETTABLEKS                       R19 R0 K66 ["isPopoverOpen"]
      375 SETTABLEKS                       R19 R18 K69 ["isOpen"]
      377 DUPTABLE                         R19 K72 [{"Anchor", "Content"}]
      378 GETUPVAL                         R20 3
      379 GETTABLEKS                       R20 R20 K12 ["createElement"]
      381 GETUPVAL                         R21 2
      382 GETTABLEKS                       R21 R21 K47 ["Popover"]
      384 GETTABLEKS                       R21 R21 K71 ["Anchor"]
      386 DUPTABLE                         R22 K74 [{"anchorRef"}]
      387 SETTABLEKS                       R5 R22 K73 ["anchorRef"]
      389 CALL                             R20 2 1
      390 SETTABLEKS                       R20 R19 K71 ["Anchor"]
      392 SETTABLEKS                       R10 R19 K48 ["Content"]
      394 CALL                             R16 3 1
      395 SETTABLEKS                       R16 R15 K47 ["Popover"]
      397 SETTABLEKS                       R11 R15 K86 ["Tooltip"]
      399 CALL                             R12 3 -1
      400 RETURN                           R12 -1
      401 GETUPVAL                         R12 3
      402 GETTABLEKS                       R12 R12 K12 ["createElement"]
      404 GETUPVAL                         R13 2
      405 GETTABLEKS                       R13 R13 K13 ["View"]
      407 DUPTABLE                         R14 K106 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      408 GETTABLEKS                       R15 R0 K102 ["layoutOrder"]
      410 SETTABLEKS                       R15 R14 K34 ["LayoutOrder"]
      412 DUPTABLE                         R15 K107 [{"Popover", "Tooltip"}]
      413 GETUPVAL                         R16 3
      414 GETTABLEKS                       R16 R16 K12 ["createElement"]
      416 GETUPVAL                         R17 2
      417 GETTABLEKS                       R17 R17 K47 ["Popover"]
      419 GETTABLEKS                       R17 R17 K68 ["Root"]
      421 DUPTABLE                         R18 K70 [{"isOpen"}]
      422 GETTABLEKS                       R19 R0 K66 ["isPopoverOpen"]
      424 SETTABLEKS                       R19 R18 K69 ["isOpen"]
      426 DUPTABLE                         R19 K72 [{"Anchor", "Content"}]
      427 GETUPVAL                         R20 3
      428 GETTABLEKS                       R20 R20 K12 ["createElement"]
      430 GETUPVAL                         R21 2
      431 GETTABLEKS                       R21 R21 K47 ["Popover"]
      433 GETTABLEKS                       R21 R21 K71 ["Anchor"]
      435 NEWTABLE                         R22 0 0
      437 DUPTABLE                         R23 K109 [{"Dropdown"}]
      438 SETTABLEKS                       R9 R23 K108 ["Dropdown"]
      440 CALL                             R20 3 1
      441 SETTABLEKS                       R20 R19 K71 ["Anchor"]
      443 SETTABLEKS                       R10 R19 K48 ["Content"]
      445 CALL                             R16 3 1
      446 SETTABLEKS                       R16 R15 K47 ["Popover"]
      448 SETTABLEKS                       R11 R15 K86 ["Tooltip"]
      450 CALL                             R12 3 -1
      451 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 DUPCLOSURE                       R6 K11 [PROTO_1]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 RETURN                           R6 1
