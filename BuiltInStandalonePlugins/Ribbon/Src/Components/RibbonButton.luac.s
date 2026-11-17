PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["current"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["ControlIndices"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["ShowContextMenu"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K4 ["current"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["ControlIndices"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 JUMPIFEQKNIL                     R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["ShowContextMenu"]
       13 JUMPIF                           R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K0 ["current"]
       18 GETTABLEKS                       R0 R0 K2 ["MouseButton2Up"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R0 R0 K3 ["Connect"]
       25 CALL                             R0 2 1
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["current"]
       29 GETTABLEKS                       R1 R1 K2 ["MouseButton2Up"]
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U0
       34 NAMECALL                         R1 R1 K3 ["Connect"]
       36 CALL                             R1 2 1
       37 NEWCLOSURE                       R2 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hover"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Disabled"]
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["cancelShowTooltip"]
        8 CALL                             R2 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["OnSelect"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Uri"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Uri"]
        3 GETTABLEKS                       R3 R0 K1 ["ForwardRef"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R4 R0 K2 ["Size"]
       11 JUMPIFEQKS                       R4 K3 ["Small"] ; [+5]
       13 GETTABLEKS                       R4 R0 K2 ["Size"]
       15 JUMPIFNOTEQKS                    R4 K4 ["XSmall"] ; [+3]
       17 LOADK                            R3 K3 ["Small"]
       18 JUMP                             ; [+1]
       19 LOADK                            R3 K5 ["Large"]
       20 GETTABLEKS                       R5 R0 K6 ["Icon"]
       22 JUMPIFNOT                        R5 ; [+7]
       23 GETTABLEKS                       R4 R0 K6 ["Icon"]
       25 LOADK                            R6 K7 ["/"]
       26 NAMECALL                         R4 R4 K8 ["find"]
       28 CALL                             R4 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R4
       31 GETTABLEKS                       R6 R0 K6 ["Icon"]
       33 JUMPIFNOT                        R6 ; [+12]
       34 JUMPIFNOT                        R4 ; [+3]
       35 GETTABLEKS                       R5 R0 K6 ["Icon"]
       37 JUMP                             ; [+9]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K9 ["getPathForIcon"]
       41 GETTABLEKS                       R6 R0 K6 ["Icon"]
       43 MOVE                             R7 R3
       44 CALL                             R5 2 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R5
       47 GETUPVAL                         R6 3
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R8 0 2
       54 GETTABLEKS                       R9 R0 K10 ["ShowContextMenu"]
       56 GETTABLEKS                       R10 R0 K11 ["ControlIndices"]
       58 SETLIST                          R8 R9 2 [1]
       60 CALL                             R6 2 0
       61 GETUPVAL                         R6 4
       62 DUPTABLE                         R7 K16 [{"Uri", "Title", "Text", "Shortcuts", "WidgetRef"}]
       63 GETTABLEKS                       R8 R0 K0 ["Uri"]
       65 SETTABLEKS                       R8 R7 K0 ["Uri"]
       67 GETTABLEKS                       R8 R0 K13 ["Text"]
       69 SETTABLEKS                       R8 R7 K12 ["Title"]
       71 GETTABLEKS                       R8 R0 K17 ["Tooltip"]
       73 SETTABLEKS                       R8 R7 K13 ["Text"]
       75 GETTABLEKS                       R8 R0 K14 ["Shortcuts"]
       77 SETTABLEKS                       R8 R7 K14 ["Shortcuts"]
       79 SETTABLEKS                       R1 R7 K15 ["WidgetRef"]
       81 CALL                             R6 1 2
       82 GETUPVAL                         R8 5
       83 CALL                             R8 0 1
       84 GETUPVAL                         R9 6
       85 DUPTABLE                         R10 K24 [{"size", "iconOnly", "selected", "disabled", "isSingle", "isMenuOpen"}]
       86 SETTABLEKS                       R3 R10 K18 ["size"]
       88 GETTABLEKS                       R11 R0 K25 ["IconOnly"]
       90 SETTABLEKS                       R11 R10 K19 ["iconOnly"]
       92 GETTABLEKS                       R11 R0 K26 ["Selected"]
       94 SETTABLEKS                       R11 R10 K20 ["selected"]
       96 GETTABLEKS                       R11 R0 K27 ["Disabled"]
       98 SETTABLEKS                       R11 R10 K21 ["disabled"]
      100 GETTABLEKS                       R11 R0 K28 ["IsSingle"]
      102 SETTABLEKS                       R11 R10 K22 ["isSingle"]
      104 GETTABLEKS                       R11 R0 K29 ["IsMenuOpen"]
      106 SETTABLEKS                       R11 R10 K23 ["isMenuOpen"]
      108 MOVE                             R11 R8
      109 CALL                             R9 2 1
      110 GETUPVAL                         R10 7
      111 NEWCLOSURE                       R11 P1
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R7
      115 NEWTABLE                         R12 0 2
      117 MOVE                             R13 R6
      118 MOVE                             R14 R7
      119 SETLIST                          R12 R13 2 [1]
      121 CALL                             R10 2 1
      122 GETUPVAL                         R11 7
      123 NEWCLOSURE                       R12 P2
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U9
      126 NEWTABLE                         R13 0 3
      128 GETTABLEKS                       R14 R0 K27 ["Disabled"]
      130 GETTABLEKS                       R15 R0 K30 ["OnSelect"]
      132 GETTABLEKS                       R16 R0 K0 ["Uri"]
      134 SETLIST                          R13 R14 3 [1]
      136 CALL                             R11 2 1
      137 GETUPVAL                         R13 10
      138 CALL                             R13 0 1
      139 JUMPIFNOT                        R13 ; [+10]
      140 GETTABLEKS                       R13 R0 K31 ["ShortTitle"]
      142 JUMPIFNOT                        R13 ; [+7]
      143 GETTABLEKS                       R13 R0 K31 ["ShortTitle"]
      145 JUMPIFEQKS                       R13 K32 [""] ; [+4]
      147 GETTABLEKS                       R12 R0 K31 ["ShortTitle"]
      149 JUMP                             ; [+2]
      150 GETTABLEKS                       R12 R0 K13 ["Text"]
      152 JUMPIFNOT                        R12 ; [+6]
      153 LOADK                            R15 K33 ["\n"]
      154 LOADK                            R16 K34 [" "]
      155 NAMECALL                         R13 R12 K35 ["gsub"]
      157 CALL                             R13 3 1
      158 MOVE                             R12 R13
      159 LOADNIL                          R13
      160 GETUPVAL                         R14 11
      161 CALL                             R14 0 1
      162 JUMPIFNOT                        R14 ; [+8]
      163 GETTABLEKS                       R14 R0 K36 ["Visible"]
      165 JUMPIFEQKNIL                     R14 ; [+4]
      167 GETTABLEKS                       R13 R0 K36 ["Visible"]
      169 JUMP                             ; [+1]
      170 LOADB                            R13 1
      171 GETUPVAL                         R14 12
      172 GETTABLEKS                       R14 R14 K37 ["createElement"]
      174 GETUPVAL                         R15 13
      175 DUPTABLE                         R16 K45 [{"LayoutOrder", "ref", "Visible", "tag", "stateLayer", "sizeConstraint", "onStateChanged", "selection"}]
      176 GETTABLEKS                       R17 R0 K38 ["LayoutOrder"]
      178 SETTABLEKS                       R17 R16 K38 ["LayoutOrder"]
      180 SETTABLEKS                       R1 R16 K39 ["ref"]
      182 GETTABLEKS                       R17 R0 K36 ["Visible"]
      184 SETTABLEKS                       R17 R16 K36 ["Visible"]
      186 GETTABLEKS                       R17 R9 K46 ["container"]
      188 GETTABLEKS                       R17 R17 K40 ["tag"]
      190 SETTABLEKS                       R17 R16 K40 ["tag"]
      192 GETTABLEKS                       R17 R9 K46 ["container"]
      194 GETTABLEKS                       R17 R17 K41 ["stateLayer"]
      196 SETTABLEKS                       R17 R16 K41 ["stateLayer"]
      198 GETTABLEKS                       R17 R9 K46 ["container"]
      200 GETTABLEKS                       R17 R17 K42 ["sizeConstraint"]
      202 SETTABLEKS                       R17 R16 K42 ["sizeConstraint"]
      204 SETTABLEKS                       R10 R16 K43 ["onStateChanged"]
      206 GETUPVAL                         R18 11
      207 CALL                             R18 0 1
      208 JUMPIFNOT                        R18 ; [+2]
      209 DUPTABLE                         R17 K49 [{["Selectable"] = False}]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R17
      212 SETTABLEKS                       R17 R16 K44 ["selection"]
      214 DUPTABLE                         R17 K51 [{"ActionContainer", "Text"}]
      215 GETUPVAL                         R18 12
      216 GETTABLEKS                       R18 R18 K37 ["createElement"]
      218 GETUPVAL                         R19 13
      219 DUPTABLE                         R20 K54 [{["tag"], ["LayoutOrder"] = 1, ["onActivated"], ["selection"]}]
      220 GETTABLEKS                       R21 R9 K55 ["actionContainer"]
      222 GETTABLEKS                       R21 R21 K40 ["tag"]
      224 SETTABLEKS                       R21 R20 K40 ["tag"]
      226 GETTABLEKS                       R22 R0 K28 ["IsSingle"]
      228 JUMPIFNOT                        R22 ; [+2]
      229 MOVE                             R21 R11
      230 JUMP                             ; [+1]
      231 LOADNIL                          R21
      232 SETTABLEKS                       R21 R20 K53 ["onActivated"]
      234 GETUPVAL                         R22 11
      235 CALL                             R22 0 1
      236 JUMPIFNOT                        R22 ; [+2]
      237 DUPTABLE                         R21 K49 [{["Selectable"] = False}]
      238 JUMP                             ; [+1]
      239 LOADNIL                          R21
      240 SETTABLEKS                       R21 R20 K44 ["selection"]
      242 DUPTABLE                         R21 K58 [{"RibbonTool", "ArrowButton"}]
      243 GETUPVAL                         R22 12
      244 GETTABLEKS                       R22 R22 K37 ["createElement"]
      246 GETUPVAL                         R23 13
      247 DUPTABLE                         R24 K62 [{["ref"], ["testId"] = "--ribbon-button-tool", ["tag"], ["isDisabled"], ["onStateChanged"], ["stateLayer"], ["onActivated"], ["sizeConstraint"], ["LayoutOrder"] = 1, ["selection"]}]
      248 SETTABLEKS                       R2 R24 K39 ["ref"]
      250 GETTABLEKS                       R25 R9 K63 ["ribbonTool"]
      252 GETTABLEKS                       R25 R25 K40 ["tag"]
      254 SETTABLEKS                       R25 R24 K40 ["tag"]
      256 GETTABLEKS                       R25 R0 K27 ["Disabled"]
      258 SETTABLEKS                       R25 R24 K61 ["isDisabled"]
      260 SETTABLEKS                       R10 R24 K43 ["onStateChanged"]
      262 GETTABLEKS                       R25 R9 K63 ["ribbonTool"]
      264 GETTABLEKS                       R25 R25 K41 ["stateLayer"]
      266 SETTABLEKS                       R25 R24 K41 ["stateLayer"]
      268 SETTABLEKS                       R11 R24 K53 ["onActivated"]
      270 GETTABLEKS                       R25 R9 K63 ["ribbonTool"]
      272 GETTABLEKS                       R25 R25 K42 ["sizeConstraint"]
      274 SETTABLEKS                       R25 R24 K42 ["sizeConstraint"]
      276 GETUPVAL                         R26 11
      277 CALL                             R26 0 1
      278 JUMPIFNOT                        R26 ; [+8]
      279 DUPTABLE                         R25 K64 [{"Selectable"}]
      280 GETTABLEKS                       R28 R0 K27 ["Disabled"]
      282 NOT                              R27 R28
      283 AND                              R26 R27 R13
      284 SETTABLEKS                       R26 R25 K47 ["Selectable"]
      286 JUMP                             ; [+1]
      287 LOADNIL                          R25
      288 SETTABLEKS                       R25 R24 K44 ["selection"]
      290 DUPTABLE                         R25 K66 [{"RibbonToolButtonIcon"}]
      291 JUMPIFNOT                        R5 ; [+38]
      292 GETUPVAL                         R26 12
      293 GETTABLEKS                       R26 R26 K37 ["createElement"]
      295 GETUPVAL                         R27 14
      296 DUPTABLE                         R28 K69 [{"Image", "testId", "tag", "imageStyle"}]
      297 GETUPVAL                         R29 2
      298 GETTABLEKS                       R29 R29 K9 ["getPathForIcon"]
      300 MOVE                             R30 R5
      301 MOVE                             R31 R3
      302 CALL                             R29 2 1
      303 SETTABLEKS                       R29 R28 K67 ["Image"]
      305 GETTABLEKS                       R30 R0 K0 ["Uri"]
      307 JUMPIFNOT                        R30 ; [+5]
      308 GETUPVAL                         R29 15
      309 GETTABLEKS                       R30 R0 K0 ["Uri"]
      311 CALL                             R29 1 1
      312 JUMP                             ; [+1]
      313 LOADNIL                          R29
      314 SETTABLEKS                       R29 R28 K59 ["testId"]
      316 GETTABLEKS                       R29 R9 K70 ["icon"]
      318 GETTABLEKS                       R29 R29 K40 ["tag"]
      320 SETTABLEKS                       R29 R28 K40 ["tag"]
      322 GETTABLEKS                       R29 R9 K70 ["icon"]
      324 GETTABLEKS                       R29 R29 K68 ["imageStyle"]
      326 SETTABLEKS                       R29 R28 K68 ["imageStyle"]
      328 CALL                             R26 2 1
      329 JUMP                             ; [+1]
      330 LOADNIL                          R26
      331 SETTABLEKS                       R26 R25 K65 ["RibbonToolButtonIcon"]
      333 CALL                             R22 3 1
      334 SETTABLEKS                       R22 R21 K56 ["RibbonTool"]
      336 GETTABLEKS                       R22 R0 K57 ["ArrowButton"]
      338 SETTABLEKS                       R22 R21 K57 ["ArrowButton"]
      340 CALL                             R18 3 1
      341 SETTABLEKS                       R18 R17 K50 ["ActionContainer"]
      343 GETTABLEKS                       R19 R0 K25 ["IconOnly"]
      345 JUMPIF                           R19 ; [+40]
      346 GETUPVAL                         R18 12
      347 GETTABLEKS                       R18 R18 K37 ["createElement"]
      349 GETUPVAL                         R19 16
      350 GETTABLEKS                       R19 R19 K13 ["Text"]
      352 DUPTABLE                         R20 K73 [{["LayoutOrder"] = 2, ["tag"], ["Size"], ["sizeConstraint"], ["Text"], ["textStyle"]}]
      353 GETTABLEKS                       R21 R9 K74 ["text"]
      355 GETTABLEKS                       R21 R21 K40 ["tag"]
      357 SETTABLEKS                       R21 R20 K40 ["tag"]
      359 GETTABLEKS                       R21 R9 K74 ["text"]
      361 GETTABLEKS                       R21 R21 K18 ["size"]
      363 SETTABLEKS                       R21 R20 K2 ["Size"]
      365 GETUPVAL                         R22 17
      366 CALL                             R22 0 1
      367 JUMPIFNOT                        R22 ; [+5]
      368 GETTABLEKS                       R21 R9 K74 ["text"]
      370 GETTABLEKS                       R21 R21 K42 ["sizeConstraint"]
      372 JUMP                             ; [+1]
      373 LOADNIL                          R21
      374 SETTABLEKS                       R21 R20 K42 ["sizeConstraint"]
      376 SETTABLEKS                       R12 R20 K13 ["Text"]
      378 GETTABLEKS                       R21 R9 K74 ["text"]
      380 GETTABLEKS                       R21 R21 K72 ["textStyle"]
      382 SETTABLEKS                       R21 R20 K72 ["textStyle"]
      384 CALL                             R18 2 1
      385 JUMP                             ; [+1]
      386 LOADNIL                          R18
      387 SETTABLEKS                       R18 R17 K13 ["Text"]
      389 CALL                             R14 3 -1
      390 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagRibbonEnableKeyboardNavigation"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["IconHelper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["uriToTestId"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Packages"]
       45 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R5 K15 ["View"]
       50 GETTABLEKS                       R7 R5 K16 ["Image"]
       52 GETTABLEKS                       R8 R5 K17 ["Enums"]
       54 GETTABLEKS                       R8 R8 K18 ["ControlState"]
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Src"]
       60 GETTABLEKS                       R10 R10 K19 ["Types"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Src"]
       67 GETTABLEKS                       R11 R11 K20 ["Hooks"]
       69 GETTABLEKS                       R11 R11 K21 ["TooltipSettings"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R12 R0 K6 ["Src"]
       76 GETTABLEKS                       R12 R12 K20 ["Hooks"]
       78 GETTABLEKS                       R12 R12 K22 ["useTooltip"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K9 ["Packages"]
       85 GETTABLEKS                       R13 R13 K23 ["StudioFoundation"]
       87 CALL                             R12 1 1
       88 GETTABLEKS                       R13 R12 K20 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useWidgetRef"]
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K6 ["Src"]
       96 GETTABLEKS                       R15 R15 K20 ["Hooks"]
       98 GETTABLEKS                       R15 R15 K25 ["useDensity"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K5 [require]
      103 GETTABLEKS                       R16 R0 K6 ["Src"]
      105 GETTABLEKS                       R16 R16 K20 ["Hooks"]
      107 GETTABLEKS                       R16 R16 K26 ["useRibbonButtonVariants"]
      109 CALL                             R15 1 1
      110 GETTABLEKS                       R16 R2 K27 ["useCallback"]
      112 GETTABLEKS                       R17 R2 K28 ["useEffect"]
      114 GETTABLEKS                       R18 R2 K29 ["useRef"]
      116 GETIMPORT                        R19 K5 [require]
      118 GETTABLEKS                       R20 R0 K6 ["Src"]
      120 GETTABLEKS                       R20 R20 K7 ["SharedFlags"]
      122 GETTABLEKS                       R20 R20 K30 ["getFFlagRibbonTextLengthImprovements"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K5 [require]
      127 GETTABLEKS                       R21 R0 K6 ["Src"]
      129 GETTABLEKS                       R21 R21 K7 ["SharedFlags"]
      131 GETTABLEKS                       R21 R21 K31 ["getFeatureStudioActionShortNames"]
      133 CALL                             R20 1 1
      134 DUPCLOSURE                       R21 K32 [PROTO_6]
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R19
      153 RETURN                           R21 1
