PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Hover"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["Pressed"]
        8 JUMPIFNOTEQ                      R0 R1 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["Hover"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K2 ["Default"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeGraphNodeById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeNodeRenderInfoById"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["NodeId"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
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
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R9 0 0
       36 CALL                             R7 2 1
       37 GETTABLEKS                       R9 R0 K8 ["IsDefaultValue"]
       39 NOT                              R8 R9
       40 JUMPIF                           R8 ; [+7]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R9 R10 K9 ["Hover"]
       44 JUMPIFEQ                         R2 R9 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 LOADB                            R8 1
       49 GETTABLEKS                       R10 R0 K10 ["AllowReset"]
       51 JUMPIFNOTEQKB                    R10 FALSE ; [+2]
       53 LOADB                            R9 0 +1
       54 LOADB                            R9 1
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R10 R11 K11 ["useSignalState"]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R11 R12 K12 ["useMemo"]
       61 NEWCLOSURE                       R12 P1
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R13 0 2
       66 GETTABLEKS                       R14 R1 K13 ["observeGraphNodeById"]
       68 GETTABLEKS                       R15 R0 K14 ["NodeId"]
       70 SETLIST                          R13 R14 2 [1]
       72 CALL                             R11 2 -1
       73 CALL                             R10 -1 1
       74 GETUPVAL                         R12 4
       75 GETTABLEKS                       R11 R12 K11 ["useSignalState"]
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R12 R13 K12 ["useMemo"]
       80 NEWCLOSURE                       R13 P2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R0
       83 NEWTABLE                         R14 0 2
       85 GETTABLEKS                       R15 R1 K15 ["observeNodeRenderInfoById"]
       87 GETTABLEKS                       R16 R0 K14 ["NodeId"]
       89 SETLIST                          R14 R15 2 [1]
       91 CALL                             R12 2 -1
       92 CALL                             R11 -1 1
       93 GETUPVAL                         R13 0
       94 GETTABLEKS                       R12 R13 K16 ["createElement"]
       96 GETUPVAL                         R14 5
       97 GETTABLEKS                       R13 R14 K17 ["View"]
       99 DUPTABLE                         R14 K20 [{"tag", "LayoutOrder"}]
      100 LOADK                            R15 K21 ["col auto-y gap-small size-full-700"]
      101 SETTABLEKS                       R15 R14 K18 ["tag"]
      103 GETTABLEKS                       R15 R0 K19 ["LayoutOrder"]
      105 SETTABLEKS                       R15 R14 K19 ["LayoutOrder"]
      107 DUPTABLE                         R15 K23 [{"Name"}]
      108 GETUPVAL                         R17 0
      109 GETTABLEKS                       R16 R17 K16 ["createElement"]
      111 GETUPVAL                         R18 5
      112 GETTABLEKS                       R17 R18 K17 ["View"]
      114 DUPTABLE                         R18 K20 [{"tag", "LayoutOrder"}]
      115 GETUPVAL                         R21 5
      116 GETTABLEKS                       R20 R21 K24 ["Hooks"]
      118 GETTABLEKS                       R19 R20 K25 ["useDefaultTags"]
      120 GETTABLEKS                       R20 R0 K26 ["tags"]
      122 LOADK                            R21 K27 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K18 ["tag"]
      126 MOVE                             R19 R6
      127 CALL                             R19 0 1
      128 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      130 DUPTABLE                         R19 K31 [{"InputLabelWeight", "ButtonPlaceholder", "Popover"}]
      131 GETUPVAL                         R21 0
      132 GETTABLEKS                       R20 R21 K16 ["createElement"]
      134 GETUPVAL                         R21 6
      135 DUPTABLE                         R22 K33 [{"Name", "Weight", "LayoutOrder"}]
      136 GETTABLEKS                       R23 R0 K34 ["Label"]
      138 SETTABLEKS                       R23 R22 K22 ["Name"]
      140 GETTABLEKS                       R23 R0 K32 ["Weight"]
      142 SETTABLEKS                       R23 R22 K32 ["Weight"]
      144 LOADN                            R23 1
      145 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      147 CALL                             R20 2 1
      148 SETTABLEKS                       R20 R19 K28 ["InputLabelWeight"]
      150 GETUPVAL                         R21 0
      151 GETTABLEKS                       R20 R21 K16 ["createElement"]
      153 GETUPVAL                         R22 5
      154 GETTABLEKS                       R21 R22 K17 ["View"]
      156 DUPTABLE                         R22 K37 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer"}]
      157 LOADK                            R23 K38 ["auto-xy"]
      158 SETTABLEKS                       R23 R22 K18 ["tag"]
      160 LOADN                            R23 2
      161 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      163 SETTABLEKS                       R7 R22 K35 ["onStateChanged"]
      165 DUPTABLE                         R23 K40 [{"affordance"}]
      166 GETUPVAL                         R25 7
      167 GETTABLEKS                       R24 R25 K41 ["None"]
      169 SETTABLEKS                       R24 R23 K39 ["affordance"]
      171 SETTABLEKS                       R23 R22 K36 ["stateLayer"]
      173 DUPTABLE                         R23 K43 [{"Button"}]
      174 GETUPVAL                         R25 0
      175 GETTABLEKS                       R24 R25 K16 ["createElement"]
      177 GETUPVAL                         R26 5
      178 GETTABLEKS                       R25 R26 K42 ["Button"]
      180 DUPTABLE                         R26 K50 [{"icon", "variant", "onActivated", "size", "fillBehavior", "ref"}]
      181 JUMPIF                           R8 ; [+3]
      182 GETTABLEKS                       R28 R4 K51 ["enabled"]
      184 JUMPIFNOT                        R28 ; [+2]
      185 LOADK                            R27 K52 ["arrow-small-right"]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R27
      188 SETTABLEKS                       R27 R26 K44 ["icon"]
      190 GETUPVAL                         R30 5
      191 GETTABLEKS                       R29 R30 K53 ["Enums"]
      193 GETTABLEKS                       R28 R29 K54 ["ButtonVariant"]
      195 GETTABLEKS                       R27 R28 K55 ["Utility"]
      197 SETTABLEKS                       R27 R26 K45 ["variant"]
      199 GETTABLEKS                       R27 R4 K56 ["toggle"]
      201 SETTABLEKS                       R27 R26 K46 ["onActivated"]
      203 GETUPVAL                         R30 5
      204 GETTABLEKS                       R29 R30 K53 ["Enums"]
      206 GETTABLEKS                       R28 R29 K57 ["InputSize"]
      208 GETTABLEKS                       R27 R28 K58 ["XSmall"]
      210 SETTABLEKS                       R27 R26 K47 ["size"]
      212 GETUPVAL                         R30 5
      213 GETTABLEKS                       R29 R30 K53 ["Enums"]
      215 GETTABLEKS                       R28 R29 K59 ["FillBehavior"]
      217 GETTABLEKS                       R27 R28 K60 ["Fit"]
      219 SETTABLEKS                       R27 R26 K48 ["fillBehavior"]
      221 SETTABLEKS                       R5 R26 K49 ["ref"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K42 ["Button"]
      226 CALL                             R20 3 1
      227 SETTABLEKS                       R20 R19 K29 ["ButtonPlaceholder"]
      229 GETUPVAL                         R21 0
      230 GETTABLEKS                       R20 R21 K16 ["createElement"]
      232 GETUPVAL                         R23 5
      233 GETTABLEKS                       R22 R23 K30 ["Popover"]
      235 GETTABLEKS                       R21 R22 K61 ["Root"]
      237 DUPTABLE                         R22 K63 [{"isOpen"}]
      238 GETTABLEKS                       R23 R4 K51 ["enabled"]
      240 SETTABLEKS                       R23 R22 K62 ["isOpen"]
      242 DUPTABLE                         R23 K66 [{"Anchor", "Content"}]
      243 GETUPVAL                         R25 0
      244 GETTABLEKS                       R24 R25 K16 ["createElement"]
      246 GETUPVAL                         R27 5
      247 GETTABLEKS                       R26 R27 K30 ["Popover"]
      249 GETTABLEKS                       R25 R26 K64 ["Anchor"]
      251 DUPTABLE                         R26 K68 [{"anchorRef"}]
      252 SETTABLEKS                       R5 R26 K67 ["anchorRef"]
      254 CALL                             R24 2 1
      255 SETTABLEKS                       R24 R23 K64 ["Anchor"]
      257 GETUPVAL                         R25 0
      258 GETTABLEKS                       R24 R25 K16 ["createElement"]
      260 GETUPVAL                         R27 5
      261 GETTABLEKS                       R26 R27 K30 ["Popover"]
      263 GETTABLEKS                       R25 R26 K65 ["Content"]
      265 DUPTABLE                         R26 K72 [{"align", "side", "onPressedOutside"}]
      266 GETUPVAL                         R30 5
      267 GETTABLEKS                       R29 R30 K53 ["Enums"]
      269 GETTABLEKS                       R28 R29 K73 ["PopoverAlign"]
      271 GETTABLEKS                       R27 R28 K74 ["Start"]
      273 SETTABLEKS                       R27 R26 K69 ["align"]
      275 GETUPVAL                         R30 5
      276 GETTABLEKS                       R29 R30 K53 ["Enums"]
      278 GETTABLEKS                       R28 R29 K75 ["PopoverSide"]
      280 GETTABLEKS                       R27 R28 K76 ["Right"]
      282 SETTABLEKS                       R27 R26 K70 ["side"]
      284 GETTABLEKS                       R27 R4 K77 ["disable"]
      286 SETTABLEKS                       R27 R26 K71 ["onPressedOutside"]
      288 JUMPIFNOT                        R10 ; [+68]
      289 GETUPVAL                         R28 0
      290 GETTABLEKS                       R27 R28 K16 ["createElement"]
      292 GETUPVAL                         R28 8
      293 DUPTABLE                         R29 K89 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text"}]
      294 SETTABLEKS                       R9 R29 K10 ["AllowReset"]
      296 GETTABLEKS                       R30 R0 K34 ["Label"]
      298 SETTABLEKS                       R30 R29 K22 ["Name"]
      300 LOADB                            R30 1
      301 SETTABLEKS                       R30 R29 K78 ["Expanded"]
      303 GETTABLEKS                       R30 R0 K8 ["IsDefaultValue"]
      305 SETTABLEKS                       R30 R29 K8 ["IsDefaultValue"]
      307 GETTABLEKS                       R30 R0 K79 ["TransitionBuilder"]
      309 SETTABLEKS                       R30 R29 K79 ["TransitionBuilder"]
      311 GETTABLEKS                       R30 R0 K90 ["Value"]
      313 JUMPIF                           R30 ; [+2]
      314 GETTABLEKS                       R30 R0 K91 ["DefaultValue"]
      316 SETTABLEKS                       R30 R29 K80 ["Transition"]
      318 GETTABLEKS                       R30 R0 K81 ["OnChanged"]
      320 SETTABLEKS                       R30 R29 K81 ["OnChanged"]
      322 GETTABLEKS                       R30 R4 K77 ["disable"]
      324 SETTABLEKS                       R30 R29 K82 ["OnClosed"]
      326 SETTABLEKS                       R10 R29 K83 ["GraphPayload"]
      328 NEWTABLE                         R30 0 0
      330 SETTABLEKS                       R30 R29 K84 ["PropertyLookup"]
      332 JUMPIFNOT                        R11 ; [+3]
      333 GETTABLEKS                       R30 R11 K92 ["position"]
      335 JUMP                             ; [+2]
      336 GETIMPORT                        R30 K95 [Vector2.zero]
      338 SETTABLEKS                       R30 R29 K85 ["Position"]
      340 JUMPIFNOT                        R11 ; [+3]
      341 GETTABLEKS                       R30 R11 K47 ["size"]
      343 JUMP                             ; [+2]
      344 GETIMPORT                        R30 K95 [Vector2.zero]
      346 SETTABLEKS                       R30 R29 K86 ["Size"]
      348 NEWTABLE                         R30 0 0
      350 SETTABLEKS                       R30 R29 K87 ["StateLookup"]
      352 LOADK                            R30 K96 [""]
      353 SETTABLEKS                       R30 R29 K88 ["text"]
      355 CALL                             R27 2 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R27
      358 CALL                             R24 3 1
      359 SETTABLEKS                       R24 R23 K65 ["Content"]
      361 CALL                             R20 3 1
      362 SETTABLEKS                       R20 R19 K30 ["Popover"]
      364 CALL                             R16 3 1
      365 SETTABLEKS                       R16 R15 K22 ["Name"]
      367 CALL                             R12 3 -1
      368 RETURN                           R12 -1

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
       77 DUPCLOSURE                       R11 K23 [PROTO_3]
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
