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
       12 JUMP                             ; [+13]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["IsHoveredRef"]
       16 JUMPIFNOT                        R2 ; [+8]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["IsHoveredRef"]
       20 GETTABLEKS                       R2 R2 K5 ["current"]
       22 JUMPIFNOT                        R2 ; [+2]
       23 LOADK                            R1 K6 [0.5]
       24 JUMP                             ; [+1]
       25 LOADN                            R1 1
       26 SETTABLEKS                       R1 R0 K0 ["Transparency"]
       28 RETURN                           R0 1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Weight"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADN                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["Weight"]
       10 MULK                             R1 R2 K1 [100]
       11 FASTCALL1                        MATH_ROUND R1 ; [+2]
       12 GETIMPORT                        R0 K4 [math.round]
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

PROTO_5:
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
       54 GETTABLEKS                       R13 R0 K11 ["IsHoveredRef"]
       56 JUMPIFNOT                        R13 ; [+4]
       57 GETTABLEKS                       R13 R0 K11 ["IsHoveredRef"]
       59 GETTABLEKS                       R13 R13 K12 ["current"]
       61 SETLIST                          R9 R10 4 [1]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 4
       65 GETTABLEKS                       R8 R8 K13 ["useSignalState"]
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       70 NEWCLOSURE                       R10 P2
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R0
       73 NEWTABLE                         R11 0 2
       75 GETTABLEKS                       R12 R1 K14 ["observeGraphNodeById"]
       77 GETTABLEKS                       R13 R0 K15 ["NodeId"]
       79 SETLIST                          R11 R12 2 [1]
       81 CALL                             R9 2 -1
       82 CALL                             R8 -1 1
       83 GETUPVAL                         R9 4
       84 GETTABLEKS                       R9 R9 K13 ["useSignalState"]
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       89 NEWCLOSURE                       R11 P3
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R12 0 2
       94 GETTABLEKS                       R13 R1 K16 ["observeNodeRenderInfoById"]
       96 GETTABLEKS                       R14 R0 K15 ["NodeId"]
       98 SETLIST                          R12 R13 2 [1]
      100 CALL                             R10 2 -1
      101 CALL                             R9 -1 1
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K8 ["useMemo"]
      105 NEWCLOSURE                       R11 P4
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R12 0 1
      109 GETTABLEKS                       R13 R0 K17 ["Weight"]
      111 SETLIST                          R12 R13 1 [1]
      113 CALL                             R10 2 1
      114 GETUPVAL                         R11 0
      115 GETTABLEKS                       R11 R11 K18 ["createElement"]
      117 GETUPVAL                         R12 3
      118 GETTABLEKS                       R12 R12 K19 ["View"]
      120 DUPTABLE                         R13 K23 [{"tag", "LayoutOrder", "testId"}]
      121 GETUPVAL                         R14 3
      122 GETTABLEKS                       R14 R14 K24 ["Hooks"]
      124 GETTABLEKS                       R14 R14 K25 ["useDefaultTags"]
      126 GETTABLEKS                       R15 R0 K26 ["tags"]
      128 LOADK                            R16 K27 ["row auto-y gap-small size-full-700 align-y-center"]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K20 ["tag"]
      132 GETTABLEKS                       R14 R0 K21 ["LayoutOrder"]
      134 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      136 GETTABLEKS                       R14 R0 K22 ["testId"]
      138 SETTABLEKS                       R14 R13 K22 ["testId"]
      140 DUPTABLE                         R14 K33 [{"InputLabel", "DeleteWeightFiller", "InputWeight", "TransitionButton", "Popover"}]
      141 GETUPVAL                         R15 0
      142 GETTABLEKS                       R15 R15 K18 ["createElement"]
      144 GETUPVAL                         R16 3
      145 GETTABLEKS                       R16 R16 K34 ["Text"]
      147 DUPTABLE                         R17 K36 [{"tag", "Text", "TextTruncate", "LayoutOrder"}]
      148 GETUPVAL                         R19 5
      149 CALL                             R19 0 1
      150 JUMPIFNOT                        R19 ; [+10]
      151 NEWTABLE                         R18 2 0
      153 LOADB                            R19 1
      154 SETTABLEKS                       R19 R18 K37 ["content-emphasis text-body-small text-align-x-left auto-xy"]
      156 GETTABLEKS                       R19 R0 K38 ["HideWeight"]
      158 SETTABLEKS                       R19 R18 K39 ["fill"]
      160 JUMP                             ; [+1]
      161 LOADK                            R18 K40 ["content-emphasis text-body-small text-align-x-left auto-x fill"]
      162 SETTABLEKS                       R18 R17 K20 ["tag"]
      164 GETTABLEKS                       R18 R0 K41 ["Label"]
      166 SETTABLEKS                       R18 R17 K34 ["Text"]
      168 GETIMPORT                        R18 K44 [Enum.TextTruncate.SplitWord]
      170 SETTABLEKS                       R18 R17 K35 ["TextTruncate"]
      172 MOVE                             R18 R4
      173 CALL                             R18 0 1
      174 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K28 ["InputLabel"]
      179 GETUPVAL                         R16 5
      180 CALL                             R16 0 1
      181 JUMPIFNOT                        R16 ; [+36]
      182 GETTABLEKS                       R16 R0 K38 ["HideWeight"]
      184 JUMPIF                           R16 ; [+33]
      185 GETUPVAL                         R15 0
      186 GETTABLEKS                       R15 R15 K18 ["createElement"]
      188 GETUPVAL                         R16 3
      189 GETTABLEKS                       R16 R16 K19 ["View"]
      191 DUPTABLE                         R17 K45 [{"tag", "LayoutOrder"}]
      192 LOADK                            R18 K46 ["auto-y fill"]
      193 SETTABLEKS                       R18 R17 K20 ["tag"]
      195 MOVE                             R18 R4
      196 CALL                             R18 0 1
      197 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      199 DUPTABLE                         R18 K48 [{"DeleteWeight"}]
      200 GETUPVAL                         R19 0
      201 GETTABLEKS                       R19 R19 K18 ["createElement"]
      203 GETUPVAL                         R20 6
      204 DUPTABLE                         R21 K50 [{"OnDelete", "Weight"}]
      205 GETTABLEKS                       R22 R0 K49 ["OnDelete"]
      207 SETTABLEKS                       R22 R21 K49 ["OnDelete"]
      209 GETTABLEKS                       R22 R0 K17 ["Weight"]
      211 SETTABLEKS                       R22 R21 K17 ["Weight"]
      213 CALL                             R19 2 1
      214 SETTABLEKS                       R19 R18 K47 ["DeleteWeight"]
      216 CALL                             R15 3 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R15
      219 SETTABLEKS                       R15 R14 K29 ["DeleteWeightFiller"]
      221 GETTABLEKS                       R16 R0 K38 ["HideWeight"]
      223 JUMPIF                           R16 ; [+34]
      224 GETUPVAL                         R16 5
      225 CALL                             R16 0 1
      226 JUMPIF                           R16 ; [+31]
      227 GETUPVAL                         R15 0
      228 GETTABLEKS                       R15 R15 K18 ["createElement"]
      230 GETUPVAL                         R16 3
      231 GETTABLEKS                       R16 R16 K34 ["Text"]
      233 DUPTABLE                         R17 K52 [{"tag", "Size", "Text", "LayoutOrder"}]
      234 LOADK                            R18 K53 ["content-muted text-body-small text-align-x-left auto-y"]
      235 SETTABLEKS                       R18 R17 K20 ["tag"]
      237 GETIMPORT                        R18 K56 [UDim2.fromOffset]
      239 LOADN                            R19 30
      240 LOADN                            R20 0
      241 CALL                             R18 2 1
      242 SETTABLEKS                       R18 R17 K51 ["Size"]
      244 LOADK                            R19 K57 ["%*%%"]
      245 MOVE                             R21 R10
      246 NAMECALL                         R19 R19 K58 ["format"]
      248 CALL                             R19 2 1
      249 MOVE                             R18 R19
      250 SETTABLEKS                       R18 R17 K34 ["Text"]
      252 MOVE                             R18 R4
      253 CALL                             R18 0 1
      254 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      256 CALL                             R15 2 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R15
      259 SETTABLEKS                       R15 R14 K30 ["InputWeight"]
      261 GETUPVAL                         R15 0
      262 GETTABLEKS                       R15 R15 K18 ["createElement"]
      264 GETUPVAL                         R16 3
      265 GETTABLEKS                       R16 R16 K19 ["View"]
      267 DUPTABLE                         R17 K62 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "ref", "testId"}]
      268 LOADK                            R18 K63 ["auto-xy"]
      269 SETTABLEKS                       R18 R17 K20 ["tag"]
      271 MOVE                             R18 R4
      272 CALL                             R18 0 1
      273 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      275 SETTABLEKS                       R5 R17 K59 ["onStateChanged"]
      277 DUPTABLE                         R18 K65 [{"affordance"}]
      278 GETUPVAL                         R19 3
      279 GETTABLEKS                       R19 R19 K66 ["Enums"]
      281 GETTABLEKS                       R19 R19 K67 ["StateLayerAffordance"]
      283 GETTABLEKS                       R19 R19 K68 ["None"]
      285 SETTABLEKS                       R19 R18 K64 ["affordance"]
      287 SETTABLEKS                       R18 R17 K60 ["stateLayer"]
      289 SETTABLEKS                       R3 R17 K61 ["ref"]
      291 LOADK                            R18 K69 ["transition-property-toggle"]
      292 SETTABLEKS                       R18 R17 K22 ["testId"]
      294 DUPTABLE                         R18 K71 [{"Icon"}]
      295 GETUPVAL                         R19 0
      296 GETTABLEKS                       R19 R19 K18 ["createElement"]
      298 GETUPVAL                         R20 3
      299 GETTABLEKS                       R20 R20 K70 ["Icon"]
      301 DUPTABLE                         R21 K76 [{"name", "size", "variant", "style"}]
      302 LOADK                            R22 K77 ["arrow-small-right"]
      303 SETTABLEKS                       R22 R21 K72 ["name"]
      305 GETUPVAL                         R22 3
      306 GETTABLEKS                       R22 R22 K66 ["Enums"]
      308 GETTABLEKS                       R22 R22 K78 ["IconSize"]
      310 GETTABLEKS                       R22 R22 K79 ["XSmall"]
      312 SETTABLEKS                       R22 R21 K73 ["size"]
      314 GETUPVAL                         R22 3
      315 GETTABLEKS                       R22 R22 K66 ["Enums"]
      317 GETTABLEKS                       R22 R22 K80 ["IconVariant"]
      319 GETTABLEKS                       R22 R22 K81 ["Regular"]
      321 SETTABLEKS                       R22 R21 K74 ["variant"]
      323 SETTABLEKS                       R7 R21 K75 ["style"]
      325 CALL                             R19 2 1
      326 SETTABLEKS                       R19 R18 K70 ["Icon"]
      328 CALL                             R15 3 1
      329 SETTABLEKS                       R15 R14 K31 ["TransitionButton"]
      331 GETUPVAL                         R15 0
      332 GETTABLEKS                       R15 R15 K18 ["createElement"]
      334 GETUPVAL                         R16 3
      335 GETTABLEKS                       R16 R16 K32 ["Popover"]
      337 GETTABLEKS                       R16 R16 K82 ["Root"]
      339 DUPTABLE                         R17 K84 [{"isOpen"}]
      340 GETTABLEKS                       R18 R2 K9 ["enabled"]
      342 SETTABLEKS                       R18 R17 K83 ["isOpen"]
      344 DUPTABLE                         R18 K87 [{"Anchor", "Content"}]
      345 GETUPVAL                         R19 0
      346 GETTABLEKS                       R19 R19 K18 ["createElement"]
      348 GETUPVAL                         R20 3
      349 GETTABLEKS                       R20 R20 K32 ["Popover"]
      351 GETTABLEKS                       R20 R20 K85 ["Anchor"]
      353 DUPTABLE                         R21 K89 [{"anchorRef"}]
      354 SETTABLEKS                       R3 R21 K88 ["anchorRef"]
      356 CALL                             R19 2 1
      357 SETTABLEKS                       R19 R18 K85 ["Anchor"]
      359 GETUPVAL                         R19 0
      360 GETTABLEKS                       R19 R19 K18 ["createElement"]
      362 GETUPVAL                         R20 3
      363 GETTABLEKS                       R20 R20 K32 ["Popover"]
      365 GETTABLEKS                       R20 R20 K86 ["Content"]
      367 DUPTABLE                         R21 K93 [{"align", "side", "onPressedOutside"}]
      368 GETUPVAL                         R22 3
      369 GETTABLEKS                       R22 R22 K66 ["Enums"]
      371 GETTABLEKS                       R22 R22 K94 ["PopoverAlign"]
      373 GETTABLEKS                       R22 R22 K95 ["Start"]
      375 SETTABLEKS                       R22 R21 K90 ["align"]
      377 GETUPVAL                         R22 3
      378 GETTABLEKS                       R22 R22 K66 ["Enums"]
      380 GETTABLEKS                       R22 R22 K96 ["PopoverSide"]
      382 GETTABLEKS                       R22 R22 K97 ["Right"]
      384 SETTABLEKS                       R22 R21 K91 ["side"]
      386 GETTABLEKS                       R22 R2 K98 ["disable"]
      388 SETTABLEKS                       R22 R21 K92 ["onPressedOutside"]
      390 JUMPIFNOT                        R8 ; [+72]
      391 GETUPVAL                         R22 0
      392 GETTABLEKS                       R22 R22 K18 ["createElement"]
      394 GETUPVAL                         R23 7
      395 DUPTABLE                         R24 K111 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text", "editName"}]
      396 SETTABLEKS                       R6 R24 K7 ["AllowReset"]
      398 GETTABLEKS                       R26 R0 K41 ["Label"]
      400 ORK                              R25 R26 K112 [""]
      401 SETTABLEKS                       R25 R24 K99 ["Name"]
      403 LOADB                            R25 1
      404 SETTABLEKS                       R25 R24 K100 ["Expanded"]
      406 GETTABLEKS                       R25 R0 K10 ["IsDefaultValue"]
      408 SETTABLEKS                       R25 R24 K10 ["IsDefaultValue"]
      410 GETTABLEKS                       R25 R0 K101 ["TransitionBuilder"]
      412 SETTABLEKS                       R25 R24 K101 ["TransitionBuilder"]
      414 GETTABLEKS                       R25 R0 K113 ["Value"]
      416 JUMPIF                           R25 ; [+2]
      417 GETTABLEKS                       R25 R0 K114 ["DefaultValue"]
      419 SETTABLEKS                       R25 R24 K102 ["Transition"]
      421 GETTABLEKS                       R25 R0 K103 ["OnChanged"]
      423 SETTABLEKS                       R25 R24 K103 ["OnChanged"]
      425 GETTABLEKS                       R25 R2 K98 ["disable"]
      427 SETTABLEKS                       R25 R24 K104 ["OnClosed"]
      429 SETTABLEKS                       R8 R24 K105 ["GraphPayload"]
      431 NEWTABLE                         R25 0 0
      433 SETTABLEKS                       R25 R24 K106 ["PropertyLookup"]
      435 JUMPIFNOT                        R9 ; [+3]
      436 GETTABLEKS                       R25 R9 K115 ["position"]
      438 JUMP                             ; [+2]
      439 GETIMPORT                        R25 K118 [Vector2.zero]
      441 SETTABLEKS                       R25 R24 K107 ["Position"]
      443 JUMPIFNOT                        R9 ; [+3]
      444 GETTABLEKS                       R25 R9 K73 ["size"]
      446 JUMP                             ; [+2]
      447 GETIMPORT                        R25 K118 [Vector2.zero]
      449 SETTABLEKS                       R25 R24 K51 ["Size"]
      451 NEWTABLE                         R25 0 0
      453 SETTABLEKS                       R25 R24 K108 ["StateLookup"]
      455 LOADK                            R25 K112 [""]
      456 SETTABLEKS                       R25 R24 K109 ["text"]
      458 LOADK                            R25 K112 [""]
      459 SETTABLEKS                       R25 R24 K110 ["editName"]
      461 CALL                             R22 2 1
      462 JUMP                             ; [+1]
      463 LOADNIL                          R22
      464 CALL                             R19 3 1
      465 SETTABLEKS                       R19 R18 K86 ["Content"]
      467 CALL                             R15 3 1
      468 SETTABLEKS                       R15 R14 K32 ["Popover"]
      470 CALL                             R11 3 -1
      471 RETURN                           R11 -1

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
       15 GETTABLEKS                       R2 R2 K9 ["DeleteWeightButton"]
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
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K20 ["Flags"]
       75 GETTABLEKS                       R10 R10 K21 ["getFFlagAnimGraphUIDeleteInput"]
       77 CALL                             R9 1 1
       78 DUPCLOSURE                       R10 K22 [PROTO_5]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R8
       87 RETURN                           R10 1
