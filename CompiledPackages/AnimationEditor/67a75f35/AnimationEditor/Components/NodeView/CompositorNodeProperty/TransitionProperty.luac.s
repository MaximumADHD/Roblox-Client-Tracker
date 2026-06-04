PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Pressed"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["toggle"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

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
      117 GETUPVAL                         R12 5
      118 GETTABLEKS                       R12 R12 K19 ["View"]
      120 DUPTABLE                         R13 K23 [{"tag", "LayoutOrder", "testId"}]
      121 GETUPVAL                         R14 5
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
      140 DUPTABLE                         R14 K32 [{"InputLabel", "InputWeight", "ButtonPlaceholder", "Popover"}]
      141 GETUPVAL                         R15 0
      142 GETTABLEKS                       R15 R15 K18 ["createElement"]
      144 GETUPVAL                         R16 5
      145 GETTABLEKS                       R16 R16 K33 ["Text"]
      147 DUPTABLE                         R17 K35 [{"tag", "Text", "TextTruncate", "LayoutOrder"}]
      148 LOADK                            R18 K36 ["content-emphasis text-body-small text-align-x-left auto-y fill"]
      149 SETTABLEKS                       R18 R17 K20 ["tag"]
      151 GETTABLEKS                       R18 R0 K37 ["Label"]
      153 SETTABLEKS                       R18 R17 K33 ["Text"]
      155 GETIMPORT                        R18 K40 [Enum.TextTruncate.SplitWord]
      157 SETTABLEKS                       R18 R17 K34 ["TextTruncate"]
      159 MOVE                             R18 R4
      160 CALL                             R18 0 1
      161 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      163 CALL                             R15 2 1
      164 SETTABLEKS                       R15 R14 K28 ["InputLabel"]
      166 GETTABLEKS                       R16 R0 K41 ["HideWeight"]
      168 JUMPIF                           R16 ; [+31]
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R15 R15 K18 ["createElement"]
      172 GETUPVAL                         R16 5
      173 GETTABLEKS                       R16 R16 K33 ["Text"]
      175 DUPTABLE                         R17 K43 [{"tag", "Size", "Text", "LayoutOrder"}]
      176 LOADK                            R18 K44 ["content-muted text-body-small text-align-x-left auto-y"]
      177 SETTABLEKS                       R18 R17 K20 ["tag"]
      179 GETIMPORT                        R18 K47 [UDim2.fromOffset]
      181 LOADN                            R19 30
      182 LOADN                            R20 0
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K42 ["Size"]
      186 LOADK                            R19 K48 ["%*%%"]
      187 MOVE                             R21 R10
      188 NAMECALL                         R19 R19 K49 ["format"]
      190 CALL                             R19 2 1
      191 MOVE                             R18 R19
      192 SETTABLEKS                       R18 R17 K33 ["Text"]
      194 MOVE                             R18 R4
      195 CALL                             R18 0 1
      196 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      198 CALL                             R15 2 1
      199 JUMP                             ; [+1]
      200 LOADNIL                          R15
      201 SETTABLEKS                       R15 R14 K29 ["InputWeight"]
      203 GETUPVAL                         R15 0
      204 GETTABLEKS                       R15 R15 K18 ["createElement"]
      206 GETUPVAL                         R16 5
      207 GETTABLEKS                       R16 R16 K19 ["View"]
      209 DUPTABLE                         R17 K53 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "ref", "testId"}]
      210 LOADK                            R18 K54 ["auto-xy"]
      211 SETTABLEKS                       R18 R17 K20 ["tag"]
      213 MOVE                             R18 R4
      214 CALL                             R18 0 1
      215 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      217 SETTABLEKS                       R5 R17 K50 ["onStateChanged"]
      219 DUPTABLE                         R18 K56 [{"affordance"}]
      220 GETUPVAL                         R19 6
      221 GETTABLEKS                       R19 R19 K57 ["None"]
      223 SETTABLEKS                       R19 R18 K55 ["affordance"]
      225 SETTABLEKS                       R18 R17 K51 ["stateLayer"]
      227 SETTABLEKS                       R3 R17 K52 ["ref"]
      229 LOADK                            R18 K58 ["transition-property-toggle"]
      230 SETTABLEKS                       R18 R17 K22 ["testId"]
      232 DUPTABLE                         R18 K60 [{"Icon"}]
      233 GETUPVAL                         R19 0
      234 GETTABLEKS                       R19 R19 K18 ["createElement"]
      236 GETUPVAL                         R20 5
      237 GETTABLEKS                       R20 R20 K59 ["Icon"]
      239 DUPTABLE                         R21 K65 [{"name", "size", "variant", "style"}]
      240 LOADK                            R22 K66 ["arrow-small-right"]
      241 SETTABLEKS                       R22 R21 K61 ["name"]
      243 GETUPVAL                         R22 5
      244 GETTABLEKS                       R22 R22 K67 ["Enums"]
      246 GETTABLEKS                       R22 R22 K68 ["IconSize"]
      248 GETTABLEKS                       R22 R22 K69 ["XSmall"]
      250 SETTABLEKS                       R22 R21 K62 ["size"]
      252 GETUPVAL                         R22 5
      253 GETTABLEKS                       R22 R22 K67 ["Enums"]
      255 GETTABLEKS                       R22 R22 K70 ["IconVariant"]
      257 GETTABLEKS                       R22 R22 K71 ["Regular"]
      259 SETTABLEKS                       R22 R21 K63 ["variant"]
      261 SETTABLEKS                       R7 R21 K64 ["style"]
      263 CALL                             R19 2 1
      264 SETTABLEKS                       R19 R18 K59 ["Icon"]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K30 ["ButtonPlaceholder"]
      269 GETUPVAL                         R15 0
      270 GETTABLEKS                       R15 R15 K18 ["createElement"]
      272 GETUPVAL                         R16 5
      273 GETTABLEKS                       R16 R16 K31 ["Popover"]
      275 GETTABLEKS                       R16 R16 K72 ["Root"]
      277 DUPTABLE                         R17 K74 [{"isOpen"}]
      278 GETTABLEKS                       R18 R2 K9 ["enabled"]
      280 SETTABLEKS                       R18 R17 K73 ["isOpen"]
      282 DUPTABLE                         R18 K77 [{"Anchor", "Content"}]
      283 GETUPVAL                         R19 0
      284 GETTABLEKS                       R19 R19 K18 ["createElement"]
      286 GETUPVAL                         R20 5
      287 GETTABLEKS                       R20 R20 K31 ["Popover"]
      289 GETTABLEKS                       R20 R20 K75 ["Anchor"]
      291 DUPTABLE                         R21 K79 [{"anchorRef"}]
      292 SETTABLEKS                       R3 R21 K78 ["anchorRef"]
      294 CALL                             R19 2 1
      295 SETTABLEKS                       R19 R18 K75 ["Anchor"]
      297 GETUPVAL                         R19 0
      298 GETTABLEKS                       R19 R19 K18 ["createElement"]
      300 GETUPVAL                         R20 5
      301 GETTABLEKS                       R20 R20 K31 ["Popover"]
      303 GETTABLEKS                       R20 R20 K76 ["Content"]
      305 DUPTABLE                         R21 K83 [{"align", "side", "onPressedOutside"}]
      306 GETUPVAL                         R22 5
      307 GETTABLEKS                       R22 R22 K67 ["Enums"]
      309 GETTABLEKS                       R22 R22 K84 ["PopoverAlign"]
      311 GETTABLEKS                       R22 R22 K85 ["Start"]
      313 SETTABLEKS                       R22 R21 K80 ["align"]
      315 GETUPVAL                         R22 5
      316 GETTABLEKS                       R22 R22 K67 ["Enums"]
      318 GETTABLEKS                       R22 R22 K86 ["PopoverSide"]
      320 GETTABLEKS                       R22 R22 K87 ["Right"]
      322 SETTABLEKS                       R22 R21 K81 ["side"]
      324 GETTABLEKS                       R22 R2 K88 ["disable"]
      326 SETTABLEKS                       R22 R21 K82 ["onPressedOutside"]
      328 JUMPIFNOT                        R8 ; [+72]
      329 GETUPVAL                         R22 0
      330 GETTABLEKS                       R22 R22 K18 ["createElement"]
      332 GETUPVAL                         R23 7
      333 DUPTABLE                         R24 K101 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text", "editName"}]
      334 SETTABLEKS                       R6 R24 K7 ["AllowReset"]
      336 GETTABLEKS                       R26 R0 K37 ["Label"]
      338 ORK                              R25 R26 K102 [""]
      339 SETTABLEKS                       R25 R24 K89 ["Name"]
      341 LOADB                            R25 1
      342 SETTABLEKS                       R25 R24 K90 ["Expanded"]
      344 GETTABLEKS                       R25 R0 K10 ["IsDefaultValue"]
      346 SETTABLEKS                       R25 R24 K10 ["IsDefaultValue"]
      348 GETTABLEKS                       R25 R0 K91 ["TransitionBuilder"]
      350 SETTABLEKS                       R25 R24 K91 ["TransitionBuilder"]
      352 GETTABLEKS                       R25 R0 K103 ["Value"]
      354 JUMPIF                           R25 ; [+2]
      355 GETTABLEKS                       R25 R0 K104 ["DefaultValue"]
      357 SETTABLEKS                       R25 R24 K92 ["Transition"]
      359 GETTABLEKS                       R25 R0 K93 ["OnChanged"]
      361 SETTABLEKS                       R25 R24 K93 ["OnChanged"]
      363 GETTABLEKS                       R25 R2 K88 ["disable"]
      365 SETTABLEKS                       R25 R24 K94 ["OnClosed"]
      367 SETTABLEKS                       R8 R24 K95 ["GraphPayload"]
      369 NEWTABLE                         R25 0 0
      371 SETTABLEKS                       R25 R24 K96 ["PropertyLookup"]
      373 JUMPIFNOT                        R9 ; [+3]
      374 GETTABLEKS                       R25 R9 K105 ["position"]
      376 JUMP                             ; [+2]
      377 GETIMPORT                        R25 K108 [Vector2.zero]
      379 SETTABLEKS                       R25 R24 K97 ["Position"]
      381 JUMPIFNOT                        R9 ; [+3]
      382 GETTABLEKS                       R25 R9 K62 ["size"]
      384 JUMP                             ; [+2]
      385 GETIMPORT                        R25 K108 [Vector2.zero]
      387 SETTABLEKS                       R25 R24 K42 ["Size"]
      389 NEWTABLE                         R25 0 0
      391 SETTABLEKS                       R25 R24 K98 ["StateLookup"]
      393 LOADK                            R25 K102 [""]
      394 SETTABLEKS                       R25 R24 K99 ["text"]
      396 LOADK                            R25 K102 [""]
      397 SETTABLEKS                       R25 R24 K100 ["editName"]
      399 CALL                             R22 2 1
      400 JUMP                             ; [+1]
      401 LOADNIL                          R22
      402 CALL                             R19 3 1
      403 SETTABLEKS                       R19 R18 K76 ["Content"]
      405 CALL                             R15 3 1
      406 SETTABLEKS                       R15 R14 K31 ["Popover"]
      408 CALL                             R11 3 -1
      409 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["ControlState"]
       32 GETTABLEKS                       R5 R1 K10 ["Enums"]
       34 GETTABLEKS                       R5 R5 K12 ["StateLayerAffordance"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       40 GETTABLEKS                       R7 R7 K14 ["NativeGraphContext"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Parent"]
       47 GETTABLEKS                       R8 R8 K15 ["NodeGraphing"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Parent"]
       54 GETTABLEKS                       R9 R9 K16 ["SignalsReact"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K17 ["Components"]
       61 GETTABLEKS                       R10 R10 K18 ["NodeView"]
       63 GETTABLEKS                       R10 R10 K19 ["CompositorNodeTransition"]
       65 GETTABLEKS                       R10 R10 K20 ["TransitionPanel"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K21 [PROTO_5]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R9
       77 RETURN                           R10 1
