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
      107 GETTABLEKS                       R12 R13 K10 ["useMemo"]
      109 NEWCLOSURE                       R13 P4
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R14 0 1
      113 GETTABLEKS                       R15 R0 K17 ["Weight"]
      115 SETLIST                          R14 R15 1 [1]
      117 CALL                             R12 2 1
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R13 R14 K18 ["createElement"]
      121 GETUPVAL                         R15 5
      122 GETTABLEKS                       R14 R15 K19 ["View"]
      124 DUPTABLE                         R15 K23 [{"tag", "LayoutOrder", "testId"}]
      125 GETUPVAL                         R18 5
      126 GETTABLEKS                       R17 R18 K24 ["Hooks"]
      128 GETTABLEKS                       R16 R17 K25 ["useDefaultTags"]
      130 GETTABLEKS                       R17 R0 K26 ["tags"]
      132 LOADK                            R18 K27 ["row auto-y gap-small size-full-700 align-y-center"]
      133 CALL                             R16 2 1
      134 SETTABLEKS                       R16 R15 K20 ["tag"]
      136 GETTABLEKS                       R16 R0 K21 ["LayoutOrder"]
      138 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      140 GETTABLEKS                       R16 R0 K22 ["testId"]
      142 SETTABLEKS                       R16 R15 K22 ["testId"]
      144 DUPTABLE                         R16 K32 [{"InputLabel", "InputWeight", "ButtonPlaceholder", "Popover"}]
      145 GETUPVAL                         R18 0
      146 GETTABLEKS                       R17 R18 K18 ["createElement"]
      148 GETUPVAL                         R19 5
      149 GETTABLEKS                       R18 R19 K33 ["Text"]
      151 DUPTABLE                         R19 K35 [{"tag", "Text", "TextTruncate", "LayoutOrder"}]
      152 LOADK                            R20 K36 ["content-emphasis text-body-small text-align-x-left auto-y fill"]
      153 SETTABLEKS                       R20 R19 K20 ["tag"]
      155 GETTABLEKS                       R20 R0 K37 ["Label"]
      157 SETTABLEKS                       R20 R19 K33 ["Text"]
      159 GETIMPORT                        R20 K40 [Enum.TextTruncate.SplitWord]
      161 SETTABLEKS                       R20 R19 K34 ["TextTruncate"]
      163 MOVE                             R20 R6
      164 CALL                             R20 0 1
      165 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      167 CALL                             R17 2 1
      168 SETTABLEKS                       R17 R16 K28 ["InputLabel"]
      170 GETTABLEKS                       R18 R0 K41 ["HideWeight"]
      172 JUMPIF                           R18 ; [+31]
      173 GETUPVAL                         R18 0
      174 GETTABLEKS                       R17 R18 K18 ["createElement"]
      176 GETUPVAL                         R19 5
      177 GETTABLEKS                       R18 R19 K33 ["Text"]
      179 DUPTABLE                         R19 K43 [{"tag", "Size", "Text", "LayoutOrder"}]
      180 LOADK                            R20 K44 ["content-muted text-body-small text-align-x-left auto-y"]
      181 SETTABLEKS                       R20 R19 K20 ["tag"]
      183 GETIMPORT                        R20 K47 [UDim2.fromOffset]
      185 LOADN                            R21 30
      186 LOADN                            R22 0
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K42 ["Size"]
      190 LOADK                            R21 K48 ["%*%%"]
      191 MOVE                             R23 R12
      192 NAMECALL                         R21 R21 K49 ["format"]
      194 CALL                             R21 2 1
      195 MOVE                             R20 R21
      196 SETTABLEKS                       R20 R19 K33 ["Text"]
      198 MOVE                             R20 R6
      199 CALL                             R20 0 1
      200 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      202 CALL                             R17 2 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R17
      205 SETTABLEKS                       R17 R16 K29 ["InputWeight"]
      207 GETUPVAL                         R18 0
      208 GETTABLEKS                       R17 R18 K18 ["createElement"]
      210 GETUPVAL                         R19 5
      211 GETTABLEKS                       R18 R19 K19 ["View"]
      213 DUPTABLE                         R19 K53 [{"tag", "LayoutOrder", "onStateChanged", "stateLayer", "ref"}]
      214 LOADK                            R20 K54 ["auto-xy"]
      215 SETTABLEKS                       R20 R19 K20 ["tag"]
      217 MOVE                             R20 R6
      218 CALL                             R20 0 1
      219 SETTABLEKS                       R20 R19 K21 ["LayoutOrder"]
      221 SETTABLEKS                       R7 R19 K50 ["onStateChanged"]
      223 DUPTABLE                         R20 K56 [{"affordance"}]
      224 GETUPVAL                         R22 6
      225 GETTABLEKS                       R21 R22 K57 ["None"]
      227 SETTABLEKS                       R21 R20 K55 ["affordance"]
      229 SETTABLEKS                       R20 R19 K51 ["stateLayer"]
      231 SETTABLEKS                       R5 R19 K52 ["ref"]
      233 DUPTABLE                         R20 K59 [{"Icon"}]
      234 GETUPVAL                         R22 0
      235 GETTABLEKS                       R21 R22 K18 ["createElement"]
      237 GETUPVAL                         R23 5
      238 GETTABLEKS                       R22 R23 K58 ["Icon"]
      240 DUPTABLE                         R23 K64 [{"name", "size", "variant", "style"}]
      241 LOADK                            R24 K65 ["arrow-small-right"]
      242 SETTABLEKS                       R24 R23 K60 ["name"]
      244 GETUPVAL                         R27 5
      245 GETTABLEKS                       R26 R27 K66 ["Enums"]
      247 GETTABLEKS                       R25 R26 K67 ["IconSize"]
      249 GETTABLEKS                       R24 R25 K68 ["XSmall"]
      251 SETTABLEKS                       R24 R23 K61 ["size"]
      253 GETUPVAL                         R27 5
      254 GETTABLEKS                       R26 R27 K66 ["Enums"]
      256 GETTABLEKS                       R25 R26 K69 ["IconVariant"]
      258 GETTABLEKS                       R24 R25 K70 ["Regular"]
      260 SETTABLEKS                       R24 R23 K62 ["variant"]
      262 SETTABLEKS                       R9 R23 K63 ["style"]
      264 CALL                             R21 2 1
      265 SETTABLEKS                       R21 R20 K58 ["Icon"]
      267 CALL                             R17 3 1
      268 SETTABLEKS                       R17 R16 K30 ["ButtonPlaceholder"]
      270 GETUPVAL                         R18 0
      271 GETTABLEKS                       R17 R18 K18 ["createElement"]
      273 GETUPVAL                         R20 5
      274 GETTABLEKS                       R19 R20 K31 ["Popover"]
      276 GETTABLEKS                       R18 R19 K71 ["Root"]
      278 DUPTABLE                         R19 K73 [{"isOpen"}]
      279 GETTABLEKS                       R20 R4 K11 ["enabled"]
      281 SETTABLEKS                       R20 R19 K72 ["isOpen"]
      283 DUPTABLE                         R20 K76 [{"Anchor", "Content"}]
      284 GETUPVAL                         R22 0
      285 GETTABLEKS                       R21 R22 K18 ["createElement"]
      287 GETUPVAL                         R24 5
      288 GETTABLEKS                       R23 R24 K31 ["Popover"]
      290 GETTABLEKS                       R22 R23 K74 ["Anchor"]
      292 DUPTABLE                         R23 K78 [{"anchorRef"}]
      293 SETTABLEKS                       R5 R23 K77 ["anchorRef"]
      295 CALL                             R21 2 1
      296 SETTABLEKS                       R21 R20 K74 ["Anchor"]
      298 GETUPVAL                         R22 0
      299 GETTABLEKS                       R21 R22 K18 ["createElement"]
      301 GETUPVAL                         R24 5
      302 GETTABLEKS                       R23 R24 K31 ["Popover"]
      304 GETTABLEKS                       R22 R23 K75 ["Content"]
      306 DUPTABLE                         R23 K82 [{"align", "side", "onPressedOutside"}]
      307 GETUPVAL                         R27 5
      308 GETTABLEKS                       R26 R27 K66 ["Enums"]
      310 GETTABLEKS                       R25 R26 K83 ["PopoverAlign"]
      312 GETTABLEKS                       R24 R25 K84 ["Start"]
      314 SETTABLEKS                       R24 R23 K79 ["align"]
      316 GETUPVAL                         R27 5
      317 GETTABLEKS                       R26 R27 K66 ["Enums"]
      319 GETTABLEKS                       R25 R26 K85 ["PopoverSide"]
      321 GETTABLEKS                       R24 R25 K86 ["Right"]
      323 SETTABLEKS                       R24 R23 K80 ["side"]
      325 GETTABLEKS                       R24 R4 K87 ["disable"]
      327 SETTABLEKS                       R24 R23 K81 ["onPressedOutside"]
      329 JUMPIFNOT                        R10 ; [+71]
      330 GETUPVAL                         R25 0
      331 GETTABLEKS                       R24 R25 K18 ["createElement"]
      333 GETUPVAL                         R25 7
      334 DUPTABLE                         R26 K100 [{"AllowReset", "Name", "Expanded", "IsDefaultValue", "TransitionBuilder", "Transition", "OnChanged", "OnClosed", "GraphPayload", "PropertyLookup", "Position", "Size", "StateLookup", "text", "editName"}]
      335 SETTABLEKS                       R8 R26 K9 ["AllowReset"]
      337 GETTABLEKS                       R27 R0 K37 ["Label"]
      339 SETTABLEKS                       R27 R26 K88 ["Name"]
      341 LOADB                            R27 1
      342 SETTABLEKS                       R27 R26 K89 ["Expanded"]
      344 GETTABLEKS                       R27 R0 K12 ["IsDefaultValue"]
      346 SETTABLEKS                       R27 R26 K12 ["IsDefaultValue"]
      348 GETTABLEKS                       R27 R0 K90 ["TransitionBuilder"]
      350 SETTABLEKS                       R27 R26 K90 ["TransitionBuilder"]
      352 GETTABLEKS                       R27 R0 K101 ["Value"]
      354 JUMPIF                           R27 ; [+2]
      355 GETTABLEKS                       R27 R0 K102 ["DefaultValue"]
      357 SETTABLEKS                       R27 R26 K91 ["Transition"]
      359 GETTABLEKS                       R27 R0 K92 ["OnChanged"]
      361 SETTABLEKS                       R27 R26 K92 ["OnChanged"]
      363 GETTABLEKS                       R27 R4 K87 ["disable"]
      365 SETTABLEKS                       R27 R26 K93 ["OnClosed"]
      367 SETTABLEKS                       R10 R26 K94 ["GraphPayload"]
      369 NEWTABLE                         R27 0 0
      371 SETTABLEKS                       R27 R26 K95 ["PropertyLookup"]
      373 JUMPIFNOT                        R11 ; [+3]
      374 GETTABLEKS                       R27 R11 K103 ["position"]
      376 JUMP                             ; [+2]
      377 GETIMPORT                        R27 K106 [Vector2.zero]
      379 SETTABLEKS                       R27 R26 K96 ["Position"]
      381 JUMPIFNOT                        R11 ; [+3]
      382 GETTABLEKS                       R27 R11 K61 ["size"]
      384 JUMP                             ; [+2]
      385 GETIMPORT                        R27 K106 [Vector2.zero]
      387 SETTABLEKS                       R27 R26 K42 ["Size"]
      389 NEWTABLE                         R27 0 0
      391 SETTABLEKS                       R27 R26 K97 ["StateLookup"]
      393 LOADK                            R27 K107 [""]
      394 SETTABLEKS                       R27 R26 K98 ["text"]
      396 LOADK                            R27 K107 [""]
      397 SETTABLEKS                       R27 R26 K99 ["editName"]
      399 CALL                             R24 2 1
      400 JUMP                             ; [+1]
      401 LOADNIL                          R24
      402 CALL                             R21 3 1
      403 SETTABLEKS                       R21 R20 K75 ["Content"]
      405 CALL                             R17 3 1
      406 SETTABLEKS                       R17 R16 K31 ["Popover"]
      408 CALL                             R13 3 -1
      409 RETURN                           R13 -1

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
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R9
       75 RETURN                           R10 1
