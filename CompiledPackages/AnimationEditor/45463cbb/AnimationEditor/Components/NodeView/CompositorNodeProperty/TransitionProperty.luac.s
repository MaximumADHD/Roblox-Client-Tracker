PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Pressed"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["toggle"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["enabled"]
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K3 ["IsDefaultValue"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADN                            R1 0
       12 JUMP                             ; [+7]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["IsHovered"]
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADK                            R1 K5 [0.5]
       18 JUMP                             ; [+1]
       19 LOADN                            R1 1
       20 SETTABLEKS                       R1 R0 K0 ["Transparency"]
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useToggleState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useRef"]
       15 LOADNIL                          R4
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["createNextOrder"]
       20 CALL                             R4 0 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R7 0 1
       29 GETTABLEKS                       R8 R2 K6 ["toggle"]
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 1
       34 GETTABLEKS                       R7 R0 K7 ["AllowReset"]
       36 JUMPIFNOTEQKB                    R7 FALSE ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       43 NEWCLOSURE                       R8 P1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R9 0 4
       49 GETTABLEKS                       R10 R2 K9 ["enabled"]
       51 MOVE                             R11 R6
       52 GETTABLEKS                       R12 R0 K10 ["IsDefaultValue"]
       54 GETTABLEKS                       R13 R0 K11 ["IsHovered"]
       56 SETLIST                          R9 R10 4 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R8 R8 K12 ["useSignalState"]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       65 NEWCLOSURE                       R10 P2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R11 0 2
       70 GETTABLEKS                       R12 R1 K13 ["observeGraphNodeById"]
       72 GETTABLEKS                       R13 R0 K14 ["NodeId"]
       74 SETLIST                          R11 R12 2 [1]
       76 CALL                             R9 2 -1
       77 CALL                             R8 -1 1
       78 GETUPVAL                         R9 4
       79 GETTABLEKS                       R9 R9 K12 ["useSignalState"]
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       84 NEWCLOSURE                       R11 P3
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R0
       87 NEWTABLE                         R12 0 2
       89 GETTABLEKS                       R13 R1 K15 ["observeNodeRenderInfoById"]
       91 GETTABLEKS                       R14 R0 K14 ["NodeId"]
       93 SETLIST                          R12 R13 2 [1]
       95 CALL                             R10 2 -1
       96 CALL                             R9 -1 1
       97 GETTABLEKS                       R11 R0 K16 ["Weight"]
       99 JUMPIFNOTEQKNIL                  R11 ; [+3]
      101 LOADN                            R10 0
      102 JUMP                             ; [+7]
      103 GETTABLEKS                       R12 R0 K16 ["Weight"]
      105 MULK                             R11 R12 K17 [100]
      106 FASTCALL1                        MATH_ROUND R11 ; [+2]
      107 GETIMPORT                        R10 K20 [math.round]
      109 CALL                             R10 1 1
      110 GETTABLEKS                       R11 R0 K21 ["OnDelete"]
      112 JUMPIFNOT                        R11 ; [+2]
      113 GETTABLEKS                       R11 R0 K11 ["IsHovered"]
      115 GETUPVAL                         R12 0
      116 GETTABLEKS                       R12 R12 K22 ["createElement"]
      118 GETUPVAL                         R13 3
      119 GETTABLEKS                       R13 R13 K23 ["View"]
      121 DUPTABLE                         R14 K27 [{"tag", "LayoutOrder", "testId"}]
      122 GETUPVAL                         R15 3
      123 GETTABLEKS                       R15 R15 K28 ["Hooks"]
      125 GETTABLEKS                       R15 R15 K29 ["useDefaultTags"]
      127 GETTABLEKS                       R16 R0 K30 ["tags"]
      129 LOADK                            R17 K31 ["row auto-y gap-small size-full-700 align-y-center"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K24 ["tag"]
      133 GETTABLEKS                       R15 R0 K25 ["LayoutOrder"]
      135 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
      137 GETTABLEKS                       R15 R0 K26 ["testId"]
      139 SETTABLEKS                       R15 R14 K26 ["testId"]
      141 DUPTABLE                         R15 K37 [{"InputLabel", "InputDelete", "InputWeight", "TransitionButton", "Popover"}]
      142 GETUPVAL                         R16 0
      143 GETTABLEKS                       R16 R16 K22 ["createElement"]
      145 GETUPVAL                         R17 3
      146 GETTABLEKS                       R17 R17 K38 ["Text"]
      148 DUPTABLE                         R18 K40 [{"tag", "Text", "TextTruncate", "LayoutOrder", "OnDelete", "IsHovered"}]
      149 GETUPVAL                         R20 5
      150 CALL                             R20 0 1
      151 JUMPIFNOT                        R20 ; [+12]
      152 NEWTABLE                         R19 2 0
      154 LOADB                            R20 1
      155 SETTABLEKS                       R20 R19 K41 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      157 GETTABLEKS                       R20 R0 K42 ["HideWeight"]
      159 JUMPIFNOT                        R20 ; [+1]
      160 NOT                              R20 R11
      161 SETTABLEKS                       R20 R19 K43 ["fill"]
      163 JUMP                             ; [+1]
      164 LOADK                            R19 K44 ["content-emphasis text-body-small text-align-x-left auto-x fill"]
      165 SETTABLEKS                       R19 R18 K24 ["tag"]
      167 GETTABLEKS                       R19 R0 K45 ["Label"]
      169 SETTABLEKS                       R19 R18 K38 ["Text"]
      171 GETIMPORT                        R19 K48 [Enum.TextTruncate.SplitWord]
      173 SETTABLEKS                       R19 R18 K39 ["TextTruncate"]
      175 MOVE                             R19 R4
      176 CALL                             R19 0 1
      177 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      179 GETUPVAL                         R20 5
      180 CALL                             R20 0 1
      181 JUMPIFNOT                        R20 ; [+3]
      182 GETTABLEKS                       R19 R0 K21 ["OnDelete"]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R19
      186 SETTABLEKS                       R19 R18 K21 ["OnDelete"]
      188 GETUPVAL                         R20 5
      189 CALL                             R20 0 1
      190 JUMPIFNOT                        R20 ; [+3]
      191 GETTABLEKS                       R19 R0 K11 ["IsHovered"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R19
      195 SETTABLEKS                       R19 R18 K11 ["IsHovered"]
      197 CALL                             R16 2 1
      198 SETTABLEKS                       R16 R15 K32 ["InputLabel"]
      200 GETUPVAL                         R17 5
      201 CALL                             R17 0 1
      202 JUMPIFNOT                        R17 ; [+16]
      203 JUMPIFNOT                        R11 ; [+15]
      204 GETUPVAL                         R16 0
      205 GETTABLEKS                       R16 R16 K22 ["createElement"]
      207 GETUPVAL                         R17 6
      208 DUPTABLE                         R18 K49 [{"LayoutOrder", "OnDelete"}]
      209 MOVE                             R19 R4
      210 CALL                             R19 0 1
      211 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      213 GETTABLEKS                       R19 R0 K21 ["OnDelete"]
      215 SETTABLEKS                       R19 R18 K21 ["OnDelete"]
      217 CALL                             R16 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R16
      220 SETTABLEKS                       R16 R15 K33 ["InputDelete"]
      222 GETTABLEKS                       R17 R0 K42 ["HideWeight"]
      224 JUMPIF                           R17 ; [+46]
      225 GETUPVAL                         R17 5
      226 CALL                             R17 0 1
      227 JUMPIFNOT                        R17 ; [+1]
      228 JUMPIF                           R11 ; [+42]
      229 GETUPVAL                         R16 0
      230 GETTABLEKS                       R16 R16 K22 ["createElement"]
      232 GETUPVAL                         R17 3
      233 GETTABLEKS                       R17 R17 K38 ["Text"]
      235 DUPTABLE                         R18 K51 [{"tag", "Size", "Text", "LayoutOrder"}]
      236 NEWTABLE                         R19 2 0
      238 LOADB                            R20 1
      239 SETTABLEKS                       R20 R19 K52 ["content-muted text-body-small text-align-x-left auto-y"]
      241 GETUPVAL                         R21 5
      242 CALL                             R21 0 1
      243 NOT                              R20 R21
      244 JUMPIF                           R20 ; [+1]
      245 NOT                              R20 R11
      246 SETTABLEKS                       R20 R19 K43 ["fill"]
      248 SETTABLEKS                       R19 R18 K24 ["tag"]
      250 GETIMPORT                        R19 K55 [UDim2.fromOffset]
      252 LOADN                            R20 30
      253 LOADN                            R21 0
      254 CALL                             R19 2 1
      255 SETTABLEKS                       R19 R18 K50 ["Size"]
      257 LOADK                            R20 K56 ["%*%%"]
      258 MOVE                             R22 R10
      259 NAMECALL                         R20 R20 K57 ["format"]
      261 CALL                             R20 2 1
      262 MOVE                             R19 R20
      263 SETTABLEKS                       R19 R18 K38 ["Text"]
      265 MOVE                             R19 R4
      266 CALL                             R19 0 1
      267 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      269 CALL                             R16 2 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R16
      272 SETTABLEKS                       R16 R15 K34 ["InputWeight"]
      274 GETUPVAL                         R16 0
      275 GETTABLEKS                       R16 R16 K22 ["createElement"]
      277 GETUPVAL                         R17 3
      278 GETTABLEKS                       R17 R17 K23 ["View"]
      280 DUPTABLE                         R18 K61 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "ref", "testId"}]
      281 LOADK                            R19 K62 ["auto-xy"]
      282 SETTABLEKS                       R19 R18 K24 ["tag"]
      284 MOVE                             R19 R4
      285 CALL                             R19 0 1
      286 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      288 SETTABLEKS                       R5 R18 K58 ["onStateChanged"]
      290 DUPTABLE                         R19 K64 [{"affordance"}]
      291 GETUPVAL                         R20 3
      292 GETTABLEKS                       R20 R20 K65 ["Enums"]
      294 GETTABLEKS                       R20 R20 K66 ["StateLayerAffordance"]
      296 GETTABLEKS                       R20 R20 K67 ["None"]
      298 SETTABLEKS                       R20 R19 K63 ["affordance"]
      300 SETTABLEKS                       R19 R18 K59 ["stateLayer"]
      302 SETTABLEKS                       R3 R18 K60 ["ref"]
      304 LOADK                            R19 K68 ["transition-property-toggle"]
      305 SETTABLEKS                       R19 R18 K26 ["testId"]
      307 DUPTABLE                         R19 K70 [{"Icon"}]
      308 GETUPVAL                         R20 0
      309 GETTABLEKS                       R20 R20 K22 ["createElement"]
      311 GETUPVAL                         R21 3
      312 GETTABLEKS                       R21 R21 K69 ["Icon"]
      314 DUPTABLE                         R22 K75 [{"name", "size", "variant", "style"}]
      315 LOADK                            R23 K76 ["arrow-small-right"]
      316 SETTABLEKS                       R23 R22 K71 ["name"]
      318 GETUPVAL                         R23 3
      319 GETTABLEKS                       R23 R23 K65 ["Enums"]
      321 GETTABLEKS                       R23 R23 K77 ["IconSize"]
      323 GETTABLEKS                       R23 R23 K78 ["XSmall"]
      325 SETTABLEKS                       R23 R22 K72 ["size"]
      327 GETUPVAL                         R23 3
      328 GETTABLEKS                       R23 R23 K65 ["Enums"]
      330 GETTABLEKS                       R23 R23 K79 ["IconVariant"]
      332 GETTABLEKS                       R23 R23 K80 ["Regular"]
      334 SETTABLEKS                       R23 R22 K73 ["variant"]
      336 SETTABLEKS                       R7 R22 K74 ["style"]
      338 CALL                             R20 2 1
      339 SETTABLEKS                       R20 R19 K69 ["Icon"]
      341 CALL                             R16 3 1
      342 SETTABLEKS                       R16 R15 K35 ["TransitionButton"]
      344 GETUPVAL                         R16 0
      345 GETTABLEKS                       R16 R16 K22 ["createElement"]
      347 GETUPVAL                         R17 3
      348 GETTABLEKS                       R17 R17 K36 ["Popover"]
      350 GETTABLEKS                       R17 R17 K81 ["Root"]
      352 DUPTABLE                         R18 K83 [{"isOpen"}]
      353 GETTABLEKS                       R19 R2 K9 ["enabled"]
      355 SETTABLEKS                       R19 R18 K82 ["isOpen"]
      357 DUPTABLE                         R19 K86 [{"Anchor", "Content"}]
      358 GETUPVAL                         R20 0
      359 GETTABLEKS                       R20 R20 K22 ["createElement"]
      361 GETUPVAL                         R21 3
      362 GETTABLEKS                       R21 R21 K36 ["Popover"]
      364 GETTABLEKS                       R21 R21 K84 ["Anchor"]
      366 DUPTABLE                         R22 K88 [{"anchorRef"}]
      367 SETTABLEKS                       R3 R22 K87 ["anchorRef"]
      369 CALL                             R20 2 1
      370 SETTABLEKS                       R20 R19 K84 ["Anchor"]
      372 GETUPVAL                         R20 0
      373 GETTABLEKS                       R20 R20 K22 ["createElement"]
      375 GETUPVAL                         R21 3
      376 GETTABLEKS                       R21 R21 K36 ["Popover"]
      378 GETTABLEKS                       R21 R21 K85 ["Content"]
      380 DUPTABLE                         R22 K92 [{"align", "side", "onPressedOutside"}]
      381 GETUPVAL                         R23 3
      382 GETTABLEKS                       R23 R23 K65 ["Enums"]
      384 GETTABLEKS                       R23 R23 K93 ["PopoverAlign"]
      386 GETTABLEKS                       R23 R23 K94 ["Start"]
      388 SETTABLEKS                       R23 R22 K89 ["align"]
      390 GETUPVAL                         R23 3
      391 GETTABLEKS                       R23 R23 K65 ["Enums"]
      393 GETTABLEKS                       R23 R23 K95 ["PopoverSide"]
      395 GETTABLEKS                       R23 R23 K96 ["Right"]
      397 SETTABLEKS                       R23 R22 K90 ["side"]
      399 GETTABLEKS                       R23 R2 K97 ["disable"]
      401 SETTABLEKS                       R23 R22 K91 ["onPressedOutside"]
      403 JUMPIFNOT                        R8 ; [+72]
      404 GETUPVAL                         R23 0
      405 GETTABLEKS                       R23 R23 K22 ["createElement"]
      407 GETUPVAL                         R24 7
      408 DUPTABLE                         R25 K110 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text", "editName"}]
      409 SETTABLEKS                       R6 R25 K7 ["AllowReset"]
      411 GETTABLEKS                       R27 R0 K45 ["Label"]
      413 ORK                              R26 R27 K111 [""]
      414 SETTABLEKS                       R26 R25 K98 ["Name"]
      416 LOADB                            R26 1
      417 SETTABLEKS                       R26 R25 K99 ["Expanded"]
      419 GETTABLEKS                       R26 R0 K10 ["IsDefaultValue"]
      421 SETTABLEKS                       R26 R25 K10 ["IsDefaultValue"]
      423 GETTABLEKS                       R26 R0 K100 ["TransitionBuilder"]
      425 SETTABLEKS                       R26 R25 K100 ["TransitionBuilder"]
      427 GETTABLEKS                       R26 R0 K112 ["Value"]
      429 JUMPIF                           R26 ; [+2]
      430 GETTABLEKS                       R26 R0 K113 ["DefaultValue"]
      432 SETTABLEKS                       R26 R25 K101 ["Transition"]
      434 GETTABLEKS                       R26 R0 K102 ["OnChanged"]
      436 SETTABLEKS                       R26 R25 K102 ["OnChanged"]
      438 GETTABLEKS                       R26 R2 K97 ["disable"]
      440 SETTABLEKS                       R26 R25 K103 ["OnClosed"]
      442 SETTABLEKS                       R8 R25 K104 ["GraphPayload"]
      444 NEWTABLE                         R26 0 0
      446 SETTABLEKS                       R26 R25 K105 ["PropertyLookup"]
      448 JUMPIFNOT                        R9 ; [+3]
      449 GETTABLEKS                       R26 R9 K114 ["position"]
      451 JUMP                             ; [+2]
      452 GETIMPORT                        R26 K117 [Vector2.zero]
      454 SETTABLEKS                       R26 R25 K106 ["Position"]
      456 JUMPIFNOT                        R9 ; [+3]
      457 GETTABLEKS                       R26 R9 K72 ["size"]
      459 JUMP                             ; [+2]
      460 GETIMPORT                        R26 K117 [Vector2.zero]
      462 SETTABLEKS                       R26 R25 K50 ["Size"]
      464 NEWTABLE                         R26 0 0
      466 SETTABLEKS                       R26 R25 K107 ["StateLookup"]
      468 LOADK                            R26 K111 [""]
      469 SETTABLEKS                       R26 R25 K108 ["text"]
      471 LOADK                            R26 K111 [""]
      472 SETTABLEKS                       R26 R25 K109 ["editName"]
      474 CALL                             R23 2 1
      475 JUMP                             ; [+1]
      476 LOADNIL                          R23
      477 CALL                             R20 3 1
      478 SETTABLEKS                       R20 R19 K85 ["Content"]
      480 CALL                             R16 3 1
      481 SETTABLEKS                       R16 R15 K36 ["Popover"]
      483 CALL                             R12 3 -1
      484 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["DeleteInputButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K13 ["NativeGraphContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Parent"]
       57 GETTABLEKS                       R8 R8 K17 ["SignalsReact"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K7 ["NodeView"]
       66 GETTABLEKS                       R9 R9 K18 ["CompositorNodeTransition"]
       68 GETTABLEKS                       R9 R9 K19 ["TransitionPanel"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R4 K20 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       73 DUPCLOSURE                       R10 K21 [PROTO_4]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R8
       82 RETURN                           R10 1
