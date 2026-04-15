PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Pressed"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["toggle"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"Transparency"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["enabled"]
        4 JUMPIF                           R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K3 ["IsDefaultValue"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADN                            R1 0
       12 JUMP                             ; [+13]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K4 ["IsHoveredRef"]
       16 JUMPIFNOT                        R2 ; [+8]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K4 ["IsHoveredRef"]
       20 GETTABLEKS                       R2 R3 K5 ["current"]
       22 JUMPIFNOT                        R2 ; [+2]
       23 LOADK                            R1 K6 [0.5]
       24 JUMP                             ; [+1]
       25 LOADN                            R1 1
       26 SETTABLEKS                       R1 R0 K0 ["Transparency"]
       28 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Weight"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADN                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["Weight"]
       10 MULK                             R1 R2 K1 [100]
       11 FASTCALL1                        MATH_ROUND R1 ; [+2]
       12 GETIMPORT                        R0 K4 [math.round]
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["useToggleState"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["useRef"]
       15 LOADNIL                          R4
       16 CALL                             R3 1 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K4 ["createNextOrder"]
       20 CALL                             R4 0 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K5 ["useCallback"]
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
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K8 ["useMemo"]
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
       57 GETTABLEKS                       R14 R0 K11 ["IsHoveredRef"]
       59 GETTABLEKS                       R13 R14 K12 ["current"]
       61 SETLIST                          R9 R10 4 [1]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R9 4
       65 GETTABLEKS                       R8 R9 K13 ["useSignalState"]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R9 R10 K8 ["useMemo"]
       70 NEWCLOSURE                       R10 P2
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R0
       73 NEWTABLE                         R11 0 2
       75 GETTABLEKS                       R12 R1 K14 ["observeGraphNodeById"]
       77 GETTABLEKS                       R13 R0 K15 ["NodeId"]
       79 SETLIST                          R11 R12 2 [1]
       81 CALL                             R9 2 -1
       82 CALL                             R8 -1 1
       83 GETUPVAL                         R10 4
       84 GETTABLEKS                       R9 R10 K13 ["useSignalState"]
       86 GETUPVAL                         R11 0
       87 GETTABLEKS                       R10 R11 K8 ["useMemo"]
       89 NEWCLOSURE                       R11 P3
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R12 0 2
       94 GETTABLEKS                       R13 R1 K16 ["observeNodeRenderInfoById"]
       96 GETTABLEKS                       R14 R0 K15 ["NodeId"]
       98 SETLIST                          R12 R13 2 [1]
      100 CALL                             R10 2 -1
      101 CALL                             R9 -1 1
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R10 R11 K8 ["useMemo"]
      105 NEWCLOSURE                       R11 P4
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R12 0 1
      109 GETTABLEKS                       R13 R0 K17 ["Weight"]
      111 SETLIST                          R12 R13 1 [1]
      113 CALL                             R10 2 1
      114 GETUPVAL                         R12 0
      115 GETTABLEKS                       R11 R12 K18 ["createElement"]
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R12 R13 K19 ["View"]
      120 DUPTABLE                         R13 K23 [{"tag", "LayoutOrder", "testId"}]
      121 GETUPVAL                         R16 5
      122 GETTABLEKS                       R15 R16 K24 ["Hooks"]
      124 GETTABLEKS                       R14 R15 K25 ["useDefaultTags"]
      126 GETTABLEKS                       R15 R0 K26 ["tags"]
      128 LOADK                            R16 K27 ["row auto-y gap-small size-full-700 align-y-center"]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R13 K20 ["tag"]
      132 GETTABLEKS                       R14 R0 K21 ["LayoutOrder"]
      134 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
      136 GETTABLEKS                       R14 R0 K22 ["testId"]
      138 SETTABLEKS                       R14 R13 K22 ["testId"]
      140 DUPTABLE                         R14 K32 [{"InputLabel", "InputWeight", "ButtonPlaceholder", "Popover"}]
      141 GETUPVAL                         R16 0
      142 GETTABLEKS                       R15 R16 K18 ["createElement"]
      144 GETUPVAL                         R17 5
      145 GETTABLEKS                       R16 R17 K33 ["Text"]
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
      169 GETUPVAL                         R16 0
      170 GETTABLEKS                       R15 R16 K18 ["createElement"]
      172 GETUPVAL                         R17 5
      173 GETTABLEKS                       R16 R17 K33 ["Text"]
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
      203 GETUPVAL                         R16 0
      204 GETTABLEKS                       R15 R16 K18 ["createElement"]
      206 GETUPVAL                         R17 5
      207 GETTABLEKS                       R16 R17 K19 ["View"]
      209 DUPTABLE                         R17 K53 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "ref"}]
      210 LOADK                            R18 K54 ["auto-xy"]
      211 SETTABLEKS                       R18 R17 K20 ["tag"]
      213 MOVE                             R18 R4
      214 CALL                             R18 0 1
      215 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      217 SETTABLEKS                       R5 R17 K50 ["onStateChanged"]
      219 DUPTABLE                         R18 K56 [{"affordance"}]
      220 GETUPVAL                         R20 6
      221 GETTABLEKS                       R19 R20 K57 ["None"]
      223 SETTABLEKS                       R19 R18 K55 ["affordance"]
      225 SETTABLEKS                       R18 R17 K51 ["stateLayer"]
      227 SETTABLEKS                       R3 R17 K52 ["ref"]
      229 DUPTABLE                         R18 K59 [{"Icon"}]
      230 GETUPVAL                         R20 0
      231 GETTABLEKS                       R19 R20 K18 ["createElement"]
      233 GETUPVAL                         R21 5
      234 GETTABLEKS                       R20 R21 K58 ["Icon"]
      236 DUPTABLE                         R21 K64 [{"name", "size", "variant", "style"}]
      237 LOADK                            R22 K65 ["arrow-small-right"]
      238 SETTABLEKS                       R22 R21 K60 ["name"]
      240 GETUPVAL                         R25 5
      241 GETTABLEKS                       R24 R25 K66 ["Enums"]
      243 GETTABLEKS                       R23 R24 K67 ["IconSize"]
      245 GETTABLEKS                       R22 R23 K68 ["XSmall"]
      247 SETTABLEKS                       R22 R21 K61 ["size"]
      249 GETUPVAL                         R25 5
      250 GETTABLEKS                       R24 R25 K66 ["Enums"]
      252 GETTABLEKS                       R23 R24 K69 ["IconVariant"]
      254 GETTABLEKS                       R22 R23 K70 ["Regular"]
      256 SETTABLEKS                       R22 R21 K62 ["variant"]
      258 SETTABLEKS                       R7 R21 K63 ["style"]
      260 CALL                             R19 2 1
      261 SETTABLEKS                       R19 R18 K58 ["Icon"]
      263 CALL                             R15 3 1
      264 SETTABLEKS                       R15 R14 K30 ["ButtonPlaceholder"]
      266 GETUPVAL                         R16 0
      267 GETTABLEKS                       R15 R16 K18 ["createElement"]
      269 GETUPVAL                         R18 5
      270 GETTABLEKS                       R17 R18 K31 ["Popover"]
      272 GETTABLEKS                       R16 R17 K71 ["Root"]
      274 DUPTABLE                         R17 K73 [{"isOpen"}]
      275 GETTABLEKS                       R18 R2 K9 ["enabled"]
      277 SETTABLEKS                       R18 R17 K72 ["isOpen"]
      279 DUPTABLE                         R18 K76 [{"Anchor", "Content"}]
      280 GETUPVAL                         R20 0
      281 GETTABLEKS                       R19 R20 K18 ["createElement"]
      283 GETUPVAL                         R22 5
      284 GETTABLEKS                       R21 R22 K31 ["Popover"]
      286 GETTABLEKS                       R20 R21 K74 ["Anchor"]
      288 DUPTABLE                         R21 K78 [{"anchorRef"}]
      289 SETTABLEKS                       R3 R21 K77 ["anchorRef"]
      291 CALL                             R19 2 1
      292 SETTABLEKS                       R19 R18 K74 ["Anchor"]
      294 GETUPVAL                         R20 0
      295 GETTABLEKS                       R19 R20 K18 ["createElement"]
      297 GETUPVAL                         R22 5
      298 GETTABLEKS                       R21 R22 K31 ["Popover"]
      300 GETTABLEKS                       R20 R21 K75 ["Content"]
      302 DUPTABLE                         R21 K82 [{"align", "side", "onPressedOutside"}]
      303 GETUPVAL                         R25 5
      304 GETTABLEKS                       R24 R25 K66 ["Enums"]
      306 GETTABLEKS                       R23 R24 K83 ["PopoverAlign"]
      308 GETTABLEKS                       R22 R23 K84 ["Start"]
      310 SETTABLEKS                       R22 R21 K79 ["align"]
      312 GETUPVAL                         R25 5
      313 GETTABLEKS                       R24 R25 K66 ["Enums"]
      315 GETTABLEKS                       R23 R24 K85 ["PopoverSide"]
      317 GETTABLEKS                       R22 R23 K86 ["Right"]
      319 SETTABLEKS                       R22 R21 K80 ["side"]
      321 GETTABLEKS                       R22 R2 K87 ["disable"]
      323 SETTABLEKS                       R22 R21 K81 ["onPressedOutside"]
      325 JUMPIFNOT                        R8 ; [+71]
      326 GETUPVAL                         R23 0
      327 GETTABLEKS                       R22 R23 K18 ["createElement"]
      329 GETUPVAL                         R23 7
      330 DUPTABLE                         R24 K100 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text", "editName"}]
      331 SETTABLEKS                       R6 R24 K7 ["AllowReset"]
      333 GETTABLEKS                       R25 R0 K37 ["Label"]
      335 SETTABLEKS                       R25 R24 K88 ["Name"]
      337 LOADB                            R25 1
      338 SETTABLEKS                       R25 R24 K89 ["Expanded"]
      340 GETTABLEKS                       R25 R0 K10 ["IsDefaultValue"]
      342 SETTABLEKS                       R25 R24 K10 ["IsDefaultValue"]
      344 GETTABLEKS                       R25 R0 K90 ["TransitionBuilder"]
      346 SETTABLEKS                       R25 R24 K90 ["TransitionBuilder"]
      348 GETTABLEKS                       R25 R0 K101 ["Value"]
      350 JUMPIF                           R25 ; [+2]
      351 GETTABLEKS                       R25 R0 K102 ["DefaultValue"]
      353 SETTABLEKS                       R25 R24 K91 ["Transition"]
      355 GETTABLEKS                       R25 R0 K92 ["OnChanged"]
      357 SETTABLEKS                       R25 R24 K92 ["OnChanged"]
      359 GETTABLEKS                       R25 R2 K87 ["disable"]
      361 SETTABLEKS                       R25 R24 K93 ["OnClosed"]
      363 SETTABLEKS                       R8 R24 K94 ["GraphPayload"]
      365 NEWTABLE                         R25 0 0
      367 SETTABLEKS                       R25 R24 K95 ["PropertyLookup"]
      369 JUMPIFNOT                        R9 ; [+3]
      370 GETTABLEKS                       R25 R9 K103 ["position"]
      372 JUMP                             ; [+2]
      373 GETIMPORT                        R25 K106 [Vector2.zero]
      375 SETTABLEKS                       R25 R24 K96 ["Position"]
      377 JUMPIFNOT                        R9 ; [+3]
      378 GETTABLEKS                       R25 R9 K61 ["size"]
      380 JUMP                             ; [+2]
      381 GETIMPORT                        R25 K106 [Vector2.zero]
      383 SETTABLEKS                       R25 R24 K42 ["Size"]
      385 NEWTABLE                         R25 0 0
      387 SETTABLEKS                       R25 R24 K97 ["StateLookup"]
      389 LOADK                            R25 K107 [""]
      390 SETTABLEKS                       R25 R24 K98 ["text"]
      392 LOADK                            R25 K107 [""]
      393 SETTABLEKS                       R25 R24 K99 ["editName"]
      395 CALL                             R22 2 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R22
      398 CALL                             R19 3 1
      399 SETTABLEKS                       R19 R18 K75 ["Content"]
      401 CALL                             R15 3 1
      402 SETTABLEKS                       R15 R14 K31 ["Popover"]
      404 CALL                             R11 3 -1
      405 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R1 K10 ["Enums"]
       30 GETTABLEKS                       R4 R5 K11 ["ControlState"]
       32 GETTABLEKS                       R6 R1 K10 ["Enums"]
       34 GETTABLEKS                       R5 R6 K12 ["StateLayerAffordance"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       40 GETTABLEKS                       R7 R8 K14 ["NativeGraphContext"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K15 ["NodeViewTypes"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R10 R0 K6 ["Parent"]
       52 GETTABLEKS                       R9 R10 K16 ["SignalsReact"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R13 R0 K17 ["Components"]
       59 GETTABLEKS                       R12 R13 K18 ["NodeView"]
       61 GETTABLEKS                       R11 R12 K19 ["CompositorNodeTransition"]
       63 GETTABLEKS                       R10 R11 K20 ["TransitionPanel"]
       65 CALL                             R9 1 1
       66 DUPCLOSURE                       R10 K21 [PROTO_5]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 RETURN                           R10 1
