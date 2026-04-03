PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Pressed"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+5]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["toggle"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

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
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R3 R4 K4 ["Hover"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+3]
       19 LOADK                            R1 K5 [0.5]
       20 JUMP                             ; [+1]
       21 LOADN                            R1 1
       22 SETTABLEKS                       R1 R0 K0 ["Transparency"]
       24 RETURN                           R0 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K3 ["Initialize"]
       13 CALL                             R2 1 2
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K4 ["useToggleState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K5 ["useRef"]
       22 LOADNIL                          R6
       23 CALL                             R5 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R6 R7 K6 ["createNextOrder"]
       27 CALL                             R6 0 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R9 0 1
       37 GETTABLEKS                       R10 R4 K8 ["toggle"]
       39 SETLIST                          R9 R10 1 [1]
       41 CALL                             R7 2 1
       42 GETTABLEKS                       R9 R0 K9 ["AllowReset"]
       44 JUMPIFNOTEQKB                    R9 FALSE ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K10 ["useMemo"]
       51 NEWCLOSURE                       R10 P1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U2
       57 NEWTABLE                         R11 0 4
       59 GETTABLEKS                       R12 R4 K11 ["enabled"]
       61 MOVE                             R13 R8
       62 GETTABLEKS                       R14 R0 K12 ["IsDefaultValue"]
       64 MOVE                             R15 R2
       65 SETLIST                          R11 R12 4 [1]
       67 CALL                             R9 2 1
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R10 R11 K13 ["useSignalState"]
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R11 R12 K10 ["useMemo"]
       74 NEWCLOSURE                       R12 P2
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R13 0 2
       79 GETTABLEKS                       R14 R1 K14 ["observeGraphNodeById"]
       81 GETTABLEKS                       R15 R0 K15 ["NodeId"]
       83 SETLIST                          R13 R14 2 [1]
       85 CALL                             R11 2 -1
       86 CALL                             R10 -1 1
       87 GETUPVAL                         R12 4
       88 GETTABLEKS                       R11 R12 K13 ["useSignalState"]
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R12 R13 K10 ["useMemo"]
       93 NEWCLOSURE                       R13 P3
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R0
       96 NEWTABLE                         R14 0 2
       98 GETTABLEKS                       R15 R1 K16 ["observeNodeRenderInfoById"]
      100 GETTABLEKS                       R16 R0 K15 ["NodeId"]
      102 SETLIST                          R14 R15 2 [1]
      104 CALL                             R12 2 -1
      105 CALL                             R11 -1 1
      106 GETUPVAL                         R13 0
      107 GETTABLEKS                       R12 R13 K17 ["createElement"]
      109 GETUPVAL                         R14 5
      110 GETTABLEKS                       R13 R14 K18 ["View"]
      112 DUPTABLE                         R14 K21 [{"tag", "LayoutOrder"}]
      113 LOADK                            R15 K22 ["col auto-y gap-small size-full-700"]
      114 SETTABLEKS                       R15 R14 K19 ["tag"]
      116 GETTABLEKS                       R15 R0 K20 ["LayoutOrder"]
      118 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      120 DUPTABLE                         R15 K24 [{"Name"}]
      121 GETUPVAL                         R17 0
      122 GETTABLEKS                       R16 R17 K17 ["createElement"]
      124 GETUPVAL                         R18 5
      125 GETTABLEKS                       R17 R18 K18 ["View"]
      127 DUPTABLE                         R18 K21 [{"tag", "LayoutOrder"}]
      128 GETUPVAL                         R21 5
      129 GETTABLEKS                       R20 R21 K25 ["Hooks"]
      131 GETTABLEKS                       R19 R20 K26 ["useDefaultTags"]
      133 GETTABLEKS                       R20 R0 K27 ["tags"]
      135 LOADK                            R21 K28 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      136 CALL                             R19 2 1
      137 SETTABLEKS                       R19 R18 K19 ["tag"]
      139 MOVE                             R19 R6
      140 CALL                             R19 0 1
      141 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      143 DUPTABLE                         R19 K32 [{"InputLabelWeight", "ButtonPlaceholder", "Popover"}]
      144 GETUPVAL                         R21 0
      145 GETTABLEKS                       R20 R21 K17 ["createElement"]
      147 GETUPVAL                         R21 6
      148 DUPTABLE                         R22 K35 [{"Name", "Weight", "HideWeight", "LayoutOrder"}]
      149 GETTABLEKS                       R23 R0 K36 ["Label"]
      151 SETTABLEKS                       R23 R22 K23 ["Name"]
      153 GETTABLEKS                       R23 R0 K33 ["Weight"]
      155 SETTABLEKS                       R23 R22 K33 ["Weight"]
      157 GETTABLEKS                       R23 R0 K34 ["HideWeight"]
      159 SETTABLEKS                       R23 R22 K34 ["HideWeight"]
      161 LOADN                            R23 1
      162 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      164 CALL                             R20 2 1
      165 SETTABLEKS                       R20 R19 K29 ["InputLabelWeight"]
      167 GETUPVAL                         R21 0
      168 GETTABLEKS                       R20 R21 K17 ["createElement"]
      170 GETUPVAL                         R22 5
      171 GETTABLEKS                       R21 R22 K18 ["View"]
      173 DUPTABLE                         R22 K40 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "ref"}]
      174 LOADK                            R23 K41 ["auto-xy"]
      175 SETTABLEKS                       R23 R22 K19 ["tag"]
      177 LOADN                            R23 2
      178 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      180 SETTABLEKS                       R7 R22 K37 ["onStateChanged"]
      182 DUPTABLE                         R23 K43 [{"affordance"}]
      183 GETUPVAL                         R25 7
      184 GETTABLEKS                       R24 R25 K44 ["None"]
      186 SETTABLEKS                       R24 R23 K42 ["affordance"]
      188 SETTABLEKS                       R23 R22 K38 ["stateLayer"]
      190 SETTABLEKS                       R5 R22 K39 ["ref"]
      192 DUPTABLE                         R23 K46 [{"Icon"}]
      193 GETUPVAL                         R25 0
      194 GETTABLEKS                       R24 R25 K17 ["createElement"]
      196 GETUPVAL                         R26 5
      197 GETTABLEKS                       R25 R26 K45 ["Icon"]
      199 DUPTABLE                         R26 K51 [{"name", "size", "variant", "style"}]
      200 LOADK                            R27 K52 ["arrow-small-right"]
      201 SETTABLEKS                       R27 R26 K47 ["name"]
      203 GETUPVAL                         R30 5
      204 GETTABLEKS                       R29 R30 K53 ["Enums"]
      206 GETTABLEKS                       R28 R29 K54 ["IconSize"]
      208 GETTABLEKS                       R27 R28 K55 ["XSmall"]
      210 SETTABLEKS                       R27 R26 K48 ["size"]
      212 GETUPVAL                         R30 5
      213 GETTABLEKS                       R29 R30 K53 ["Enums"]
      215 GETTABLEKS                       R28 R29 K56 ["IconVariant"]
      217 GETTABLEKS                       R27 R28 K57 ["Regular"]
      219 SETTABLEKS                       R27 R26 K49 ["variant"]
      221 SETTABLEKS                       R9 R26 K50 ["style"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K45 ["Icon"]
      226 CALL                             R20 3 1
      227 SETTABLEKS                       R20 R19 K30 ["ButtonPlaceholder"]
      229 GETUPVAL                         R21 0
      230 GETTABLEKS                       R20 R21 K17 ["createElement"]
      232 GETUPVAL                         R23 5
      233 GETTABLEKS                       R22 R23 K31 ["Popover"]
      235 GETTABLEKS                       R21 R22 K58 ["Root"]
      237 DUPTABLE                         R22 K60 [{"isOpen"}]
      238 GETTABLEKS                       R23 R4 K11 ["enabled"]
      240 SETTABLEKS                       R23 R22 K59 ["isOpen"]
      242 DUPTABLE                         R23 K63 [{"Anchor", "Content"}]
      243 GETUPVAL                         R25 0
      244 GETTABLEKS                       R24 R25 K17 ["createElement"]
      246 GETUPVAL                         R27 5
      247 GETTABLEKS                       R26 R27 K31 ["Popover"]
      249 GETTABLEKS                       R25 R26 K61 ["Anchor"]
      251 DUPTABLE                         R26 K65 [{"anchorRef"}]
      252 SETTABLEKS                       R5 R26 K64 ["anchorRef"]
      254 CALL                             R24 2 1
      255 SETTABLEKS                       R24 R23 K61 ["Anchor"]
      257 GETUPVAL                         R25 0
      258 GETTABLEKS                       R24 R25 K17 ["createElement"]
      260 GETUPVAL                         R27 5
      261 GETTABLEKS                       R26 R27 K31 ["Popover"]
      263 GETTABLEKS                       R25 R26 K62 ["Content"]
      265 DUPTABLE                         R26 K69 [{"align", "side", "onPressedOutside"}]
      266 GETUPVAL                         R30 5
      267 GETTABLEKS                       R29 R30 K53 ["Enums"]
      269 GETTABLEKS                       R28 R29 K70 ["PopoverAlign"]
      271 GETTABLEKS                       R27 R28 K71 ["Start"]
      273 SETTABLEKS                       R27 R26 K66 ["align"]
      275 GETUPVAL                         R30 5
      276 GETTABLEKS                       R29 R30 K53 ["Enums"]
      278 GETTABLEKS                       R28 R29 K72 ["PopoverSide"]
      280 GETTABLEKS                       R27 R28 K73 ["Right"]
      282 SETTABLEKS                       R27 R26 K67 ["side"]
      284 GETTABLEKS                       R27 R4 K74 ["disable"]
      286 SETTABLEKS                       R27 R26 K68 ["onPressedOutside"]
      288 JUMPIFNOT                        R10 ; [+71]
      289 GETUPVAL                         R28 0
      290 GETTABLEKS                       R27 R28 K17 ["createElement"]
      292 GETUPVAL                         R28 8
      293 DUPTABLE                         R29 K87 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text", "editName"}]
      294 SETTABLEKS                       R8 R29 K9 ["AllowReset"]
      296 GETTABLEKS                       R30 R0 K36 ["Label"]
      298 SETTABLEKS                       R30 R29 K23 ["Name"]
      300 LOADB                            R30 1
      301 SETTABLEKS                       R30 R29 K75 ["Expanded"]
      303 GETTABLEKS                       R30 R0 K12 ["IsDefaultValue"]
      305 SETTABLEKS                       R30 R29 K12 ["IsDefaultValue"]
      307 GETTABLEKS                       R30 R0 K76 ["TransitionBuilder"]
      309 SETTABLEKS                       R30 R29 K76 ["TransitionBuilder"]
      311 GETTABLEKS                       R30 R0 K88 ["Value"]
      313 JUMPIF                           R30 ; [+2]
      314 GETTABLEKS                       R30 R0 K89 ["DefaultValue"]
      316 SETTABLEKS                       R30 R29 K77 ["Transition"]
      318 GETTABLEKS                       R30 R0 K78 ["OnChanged"]
      320 SETTABLEKS                       R30 R29 K78 ["OnChanged"]
      322 GETTABLEKS                       R30 R4 K74 ["disable"]
      324 SETTABLEKS                       R30 R29 K79 ["OnClosed"]
      326 SETTABLEKS                       R10 R29 K80 ["GraphPayload"]
      328 NEWTABLE                         R30 0 0
      330 SETTABLEKS                       R30 R29 K81 ["PropertyLookup"]
      332 JUMPIFNOT                        R11 ; [+3]
      333 GETTABLEKS                       R30 R11 K90 ["position"]
      335 JUMP                             ; [+2]
      336 GETIMPORT                        R30 K93 [Vector2.zero]
      338 SETTABLEKS                       R30 R29 K82 ["Position"]
      340 JUMPIFNOT                        R11 ; [+3]
      341 GETTABLEKS                       R30 R11 K48 ["size"]
      343 JUMP                             ; [+2]
      344 GETIMPORT                        R30 K93 [Vector2.zero]
      346 SETTABLEKS                       R30 R29 K83 ["Size"]
      348 NEWTABLE                         R30 0 0
      350 SETTABLEKS                       R30 R29 K84 ["StateLookup"]
      352 LOADK                            R30 K94 [""]
      353 SETTABLEKS                       R30 R29 K85 ["text"]
      355 LOADK                            R30 K94 [""]
      356 SETTABLEKS                       R30 R29 K86 ["editName"]
      358 CALL                             R27 2 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R27
      361 CALL                             R24 3 1
      362 SETTABLEKS                       R24 R23 K62 ["Content"]
      364 CALL                             R20 3 1
      365 SETTABLEKS                       R20 R19 K31 ["Popover"]
      367 CALL                             R16 3 1
      368 SETTABLEKS                       R16 R15 K23 ["Name"]
      370 CALL                             R12 3 -1
      371 RETURN                           R12 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R4 K11 ["InputLabelWeight"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Parent"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R1 K14 ["Enums"]
       41 GETTABLEKS                       R5 R6 K15 ["ControlState"]
       43 GETTABLEKS                       R7 R1 K14 ["Enums"]
       45 GETTABLEKS                       R6 R7 K16 ["StateLayerAffordance"]
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K17 ["Contexts"]
       51 GETTABLEKS                       R8 R9 K18 ["NativeGraphContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K19 ["NodeViewTypes"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K6 ["Parent"]
       63 GETTABLEKS                       R10 R11 K20 ["SignalsReact"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R14 R0 K8 ["Components"]
       70 GETTABLEKS                       R13 R14 K9 ["NodeView"]
       72 GETTABLEKS                       R12 R13 K21 ["CompositorNodeTransition"]
       74 GETTABLEKS                       R11 R12 K22 ["TransitionPanel"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K23 [PROTO_4]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R10
       87 RETURN                           R11 1
